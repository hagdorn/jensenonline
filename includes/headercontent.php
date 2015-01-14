<span id="greetings-text" class="text-thick">Välkommen, <span id="current-user"><?php 
    echo $_SESSION['firstname'] . ' ' . $_SESSION['lastname']; ?>
</span>
    <img src="../includes/img/user.png">
</span>
<form method='post' action='../includes/header.php'>
    <button type='submit' name='logout' id='logout' value='Logga ut' alt='Knapp för att logga ut' title="Logga ut"><img src="../includes/img/logout.png" no-repeat></button>
</form>
<form method='POST' id='global-search-form'>
    <input type='text' name='search_phrase' class="searchfield ui-box-shadow" placeholder='Sök' alt='Sökfält för att söka på webbsidan'>
    <input type="image" src="../includes/img/search.png" class="searchfield-btn" title="Sök" alt="Sök">
    <div id='dropdown-container'></div>
</form>