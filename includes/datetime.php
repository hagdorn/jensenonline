<?php
    $month = date('M');
    $day = date('j');
    $endings_a = array('1', '2', '21', '22', '31');

    if (array_search($day, $endings_a) != false) {
        $ending = ':a';
    }
    else {
        $ending = ':e';
    }

    switch ($month) {

        case 'Jan': $month = 'januari';
                    break;

        case 'Feb': $month = 'februari';
                    break;

        case 'Mar': $month = 'mars';
                    break;

        case 'Apr': $month = 'april';
                    break;

        case 'May': $month = 'maj';
                    break;

        case 'Jun': $month = 'juni';
                    break;

        case 'Jul': $month = 'juli';
                    break;

        case 'Aug': $month = 'augusti';
                    break;

        case 'Sep': $month = 'september';
                    break;

        case 'Oct': $month = 'oktober';
                    break;

        case 'Nov': $month = 'november';
                    break;

        case 'Dec': $month = 'december';
                    break;
    }

    echo $day . $ending . ' ' . $month;
?>