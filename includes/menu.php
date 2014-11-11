<header>
    <ul id="main-menu">
        <li data-ng-repeat="menu in menus" id="{{menu.id}}"><a href="{{menu.URL}}.php">{{menu.title}}</a>
            <ul data-ng-repeat="submenu in menu" data-ng-if="menu.admin">
                <li data-ng-repeat="subitem in submenu.items"><a href="{{subitem.URL}}.php">{{subitem.title}}</a></li>
            </ul>
        </li>
    </ul>
</header>