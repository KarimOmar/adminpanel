<?php

require_once './config/config.php';
$emp_id = mysql_real_escape_string($_POST['emp_id']);
$emp_name = mysql_real_escape_string($_POST['emp_name']);
$emp_sal = mysql_real_escape_string($_POST['emp_sal']);
$dept_id = mysql_real_escape_string($_POST['dept_id']);

$update_emp = mysql_query("UPDATE `employee` SET `emp_name` = '$emp_name' , `emp_sal` = '$emp_sal' , `dept_id` = '$dept_id' WHERE `emp_id` = '$emp_id'");

if ($update_emp) {
    header("Location:employees.php?msg=4");
} else {
    die(mysql_error());
}
