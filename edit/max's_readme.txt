	
	******** How to install Dolibarr **************



	1.Download : http://www.dolibarr.fr/telechargements
	2.Unzip
	3.Create a data base (best practice, but is optional)
	4.Add a folder "documnets" in unziped dolibarr folder, next to htdocs (change folder permission to write)
	5.Add unziped dolibar file to server
	6.In browser call localhost/htdocs/install (after install you can udate dolibarr with same path)
	7.Setup dolibarr

	8.After insall/update add into  "documents" a empty file install.lock (do not erase <<documents>> folder is )
	9.Change permission of htdocs/conf/conf.php to read only (check if changes was applyed  - may need admin access - )



	*******************************************************
---------------------------------------===============----------------------------

[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]

cesgm - will be owner  of application. all user should be added to groups (if cesgm want to see all clients (DB unique numbers)
		* core/societe/doc/mod_codeclient 


user address ?!!!??

addresse des travaux : ????

prefix contrat !!???

date début-fin !!???


[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]


 writing job/service/product description // Loop on each lines     pdf_cesgm.modules.php ~ 326

function pdf_build_address

<head> 								main.inc.php  ~952
<!-- begin left menu..	 			main.inc.php  ~1599

DB table CONST
<!-- Begin right area ..            main.inc.php ~ 1735

admin/system/about


javascript error [when try to add a group for user] -  was commented 

core/class/html_form.class.php 


PDF  - TCPDF (/Applications/XAMPP/xamppfiles/htdocs/cesgm/htdocs/includes/tcpdf/) + FPDI (/Applications/XAMPP/xamppfiles/htdocs/cesgm/htdocs/includes/fpdfi/)

# create user ..... (language from browser) !!! (users>user interface>language)

tva - tvq - Configuration/Dictionnaires/Taux de TVA ou de Taxes de Ventes
 **** CA - Canada	5	Non	Oui (Type 1)	9,975 ... TPS and TVQ ratee ****

code_client (Customer code) - DB 'societe'

1092 - main rectangle pdf (pdf_cesgm)

-!-Class to manage numbering of thirdparties code - core/module/societe/doc/mod_codeclient_leopard.php

Adresse travaux = note privé prospect (si non l'adresse par default du client)

configuration/modules/contrats/ Magre/Masque AAAA{yy}{mm}-{000000} IMPORT!!! configuration before validate any contract
configuration/modules/proposition/ Saphir/Masque AAAA{yy}{mm}-{000000} IMPORT!!! configuration before validate any proposal

configuration/affichage cahcher les boutons non autorisés

configuration/modules/modules complemntaires  editeur WYSIWYG - options pour "text area" changer la police etc. 

configuration/modules/modules proposal delai  = 30

----------------------=========================----------------------------------

Max's chages: 
	(check unused folders)

	# theme/bureau2crea/img - application images + .ico

	# to change application title from default(Dolybarr) to "your company name" you must add to database a constant
		"MAIN_APPLICATION_TITLE" ( rowid = 1; name="MAIN_APPLICATION_TITLE"; value = "your company name") in "const" table
		or (use Configuration/Other)

	
	# documents/
			* added install.lock 

	
	# htdocs/
			* added bootstrap.js (script js to import boostrap from web server) not used for now
			* added bootstrap folder
			* modified main.inc.php 
				- (line 1270 ) added <script type="text/javascript"> to import bootsrap.js .. in <head> // is now in comments
				 - (line 1274 ) added <script type="text/javascript"> to import bootsrap from local folders .. in <head>

				- (line 1692 - 1696) info about Dolibarr (put in comments)
				- (line 1716 - 1727) Dolibarr wiki (put in comments)
				- (line  1731 - 1752) Link to bugtrack (put in comments)
				- (line 1469 & 1479) $appli='CESGM'; DOL_VERSION(# of version) (put in comments)

	# htdocs/install/ (moved to unused folders)
			*index.php added (redirection to htdocs/index.php)

	
	# htdocs/core/tpl/
			* added login_style.css
			* modified login.tpl.php : 
				- (in comments)added new login and a <script> for style(login_style.css + bootstrap)
				- old login is hidden <center style="visibility:hidden;">
			* modified objectline_create.tpl.php 
				- line - 93  <span display: none 
				- line - 97 <input checked="true"
				- line - 120 $form->select_type_of_lines parametres values was modified (check original line on line 118)
				- line - 128  <span display: none  & <br> put in comments

	# htdocs/core/class/
			* modified html.form.class.php
				- line 567 - 569 put in comments

	# htdocs/core/menus/stadard/
			* modified eldy.lib.php  
				- (line 521 - 543) Left menu System Tools was commented(//) (it's a submenu to see infos about dolybarr -not for client use) 

	# htdocs/admin/
			* index.php
				- (line 26) added header('Location: ../index.php'); (resolve some issues of style for login page if user is not connected)


	# htdocs/includes/
			* index.php added script for redirect users to main page (before that file was empty) 


	# DATABASE 
			* document_model table 
				- "cesgm" added (important! value of label must be null)


	# htdocs/core/modules/propale/doc
			* pdf_cesgm_modules.php(added)


	# htdocs/core/lib
			* pdf.cesgm.lib.php(added)


	# Documents/mycompany/logos/thumbs/
			* cesgm.logo.png (added)
	
	#htdocs/comm/
			* (modified) propal.php
				- (line 1742 - 1777)   price(..... langs, 0, ......) 0 was chaged to 1  (this change will "trunc" prices ex. 123.3421 = 123.34)

	#htdocs/theme/bureau2crea
			* style.css.php (clone of original_style.css)
			* new image for dollibar.jpg (prunus's logo)
			- img
				* bg_work.jpg (added)

	#htdocs
			* added bootstrap folders (the script was added in main.inc.php )

	#htdocs/comm
			* propal.php 
				-(style="display: none"); 1147 & 1450 ( * search in all files / $langs->trans('RefCustomer') / to see all changes)
				-(style="display: none"); 1213 & 1597 ( * search in all files / $langs->trans('AvailabilityPeriod') / to see all changes)

	







----------------------=========================----------------------------------






















