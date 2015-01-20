<?php
    session_start();
	require_once('../includes/functions/functions.php');
    include_header_files();
?>

<main class="content">
    <div id="administration-wrapper" class="border-box">
        <div id="menu-wrapper">
            <div id="top-menu">
                <div id="search-wrapper">
                    <form method="POST">
                        <?php include('../includes/searchfield.php'); ?>
                    </form>
                </div>
                <div id="add-wrapper">
                    <form class="dropdown-form">
                        <label class="standard-label">Lägg till:</label>
                        <ul id="add-options" class="options-dropdown ui-box-shadow">
                            <li class="default"><span>Välj ämne</span>
                                <ul>
                                    <li class="sub-options">Utbildning</li>
                                    <li class="sub-options">Program</li>
                                    <li class="sub-options">Lokal</li>
                                    <li class="sub-options">Anställd</li>
                                    <li class="sub-options">Admin</li>
                                    <li class="sub-options">Lärare</li>
                                    <li class="sub-options">Student</li>
                                </ul>
                            </li>
                        </ul>
                    </form>
                </div>
                <div id="sort-wrapper">
                    <form class="dropdown-form">
                        <label class="standard-label">Sortera efter:</label>
                        <ul id="sort-options" class="options-dropdown ui-box-shadow">
                            <li class="default"><span>A-Ö</span>
                                <ul>
                                    <li class="sub-options">A-Ö</li>
                                    <li class="sub-options">Ö-A</li>
                                </ul>
                            </li>
                        </ul>
                    </form>
                </div>
                <div id="btns-wrapper">
                    <?php include_once('../includes/overviewmenu.php'); ?>
                </div>
            </div>
        </div>
        <div id="table-holder"></div>
        <div id="changes-feed" class="float-right border-box">
<?php

    $query = 'SELECT * FROM activities ';
    $query .= 'ORDER BY timestamp DESC LIMIT 10';

    $prepared_stmt = $db->prepare($query);
    $prepared_stmt->execute();
    
    while ($db_row = $prepared_stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "<div class='activity-box'>";
        echo "<span class='activity-header'>";
        echo "<span class='highlight-text'>";
        echo $db_row['user'];
        
        switch ($db_row['action']) {
            
            case 'added': echo " lade till ett objekt:";
                          break;
            
            case 'edit': echo " redigerade ett objekt:";
                         break;
            
            case 'removal': echo " raderade ett objekt:";
                            break;
        }
        
        echo "</span>";
        echo "</span>";
        echo "<p class='changes-made'>";
        echo "<span class='highlight-text'>";
        echo $db_row['affected_object'];
        echo "</span>";
        echo "<span> har tagits bort ur systemet.</span>";
        echo "</p>";
        echo "<span class='timestamp'>";
        echo $db_row['timestamp'];
        echo "</span>";
        echo "</div>";
    }
?>
            
            
        </div>
    </div>
</main>

<?php
    include_footer_files();
?>