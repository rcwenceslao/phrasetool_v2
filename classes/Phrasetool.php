<?php
/*Add this function to every pages
function __autoload($class)
{
	require_once "classes/$class.php";
}


*/


/**
 * 
 */
class Phrasetool extends Db
{

	//displayListPhraseHead
	public function displayListPhraseHead()
	{
		$sql = "SELECT pkf.phrasenkopf_id, pk.katalog_pin, pg.phrasengruppe, pkf.phrasenid FROM phrase_phrasenkopf AS pkf INNER JOIN phrase_phrasenkatalog AS pk ON pkf.phrasenkatalog_id = pk.phrasenkatalog_id INNER JOIN phrase_phrasengruppe AS pg ON pkf.phrasengruppe_id = pg.phrasengruppe_id 
			ORDER BY phrasenkopf_id ASC LIMIT 10";

		//$this is a reference of this class as well as Db
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			//
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function displayCompanyList($page, $startingLimitNumber)
	{
		$sql = "SELECT *, CONCAT(plz,' ', ort) AS PLZ FROM phrase_firma
		ORDER BY firma_id ASC LIMIT ".$startingLimitNumber.",".$page;

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function returnCountryNotTranslatedCount()
	{
		$sql = "SELECT COUNT(countryCount.land_id) FROM phrase_land AS countryCount";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}

	public function displayCountryNotTranslated($page, $startingLimitNumber)
	{
		$sql = "SELECT * FROM phrase_land WHERE phrase_land.prioritaet<>1 ORDER BY land_id ASC LIMIT ". $startingLimitNumber." ,".$page;

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function displayCountry($row)
	{
		$sql = "SELECT landesname FROM phrase_landtext WHERE landtext_id=". $row ."";

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row2 = $result->fetch())
			{
				$data2[] = $row2;
			}
			return $data2;
		}

	}

	public function displayCreditPoints($page, $startingLimitNumber)
	{
		$sql = "SELECT phrase_kreditpunkt.kreditpunkt_id AS creditID, phrase_phrasentext.phrasentext AS phraseText, phrase_firma.firma AS companyName, phrase_kreditpunkt.wert AS credit, phrase_kreditpunkt.zeitstempel AS dateToday, CONCAT(phrase_benutzer.vorname, ', ', phrase_benutzer.nachname) AS Username FROM phrase_kreditpunkt INNER JOIN phrase_phrasentext ON phrase_kreditpunkt.phrasentext_id = phrase_phrasentext.phrasentext_id INNER JOIN phrase_firma ON phrase_kreditpunkt.firma_id = phrase_firma.firma_id INNER JOIN phrase_benutzer ON phrase_kreditpunkt.benutzer_id = phrase_benutzer.benutzer_id LIMIT ".$startingLimitNumber.",".$page;

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}

	}

	public function displayCreditPointsSelected($page, $startingLimitNumber, $firma_id, $wert)
	{
		/*$concatinateTest = $page . ", " . $startingLimitNumber . ", " . $firma_id . ", " . $wert . ". ";

		return $concatinateTest;*/

		$sql = "SELECT phrase_kreditpunkt.kreditpunkt_id AS creditID, phrase_phrasentext.phrasentext AS phraseText, phrase_firma.firma AS companyName, phrase_kreditpunkt.wert AS credit, phrase_kreditpunkt.zeitstempel AS dateToday, CONCAT(phrase_benutzer.vorname, ', ', phrase_benutzer.nachname) AS Username FROM phrase_kreditpunkt INNER JOIN phrase_phrasentext ON phrase_kreditpunkt.phrasentext_id = phrase_phrasentext.phrasentext_id INNER JOIN phrase_firma ON phrase_kreditpunkt.firma_id = phrase_firma.firma_id INNER JOIN phrase_benutzer ON phrase_kreditpunkt.benutzer_id = phrase_benutzer.benutzer_id WHERE phrase_kreditpunkt.firma_id =".$firma_id."";
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

/*	public function displayCreditPoints($page, $startingLimitNumber, $companyID, $typeofExpense)
	{
		$sql = "SELECT phrase_kreditpunkt.*, phrase_kreditpunkt.kreditpunkt_id AS creditID, phrase_phrasentext.phrasentext AS phraseText, phrase_firma.firma AS companyName, phrase_kreditpunkt.wert AS credit, phrase_kreditpunkt.zeitstempel AS dateToday, CONCAT(phrase_benutzer.vorname, ', ', phrase_benutzer.nachname) AS Username FROM phrase_kreditpunkt INNER JOIN phrase_phrasentext ON phrase_kreditpunkt.phrasentext_id = phrase_phrasentext.phrasentext_id INNER JOIN phrase_firma ON phrase_kreditpunkt.firma_id = phrase_firma.firma_id INNER JOIN phrase_benutzer ON phrase_kreditpunkt.benutzer_id = phrase_benutzer.benutzer_id WHERE phrase_kreditpunkt.firma_id = ". $companyID ." AND phrase_kreditpunkt.wert = ".$typeofExpense." LIMIT ".$startingLimitNumber.",".$page;

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}

	}*/

	public function returnCreditPoint()
	{
		$sql = "SELECT COUNT(creditPoint.kreditpunkt_id) FROM phrase_kreditpunkt AS creditPoint";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}



	public function viewCreditPoints($uid)
	{
		$sql = "SELECT phrase_kreditpunkt.*, phrase_phrasentext.phrasentext AS phraseText, phrase_firma.firma AS companyName, CONCAT(phrase_benutzer.vorname, ' ', phrase_benutzer.nachname) AS userName FROM phrase_kreditpunkt INNER JOIN phrase_phrasentext ON phrase_kreditpunkt.phrasentext_id = phrase_phrasentext.phrasentext_id INNER JOIN phrase_firma ON phrase_kreditpunkt.firma_id = phrase_firma.firma_id INNER JOIN phrase_benutzer ON phrase_kreditpunkt.benutzer_id = phrase_benutzer.benutzer_id WHERE phrase_kreditpunkt.kreditpunkt_id= :id";

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$uid);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	public function displayNotTranslatedLanguages($page, $startingLimitNumber)
	{
		$sql = "SELECT * FROM `phrase_sprache` WHERE phrase_sprache.prioritaet = 0 ORDER BY sprache_id ASC LIMIT ".$startingLimitNumber.",".$page;

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function returnNotTranslated()
	{
		$sql = "SELECT COUNT(languageID.sprache_id) FROM phrase_sprache AS languageID WHERE languageID.prioritaet=0";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}



	public function displayLanguages()
	{
		$sql = "SELECT * FROM `phrase_sprache` ORDER BY sprache_id ASC LIMIT 10";

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function displayLanguageCode($page, $startingLimitNumber)
	{
		$sql = "SELECT CONCAT(phrase_sprachentext.sprachentext, ' - ', phrase_sprache.sprache_iso2) as languageName, phrase_firma.firma as companyName, phrase_sprachenkuerzel.sprache_kurz as languageCode FROM phrase_sprachenkuerzel INNER JOIN phrase_sprachentext ON phrase_sprachenkuerzel.sprache_id = phrase_sprachentext.sprache_id INNER JOIN phrase_sprache ON phrase_sprachenkuerzel.sprache_id = phrase_sprache.sprache_id INNER JOIN phrase_firma ON phrase_sprachenkuerzel.firma_id = phrase_firma.firma_id LIMIT ".$startingLimitNumber.",".$page;

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}

	}

	public function returnLanguageCode()
	{
		$sql = "SELECT COUNT(languageCode.sprachenkuerzel_id) FROM phrase_sprachenkuerzel AS languageCode";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}

	public function displayMissingTranslations($page, $startingLimitNumber)
	{
		$sql = "SELECT phrase_phrasenkopf.phrasenid AS phraseID, CONCAT(phrase_sprachentext.sprachentext, ' - ', phrase_sprache.sprache_iso2) as languageName, phrase_phrasentext.phrasentext AS phraseText, phrase_phrasentext.phrasencode AS phraseCode FROM phrase_phrasentext INNER JOIN phrase_phrasenkopf ON phrase_phrasentext.phrasenkopf_id = phrase_phrasenkopf.phrasenkopf_id INNER JOIN phrase_sprachentext ON phrase_phrasentext.sprache_id = phrase_sprachentext.sprache_id INNER JOIN phrase_sprache ON phrase_phrasentext.sprache_id = phrase_sprache.sprache_id WHERE phrase_phrasentext.uebersetzungen = 0 LIMIT ".$startingLimitNumber.",".$page;

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function returnMissingPhrases()
	{
		$sql = "SELECT COUNT(missingPhrases.phrasentext_id) FROM phrase_phrasentext AS missingPhrases WHERE missingPhrases.uebersetzungen = 0";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}

	public function viewTranslationsPerMonth($page, $startingLimitNumber)
	{
		$sql = "SELECT CONCAT(phrase_benutzer.anrede, ' ', phrase_benutzer.titel, ' ', phrase_benutzer.vorname) AS firstName, phrase_benutzer.nachname AS lastName, COUNT(phrase_phrasentext.benutzer_id) as translationCount, phrase_firma.firma AS companyName FROM phrase_phrasentext INNER JOIN phrase_benutzer ON phrase_phrasentext.benutzer_id = phrase_benutzer.benutzer_id INNER JOIN phrase_firma ON phrase_phrasentext.firma_id = phrase_firma.firma_id GROUP BY phrase_phrasentext.benutzer_id ASC LIMIT ".$startingLimitNumber.",".$page;

		//$date = date('M', strtotime($result['zeitstempel']));
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function viewTranslationsPerMonthDate($page, $startingLimitNumber, $date)//NOT YET FINISHED.
	{
		$sql = "SELECT CONCAT(phrase_benutzer.anrede, ' ', phrase_benutzer.titel, ' ', phrase_benutzer.vorname) AS firstName, phrase_benutzer.nachname AS lastName, COUNT(phrase_phrasentext.benutzer_id) as translationCount, phrase_firma.firma AS companyName FROM phrase_phrasentext INNER JOIN phrase_benutzer ON phrase_phrasentext.benutzer_id = phrase_benutzer.benutzer_id INNER JOIN phrase_firma ON phrase_phrasentext.firma_id = phrase_firma.firma_id GROUP BY phrase_phrasentext.benutzer_id WHERE phrase_phrasentext.zeitstempel =".$date." ASC LIMIT ".$startingLimitNumber.",".$page;

		//$date = date('M', strtotime($result['zeitstempel']));
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function returnTranslationsPerMonth()
	{
		$sql = "SELECT COUNT(translationMonth.phrasentext_id) FROM phrase_phrasentext AS translationMonth";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}

	public function viewPhrasehead($uid)
	{

		

		$sql = "SELECT pkf.phrasenkopf_id, pk.katalog_pin, pg.phrasengruppe, pkf.phrasenid, pkf.kommerziell, pkf.freigegeben, pkf.euphrac_phrase_id, pkf.structure_code, pkf.original_code, pkf.zeitstempel, pkf.phrasengruppe_id  FROM phrase_phrasenkopf AS pkf INNER JOIN phrase_phrasenkatalog AS pk ON pkf.phrasenkatalog_id = pk.phrasenkatalog_id INNER JOIN phrase_phrasengruppe AS pg ON pkf.phrasengruppe_id = pg.phrasengruppe_id WHERE pkf.phrasenkopf_id = :id" ;

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$uid);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	public function viewCompanyInfo($uid)
	{
		$sql = "SELECT * , phrase_landtext.landesname AS countryName FROM phrase_firma INNER JOIN phrase_landtext ON phrase_firma.land_id = phrase_landtext.land_id WHERE phrase_firma.firma_id= :id";

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$uid);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;

	}

	public function selectPhrasegroup()
	{
		$sql = "SELECT phrasengruppe_id, phrasengruppe FROM phrase_phrasengruppe GROUP BY phrasengruppe";
		
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			//
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}
	public function selectPhraseKatalog()
	{
		$sql = "SELECT  phrasenkatalog_id, katalog_pin FROM phrase_phrasenkatalog GROUP BY katalog_pin";
		
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			//
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function selectID($id)
	{
		$sql = "SELECT pk.katalog_pin, pg.phrasengruppe, pkf.phrasenid, pkf.euphrac_phrase_id, pkf.structure_code, pkf.original_code, pkf.zeitstempel FROM phrase_phrasenkopf AS pkf INNER JOIN phrase_phrasenkatalog AS pk ON pkf.phrasenkatalog_id = pk.phrasenkatalog_id INNER JOIN phrase_phrasengruppe AS pg ON pkf.phrasengruppe_id = pg.phrasengruppe_id WHERE pkf.phrasenkopf_id = :id";

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	//jessamineeee
	public function displayListLabel()
	{
		$sql = "SELECT * FROM 
					(SELECT etikett.produktname, etikett.etikett_id AS u1, 
						etikett.sprache_1_id, CONCAT(sprache.sprache_iso2, ' - ', sprachentext.sprachentext) AS sprache1, 
						etikett.inhalt_sprache_1 
					 FROM phrase_etikett AS etikett 
					 INNER JOIN phrase_sprache AS sprache 
					 ON etikett.sprache_1_id = sprache.sprache_id 
					 INNER JOIN phrase_sprachentext AS sprachentext 
					 ON sprache.sprache_id = sprachentext.sprache_id  GROUP BY u1) AS t1
				INNER JOIN
					(SELECT etikett.etikett_id AS u2, etikett.sprache_2_id , 
					 	CONCAT(sprache.sprache_iso2,' - ', sprachentext.sprachentext) sprache2 FROM phrase_etikett AS etikett 
					 INNER JOIN phrase_sprache AS sprache 
					 ON etikett.sprache_2_id = sprache.sprache_id 
					 INNER JOIN phrase_sprachentext AS sprachentext 
					 ON sprache.sprache_id = sprachentext.sprache_id GROUP BY u2 ) AS t2
				ON t1.u1 = t2.u2";

		//$this is a reference of this class as well as Db
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			//
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function displayPhrasecatalogueListandMap()
	{
		$sql = "SELECT katalog_pin, katalog_distributor, katalog_version, katalog_datum FROM `phrase_phrasenkatalog`";

		//$this is a reference of this class as well as Db
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			//
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function displayPhraseGroupList($page, $startingLimitNumber)
	{
		$sql = "SELECT phrasegroup.phrasengruppe_id, phrasegroup.phrasengruppe, phrasegroup.firma_id , firma.firma FROM `phrase_phrasengruppe` AS phrasegroup INNER JOIN `phrase_firma` AS firma ON phrasegroup.firma_id = firma.firma_id LIMIT ".$startingLimitNumber.",".$page;

		//$this is a reference of this class as well as Db
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			//
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	public function returnPhrasegroupRowCount()
	{
		$sql = "SELECT COUNT(phrasegroup.phrasengruppe_id) FROM phrase_phrasengruppe AS phrasegroup";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}

	public function returnPhrasegroupRowCountCompany()
	{
		$sql = "SELECT COUNT(companyCount.firma_id) FROM phrase_firma AS companyCount";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}

	public function viewPhraseGroup($phraseGroupID)
	{
		$sql = "SELECT phrasegroup.phrasengruppe_id, phrasegroup.phrasengruppe, phrasegroup.firma_id , firma.firma FROM `phrase_phrasengruppe` AS phrasegroup INNER JOIN `phrase_firma` AS firma ON phrasegroup.firma_id = firma.firma_id WHERE phrasegroup.phrasengruppe_id = ".$phraseGroupID;

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			//
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}



	public function displaySpecialDataList()
	{
		$sql = "SELECT togsdaten.togsdaten_id, togsdaten.merkmal_kurz, togsdaten.phrasentext_kombiniert, togsdaten.phrasenid_kombiniert FROM `phrase_togsdaten` AS togsdaten";

		//$this is a reference of this class as well as Db
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			//
			while ($row = $result->fetch())
			{

				$data[] = $row;
			}
			return $data;
		}
	}

	public function displayUserList()
	{
		$sql = "SELECT benutzer.benutzer_id, benutzer.benutzername, CONCAT(benutzer.titel, benutzer.vorname) AS vorname, benutzer.nachname, firma.firma, benutzer.gruppe FROM `phrase_benutzer` AS benutzer INNER JOIN `phrase_firma` AS firma ON benutzer.firma_id = firma.firma_id";

		//$this is a reference of this class as well as Db
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	//select Company Dropdown from admin_credit_point.php

	public function selectCompany()
	{
		$sql = "SELECT firma_id, firma FROM phrase_firma";

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($rowCompanies = $result->fetch())
			{
				$data[] = $rowCompanies;
			}
			return $data;
		}
	}


	//FOR INSERTING VALUES TO DATABASE FUNCTIONS

	public function viewLanguageProperties($uid)
	{
		/*$sql = "SELECT phrase_sprachentext.sprache_id AS languageID, CONCAT(phrase_sprache.sprache_iso2, ' - ' , phrase_sprachentext.sprachentext) AS languageName FROM phrase_sprachentext INNER JOIN phrase_sprache ON phrase_sprachentext.sprache_id = phrase_sprachentext.sprache_id WHERE phrase_sprachentext.sprache_id= :id";*/

		$sql ="SELECT phrase_sprachentext.sprache_id AS languageID, CONCAT(phrase_sprache.sprache_iso2, ' - ' , phrase_sprachentext.sprachentext) AS languageName FROM phrase_sprachentext INNER JOIN phrase_sprache ON phrase_sprachentext.sprache_id = phrase_sprache.sprache_id WHERE phrase_sprachentext.sprache_id= :id";

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$uid);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;

	}

	public function displayLanguageValues()
	{
		$sql = "SELECT phrase_sprache.*, CONCAT(phrase_sprache.sprache_iso2, ' - ', phrase_sprachentext.sprachentext) AS languageName FROM phrase_sprache INNER JOIN phrase_sprachentext ON phrase_sprache.sprache_id = phrase_sprachentext.sprache_id WHERE phrase_sprache.prioritaet <> 0 ORDER BY phrase_sprache.sprache_iso2 ASC";

		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}		
	}

	public function displayRareLanguageValues()
	{
		$sql = "SELECT * FROM `phrase_sprache` WHERE `prioritaet` <> 1";

		$result2 = $this->connect()->query($sql);

		if($result2->rowCount() > 0)
		{
			while ($rowRareLanguage = $result2->fetch())
			{
				$data[] = $rowRareLanguage;
			}
			return $data;
		}		
	}

	public function insertNewLanguageText($language_fields)
	{
		$implodeColumns = implode(', ',array_keys($language_fields));
		$implodePlaceholder = implode(", :", array_keys($language_fields));
		$sql = "INSERT INTO phrase_sprachentext ($implodeColumns) VALUES (:".$implodePlaceholder.")";
		$stmt = $this->connect()->prepare($sql);

			foreach ($language_fields as $key => $value) {
				$stmt->bindValue(':'.$key,$value);
			}

			$stmtExec = $stmt->execute();

			if ($stmtExec) {
				
				header('Location: admin_not_translated.php');

			}
			else
			{
				
			}
	}

/*	public function updateLanguageText($language_fields,$id)
	{

		$st = "";
		$counter = 1;
		$total_fields = count($language_fields);
		foreach ($language_fields as $key => $value) {
			if($counter === $total_fields)
			{
				$set = "$key = :".$key;
				$st = $st.$set;
			}
			else
			{
				$set = "$key = :".$key.", ";
				$st = $st.$set;
				$counter++;
			}
		}

		$sql ="";
		$sql.="UPDATE phrase_sprachentext SET ".$st;
		$sql.=" WHERE sprachentext_id = ".$id;



		$stmt = $this->connect()->prepare($sql);

		foreach ($languageCode_fields as $key => $value) {
			$stmt->bindValue(':'.$key, $value);
		
		}
		$stmtExec = $stmt->execute();

		if ($stmtExec) {
			header('Location: list_language_codes.php');
		}

	
	}*/

	//insert

	public function updateLanguageCode($languageCode_fields,$id)
	{

		$st = "";
		$counter = 1;
		$total_fields = count($languageCode_fields);
		foreach ($languageCode_fields as $key => $value) {
			if($counter === $total_fields)
			{
				$set = "$key = :".$key;
				$st = $st.$set;
			}
			else
			{
				$set = "$key = :".$key.", ";
				$st = $st.$set;
				$counter++;
			}
		}

		$sql ="";
		$sql.="UPDATE phrase_sprachenkuerzel SET ".$st;
		$sql.=" WHERE sprachenkuerzel_id = ".$id;



		$stmt = $this->connect()->prepare($sql);

		foreach ($languageCode_fields as $key => $value) {
			$stmt->bindValue(':'.$key, $value);
		
		}
		$stmtExec = $stmt->execute();

		if ($stmtExec) {
			header('Location: list_language_codes.php');
		}

	
}

	public function insertCompany($company_fields)
	{
		$implodeColumns = implode(', ',array_keys($company_fields));
		$implodePlaceholder = implode(", :", array_keys($company_fields));
		$sql = "INSERT INTO phrase_firma ($implodeColumns) VALUES (:".$implodePlaceholder.")";
		$stmt = $this->connect()->prepare($sql);

			foreach ($company_fields as $key => $value) {
				$stmt->bindValue(':'.$key,$value);
			}

			$stmtExec = $stmt->execute();

			if ($stmtExec) {
				
				header('Location: admin_company_list.html');

			}
			else
			{
				
			}
	}

	public function selectCountry()
	{
		$sql = "SELECT phrase_land.land_id AS countryId, CONCAT(phrase_landtext.landesname, ' - ', phrase_land.iso2_code) AS country FROM phrase_land INNER JOIN phrase_landtext ON phrase_land.land_id = phrase_landtext.land_id ORDER BY phrase_landtext.landesname";
		
		$result = $this->connect()->query($sql);

		if($result->rowCount() > 0)
		{
			//
			while ($row = $result->fetch())
			{
				$data[] = $row;
			}
			return $data;
		}
	}





}