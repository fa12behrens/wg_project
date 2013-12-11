<?php

/**
 * Created by PhpStorm.
 * User: T.Behrens
 * Date: 11.12.13
 * Time: 09:04
 */

class html
{

	public function head()
	{
		echo "
	<!DOCTYPE html>
	<html>
	<head>
	<link rel='stylesheet' type='text / css' href=' ../../../wg_project/data/library/Bootstrap/dist/css/bootstrap.min.css'>
	<link rel='stylesheet' type='text / css' href=' ../../../wg_project/data/css/main.css'>
	<script src=' ../../../wg_project/data/library/Jquery/jquery.min.js'></script>
	<script src=' ../../../wg_project/data/library/Jquery_Ui/js/jquery-ui-1.10.3.custom.min.js'></script>
	<title>WG Manager</title>
	</head>
	<body>
		";
	}

	public function foot()
	{
		echo "
	</body>
	</html>
";
	}

	public function div($class, $id)
	{
		echo "
	<div class='$class' id='$id'>
";
	}

	public function div_end()
	{
		echo "
	</div>
";
	}

	public function button($class, $id, $name)
	{
		echo "
	<button class='$class' id='$id'>$name</button>
";
	}

	public function span($class, $id, $text)
	{
		echo "
	<span class='$class' id='$id'>$text</span>
";
	}

	public function text($text){
		echo"
		$text
		";
	}

}