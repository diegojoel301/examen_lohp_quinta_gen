<?php
    include "header.php";

    if(isset($_GET['page']))
    {
        include $_GET['page'];
    }
    else
    {
        include "home.php";
    }


    include "footer.php";
?>
