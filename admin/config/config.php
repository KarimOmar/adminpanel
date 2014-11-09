<?php

$connection = mysql_connect("localhost", "root", "");
if (!$connection) {
    die("Database connection failed" . mysql_error());
}

$db_select = mysql_select_db("hr-system", $connection);
if (!$db_select) {
    die("Selected Database failed" . mysql_error());
}

mysql_query("SET NAMES 'utf8'");
?>