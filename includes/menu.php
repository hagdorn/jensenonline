<header>
    <ul id="main-menu">
        <li data-ng-repeat="menu in studentMenu" id="{{menu.id}}"><a href="{{menu.URL}}.php">{{menu.title}}</a>
            <ul data-ng-if="menu.items">
                <li data-ng-repeat="subitem in menu.items"><a href="{{subitem.URL}}.php">{{subitem.title}}</a></li>
            </ul>
        </li>
    </ul>
</header>