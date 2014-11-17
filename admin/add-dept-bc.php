<?php
require_once './config/config.php';
$dept_name =  mysql_real_escape_string($_POST['dept_name']);
$add_dept=  mysql_query("INSERT INTO `department` (`dept_name`) VALUES ('$dept_name')");
if ($add_dept){
    header("location:department.php");
}
else {
    die (mysql_error());
}


?>