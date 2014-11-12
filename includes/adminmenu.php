<header>
      <ul id='main-menu'>
          <li ng-repeat='menu in adminmenu' id='{{menu.id}}'><a href='{{menu.URL}}.php'>{{menu.title}}</a>
              <ul ng-repeat='submenu in menu'>
                  <li ng-repeat='subitem in submenu'><a href='{{subitem.URL}}.php'>{{subitem.title}}</a></li>
              </ul>
          </li>
      </ul>
</header>