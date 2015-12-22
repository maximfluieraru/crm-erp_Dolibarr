	
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

null label for all model in document_model(DB)

[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]


function pdf_build_address

<head> 								main.inc.php  ~952
<!-- begin left menu..	 			main.inc.php  ~1599

DB table CONST
<!-- Begin right area ..            main.inc.php ~ 1735

admin/system/about


j script error when try to add a group for user - script was commented 

core/class/html_form.class.php 


PDF  - TCPDF (/Applications/XAMPP/xamppfiles/htdocs/cesgm/htdocs/includes/tcpdf/) + FPDI (/Applications/XAMPP/xamppfiles/htdocs/cesgm/htdocs/includes/fpdfi/)

# create user ..... (language from browser) !!!


code_client (Customer code) - DB 'societe'



Class to manage numbering of thirdparties code - core/societe/doc/mod_codeclient_leopard.php

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
			* added bootstrap.js (script js to import boostrap from web server)
			* modified main.inc.php 
						- (line 1268 ) added <script type="text/javascript"> to import bootsrap.js .. in <head>
						- (line 1658 - 1662) info about Dolibarr (put in comments)
						- (line 1682 - 1693) Dolibarr wiki (put in comments)
						- (line 1697 - 1718) Link to bugtrack (put in comments)

	# htdocs/install/ (moved to unused folders)
			*index.php added (redirection to htdocs/index.php)

	
	# htdocs/core/tpl/
			* added login_style.css
			* modified login.tpl.php : 
				- added new login , and a <script> for style(login_style.css + bootstrap)
				- added old login is hidden <center style="visibility:hidden;">


	# htdocs/core/menus/stadard/
			* modified eldy.lib.php  
					- (line 521 - 543) Left menu System Tools was commented(//) (it's a submenu to see infos about dolybarr -not for client use) 

	# htdocs/admin/
			* index.php
					- (line 26) added header('Location: ../index.php'); (resolve some issues of style for login page if user is not connected)


	# htdocs/includes/
			* index.php added script for redirect users to main page (before that file was empty) 

	






























