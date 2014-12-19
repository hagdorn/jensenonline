<?php
    session_start();
	require_once('../includes/functions/functions.php');
    include_header_files();
?>

<main>
    <div id="administration-wrapper" class="border-box">
        <ul class="nav admin-nav float-left padding-box">
            <li ng-repeat="item in menuItems" class="admin-nav-items"><a href="">{{item}}</a>
                <ul class="nav admin-sub-nav hide-element">
                    <li class="admin-sub-items"><a href="">Lägg till</a></li>
                    <li class="admin-sub-items"><a href="">Redigera</a></li>
                    <li class="admin-sub-items"><a href="">Ta bort</a></li>
                </ul>
            </li>
        </ul>
        <div id="changes-feed" class="float-right border-box">
            <h1 class="feed-headers">Aktivitet:</h1>
        </div>
    </div>
</main>

<?php
    include_footer_files();
?>