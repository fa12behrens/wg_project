<?php
/**
 * Created by PhpStorm.
 * User: T.Behrens
 * Date: 12.12.13
 * Time: 09:45
 */

include('../../backend/source/html.php');
include('../../backend/source/js.php');

class frame extends html {

	function display()
	{
		$html = new html();
		$js = new js();
		$html->head();
		$js->scrollpane();
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->foot();
	}

}

$go = new frame();
$go->display();