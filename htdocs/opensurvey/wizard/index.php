<?php
/* Copyright (C) 2013      Laurent Destailleur <eldy@users.sourceforge.net>
 * Copyright (C) 2014 Marcos García				<marcosgdf@gmail.com>
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


//if (! defined('NOREQUIREUSER'))  define('NOREQUIREUSER','1');
//if (! defined('NOREQUIREDB'))    define('NOREQUIREDB','1');
//if (! defined('NOREQUIRESOC'))   define('NOREQUIRESOC','1');
//if (! defined('NOREQUIRETRAN'))  define('NOREQUIRETRAN','1');
if (! defined('NOTOKENRENEWAL')) define('NOTOKENRENEWAL','1');
if (! defined('NOREQUIREAJAX'))  define('NOREQUIREAJAX','1');
require_once('../../main.inc.php');
require_once(DOL_DOCUMENT_ROOT."/core/lib/admin.lib.php");
require_once(DOL_DOCUMENT_ROOT."/core/lib/files.lib.php");
require_once(DOL_DOCUMENT_ROOT."/opensurvey/fonctions.php");

// Security check
if (!$user->rights->opensurvey->write) accessforbidden();

$langs->load("opensurvey");

/*
 * View
 */

$arrayofjs=array();
$arrayofcss=array('/opensurvey/css/style.css');
llxHeader('', $langs->trans("OpenSurvey"), '', "", 0, 0, $arrayofjs, $arrayofcss);

print_fiche_titre($langs->trans("CreatePoll"));

print '<center>
<form name="formulaire" action="create_survey.php" method="POST">';
print '<p>'.$langs->trans("OrganizeYourMeetingEasily").'</p>
<div class="corps">
<br>
<div class="index_date"><div><img class="opacity" src="../img/date.png" onclick="document.formulaire.date.click()"></div><button id="date" name="choix_sondage" value="date" type="submit" class="button orange bigrounded"><img src="../img/calendar-32.png" alt="'.dol_escape_htmltag($langs->trans("CreateSurveyDate")).'"><strong>&nbsp;'.dol_escape_htmltag($langs->trans("CreateSurveyDate")).'</strong></button></div>
<div class="index_sondage"><div><img class="opacity" src="../img/sondage2.png" onclick="document.formulaire.autre.click()"></div><button id="autre" name="choix_sondage" value="autre" type="submit" class="button blue bigrounded"><img src="../img/chart-32.png" alt="'.dol_escape_htmltag($langs->trans("CreateSurveyStandard")).'"><strong>&nbsp;'.dol_escape_htmltag($langs->trans("CreateSurveyStandard")).'</strong></button></div><div style="clear:both;"></div>
</div>
</form></center>';

llxFooter();

$db->close();
