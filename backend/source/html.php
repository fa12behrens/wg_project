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
		<link rel='stylesheet' type='text / css' href=' ../../../wg_project/data/library/Jscrollpane/jquery.jscrollpane.css'>
		<link rel='stylesheet' type='text / css' href=' ../../../wg_project/data/css/main.css'>
		<script src=' ../../../wg_project/data/library/Jquery/jquery.min.js'></script>
		<script src=' ../../../wg_project/data/library/Jscrollpane/jquery.jscrollpane.min.js'></script>
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

	public function text($text)
	{
		echo "
		$text
		";
	}

	public function icon($class)
	{
		echo "
		<i class='$class'></i>
		";
	}

	public function image($source, $class, $id, $alt, $height, $width)
	{
		echo "
		<img src='../../data/image/$source' class='$class' id='$id' alt='$alt' height='$height' width='$width'>
		";
	}

	public function iframe($source, $class, $id, $height, $width, $name){
		echo"
		<iframe src='../../frontend/site/$source' class='$class' id='$id' height='$height' width='$width' name='$name' scrolling='no' >
		Ihr Browser unterstützt leider keine Iframes!
		</iframe>
		";
	}

	public function form($class, $id, $action, $target, $role)
	{
		echo "
		<form class='$class' id='$id' action='$action' target='$target' role='$role' method='post'>
		";
	}

	public function form_end()
	{

	}

	public function ulist(){

	}

	public function ulist_end(){

	}

	public function olist(){

	}

	public function olist_end(){

	}

	public function list_element(){

	}

	public function list_element_end(){

	}

	public function link(){

	}

	public function input(){

	}

	public function bar($class, $now, $min, $max){
		echo"
		<div class='progress-bar progress-bar-$class' role='progressbar' aria-valuenow='$now' aria-valuemin='$min' aria-valuemax='$max' style='width: $now%'>
		";
	}

}