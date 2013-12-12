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
		$html->head('iframe');
		$js->scrollpane('.scroll');
		$js->accordion('.accordion');
		$html->div('accordion','accordion');
		$html->h('3','erster');
		$html->div('','');
		$html->text('droggelbecher droggelcher droggelbecher');
		$html->br();
		$html->text('droggelbecher droggelcher droggelbecher');
		$html->div_end();
		$html->h('3','zweiter');
		$html->div('','');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '150px', '110px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '150px', '110px');
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '150px', '110px');
		$html->div_end();
		$html->div_end();
		$html->foot();
	}

}

$go = new frame();
$go->display();