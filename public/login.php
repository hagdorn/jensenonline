<?php
	session_start();
	require_once('../includes/functions/functions.php');
    include_once('../includes/header.php');
?>

<main>

    <div id="login-container">
            <form method="post" action="index.php" id="login-form">
                <table>
                    <tr>
                        <td>
                            <label for="username">Användarnamn:</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="space-down">
                            <input type="text" name="username" id="username" alt="Skriv ditt användarnamn">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="password">Lösenord:</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="space-down">
                            <input type="password" name="password" id="password" alt="Skriv ditt lösenord">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#">Glömt lösenord?</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" name="submit" id="login-btn" alt="Logga in" value="Logga in">
                        </td>
                    </tr>
                </table>
            </form>
    </div>

</main>

<?php
    include_footer_files();
?>