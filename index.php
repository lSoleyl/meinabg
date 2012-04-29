<?php
//Yeeeeaaayyyyyy redirect_to ist möglich!!!!! n1 ;D
require_once "include/constants.cfg";
require_once "include/globalconstants.cfg";
require_once "include/functions.php";
while(true) {
	try 
	{
		require "include/preaction.php";
		//Check validity of action
		preg_match('/[a-zA-z_]*/', $_SESSION['ACTION'], $_matches);
		//Time to stop cheaters!
		if ($_matches[0] != $_SESSION['ACTION']) {
			$header = h();
			penalty();
		}
		$_SESSION['ACTION'] = strtolower($_SESSION['ACTION']); //Important on UNIX-Servers
		if (!file_exists($RESS_ROOT_DIR . "/action/" . $_SESSION['ACTION'] . ".ac")) {
			$header = h();
			penalty();			
		}
		
		require "action/" . $_SESSION['ACTION'] . ".ac";
		render($_SESSION['ACTION']);
	}
	catch (Exception $e)
	{
		if ($e->getMessage() == "render") {
			require "include/language.php";
			require "include/const_language.php";
			$_SESSION['ACTION'] = strtolower($_SESSION['ACTION']);			
		
			$_pre = ReadFromFile($RESS_ROOT_DIR . "/include/prerender.tpl"); //Prerendered template
			$_post = ReadFromFile($RESS_ROOT_DIR . "/include/postrender.tpl"); //Postrendered template
			$source = $_pre . ReadFromFile($RESS_ROOT_DIR . "/view/" . $_SESSION['ACTION'] . ".tpl") . $_post;
			
			foreach(get_defined_vars() as $a => $b) { //Variablen aus Action mit {{varname}} referenzieren :D
				if (!is_array($b))
					$source = str_replace("{{{$a}}}", $b, $source);
					
			}
			foreach($LANG as $a => $b) {
				$source = str_replace("{{$a}}", $b, $source);
			}
			
			if (!empty($TODO) && $TODO != "") //Todo-Tag
				$source = "<div style='background-color:#ffaaaa; border:dashed #ff0000 4px;'>TODO: $TODO</div>" . $source;
			
			echo $source;
			exit;
		} 
		elseif ($e->getMessage() == "redirect_to") {
			continue;
		}
		else throw(new Exception($e->getMessage()));
	}
exit;
}
?>