<?php
include "config.php";

$mail = mysqli_real_escape_string($con,$_POST['mail']);
$password = mysqli_real_escape_string($con,$_POST['password']);


if ($mail != "" && $password != ""){

    $sql_query = "SELECT count(*) as cntUser FROM users WHERE email='".$mail."' and password='".$password."'";
    //echo '$sqlquery is ' . $sql_query . '<br>';
    $result = mysqli_query($con,$sql_query);
    //echo '$result is :';
    //var_dump($result);
    $row = mysqli_fetch_array($result);
    //echo 'row is : ';
    //var_dump($row);


    $count = $row['cntUser'];
    //echo 'count is ' . $count;

    if($count > 0){
        $_SESSION['mail'] = $mail;
        echo 1;
    }else{
        echo 0;
    }

}