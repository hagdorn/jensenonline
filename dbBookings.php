<?php
	$rooms = array();
	
	$roomDay = ([
		'name'=> '',
		'8'=> '',
		'9'=> '',
		'10'=> '',
		'11'=> '',
		'12'=> '',
		'13'=> '',
		'14'=> '',
		'15'=> '',
		'16'=> '',
	]);		
	
	$roomDay['name']="WUK";
	$roomDay['12']="Robert";
	$roomDay['13']="Robert";
	$roomDay['14']="Robert";
	array_push($rooms, $roomDay);
	
	
	$roomDay['name']="COK";
	$roomDay['12']="Julmingel";
	$roomDay['13']="Julmingel";
	$roomDay['14']="Julmingel";
	$roomDay['15']="Julmingel";
	$roomDay['16']="Julmingel";
	array_push($rooms, $roomDay);
?>

<script>
	var rooms = <?php echo json_encode($rooms); ?>;
</script>