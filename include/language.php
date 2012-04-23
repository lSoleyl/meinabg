<?php
$lang = "";
if (!empty($_SESSION['LANG']))
	$lang = $_SESSION['LANG'];
else
	$lang = "de";
require $RESS_ROOT_DIR . "/lang/" . $lang . ".lg";
?>