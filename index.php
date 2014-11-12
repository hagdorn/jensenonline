<?php
    include('includes/header.php');
?>

<main>

    <div id="login-container">
        
        <table>

            <form method="post" action="login.php">
                <tr>
                    <td>
                        <label for="username">Användarnamn:</label>
                    </td>
                </tr>
                <tr>
                    <td><input type="text" name="username" id="username" alt="Skriv ditt användarnamn"></td>
                </tr>
                <tr>
                    <td>
                        <label for="password">Lösenord:</label>
                    </td>
                </tr>
                <tr>
                    <td>
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
                        <input type="submit" name="submit" id="submit" alt="Logga in" value="Logga in">
                    </td>
                </tr>
            </form>

        </table>
        
    </div>

</main>

<?php
    include('includes/footer.php');
?>