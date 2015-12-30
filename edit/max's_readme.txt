	
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

-!-Class to manage numbering of thirdparties code - core/societe/doc/mod_codeclient_leopard.php

Adresse travaux = note privé prospect (si non l'adresse par default du client)

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
				- (line 1441 & 1443) DOL_VERSION(# of version) (put in comments)

	# htdocs/install/ (moved to unused folders)
			*index.php added (redirection to htdocs/index.php)

	
	# htdocs/core/tpl/
			* added login_style.css
			* modified login.tpl.php : 
				- added new login and a <script> for style(login_style.css + bootstrap)
				- old login is hidden <center style="visibility:hidden;">


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
				- cesgm added (important value of label must be null)


	# htdocs/core/modules/propale
			* pdf_cesgm_modules.php(added)


	# htdocs/core/lib
			* pdf.cesgm.lib.php(added)


	# Documents/mycompany/logos/thumbs/
			* cesgm.logo.png (added)
	
	#


----------------------=========================----------------------------------

#####################################################################################################################################################

4.3 L'entrepreneur ne fournira pas :
	|__| les matériaux _____________
	|__| l'outilage et équipement : __________

			Qui seront aux seuls frais du client.

4.4 Ce prix sera soumis à révision à la hausse par l'entrepreneur et ce confomément à une entente entre les parties das les éventualités suivantes:
	* Modifications aux plans, devis, cahiers de charges ou aux travaux à exécuter par le client;
	* Erreur et/ou omission dans les plans, devis, chaiers de chargers, études et/ou expertises soumis par le client;
	* Hausse du coût de la main d'ouvre pour cause de modifications aux conventions collectives, à une Loi ou un réglement par tout instance gouvernamentale ou l'application d'une convention collective non connue à la signature des présentes;
	* Hausse du coût des matériaux, de l'outillage et/ou équipement pour cause d'entrée en vigueurd, une nouvelle taxe de quelque nature que ce soit;
	* Changement dans les conditions d'exécution de l'ouvrage hors du contrôle de l'entrepreneur, tel que, ey sans limitation aucune, pluies diluviennes, froid intense, toute force majeure;

5. Libre exécution
	Le client laissera à l'entrepreneur libre exécution des travaux mais pourra, à sa guise, mais sans nuire à la bonne exécution des travaux par l'entrepreneur, inspecter l'ouvrage;

6. Modifications
	Le client pourra demander à l'entrepreneur d'exécuter des modifications à l'ouvrage seulement si telles modificcations sont requises du client par écrit et qu'elles soient acceptées par écrit quant à leurs prix, nature et échéance par l'entrepreneur et le client.

7. Non disponibilité de matériaué
	Dans l'éventualité où des matériaux nécessités à l'exécution de l'ouvrage ne sont plus disponibles dans les délais permettant de respecter la terminaison de l'ouvrage selon les termes des présentes, l'entrepreneur pourra substituer tout matériaux de qualité équivalente ou supérieure, sauf objection du client qui renoncera alors à tout dédommagement pou retard dans la livraison de l'ouvrage.

8. Résiliation par le client
	Le client ne pourra résilier le présent contrat;
	
	8.1 Qu'en cas de défaut de l'entrepreneur de respecter ses obligations aux termes sea présentes, sous réserve de tous ses recours;
	
	8.2 En payant à l'entrepreneur en proportion du prix convenu, les frais et dépenses actuelles, la valeur des travaux exécutés avant la notification de la résiliation, la valeur des biens fournism une indemnité additionnelle équivalente à vingt pour cent (20%) de la valeur totale du contrat à titre de perte de profit, et tout autre préjudice que l'entrepreneur pourra subir;

9. Résiliation par l'entrepreneur
	9.1 Qu'en cas de défaut par le client de respecter ses obligations aux termes des présentes, sous réserve de tous ses recours;
	9.2 Pour motif sérieux, mais jamais à contretemps, et en faisant tout ce qui est immédiatement nécessaire pou prévenir une perte et en assurant tout préjudice causé au client par une telle résiliation;

10. Le client reconnait avoir obtenu, préalablement à la negociation et signature du présent contrat, toute information utile relativement à la nature de la tâche ainsi qu'aux biens et au temps nécessaire à cette fin.

11. Les parties conviennent que les Lois de la Provence de Québec en vigueur à la date de la signature des présentes s'appliqueront au présent contrat et déclarent, pour les fins des présentes, élire domicile à la place d'affaire de l'entrepreneur.

12. Le client reconnait avoir librement négocié tous les termes du présent contrat, avoir lu chacune de ses clauses, l'avoir compris, et s'en déclare satisfait par sa signature ci-après exposée:

	Signé à ________________ , le ________________

	___________________________ 	____________________________  
			Entrepreneur 					Client

									____________________________  
											Client
						_________________________________________________________________					
						|	USAGE EXCLUSIF RÉSERVÉ AUX MEMBRES EN RÈGLE DE LA C.E.S.G.M  |
						|________________________________________________________________|


#####################################################################################################################################################


























