


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
private $languageCodeId;

public function setID($languageCodeId)
{
$this->languageCodeId = $languageCodeId;
}

public function getID()
{
    return $this->languageCodeId;
}
	
///////////////////////////////////////////////////////////////
	public function displayListPhraseHead($page, $startingLimitNumber)
	{
		$sql = "SELECT pkf.phrasenkopf_id, pk.katalog_pin, pg.phrasengruppe, pkf.phrasenid FROM phrase_phrasenkopf AS pkf INNER JOIN phrase_phrasenkatalog AS pk ON pkf.phrasenkatalog_id = pk.phrasenkatalog_id INNER JOIN phrase_phrasengruppe AS pg ON pkf.phrasengruppe_id = pg.phrasengruppe_id 
			ORDER BY phrasenkopf_id ASC LIMIT ".$startingLimitNumber.",".$page;

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

	public function viewPhrasehead($uid)
	{

		

		$sql = "SELECT pkf.phrasenkopf_id, pk.katalog_pin, pg.phrasengruppe, pkf.phrasenid, pkf.kommerziell, pkf.freigegeben, pkf.euphrac_phrase_id, pkf.structure_code, pkf.original_code, pkf.zeitstempel, pkf.phrasengruppe_id  FROM phrase_phrasenkopf AS pkf INNER JOIN phrase_phrasenkatalog AS pk ON pkf.phrasenkatalog_id = pk.phrasenkatalog_id INNER JOIN phrase_phrasengruppe AS pg ON pkf.phrasengruppe_id = pg.phrasengruppe_id WHERE pkf.phrasenkopf_id = :id" ;

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$uid);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	public function selectPhrasegroup()
	{
		$sql = "SELECT phrasengruppe_id AS phrasegroupId, phrasengruppe AS phrasegroup FROM phrase_phrasengruppe GROUP BY phrasengruppe";
		
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
		$sql = "SELECT  phrasenkatalog_id AS phrasecatalogId , katalog_pin AS catalogPin FROM phrase_phrasenkatalog GROUP BY katalog_pin";
		
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

	public function  selectCompany()
	{
		$sql = "SELECT firma_id AS company_id, firma AS company FROM phrase_firma ORDER BY company";
		
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




public function selectLanguage()
{
	
	$sql = "SELECT phrase_sprache.sprache_id AS languageId, CONCAT(phrase_sprachentext.sprachentext,' - ',phrase_sprache.sprache_iso2) AS language FROM phrase_sprache INNER JOIN phrase_sprachentext ON phrase_sprache.sprache_id = phrase_sprachentext.sprache_id GROUP BY phrase_sprache.sprache_iso2 ORDER BY phrase_sprachentext.sprachentext";
		
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

	public function returnCompanyMaxId()
	{
		$sql = "SELECT max(firma_id) AS max_id FROM phrase_firma";
		
		$stmt = $this->connect()->prepare($sql);
		$stmt->execute();
  		$invNum = $stmt->fetch(PDO::FETCH_ASSOC);
  		$max_id = $invNum['max_id'];

		return $max_id;
	}

	public function selectID($id)
	{
		
		
		$sql = "SELECT  pkf.phrasenkatalog_id, pkf.phrasengruppe_id, pk.katalog_pin, pg.phrasengruppe, pkf.phrasenid, pkf.euphrac_phrase_id, pkf.structure_code, pkf.original_code, pkf.zeitstempel FROM phrase_phrasenkopf AS pkf INNER JOIN phrase_phrasenkatalog AS pk ON pkf.phrasenkatalog_id = pk.phrasenkatalog_id INNER JOIN phrase_phrasengruppe AS pg ON pkf.phrasengruppe_id = pg.phrasengruppe_id WHERE pkf.phrasenkopf_id = :id";

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	public function selectLanguageCodeInfo($id)
	{
		$sql = "SELECT phrase_sprachenkuerzel.sprachenkuerzel_id AS sprachenkuerzelId, phrase_sprachenkuerzel.sprache_id AS languageId, phrase_sprachenkuerzel.firma_id AS CompanyId ,  phrase_firma.firma AS company, CONCAT(phrase_sprachentext.sprachentext,' - ', phrase_sprache.sprache_iso2) AS language, phrase_sprachenkuerzel.sprache_kurz AS languageCode FROM phrase_sprachenkuerzel INNER JOIN phrase_firma ON phrase_sprachenkuerzel.firma_id = phrase_firma.firma_id INNER JOIN phrase_sprache ON phrase_sprachenkuerzel.sprache_id = phrase_sprache.sprache_id INNER JOIN phrase_sprachentext ON phrase_sprache.sprache_id = phrase_sprachentext.sprache_id WHERE phrase_sprachenkuerzel.sprachenkuerzel_id = :id GROUP BY phrase_sprachenkuerzel.sprachenkuerzel_id";

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	public function selectPhraseGroupInfo($id)
	{
		$sql = "SELECT phrase_phrasengruppe.phrasengruppe_id AS phrasegroupId, phrase_phrasengruppe.phrasengruppe AS phrasegroup, phrase_firma.firma AS company, phrase_firma.firma_id AS companyId FROM phrase_phrasengruppe INNER JOIN phrase_firma ON phrase_phrasengruppe.firma_id = phrase_firma.firma_id WHERE phrase_phrasengruppe.phrasengruppe_id = :id";
		
		

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	public function selectPhraseheadInfo($id)
	{
		$sql = "SELECT phrase_phrasenkopf.phrasenkopf_id, phrase_phrasenkopf.phrasenid, phrase_phrasenkopf.kommerziell, phrase_phrasenkopf.freigegeben, phrase_phrasenkopf.euphrac_phrase_id, phrase_phrasenkopf.structure_code,  phrase_phrasenkopf.original_code, phrase_phrasenkopf.zeitstempel, phrase_phrasenkatalog.phrasenkatalog_id, phrase_phrasenkatalog.katalog_pin, phrase_phrasengruppe.phrasengruppe_id, phrase_phrasengruppe.phrasengruppe FROM phrase_phrasenkopf INNER JOIN phrase_phrasenkatalog ON phrase_phrasenkopf.phrasenkatalog_id = phrase_phrasenkatalog.phrasenkatalog_id INNER JOIN phrase_phrasengruppe ON phrase_phrasenkopf.phrasengruppe_id = phrase_phrasengruppe.phrasengruppe_id WHERE phrase_phrasenkopf.phrasenkopf_id = :id";
		
		

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}
	
public function viewLanguage($uid)
{

		$sql = "SELECT * FROM phrase_sprache WHERE sprache_id = :id" ;

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$uid);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
}

public function viewLanguageCode($uid)
{
		$sql = "SELECT phrase_sprachenkuerzel.sprachenkuerzel_id, CONCAT(phrase_sprachentext.sprachentext, ' - ', phrase_sprache.sprache_iso2) as languageName, phrase_firma.firma as companyName, phrase_sprachenkuerzel.sprache_kurz as languageCode FROM phrase_sprachenkuerzel INNER JOIN phrase_sprachentext ON phrase_sprachenkuerzel.sprache_id = phrase_sprachentext.sprache_id INNER JOIN phrase_sprache ON phrase_sprachenkuerzel.sprache_id = phrase_sprache.sprache_id INNER JOIN phrase_firma ON phrase_sprachenkuerzel.firma_id = phrase_firma.firma_id WHERE sprachenkuerzel_id = :id" ;

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$uid);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
}

public function displayCountryNames()
{
	$sql = "SELECT  phrase_land.sap_code AS country, CONCAT(phrase_sprachentext.sprachentext,' - ', phrase_sprache.sprache_iso2) AS language, phrase_landtext.landesname AS Countryname FROM phrase_landtext INNER JOIN phrase_land ON phrase_landtext.land_id = phrase_land.land_id INNER JOIN phrase_sprache ON phrase_landtext.sprache_id = phrase_sprache.sprache_id INNER JOIN phrase_sprachentext ON phrase_landtext.	sprache_id = phrase_sprachentext.sprache_id LIMIT 10";

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




	public function displayLanguageCode()
	{
		$sql = "SELECT phrase_sprachenkuerzel.sprachenkuerzel_id AS sprachenkuerzelId , CONCAT(phrase_sprachentext.sprachentext, ' - ', phrase_sprache.sprache_iso2) as languageName, phrase_firma.firma as companyName, phrase_sprachenkuerzel.sprache_kurz as languageCode FROM phrase_sprachenkuerzel INNER JOIN phrase_sprachentext ON phrase_sprachenkuerzel.sprache_id = phrase_sprachentext.sprache_id INNER JOIN phrase_sprache ON phrase_sprachenkuerzel.sprache_id = phrase_sprache.sprache_id INNER JOIN phrase_firma ON phrase_sprachenkuerzel.firma_id = phrase_firma.firma_id GROUP BY phrase_sprachenkuerzel.sprachenkuerzel_id LIMIT 10 ";

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


	public function displayLanguages($page, $startingLimitNumber)
	{
		$sql = "SELECT * FROM `phrase_sprache` ORDER BY sprache_id ASC LIMIT ".$startingLimitNumber.",".$page;

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


public function viewUserTranslationsPerMonth($uid)
{
	$sql = "SELECT * FROM phrase_benutzer INNER JOIN phrase_sprachentext ON phrase_benutzer.sprache_id = phrase_sprachentext.sprache_id INNER JOIN phrase_landtext ON phrase_benutzer.sprache_id = phrase_landtext.sprache_id  WHERE phrase_benutzer.benutzer_id = :id";

		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$uid);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
}

public function returnPhraseheadRowCount()
	{
		$sql = "SELECT COUNT(phrasenkopf.phrasenkopf_id) FROM phrase_phrasenkopf AS phrasenkopf";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}


	
	public function returnLaguagesRowCount()
	{
		$sql = "SELECT COUNT(sprache.sprache_id) FROM phrase_sprache AS sprache";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}
	
//insert
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

public function insertPhrasecatalogue($phrasecatalog_fields)
{
	$implodeColumns = implode(', ',array_keys($phrasecatalog_fields));
	$implodePlaceholder = implode(", :", array_keys($phrasecatalog_fields));
	$sql = "INSERT INTO phrase_phrasenkatalog ($implodeColumns) VALUES (:".$implodePlaceholder.")";
	$stmt = $this->connect()->prepare($sql);

		foreach ($phrasecatalog_fields as $key => $value) {
			$stmt->bindValue(':'.$key,$value);
		}

		$stmtExec = $stmt->execute();

		if ($stmtExec) {
			
			header('Location: new_phrasecatalogue.html');

		}
		else
		{
			
		}
}

public function insertPhrasegroup($phrasegroup_fields)
{
	$implodeColumns = implode(', ',array_keys($phrasegroup_fields));
	$implodePlaceholder = implode(", :", array_keys($phrasegroup_fields));
	$sql = "INSERT INTO phrase_phrasengruppe ($implodeColumns) VALUES (:".$implodePlaceholder.")";
	$stmt = $this->connect()->prepare($sql);

		foreach ($phrasegroup_fields as $key => $value) {
			$stmt->bindValue(':'.$key,$value);
		}

		$stmtExec = $stmt->execute();

		if ($stmtExec) {
			
			header('Location: new_phrasegroup.html');

		}
		else
		{
			
		}
}


public function insertLanguageCode($languageCode_fields)
{
	$implodeColumns = implode(', ',array_keys($languageCode_fields));
	$implodePlaceholder = implode(", :", array_keys($languageCode_fields));
	$sql = "INSERT INTO phrase_sprachenkuerzel ($implodeColumns) VALUES (:".$implodePlaceholder.")";
	$stmt = $this->connect()->prepare($sql);

		foreach ($languageCode_fields as $key => $value) {
			$stmt->bindValue(':'.$key,$value);
		}

		$stmtExec = $stmt->execute();

		if ($stmtExec) {
			
			header('Location: new_language_code.html');

		}
		else
		{
			
		}
}


//update
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

public function updatePhrasegroup($phrasegroup_fields,$id)
{

		$st = "";
		$counter = 1;
		$total_fields = count($phrasegroup_fields);
		foreach ($phrasegroup_fields as $key => $value) {
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
		$sql.="UPDATE phrase_phrasengruppe SET ".$st;
		$sql.=" WHERE phrasengruppe_id = ".$id;



		$stmt = $this->connect()->prepare($sql);

		foreach ($phrasegroup_fields as $key => $value) {
			$stmt->bindValue(':'.$key, $value);
		
		}
		$stmtExec = $stmt->execute();

		if ($stmtExec) {
			header('Location: list_phrasegroup.php');
		}

	
}

public function updatePhrasehead($phrasehead_fields,$id)
{

		$st = "";
		$counter = 1;
		$total_fields = count($phrasehead_fields);
		foreach ($phrasehead_fields as $key => $value) {
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
		$sql.="UPDATE phrase_phrasenkopf SET ".$st;
		$sql.=" WHERE phrasenkopf_id = ".$id;



		$stmt = $this->connect()->prepare($sql);

		foreach ($phrasehead_fields as $key => $value) {
			$stmt->bindValue(':'.$key, $value);
		
		}
		$stmtExec = $stmt->execute();

		if ($stmtExec) {
			header('Location: list_phraseheads.php');
		}

	
}



//ruel
	public function viewTranslationsPerMonth()
	{
		$sql = "SELECT phrase_benutzer.benutzer_id, CONCAT(phrase_benutzer.anrede, ' ', phrase_benutzer.titel, ' ', phrase_benutzer.vorname) AS firstName, phrase_benutzer.nachname AS lastName, COUNT(phrase_phrasentext.benutzer_id) as translationCount, phrase_firma.firma AS companyName FROM phrase_phrasentext INNER JOIN phrase_benutzer ON phrase_phrasentext.benutzer_id = phrase_benutzer.benutzer_id INNER JOIN phrase_firma ON phrase_phrasentext.firma_id = phrase_firma.firma_id GROUP BY phrase_phrasentext.benutzer_id ASC";

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


	public function returnPhrasegroupRowCount()
	{
		$sql = "SELECT COUNT(phrasegroup.phrasengruppe_id) FROM phrase_phrasengruppe AS phrasegroup";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
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




}