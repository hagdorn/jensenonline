<?php
menuFunction();
?>

<nav>
    <ul id='main-nav'>
        <li id='{{menu.id}}' class='nav-items' ng-repeat='menu in teachermenu'>
           <a href='{{menu.URL}}.php'>{{menu.title}}</a>
           <img src="../includes/img/{{menu.image}}.png" no-repeat>
            <ul class='dropdown-nav' ng-if='menu.items'>
                <li class='dropdown-items' ng-repeat='subitem in menu.items'>
                    <a href='{{subitem.URL}}.php'>{{subitem.title}}</a>
                </li>
            </ul>
        </li>
    </ul>
</nav>