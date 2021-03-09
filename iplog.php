<?php
session_start();

$error=array();
$conn=mysqli_connect("localhost","root","","ipl_proj");
if (isset($_POST['login'])) 
{

    $pass = $_POST['pass'];
    $email = $_POST['email'];
    $query = "select * from user_cred where email = '".$email."' AND pass = '".$pass."' limit 1; ";
    $result = mysqli_query($conn,$query);

    
    if(mysqli_num_rows($result)==1)
    {

       echo nl2br("\n\nHello User");
       header('location: homepage.html');
        //echo login;
       exit();

   }

    else
    {

    echo nl2br("\n\nError while login due to incorrect details!!! ");
    echo "0 rows return";
    exit();

    }
    
}
?>