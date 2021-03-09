<?php
session_start();

$username="";
$gender="";
$email="";
$mob="";
$pass="";
$con_pass="";
$m="M";
$male="MALE";
$f="F";
$female="FEMALE";

$errors= array();  

$conn = mysqli_connect("localhost","root","","ipl_proj");  

if(isset($_POST['signup']))  // button name
{

    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $gender = mysqli_real_escape_string($conn, $_POST['gender']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $mob = mysqli_real_escape_string($conn, $_POST['mob']);
    $pass = mysqli_real_escape_string($conn, $_POST['pass']);
    $con_pass = mysqli_real_escape_string($conn, $_POST['con_pass']);

    if(empty($username))
    {

        echo nl2br("\n\nUsername  is required") ;

    }

    if(empty($gender))
    {

        echo nl2br("\n\nGender  is required");

    }

    if(empty($email))
    {

        echo nl2br("\n\nEmail-ID  is required");

    }

    if(empty($mob))
    {

        echo nl2br("\n\nMobile-Number  is required");

    }

    if(empty($pass))
    {

        echo nl2br("\n\nPassword is required");

    }

    if($pass != $con_pass)
    {

        echo nl2br("\n\nPasswords does not match");


    }

    

    if($pass == $con_pass && !empty($username) && !empty($gender) && !empty($email) && !empty($mob) && !empty($pass) && !empty($con_pass))  
    {

     
        $sql = "INSERT INTO user_cred(username,gender,email,mob,pass)    
        VALUES ('$username','$gender','$email','$mob','$pass')";  
        $stmtinsert = $conn->prepare($sql);
        $result = $stmtinsert->execute();
        echo "\n" ;
        echo 'Successfully Registered';
        header('location: homepage.html');

    }    
 
    else
    {
        
        echo nl2br("\n\nError while registering!!!");

    }

    $_SESSION['username']= $username;
    $_SESSION['success']= "you are successfully logged in";  



}
?>