<?php
    switch($_SESSION['authority']) {
        //$_SESSION can be either "admin", "teacher" or "student"
        case 'admin': 
            echo 
                "<header>
                  <ul id='main-menu'>
                      <li ng-repeat='menu in menus' id='{{menu.id}}'><a href='{{menu.URL}}.php'>{{menu.title}}</a>
                          <ul ng-repeat='submenu in menu'>
                              <li ng-repeat='subitem in submenu'><a href='{{subitem.URL}}.php'>{{subitem.title}}</a></li>
                          </ul>
                      </li>
                  </ul>
                </header>";
        break;
            
        case 'teacher':
            echo 
                "<header>
            <ul id='main-menu'>
                <li ng-repeat='menu in menus' id='{{menu.id}}'><a href='{{menu.URL}}.php'>{{menu.title}}</a>
                    <ul ng-repeat='submenu in menu' ng-show='menu.teacher'>
                        <li ng-repeat='subitem in submenu'><a href='{{subitem.URL}}.php'>{{subitem.title}}</a></li>
                    </ul>
                </li>
            </ul>
        </header>";
        break;
        
        case 'student':
            echo 
                "<header>
            <ul id='main-menu'>
                <li ng-repeat='menu in menus' id='{{menu.id}}'><a href='{{menu.URL}}.php'>{{menu.title}}</a>
                    <ul ng-repeat='submenu in menu' ng-show='menu.student'>
                        <li ng-repeat='subitem in submenu'><a href='{{subitem.URL}}.php'>{{subitem.title}}</a></li>
                    </ul>
                </li>
            </ul>
        </header>";
        break;
    }
    
?>
    
