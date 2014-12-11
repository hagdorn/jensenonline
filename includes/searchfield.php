<form method='POST' id='search-form'>
    <input type='text' name='search' id='search-input' placeholder='Sök på webbplatsen' alt='Sökfält för att söka på webbsidan' ng-model='query'>
    <div id='dropdown-container'>
        <ul id='matches-list'>
            <li class='search-matches' ng-repeat='name in names | filter: query | orderBy:" . '"toString()"' . "'>
                <a href='#'>{{name}}</a>
            </li>
        </ul>
    </div>
</form>

