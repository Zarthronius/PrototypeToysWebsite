<!--
Task 6 - Credits page
1.	Create a web page that identifies you (include your name and student ID) and credits all the sources of material either: used specifically as a component within your site; or, which contributed to the overall development of your work (e.g. books, web sites).

Please credit ALL sources using the Harvard referencing method that you use for anything, i.e. photos, graphics, logos, widgets, text, books, web sites etc. If you have created graphics or taken photos yourself, please credit yourself. Please note that we are aware that there are sites on the Internet that provide code. Do NOT submit code from other people or web sources as your own, this is academic misconduct. The module team are aware of such sources. We realise that the Internet coding community encourages sharing and re-use of code. The purpose of this assignment is to show us what YOU can do not that you can copy somebody else's code. 
-->
<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">    
    <title>Credits</title>    
</head>
<body>
    <header>
        <h1>Credits</h1>
    </header>
    <?php
        require_once('functions.php');
        echo createNav();
    ?>
    <main>
    <?php if (check_login()){
        echo "<p><a href='logout.php'>Click here to log out</a></p>";
        } else {
        echo createLoginForm();
        }
    ?>
    <h2>ME:</h2>
    <p><strong>Name:</strong> Zackary Allen</p>
    <p><strong>Student ID:</strong> W20016567</p>
    <h2>References</h2>
    <p>Reference here</p>
    <p>Reference here</p>
    <p>Reference here</p>
    <p>...</p>
    <!--<p><a href="index.php">Go to Home page</a></p>-->
    </main>
</body>
</html>