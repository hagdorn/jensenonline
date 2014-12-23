<?php
    session_start();
	require_once('../includes/functions/functions.php');
    include_header_files();
?>

<main>
    <div id="administration-wrapper" class="border-box">
        <div id="top-menu">
            <form method="POST">
                <?php include('../includes/searchfield.php'); ?> <!-- cannot be include_once -->
            </form>
            <form id="sort-form">
                <label for="sort-options" class="standard-label">Sortera efter:</label>
                <ul id="sort-options">
                    <li id="default"><span>A-Ö</span>
                        <ul>
                            <li class="sub-options">A-Ö</li>
                            <li class="sub-options">Ö-A</li>
                            <li class="sub-options">Klass</li>
                        </ul>
                    </li>
                </ul>
            </form>
            <?php include_once('../includes/overviewmenu.php'); ?>
        </div>
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
                    <span class="highlight-text">Isaac Rooth</span>
                    <span> har tagits bort ur systemet på grund av att det kommer hända förr eller senare.</span>
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