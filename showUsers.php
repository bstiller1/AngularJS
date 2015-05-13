<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "blake", "secret55", "jackieJewerly");

$result = $conn->query("SELECT * FROM customers");

$outp = "";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "") {$outp .= ",";}
    $outp .= '{"ID":"'  . $rs["customerID"] . '",';
    $outp .= '"Name":"'   . $rs["customerName"]        . '",';
    $outp .= '"Email":"'. $rs["customerEmail"]     . '"}'; 
}
$outp ='{"records":['.$outp.']}';
$conn->close();

echo($outp);
?>