	
	******** How to install Dolibarr **************



	1.Download : http://www.dolibarr.fr/telechargements
	2.Unzip
	3.Create a data base (best practice, but is optional)
	4.Add a folder "documnets" in unziped dolibarr folder, next to htdocs (change folder permission to write)
	5.Add unziped dolibar file to server
	6.In browser call localhost/htdocs/install (after install you can udate dolibarr with same path)
	7.Setup dolibarr

	8.After insall/update add into  "documents" a empty file install.lock (do not erase <<documents>> folder is )
	9.Change permission of htdocs/conf/conf.php to read only for all users (check if changes was applyed  - may need admin access - ) this file is very important do  not distroy it 


	!!!!! IMPORTANT if application was addapted on local machine after that was deployed on the server a error can be genereted and application will ask to run istall module. Solution: htdocs/conf/conf.php - check/modify  "... _url"
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

$langs->trans('CustomerCode') - code client


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

configuration/modules/modules proposal delai  = 30'

configuration/security/default permissions - !


!Important for good e-mail functionalite you should add a valid e-mail for users
!Important when we delete/change a img ,(like logo, attached files, etc) using application's options, the thumbs img are not deleted




----------------------=========================----------------------------------

Max's chages: 
	(check unused folders)

	# theme/bureau2crea/img - application images + .ico

	# to change application title from default(Dolybarr) to "your company name" you must add to database a constant
		"MAIN_APPLICATION_TITLE" ( rowid = 1; name="MAIN_APPLICATION_TITLE"; value = "your company name") in "const" table
		OR use Configuration/Other to add a const (easy way)
		 - LICENCE_RBQ - const Configuration/Othe !! important for pdf (cesgm) generation
	# to hide (not disable) top main menu items - need to define a const  MAIN_MENU_HIDE_UNAUTHORIZED  = 1 (Configuration/Other) 
	# to upload files it usefull to increase limit of uploaded file size configuration/security

	
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
				- (line 1527 - 1529) top menu printer icon (put in comments)  
				- (line 1451 - 1565) user/browser info (put in comments)
				-  !!! Important (line 1443 ) modified - - original href = redirect user to personal infos with posibility to modifie user rights and permissions

	# htdocs/install/ (moved to unused folders)
			*index.php added (redirection to htdocs/index.php)

	
	# htdocs/core/tpl/
			* added login_style.css
			* modified login.tpl.php : 
				- (in comments)added new login and a <script> for style(login_style.css + bootstrap)
				- old login is hidden <center style="visibility:hidden;">
			* modified objectline_create.tpl.php // after added a line ..  refresh of web page a duplicat line will be added
				- line - 93  <span display: none 
				- line - 97 <input checked="true"
				- line - 120 $form->select_type_of_lines parametres values was modified (check original line on line 118)
				- line - 128  <span display: none  & <br> put in comments
				- line - 57-60-62-63-81  <td display: none 
				- line  49->51 added 3 empty <tr> 
				- line 185 $nbrows=15 for input text area


			* modified objectline_view.tpl.php
				- line 99-101 put in comments 
				- line 121-123-127 <td display: none

	# htdocs/core/class/
			* modified html.form.class.php
				- line 567 - 569 put in comments
			* modified commonobject.class.php 
				- line 2743 -> 2777 put in comments 
			* modified html.formfile.class.php 
				- line 805 -> 919 add some modifications and <scrip>. That will permit to have a priview of attached files 
				- line 76 put in comments (give access to upload files from phones/tablets)

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
					# INSERT INTO ` [ ext ] _document_model`(`nom`, `entity`, `type`) VALUES ('cesgm',1,'propal') #


	# htdocs/core/modules/propale/doc
			* pdf_cesgm_modules.php(added)


	# htdocs/core/lib
			* pdf.cesgm.lib.php(added)
			* images.lib.php 
				-  function vignette() (modified) simple quote added for all $infoImg[] (ex. before $infoImg[2] after $infoImg['2']) it will resolve the problem(attched files) of .jpg images when application will create the thumbs (a small jpg images thumbs will have .png extension (!problem))


	# Documents/mycompany/logos/thumbs/ !!!Important logo on pdf file(contract)
			* cesgm.logo.png (added)
	
	#htdocs/comm/
			* (modified) propal.php
				- (line 1742 - 1777)   price(..... langs, 0, ......) 0 was chaged to 1  (this change will "trunc" prices ex. 123.3421 = 123.34)

	#htdocs/theme/bureau2crea
			* style.css.php (clone of original_style.css)
			* new image for dollibar.jpg (prunus's logo)
			- img
				* bg_work.jpg (added)
				* edit.png (added)
				* delete.png (added)

	#htdocs
			* added bootstrap folders (the script was added in main.inc.php )

	#htdocs/comm
			* propal.php 
				-(style="display: none"); 1147 & 1448 ( * search in all files / $langs->trans('RefCustomer') / to see all changes)
				-(style="display: none"); 1213 & 1597 ( * search in all files / $langs->trans('AvailabilityPeriod') / to see all changes)
				- (max-width="75%") ; 1438 (Propotition comercial / fiche propotision (la table avec les montants)
			* fiche.php
				- view (prospect/client) modified line 159 ->..
			
	#htdocs/theme/common
			- added new img for nophoto.jpg (old img _nophoto.jpg) 		
			- added new img doc.jpg (used in attached files) 
		 


	#htdocs/societe/soc.php
			- modified line 700->.. (nouveau tiers formulaire)  
			- view - line 1489 / modifie client line - 1062




----------------------=========================----------------------------------






















