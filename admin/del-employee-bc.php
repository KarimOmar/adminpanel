<?php

require_once './config/config.php';
if (isset($_GET['emp_id']) && $_GET['emp_id'] != '') {
    $emp_id = mysql_real_escape_string($_GET['emp_id']);
    $emp_exist = mysql_query("SELECT `emp_id` FROM `employee` WHERE `emp_id` = '$emp_id' ");
    if (mysql_num_rows($emp_exist) > 0) {
        $del_emp = mysql_query("DELETE FROM `employee` WHERE `emp_id` = '$emp_id'");
        if ($del_emp) {
            header("Location:employees.php?msg=5");
        } else {
            die(mysql_error());
        }
    } else {
        header("Location:employees.php?msg=3");
    }
} else {
    header("Location:employees.php?msg=2");
}

