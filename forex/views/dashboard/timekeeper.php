<?php

function time_elapsed_string($datetime, $full = false) {
    $now = new DateTime;
	$now->setTimeZone(new DateTimeZone("Africa/Nairobi"));
    $ago = new DateTime($datetime, new DateTimeZone("Africa/Nairobi"));
    $diff = $now->diff($ago);
	
    $string = array(
        'h' => 'hour',
        'i' => 'minute',
        's' => 'second',
    );
	
	if($diff->y||$diff->d){
		if ($diff->d == 1){
			return "Yesterday, ".date('g:i A', strtotime($datetime));
		}
		return date('M j, Y', strtotime($datetime));
	}
	
    foreach ($string as $k => &$v) {
        if ($diff->$k) {
            $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? 's' : '');
        } else {
            unset($string[$k]);
        }
    }

    if (!$full) $string = array_slice($string, 0, 1);
	
    return $string ? "about ".implode(', ', $string) . ' ago' : 'just now';
}

?>