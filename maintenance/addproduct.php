<?php
<<<<<<< Updated upstream
require_once "../inc/headers.php";
require_once "../inc/functions.php";

$input = json_decode(file_get_contents("php://input"));
$tuotenimi = filter_var($input->tuotenimi, FILTER_SANITIZE_STRING);
$hinta = filter_var($input->hinta, FILTER_SANITIZE_STRING);
$kustannus = filter_var($input->kustannus, FILTER_SANITIZE_STRING);
$trnro = filter_var($input->trnro, FILTER_SANITIZE_STRING);
$vari = filter_var($input->vari, FILTER_SANITIZE_STRING);
$maara = filter_var($input->maara, FILTER_SANITIZE_STRING);
$koko = filter_var($input->koko, FILTER_SANITIZE_STRING);
$lankatyyppiElain = filter_var($input->lankaTyyppiElain, FILTER_SANITIZE_STRING);
$pituus = filter_var($input->pituus, FILTER_SANITIZE_STRING);
$teksti = filter_var($input->teksti, FILTER_SANITIZE_STRING);


try {
    $db = openDB();

    $query = $db->prepare("insert into tuote(tuotenimi, hinta, kustannus, trnro, vari, maara, koko, lankaTyyppiElain, pituus, teksti) values (:tuotenimi, :hinta, :kustannus, :trnro, :vari, :maara, :koko, :lankaTyyppiElain, :pituus, :teksti)");
    $query->bindValue(":tuotenimi",$tuotenimi,PDO::PARAM_STR);
    $query->bindValue(":hinta",$hinta,PDO::PARAM_INT);
    $query->bindValue(":kustannus",$kustannus,PDO::PARAM_INT);
    $query->bindValue(":trnro",$trnro,PDO::PARAM_INT);
    $query->bindValue(":vari",$vari,PDO::PARAM_STR);
    $query->bindValue(":maara",$maara,PDO::PARAM_STR);
    $query->bindValue(":koko",$koko,PDO::PARAM_STR);
    $query->bindValue(":lankaTyyppiElain",$lankatyyppiElain,PDO::PARAM_STR);
    $query->bindValue(":pituus",$pituus,PDO::PARAM_STR);
    $query->bindValue(":teksti",$teksti,PDO::PARAM_STR);
    $query->execute();

    header("HTTP/1.1 200 OK");
    $data = array("tuotenro" => $db->lastInsertId(), "tuotenimi" => $tuotenimi, "hinta" => $hinta, "kustannus" => $kustannus, "trnro" => $trnro, "vari" => $vari, "maara" => $maara, "koko" => $koko, "lankaTyyppiElain" => $lankatyyppiElain, "pituus" => $pituus, "teksti" => $teksti);
    print json_encode($data);
    } catch (PDOException $pdoex) {
        returnError($pdoex);
    }
?>
=======

require_once '../inc/functions.php';
require_once '../inc/headers.php';

//Input tiedot JSON muotoon -> lisää tuote
$input = json_decode(file_get_contents('php://input'));
$productName = json_decode($input->nimi, FILTER_SANITIZE_STRING);
$productPrice = json_decode($input->hinta, FILTER_SANITIZE_STRING);
$productCost = json_decode($input->kustannus, FILTER_SANITIZE_STRING);
$productCategoryName = json_decode($input->trnimi, FILTER_SANITIZE_STRING);
$productColor = json_decode($input->vari, FILTER_SANITIZE_STRING);
$productAmount = json_decode($input->maara, FILTER_SANITIZE_STRING);
$productSize = json_decode($input->koko, FILTER_SANITIZE_STRING);
$productStringType = json_decode($input->lankaTyyppiEläin, FILTER_SANITIZE_STRING);
$productLenght = json_decode($input->pituus, FILTER_SANITIZE_STRING);
$productInfo = json_decode($input->teksti, FILTER_SANITIZE_STRING);

$db = null;
try{
    $db = openDb();
    $db->beginTransaction();

    // tuote lisääminen
    $sql = "insert into tuoteryhma(trnimi,teksti) values
    ('" .
        filter_var($productName, FILTER_SANITIZE_STRING) . "','" .
        filter_var($productPrice, FILTER_SANITIZE_STRING) . "','" .
        filter_var($productCost, FILTER_SANITIZE_STRING) . "','" .
        filter_var($productCategoryName, FILTER_SANITIZE_STRING) . "','" .
        filter_var($productColor, FILTER_SANITIZE_STRING) . "','" .
        filter_var($productAmount, FILTER_SANITIZE_STRING) . "','" .
        filter_var($productSize, FILTER_SANITIZE_STRING) . "','" .
        filter_var($productStringType, FILTER_SANITIZE_STRING) . "','" .
        filter_var($productLenght, FILTER_SANITIZE_STRING) . "','" .
        filter_var($productInfo, FILTER_SANITIZE_STRING)
    . "')";

    $tuotenro = executeInsert($db, $sql);

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
