<header>
      <ul id='main-menu'>
          <li ng-repeat='menu in studentmenu' id='{{menu.id}}'><a href='{{menu.URL}}.php'>{{menu.title}}</a>
              <ul ng-if='menu.items'>
                  <li ng-repeat='subitem in menu.items'><a href='{{subitem.URL}}.php'>{{subitem.title}}</a></li>
              </ul>
          </li>
      </ul>
</header>