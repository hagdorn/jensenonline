<?php
	session_start();
	require_once('db.php');
    include('includes/header.php');
?>

<main>

    <div id="login-container">
        
        <table>

            <form method="post" action="index.php">
                <tr>
                    <td>
                        <label for="username">Anv�ndarnamn:</label>
                    </td>
                </tr>
                <tr>
                    <td><input type="text" name="username" id="username" alt="Skriv ditt anv�ndarnamn"></td>
                </tr>
                <tr>
                    <td>
                        <label for="password">L�senord:</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" name="password" id="password" alt="Skriv ditt l�senord">
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="#">Gl�mt l�senord?</a>
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