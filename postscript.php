<html><title>Link Awareness</title><head>
<link rel="icon" href="minisharingan_animiert_icon.gif" type="image/gif">
</head>
<?php

function register_visitor($data) {
 $result = mysql_query("SELECT * FROM link_awareness WHERE ID = ". $data["id"]);
 if (mysql_numrows($result) == 1) {
	$visits = mysql_result($result, 0, "VISITS") + 1;
	mysql_query("UPDATE link_awareness SET VISITS=" . $visits . " WHERE ID = " . $data["id"]);
 } else {
	mysql_query("INSERT INTO link_awareness(ID, FIRST_NAME, LAST_NAME, GENDER, LOCALE, VISITS) VALUES (" . $data["id"]. ", '". $data["first_name"] . "', '". $data["last_name"] . "', '" . $data["gender"] . "', '" . $data["locale"] . "', 1)"); 
 }
}

function parseData($data) {
 $data = str_replace("\"", "", $data);
 $data = str_replace("\\/", "/", $data);
 $strary = explode(",", $data);
 $final = array();
 $count = count($strary);
 for($c = 0; $c < $count; ++$c) {
	$kv = explode(":",$strary[$c]);
	$final[$kv[0]] = $kv[1];
 }
 return $final;
}

function greet($data) {
 echo "<div align=justify style=\"background-color: orange;\">";
 echo "<h2>Lieb" . (($data["gender"] == "male") ? "er" : "e" ) . " " . $data["first_name"] . "...</h2>";
 echo "Du bist auf Facebook unter der ID:<b>" . $data["id"] . "</b> registriert und dein voller Name lautet \"" . $data["name"] . "\"<br>";
 echo "Diese Information hast du soeben freiwillig preisgegeben... N&auml;chstes mal nicht alles sofort anklicken =)<br>";
 echo "Hier ist eine Liste anderer, die ebenfalls nicht vorsichtig waren: <a href=\"stats.php\">Diesmal ist raufklicken erlaubt ^^</a>"; 
 echo "</div>";
}


function initSQL() {
 $conn = mysql_connect("db4.cwsurf.de", "tyminator", "p1a2s3s4");
 if (!$conn)
	die('SQL-Verbindung schlug fehl: ' . mysql_error());
 mysql_select_db("tyminator", $conn);
 return $conn;
}

if (!empty($_GET["c_user"])) {
  $socket = fsockopen("graph.facebook.com", 80, $errno, $errstr);
  if (!$socket)
   echo "<b>$errstr ($errno)</b>";
  else {
	$out = "GET /". $_GET["c_user"] . " HTTP/1.1\r\n";
    $out .= "Host: graph.facebook.com\r\n";
    $out .= "Connection: Close\r\n\r\n";
	fwrite($socket, $out);
	$content = "";
	while(!feof($socket))
		$content .= fgets($socket, 128);
    fclose($socket);
	
	if (substr($content, 0, 15) != "HTTP/1.1 200 OK") {
	  echo "<div align=justify style=\"background-color: orange;\">";
	  echo "<h2>Seite nicht verf&uuml;gbar</h2>";
	  echo "Die Seite, um diesen Dienst nutzen zu k&ouml;nnen ist momentan nicht erreichbar, versuche es später erneut.";
	  echo "</div>";
	  exit;
	}
	$elems = explode("\n", $content);
	$userdata = $elems[count($elems)-1];
	$userdata = substr($userdata, 1, strlen($userdata) - 2);
	$userdata = preg_replace("/\\\\u([0-9a-f]{4})/", "&#x\\1;", $userdata);
	
	$data = parseData($userdata);
	initSQL();
	register_visitor($data);
	greet($data);
  }
} else {
  echo "<div align=justify style=\"background-color: #ddffdd;\">";
  echo "<h2>Gl&uuml;ckwunsch, du hast den Link-Awarenesstest bestanden!</h2>";
  echo "Dir muss sicher keiner mehr sagen, dass man nicht wild, jeden Link anklicken darf, den man vor die F&uuml;&szlig;e geworfen bekommt =)<br>";
  echo "Hier eine Liste derjenigen, die nicht so schlau waren: <a href=\"stats.php\">Keine Sorge, diesen Link darfst du anklicken ^^</a>";
  echo "</div>";
}
?>