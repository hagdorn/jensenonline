<?php
	$rooms = array();
	
	$roomDay = ([
		'0'=> '',
		'1'=> '',
		'2'=> '',
		'3'=> '',
		'4'=> '',
		'5'=> '',
		'6'=> '',
		'7'=> '',
		'8'=> '',
		'9'=> '',
	]);		
	
	$roomDay['0']="WUK";
	$roomDay['3']="Robert";
	$roomDay['4']="Robert";
	$roomDay['5']="Robert";
	array_push($rooms, $roomDay);
	
	
	$roomDay['0']="COK";
	$roomDay['3']="Julmingel";
	$roomDay['4']="Julmingel";
	$roomDay['5']="Julmingel";
	$roomDay['6']="Julmingel";
	$roomDay['7']="Julmingel";
	array_push($rooms, $roomDay);

	

?>

<script>
	var rooms = <?php echo json_encode($rooms); ?>;
</script>