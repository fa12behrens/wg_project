<?php
/**
 * Created by PhpStorm.
 * User: T.Behrens
 * Date: 11.12.13
 * Time: 10:36
 */

include('../../backend/source/html.php');
include('../../backend/source/js.php');

class index extends html
{

	function display()
	{
		$html = new html();
		$js = new js();
		$html->head();
		$js->click_hide('.btn-danger','.btn-danger');
		$js->click_animate('.container','.btn');
		$js->drag_drop('.dropzonen','.dropzone','.item');
		$js->scrollpane();
		$html->div('container well', '1');
		$html->icon('glyphicon glyphicon-check');
		$html->button('btn btn-danger', '2', 'droggelbecher');
		$html->button('btn btn-info', '3', 'droggelbecher');
		$html->div_end();
		$html->div('dropzonen well','4');
		$html->span('item well well-sm','5','droggel');
		$html->div_end();
		$html->div('dropzone well','6');
		$html->div_end();
		$html->image('jinx.jpg','img-thumbnail','','Jinx', '200px', '150px');
		$html->div('progress','');
		$html->bar('warning','40','0','100');
		$html->div_end();
		$html->div_end();
		$html->div('well scroll','','');
		$html->iframe('frame.php','well','','300px','100%','frame1');
		$html->div_end();
		$html->foot();
	}

}

$go = new index();
$go->display();