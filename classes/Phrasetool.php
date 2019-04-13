


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
	
	
///////////////////////////////////////////////////////////////

///////////////// PHRASEHEAD /////////////////////////////
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

////////////// END OF PHRASEHEAD //////////////////////

///////////// LIST LABEL /////////////////////////////
	public function displayListLabel($page, $startingLimitNumber)
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
				ON t1.u1 = t2.u2 LIMIT ".$startingLimitNumber.",".$page;

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

	public function returnLabelRowCount()
	{
		$sql = "SELECT COUNT(*) FROM `phrase_etikett`";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}

	public function viewLabel($etikett_id)
	{
		$sql = "";
	}
//////////////////// END OF LIST LABEL ///////////////////////////////////////////


///////////////// FOR PHRASE CATALOGUE /////////////////////////////////////////////////////////////////////////////////////

public function getListOfCompany()
{
	$sql = "SELECT firma_id, firma FROM `phrase_firma`";

	$result = $this->connect()->query($sql);

	if($result->rowCount() > 0)
	{
		while($row = $result->fetch())
		{
			$data[] = $row;
		}

		return $data;
	}
}

///////////////////FOR  PHRASECATALOGUE LIST AND MAP ////////////////////////////////
	public function displayPhrasecatalogueListandMap($page, $startingLimitNumber)
	{
		$sql = "SELECT phrasenkatalog_id, katalog_pin, katalog_distributor, katalog_version, katalog_datum FROM `phrase_phrasenkatalog` LIMIT ".$startingLimitNumber.",".$page;

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

	public function returnPhrasecatalogueRowCount()
	{
		$sql = "SELECT COUNT(*) FROM `phrase_phrasenkatalog`";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}

	public function viewPhrasecatalogue($phrasecatalogueID)
	{
		$sql = "SELECT phrasecatalogue.phrasenkatalog_id, phrasecatalogue.katalog_pin, phrasecatalogue.katalog_distributor, phrasecatalogue.katalog_version, phrasecatalogue.katalog_datum, phrasecatalogue.num_range, firma.firma FROM `phrase_phrasenkatalog` AS phrasecatalogue INNER JOIN `phrase_firma` AS firma ON phrasecatalogue.firma_id = firma.firma_id WHERE phrasecatalogue.phrasenkatalog_id = ".$phrasecatalogueID;
		
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


	public function viewCompanyList()
	{
		$sql = "SELECT firma_id, firma FROM `phrase_firma`";

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

	public function updatePhraseCatalogue($catalogue_fields,$id)
	{

		$st = "";
		$counter = 1;
		$total_fields = count($catalogue_fields);
		foreach ($catalogue_fields as $key => $value) {
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
		$sql.="UPDATE phrase_phrasenkatalog SET ".$st;
		$sql.=" WHERE phrasenkatalog_id = ".$id;



		$stmt = $this->connect()->prepare($sql);

		foreach ($catalogue_fields as $key => $value) {
			$stmt->bindValue(':'.$key, $value);
		
		}
		$stmtExec = $stmt->execute();

		if ($stmtExec) {
			header('Location: list_and_map.php');
		}

	}

	public function selectPhraseCataloguePin()
	{
		$sql = "SELECT phrasenkatalog_id, katalog_pin FROM `phrase_phrasenkatalog`";

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


///////////////////// END OF PHRASECATALOGUE LIST AND MAP ////////////////////////

//////////////////// PHRASEGROUP LIST ///////////////////////////////////////////

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

	public function selectPhraseGroup()
	{
		$sql = "SELECT phrasengruppe_id, phrasengruppe FROM `phrase_phrasengruppe`";

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

	public function selectCompany()
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
		$sql = "SELECT sprache.sprache_id, sprache.sprache_iso2, sprache.sprache_iso3, sprache.sprache_iso4, sprache.prioritaet, sprachentext.sprachentext FROM `phrase_sprache` AS sprache INNER JOIN `phrase_sprachentext` AS sprachentext ON sprache.sprache_id = sprachentext.sprache_id ORDER BY prioritaet DESC";
		
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
////////////////// END OF PHRASEGROUP LIST ////////////////////////////////////////

////////////////// SPECIAL LIST DATA /////////////////////////////////////////////

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
//////////////// END OF SPECIAL LIST DATA ///////////////////////////////////////

/////////////// USER LIST //////////////////////////////////////////////////////
	public function displayUserList($page, $startingLimitNumber)
	{
		$sql = "SELECT benutzer.benutzer_id, benutzer.benutzername, CONCAT(benutzer.titel, benutzer.vorname) AS vorname, benutzer.nachname, firma.firma, benutzer.gruppe FROM `phrase_benutzer` AS benutzer INNER JOIN `phrase_firma` AS firma ON benutzer.firma_id = firma.firma_id LIMIT ".$startingLimitNumber.",".$page;

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

	public function returnUserListRowCount()
	{
		$sql = "SELECT COUNT(*) FROM `phrase_benutzer`";

		$rowCount = $this->connect()->query($sql)->fetchColumn();

		return $rowCount;
	}

/////////// END OF USER LIST //////////////////////////////////////////////////////


}