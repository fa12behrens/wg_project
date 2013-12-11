<?php
/**
 * Created by PhpStorm.
 * User: T.Behrens
 * Date: 11.12.13
 * Time: 10:14
 */

class js
{

	public function click_hide($clicked, $changed)
	{
		echo "
<script>
$(document).ready(function(){
  $('$clicked').click(function(){
    $('$changed').hide();
  });
});
</script>
		";
	}

	public function click_animate($clicked, $changed)
	{
		echo "
<script>
$(document).ready(function(){
  $('$clicked').click(function(){
$('$changed').animate({opacity:'0.1',left:'250px'});
  });
});
</script>
		";
	}

	public function drag_drop($drop_first, $drop_second, $drag)
	{
		echo "
<script>
$(document).ready(function(){
$('$drop_first').droppable({
    accept: '$drag',
    drop: function(event, ui ) {
       $(event.target).append(ui.draggable);
       alert($(ui.draggable).attr('id'));
    }
});

$('$drop_second').droppable({
    accept: '$drag',
    drop: function(event, ui ) {
       $(event.target).append(ui.draggable);
       alert($(ui.draggable).attr('id'));
    }
});

$( '$drag' ).draggable({
    containment: 'document',
    helper: 'clone',
    cursor: 'move'
});
});
</script>
		";
	}
} 