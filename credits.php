<!--
Task 6 - Credits page
1.	Create a web page that identifies you (include your name and student ID) and credits all the sources of material either: used specifically as a component within your site; or, which contributed to the overall development of your work (e.g. books, web sites).

Please credit ALL sources using the Harvard referencing method that you use for anything, i.e. photos, graphics, logos, widgets, text, books, web sites etc. If you have created graphics or taken photos yourself, please credit yourself. Please note that we are aware that there are sites on the Internet that provide code. Do NOT submit code from other people or web sources as your own, this is academic misconduct. The module team are aware of such sources. We realise that the Internet coding community encourages sharing and re-use of code. The purpose of this assignment is to show us what YOU can do not that you can copy somebody else's code. 
-->
<?php
ini_set("session.save_path", "/home/unn_w20016567/sessionData");
session_start();

require_once('functions.php');
echo makePageStart("Credits","stylesheet.css");
echo makeHeader("Credits");
echo makeNavMenu("Pages", array("index.php" => "Home", "admin.php" => "Admin", "orderToysForm.php" => "Order", "credits.php" => "Credits"));
echo startAside();
if (check_login()){
    echo makeLogout();
    } else {
    echo createLoginForm();
    }
echo endAside();
echo startMain();
?>
<h2>ME:</h2>
<p><strong>Name:</strong> Zackary Allen</p>
<p><strong>Student ID:</strong> W20016567</p>
<h2>References</h2>
<p>Reference here</p>
<p>Reference here</p>
<p>Reference here</p>
<p>...</p>
<?php
echo endMain();
echo makeFooter("This is a fictional site for Northumbria Toys Limited.");
echo makePageEnd();
?>