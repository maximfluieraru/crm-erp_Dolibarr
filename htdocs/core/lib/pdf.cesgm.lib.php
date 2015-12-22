<?php
/* Copyright (C) 2015		Maxim FLUIERARU		<maxim@prunus.ca>
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
 *	\file       htdocs/core/lib/cesgm.pdf.lib.php
 *	\brief      Set of functions used for PDF generation
 *	\ingroup    core
 */



/**
 *   	Return a string with full address formated
 *
 * 		@param	Translate	$outputlangs		Output langs object
 *   	@param  Societe		$sourcecompany		Source company object
 *   	@param  Societe		$targetcompany		Target company object
 *      @param  Contact		$targetcontact		Target contact object
 * 		@param	int			$usecontact			Use contact instead of company
 * 		@param	int			$mode				Address type ('source', 'target', 'targetwithdetails')
 * 		@return	string							String with full address
 */
function pdf_build_address($outputlangs,$sourcecompany,$targetcompany='',$targetcontact='',$usecontact=0,$mode='source')
{
	global $conf;

	$stringaddress = '';

	if ($mode == 'source' && ! is_object($sourcecompany)) return -1;
	if ($mode == 'target' && ! is_object($targetcompany)) return -1;

	if (! empty($sourcecompany->state_id) && empty($sourcecompany->departement)) $sourcecompany->departement=getState($sourcecompany->state_id); //TODO: Deprecated
	if (! empty($sourcecompany->state_id) && empty($sourcecompany->state)) $sourcecompany->state=getState($sourcecompany->state_id);
	if (! empty($targetcompany->state_id) && empty($targetcompany->departement)) $targetcompany->departement=getState($targetcompany->state_id);

	if ($mode == 'source')
	{
		$withCountry = 0;
		if (!empty($sourcecompany->country_code) && ($targetcompany->country_code != $sourcecompany->country_code)) $withCountry = 1;

		$stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->convToOutputCharset(dol_format_address($sourcecompany, $withCountry, "\n", $outputlangs))."\n";

		if (empty($conf->global->MAIN_PDF_DISABLESOURCEDETAILS))
		{
			// Phone
			if ($sourcecompany->phone) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Phone").": ".$outputlangs->convToOutputCharset($sourcecompany->phone);
			// Fax
			if ($sourcecompany->fax) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Fax").": ".$outputlangs->convToOutputCharset($sourcecompany->fax);
			// EMail
			if ($sourcecompany->email) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Email").": ".$outputlangs->convToOutputCharset($sourcecompany->email);
			// Web
			if ($sourcecompany->url) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Web").": ".$outputlangs->convToOutputCharset($sourcecompany->url);
		}
	}

	if ($mode == 'target' || $mode == 'targetwithdetails')
	{
		if ($usecontact)
		{
			$stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->convToOutputCharset($targetcontact->getFullName($outputlangs,1));

			if (!empty($targetcontact->address)) {
				$stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->convToOutputCharset(dol_format_address($targetcontact))."\n";
			}else {
				$stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->convToOutputCharset(dol_format_address($targetcompany))."\n";
			}
			// Country
			if (!empty($targetcontact->country_code) && $targetcontact->country_code != $sourcecompany->country_code) {
				$stringaddress.=$outputlangs->convToOutputCharset($outputlangs->transnoentitiesnoconv("Country".$targetcontact->country_code))."\n";
			}
			else if (empty($targetcontact->country_code) && !empty($targetcompany->country_code) && ($targetcompany->country_code != $sourcecompany->country_code)) {
				$stringaddress.=$outputlangs->convToOutputCharset($outputlangs->transnoentitiesnoconv("Country".$targetcompany->country_code))."\n";
			}

			if (! empty($conf->global->MAIN_PDF_ADDALSOTARGETDETAILS) || $mode == 'targetwithdetails')
			{
				// Phone
				if (! empty($targetcontact->phone_pro) || ! empty($targetcontact->phone_mobile)) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Phone").": ";
				if (! empty($targetcontact->phone_pro)) $stringaddress .= $outputlangs->convToOutputCharset($targetcontact->phone_pro);
				if (! empty($targetcontact->phone_pro) && ! empty($targetcontact->phone_mobile)) $stringaddress .= " / ";
				if (! empty($targetcontact->phone_mobile)) $stringaddress .= $outputlangs->convToOutputCharset($targetcontact->phone_mobile);
				// Fax
				if ($targetcontact->fax) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Fax").": ".$outputlangs->convToOutputCharset($targetcontact->fax);
				// EMail
				if ($targetcontact->email) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Email").": ".$outputlangs->convToOutputCharset($targetcontact->email);
				// Web
				if ($targetcontact->url) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Web").": ".$outputlangs->convToOutputCharset($targetcontact->url);
			}
		}
		else
		{
			$stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->convToOutputCharset(dol_format_address($targetcompany))."\n";
			// Country
			if (!empty($targetcompany->country_code) && $targetcompany->country_code != $sourcecompany->country_code) $stringaddress.=$outputlangs->convToOutputCharset($outputlangs->transnoentitiesnoconv("Country".$targetcompany->country_code))."\n";

			if (! empty($conf->global->MAIN_PDF_ADDALSOTARGETDETAILS) || $mode == 'targetwithdetails')
			{
				// Phone
				if (! empty($targetcompany->phone) || ! empty($targetcompany->phone_mobile)) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Phone").": ";
				if (! empty($targetcompany->phone)) $stringaddress .= $outputlangs->convToOutputCharset($targetcompany->phone);
				if (! empty($targetcompany->phone) && ! empty($targetcompany->phone_mobile)) $stringaddress .= " / ";
				if (! empty($targetcompany->phone_mobile)) $stringaddress .= $outputlangs->convToOutputCharset($targetcompany->phone_mobile);
				// Fax
				if ($targetcompany->fax) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Fax").": ".$outputlangs->convToOutputCharset($targetcompany->fax);
				// EMail
				if ($targetcompany->email) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Email").": ".$outputlangs->convToOutputCharset($targetcompany->email);
				// Web
				if ($targetcompany->url) $stringaddress .= ($stringaddress ? "\n" : '' ).$outputlangs->transnoentities("Web").": ".$outputlangs->convToOutputCharset($targetcompany->url);
			}
		}

		// Intra VAT
		if (empty($conf->global->MAIN_TVAINTRA_NOT_IN_ADDRESS))
		{
			if ($targetcompany->tva_intra) $stringaddress.="\n".$outputlangs->transnoentities("VATIntraShort").': '.$outputlangs->convToOutputCharset($targetcompany->tva_intra);
		}

		// Professionnal Ids
		if (! empty($conf->global->MAIN_PROFID1_IN_ADDRESS) && ! empty($targetcompany->idprof1))
		{
			$tmp=$outputlangs->transcountrynoentities("ProfId1",$targetcompany->country_code);
			if (preg_match('/\((.+)\)/',$tmp,$reg)) $tmp=$reg[1];
			$stringaddress.="\n".$tmp.': '.$outputlangs->convToOutputCharset($targetcompany->idprof1);
		}
		if (! empty($conf->global->MAIN_PROFID2_IN_ADDRESS) && ! empty($targetcompany->idprof2))
		{
			$tmp=$outputlangs->transcountrynoentities("ProfId2",$targetcompany->country_code);
			if (preg_match('/\((.+)\)/',$tmp,$reg)) $tmp=$reg[1];
			$stringaddress.="\n".$tmp.': '.$outputlangs->convToOutputCharset($targetcompany->idprof2);
		}
		if (! empty($conf->global->MAIN_PROFID3_IN_ADDRESS) && ! empty($targetcompany->idprof3))
		{
			$tmp=$outputlangs->transcountrynoentities("ProfId3",$targetcompany->country_code);
			if (preg_match('/\((.+)\)/',$tmp,$reg)) $tmp=$reg[1];
			$stringaddress.="\n".$tmp.': '.$outputlangs->convToOutputCharset($targetcompany->idprof3);
		}
		if (! empty($conf->global->MAIN_PROFID4_IN_ADDRESS) && ! empty($targetcompany->idprof4))
		{
			$tmp=$outputlangs->transcountrynoentities("ProfId4",$targetcompany->country_code);
			if (preg_match('/\((.+)\)/',$tmp,$reg)) $tmp=$reg[1];
			$stringaddress.="\n".$tmp.': '.$outputlangs->convToOutputCharset($targetcompany->idprof4);
		}
	}

	return $stringaddress;
}

 


























 
/**
 *   	Show header of page for PDF generation
 *
 *   	@param      PDF			$pdf     		Object PDF
 *      @param      Translate	$outputlangs	Object lang for output
 * 		@param		int			$page_height	Height of page
 *      @return	void
 */
function pdf_pagehead(&$pdf,$outputlangs,$page_height)
{
	global $conf;

	// Add a background image on document
	if (! empty($conf->global->MAIN_USE_BACKGROUND_ON_PDF))		// Warning, this option make TCPDF generation beeing crazy and some content disappeared behin the image
	{
        $pdf->SetAutoPageBreak(0,0);	// Disable auto pagebreak before adding image
		$pdf->Image($conf->mycompany->dir_output.'/logos/'.$conf->global->MAIN_USE_BACKGROUND_ON_PDF, (isset($conf->global->MAIN_USE_BACKGROUND_ON_PDF_X)?$conf->global->MAIN_USE_BACKGROUND_ON_PDF_X:0), (isset($conf->global->MAIN_USE_BACKGROUND_ON_PDF_Y)?$conf->global->MAIN_USE_BACKGROUND_ON_PDF_Y:0), 0, $page_height);
        $pdf->SetAutoPageBreak(1,0);	// Restore pagebreak
	}
}



/**
 *  Show footer of page for PDF generation
 *
 *	@param	PDF			$pdf     		The PDF factory
 *  @param  Translate	$outputlangs	Object lang for output
 * 	@param	string		$paramfreetext	Constant name of free text
 * 	@param	Societe		$fromcompany	Object company
 * 	@param	int			$marge_basse	Margin bottom we use for the autobreak
 * 	@param	int			$marge_gauche	Margin left (no more used)
 * 	@param	int			$page_hauteur	Page height (no more used)
 * 	@param	Object		$object			Object shown in PDF
 * 	@param	int			$showdetails	Show company details into footer. This param seems to not be used by standard version.
 *  @param	int			$hidefreetext	1=Hide free text, 0=Show free text
 * 	@return	int							Return height of bottom margin including footer text
 */
function pdf_pagefoot(&$pdf,$outputlangs,$paramfreetext,$fromcompany,$marge_basse,$marge_gauche,$page_hauteur,$object,$showdetails=0,$hidefreetext=0)
{
	global $conf,$user;

	$outputlangs->load("dict");
	$line='';

	$dims=$pdf->getPageDimensions();

	// Line of free text
	if (empty($hidefreetext) && ! empty($conf->global->$paramfreetext))
	{
		// Make substitution
		$substitutionarray=array(
		'__FROM_NAME__' => $fromcompany->nom,
		'__FROM_EMAIL__' => $fromcompany->email,
		'__TOTAL_TTC__' => $object->total_ttc,
		'__TOTAL_HT__' => $object->total_ht,
		'__TOTAL_VAT__' => $object->total_vat
		);
		complete_substitutions_array($substitutionarray,$outputlangs,$object);
		$newfreetext=make_substitutions($conf->global->$paramfreetext,$substitutionarray);
		$line.=$outputlangs->convToOutputCharset($newfreetext);
	}

	// First line of company infos

	if ($showdetails)
	{
		$line1="";
		// Company name
		if ($fromcompany->name)
		{
			$line1.=($line1?" - ":"").$outputlangs->transnoentities("RegisteredOffice").": ".$fromcompany->name;
		}
		// Address
		if ($fromcompany->address)
		{
			$line1.=($line1?" - ":"").$fromcompany->address;
		}
		// Zip code
		if ($fromcompany->zip)
		{
			$line1.=($line1?" - ":"").$fromcompany->zip;
		}
		// Town
		if ($fromcompany->town)
		{
			$line1.=($line1?" ":"").$fromcompany->town;
		}
		// Phone
		if ($fromcompany->phone)
		{
			$line1.=($line1?" - ":"").$outputlangs->transnoentities("Phone").": ".$fromcompany->phone;
		}
		// Fax
		if ($fromcompany->fax)
		{
			$line1.=($line1?" - ":"").$outputlangs->transnoentities("Fax").": ".$fromcompany->fax;
		}

		$line2="";
		// URL
		if ($fromcompany->url)
		{
			$line2.=($line2?" - ":"").$fromcompany->url;
		}
		// Email
		if ($fromcompany->email)
		{
			$line2.=($line2?" - ":"").$fromcompany->email;
		}
	}

	// Line 3 of company infos
	$line3="";
	// Juridical status
	if ($fromcompany->forme_juridique_code)
	{
		$line3.=($line3?" - ":"").$outputlangs->convToOutputCharset(getFormeJuridiqueLabel($fromcompany->forme_juridique_code));
	}
	// Capital
	if ($fromcompany->capital)
	{
		$line3.=($line3?" - ":"").$outputlangs->transnoentities("CapitalOf",$fromcompany->capital)." ".$outputlangs->transnoentities("Currency".$conf->currency);
	}
	// Prof Id 1
	if ($fromcompany->idprof1 && ($fromcompany->country_code != 'FR' || ! $fromcompany->idprof2))
	{
		$field=$outputlangs->transcountrynoentities("ProfId1",$fromcompany->country_code);
		if (preg_match('/\((.*)\)/i',$field,$reg)) $field=$reg[1];
		$line3.=($line3?" - ":"").$field.": ".$outputlangs->convToOutputCharset($fromcompany->idprof1);
	}
	// Prof Id 2
	if ($fromcompany->idprof2)
	{
		$field=$outputlangs->transcountrynoentities("ProfId2",$fromcompany->country_code);
		if (preg_match('/\((.*)\)/i',$field,$reg)) $field=$reg[1];
		$line3.=($line3?" - ":"").$field.": ".$outputlangs->convToOutputCharset($fromcompany->idprof2);
	}

	// Line 4 of company infos
	$line4="";
	// Prof Id 3
	if ($fromcompany->idprof3)
	{
		$field=$outputlangs->transcountrynoentities("ProfId3",$fromcompany->country_code);
		if (preg_match('/\((.*)\)/i',$field,$reg)) $field=$reg[1];
		$line4.=($line4?" - ":"").$field.": ".$outputlangs->convToOutputCharset($fromcompany->idprof3);
	}
	// Prof Id 4
	if ($fromcompany->idprof4)
	{
		$field=$outputlangs->transcountrynoentities("ProfId4",$fromcompany->country_code);
		if (preg_match('/\((.*)\)/i',$field,$reg)) $field=$reg[1];
		$line4.=($line4?" - ":"").$field.": ".$outputlangs->convToOutputCharset($fromcompany->idprof4);
	}
	// IntraCommunautary VAT
	if ($fromcompany->tva_intra != '')
	{
		$line4.=($line4?" - ":"").$outputlangs->transnoentities("VATIntraShort").": ".$outputlangs->convToOutputCharset($fromcompany->tva_intra);
	}

	$pdf->SetFont('','',7);
	$pdf->SetDrawColor(224,224,224);

	// The start of the bottom of this page footer is positioned according to # of lines
	$freetextheight=0;
	if ($line)	// Free text
	{
		$width=20000; $align='L';	// By default, ask a manual break: We use a large value 20000, to not have automatic wrap. This make user understand, he need to add CR on its text.
		if (! empty($conf->global->MAIN_USE_AUTOWRAP_ON_FREETEXT)) {
			$width=200; $align='C';
		}
		$freetextheight=$pdf->getStringHeight($width,$line);
	}

	$marginwithfooter=$marge_basse + $freetextheight + (! empty($line1)?3:0) + (! empty($line2)?3:0) + (! empty($line3)?3:0) + (! empty($line4)?3:0);
	$posy=$marginwithfooter+0;

	if ($line)	// Free text
	{
		$pdf->SetXY($dims['lm'],-$posy);
		$pdf->MultiCell(0, 3, $line, 0, $align, 0);
		$posy-=$freetextheight;
	}

	$pdf->SetY(-$posy);
	$pdf->line($dims['lm'], $dims['hk']-$posy, $dims['wk']-$dims['rm'], $dims['hk']-$posy);
	$posy--;

	if (! empty($line1))
	{
		$pdf->SetFont('','B',7);
		$pdf->SetXY($dims['lm'],-$posy);
		$pdf->MultiCell($dims['wk']-$dims['rm'], 2, $line1, 0, 'C', 0);
		$posy-=3;
		$pdf->SetFont('','',7);
	}

	if (! empty($line2))
	{
		$pdf->SetFont('','B',7);
		$pdf->SetXY($dims['lm'],-$posy);
		$pdf->MultiCell($dims['wk']-$dims['rm'], 2, $line2, 0, 'C', 0);
		$posy-=3;
		$pdf->SetFont('','',7);
	}

	if (! empty($line3))
	{
		$pdf->SetXY($dims['lm'],-$posy);
		$pdf->MultiCell($dims['wk']-$dims['rm'], 2, $line3, 0, 'C', 0);
	}

	if (! empty($line4))
	{
		$posy-=3;
		$pdf->SetXY($dims['lm'],-$posy);
		$pdf->MultiCell($dims['wk']-$dims['rm'], 2, $line4, 0, 'C', 0);
	}

	// Show page nb only on iso languages (so default Helvetica font)
	if (strtolower(pdf_getPDFFont($outputlangs)) == 'helvetica')
	{
		$pdf->SetXY(-20,-$posy);
		//print 'xxx'.$pdf->PageNo().'-'.$pdf->getAliasNbPages().'-'.$pdf->getAliasNumPage();exit;
		if (empty($conf->global->MAIN_USE_FPDF)) $pdf->MultiCell(13, 2, $pdf->PageNo().'/'.$pdf->getAliasNbPages(), 0, 'R', 0);
		else $pdf->MultiCell(13, 2, $pdf->PageNo().'/{nb}', 0, 'R', 0);
	}

	return $marginwithfooter;
}

/**
 *	Show linked objects for PDF generation
 *
 *	@param	PDF			$pdf				Object PDF
 *	@param	object		$object				Object
 *	@param  Translate	$outputlangs		Object lang
 *	@param  int			$posx				X
 *	@param  int			$posy				Y
 *	@param	float		$w					Width of cells. If 0, they extend up to the right margin of the page.
 *	@param	float		$h					Cell minimum height. The cell extends automatically if needed.
 *	@param	int			$align				Align
 *	@param	string		$default_font_size	Font size
 *	@return	float                           The Y PDF position
 */
function pdf_writeLinkedObjects(&$pdf,$object,$outputlangs,$posx,$posy,$w,$h,$align,$default_font_size)
{
	$linkedobjects = pdf_getLinkedObjects($object,$outputlangs);
	if (! empty($linkedobjects))
	{
		foreach($linkedobjects as $linkedobject)
		{
			$posy+=3;
			$pdf->SetXY($posx,$posy);
			$pdf->SetFont('','', $default_font_size - 2);
			$pdf->MultiCell($w, $h, $linkedobject["ref_title"].' : '.$linkedobject["ref_value"], '', $align);

			if (! empty($linkedobject["date_title"]) && ! empty($linkedobject["date_value"]))
			{
				$posy+=3;
				$pdf->SetXY($posx,$posy);
				$pdf->MultiCell($w, $h, $linkedobject["date_title"].' : '.$linkedobject["date_value"], '', $align);
			}
		}
	}

	return $pdf->getY();
}

/**
 *	Output line description into PDF
 *
 *  @param  PDF				$pdf               PDF object
 *	@param	Object			$object				Object
 *	@param	int				$i					Current line number
 *  @param  Translate		$outputlangs		Object lang for output
 *  @param  int				$w					Width
 *  @param  int				$h					Height
 *  @param  int				$posx				Pos x
 *  @param  int				$posy				Pos y
 *  @param  int				$hideref       		Hide reference
 *  @param  int				$hidedesc           Hide description
 * 	@param	int				$issupplierline		Is it a line for a supplier object ?
 * 	@return	void
 */
function pdf_writelinedesc(&$pdf,$object,$i,$outputlangs,$w,$h,$posx,$posy,$hideref=0,$hidedesc=0,$issupplierline=0)
{
	global $db, $conf, $langs, $hookmanager;

	$reshook=0;
	if (is_object($hookmanager) && ( (isset($object->lines[$i]->product_type) && $object->lines[$i]->product_type == 9 && ! empty($object->lines[$i]->special_code)) || ! empty($object->lines[$i]->fk_parent_line) ) )
	{
		$special_code = $object->lines[$i]->special_code;
		if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
		$parameters = array('pdf'=>$pdf,'i'=>$i,'outputlangs'=>$outputlangs,'w'=>$w,'h'=>$h,'posx'=>$posx,'posy'=>$posy,'hideref'=>$hideref,'hidedesc'=>$hidedesc,'issupplierline'=>$issupplierline,'special_code'=>$special_code);
		$action='';
		$reshook=$hookmanager->executeHooks('pdf_writelinedesc',$parameters,$object,$action);    // Note that $action and $object may have been modified by some hooks
	}
	if (empty($reshook))
	{
		$labelproductservice=pdf_getlinedesc($object,$i,$outputlangs,$hideref,$hidedesc,$issupplierline);
		// Description
		$pdf->writeHTMLCell($w, $h, $posx, $posy, $outputlangs->convToOutputCharset($labelproductservice), 0, 1, false, true, 'J',true);
		return $labelproductservice;
	}
}

/**
 *  Return line description translated in outputlangs and encoded into htmlentities and with <br>
 *
 *  @param  Object		$object              Object
 *  @param  int			$i                   Current line number (0 = first line, 1 = second line, ...)
 *  @param  Translate	$outputlangs         Object langs for output
 *  @param  int			$hideref             Hide reference
 *  @param  int			$hidedesc            Hide description
 *  @param  int			$issupplierline      Is it a line for a supplier object ?
 *  @return string       				     String with line
 */
function pdf_getlinedesc($object,$i,$outputlangs,$hideref=0,$hidedesc=0,$issupplierline=0)
{
	global $db, $conf, $langs;

	$idprod=(! empty($object->lines[$i]->fk_product)?$object->lines[$i]->fk_product:false);
	$label=(! empty($object->lines[$i]->label)?$object->lines[$i]->label:(! empty($object->lines[$i]->product_label)?$object->lines[$i]->product_label:''));
	$desc=(! empty($object->lines[$i]->desc)?$object->lines[$i]->desc:(! empty($object->lines[$i]->description)?$object->lines[$i]->description:''));
	$ref_supplier=(! empty($object->lines[$i]->ref_supplier)?$object->lines[$i]->ref_supplier:(! empty($object->lines[$i]->ref_fourn)?$object->lines[$i]->ref_fourn:''));    // TODO Not yet saved for supplier invoices, only supplier orders
	$note=(! empty($object->lines[$i]->note)?$object->lines[$i]->note:'');
	$dbatch=(! empty($object->lines[$i]->detail_batch)?$object->lines[$i]->detail_batch:false);

	if ($issupplierline) $prodser = new ProductFournisseur($db);
	else $prodser = new Product($db);

	if ($idprod)
	{
		$prodser->fetch($idprod);
		// If a predefined product and multilang and on other lang, we renamed label with label translated
		if (! empty($conf->global->MAIN_MULTILANGS) && ($outputlangs->defaultlang != $langs->defaultlang))
		{
			$translatealsoifmodified=(! empty($conf->global->MAIN_MULTILANG_TRANSLATE_EVEN_IF_MODIFIED));	// By default if value was modified manually, we keep it (no translation because we don't have it)

			// TODO Instead of making a compare to see if param was modified, check that content contains reference translation. If yes, add the added part to the new translation
			// ($textwasmodified is replaced with $textwasmodifiedorcompleted and we add completion).

			// Set label
			// If we want another language, and if label is same than default language (we did force it to a specific value), we can use translation.
			//var_dump($outputlangs->defaultlang.' - '.$langs->defaultlang.' - '.$label.' - '.$prodser->label);exit;
			$textwasmodified=($label == $prodser->label);
			if (! empty($prodser->multilangs[$outputlangs->defaultlang]["label"]) && ($textwasmodified || $translatealsoifmodified))     $label=$prodser->multilangs[$outputlangs->defaultlang]["label"];

			// Set desc
			// Manage HTML entities description test because $prodser->description is store with htmlentities but $desc no
			$textwasmodified=false;
			if (!empty($desc) && dol_textishtml($desc) && !empty($prodser->description) && dol_textishtml($prodser->description)) {
				$textwasmodified=(strpos(dol_html_entity_decode($desc,ENT_QUOTES | ENT_HTML401),dol_html_entity_decode($prodser->description,ENT_QUOTES | ENT_HTML401))!==false);
			} else {
				$textwasmodified=($desc == $prodser->description);
			}
			if (! empty($prodser->multilangs[$outputlangs->defaultlang]["description"]) && ($textwasmodified || $translatealsoifmodified))  $desc=$prodser->multilangs[$outputlangs->defaultlang]["description"];

			// Set note
			$textwasmodified=($note == $prodser->note);
			if (! empty($prodser->multilangs[$outputlangs->defaultlang]["note"]) && ($textwasmodified || $translatealsoifmodified))  $note=$prodser->multilangs[$outputlangs->defaultlang]["note"];
		}
	}

	// Description short of product line
	$libelleproduitservice=$label;

	// Description long of product line
	if (! empty($desc) && ($desc != $label))
	{
		if ($libelleproduitservice && empty($hidedesc))
		{
			$libelleproduitservice.='__N__';
		}

		if ($desc == '(CREDIT_NOTE)' && $object->lines[$i]->fk_remise_except)
		{
			$discount=new DiscountAbsolute($db);
			$discount->fetch($object->lines[$i]->fk_remise_except);
			$libelleproduitservice=$outputlangs->transnoentitiesnoconv("DiscountFromCreditNote",$discount->ref_facture_source);
		}
		elseif ($desc == '(DEPOSIT)' && $object->lines[$i]->fk_remise_except)
		{
			$discount=new DiscountAbsolute($db);
			$discount->fetch($object->lines[$i]->fk_remise_except);
			$libelleproduitservice=$outputlangs->transnoentitiesnoconv("DiscountFromDeposit",$discount->ref_facture_source);
			// Add date of deposit
			if (! empty($conf->global->INVOICE_ADD_DEPOSIT_DATE)) echo ' ('.dol_print_date($discount->datec,'day','',$outputlangs).')';
		}
		else
		{
			if ($idprod)
			{
				if (empty($hidedesc)) $libelleproduitservice.=$desc;
			}
			else
			{
				$libelleproduitservice.=$desc;
			}
		}
	}

	// If line linked to a product
	if ($idprod)
	{
		// We add ref
		if ($prodser->ref)
		{
			$prefix_prodserv = "";
			$ref_prodserv = "";
			if (! empty($conf->global->PRODUCT_ADD_TYPE_IN_DOCUMENTS))   // In standard mode, we do not show this
			{
				if ($prodser->isservice())
				{
					$prefix_prodserv = $outputlangs->transnoentitiesnoconv("Service")." ";
				}
				else
				{
					$prefix_prodserv = $outputlangs->transnoentitiesnoconv("Product")." ";
				}
			}

			if (empty($hideref))
			{
				if ($issupplierline) $ref_prodserv = $prodser->ref.($ref_supplier ? ' ('.$outputlangs->transnoentitiesnoconv("SupplierRef").' '.$ref_supplier.')' : '');   // Show local ref and supplier ref
				else $ref_prodserv = $prodser->ref; // Show local ref only

				if (! empty($libelleproduitservice)) $ref_prodserv .= " - ";
			}

			$libelleproduitservice=$prefix_prodserv.$ref_prodserv.$libelleproduitservice;
		}
	}

	// Add an additional description for the category products
	if (! empty($conf->global->CATEGORY_ADD_DESC_INTO_DOC) && $idprod && ! empty($conf->categorie->enabled))
	{
		include_once DOL_DOCUMENT_ROOT.'/categories/class/categorie.class.php';
		$categstatic=new Categorie($db);
		// recovering the list of all the categories linked to product
		$tblcateg=$categstatic->containing($idprod,0);
		foreach ($tblcateg as $cate)
		{
			// Adding the descriptions if they are filled
			$desccateg=$cate->add_description;
			if ($desccateg)
				$libelleproduitservice.='__N__'.$desccateg;
		}
	}

	if (! empty($object->lines[$i]->date_start) || ! empty($object->lines[$i]->date_end))
	{
		$format='day';
		// Show duration if exists
		if ($object->lines[$i]->date_start && $object->lines[$i]->date_end)
		{
			$period='('.$outputlangs->transnoentitiesnoconv('DateFromTo',dol_print_date($object->lines[$i]->date_start, $format, false, $outputlangs),dol_print_date($object->lines[$i]->date_end, $format, false, $outputlangs)).')';
		}
		if ($object->lines[$i]->date_start && ! $object->lines[$i]->date_end)
		{
			$period='('.$outputlangs->transnoentitiesnoconv('DateFrom',dol_print_date($object->lines[$i]->date_start, $format, false, $outputlangs)).')';
		}
		if (! $object->lines[$i]->date_start && $object->lines[$i]->date_end)
		{
			$period='('.$outputlangs->transnoentitiesnoconv('DateUntil',dol_print_date($object->lines[$i]->date_end, $format, false, $outputlangs)).')';
		}
		//print '>'.$outputlangs->charset_output.','.$period;
		$libelleproduitservice.="__N__".$period;
		//print $libelleproduitservice;
	}

	if ($dbatch)
	{
		$format='day';
		foreach ($dbatch as $detail)
		{
			$dte=array();
			if ($detail->eatby) $dte[]=$outputlangs->transnoentitiesnoconv('printEatby',dol_print_date($detail->eatby, $format, false, $outputlangs));
			if ($detail->sellby) $dte[]=$outputlangs->transnoentitiesnoconv('printSellby',dol_print_date($detail->sellby, $format, false, $outputlangs));
			if ($detail->batch) $dte[]=$outputlangs->transnoentitiesnoconv('printBatch',$detail->batch);
			$dte[]=$outputlangs->transnoentitiesnoconv('printQty',$detail->dluo_qty);
			$libelleproduitservice.= "__N__  ".implode($dte,"-");
		}
	}

	// Now we convert \n into br
	if (dol_textishtml($libelleproduitservice)) $libelleproduitservice=preg_replace('/__N__/','<br>',$libelleproduitservice);
	else $libelleproduitservice=preg_replace('/__N__/',"\n",$libelleproduitservice);
	$libelleproduitservice=dol_htmlentitiesbr($libelleproduitservice,1);

	return $libelleproduitservice;
}

/**
 *	Return line num
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide details (0=no, 1=yes, 2=just special lines)
 * 	@return	void
 */
function pdf_getlinenum($object,$i,$outputlangs,$hidedetails=0)
{
	global $hookmanager;

	if (is_object($hookmanager) && (($object->lines[$i]->product_type == 9 && !empty($object->lines[$i]->special_code)) || ! empty($object->lines[$i]->fk_parent_line)))
	{
		$special_code = $object->lines[$i]->special_code;
		if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
		// TODO add hook function
	}
	else
	{
		return dol_htmlentitiesbr($object->lines[$i]->num);
	}
}


/**
 *	Return line product ref
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide details (0=no, 1=yes, 2=just special lines)
 * 	@return	void
 */
function pdf_getlineref($object,$i,$outputlangs,$hidedetails=0)
{
	global $hookmanager;

	if (is_object($hookmanager) && (($object->lines[$i]->product_type == 9 && !empty($object->lines[$i]->special_code)) || ! empty($object->lines[$i]->fk_parent_line)))
	{
		$special_code = $object->lines[$i]->special_code;
		if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
		// TODO add hook function
	}
	else
	{
		return dol_htmlentitiesbr($object->lines[$i]->product_ref);
	}
}

/**
 *	Return line ref_supplier
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide details (0=no, 1=yes, 2=just special lines)
 * 	@return	void
 */
function pdf_getlineref_supplier($object,$i,$outputlangs,$hidedetails=0)
{
	global $hookmanager;

	if (is_object($hookmanager) && ( ($object->lines[$i]->product_type == 9 && !empty($object->lines[$i]->special_code) ) || ! empty($object->lines[$i]->fk_parent_line) ) )
	{
		$special_code = $object->lines[$i]->special_code;
		if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
		// TODO add hook function
	}
	else
	{
		return dol_htmlentitiesbr($object->lines[$i]->ref_supplier);
	}
}

/**
 *	Return line vat rate
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide details (0=no, 1=yes, 2=just special lines)
 * 	@return	string
 */
function pdf_getlinevatrate($object,$i,$outputlangs,$hidedetails=0)
{
	global $hookmanager;

	if (is_object($hookmanager) && (($object->lines[$i]->product_type == 9 && !empty($object->lines[$i]->special_code)) || ! empty($object->lines[$i]->fk_parent_line)))
	{
		$special_code = $object->lines[$i]->special_code;
		if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
		$parameters = array('i'=>$i,'outputlangs'=>$outputlangs,'hidedetails'=>$hidedetails,'special_code'=>$special_code);
		$action='';
		return $hookmanager->executeHooks('pdf_getlinevatrate',$parameters,$object,$action);    // Note that $action and $object may have been modified by some hooks
	}
	else
	{
		if (empty($hidedetails) || $hidedetails > 1) return vatrate($object->lines[$i]->tva_tx,1,$object->lines[$i]->info_bits,1);
	}
}

/**
 *	Return line unit price excluding tax
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide details (0=no, 1=yes, 2=just special lines)
 * 	@return	string
 */
function pdf_getlineupexcltax($object,$i,$outputlangs,$hidedetails=0)
{
	global $conf, $hookmanager;

	$sign=1;
	if (isset($object->type) && $object->type == 2 && ! empty($conf->global->INVOICE_POSITIVE_CREDIT_NOTE)) $sign=-1;

	if (is_object($hookmanager) && (($object->lines[$i]->product_type == 9 && !empty($object->lines[$i]->special_code)) || ! empty($object->lines[$i]->fk_parent_line)))
	{
		$special_code = $object->lines[$i]->special_code;
		if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
		$parameters = array('i'=>$i,'outputlangs'=>$outputlangs,'hidedetails'=>$hidedetails,'special_code'=>$special_code);
		$action='';
		return $hookmanager->executeHooks('pdf_getlineupexcltax',$parameters,$object,$action);    // Note that $action and $object may have been modified by some hooks
	}
	else
	{
		if (empty($hidedetails) || $hidedetails > 1) return price($sign * $object->lines[$i]->subprice, 0, $outputlangs);
	}
}

/**
 *	Return line unit price including tax
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Tranlate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide value (0 = no,	1 = yes, 2 = just special lines)
 *  @return	void
 */
function pdf_getlineupwithtax($object,$i,$outputlangs,$hidedetails=0)
{
	global $hookmanager;

	if (is_object($hookmanager) && (($object->lines[$i]->product_type == 9 && !empty($object->lines[$i]->special_code)) || ! empty($object->lines[$i]->fk_parent_line)))
	{
		$special_code = $object->lines[$i]->special_code;
		if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
		foreach($object->hooks as $modules)
		{
			if (method_exists($modules[$special_code],'pdf_getlineupwithtax')) return $modules[$special_code]->pdf_getlineupwithtax($object,$i,$outputlangs,$hidedetails);
		}
	}
	else
	{
		if (empty($hidedetails) || $hidedetails > 1) return price(($object->lines[$i]->subprice) + ($object->lines[$i]->subprice)*($object->lines[$i]->tva_tx)/100, 0, $outputlangs);
	}
}

/**
 *	Return line quantity
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide details (0=no, 1=yes, 2=just special lines)
 *  @return	string
 */
function pdf_getlineqty($object,$i,$outputlangs,$hidedetails=0)
{
	global $hookmanager;

	if ($object->lines[$i]->special_code != 3)
	{
		if (is_object($hookmanager) && (( $object->lines[$i]->product_type == 9 && !empty($object->lines[$i]->special_code) ) || ! empty($object->lines[$i]->fk_parent_line) ) )
		{
			$special_code = $object->lines[$i]->special_code;
			if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
			$parameters = array('i'=>$i,'outputlangs'=>$outputlangs,'hidedetails'=>$hidedetails,'special_code'=>$special_code);
			$action='';
			return $hookmanager->executeHooks('pdf_getlineqty',$parameters,$object,$action);    // Note that $action and $object may have been modified by some hooks
		}
		else
		{
			if (empty($hidedetails) || $hidedetails > 1) return $object->lines[$i]->qty;
		}
	}
}

/**
 *	Return line quantity asked
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide details (0=no, 1=yes, 2=just special lines)
 * 	@return	string
 */
function pdf_getlineqty_asked($object,$i,$outputlangs,$hidedetails=0)
{
	global $hookmanager;

	if ($object->lines[$i]->special_code != 3)
	{
		if (is_object($hookmanager) && (( $object->lines[$i]->product_type == 9 && !empty($object->lines[$i]->special_code) ) || ! empty($object->lines[$i]->fk_parent_line) ) )
		{
			$special_code = $object->lines[$i]->special_code;
			if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
			$parameters = array('i'=>$i,'outputlangs'=>$outputlangs,'hidedetails'=>$hidedetails,'special_code'=>$special_code);
			$action='';
			return $hookmanager->executeHooks('pdf_getlineqty_asked',$parameters,$object,$action);    // Note that $action and $object may have been modified by some hooks
		}
		else
		{
			if (empty($hidedetails) || $hidedetails > 1) return $object->lines[$i]->qty_asked;
		}
	}
}

/**
 *	Return line quantity shipped
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide details (0=no, 1=yes, 2=just special lines)
 * 	@return	string
 */
function pdf_getlineqty_shipped($object,$i,$outputlangs,$hidedetails=0)
{
	global $hookmanager;

	if ($object->lines[$i]->special_code != 3)
	{
		if (is_object($hookmanager) && (( $object->lines[$i]->product_type == 9 && !empty($object->lines[$i]->special_code) ) || ! empty($object->lines[$i]->fk_parent_line) ) )
		{
			$special_code = $object->lines[$i]->special_code;
			if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
			$parameters = array('i'=>$i,'outputlangs'=>$outputlangs,'hidedetails'=>$hidedetails,'special_code'=>$special_code);
			$action='';
			return $hookmanager->executeHooks('pdf_getlineqty_shipped',$parameters,$object,$action);    // Note that $action and $object may have been modified by some hooks
		}
		else
		{
			if (empty($hidedetails) || $hidedetails > 1) return $object->lines[$i]->qty_shipped;
		}
	}
}

/**
 *	Return line keep to ship quantity
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide details (0=no, 1=yes, 2=just special lines)
 * 	@return	void
 */
function pdf_getlineqty_keeptoship($object,$i,$outputlangs,$hidedetails=0)
{
	global $hookmanager;

	if ($object->lines[$i]->special_code != 3)
	{
		if (is_object($hookmanager) && (( $object->lines[$i]->product_type == 9 && !empty($object->lines[$i]->special_code) ) || ! empty($object->lines[$i]->fk_parent_line) ) )
		{
			$special_code = $object->lines[$i]->special_code;
			if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
			$parameters = array('i'=>$i,'outputlangs'=>$outputlangs,'hidedetails'=>$hidedetails,'special_code'=>$special_code);
			$action='';
			return $hookmanager->executeHooks('pdf_getlineqty_keeptoship',$parameters,$object,$action);    // Note that $action and $object may have been modified by some hooks
		}
		else
		{
			if (empty($hidedetails) || $hidedetails > 1) return ($object->lines[$i]->qty_asked - $object->lines[$i]->qty_shipped);
		}
	}
}

/**
 *	Return line remise percent
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide details (0=no, 1=yes, 2=just special lines)
 * 	@return	string
 */
function pdf_getlineremisepercent($object,$i,$outputlangs,$hidedetails=0)
{
	global $hookmanager;

	include_once DOL_DOCUMENT_ROOT.'/core/lib/functions2.lib.php';

	if ($object->lines[$i]->special_code != 3)
	{
		if (is_object($hookmanager) && ( ($object->lines[$i]->product_type == 9 && !empty($object->lines[$i]->special_code) ) || ! empty($object->lines[$i]->fk_parent_line) ) )
		{
			$special_code = $object->lines[$i]->special_code;
			if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
			$parameters = array('i'=>$i,'outputlangs'=>$outputlangs,'hidedetails'=>$hidedetails,'special_code'=>$special_code);
			$action='';
			return $hookmanager->executeHooks('pdf_getlineremisepercent',$parameters,$object,$action);    // Note that $action and $object may have been modified by some hooks
		}
		else
		{
			if (empty($hidedetails) || $hidedetails > 1) return dol_print_reduction($object->lines[$i]->remise_percent,$outputlangs);
		}
	}
}

/**
 *	Return line total excluding tax
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param  Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide details (0=no, 1=yes, 2=just special lines)
 * 	@return	string							Return total of line excl tax
 */
function pdf_getlinetotalexcltax($object,$i,$outputlangs,$hidedetails=0)
{
	global $conf, $hookmanager;

	$sign=1;
	if (isset($object->type) && $object->type == 2 && ! empty($conf->global->INVOICE_POSITIVE_CREDIT_NOTE)) $sign=-1;

	if ($object->lines[$i]->special_code == 3)
	{
		return $outputlangs->transnoentities("Option");
	}
	else
	{
		if (is_object($hookmanager) && (($object->lines[$i]->product_type == 9 && ! empty($object->lines[$i]->special_code)) || ! empty($object->lines[$i]->fk_parent_line)))
		{
			$special_code = $object->lines[$i]->special_code;
			if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
			$parameters = array('i'=>$i,'outputlangs'=>$outputlangs,'hidedetails'=>$hidedetails,'special_code'=>$special_code);
			$action='';
			return $hookmanager->executeHooks('pdf_getlinetotalexcltax',$parameters,$object,$action);    // Note that $action and $object may have been modified by some hooks
		}
		else
		{
			if (empty($hidedetails) || $hidedetails > 1) return price($sign * $object->lines[$i]->total_ht, 0, $outputlangs);
		}
	}
	return '';
}

/**
 *	Return line total including tax
 *
 *	@param	Object		$object				Object
 *	@param	int			$i					Current line number
 *  @param 	Translate	$outputlangs		Object langs for output
 *  @param	int			$hidedetails		Hide value (0 = no, 1 = yes, 2 = just special lines)
 *  @return	string							Return total of line incl tax
 */
function pdf_getlinetotalwithtax($object,$i,$outputlangs,$hidedetails=0)
{
	global $hookmanager;

	if ($object->lines[$i]->special_code == 3)
	{
		return $outputlangs->transnoentities("Option");
	}
	else
	{
		if (is_object($hookmanager) && (($object->lines[$i]->product_type == 9 && ! empty($object->lines[$i]->special_code)) || ! empty($object->lines[$i]->fk_parent_line)))
		{
			$special_code = $object->lines[$i]->special_code;
			if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
			$parameters = array('i'=>$i,'outputlangs'=>$outputlangs,'hidedetails'=>$hidedetails,'special_code'=>$special_code);
			$action='';
			return $hookmanager->executeHooks('pdf_getlinetotalwithtax',$parameters,$object,$action);    // Note that $action and $object may have been modified by some hooks
		}
		else
		{
			if (empty($hidedetails) || $hidedetails > 1) return price(($object->lines[$i]->total_ht) + ($object->lines[$i]->total_ht)*($object->lines[$i]->tva_tx)/100, 0, $outputlangs);
		}
	}
	return '';
}

/**
 *	Return total quantity of products and/or services
 *
 *	@param	Object		$object				Object
 *	@param	string		$type				Type
 *  @param  Translate	$outputlangs		Object langs for output
 * 	@return	void
 */
function pdf_getTotalQty($object,$type,$outputlangs)
{
	global $hookmanager;

	$total=0;
	$nblignes=count($object->lines);

	// Loop on each lines
	for ($i = 0 ; $i < $nblignes ; $i++)
	{
		if ($object->lines[$i]->special_code != 3)
		{
			if ($type=='all')
			{
				$total += $object->lines[$i]->qty;
			}
			else if ($type==9 && is_object($hookmanager) && (($object->lines[$i]->product_type == 9 && ! empty($object->lines[$i]->special_code)) || ! empty($object->lines[$i]->fk_parent_line)))
			{
				$special_code = $object->lines[$i]->special_code;
				if (! empty($object->lines[$i]->fk_parent_line)) $special_code = $object->getSpecialCode($object->lines[$i]->fk_parent_line);
				// TODO add hook function
			}
			else if ($type==0 && $object->lines[$i]->product_type == 0)
			{
				$total += $object->lines[$i]->qty;
			}
			else if ($type==1 && $object->lines[$i]->product_type == 1)
			{
				$total += $object->lines[$i]->qty;
			}
		}
	}

	return $total;
}

/**
 * 	Return linked objects
 *
 * 	@param	object		$object			Object
 * 	@param	Translate	$outputlangs	Object lang for output
 * 	@return	array   Linked objects
 */
function pdf_getLinkedObjects($object,$outputlangs)
{
	global $hookmanager;

	$linkedobjects=array();

	$object->fetchObjectLinked();

	foreach($object->linkedObjects as $objecttype => $objects)
	{
		if ($objecttype == 'propal')
		{
			$outputlangs->load('propal');
			$num=count($objects);
			for ($i=0;$i<$num;$i++)
			{
				$linkedobjects[$objecttype]['ref_title'] = $outputlangs->transnoentities("RefProposal");
				$linkedobjects[$objecttype]['ref_value'] = $outputlangs->transnoentities($objects[$i]->ref);
				$linkedobjects[$objecttype]['date_title'] = $outputlangs->transnoentities("DatePropal");
				$linkedobjects[$objecttype]['date_value'] = dol_print_date($objects[$i]->date,'day','',$outputlangs);
			}
		}
		else if ($objecttype == 'commande')
		{
			$outputlangs->load('orders');
			$num=count($objects);
			for ($i=0;$i<$num;$i++)
			{
				$linkedobjects[$objecttype]['ref_title'] = $outputlangs->transnoentities("RefOrder");
				$linkedobjects[$objecttype]['ref_value'] = $outputlangs->transnoentities($objects[$i]->ref) . ($objects[$i]->ref_client ? ' ('.$objects[$i]->ref_client.')' : '');
				$linkedobjects[$objecttype]['date_title'] = $outputlangs->transnoentities("OrderDate");
				$linkedobjects[$objecttype]['date_value'] = dol_print_date($objects[$i]->date,'day','',$outputlangs);
			}
		}
		else if ($objecttype == 'shipping')
		{
			$outputlangs->load('orders');
			$outputlangs->load('sendings');

			$num=count($objects);
			for ($i=0;$i<$num;$i++)
			{
				$objects[$i]->fetchObjectLinked();
				$order = $objects[$i]->linkedObjects['commande'][0];

				$linkedobjects[$objecttype]['ref_title'] = $outputlangs->transnoentities("RefOrder") . ' / ' . $outputlangs->transnoentities("RefSending");
				$linkedobjects[$objecttype]['ref_value'] = $outputlangs->transnoentities($order->ref) . ($order->ref_client ? ' ('.$order->ref_client.')' : '');
				$linkedobjects[$objecttype]['ref_value'].= ' / ' . $outputlangs->transnoentities($objects[$i]->ref);
				$linkedobjects[$objecttype]['date_title'] = $outputlangs->transnoentities("OrderDate") . ' / ' . $outputlangs->transnoentities("DateSending");
				$linkedobjects[$objecttype]['date_value'] = dol_print_date($order->date,'day','',$outputlangs);
				$linkedobjects[$objecttype]['date_value'].= ' / ' . dol_print_date($objects[$i]->date_delivery,'day','',$outputlangs);
			}
		}
		else if ($objecttype == 'contrat')
		{
			$outputlangs->load('contracts');
			$num=count($objects);
			for ($i=0;$i<$num;$i++)
			{
				$linkedobjects[$objecttype]['ref_title'] = $outputlangs->transnoentities("RefContract");
				$linkedobjects[$objecttype]['ref_value'] = $outputlangs->transnoentities($objects[$i]->ref);
				$linkedobjects[$objecttype]['date_title'] = $outputlangs->transnoentities("DateContract");
				$linkedobjects[$objecttype]['date_value'] = dol_print_date($objects[$i]->date_contrat,'day','',$outputlangs);
			}
		}
	}

	// For add external linked objects
	if (is_object($hookmanager))
	{
		$parameters = array('linkedobjects' => $linkedobjects, 'outputlangs'=>$outputlangs);
		$action='';
		$hookmanager->executeHooks('pdf_getLinkedObjects',$parameters,$object,$action);    // Note that $action and $object may have been modified by some hooks
		if (! empty($hookmanager->resArray)) $linkedobjects = $hookmanager->resArray;
	}

	return $linkedobjects;
}

/**
 * Return dimensions to use for images onto PDF checking that width and height are not higher than
 * maximum (16x32 by default).
 *
 * @param	string		$realpath		Full path to photo file to use
 * @return	array						Height and width to use to output image (in pdf user unit, so mm)
 */
function pdf_getSizeForImage($realpath)
{
	global $conf;

	$maxwidth=(empty($conf->global->MAIN_DOCUMENTS_WITH_PICTURE_WIDTH)?20:$conf->global->MAIN_DOCUMENTS_WITH_PICTURE_WIDTH);
	$maxheight=(empty($conf->global->MAIN_DOCUMENTS_WITH_PICTURE_HEIGHT)?32:$conf->global->MAIN_DOCUMENTS_WITH_PICTURE_HEIGHT);
	include_once DOL_DOCUMENT_ROOT.'/core/lib/images.lib.php';
	$tmp=dol_getImageSize($realpath);
	if ($tmp['height'])
	{
		$width=(int) round($maxheight*$tmp['width']/$tmp['height']);	// I try to use maxheight
		if ($width > $maxwidth)	// Pb with maxheight, so i use maxwidth
		{
			$width=$maxwidth;
			$height=(int) round($maxwidth*$tmp['height']/$tmp['width']);
		}
		else	// No pb with maxheight
		{
			$height=$maxheight;
		}
	}
	return array('width'=>$width,'height'=>$height);
}

