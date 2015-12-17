<?php
/* Copyright (C) 2001-2004 Rodolphe Quiedeville <rodolphe@quiedeville.org>
 * Copyright (C) 2003      Eric Seigne          <erics@rycks.com>
 * Copyright (C) 2004-2012 Laurent Destailleur  <eldy@users.sourceforge.net>
 * Copyright (C) 2005-2012 Regis Houssin        <regis.houssin@capnetworks.com>
 * Copyright (C) 2013-2015 Raphaël Doursenaud   <rdoursenaud@gpcsolutions.fr>
 * Copyright (C) 2013      Cédric Salvador      <csalvador@gpcsolutions.fr>
 * Copyright (C) 2013      Alexandre Spangaro   <alexandre.spangaro@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/**
 *	    \file       htdocs/contact/list.php
 *      \ingroup    societe
 *		\brief      Page to list all contacts
 */

require '../main.inc.php';
require_once DOL_DOCUMENT_ROOT.'/contact/class/contact.class.php';
require_once DOL_DOCUMENT_ROOT.'/core/class/html.formother.class.php';

$langs->load("companies");
$langs->load("suppliers");

// Security check
$contactid = GETPOST('id','int');
if ($user->societe_id) $socid=$user->societe_id;
$result = restrictedArea($user, 'contact', $contactid,'');

$search_lastname=GETPOST("search_lastname");
$search_firstname=GETPOST("search_firstname");
$search_societe=GETPOST("search_societe");
$search_poste=GETPOST("search_poste");
$search_phone=GETPOST("search_phone");
$search_phoneper=GETPOST("search_phoneper");
$search_phonepro=GETPOST("search_phonepro");
$search_phonemob=GETPOST("search_phonemob");
$search_fax=GETPOST("search_fax");
$search_email=GETPOST("search_email");
$search_skype=GETPOST("search_skype");
$search_priv=GETPOST("search_priv");
$search_categ = GETPOST("search_categ",'int');
$search_status		= GETPOST("search_status",'int');
if ($search_status=='') $search_status=1; // always display activ customer first


$type=GETPOST("type");
$view=GETPOST("view");

$sall=GETPOST("contactname");
$sortfield = GETPOST('sortfield', 'alpha');
$sortorder = GETPOST('sortorder', 'alpha');
$page = GETPOST('page', 'int');
$userid=GETPOST('userid','int');
$begin=GETPOST('begin');

if (! $sortorder) $sortorder="ASC";
if (! $sortfield) $sortfield="p.lastname";
if ($page < 0) { $page = 0; }
$limit = $conf->liste_limit;
$offset = $limit * $page;

$langs->load("companies");
$titre = (! empty($conf->global->SOCIETE_ADDRESSES_MANAGEMENT) ? $langs->trans("ListOfContacts") : $langs->trans("ListOfContactsAddresses"));
if ($type == "c" || $type=="p")
{
	$titre.='  ('.$langs->trans("ThirdPartyCustomers").')';
	$urlfiche="fiche.php";
}
else if ($type == "f")
{
	$titre.=' ('.$langs->trans("ThirdPartySuppliers").')';
	$urlfiche="fiche.php";
}
else if ($type == "o")
{
	$titre.=' ('.$langs->trans("OthersNotLinkedToThirdParty").')';
	$urlfiche="";
}

if (GETPOST('button_removefilter'))
{
    $search_lastname="";
    $search_firstname="";
    $search_societe="";
    $search_poste="";
    $search_phone="";
    $search_phoneper="";
    $search_phonepro="";
    $search_phonemob="";
    $search_fax="";
    $search_email="";
    $search_skype="";
    $search_priv="";
    $sall="";
    $seach_status=1;
}
if ($search_priv < 0) $search_priv='';



/*
 * View
 */

$title = (! empty($conf->global->SOCIETE_ADDRESSES_MANAGEMENT) ? $langs->trans("Contacts") : $langs->trans("ContactsAddresses"));
llxHeader('',$title,'EN:Module_Third_Parties|FR:Module_Tiers|ES:M&oacute;dulo_Empresas');

$form=new Form($db);
$formother=new FormOther($db);

$sql = "SELECT s.rowid as socid, s.nom as name,";
$sql.= " p.rowid as cidp, p.lastname as lastname, p.statut, p.firstname, p.poste, p.email, p.skype,";
$sql.= " p.phone, p.phone_mobile, p.fax, p.fk_pays, p.priv, p.tms,";
$sql.= " cp.code as country_code";
$sql.= " FROM ".MAIN_DB_PREFIX."socpeople as p";
$sql.= " LEFT JOIN ".MAIN_DB_PREFIX."c_pays as cp ON cp.rowid = p.fk_pays";
$sql.= " LEFT JOIN ".MAIN_DB_PREFIX."societe as s ON s.rowid = p.fk_soc";
if (! empty($search_categ)) $sql.= ' LEFT JOIN '.MAIN_DB_PREFIX."categorie_contact as cs ON p.rowid = cs.fk_socpeople"; // We need this table joined to the select in order to filter by categ
if (!$user->rights->societe->client->voir && !$socid) $sql .= " LEFT JOIN ".MAIN_DB_PREFIX."societe_commerciaux as sc ON s.rowid = sc.fk_soc";
$sql.= ' WHERE p.entity IN ('.getEntity('societe', 1).')';
if (!$user->rights->societe->client->voir && !$socid) //restriction
{
	$sql .= " AND (sc.fk_user = " .$user->id." OR p.fk_soc IS NULL)";
}
if (! empty($userid))    // propre au commercial
{
    $sql .= " AND p.fk_user_creat=".$db->escape($userid);
}

// Filter to exclude not owned private contacts
if ($search_priv != '0' && $search_priv != '1')
{
	$sql .= " AND (p.priv='0' OR (p.priv='1' AND p.fk_user_creat=".$user->id."))";
}
else
{
	if ($search_priv == '0') $sql .= " AND p.priv='0'";
	if ($search_priv == '1') $sql .= " AND (p.priv='1' AND p.fk_user_creat=".$user->id.")";
}

if ($search_categ > 0)   $sql.= " AND cs.fk_categorie = ".$db->escape($search_categ);
if ($search_categ == -2) $sql.= " AND cs.fk_categorie IS NULL";

if ($search_lastname) {      // filter on lastname
    $sql .= natural_search('p.lastname', $search_lastname);
}
if ($search_firstname) {   // filter on firstname
    $sql .= natural_search('p.firstname', $search_firstname);
}
if ($search_societe) {  // filtre sur la societe
    $sql .= natural_search('s.nom', $search_societe);
}
if (strlen($search_poste)) {  // filtre sur la societe
    $sql .= natural_search('p.poste', $search_poste);
}
if (strlen($search_phone))
{
    $sql .= " AND (p.phone LIKE '%".$db->escape($search_phone)."%' OR p.phone_perso LIKE '%".$db->escape($search_phone)."%' OR p.phone_mobile LIKE '%".$db->escape($search_phone)."%')";
}
if (strlen($search_phoneper))
{
    $sql .= " AND p.phone_perso LIKE '%".$db->escape($search_phoneper)."%'";
}
if (strlen($search_phonepro))
{
    $sql .= " AND p.phone LIKE '%".$db->escape($search_phonepro)."%'";
}
if (strlen($search_phonemob))
{
    $sql .= " AND p.phone_mobile LIKE '%".$db->escape($search_phonemob)."%'";
}
if (strlen($search_fax))
{
    $sql .= " AND p.fax LIKE '%".$db->escape($search_fax)."%'";
}
if (strlen($search_email))      // filtre sur l'email
{
    $sql .= " AND p.email LIKE '%".$db->escape($search_email)."%'";
}
if (strlen($search_skype))      // filtre sur skype
{
    $sql .= " AND p.skype LIKE '%".$db->escape($search_skype)."%'";
}
if ($search_status!='') $sql .= " AND p.statut = ".$db->escape($search_status);
if ($type == "o")        // filtre sur type
{
    $sql .= " AND p.fk_soc IS NULL";
}
else if ($type == "f")        // filtre sur type
{
    $sql .= " AND s.fournisseur = 1";
}
else if ($type == "c")        // filtre sur type
{
    $sql .= " AND s.client IN (1, 3)";
}
else if ($type == "p")        // filtre sur type
{
    $sql .= " AND s.client IN (2, 3)";
}
if ($sall)
{
    $sql .= natural_search(array('p.lastname', 'p.firstname', 'p.email'), $sall);
}
if (! empty($socid))
{
    $sql .= " AND s.rowid = ".$socid;
}
// Count total nb of records
$nbtotalofrecords = 0;
if (empty($conf->global->MAIN_DISABLE_FULL_SCANLIST))
{
    $result = $db->query($sql);
    $nbtotalofrecords = $db->num_rows($result);
}
// Add order and limit
if($view == "recent")
{
    $sql.= " ORDER BY p.datec DESC ";
	$sql.= " ".$db->plimit($conf->liste_limit+1, $offset);
}
else
{
    $sql.= " ORDER BY $sortfield $sortorder ";
	$sql.= " ".$db->plimit($conf->liste_limit+1, $offset);
}

//print $sql;
dol_syslog("contact/list.php sql=".$sql);
$result = $db->query($sql);
if ($result)
{
	$contactstatic=new Contact($db);

    $param ='&begin='.htmlspecialchars($begin).'&view='.htmlspecialchars($view).'&userid='.htmlspecialchars($userid).'&contactname='.htmlspecialchars($sall);
    $param.='&type='.htmlspecialchars($type).'&view='.htmlspecialchars($view).'&search_lastname='.htmlspecialchars($search_lastname).'&search_firstname='.htmlspecialchars($search_firstname).'&search_societe='.htmlspecialchars($search_societe).'&search_email='.htmlspecialchars($search_email);
    if (!empty($search_categ)) $param.='&search_categ='.htmlspecialchars($search_categ);
    if ($search_status != '') $param.='&amp;search_status='.htmlspecialchars($search_status);
    if ($search_priv == '0' || $search_priv == '1') $param.="&search_priv=".htmlspecialchars($search_priv);

	$num = $db->num_rows($result);
    $i = 0;

    print_barre_liste($titre, $page, $_SERVER["PHP_SELF"], $param, $sortfield, $sortorder, '', $num, $nbtotalofrecords);

    print '<form method="post" action="'.$_SERVER["PHP_SELF"].'">';
    print '<input type="hidden" name="token" value="'.$_SESSION['newtoken'].'">';
    print '<input type="hidden" name="view" value="'.htmlspecialchars($view).'">';
    print '<input type="hidden" name="sortfield" value="'.$sortfield.'">';
    print '<input type="hidden" name="sortorder" value="'.$sortorder.'">';

    if (! empty($conf->categorie->enabled))
    {
    	$moreforfilter.=$langs->trans('Categories'). ': ';
    	$moreforfilter.=$formother->select_categories(4,$search_categ,'search_categ',1);
    	$moreforfilter.=' &nbsp; &nbsp; &nbsp; ';
    }
    if ($moreforfilter)
    {
    	print '<div class="liste_titre">';
    	print $moreforfilter;
    	print '</div>';
    }

    if ($sall)
    {
        print $langs->trans("Filter")." (".$langs->trans("Lastname").", ".$langs->trans("Firstname")." ".$langs->trans("or")." ".$langs->trans("EMail")."): ".htmlspecialchars($sall);
    }

    print '<table class="liste" width="100%">';

    // Ligne des titres
    print '<tr class="liste_titre">';
    print_liste_field_titre($langs->trans("Lastname"),$_SERVER["PHP_SELF"],"p.lastname", $begin, $param, '', $sortfield,$sortorder);
    print_liste_field_titre($langs->trans("Firstname"),$_SERVER["PHP_SELF"],"p.firstname", $begin, $param, '', $sortfield,$sortorder);
    print_liste_field_titre($langs->trans("PostOrFunction"),$_SERVER["PHP_SELF"],"p.poste", $begin, $param, '', $sortfield,$sortorder);
    if (empty($conf->global->SOCIETE_DISABLE_CONTACTS)) print_liste_field_titre($langs->trans("Company"),$_SERVER["PHP_SELF"],"s.nom", $begin, $param, '', $sortfield,$sortorder);
    print_liste_field_titre($langs->trans("Phone"),$_SERVER["PHP_SELF"],"p.phone", $begin, $param, '', $sortfield,$sortorder);
    print_liste_field_titre($langs->trans("PhoneMobile"),$_SERVER["PHP_SELF"],"p.phone_mob", $begin, $param, '', $sortfield,$sortorder);
    print_liste_field_titre($langs->trans("Fax"),$_SERVER["PHP_SELF"],"p.fax", $begin, $param, '', $sortfield,$sortorder);
    print_liste_field_titre($langs->trans("EMail"),$_SERVER["PHP_SELF"],"p.email", $begin, $param, '', $sortfield,$sortorder);
    if (! empty($conf->skype->enabled)) { print_liste_field_titre($langs->trans("Skype"),$_SERVER["PHP_SELF"],"p.skype", $begin, $param, '', $sortfield,$sortorder); }
    print_liste_field_titre($langs->trans("DateModificationShort"),$_SERVER["PHP_SELF"],"p.tms", $begin, $param, 'align="center"', $sortfield,$sortorder);
    print_liste_field_titre($langs->trans("ContactVisibility"),$_SERVER["PHP_SELF"],"p.priv", $begin, $param, 'align="center"', $sortfield,$sortorder);
    print_liste_field_titre($langs->trans("Status"),$_SERVER["PHP_SELF"],"p.statut", $begin, $param, 'align="center"', $sortfield,$sortorder);
    print '<td class="liste_titre">&nbsp;</td>';
    print "</tr>\n";

    // Ligne des champs de filtres
    print '<tr class="liste_titre">';
    print '<td class="liste_titre">';
    print '<input class="flat" type="text" name="search_lastname" size="9" value="'.htmlspecialchars($search_lastname).'">';
    print '</td>';
    print '<td class="liste_titre">';
    print '<input class="flat" type="text" name="search_firstname" size="9" value="'.htmlspecialchars($search_firstname).'">';
    print '</td>';
    print '<td class="liste_titre">';
    print '<input class="flat" type="text" name="search_poste" size="9" value="'.htmlspecialchars($search_poste).'">';
    print '</td>';
    if (empty($conf->global->SOCIETE_DISABLE_CONTACTS))
    {
        print '<td class="liste_titre">';
        print '<input class="flat" type="text" name="search_societe" size="9" value="'.htmlspecialchars($search_societe).'">';
        print '</td>';
    }
    print '<td class="liste_titre">';
    print '<input class="flat" type="text" name="search_phonepro" size="8" value="'.htmlspecialchars($search_phonepro).'">';
    print '</td>';
    print '<td class="liste_titre">';
    print '<input class="flat" type="text" name="search_phonemob" size="8" value="'.htmlspecialchars($search_phonemob).'">';
    print '</td>';
    print '<td class="liste_titre">';
    print '<input class="flat" type="text" name="search_fax" size="8" value="'.htmlspecialchars($search_fax).'">';
    print '</td>';
    print '<td class="liste_titre">';
    print '<input class="flat" type="text" name="search_email" size="8" value="'.htmlspecialchars($search_email).'">';
    print '</td>';
    if (! empty($conf->skype->enabled))
    {
        print '<td class="liste_titre">';
        print '<input class="flat" type="text" name="search_skype" size="8" value="'.htmlspecialchars($search_skype).'">';
        print '</td>';
    }
	print '<td class="liste_titre">&nbsp;</td>';
	print '<td class="liste_titre" align="center">';
	$selectarray=array('0'=>$langs->trans("ContactPublic"),'1'=>$langs->trans("ContactPrivate"));
	print $form->selectarray('search_priv',$selectarray,$search_priv,1);
	print '</td>';
	 print '<td class="liste_titre" align="center">';
    print $form->selectarray('search_status', array('0'=>$langs->trans('ActivityCeased'),'1'=>$langs->trans('InActivity')),$search_status);
    print '</td>';
    print '<td class="liste_titre" align="right">';
    print '<input type="image" value="button_search" class="liste_titre" src="'.img_picto($langs->trans("Search"),'search.png','','',1).'" value="'.dol_escape_htmltag($langs->trans("Search")).'" title="'.dol_escape_htmltag($langs->trans("Search")).'">';
    print '&nbsp; ';
    print '<input type="image" value="button_removefilter" class="liste_titre" src="'.img_picto($langs->trans("Search"),'searchclear.png','','',1).'" value="'.dol_escape_htmltag($langs->trans("RemoveFilter")).'" title="'.dol_escape_htmltag($langs->trans("RemoveFilter")).'">';
    print '</td>';
    print '</tr>';

    $var=True;
    while ($i < min($num,$limit))
    {
        $obj = $db->fetch_object($result);

		$var=!$var;
        print "<tr ".$bc[$var].">";

		// Name
		print '<td valign="middle">';
		$contactstatic->lastname=$obj->lastname;
		$contactstatic->firstname='';
		$contactstatic->id=$obj->cidp;
		$contactstatic->statut=$obj->statut;
		print $contactstatic->getNomUrl(1,'',20);
		print '</td>';

		// Firstname
        print '<td>'.dol_trunc($obj->firstname,20).'</td>';

		// Function
        print '<td>'.dol_trunc($obj->poste,20).'</td>';

        // Company
        if (empty($conf->global->SOCIETE_DISABLE_CONTACTS))
        {
    		print '<td>';
            if ($obj->socid)
            {
                print '<a href="'.DOL_URL_ROOT.'/comm/fiche.php?socid='.$obj->socid.'">';
                print img_object($langs->trans("ShowCompany"),"company").' '.dol_trunc($obj->name,20).'</a>';
            }
            else
            {
                print '&nbsp;';
            }
            print '</td>';
        }

        // Phone
        print '<td>'.dol_print_phone($obj->phone,$obj->country_code,$obj->cidp,$obj->socid,'AC_TEL').'</td>';
        // Phone mobile
        print '<td>'.dol_print_phone($obj->phone_mobile,$obj->country_code,$obj->cidp,$obj->socid,'AC_TEL').'</td>';
        // Fax
        print '<td>'.dol_print_phone($obj->fax,$obj->country_code,$obj->cidp,$obj->socid,'AC_TEL').'</td>';
        // EMail
        print '<td>'.dol_print_email($obj->email,$obj->cidp,$obj->socid,'AC_EMAIL',18).'</td>';
        // Skype
        if (! empty($conf->skype->enabled)) { print '<td>'.dol_print_skype($obj->skype,$obj->cidp,$obj->socid,'AC_SKYPE',18).'</td>'; }

		// Date
		print '<td align="center">'.dol_print_date($db->jdate($obj->tms),"day").'</td>';

		// Private/Public
		print '<td align="center">'.$contactstatic->LibPubPriv($obj->priv).'</td>';

		// Status
		print '<td align="center">'.$contactstatic->getLibStatut(3).'</td>';

		// Links Add action and Export vcard
        print '<td align="right">';
        print '<a href="'.DOL_URL_ROOT.'/comm/action/fiche.php?action=create&amp;backtopage=1&amp;contactid='.$obj->cidp.'&amp;socid='.$obj->socid.'">'.img_object($langs->trans("AddAction"),"action").'</a>';
        print ' &nbsp; ';
        print '<a data-ajax="false" href="'.DOL_URL_ROOT.'/contact/vcard.php?id='.$obj->cidp.'">';
        print img_picto($langs->trans("VCard"),'vcard.png').' ';
        print '</a></td>';

        print "</tr>\n";
        $i++;
    }

    print "</table>";

    print '</form>';

    if ($num > $limit) print_barre_liste('', $page, $_SERVER["PHP_SELF"], '&amp;begin='.$begin.'&amp;view='.$view.'&amp;userid='.$userid, $sortfield, $sortorder, '', $num, $nbtotalofrecords, '');

    $db->free($result);
}
else
{
    dol_print_error($db);
}

print '<br>';


llxFooter();
$db->close();
