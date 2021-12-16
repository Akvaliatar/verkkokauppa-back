<?php
<<<<<<< Updated upstream
require_once "../inc/headers.php";
require_once "../inc/functions.php";

$input = json_decode(file_get_contents("php://input"));
$trnimi = filter_var($input->trnimi, FILTER_SANITIZE_STRING);
$teksti = filter_var($input->teksti, FILTER_SANITIZE_STRING);

try {
    $db = openDB();

    $query = $db->prepare("insert into tuoteryhma(trnimi, teksti) values (:trnimi, :teksti)");
    $query->bindValue(":trnimi",$trnimi,PDO::PARAM_STR);
    $query->bindValue(":teksti",$teksti,PDO::PARAM_STR);
    $query->execute();

    header("HTTP/1.1 200 OK");
    $data = array("trnro" => $db->lastInsertId(), "trnimi" => $trnimi, "teksti" => $teksti);
    print json_encode($data);
    } catch (PDOException $pdoex) {
        returnError($pdoex);
    }
?>
=======

require_once '../inc/functions.php';
require_once '../inc/headers.php';

//Input tiedot JSON muotoon -> lisää tuoteryhmä
$input = json_decode(file_get_contents('php://input'));
$productCategoryName = json_decode($input->trnimi, FILTER_SANITIZE_STRING);
$productText = json_decode($input->teksti, FILTER_SANITIZE_STRING);
$addProductCategory = $input->addProductCategory;

$db = null;
try{
    $db = openDb();
    $db->beginTransaction();

    // tuoteryhmään lisääminen
    $sql = "insert into tuoteryhma(trnimi,teksti) values
    ('" .
        filter_var($productCategoryName, FILTER_SANITIZE_STRING) . "','" .
        filter_var($productText, FILTER_SANITIZE_STRING)
    . "')";

    $trnro = executeInsert($db, $sql);


    /*
    // lisätään loopiin kautta tauluun -> array
    foreach ($addProductCategory as $productCategory){
        $sql = "insert into tuoteryhma()"
    }*/
    

    $db->commit(); // tallenna osto
    // palauta 200 status ja asID
    header('HTTP/1.1 200 OK');
    $data = array('id' => $trnro);
    echo json_encode($data);

}catch(PDOException $pdoex){
    $db->rollback();
    returnError($pdoex);
}
>>>>>>> Stashed changes
