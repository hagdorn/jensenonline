<?php
    session_start();
	require_once('../includes/functions/functions.php');
    include_header_files();
?>

<main>
    <div id="administration-wrapper" class="border-box">
        <div id="menu-wrapper">
            <div id="top-menu">
                <div id="search-wrapper">
                    <form method="POST">
                        <?php include('../includes/searchfield.php'); ?>
                    </form>
                </div>
                <div id="add-wrapper">
                    <form class="dropdown-form">
                        <label class="standard-label">Lägg till:</label>
                        <ul id="add-options" class="options-dropdown ui-box-shadow">
                            <li class="default"><span>Välj ämne</span>
                                <ul>
                                    <li class="sub-options">Utbildning</li>
                                    <li class="sub-options">Program</li>
                                    <li class="sub-options">Lokal</li>
                                    <li class="sub-options">Anställd</li>
                                    <li class="sub-options">Admin</li>
                                    <li class="sub-options">Lärare</li>
                                    <li class="sub-options">Student</li>
                                </ul>
                            </li>
                        </ul>
                    </form>
                </div>
                <div id="sort-wrapper">
                    <form class="dropdown-form">
                        <label class="standard-label">Sortera efter:</label>
                        <ul id="sort-options" class="options-dropdown ui-box-shadow">
                            <li class="default"><span>A-Ö</span>
                                <ul>
                                    <li class="sub-options">A-Ö</li>
                                    <li class="sub-options">Ö-A</li>
                                </ul>
                            </li>
                        </ul>
                    </form>
                </div>
                <div id="btns-wrapper">
                    <?php include_once('../includes/overviewmenu.php'); ?>
                </div>
            </div>
        </div>
        <div id="table-holder"></div>
        <div id="changes-feed" class="float-right border-box">
            <div class="activity-box">
                <span class="activity-header">
                    <span class="highlight-text">
                        <?php echo $_SESSION['firstname'] . ' ' . $_SESSION['lastname']; ?>
                    </span> lade till ett objekt:
                </span>
                <p class="changes-made">
                    <span class="highlight-text">Christian Hagdorn</span>
                    <span> har lagts till i studenter.</span>
                </p>
                <span class="timestamp">
                    <?php echo date('d-m-y H:i:s'); ?>
                </span>
            </div>
            <div class="activity-box">
                <span class="activity-header">
                    <span class="highlight-text">
                        <?php echo $_SESSION['firstname'] . ' ' . $_SESSION['lastname']; ?>
                    </span> raderade ett objekt:
                </span>
                <p class="changes-made">
                    <span class="highlight-text">Robert Karlsson</span>
                    <span> har tagits bort ur systemet på grund av inaktivitet.</span>
                </p>
                <span class="timestamp">
                    <?php echo date('d-m-y H:i:s'); ?>
                </span>
            </div>
            <div class="activity-box">
                <span class="activity-header">
                    <span class="highlight-text">
                        <?php echo $_SESSION['firstname'] . ' ' . $_SESSION['lastname']; ?>
                    </span> redigerade ett objekt:
                </span>
                <p class="changes-made">
                    <span class="highlight-text">Christoffer Skoghs</span>
                    <span> addressuppgifter har ändrats.</span>
                </p>
                <span class="timestamp">
                    <?php echo date('d-m-y H:i:s'); ?>
                </span>
            </div>
            <div class="activity-box">
                <span class="activity-header">
                    <span class="highlight-text">
                        <?php echo $_SESSION['firstname'] . ' ' . $_SESSION['lastname']; ?>
                    </span> redigerade ett objekt:
                </span>
                <p class="changes-made">
                    <span class="highlight-text">Sibar Al-Ani</span>
                    <span> har utsetts till PHP guru.</span>
                </p>
                <span class="timestamp">
                    <?php echo date('d-m-y H:i:s'); ?>
                </span>
            </div>
            <div class="activity-box">
                <span class="activity-header">
                    <span class="highlight-text">
                        <?php echo $_SESSION['firstname'] . ' ' . $_SESSION['lastname']; ?>
                    </span> lade till ett objekt:
                </span>
                <p class="changes-made">
                    <span class="highlight-text">Kalle Sandin</span>
                    <span> har lagts till i studenter.</span>
                </p>
                <span class="timestamp">
                    <?php echo date('d-m-y H:i:s'); ?>
                </span>
            </div>
            <div class="activity-box">
                <span class="activity-header">
                    <span class="highlight-text">
                        <?php echo $_SESSION['firstname'] . ' ' . $_SESSION['lastname']; ?>
                    </span> raderade ett objekt:
                </span>
                <p class="changes-made">
                    <span class="highlight-text">Charlie Ohlin</span>
                    <span> har tagits bort ur systemet på grund av undviken kontakt.</span>
                </p>
                <span class="timestamp">
                    <?php echo date('d-m-y H:i:s'); ?>
                </span>
            </div>
            <div class="activity-box">
                <span class="activity-header">
                    <span class="highlight-text">
                        <?php echo $_SESSION['firstname'] . ' ' . $_SESSION['lastname']; ?>
                    </span> raderade ett objekt:
                </span>
                <p class="changes-made">
                    <span class="highlight-text">Klas Göran Svenssons</span>
                    <span> uppgifter har ändrats.</span>
                </p>
                <span class="timestamp">
                    <?php echo date('d-m-y H:i:s'); ?>
                </span>
            </div>
        </div>
    </div>
</main>

<?php
    include_footer_files();
?>