	
	******** How to install Dolibarr **************



	1.Download : http://www.dolibarr.fr/telechargements
	2.Unzip
	3.Create a data base (best practice, but is optional)
	4.Add a folder "Documnets" in unziped dolibarr folder, next to htdocs (change folder permission to write)
	5.Add unziped dolibar file to server
	6.In browser call localhost/htdocs/install (after install you can udate dolibarr with same path)
	7.Setup dolibarr

	8.After insall/update add into  "Documents" a empty file install.lock
	9.Change permission of htdocs/conf/conf.php to read only



	*******************************************************
---------------------------------------===============----------------------------

<head> 								main.inc.php  ~952
<!-- begin left menu..	 			main.inc.php  ~1599



admin/system/about

----------------------=========================----------------------------------

Max's chages:
	
	# documents/
		* added install.lock 

	# htdocs/
		* added bootstrap.js (script js to import boostrap from web server)
		* modified main.inc.php 
					- (line 1268 ) added <script type="text/javascript"> to import bootsrap.js .. in <head>
					- (line 1658 - 1662) info about Dolibarr (put in comments)
					- (line 1682 - 1693) Dolibarr wiki (put in comments)
	
	# htdocs/core/tpl/
			* added login_style.css
			* modified login.tpl.php : 
				- added new login with <script> for style(login_style.css + bootstrap)
				- added old login is hidden <center style="visibility:hidden;">


	# htdocs/core/menus/stadard/
			* modified eldy.lib.php  
					- (line 521 - 543) Left menu System Tools was commented(//) (it's a submenu to see infos about dolybarr -not for client use) 

	# htdocs/admin
			* index.php
					- (line 26) added header('Location: ../index.php'); (resolve some issues of style for login page if user is not connected)





