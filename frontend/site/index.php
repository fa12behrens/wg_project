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
		$html->head('main');
		$js->click_hide('.btn-danger','.btn-danger');
		$js->click_animate('.container','.btn');
		$js->drag_drop('.dropzonen','.dropzone','.item');
		$js->scrollpane('.scroll');
		$js->tab('.tab');
		$html->div('container well', '1');
		$html->icon('glyphicon glyphicon-check');
		$html->button('btn btn-danger', '2', '', 'droggelbecher');
		$html->button('btn btn-info', '3', '', 'droggelbecher');
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
		$html->iframe('frame.php','well','','500px','100%','frame1');
		$html->div('tab','tab');
		$html->ulist('','');
		$html->list_element('','');
		$html->link('#fragment-1','','');
		$html->span('','','1');
		$html->link_end();
		$html->list_element_end();
		$html->list_element('','');
		$html->link('#fragment-2','','');
		$html->span('','','2');
		$html->link_end();
		$html->list_element_end();
		$html->ulist_end();
		$html->div('','fragment-1');
		$html->div_end();
		$html->div('','fragment-2');
		$html->div_end();
		$html->div_end();
		$html->div_end();
		echo"

		";
		$html->foot();
	}

}

$go = new index();
$go->display();