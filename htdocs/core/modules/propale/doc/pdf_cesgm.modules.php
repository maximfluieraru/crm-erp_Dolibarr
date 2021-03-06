<?php
/* Copyright (C) 2004-2014 Laurent Destailleur  <eldy@users.sourceforge.net>
 * Copyright (C) 2005-2012 Regis Houssin        <regis.houssin@capnetworks.com>
 * Copyright (C) 2008      Raphael Bertrand     <raphael.bertrand@resultic.fr>
 * Copyright (C) 2010-2013 Juanjo Menent	    <jmenent@2byte.es>
 * Copyright (C) 2012      Christophe Battarel   <christophe.battarel@altairis.fr>
 * Copyright (C) 2015	   Maxim FLUIERARU		<maxim@prunus.ca>
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
 * or see http://www.gnu.org/
 */

/**
 *	\file       htdocs/core/modules/propale/doc/pdf_cesgm.modules.php
 *	\ingroup    propale
 *	\brief      Fichier de la classe permettant de generer les propales au modele cesgm
 */
require_once DOL_DOCUMENT_ROOT.'/core/modules/propale/modules_propale.php';
require_once DOL_DOCUMENT_ROOT.'/product/class/product.class.php';
require_once DOL_DOCUMENT_ROOT.'/core/lib/company.lib.php';
require_once DOL_DOCUMENT_ROOT.'/core/lib/functions2.lib.php';
require_once DOL_DOCUMENT_ROOT.'/core/lib/pdf.lib.php';
require_once DOL_DOCUMENT_ROOT.'/core/lib/pdf.cesgm.lib.php';


/**
 *	Class to generate PDF proposal CESGM
 */
class pdf_cesgm extends ModelePDFPropales
{
	var $db;
	var $name;
	var $description;
	var $type;

	var $phpmin = array(4,3,0); // Minimum version of PHP required by module
	var $version = 'cesgm';

	var $page_largeur;
	var $page_hauteur;
	var $format;
	var $marge_gauche;
	var	$marge_droite;
	var	$marge_haute;
	var	$marge_basse;

	var $emetteur;	// Objet societe qui emet


	/**
	 *	Constructor
	 *
	 *  @param		DoliDB		$db      Database handler
	 */
	function __construct($db)
	{
		global $conf,$langs,$mysoc;

		$langs->load("main");
		$langs->load("bills");

		$this->db = $db;
		$this->name = "cesgm";
		$this->description = $langs->trans('DocModelCESGMDescription');

		// Dimension page pour format A4
		$this->type = 'pdf';
		$formatarray=pdf_getFormat();
		$this->page_largeur = $formatarray['width'];
		$this->page_hauteur = $formatarray['height'];
		$this->format = array($this->page_largeur,$this->page_hauteur);
		$this->marge_gauche=isset($conf->global->MAIN_PDF_MARGIN_LEFT)?$conf->global->MAIN_PDF_MARGIN_LEFT:10;
		$this->marge_droite=isset($conf->global->MAIN_PDF_MARGIN_RIGHT)?$conf->global->MAIN_PDF_MARGIN_RIGHT:10;
		$this->marge_haute =isset($conf->global->MAIN_PDF_MARGIN_TOP)?$conf->global->MAIN_PDF_MARGIN_TOP:10;
		$this->marge_basse =isset($conf->global->MAIN_PDF_MARGIN_BOTTOM)?$conf->global->MAIN_PDF_MARGIN_BOTTOM:10;

		$this->option_logo = 1;                    // Affiche logo // unused
		$this->option_tva = 1;                     // Gere option tva FACTURE_TVAOPTION
		$this->option_modereg = 1;                 // Affiche mode reglement
		$this->option_condreg = 1;                 // Affiche conditions reglement
		$this->option_codeproduitservice = 1;      // Affiche code produit-service
		$this->option_multilang = 1;               // Dispo en plusieurs langues
		$this->option_escompte = 1;                // Affiche si il y a eu escompte
		$this->option_credit_note = 1;             // Support credit notes
		$this->option_freetext = 1;				   // Support add of a personalised text
		$this->option_draft_watermark = 1;		   //Support add of a watermark on drafts

		$this->franchise=!$mysoc->tva_assuj;

		// Get source company
		$this->emetteur=$mysoc;
		if (empty($this->emetteur->country_code)) $this->emetteur->country_code=substr($langs->defaultlang,-2);    // By default, if was not defined

		// Define position of columns
		$this->posxdesc=$this->marge_gauche+1;
		$this->posxtva=112;
		$this->posxup=126;
		$this->posxqty=145;
		$this->posxdiscount=162;
		$this->postotalht=174;
		if (! empty($conf->global->MAIN_GENERATE_DOCUMENTS_WITHOUT_VAT)) $this->posxtva=$this->posxup;
		$this->posxpicture=$this->posxtva - (empty($conf->global->MAIN_DOCUMENTS_WITH_PICTURE_WIDTH)?20:$conf->global->MAIN_DOCUMENTS_WITH_PICTURE_WIDTH);	// width of images
		if ($this->page_largeur < 210) // To work with US executive format
		{
			$this->posxpicture-=20;
			$this->posxtva-=20;
			$this->posxup-=20;
			$this->posxqty-=20;
			$this->posxdiscount-=20;
			$this->postotalht-=20;
		}

		$this->tva=array();
		$this->localtax1=array();
		$this->localtax2=array();
		$this->atleastoneratenotnull=0;
		$this->atleastonediscount=0;
	}

	/**
     *  Function to build pdf onto disk
     *
     *  @param		Object		$object				Object to generate
     *  @param		Translate	$outputlangs		Lang output object
     *  @param		string		$srctemplatepath	Full path of source filename for generator using a template file
     *  @param		int			$hidedetails		Do not show line details
     *  @param		int			$hidedesc			Do not show desc
     *  @param		int			$hideref			Do not show ref
     *  @return     int             				1=OK, 0=KO
	 */
	function write_file($object,$outputlangs,$srctemplatepath='',$hidedetails=0,$hidedesc=0,$hideref=0)
	{
		global $user,$langs,$conf,$mysoc,$db,$hookmanager;

		if (! is_object($outputlangs)) $outputlangs=$langs;
		// For backward compatibility with FPDF, force output charset to ISO, because FPDF expect text to be encoded in ISO
		if (! empty($conf->global->MAIN_USE_FPDF)) $outputlangs->charset_output='ISO-8859-1';

		$outputlangs->load("main");
		$outputlangs->load("dict");
		$outputlangs->load("companies");
		$outputlangs->load("bills");
		$outputlangs->load("propal");
		$outputlangs->load("products");

		$nblignes = count($object->lines);

		// Loop on each lines to detect if there is at least one image to show
		$realpatharray=array();
		if (! empty($conf->global->MAIN_GENERATE_PROPOSALS_WITH_PICTURE))
		{
			for ($i = 0 ; $i < $nblignes ; $i++)
			{
				if (empty($object->lines[$i]->fk_product)) continue;

				$objphoto = new Product($this->db);
				$objphoto->fetch($object->lines[$i]->fk_product);

				$pdir = get_exdir($object->lines[$i]->fk_product,2) . $object->lines[$i]->fk_product ."/photos/";
				$dir = $conf->product->dir_output.'/'.$pdir;

				$realpath='';
				foreach ($objphoto->liste_photos($dir,1) as $key => $obj)
				{
					$filename=$obj['photo'];
					//if ($obj['photo_vignette']) $filename='thumbs/'.$obj['photo_vignette'];
					$realpath = $dir.$filename;
					break;
				}

				if ($realpath) $realpatharray[$i]=$realpath;
			}
		}
		if (count($realpatharray) == 0) $this->posxpicture=$this->posxtva;

		if ($conf->propal->dir_output)
		{
			$object->fetch_thirdparty();

			// $deja_regle = 0;

			// Definition of $dir and $file
			if ($object->specimen)
			{
				$dir = $conf->propal->dir_output;
				$file = $dir . "/SPECIMEN.pdf";
			}
			else
			{
				$objectref = dol_sanitizeFileName($object->ref);
				$dir = $conf->propal->dir_output . "/" . $objectref;
				$file = $dir . "/" . $objectref . ".pdf";
			}

			if (! file_exists($dir))
			{
				if (dol_mkdir($dir) < 0)
				{
					$this->error=$langs->trans("ErrorCanNotCreateDir",$dir);
					return 0;
				}
			}

			if (file_exists($dir))
			{
				// Create pdf instance
                $pdf=pdf_cesgm_getInstance($this->format);
                $default_font_size = pdf_getPDFFontSize($outputlangs);	// Must be after pdf_getInstance
               

                $heightforinfotot = 125;	// Height reserved to output the info and total part ----  _tableau_tot //$posy = 195;  ~ 828
		       

		        $heightforfreetext= (isset($conf->global->MAIN_PDF_FREETEXT_HEIGHT)?$conf->global->MAIN_PDF_FREETEXT_HEIGHT:5);	// Height reserved to output the free text on last page
	            $heightforfooter = $this->marge_basse + 8;	// Height reserved to output the footer (value include bottom margin)
                $pdf->SetAutoPageBreak(1,0);

                if (class_exists('TCPDF'))
                {
                    $pdf->setPrintHeader(false);
                    $pdf->setPrintFooter(false);
                }
                $pdf->SetFont(pdf_getPDFFont($outputlangs));
                // Set path to the background PDF File
                if (empty($conf->global->MAIN_DISABLE_FPDI) && ! empty($conf->global->MAIN_ADD_PDF_BACKGROUND))
                {
                	$pagecount = $pdf->setSourceFile($conf->mycompany->dir_output.'/'.$conf->global->MAIN_ADD_PDF_BACKGROUND);
                    $tplidx = $pdf->importPage(1);
                }

				$pdf->Open();
				$pagenb=0;
				$pdf->SetDrawColor(128,128,128);

				$pdf->SetTitle($outputlangs->convToOutputCharset($object->ref));
				$pdf->SetSubject($outputlangs->transnoentities("CommercialProposal"));
				$pdf->SetCreator($conf->mycompany->name);
				$pdf->SetAuthor($outputlangs->convToOutputCharset($user->getFullName($outputlangs)));
				$pdf->SetKeyWords($outputlangs->convToOutputCharset($object->ref)." ".$outputlangs->transnoentities("CommercialProposal"));
				if (! empty($conf->global->MAIN_DISABLE_PDF_COMPRESSION)) $pdf->SetCompression(false);

				$pdf->SetMargins($this->marge_gauche, $this->marge_haute, $this->marge_droite);   // Left, Top, Right

				// Positionne $this->atleastonediscount si on a au moins une remise
				for ($i = 0 ; $i < $nblignes ; $i++)
				{
					if ($object->lines[$i]->remise_percent)
					{
						$this->atleastonediscount++;
					}
				}
				if (empty($this->atleastonediscount))
				{
					$this->posxpicture+=($this->postotalht - $this->posxdiscount);
					$this->posxtva+=($this->postotalht - $this->posxdiscount);
					$this->posxup+=($this->postotalht - $this->posxdiscount);
					$this->posxqty+=($this->postotalht - $this->posxdiscount);
					$this->posxdiscount+=($this->postotalht - $this->posxdiscount);
					//$this->postotalht;
				}

				// New page
				$pdf->AddPage();
				if (! empty($tplidx)) $pdf->useTemplate($tplidx);
				$pagenb++;
				$this->_pagehead($pdf, $object, 1, $outputlangs);
				$pdf->SetFont('','', $default_font_size - 1);
				$pdf->MultiCell(0, 3, '');		// Set interline to 3
				$pdf->SetTextColor(0,0,0);

				//$tab_top = 90;
				$tab_top_newpage = (empty($conf->global->MAIN_PDF_DONOTREPEAT_HEAD)?32:10);
				// $tab_height = 130;
				// $tab_height_newpage = 150;

				// // Affiche notes
				// $notetoshow=empty($object->note_public)?'':$object->note_public;
				// if (! empty($conf->global->MAIN_ADD_SALE_REP_SIGNATURE_IN_NOTE))
				// {
				// 	// Get first sale rep
				// 	if (is_object($object->thirdparty))
				// 	{
				// 		$salereparray=$object->thirdparty->getSalesRepresentatives($user);
				// 		$salerepobj=new User($this->db);
				// 		$salerepobj->fetch($salereparray[0]['id']);
				// 		if (! empty($salerepobj->signature)) $notetoshow=dol_concatdesc($notetoshow, $salerepobj->signature);
				// 	}
				// }
				// if ($notetoshow)
				// {
				// 	$tab_top = 88;

				// 	$pdf->SetFont('','', $default_font_size - 1);
				// 	$pdf->writeHTMLCell(190, 3, $this->posxdesc-1, $tab_top, dol_htmlentitiesbr($notetoshow), 0, 1);
				// 	$nexY = $pdf->GetY();
				// 	$height_note=$nexY-$tab_top;

				// 	// Rect prend une longueur en 3eme param
				// 	$pdf->SetDrawColor(192,192,192);
				// 	$pdf->Rect($this->marge_gauche, $tab_top-1, $this->page_largeur-$this->marge_gauche-$this->marge_droite, $height_note+1);

				// 	$tab_height = $tab_height - $height_note;
				// 	$tab_top = $nexY+6;
				// }
				// else
				// {
				// 	$height_note=0;
				// }
////////////////////////// begin position of main table //////////////
//----------------------------------------------
				$tab_top = $pdf->getY()-5;
//----------------------------------------------


				$iniY = $tab_top ;
				$curY = $tab_top ;
				$nexY = $tab_top+3 ;

				// Loop on each lines 
				for ($i = 0 ; $i < $nblignes ; $i++)
				{
					$curY = $nexY;
					$pdf->SetFont('','', $default_font_size - 1);   // Into loop to work with multipage
					$pdf->SetTextColor(0,0,0);

					// Define size of image if we need it
					// $imglinesize=array();
					// if (! empty($realpatharray[$i])) $imglinesize=pdf_getSizeForImage($realpatharray[$i]);

					$pdf->setTopMargin($tab_top_newpage);
					$pdf->setPageOrientation('', 1, $heightforfooter+$heightforfreetext+$heightforinfotot);	// The only function to edit the bottom margin of current page to set it.
					$pageposbefore=$pdf->getPage();

					$showpricebeforepagebreak=1;
					$posYAfterImage=0;
					$posYAfterDescription=0;

					// We start with Photo of product line
					// if (isset($imglinesize['width']) && isset($imglinesize['height']) && ($curY + $imglinesize['height']) > ($this->page_hauteur-($heightforfooter+$heightforfreetext+$heightforinfotot)))	// If photo too high, we moved completely on new page
					// {
					// 	$pdf->AddPage('','',true);
					// 	if (! empty($tplidx)) $pdf->useTemplate($tplidx);
					// 	if (empty($conf->global->MAIN_PDF_DONOTREPEAT_HEAD)) $this->_pagehead($pdf, $object, 0, $outputlangs);
					// 	$pdf->setPage($pageposbefore+1);

					// 	$curY = $tab_top_newpage;
					// 	$showpricebeforepagebreak=0;
					// }

					// if (isset($imglinesize['width']) && isset($imglinesize['height']))
					// {
					// 	$curX = $this->posxpicture-1;
					// 	$pdf->Image($realpatharray[$i], $curX + (($this->posxtva-$this->posxpicture-$imglinesize['width'])/2), $curY, $imglinesize['width'], $imglinesize['height'], '', '', '', 2, 300);	// Use 300 dpi
					// 	// $pdf->Image does not increase value return by getY, so we save it manually
					// 	$posYAfterImage=$curY+$imglinesize['height'];
					// }

					

					// Description of product line
					$curX = $this->posxdesc-1;

					$pdf->startTransaction();

					$width_of_line = $this->page_largeur - $this->marge_gauche - $this->marge_droite; //165;// width for description line

					pdf_cesgm_writelinedesc($pdf,$object,$i,$outputlangs,$width_of_line/*$this->posxpicture-$curX*/,3,$curX,$curY,$hideref,$hidedesc);

					$pageposafter=$pdf->getPage();
					if ($pageposafter > $pageposbefore)	// There is a pagebreak
					{
						$pdf->rollbackTransaction(true);
						$pageposafter=$pageposbefore;
						//print $pageposafter.'-'.$pageposbefore;exit;
						$pdf->setPageOrientation('', 1, $heightforfooter);	// The only function to edit the bottom margin of current page to set it.
						
						pdf_cesgm_writelinedesc($pdf,$object,$i,$outputlangs,$width_of_line/*$this->posxpicture-$curX*/,3,$curX,$curY,$hideref,$hidedesc);

						$pageposafter=$pdf->getPage();
						$posyafter=$pdf->GetY();
						if ($posyafter > ($this->page_hauteur - ($heightforfooter+$heightforfreetext+$heightforinfotot)))	// There is no space left for total+free text
						{
							if ($i == ($nblignes-1))	// No more lines, and no space left to show total, so we create a new page
							{
								$pdf->AddPage('','',true);
								if (! empty($tplidx)) $pdf->useTemplate($tplidx);
								if (empty($conf->global->MAIN_PDF_DONOTREPEAT_HEAD)) $this->_pagehead($pdf, $object, 0, $outputlangs);
								$pdf->setPage($pageposafter+1);
							}
						}
						else
						{
							// We found a page break
							$showpricebeforepagebreak=1;
						}
					}
					else	// No pagebreak
					{
						$pdf->commitTransaction();
					}
					$posYAfterDescription=$pdf->GetY();

					$nexY = $pdf->GetY();
					$pageposafter=$pdf->getPage();

					$pdf->setPage($pageposbefore);
					$pdf->setTopMargin($this->marge_haute);
					$pdf->setPageOrientation('', 1, 0);	// The only function to edit the bottom margin of current page to set it.

					// We suppose that a too long description or photo were moved completely on next page
					if ($pageposafter > $pageposbefore && empty($showpricebeforepagebreak)) {
						$pdf->setPage($pageposafter); 
						$curY = $tab_top_newpage;
					}

					$pdf->SetFont('','', $default_font_size - 1);   // On repositionne la police par defaut

					// VAT Rate
					// if (empty($conf->global->MAIN_GENERATE_DOCUMENTS_WITHOUT_VAT))
					// {
					// 	$vat_rate = pdf_getlinevatrate($object, $i, $outputlangs, $hidedetails);
					// 	$pdf->SetXY($this->posxtva, $curY);
					// 	$pdf->MultiCell($this->posxup-$this->posxtva-0.8, 3, $vat_rate, 0, 'R');
					// }

					// Unit price before discount - - - - - - - - - -
					// $up_excl_tax = pdf_getlineupexcltax($object, $i, $outputlangs, $hidedetails);
					// $pdf->SetXY($this->posxup, $curY);
					// $pdf->MultiCell($this->posxqty-$this->posxup-0.8, 3, $up_excl_tax, 0, 'R', 0);

					// // Quantity
					// $qty = pdf_getlineqty($object, $i, $outputlangs, $hidedetails);
					// $pdf->SetXY($this->posxqty, $curY);
					// $pdf->MultiCell($this->posxdiscount-$this->posxqty-0.8, 3, $qty, 0, 'R');	// Enough for 6 chars

					// Discount on line
					// if ($object->lines[$i]->remise_percent)
					// {
					// 	$pdf->SetXY($this->posxdiscount-2, $curY);
					// 	$remise_percent = pdf_getlineremisepercent($object, $i, $outputlangs, $hidedetails);
					// 	$pdf->MultiCell($this->postotalht-$this->posxdiscount+2, 3, $remise_percent, 0, 'R');
					// }

					// Total HT line Total Price By Service
					$total_excl_tax = pdf_getlinetotalexcltax($object, $i, $outputlangs, $hidedetails);
					$pdf->SetXY($this->postotalht, $curY);
					




					//$pdf->MultiCell($this->page_largeur-$this->marge_droite-$this->postotalht, 3, $total_excl_tax, 0, 'R', 0);




					// Collecte des totaux par valeur de tva dans $this->tva["taux"]=total_tva
					$tvaligne=$object->lines[$i]->total_tva;
					$localtax1ligne=$object->lines[$i]->total_localtax1;
					$localtax2ligne=$object->lines[$i]->total_localtax2;
					$localtax1_rate=$object->lines[$i]->localtax1_tx;
					$localtax2_rate=$object->lines[$i]->localtax2_tx;
					$localtax1_type=$object->lines[$i]->localtax1_type;
					$localtax2_type=$object->lines[$i]->localtax2_type;

					if ($object->remise_percent) $tvaligne-=($tvaligne*$object->remise_percent)/100;
					if ($object->remise_percent) $localtax1ligne-=($localtax1ligne*$object->remise_percent)/100;
					if ($object->remise_percent) $localtax2ligne-=($localtax2ligne*$object->remise_percent)/100;

					$vatrate=(string) $object->lines[$i]->tva_tx;

					// Retrieve type from database for backward compatibility with old records
					if ((! isset($localtax1_type) || $localtax1_type=='' || ! isset($localtax2_type) || $localtax2_type=='') // if tax type not defined
					&& (! empty($localtax1_rate) || ! empty($localtax2_rate))) // and there is local tax
					{
						$localtaxtmp_array=getLocalTaxesFromRate($vatrate,0,$mysoc);
						$localtax1_type = $localtaxtmp_array[0];
						$localtax2_type = $localtaxtmp_array[2];
					}

				    // retrieve global local tax
					if ($localtax1_type && $localtax1ligne != 0)
						$this->localtax1[$localtax1_type][$localtax1_rate]+=$localtax1ligne;
					if ($localtax2_type && $localtax2ligne != 0)
						$this->localtax2[$localtax2_type][$localtax2_rate]+=$localtax2ligne;

					if (($object->lines[$i]->info_bits & 0x01) == 0x01) $vatrate.='*';
					if (! isset($this->tva[$vatrate]))				$this->tva[$vatrate]='';
					$this->tva[$vatrate] += $tvaligne;

					if ($posYAfterImage > $posYAfterDescription) $nexY=$posYAfterImage;

					// Add line after each service descrition
					if (! empty($conf->global->MAIN_PDF_DASH_BETWEEN_LINES) && $i < ($nblignes - 1))
					{
						$pdf->setPage($pageposafter);
						//$pdf->SetLineStyle(array('dash'=>'1,1','color'=>array(210,210,210)));
						//$pdf->SetDrawColor(190,190,200);


						$pdf->SetDrawColor(0);//black for lines -  added

						$pdf->line($this->marge_gauche, $nexY+1, $this->page_largeur - $this->marge_droite, $nexY+1);
						//$pdf->SetLineStyle(array('dash'=>0));
					}

					$nexY+=2;    // Passe espace entre les lignes

					// Detect if some page were added automatically and output _tableau for past pages
					while ($pagenb < $pageposafter)
					{
						$pdf->setPage($pagenb);
						// if ($pagenb == 1)
						// {
						// 	$this->_tableau($pdf, $tab_top, $this->page_hauteur - $tab_top - $heightforfooter, 0, $outputlangs, 0, 1);
						// }
						// else
						// {
						// 	$this->_tableau($pdf, $tab_top_newpage, $this->page_hauteur - $tab_top_newpage - $heightforfooter, 0, $outputlangs, 1, 1);
						// }

						// Pied de page
						$this->_pagefoot($pdf,$object,$outputlangs,1);
						$pagenb++;
						$pdf->setPage($pagenb);
						$pdf->setPageOrientation('', 1, 0);	// The only function to edit the bottom margin of current page to set it.
						if (empty($conf->global->MAIN_PDF_DONOTREPEAT_HEAD)) $this->_pagehead($pdf, $object, 0, $outputlangs);
					}
					if (isset($object->lines[$i+1]->pagebreak) && $object->lines[$i+1]->pagebreak)
					{
						// if ($pagenb == 1)
						// {
						// 	$this->_tableau($pdf, $tab_top, $this->page_hauteur - $tab_top - $heightforfooter, 0, $outputlangs, 0, 1);
						// }
						// else
						// {
						// 	$this->_tableau($pdf, $tab_top_newpage, $this->page_hauteur - $tab_top_newpage - $heightforfooter, 0, $outputlangs, 1, 1);
						// }
						$this->_pagefoot($pdf,$object,$outputlangs,1);
						// New page
						$pdf->AddPage();
						if (! empty($tplidx)) $pdf->useTemplate($tplidx);
						$pagenb++;
						if (empty($conf->global->MAIN_PDF_DONOTREPEAT_HEAD)) $this->_pagehead($pdf, $object, 0, $outputlangs);
					}
				} // ----- end for 



				$pdf->SetXY(10,$pdf->getY());
				
				// // Show square
				// if ($pagenb == 1)
				// {
				// 	$this->_tableau($pdf, $tab_top, $this->page_hauteur - $tab_top - $heightforinfotot - $heightforfreetext - $heightforfooter, 0, $outputlangs, 0, 0);
				// 	$bottomlasttab=$this->page_hauteur - $heightforinfotot - $heightforfreetext - $heightforfooter + 1;
				// }
				// else
				// {
				// 	$this->_tableau($pdf, $tab_top_newpage, $this->page_hauteur - $tab_top_newpage - $heightforinfotot - $heightforfreetext - $heightforfooter, 0, $outputlangs, 1, 0);
				// 	$bottomlasttab=$this->page_hauteur - $heightforinfotot - $heightforfreetext - $heightforfooter + 1;
				// }

				$bottomlasttab=$this->page_hauteur - $heightforinfotot - $heightforfreetext - $heightforfooter + 1;

				// Affiche zone infos
				//$posy=$this->_tableau_info($pdf, $object, $bottomlasttab, $outputlangs);

				


				// Affiche zone totaux
				//$posy=$this->_tableau_tot($pdf, $object, $deja_regle, $bottomlasttab, $outputlangs);
				


				// Pied de page
				$this->_pagefoot($pdf,$object,$outputlangs);

				//display zone from  -  2. Début et fin...  to  4.2 ... 30% prix du contrat.
				$posy=$this->_tableau_tot($pdf, $object, 0, $bottomlasttab, $outputlangs);
				
				$pdf->AddPage();
				if (! empty($tplidx)) $pdf->useTemplate($tplidx);
				if (empty($conf->global->MAIN_PDF_DONOTREPEAT_HEAD)) $this->_pagehead($pdf, $object, 0, $outputlangs);
					

				$pdf->setTopMargin($tab_top_newpage);
				$pdf->setPageOrientation('', 1, 0); // 0(zero) bottom margin

				$pagenb++;

				$pdf->setPage($pagenb);

				$this->_tableau_general_info($pdf, $object, $outputlangs);

				
				// Pied de page 1-to hide freetext
				$this->_pagefoot($pdf,$object,$outputlangs);
				

				// Affiche zone versements
				/*
				if ($deja_regle)
				{
					$posy=$this->_tableau_versements($pdf, $object, $posy, $outputlangs);
				}
				*/

				if (method_exists($pdf,'AliasNbPages')) $pdf->AliasNbPages();

				$pdf->Close();

				$pdf->Output($file,'F');

				//Add pdfgeneration hook
				$hookmanager->initHooks(array('pdfgeneration'));
				$parameters=array('file'=>$file,'object'=>$object,'outputlangs'=>$outputlangs);
				global $action;
				$reshook=$hookmanager->executeHooks('afterPDFCreation',$parameters,$this,$action);    // Note that $action and $object may have been modified by some hooks

				if (! empty($conf->global->MAIN_UMASK))
				@chmod($file, octdec($conf->global->MAIN_UMASK));

				return 1;   // Pas d'erreur
			}
			else
			{
				$this->error=$langs->trans("ErrorCanNotCreateDir",$dir);
				return 0;
			}
		}
		else
		{
			$this->error=$langs->trans("ErrorConstantNotDefined","PROP_OUTPUTDIR");
			return 0;
		}

		$this->error=$langs->trans("ErrorUnknown");
		return 0;   // Erreur par defaut
	}

	/**
	 *  Show payments table
	 *
     *  @param	PDF			$pdf           Object PDF
     *  @param  Object		$object         Object proposal
     *  @param  int			$posy           Position y in PDF
     *  @param  Translate	$outputlangs    Object langs for output
     *  @return int             			<0 if KO, >0 if OK
	 */
	function _tableau_versements(&$pdf, $object, $posy, $outputlangs)
	{

	}


	/**
	 *   Show miscellaneous information (payment mode, payment term, ...)
	 *
	 *   @param		PDF			$pdf     		Object PDF
	 *   @param		Object		$object			Object to show
	 *   @param		int			$posy			Y
	 *   @param		Translate	$outputlangs	Langs object
	 *   @return	void
	 */
	 function _tableau_info(&$pdf, $object, $posy, $outputlangs)
	 {

		// $pdf->line($this->marge_gauche, $posy-2, $this->page_largeur - $this->marge_droite, $posy-2);
		// global $conf;
		// $default_font_size = pdf_getPDFFontSize($outputlangs);

		// $pdf->SetFont('','', $default_font_size - 1);

		// // // If France, show VAT mention if not applicable
		// // if ($this->emetteur->country_code == 'FR' && $this->franchise == 1)
		// // {
		// // 	$pdf->SetFont('','B', $default_font_size - 2);
		// // 	$pdf->SetXY($this->marge_gauche, $posy);
		// // 	$pdf->MultiCell(100, 3, $outputlangs->transnoentities("VATIsNotUsedForInvoice"), 0, 'L', 0);

		// // 	$posy=$pdf->GetY()+4;
		// // }

		// $posxval=52;

  //       // Show shipping date
  //       if (! empty($object->date_livraison))
		// {
  //           $outputlangs->load("sendings");
		// 	$pdf->SetFont('','B', $default_font_size - 2);
		// 	$pdf->SetXY($this->marge_gauche, $posy);
		// 	$titre = $outputlangs->transnoentities("DateDeliveryPlanned").':';
		// 	$pdf->MultiCell(80, 4, $titre, 0, 'L');
		// 	$pdf->SetFont('','', $default_font_size - 2);
		// 	$pdf->SetXY($posxval, $posy);
		// 	$dlp=dol_print_date($object->date_livraison,"daytext",false,$outputlangs,true);
		// 	$pdf->MultiCell(80, 4, $dlp, 0, 'L');

  //           $posy=$pdf->GetY()+1;
		// }
  //       elseif ($object->availability_code || $object->availability)    // Show availability conditions
		// {
		// 	$pdf->SetFont('','B', $default_font_size - 2);
		// 	$pdf->SetXY($this->marge_gauche, $posy);
		// 	$titre = $outputlangs->transnoentities("AvailabilityPeriod").':';
		// 	$pdf->MultiCell(80, 4, $titre, 0, 'L');
		// 	$pdf->SetTextColor(0,0,0);
		// 	$pdf->SetFont('','', $default_font_size - 2);
		// 	$pdf->SetXY($posxval, $posy);
		// 	$lib_availability=$outputlangs->transnoentities("AvailabilityType".$object->availability_code)!=('AvailabilityType'.$object->availability_code)?$outputlangs->transnoentities("AvailabilityType".$object->availability_code):$outputlangs->convToOutputCharset($object->availability);
		// 	$lib_availability=str_replace('\n',"\n",$lib_availability);
		// 	$pdf->MultiCell(80, 4, $lib_availability, 0, 'L');

		// 	$posy=$pdf->GetY()+1;
		// }

		// // Show payments conditions
		// if (empty($conf->global->PROPALE_PDF_HIDE_PAYMENTTERMCOND) && ($object->cond_reglement_code || $object->cond_reglement))
		// {
		// 	$pdf->SetFont('','B', $default_font_size - 2);
		// 	$pdf->SetXY($this->marge_gauche, $posy);
		// 	$titre = $outputlangs->transnoentities("PaymentConditions").':';
		// 	$pdf->MultiCell(80, 4, $titre, 0, 'L');

		// 	$pdf->SetFont('','', $default_font_size - 2);
		// 	$pdf->SetXY($posxval, $posy);
		// 	$lib_condition_paiement=$outputlangs->transnoentities("PaymentCondition".$object->cond_reglement_code)!=('PaymentCondition'.$object->cond_reglement_code)?$outputlangs->transnoentities("PaymentCondition".$object->cond_reglement_code):$outputlangs->convToOutputCharset($object->cond_reglement_doc);
		// 	$lib_condition_paiement=str_replace('\n',"\n",$lib_condition_paiement);
		// 	$pdf->MultiCell(80, 4, $lib_condition_paiement,0,'L');

		// 	$posy=$pdf->GetY()+3;
		// }

		// if (empty($conf->global->PROPALE_PDF_HIDE_PAYMENTTERMCOND))
		// {
		// 	// Check a payment mode is defined
		// 	 Not required on a proposal
		// 	if (empty($object->mode_reglement_code)
		// 	&& ! $conf->global->FACTURE_CHQ_NUMBER
		// 	&& ! $conf->global->FACTURE_RIB_NUMBER)
		// 	{
		// 		$pdf->SetXY($this->marge_gauche, $posy);
		// 		$pdf->SetTextColor(200,0,0);
		// 		$pdf->SetFont('','B', $default_font_size - 2);
		// 		$pdf->MultiCell(90, 3, $outputlangs->transnoentities("ErrorNoPaiementModeConfigured"),0,'L',0);
		// 		$pdf->SetTextColor(0,0,0);

		// 		$posy=$pdf->GetY()+1;
		// 	}
			

		// 	// Show payment mode
		// 	if ($object->mode_reglement_code
		// 	&& $object->mode_reglement_code != 'CHQ'
		// 	&& $object->mode_reglement_code != 'VIR')
		// 	{
		// 		$pdf->SetFont('','B', $default_font_size - 2);
		// 		$pdf->SetXY($this->marge_gauche, $posy);
		// 		$titre = $outputlangs->transnoentities("PaymentMode").':';
		// 		$pdf->MultiCell(80, 5, $titre, 0, 'L');
		// 		$pdf->SetFont('','', $default_font_size - 2);
		// 		$pdf->SetXY($posxval, $posy);
		// 		$lib_mode_reg=$outputlangs->transnoentities("PaymentType".$object->mode_reglement_code)!=('PaymentType'.$object->mode_reglement_code)?$outputlangs->transnoentities("PaymentType".$object->mode_reglement_code):$outputlangs->convToOutputCharset($object->mode_reglement);
		// 		$pdf->MultiCell(80, 5, $lib_mode_reg,0,'L');

		// 		$posy=$pdf->GetY()+2;
		// 	}

		// 	// Show payment mode CHQ
		// 	if (empty($object->mode_reglement_code) || $object->mode_reglement_code == 'CHQ')
		// 	{
		// 		// Si mode reglement non force ou si force a CHQ
		// 		if (! empty($conf->global->FACTURE_CHQ_NUMBER))
		// 		{
		// 			if ($conf->global->FACTURE_CHQ_NUMBER > 0)
		// 			{
		// 				$account = new Account($this->db);
		// 				$account->fetch($conf->global->FACTURE_CHQ_NUMBER);

		// 				$pdf->SetXY($this->marge_gauche, $posy);
		// 				$pdf->SetFont('','B', $default_font_size - 3);
		// 				$pdf->MultiCell(100, 3, $outputlangs->transnoentities('PaymentByChequeOrderedTo',$account->proprio),0,'L',0);
		// 				$posy=$pdf->GetY()+1;

		// 	            if (empty($conf->global->MAIN_PDF_HIDE_CHQ_ADDRESS))
		// 	            {
		// 					$pdf->SetXY($this->marge_gauche, $posy);
		// 					$pdf->SetFont('','', $default_font_size - 3);
		// 					$pdf->MultiCell(100, 3, $outputlangs->convToOutputCharset($account->owner_address), 0, 'L', 0);
		// 					$posy=$pdf->GetY()+2;
		// 	            }
		// 			}
		// 			if ($conf->global->FACTURE_CHQ_NUMBER == -1)
		// 			{
		// 				$pdf->SetXY($this->marge_gauche, $posy);
		// 				$pdf->SetFont('','B', $default_font_size - 3);
		// 				$pdf->MultiCell(100, 3, $outputlangs->transnoentities('PaymentByChequeOrderedTo',$this->emetteur->name),0,'L',0);
		// 				$posy=$pdf->GetY()+1;

		// 	            if (empty($conf->global->MAIN_PDF_HIDE_CHQ_ADDRESS))
		// 	            {
		// 					$pdf->SetXY($this->marge_gauche, $posy);
		// 					$pdf->SetFont('','', $default_font_size - 3);
		// 					$pdf->MultiCell(100, 3, $outputlangs->convToOutputCharset($this->emetteur->getFullAddress()), 0, 'L', 0);
		// 					$posy=$pdf->GetY()+2;
		// 	            }
		// 			}
		// 		}
		// 	}

		// 	// If payment mode not forced or forced to VIR, show payment with BAN
		// 	if (empty($object->mode_reglement_code) || $object->mode_reglement_code == 'VIR')
		// 	{
		// 		if (! empty($conf->global->FACTURE_RIB_NUMBER))
		// 		{
		// 			$account = new Account($this->db);
		// 			$account->fetch($conf->global->FACTURE_RIB_NUMBER);

		// 			$curx=$this->marge_gauche;
		// 			$cury=$posy;

		// 			$posy=pdf_bank($pdf,$outputlangs,$curx,$cury,$account,0,$default_font_size);

		// 			$posy+=2;
		// 		}
		// 	}
		// }

		// return $posy;
	 }


	/**
	 *	Show total to pay
	 *
	 *	@param	PDF			$pdf            Object PDF
	 *	@param  Facture		$object         Object invoice
	 *	@param  int			$deja_regle     Montant deja regle
	 *	@param	int			$posy			Position depart
	 *	@param	Translate	$outputlangs	Objet langs
	 *	@return int							Position pour suite
	 */
	function _tableau_tot(&$pdf, $object, $deja_regle, $posy, $outputlangs)
	{	

		$currency = (isset($conf->currency) ? $conf->currency : " $" );

		 //begin position of below data 
		 			// the room(heigth) for below data is define in -> $heightforinfotot  ; ~ 222

///================================= begin
		$default_font_size = pdf_getPDFFontSize($outputlangs);// important to set font size

		$pdf->line($this->marge_gauche, $posy-2, $this->page_largeur - $this->marge_droite, $posy-2);

		$pdf->SetDrawColor(0);//black for lines

		//---2----//
		$posx = $this->marge_gauche;
		$pdf->SetFont('','B', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "2."; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 5;
		$pdf->SetXY($posx,$posy);
		$text = "Début et fin";
		$pdf->MultiCell(50, 5, $text, 0, '');


		$posy += 5;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "Les travaux seront débutés le";
		$pdf->MultiCell(45, 5, $text, 0, 'L');

		$posx += 44;		
		$pdf->line($posx, $posy+3.5,$posx+37, $posy+3.5);

		$posx += 3;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size-1);
		$text = dol_print_date($object->date,'daytext','',$outputlangs); // daytext (12 Decembre 2015) day(12.12.2015)
		$pdf->MultiCell(45, 5, $text, 0, 'L');

		$posx += 34;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "et seront terminés vers/ou le";
		$pdf->MultiCell(45, 5, $text, 0, 'L');

		$posx += 42;		
		$pdf->line($posx, $posy+3.5,$posx+37, $posy+3.5);

		$posx += 3;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size-1);
		$text = dol_print_date($object->date_livraison,'daytext','',$outputlangs); // daytext (12 Decembre 2015) day (12.12.2015)
		$pdf->MultiCell(45, 5, $text, 0, 'L');

		$posx += 34;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = ", sauf si le client";
		$pdf->MultiCell(30, 5, $text, 0, 'L');

		$posx = $this->marge_gauche+5;
		$posy += 4.5;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "provoque un retard par son défaut de respecter ses obligations aux termes des présentes ou pour toute cause de force majeure; seront assimilés à une force majeure le cas d'une grève ou d'un lock-out.";
		$pdf->MultiCell($this->page_largeur - $this->marge_droite-$posx, 5, $text, 0, 'L');
	

		//---3----//
		$posx = $this->marge_gauche;
		$posy += 10.5;
		$pdf->SetFont('','B', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "3."; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 5;
		$pdf->SetXY($posx,$posy);
		$text = "Réception de l'ouvrage";
		$pdf->MultiCell(50, 5, $text, 0, '');


		$posy += 5;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "Le client sera présumé avoir reçu l'ouvrage à la première des éventualités suivantes, et ce, malgré toute réserve qu'il pourrait imposer, soit à la date de la fin des travaux décrits ci-devant, où à la date à la quelle l'immeuble sera prêt à être occupé.";
		$pdf->MultiCell($this->page_largeur - $this->marge_droite-$posx, 5, $text, 0, 'L');

		//---4----//
		$posx = $this->marge_gauche;
		$posy += 10.5;
		$pdf->SetFont('','B', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "4."; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 5;
		$pdf->SetXY($posx,$posy);
		$text = "Prix";
		$pdf->MultiCell(50, 5, $text, 0, '');

		$posy += 5;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "Le client et l'entrepreneur conviennet que le prix convenu pour l'éxécution de l'ouvrage se détaille comme suit :";
		$pdf->MultiCell($this->page_largeur - $this->marge_droite-$posx, 5, $text, 0, 'L');

		$posy += 7.5;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','', $default_font_size);
		$text = "Prix d'ouvrage"; 
		$pdf->MultiCell(40, 5, $text, 0, 'L');

		$posx = $this->page_largeur - $this->marge_droite - 50;		
		$pdf->line($posx, $posy+4,$this->page_largeur - $this->marge_droite-5, $posy+4);

		$posx += 3;
		$pdf->SetXY($posx,$posy);
		$text = price($object->total_ht, 0, $outputlangs, 1, - 1, - 1, $currency);
		$pdf->MultiCell(45, 5, $text, 0, 'L');
		
		$posx = 15;
		$posy += 7.5;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','', $default_font_size);
		$text = "Taxe sur les produits et services (TPS)"; 
		$pdf->MultiCell(70, 5, $text, 0, 'L');

		$posx = $this->page_largeur - $this->marge_droite - 50;		
		$pdf->line($posx, $posy+4,$this->page_largeur - $this->marge_droite-5, $posy+4);

		$posx += 3;
		$pdf->SetXY($posx,$posy);
		$text = price($object->total_tva, 0, $outputlangs, 1, - 1, - 1, $currency);
		$pdf->MultiCell(45, 5, $text, 0, 'L');
		
		$posx = 15;
		$posy += 7.5;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','', $default_font_size);
		$text = "Sous-total"; 
		$pdf->MultiCell(40, 5, $text, 0, 'L');

		//calculate Sous-total
		$_sous_total = $object->total_ht + $object->total_tva;
		
		$posx = $this->page_largeur - $this->marge_droite - 50;			
		$pdf->line($posx, $posy+4,$this->page_largeur - $this->marge_droite-5, $posy+4);

		$posx += 3;
		$pdf->SetXY($posx,$posy);
		$text = price($_sous_total, 0, $outputlangs, 1, -1, -1, $currency);
		$pdf->MultiCell(45, 5, $text, 0, 'L');

		$posx = 15;
		$posy += 7.5;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','', $default_font_size);
		$text = "Taxe de vente du Québec (TVQ)"; 
		$pdf->MultiCell(70, 5, $text, 0, 'L');

		$posx = $this->page_largeur - $this->marge_droite - 50;		
		$pdf->line($posx, $posy+4,$this->page_largeur - $this->marge_droite-5, $posy+4);

		$posx += 3;
		$pdf->SetXY($posx,$posy);
		$text = price($object->total_localtax1, 0, $outputlangs, 1, - 1, - 1, $currency);
		$pdf->MultiCell(45, 5, $text, 0, 'L');
		
		$posx = 15;
		$posy += 7.5;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size);
		$text = "TOTAL"; 
		$pdf->MultiCell(70, 5, $text, 0, 'L');

		$posx = $this->page_largeur - $this->marge_droite - 50;			
		$pdf->line($posx, $posy+4,$this->page_largeur - $this->marge_droite-5, $posy+4);

		$posx += 3;
		$pdf->SetXY($posx,$posy);
		$text = price($object->total_ttc, '', $outputlangs, 1, - 1, - 1, $currency); 
		$pdf->MultiCell(45, 5, $text, 0, 'L');
		
		$posx = 15;
		$posy += 7.5;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','', $default_font_size);
		$text = "et sera payable comme suit:";  
		$pdf->MultiCell(70, 5, $text, 0, 'L');

				// Show payment mode // _tableau_info function"; 
		// 	if ($object->mode_reglement_code
		// 	&& $object->mode_reglement_code != 'CHQ'
		// 	&& $object->mode_reglement_code != 'VIR')
		// 	{
		// 		$pdf->SetFont('','B', $default_font_size - 2);
		// 		$pdf->SetXY($this->marge_gauche, $posy);
		// 		$titre = $outputlangs->transnoentities("PaymentMode").':';
		// 		$pdf->MultiCell(80, 5, $titre, 0, 'L');
		// 		$pdf->SetFont('','', $default_font_size - 2);
		// 		$pdf->SetXY($posxval, $posy);
		// 		$lib_mode_reg=$outputlangs->transnoentities("PaymentType".$object->mode_reglement_code)!=('PaymentType'.$object->mode_reglement_code)?$outputlangs->transnoentities("PaymentType".$object->mode_reglement_code):$outputlangs->convToOutputCharset($object->mode_reglement);
		// 		$pdf->MultiCell(80, 5, $lib_mode_reg,0,'L');

		// 		$posy=$pdf->GetY()+2;
		// 	}

		$posx = 10;			
		$posy += 10.5;	
		$pdf->line($posx, $posy,$this->page_largeur - $this->marge_droite, $posy);
		
		$posy += 7.5;	
		$pdf->line($posx, $posy,$this->page_largeur - $this->marge_droite, $posy);

		$posx = 10;
		$posy += 5;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','', $default_font_size);
		$text = "Toutefois ce prix est soumis aux réserves suivantes:";  
		$pdf->MultiCell(100, 5, $text, 0, 'L');

		//---4.1----//
		$posx += 5;
		$posy += 6;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "4.1"; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 10;
		$pdf->SetXY($posx,$posy);
		$text = "Le client paiera à l'entrepreneur un intérêt mensuel de deux pour cent (2%) sur toute somme due, soit 24% par année, le tout sous réserve à tout autre recours de l'entrepreneur contre le client.";
		$pdf->MultiCell($this->page_largeur - $this->marge_droite-$posx, 5, $text, 0, '');

		//---4.2----//
		$posx = 15;
		$posy += 7.5;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "4.2"; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 10;
		$pdf->SetXY($posx,$posy);
		$text = "En cas de recours judiciaire de l'entrepreneur contre le client pour le recouvrement de sommes dues, les frais judiciaires et extrajuiciares en cours en pareil cas par l'entrepreneur sont à la charge du client mais ne seront en aucun cas supérieur à 30% du prix du contrat.";
		$pdf->MultiCell($this->page_largeur - $this->marge_droite-$posx, 5, $text, 0, '');


///================================= end



// ------------ begin --- 
// 	global $conf,$mysoc;
// 		$default_font_size = pdf_getPDFFontSize($outputlangs);

// 		$tab2_top = $posy;
// 		$tab2_hl = 4;
// 		$pdf->SetFont('','', $default_font_size - 1);

// 		// Tableau total
// 		$col1x = 120; $col2x = 170;
// 		if ($this->page_largeur < 210) // To work with US executive format
// 		{
// 			$col2x-=20;
// 		}
// 		$largcol2 = ($this->page_largeur - $this->marge_droite - $col2x);

// 		$useborder=0;
// 		$index = 0;

// 		// Total HT
// 		$pdf->SetFillColor(255,255,255);
// 		$pdf->SetXY($col1x, $tab2_top + 0);
// 		$pdf->MultiCell($col2x-$col1x, $tab2_hl,$outputlangs->transnoentities("TotalHT"), 0, 'R', 1);

// 		$pdf->SetXY($col2x, $tab2_top + 0);
// 		$pdf->MultiCell($largcol2, $tab2_hl, price($object->total_ht + (! empty($object->remise)?$object->remise:0), 0, $outputlangs), 0, 'R', 1);

// 		// Show VAT by rates and total
// 		$pdf->SetFillColor(248,248,248);

// 		$this->atleastoneratenotnull=0;
// 		if (empty($conf->global->MAIN_GENERATE_DOCUMENTS_WITHOUT_VAT))
// 		{
// 			$tvaisnull=((! empty($this->tva) && count($this->tva) == 1 && isset($this->tva['0.000']) && is_float($this->tva['0.000'])) ? true : false);
// 			if (! empty($conf->global->MAIN_GENERATE_DOCUMENTS_WITHOUT_VAT_ISNULL) && $tvaisnull)
// 			{
// 				// Nothing to do
// 			}
// 			else
// 			{
// 				//Local tax 1 before VAT
// 				//if (! empty($conf->global->FACTURE_LOCAL_TAX1_OPTION) && $conf->global->FACTURE_LOCAL_TAX1_OPTION=='localtax1on')
// 				//{
// 					foreach( $this->localtax1 as $localtax_type => $localtax_rate )
// 					{
// 						if (in_array((string) $localtax_type, array('1','3','5'))) continue;

// 						foreach( $localtax_rate as $tvakey => $tvaval )
// 						{
// 							if ($tvakey!=0)    // On affiche pas taux 0
// 							{
// 								//$this->atleastoneratenotnull++;

// 								$index++;
// 								$pdf->SetXY($col1x, $tab2_top + $tab2_hl * $index);

// 								$tvacompl='';
// 								if (preg_match('/\*/',$tvakey))
// 								{
// 									$tvakey=str_replace('*','',$tvakey);
// 									$tvacompl = " (".$outputlangs->transnoentities("NonPercuRecuperable").")";
// 								}
// 								$totalvat = $outputlangs->transcountrynoentities("TotalLT1",$mysoc->country_code).' ';
// 								$totalvat.=vatrate(abs($tvakey),1).$tvacompl;
// 								$pdf->MultiCell($col2x-$col1x, $tab2_hl, $totalvat, 0, 'L', 1);

// 								$pdf->SetXY($col2x, $tab2_top + $tab2_hl * $index);
// 								$pdf->MultiCell($largcol2, $tab2_hl, price($tvaval, 0, $outputlangs), 0, 'R', 1);
// 							}
// 						}
// 					}
// 	      		//}
// 				//Local tax 2 before VAT
// 				//if (! empty($conf->global->FACTURE_LOCAL_TAX2_OPTION) && $conf->global->FACTURE_LOCAL_TAX2_OPTION=='localtax2on')
// 				//{
// 					foreach( $this->localtax2 as $localtax_type => $localtax_rate )
// 					{
// 						if (in_array((string) $localtax_type, array('1','3','5'))) continue;

// 						foreach( $localtax_rate as $tvakey => $tvaval )
// 						{
// 							if ($tvakey!=0)    // On affiche pas taux 0
// 							{
// 								//$this->atleastoneratenotnull++;



// 								$index++;
// 								$pdf->SetXY($col1x, $tab2_top + $tab2_hl * $index);

// 								$tvacompl='';
// 								if (preg_match('/\*/',$tvakey))
// 								{
// 									$tvakey=str_replace('*','',$tvakey);
// 									$tvacompl = " (".$outputlangs->transnoentities("NonPercuRecuperable").")";
// 								}
// 								$totalvat = $outputlangs->transcountrynoentities("TotalLT2", $mysoc->country_code).' ';
// 								$totalvat.=vatrate(abs($tvakey),1).$tvacompl;
// 								$pdf->MultiCell($col2x-$col1x, $tab2_hl, $totalvat, 0, 'L', 1);

// 								$pdf->SetXY($col2x, $tab2_top + $tab2_hl * $index);
// 								$pdf->MultiCell($largcol2, $tab2_hl, price($tvaval, 0, $outputlangs), 0, 'R', 1);

// 							}
// 						}
// 					}
// 				//}
// 				// VAT
// 				foreach($this->tva as $tvakey => $tvaval)
// 				{
// 					if ($tvakey > 0)    // On affiche pas taux 0
// 					{
// 						$this->atleastoneratenotnull++;

// 						$index++;
// 						$pdf->SetXY($col1x, $tab2_top + $tab2_hl * $index);

// 						$tvacompl='';
// 						if (preg_match('/\*/',$tvakey))
// 						{
// 							$tvakey=str_replace('*','',$tvakey);
// 							$tvacompl = " (".$outputlangs->transnoentities("NonPercuRecuperable").")";
// 						}
// 						$totalvat =$outputlangs->transnoentities("TotalVAT").' ';
// 						$totalvat.=vatrate($tvakey,1).$tvacompl;
// 						$pdf->MultiCell($col2x-$col1x, $tab2_hl, $totalvat, 0, 'L', 1);

// 						$pdf->SetXY($col2x, $tab2_top + $tab2_hl * $index);
// 						$pdf->MultiCell($largcol2, $tab2_hl, price($tvaval, 0, $outputlangs), 0, 'R', 1);
// 					}
// 				}

// 				//Local tax 1 after VAT
// 				//if (! empty($conf->global->FACTURE_LOCAL_TAX1_OPTION) && $conf->global->FACTURE_LOCAL_TAX1_OPTION=='localtax1on')
// 				//{
// 					foreach( $this->localtax1 as $localtax_type => $localtax_rate )
// 					{
// 						if (in_array((string) $localtax_type, array('2','4','6'))) continue;

// 						foreach( $localtax_rate as $tvakey => $tvaval )
// 						{
// 							if ($tvakey != 0)    // On affiche pas taux 0
// 							{
// 								//$this->atleastoneratenotnull++;

// 								$index++;
// 								$pdf->SetXY($col1x, $tab2_top + $tab2_hl * $index);

// 								$tvacompl='';
// 								if (preg_match('/\*/',$tvakey))
// 								{
// 									$tvakey=str_replace('*','',$tvakey);
// 									$tvacompl = " (".$outputlangs->transnoentities("NonPercuRecuperable").")";
// 								}
// 								$totalvat = $outputlangs->transcountrynoentities("TotalLT1",$mysoc->country_code).' ';

// 								$totalvat.=vatrate(abs($tvakey),1).$tvacompl;
// 								$pdf->MultiCell($col2x-$col1x, $tab2_hl, $totalvat, 0, 'L', 1);
// 								$pdf->SetXY($col2x, $tab2_top + $tab2_hl * $index);
// 								$pdf->MultiCell($largcol2, $tab2_hl, price($tvaval, 0, $outputlangs), 0, 'R', 1);
// 							}
// 						}
// 					}
// 	      		//}
// 				//Local tax 2 after VAT
// 				//if (! empty($conf->global->FACTURE_LOCAL_TAX2_OPTION) && $conf->global->FACTURE_LOCAL_TAX2_OPTION=='localtax2on')
// 				//{
// 					foreach( $this->localtax2 as $localtax_type => $localtax_rate )
// 					{
// 						if (in_array((string) $localtax_type, array('2','4','6'))) continue;

// 						foreach( $localtax_rate as $tvakey => $tvaval )
// 						{
// 							if ($tvakey != 0)    // On affiche pas taux 0
// 							{
// 								//$this->atleastoneratenotnull++;

// 								$index++;
// 								$pdf->SetXY($col1x, $tab2_top + $tab2_hl * $index);

// 								$tvacompl='';
// 								if (preg_match('/\*/',$tvakey))
// 								{
// 									$tvakey=str_replace('*','',$tvakey);
// 									$tvacompl = " (".$outputlangs->transnoentities("NonPercuRecuperable").")";
// 								}
// 								$totalvat = $outputlangs->transcountrynoentities("TotalLT2",$mysoc->country_code).' ';

// 								$totalvat.=vatrate(abs($tvakey),1).$tvacompl;
// 								$pdf->MultiCell($col2x-$col1x, $tab2_hl, $totalvat, 0, 'L', 1);

// 								$pdf->SetXY($col2x, $tab2_top + $tab2_hl * $index);
// 								$pdf->MultiCell($largcol2, $tab2_hl, price($tvaval, 0, $outputlangs), 0, 'R', 1);
// 							}
// 						}
// 					}
// 				//}

// 				// Total TTC
// 				$index++;
// 				$pdf->SetXY($col1x, $tab2_top + $tab2_hl * $index);
// 				$pdf->SetTextColor(0,0,60);
// 				$pdf->SetFillColor(224,224,224);
// 				$pdf->MultiCell($col2x-$col1x, $tab2_hl, $outputlangs->transnoentities("TotalTTC"), $useborder, 'L', 1);

// 				$pdf->SetXY($col2x, $tab2_top + $tab2_hl * $index);
// 				$pdf->MultiCell($largcol2, $tab2_hl, price($object->total_ttc, 0, $outputlangs), $useborder, 'R', 1);
// 			}
// 		}

// 		$pdf->SetTextColor(0,0,0);

// 		/*
// 		$resteapayer = $object->total_ttc - $deja_regle;
// 		if (! empty($object->paye)) $resteapayer=0;
// 		*/

// 		if ($deja_regle > 0)
// 		{
// 			$index++;

// 			$pdf->SetXY($col1x, $tab2_top + $tab2_hl * $index);
// 			$pdf->MultiCell($col2x-$col1x, $tab2_hl, $outputlangs->transnoentities("AlreadyPaid"), 0, 'L', 0);

// 			$pdf->SetXY($col2x, $tab2_top + $tab2_hl * $index);
// 			$pdf->MultiCell($largcol2, $tab2_hl, price($deja_regle, 0, $outputlangs), 0, 'R', 0);

// 			/*
// 			if ($object->close_code == 'discount_vat')
// 			{
// 				$index++;
// 				$pdf->SetFillColor(255,255,255);

// 				$pdf->SetXY($col1x, $tab2_top + $tab2_hl * $index);
// 				$pdf->MultiCell($col2x-$col1x, $tab2_hl, $outputlangs->transnoentities("EscompteOffered"), $useborder, 'L', 1);

// 				$pdf->SetXY($col2x, $tab2_top + $tab2_hl * $index);
// 				$pdf->MultiCell($largcol2, $tab2_hl, price($object->total_ttc - $deja_regle, 0, $outputlangs), $useborder, 'R', 1);

// 				$resteapayer=0;
// 			}
// 			*/

// 			$index++;
// 			$pdf->SetTextColor(0,0,60);
// 			$pdf->SetFillColor(224,224,224);
// 			$pdf->SetXY($col1x, $tab2_top + $tab2_hl * $index);
// 			$pdf->MultiCell($col2x-$col1x, $tab2_hl, $outputlangs->transnoentities("RemainderToPay"), $useborder, 'L', 1);

// 			$pdf->SetXY($col2x, $tab2_top + $tab2_hl * $index);
// 			$pdf->MultiCell($largcol2, $tab2_hl, price($resteapayer, 0, $outputlangs), $useborder, 'R', 1);

// 			$pdf->SetFont('','', $default_font_size - 1);
// 			$pdf->SetTextColor(0,0,0);
// 		}

// 		$index++;

// 			$posy = $tab2_top+20 + $tab2_hl * $index;
// 			$posx = 10;

// 			$pdf->SetTextColor(0,0,0);
// 			$pdf->SetFont('','', $default_font_size-1);
// 			$pdf->SetXY($posx,$posy-5);

// 			// when we use CONST
// 			//$text_conv='PROPALE_FREE_TEXT';
// 			//$pdf->MultiCell(200,5, $conf->global->$text_conv, 0, 'L');

// 			// $text_conv = "Toutefois ce prix est soumis aux réserves suivantes: \n\t4.1\tLe client paiera à l'entrepreneur un intérêt mensuel de deux pour cent (2%) sur toute somme due, soit 24% par année, le tout sous réserve à tout autre recours de l'entrepreneur contre le client.";	
// 			// $text_conv .="\n\t4.2\tEn cas de recours judiciaire de l'entrepreneur contre le client pour le recouvrement de sommes dues, les frais judiciaires et extrajuiciares en cours en pareil cas par l'entrepreneur sont à la charge du client mais ne seront en aucun cas supérieur à 30% du prix du contrat.";
// 			$pdf->MultiCell(200,5,$text_conv, 0, 'L');

// 			// $pdf->SetTextColor(0,0,0);
// 			// $pdf->SetFont('','B', $default_font_size - 1);
// 			// $pdf->SetXY($posx,$posy);
// 			// $text_1="1. Ouvrage à réaliser";
// 			// $pdf->MultiCell(200,3, $text_1, 0, 'L');

// 			// $pdf->SetTextColor(0,0,0);
// 			// $pdf->SetFont('','', $default_font_size - 1);
// 			// $pdf->SetXY($posx,$posy+5);
// 			// $under_text_1="Le client retient, en date de ce jour, les services de l'Entrepreneur pour exécuter l'ouvrage ci-après décrit :";
// 			// $pdf->MultiCell(200,5, $under_text_1, 0, 'L');


// ----- end -----
 
	
		return ($tab2_top + ($tab2_hl * $index));
	}


	/**
	 *	Show contract constraints
	 *
	 *	@param	PDF			$pdf            Object PDF
	 *	@param  Facture		$object         Object invoice
	 *	@param	Translate	$outputlangs	Objet langs
	 */
	function _tableau_general_info(&$pdf, $object, $outputlangs)
	{

		$posx = 15;
		$line_end = $this->page_largeur - $this->marge_droites;
		$posy = $pdf->getY() - 2;

		$default_font_size = pdf_getPDFFontSize($outputlangs);// important to set font size
		$pdf->SetTextColor(0,0,0);

		//---4.3---//
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "4.3"; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 10;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','', $default_font_size-1);
		$text = "L'entrepreneur ne fournira pas :";
		$pdf->MultiCell($line_end-$posx, 5, $text, 0, 'L');

		//add rectangle
		$posy += 5;
		$pdf->SetDrawColor(0);//black
		$pdf->SetLineWidth(0.1);
		$pdf->Rect($posx+2, $posy+0.5, 3, 3);

		$text = "les matériaux : ";
		$pdf->SetXY($posx+7, $posy);
		$pdf->MultiCell(23, 5, $text, 0, 'L');		
		
	
		$pdf->line($posx+30 ,$posy+4, $line_end-$this->marge_gauche,$posy+4);

		//add rectangle
		$posy += 6;
		$pdf->Rect($posx+2, $posy+0.5, 3, 3);

		$text = "l'outillage et équipement :";
		$pdf->SetXY($posx+7, $posy);
		$pdf->MultiCell(38, 5, $text, 0, 'L'); 
		
		$pdf->line($posx+45 ,$posy+4, $line_end - $this->marge_gauche,$posy+4);

		$posy += 5;
		$pdf->SetXY($posx+7, $posy);
		$pdf->SetFont('','B', $default_font_size-1);
		$text = "Qui seront aux seuls frais du client.";
		$pdf->MultiCell($line_end-$posx,5,$text, 0, 'L');

		//---4.4---//
		$posx = 15;
		$posy += 5;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "4.4"; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 10;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','', $default_font_size-1);
		$text = "Ce prix sera soumis à révision à la hausse par l'entrepreneur et ce confomément à une entente entre les parties das les éventualités suivantes:";
		$pdf->MultiCell($line_end-$posx-$this->marge_gauche, 5, $text, 0, '');

		$posy += 7;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size+4);
		$pdf->Cell(1, 1, chr(127), 0, 0, 'L');// A BULLET
		$pdf->SetFont('','', $default_font_size-1);

		$posx += 3;
		$posy++;
		$pdf->SetXY($posx,$posy);
		$text = "Modifications aux plans, devis, cahiers de charges ou aux travaux à exécuter par le client;";
		$pdf->MultiCell($line_end-$posx - $this->marge_gauche, 5, $text, 0, '');

		$posy += 3;
		$posx -= 3;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size+4);
		$pdf->Cell(1, 1, chr(127), 0, 0, 'L');// A BULLET
		$pdf->SetFont('','', $default_font_size-1);

		$posx += 3;
		$posy ++;
		$pdf->SetXY($posx,$posy);
		$text = "Erreur et/ou omission dans les plans, devis, chaiers de chargers, études et/ou expertises soumis par le client;";
		$pdf->MultiCell($line_end-$posx - $this->marge_gauche, 5, $text, 0, '');
		$pdf->MultiCell(4, 5, chr(0), 0, '');


		$posy += 3;
		$posx -= 3;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size+4);
		$pdf->Cell(1, 1, chr(127), 0, 0, 'L');// A BULLET
		$pdf->SetFont('','', $default_font_size-1);

		$posx += 3;
		$posy ++;
		$pdf->SetXY($posx,$posy);
		$text = "Hausse du coût de la main d'ouvre pour cause de modifications aux conventions collectives, à une Loi ou un réglement par tout instance gouvernamentale ou l'application d'une convention collective non connue à la signature des présentes;";
		$pdf->MultiCell($line_end-$posx-$this->marge_gauche, 5, $text, 0, '');

		$posy += 7;
		$posx -= 3;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size+4);
		$pdf->Cell(1, 1, chr(127), 0, 0, 'L');// A BULLET
		$pdf->SetFont('','', $default_font_size-1);

		$posx += 3;
		$posy ++;
		$pdf->SetXY($posx,$posy);
		$text = "Hausse du coût des matériaux, de l'outillage et/ou équipement pour cause d'entrée en vigueurd, une nouvelle taxe de quelque nature que ce soit;";
		$pdf->MultiCell($line_end-$posx -$this->marge_gauche, 5, $text, 0, '');

		$posy += 7;
		$posx -= 3;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size+4);
		$pdf->Cell(1, 1, chr(127), 0, 0, 'L');// A BULLET
		$pdf->SetFont('','', $default_font_size-1);

		$posx += 3;
		$posy ++;
		$pdf->SetXY($posx,$posy);
		$text = "Changement dans les conditions d'exécution de l'ouvrage hors du contrôle de l'entrepreneur, tel que, et sans limitation aucune, pluies diluviennes, froid intense, toute force majeure;";
		$pdf->MultiCell($line_end-$posx -$this->marge_gauche, 5, $text, 0, '');

		//---5----//
		$posx = 10;
		$posy += 10;
		$pdf->SetFont('','B', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "5."; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 5;
		$pdf->SetXY($posx,$posy);
		$text = "Libre exécution";
		$pdf->MultiCell(50, 5, $text, 0, '');


		$posy += 5;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "Le client laissera à l'entrepreneur libre exécution des travaux mais pourra, à sa guise, mais sans nuire à la bonne exécution des travaux par l'entrepreneur, inspecter l'ouvrage."; 
		$pdf->MultiCell($line_end-$posx - $this->marge_gauche, 5, $text, 0, 'L');

		//---6----//
		$posx = 10;
		$posy += 10;
		$pdf->SetFont('','B', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "6."; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 5;
		$pdf->SetXY($posx,$posy);
		$text = "Modifications";
		$pdf->MultiCell(50, 5, $text, 0, '');


		$posy += 5;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "Le client pourra demander à l'entrepreneur d'exécuter des modifications à l'ouvrage seulement si telles modificcations sont requises du client par écrit et qu'elles soient acceptées par écrit quant à leurs prix, nature et échéance par l'entrepreneur et le client."; 
		$pdf->MultiCell($line_end-$posx -$this->marge_gauche, 5, $text, 0, 'L');
		
		//---7----//
		$posx = 10;
		$posy += 10;
		$pdf->SetFont('','B', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "7."; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 5;
		$pdf->SetXY($posx,$posy);
		$text = "Non disponibilité de matériaux";
		$pdf->MultiCell(60, 5, $text, 0, '');


		$posy += 5;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "Dans l'éventualité où des matériaux nécessités à l'exécution de l'ouvrage ne sont plus disponibles dans les délais permettant de respecter la terminaison de l'ouvrage selon les termes des présentes, l'entrepreneur pourra substituer tout matériaux de qualité équivalente ou supérieure, sauf objection du client qui renoncera alors à tout dédommagement pou retard dans la livraison de l'ouvrage."; 
		$pdf->MultiCell($line_end-$posx -$this->marge_gauche, 5, $text, 0, 'L');


		//---8----//
		$posx = 10;
		$posy += 18;
		$pdf->SetFont('','B', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "8.";  
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 5;
		$pdf->SetXY($posx,$posy);
		$text = "Résiliation par le client";
		$pdf->MultiCell(60, 5, $text, 0, '');

		$posy += 5;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "8.1"; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 6;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "Qu'en cas de défaut de l'entrepreneur de respecter ses obligations aux termes sea présentes, sous réserve de tous ses recours;"; 
		$pdf->MultiCell($line_end-$posx-$this->marge_gauche, 5, $text, 0, 'L');

		$posy += 5;
		$posx -= 6;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "8.2"; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 6;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "En payant à l'entrepreneur en proportion du prix convenu, les frais et dépenses actuelles, la valeur des travaux exécutés avant la notification de la résiliation, la valeur des biens fournism une indemnité additionnelle équivalente à vingt pour cent (20%) de la valeur totale du contrat à titre de perte de profit, et tout autre préjudice que l'entrepreneur pourra subir;";
		$pdf->MultiCell($line_end-$posx-$this->marge_gauche, 5, $text, 0, 'L');

		//---9----//
		$posx = 10;
		$posy += 14;
		$pdf->SetFont('','B', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "9.";  
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 5;
		$pdf->SetXY($posx,$posy);
		$text = "Résiliation par l'entrepreneur";
		$pdf->MultiCell(70, 5, $text, 0, '');

		$posy += 5;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "9.1"; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 6;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "Qu'en cas de défaut par le client de respecter ses obligations aux termes des présentes, sous réserve de tous ses recours;";
		$pdf->MultiCell($line_end-$posx-$this->marge_gauche, 5, $text, 0, 'L');

		$posy += 5;
		$posx -= 6;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "9.2"; 
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx += 6;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "Pour motif sérieux, mais jamais à contretemps, et en faisant tout ce qui est immédiatement nécessaire pou prévenir une perte et en assurant tout préjudice causé au client par une telle résiliation;";
		$pdf->MultiCell($line_end-$posx-$this->marge_gauche, 5, $text, 0, 'L');

		//---10----//
		$posx = 10;
		$posy += 10;
		$pdf->SetFont('','B', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "10.";  
		$pdf->MultiCell(10, 5, $text, 0, 'L');
		
		$posx = 17; 
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','', $default_font_size-1);
		$text = "Le client reconnait avoir obtenu, préalablement à la negociation et signature du présent contrat, toute information utile relativement à la nature de la tâche ainsi qu'aux biens et au temps nécessaire à cette fin.";  
		$pdf->MultiCell($line_end-$posx-$this->marge_gauche, 5, $text, 0, 'L');

		//---11----//
		$posx = 10;
		$posy += 10;
		$pdf->SetFont('','B', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "11.";  
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx = 17; 
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','', $default_font_size-1);
		$text = "Les parties conviennent que les Lois de la Provence de Québec en vigueur à la date de la signature des présentes s'appliqueront au présent contrat et déclarent, pour les fins des présentes, élire domicile à la place d'affaire de l'entrepreneur.";
		$pdf->MultiCell($line_end-$posx-$this->marge_gauche, 5, $text, 0, 'L');

		//---12----//
		$posx = 10;
		$posy += 10;
		$pdf->SetFont('','B', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "12.";  
		$pdf->MultiCell(10, 5, $text, 0, 'L');

		$posx = 17; 
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','', $default_font_size-1);
		$text = "Le client reconnait avoir librement négocié tous les termes du présent contrat, avoir lu chacune de ses clauses, l'avoir compris, et s'en déclare satisfait par sa signature ci-après exposée:";
		$pdf->MultiCell($line_end-$posx-$this->marge_gauche, 5, $text, 0, 'L');

		$posx = $this->marge_gauche;
		$posy += 15;
		$pdf->SetFont('','', $default_font_size-1);
		$pdf->SetXY($posx,$posy);
		$text = "Signé à";  
		$pdf->MultiCell(25, 5, $text, 0, 'L');

		$pdf->line($posx+15 ,$posy+4, $posx+95,$posy+4);

		$pdf->SetXY($posx+97,$posy);
		$text = ", le";  
		$pdf->MultiCell(15, 5, $text, 0, 'L');

		$pdf->line($posx+105 ,$posy+4, $line_end - $this->marge_gauche,$posy+4);

		$posy+=12;
		$pdf->SetXY($posx,$posy);

		$pdf->line($posx ,$posy+4, $posx+90,$posy+4);

		$pdf->SetXY($posx+23,$posy+4.5);
		$pdf->SetFont('','', $default_font_size-1);
		$text = "Entrepreneur";
		$pdf->MultiCell(60, 5, $text, 0, 'L');

		$pdf->line($posx+97 ,$posy+4, $line_end - $this->marge_gauche,$posy+4);

		$pdf->SetXY($posx+125,$posy+4.5);
		$pdf->SetFont('','', $default_font_size-1);
		$text = "Client";
		$pdf->MultiCell(60, 5, $text, 0, 'L');
		
		$posy+=12;
		$pdf->SetXY($posx,$posy);
		$pdf->line($posx+97 ,$posy+4, $line_end - $this->marge_gauche,$posy+4);

		$pdf->SetXY($posx+125,$posy+4.5);
		$pdf->SetFont('','', $default_font_size-1);
		$text = "Client";
		$pdf->MultiCell(60, 5, $text, 0, 'L');
		
		$posy+=9;
		$posx = $this->marge_gauche;
		$pdf->line($posx ,$posy+4, $line_end - $posx,$posy+4);

		$pdf->line($posx ,$posy+4, $posx, $posy+9.5);//begin vertical line

		$pdf->SetXY($posx+13,$posy+4.5);
		$pdf->SetFont('','B', $default_font_size-1);
		$text = "USAGE EXCLUSIF RÉSERVÉ AUX MEMBRES EN RÈGLE DE LA C.E.S.G.M";
		$pdf->MultiCell($line_end - 55, 5, $text, 0, 'C');

		$pdf->line($line_end - $posx ,$posy+4, $line_end-$posx ,$posy+9.5);//end vertical line

		$posy+=5.5;
		$pdf->line($posx ,$posy+4, $line_end -$posx,$posy+4);
				
		//$pdf->SetLineWidth();//to default size used for next lines

	}


	/**
	 *   Show table for lines
	 *
	 *   @param		PDF			$pdf     		Object PDF
	 *   @param		string		$tab_top		Top position of table
	 *   @param		string		$tab_height		Height of table (rectangle)
	 *   @param		int			$nexY			Y (not used)
	 *   @param		Translate	$outputlangs	Langs object
	 *   @param		int			$hidetop		1=Hide top bar of array and title, 0=Hide nothing, -1=Hide only title
	 *   @param		int			$hidebottom		Hide bottom bar of array
	 *   @return	void
	 */
	//unused
	function _tableau(&$pdf, $tab_top, $tab_height, $nexY, $outputlangs, $hidetop=0, $hidebottom=0)
	{
		//global $conf;


		// Force to disable hidetop and hidebottom data about description
		// $hidebottom=1;
		// $hidetop=1;

		// if ($hidetop) $hidetop=-1;

		// $default_font_size = pdf_getPDFFontSize($outputlangs);

		// Amount in (at tab_top - 1)
		// $pdf->SetTextColor(0,0,0);
		// $pdf->SetFont('','',$default_font_size - 2);

		// if (empty($hidetop))
		// {
		// 	$titre = $outputlangs->transnoentities("AmountInCurrency",$outputlangs->transnoentitiesnoconv("Currency".$conf->currency));
		// 	$pdf->SetXY($this->page_largeur - $this->marge_droite - ($pdf->GetStringWidth($titre) + 3), $tab_top-4);
		// 	$pdf->MultiCell(($pdf->GetStringWidth($titre) + 3), 2, $titre);

		// 	//$conf->global->MAIN_PDF_TITLE_BACKGROUND_COLOR='230,230,230';
		// 	if (! empty($conf->global->MAIN_PDF_TITLE_BACKGROUND_COLOR)) $pdf->Rect($this->marge_gauche, $tab_top, $this->page_largeur-$this->marge_droite-$this->marge_gauche, 6, 'F', null, explode(',',$conf->global->MAIN_PDF_TITLE_BACKGROUND_COLOR));
		// }

		// $pdf->SetDrawColor(128,128,128);
		// $pdf->SetFont('','',$default_font_size - 1);

		// Output Rect
		//$this->printRect($pdf,$this->marge_gauche, $tab_top, $this->page_largeur-$this->marge_gauche-$this->marge_droite, $tab_height, $hidetop, $hidebottom);	// Rect prend une longueur en 3eme param et 4eme param

		// if (empty($hidetop))
		// {
		// 	$pdf->line($this->marge_gauche, $tab_top+6, $this->page_largeur-$this->marge_droite, $tab_top+6);	// line prend une position y en 2eme param et 4eme param

		// 	$pdf->SetXY($this->posxdesc-1, $tab_top+1);
		// 	$pdf->MultiCell(108,2, $outputlangs->transnoentities("Designation"),'','L');
		// }

		// if (! empty($conf->global->MAIN_GENERATE_PROPOSALS_WITH_PICTURE))
		// {
		// 	$pdf->line($this->posxpicture-1, $tab_top, $this->posxpicture-1, $tab_top + $tab_height);
		// 	if (empty($hidetop))
		// 	{
		// 		//$pdf->SetXY($this->posxpicture-1, $tab_top+1);
		// 		//$pdf->MultiCell($this->posxtva-$this->posxpicture-1,2, $outputlangs->transnoentities("Photo"),'','C');
		// 	}
		// }

		// if (empty($conf->global->MAIN_GENERATE_DOCUMENTS_WITHOUT_VAT))
		// {
		// 	$pdf->line($this->posxtva-1, $tab_top, $this->posxtva-1, $tab_top + $tab_height);
		// 	if (empty($hidetop))
		// 	{
		// 		$pdf->SetXY($this->posxtva-3, $tab_top+1);
		// 		$pdf->MultiCell($this->posxup-$this->posxtva+3,2, $outputlangs->transnoentities("VAT"),'','C');
		// 	}
		// }

		// 	//vertical line + price UHT
		// //$pdf->line($this->posxup-1, $tab_top, $this->posxup-1, $tab_top + $tab_height);
		// if (empty($hidetop))
		// {
		// 	$pdf->SetXY($this->posxup-1, $tab_top+1);
		// 	$pdf->MultiCell($this->posxqty-$this->posxup-1,2, $outputlangs->transnoentities("PriceUHT"),'','C');
		// }
		// 	//vertical line + qty
		// //$pdf->line($this->posxqty-1, $tab_top, $this->posxqty-1, $tab_top + $tab_height);
		// if (empty($hidetop))
		// {
		// 	$pdf->SetXY($this->posxqty-1, $tab_top+1);
		// 	$pdf->MultiCell($this->posxdiscount-$this->posxqty-1,2, $outputlangs->transnoentities("Qty"),'','C');
		// }

		// 	//vertical line
		// //$pdf->line($this->posxdiscount-1, $tab_top, $this->posxdiscount-1, $tab_top + $tab_height);
		// if (empty($hidetop))
		// {
		// 	if ($this->atleastonediscount)
		// 	{
		// 		$pdf->SetXY($this->posxdiscount-1, $tab_top+1);
		// 		$pdf->MultiCell($this->postotalht-$this->posxdiscount+1,2, $outputlangs->transnoentities("ReductionShort"),'','C');
		// 	}
		// }
		// if ($this->atleastonediscount)
		// {
		// 	$pdf->line($this->postotalht, $tab_top, $this->postotalht, $tab_top + $tab_height);
		// }

		// if (empty($hidetop))
		// {
		// 	$pdf->SetXY($this->postotalht-1, $tab_top+1);
		// 	//$pdf->MultiCell(30,2, $outputlangs->transnoentities("TotalHT"),'','C');
		// }
	}

	/**
	 *  Show top header of page.
	 *
	 *  @param	PDF			$pdf     		Object PDF
	 *  @param  Object		$object     	Object to show
	 *  @param  int	    	$showaddress    0=no, 1=yes
	 *  @param  Translate	$outputlangs	Object lang for output
	 *  @return	void
	 */
	function _pagehead(&$pdf, $object, $showaddress, $outputlangs)
	{
		global $conf,$langs;

		$outputlangs->load("main");
		$outputlangs->load("bills");
		$outputlangs->load("propal");
		$outputlangs->load("companies");

		$default_font_size = pdf_getPDFFontSize($outputlangs);

		pdf_cesgm_pagehead($pdf,$outputlangs,$this->page_hauteur);

		//  Show Draft Watermark
		if($object->statut==0 && (! empty($conf->global->PROPALE_DRAFT_WATERMARK)) )
		{
            pdf_cesgm_watermark($pdf,$outputlangs,$this->page_hauteur,$this->page_largeur,'mm',$conf->global->PROPALE_DRAFT_WATERMARK);
		}

		
 
///-----------------------cesgm logo + text (address etc.)----------------------------/////
		$pdf->SetTextColor(0,0,60);
		$pdf->SetFont('','B', $default_font_size + 3);

		$posy=$this->marge_haute;
		$posx=$this->page_largeur-$this->marge_droite-100;

		$pdf->SetXY($this->marge_gauche,$posy);

		// cesgm logo
		//$logo=$conf->mycompany->dir_output.'/logos/thumbs/'.$this->emetteur->logo;
		$logo=$conf->mycompany->dir_output.'/logos/thumbs/cesgm.png';
		if ($this->emetteur->logo)
		{
			if (is_readable($logo))
			{
			    //$height=pdf_getHeightForLogo($logo);
			    $height = 10;// logo height
			    $width=20; // width=0 (auto)
			    $pdf->Image($logo, $this->marge_gauche, $posy, $width, $height);	

			}

			else
			{
				///error message wiil be displayed
				$pdf->SetTextColor(200,0,0);
				$pdf->SetFont('','B',$default_font_size - 2);
				$pdf->MultiCell(100, 3, $outputlangs->transnoentities("ErrorLogoFileNotFound",$logo), 0, 'L');
				$pdf->MultiCell(100, 3, $outputlangs->transnoentities("ErrorGoToGlobalSetup"), 0, 'L');
			}
		}
		else
		{
			$text=$this->emetteur->name;
			$pdf->MultiCell(100, 4, $outputlangs->convToOutputCharset($text), 0, 'L');
		}

		$pdf->SetFont('','B',$default_font_size - 1.2);
		$pdf->SetXY($posx-70,$posy);
		$pdf->SetTextColor(0,0,60);
		$desc="Corporation des Entrepreneurs Spécialisés du Grand Montéal Inc. \n";
		$address_cesgm="5181, rue d'Amiens, bureau 500, Montréal-Nord (Québec) H1G 6N9 Téléphone : 514.955.3548 * Fax : 514.955.6623";
		$pdf->MultiCell(70, 10, $desc, 0, 'L',false);
		$pdf->MultiCell(100, 8, $address_cesgm, 0, 'L',false);
		
///----------------------end cesgm logo + text (address etc.)-----------------------------/////


///----------------Contrat d'entreprise-----------------------------------/////

		$pdf->SetFont('','B',$default_font_size + 3);
		$pdf->SetXY($posx,$posy);
		$pdf->SetTextColor(0,0,60);
		//$title=$outputlangs->transnoentities("CommercialProposal");
		$title="CONTRAT D'ENTREPRISE";
		$pdf->MultiCell(100, 4, $title, '', 'R');

		$pdf->SetFont('','B',$default_font_size+2);

		$posy+=5.5;
		$pdf->SetXY($posx,$posy);
		$pdf->SetTextColor(255,0,0);
		$pdf->MultiCell(100, 4, /*$outputlangs->transnoentities("Ref")." : " .*/ $outputlangs->convToOutputCharset($object->ref), '', 'R');



//------------------- BEGIN----------------//	
		$posy+=1;
		$pdf->SetFont('','', $default_font_size - 1);

		if ($object->ref_client)
		{
			$posy+=5;
			$pdf->SetXY($posx,$posy);
			$pdf->SetTextColor(0,0,60);
			$pdf->MultiCell(100, 3, $outputlangs->transnoentities("RefCustomer")." : " . $outputlangs->convToOutputCharset($object->ref_client), '', 'R');
		}

		$posy+=4;
		// $pdf->SetXY($posx,$posy);
		// $pdf->SetTextColor(0,0,60);
		// $pdf->MultiCell(100, 3, $outputlangs->transnoentities("Date")." : " . dol_print_date($object->date,"day",false,$outputlangs,true), '', 'R');

		$posy+=4;
		// $pdf->SetXY($posx,$posy);
		// $pdf->SetTextColor(0,0,60);
		// $pdf->MultiCell(100, 3, $outputlangs->transnoentities("DateEndPropal")." : " . dol_print_date($object->fin_validite,"day",false,$outputlangs,true), '', 'R');

		// if ($object->client->code_client)
		// {
		// 	$posy+=4;
		// 	$pdf->SetXY($posx,$posy);
		// 	$pdf->SetTextColor(0,0,60);
		// 	$pdf->MultiCell(100, 3, $outputlangs->transnoentities("CustomerCode")." : " . $outputlangs->transnoentities($object->client->code_client), '', 'R');
		// }

		$posy+=2;

//------------------- end  ----------------//	

///---------------------end Contrat d'entreprise-------------------------------/////




		// Show list of linked objects 
		//unused !?
		//$posy = pdf_writeLinkedObjects($pdf, $object, $outputlangs, $posx, $posy, 100, 3, 'R', $default_font_size);

		if ($showaddress)
		{
			// Sender properties
			// $carac_emetteur='';



			//==============

		 	// Add internal contact of proposal if defined
			$arrayidcontact=$object->getIdContact('internal','SALESREPFOLL');
// 		 	if (count($arrayidcontact) > 0)
// 		 	{
// 		 		$object->fetch_user($arrayidcontact[0]);
// 		 		$carac_emetteur .= ($carac_emetteur ? "" : '' ).$outputlangs->transnoentities("Name").": ".$outputlangs->convToOutputCharset($object->user->getFullName($outputlangs));
// 		 	}


// //============================

// 		 	$carac_emetteur .= pdf_cesgm_build_address($outputlangs, $this->emetteur, $object->client);



//============================
			// Show sender
////[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]

			// $posy=42;

		 	$posx=$this->marge_gauche;
			if (! empty($conf->global->MAIN_INVERT_SENDER_RECIPIENT)) $posx=$this->page_largeur-$this->marge_droite-80;
			$hautcadre=40;

			$posy=$pdf->getY();

			$posy += 9;
			$pdf->SetTextColor(0,0,0);
			$pdf->SetFont('','B', $default_font_size);
			$pdf->SetXY($posx,$posy);
			$text_entre="ENTRE";
			$pdf->MultiCell(180,5, $text_entre, 0, 'C');

			$posy=$pdf->getY();

			$pdf->SetTextColor(0,0,0);
			$pdf->SetFont('','', $default_font_size - 2);
			$pdf->SetXY($posx,$posy);
			$under_text_entre="(Ci-après appelé l'Entrepreneur)";
			$pdf->MultiCell(180,5, $under_text_entre, 0, 'C');



			// // Show sender frame // 
			// $pdf->SetXY($posx,$posy+3);
			// $pdf->SetFillColor(230,230,230);
			// $pdf->MultiCell(190, $hautcadre, "", 1, 'C', 1);
			// $pdf->SetTextColor(0,0,60);

			// Show sender name
			$posy=$pdf->getY();

			global $user;

			$_emetteur_infos = [	"Nom :" => $this->emetteur->name,
									"Adresse :" => $this->emetteur->address,
									"Ville :" => $this->emetteur->town,
									"Code postal :" => $this->emetteur->zip,
									"Téléphone :" => $this->emetteur->phone,
									"Télécopieur :" => $this->emetteur->fax,
									"# licence RBQ :" => LICENCE_RBQ,
									"Courriel :" => $this->emetteur->email,
									"Représentant :" => $user->getFullName($outputlangs)//,
									// "R_Adresse :" => "à determiner",
									// "R_Ville :" => "à determiner",
									// "R_Code postal :" => "à determiner"
								];


			$line_end = $posx+197;
		
			foreach ($_emetteur_infos as $key => $value) {
				
				$pdf->SetXY($posx,$posy);
				$pdf->SetFont('','B', $default_font_size+1);


				switch ($key) {

					case "Nom :":

						$pdf->MultiCell(16, 4, $key, 0, 'L');
						$pdf->SetXY($posx+19,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(161, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$posy += 5;	
						$pdf->line($posx+17,$posy,$line_end,$posy);
						$posy+=1;	
						
						break;
					
					case "Adresse :":

						$pdf->MultiCell(23, 4, $key, 0, 'L');
						$pdf->SetXY($posx+26,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(155, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$posy += 5;	
						$pdf->line($posx+24,$posy,$line_end,$posy);
						$posy+= 1;	

						break;

					case "Ville :":
					
						$pdf->MultiCell(16, 4, $key, 0, 'L');
						$pdf->SetXY($posx+19,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(100, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$pdf->line($posx+16,$posy + 5,$line_end - 61 ,$posy + 5);	
						
						break;

					case "Code postal :":

						$pdf->SetXY($line_end - 60,$posy);
						$pdf->MultiCell(30, 4, $key, 0, 'L');
						$pdf->SetXY($line_end - 27,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(27, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$posy += 5;	
						$pdf->line($line_end - 30 ,$posy, $line_end,$posy);
						$posy+=1;

						break;
						
					case "Téléphone :":

						$pdf->MultiCell(26, 4, $key, 0, 'L');
						$pdf->SetXY($posx+29,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(58, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$pdf->line($posx+27,$posy + 5,$line_end - 91,$posy + 5);

						break;

					case "Télécopieur :" :

						$pdf->SetXY($line_end - 90,$posy);
						$pdf->MultiCell(30, 4, $key, 0, 'L');
						$pdf->SetXY($line_end - 57,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(58, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$posy += 5;	
						$pdf->line($line_end - 59,$posy, $line_end,$posy);
						$posy+=1;

						break;

					case "# licence RBQ :":

						$pdf->MultiCell(34, 4, $key, 0, 'L');
						$pdf->SetXY($posx+37,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(40, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$pdf->line($posx+35,$posy + 5.5,$line_end - 118,$posy + 5.5);	
				
						break;

					case "Courriel :":

						$pdf->SetXY($line_end - 117,$posy);
						$pdf->MultiCell(24, 4, $key, 0, 'L');
						$pdf->SetXY($line_end - 92,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(58, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$posy += 5;	
						$pdf->line($line_end - 94,$posy, $line_end,$posy);
						$posy+=1;

						break;

					case "Représentant :":

						$pdf->MultiCell(33, 4, $key, 0, 'L');
						$pdf->SetXY($posx+36,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(144, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$posy += 5;	
						$pdf->line($posx+34,$posy,$line_end,$posy);
						$posy+=1;	

						break;

					// case "R_Adresse :":

					// 	$pdf->MultiCell(23, 4, substr($key,2), 0, 'L');
					// 	$pdf->SetXY($posx+26,$posy);
					// 	$pdf->SetFont('','', $default_font_size + 1);
					// 	$pdf->MultiCell(155, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
					// 	$posy += 5;	
					// 	$pdf->line($posx+24,$posy,$line_end,$posy);
					// 	$posy+=1;	

					// 	break;

					// case "R_Ville :":
					
					// 	$pdf->MultiCell(16, 4, substr($key,2), 0, 'L');
					// 	$pdf->SetXY($posx+19,$posy);
					// 	$pdf->SetFont('','', $default_font_size + 1);
					// 	$pdf->MultiCell(100, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
					// 	$pdf->line($posx+16,$posy + 5,$line_end - 61 ,$posy + 5);	
						
					// 	break;

					// case "R_Code postal :":

					// 	$pdf->SetXY($line_end - 60,$posy);
					// 	$pdf->MultiCell(30, 4, substr($key,2), 0, 'L');
					// 	$pdf->SetXY($line_end - 27,$posy);
					// 	$pdf->SetFont('','', $default_font_size + 1);
					// 	$pdf->MultiCell(27, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
					// 	$posy += 5;	
					// 	$pdf->line($line_end - 30 ,$posy, $line_end,$posy);
					// 	$posy+=1;

					// 	break;

					default:

						// $pdf->MultiCell(180, 4, $key, 0, 'L');
						// $pdf->SetXY($posx+42,$posy);
						// $pdf->SetFont('','', $default_font_size + 1);
						// $pdf->MultiCell(180, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						
		 			// 	$posy+=5.5;
		 			// 	$pdf->line($posx+40,$posy,180,$posy);

		 			// 	$posy+=0.5;
						break;
				}	
		
			}

			// $pdf->SetXY($posx,$posy);
			// $pdf->SetFont('','B', $default_font_size+2);
			// $pdf->MultiCell(180, 4, "Nom :", 0, 'L');
			// $pdf->SetXY($posx+30,$posy);
			// $pdf->MultiCell(180, 4, $outputlangs->convToOutputCharset($this->emetteur->name), 0, 'L');
 			
			// $this->emetteur->name;
			// $this->emetteur->address;
		 // 	$this->emetteur->town;
		 // 	$this->emetteur->zip;
		 // 	$this->emetteur->phone;
		 // 	$this->emetteur->fax;
		 // 	$this->emetteur->email;
		 // 	$this->emetteur->url;
		
			
			//$posy=$pdf->getY();

			//$pdf->line($posx+30,$posy,180,$posy);
			

			// Show sender information
			// $pdf->SetXY($posx+20,$posy);
			// $pdf->SetFont('','', $default_font_size + 1);
			// $pdf->MultiCell(180, 4, $carac_emetteur, 0, 'L');



/////[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]

			//$posy = 85;
			$posy=$pdf->getY();
			$posy +=3;
			$pdf->SetTextColor(0,0,0);
			$pdf->SetFont('','B', $default_font_size);
			$pdf->SetXY($posx,$posy);
			$text_et="ET";
			$pdf->MultiCell(180,5, $text_et, 0, 'C');

			$posy=$pdf->getY();

			$pdf->SetTextColor(0,0,0);
			$pdf->SetFont('','', $default_font_size - 2);
			$pdf->SetXY($posx,$posy);
			$under_text_et="(Ci-après appelé le client)";
			$pdf->MultiCell(180,5, $under_text_et, 0, 'C');



			// If CUSTOMER contact defined, we use it
			$usecontact=false;
			$arrayidcontact=$object->getIdContact('external','CUSTOMER');
			if (count($arrayidcontact) > 0)
			{
				$usecontact=true;
				$result=$object->fetch_contact($arrayidcontact[0]);
			}

			// Recipient name
			if (! empty($usecontact))
			{
				// On peut utiliser le nom de la societe du contact
				if (! empty($conf->global->MAIN_USE_COMPANY_NAME_OF_CONTACT)) $socname = $object->contact->socname;
				else $socname = $object->client->nom;
				$carac_client_name=$outputlangs->convToOutputCharset($socname);
			}
			else
			{
				$carac_client_name=$outputlangs->convToOutputCharset($object->client->nom);
			}


//-------------------------------------
			//$carac_client=pdf_cesgm_build_address($outputlangs,$this->emetteur,$object->client,($usecontact?$object->contact:''),$usecontact,'target');
//----------------------------------------
			$_client_ = $object->client;

			// prospect private note 
			$_adresse_trav = (empty($object->note_private)? $_client_->address:$object->note_private);

			$_emetteur_infos = [	"Nom :" => $_client_ ->name,
									"Adresse :" => $_client_ ->address,
									"Ville :" => $_client_ ->town,
									"Code postal :" => $_client_ ->zip,
									"Téléphone :" => $_client_ ->phone,
									"Télécopieur :" => $_client_ ->fax,
									"Adresse des travaux :" => $_adresse_trav
								];



			// Show recipient
			// $widthrecbox=100;
			// if ($this->page_largeur < 210) $widthrecbox=84;	// To work with US executive format
			// //$posy=85;
			

			//$posx=10;//$this->page_largeur-$this->marge_gauche;//-$widthrecbox;
			// if (! empty($conf->global->MAIN_INVERT_SENDER_RECIPIENT)) $posx=$this->marge_gauche;

			// // Show recipient frame
			// $pdf->SetTextColor(0,0,0);
			// $pdf->SetFont('','', $default_font_size - 2);
			// $pdf->SetXY($posx+2,$posy-5);
			// $pdf->MultiCell($widthrecbox, 5, $outputlangs->transnoentities("BillTo").":", 0, 'L');
			// $pdf->Rect($posx, $posy, $widthrecbox, $hautcadre);

			// Show recipient name

			$posy = $pdf->getY();

			foreach ($_emetteur_infos as $key => $value) {

				$pdf->SetXY($posx,$posy);
				$pdf->SetFont('','B', $default_font_size+1);


				switch ($key) {

					case "Nom :":

						$pdf->MultiCell(16, 4, $key, 0, 'L');
						$pdf->SetXY($posx+19,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(161, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$posy += 5;	
						$pdf->line($posx+17,$posy,$line_end,$posy);
						$posy+=1;	
						
						break;
					
					case "Adresse :":

						$pdf->MultiCell(23, 4, $key, 0, 'L');
						$pdf->SetXY($posx+26,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(155, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$posy += 5;	
						$pdf->line($posx+24,$posy,$line_end,$posy);
						$posy+=1;	

						break;

					case "Ville :":
					
						$pdf->MultiCell(16, 4, $key, 0, 'L');
						$pdf->SetXY($posx+19,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(100, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$pdf->line($posx+16,$posy + 5,$line_end - 61 ,$posy + 5);	
						
						break;

					case "Code postal :":

						$pdf->SetXY($line_end - 60,$posy);
						$pdf->MultiCell(30, 4, $key, 0, 'L');
						$pdf->SetXY($line_end - 27,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(27, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$posy += 5;	
						$pdf->line($line_end - 30 ,$posy, $line_end,$posy);
						$posy+=1;

						break;
						
					case "Téléphone :":

						$pdf->MultiCell(26, 4, $key, 0, 'L');
						$pdf->SetXY($posx+29,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(58, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$pdf->line($posx+27,$posy + 5,$line_end - 91,$posy + 5);

						break;

					case "Télécopieur :" :

						$pdf->SetXY($line_end - 90,$posy);
						$pdf->MultiCell(30, 4, $key, 0, 'L');
						$pdf->SetXY($line_end - 57,$posy);
						$pdf->SetFont('','', $default_font_size + 1);
						$pdf->MultiCell(58, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						$posy += 5;	
						$pdf->line($line_end - 59,$posy, $line_end,$posy);
						$posy+=1;

						break;

					case "Adresse des travaux :":

						$pdf->SetXY($posx,$posy+=3);
						$pdf->MultiCell(46, 4, $key, 0, 'L');
						$pdf->SetXY($posx+49,$posy);
						$pdf->SetFont('','', $default_font_size - 1);
						$pdf->MultiCell(141, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						// $posy += 8;	
						// //$pdf->line($posx+47,$posy+=1,$line_end,$posy);
						// $posy+=1;	
						$posy+=9;

						break;

					default:

						// $pdf->MultiCell(180, 4, $key, 0, 'L');
						// $pdf->SetXY($posx+42,$posy);
						// $pdf->SetFont('','', $default_font_size + 1);
						// $pdf->MultiCell(180, 4, $outputlangs->convToOutputCharset($value), 0, 'L');
						
		 			// 	$posy+=5.5;
		 			// 	$pdf->line($posx+40,$posy,180,$posy);

		 			// 	$posy+=0.5;
						break;
				}	
		
			}

			// $posy = $pdf->getY();
			// $pdf->SetXY($posx,$posy);
			// $pdf->SetFont('','B', $default_font_size);
			// $pdf->MultiCell(180, 4, $carac_client_name, 0, 'L');

			// // Show recipient information
			// $pdf->SetFont('','', $default_font_size - 1);
			// $pdf->SetXY($posx+2,$posy+6);
			// $pdf->MultiCell(180, 4, $carac_client, 0, 'L');




			///--- begin CONVIENNENT DE CE QUI SUIT:  + 1. .. -- //
			$posy += 8;

			$pdf->SetTextColor(0,0,0);
			$pdf->SetFont('','B', $default_font_size);
			$pdf->SetXY($posx,$posy);
			$text_conv="CONVIENNENT DE CE QUI SUIT:";
			$pdf->MultiCell(200,5, $text_conv, 0, 'L');

			$pdf->SetTextColor(0,0,0);
			$pdf->SetFont('','B', $default_font_size - 1);
			$pdf->SetXY($posx,$posy+5);
			$text_1="1. Ouvrage à réaliser";
			$pdf->MultiCell(200,3, $text_1, 0, 'L');

			$pdf->SetTextColor(0,0,0);
			$pdf->SetFont('','', $default_font_size - 1);
			$pdf->SetXY($posx,$posy+10);
			$under_text_1="Le client retient, en date de ce jour, les services de l'Entrepreneur pour exécuter l'ouvrage ci-après décrit :";
			$pdf->MultiCell(200,5, $under_text_1, 0, 'L');


			/// -- end CONVIENNENT DE CE QUI SUIT:  + 1. .. -- //
		}


		$pdf->SetTextColor(0,0,0);
	}

	/**
	 *   	Show footer of page. Need this->emetteur object
     *
	 *   	@param	PDF			$pdf     			PDF
	 * 		@param	Object		$object				Object to show
	 *      @param	Translate	$outputlangs		Object lang for output
	 *      @param	int			$hidefreetext		1=Hide free text
	 *      @return	int								Return height of bottom margin including footer text
	 */
	function _pagefoot(&$pdf,$object,$outputlangs,$hidefreetext=0)
	{
		$_text_ ="";//'PROPALE_FREE_TEXT'; //is a CONST added in Data Base
		return pdf_cesgm_pagefoot($pdf,$outputlangs,$_text_,$this->emetteur,$this->marge_basse,$this->marge_gauche,$this->page_hauteur,$object,0,$hidefreetext);
	}

}

