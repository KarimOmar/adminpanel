<?php

require_once './config/config.php';
$emp_name = mysql_real_escape_string($_POST['emp_name']);
$emp_sal = $_POST['emp_sal'];
$dept_id = $_POST['dept_id'];

$add_employee = mysql_query("INSERT INTO `employee` (`emp_name`,`emp_sal`,`dept_id`) VALUES ('$emp_name' , '$emp_sal' , '$dept_id')");
if ($add_employee) {
    header("Location:employees.php?msg=1");
} else {
    die(mysql_error());
}
?>
