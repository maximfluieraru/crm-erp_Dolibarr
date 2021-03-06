<?php
/* Copyright (C) 2007-2010 Laurent Destailleur  <eldy@users.sourceforge.net>
 * Copyright (C) ---Put here your own copyright and developer email---
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
 *   	\file       dev/skeletons/skeleton_page.php
 *		\ingroup    mymodule othermodule1 othermodule2
 *		\brief      This file is an example of a php page
 *					Put here some comments
 */

//if (! defined('NOREQUIREUSER'))  define('NOREQUIREUSER','1');
//if (! defined('NOREQUIREDB'))    define('NOREQUIREDB','1');
//if (! defined('NOREQUIRESOC'))   define('NOREQUIRESOC','1');
//if (! defined('NOREQUIRETRAN'))  define('NOREQUIRETRAN','1');
//if (! defined('NOCSRFCHECK'))    define('NOCSRFCHECK','1');			// Do not check anti CSRF attack test
//if (! defined('NOSTYLECHECK'))   define('NOSTYLECHECK','1');			// Do not check style html tag into posted data
//if (! defined('NOTOKENRENEWAL')) define('NOTOKENRENEWAL','1');		// Do not check anti POST attack test
//if (! defined('NOREQUIREMENU'))  define('NOREQUIREMENU','1');			// If there is no need to load and show top and left menu
//if (! defined('NOREQUIREHTML'))  define('NOREQUIREHTML','1');			// If we don't need to load the html.form.class.php
//if (! defined('NOREQUIREAJAX'))  define('NOREQUIREAJAX','1');
//if (! defined("NOLOGIN"))        define("NOLOGIN",'1');				// If this page is public (can be called outside logged session)

// Change this following line to use the correct relative path (../, ../../, etc)
$res=0;
if (! $res && file_exists("../main.inc.php")) $res=@include '../main.inc.php';					// to work if your module directory is into dolibarr root htdocs directory
if (! $res && file_exists("../../main.inc.php")) $res=@include '../../main.inc.php';			// to work if your module directory is into a subdir of root htdocs directory
// if (! $res && file_exists("../../../dolibarr/htdocs/main.inc.php")) $res=@include '../../../dolibarr/htdocs/main.inc.php';     // Used on dev env only
// if (! $res && file_exists("../../../../dolibarr/htdocs/main.inc.php")) $res=@include '../../../../dolibarr/htdocs/main.inc.php';   // Used on dev env only
if (! $res) die("Include of main fails");
// Change this following line to use the correct relative path from htdocs
dol_include_once('/module/class/estimate.class.php');

// Load traductions files requiredby by page
$langs->load("companies");
$langs->load("other");

// Get parameters
$id			= GETPOST('id','int');
$action		= GETPOST('action','alpha');
$myparam	= GETPOST('myparam','alpha');

// Protection if external user
if ($user->societe_id > 0)
{
	accessforbidden();
}



/*******************************************************************
* ACTIONS
*
* Put here all code to do according to value of "action" parameter
********************************************************************/

if ($action == 'add')
{
	$object=new Estimate($db);
	$object->prop1=$_POST["field1"];
	$object->prop2=$_POST["field2"];
	$result=$object->create($user);
	if ($result > 0)
	{
		// Creation OK
	}
	{
		// Creation KO
		$mesg=$object->error;
	}
}





/***************************************************
* VIEW
*
* Put here all code to build page
****************************************************/

llxHeader('','Estimate','');

$form=new Form($db);


// Put here content of your page



print '<!-- Begin convertor form -->';

print '<div style="border-style: groove; border-width: 5px; max-width: 20em; border-radius: 9%">
            <span><p><strong>Convertor</strong></p></span>
        <form action="#" method="post" id="myForm">
          <div>
            <label for="amount">Asmount:</label>
            <input type="text" id="amount" name="amount" />
          </div>   
          <div>
            <label for="from">From:</label>
            <select name="from" id="from">
              <option value="0" selected="selected">Select unit</option>
              <option value="1">sq. m</option>
              <option value="2">sq. ft</option>
             <!--  <option value="3">gigabytes</option>
              <option value="4">terabytes</option>
              <option value="5">petabytes</option>
              <option value="6">exabytes</option> -->
            </select>      
            <label for="into">Into:</label>
            <select name="into" id="into">
              <option value="0" selected="selected">Select unit</option>
              <option value="1">sq. m</option>
              <option value="2">sq. ft</option>
              <!-- <option value="3">gigabytes</option>
              <option value="4">terabytes</option>
              <option value="5">petabytes</option>
              <option value="6">exabytes</option> -->
            </select>
          </div>
          <div>&nbsp;</div>
          <button class="btn" id="btn_conv">Convert</button>
          <div>&nbsp;</div>
        </form>
        
        <p id="result" style = "border:solid 1px green; background: #6F9; margin-top:25px; padding:7px; display:none;";></p>
       </div> 
        <script type="text/javascript">
            $(document).ready(function() {
                $("#btn_conv").click(function(e) {
                  e.preventDefault();
                  var amount = $("#amount").val();
                  var from = $("#from").val();
                  var into = $("#into").val();
                  
                  if (amount == "" || from == "0" || into == "0"){
                     $("#result").html("Please fill out all of the fields!").css("display", "inline-block");
                    return false;
                  }
                  
                  var tab_m  = [0,1,10.7939];
                  var tab_ft  = [0,0.0929,1];

                  var res = 0;

                  if (from == 1 && into == 2){
                    res = amount * tab_m[into];
                  }else if (from == 2 && into == 1){
                    res = amount * tab_ft[into];
                  }else{
                    res = amount;
                  }



                  $("#result").html(amount + " " + $("#from option:selected").text() + " = " + res + " " + $("#into option:selected").text()).css("display", "inline-block");

                });
            });
        </script>';

print '<!-- end convertor form -->';

print '<!-- Begin estimate form -->';

print '<form action="" method="get">';

$fileName = "json_estimate_job_constr.json";
if (file_exists($fileName))
    {
        
        $elements = file_get_contents($fileName);

        $elements = json_decode($elements, true);

        $elementsSize = count($elements);

        $view = "";

        
        
        foreach ($elements as $key => $value) 
        {     

            $view = "<table><caption style='font-weight: bold; color: black;'>".$value["name"]."</caption>";

            foreach ($value["tab"] as $k => $val) 
            {   
                $view .= "<tr><td>";
                $view .= $k;
                $view .= "</td><td width='20px'>&nbsp";
                $view .= "</td><td>";
                $view .= $val;
                $view .= "</td><tr>";

            }

            $view .= "</table>";
            $view .= "<hr><br>";
            print $view;
        }

        //print $view;

    }
            

print '</form>';
print '<!-- End estimate form -->';

// Example 1 : Adding jquery code
print '<script type="text/javascript" language="javascript">
jQuery(document).ready(function() {
	function init_myfunc()
	{
		jQuery("#myid").removeAttr(\'disabled\');
		jQuery("#myid").attr(\'disabled\',\'disabled\');
	}
	init_myfunc();
	jQuery("#mybutton").click(function() {
		init_needroot();
	});
});
</script>';


// Example 2 : Adding links to objects
// The class must extends CommonObject class to have this method available
//$somethingshown=$object->showLinkedObjectBlock();


// Example 3 : List of data
if ($action == 'list')
{
    $sql = "SELECT";
    $sql.= " t.rowid,";
    $sql.= " t.field1,";
    $sql.= " t.field2";
    $sql.= " FROM ".MAIN_DB_PREFIX."mytable as t";
    $sql.= " WHERE field3 = 'xxx'";
    $sql.= " ORDER BY field1 ASC";

    print '<table class="noborder">'."\n";
    print '<tr class="liste_titre">';
    print_liste_field_titre($langs->trans('field1'),$_SERVER['PHP_SELF'],'t.field1','',$param,'',$sortfield,$sortorder);
    print_liste_field_titre($langs->trans('field2'),$_SERVER['PHP_SELF'],'t.field2','',$param,'',$sortfield,$sortorder);
    print '</tr>';

    dol_syslog($script_file." sql=".$sql, LOG_DEBUG);
    $resql=$db->query($sql);
    if ($resql)
    {
        $num = $db->num_rows($resql);
        $i = 0;
        if ($num)
        {
            while ($i < $num)
            {
                $obj = $db->fetch_object($resql);
                if ($obj)
                {
                    // You can use here results
                    print '<tr><td>';
                    print $obj->field1;
                    print $obj->field2;
                    print '</td></tr>';
                }
                $i++;
            }
        }
    }
    else
    {
        $error++;
        dol_print_error($db);
    }

    print '</table>'."\n";
}



// End of page
llxFooter();
$db->close();
