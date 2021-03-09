    <?php

    session_start(); // Starting Session
    $error = ''; // Variable To Store Error Message

    if (isset($_POST['login'])) 
    {

        if (empty($_POST['email']) || empty($_POST['pass'])) 
        {

            $error = "Email or Password is invalid";
        }

        else
        {

            // Define $username and $password
            $email = $_POST['email'];
            $pass = $_POST['pass'];

            // mysqli_connect() function opens a new connection to the MySQL server.
            $conn = mysqli_connect("localhost", "root", "", "ipl_proj");

            // SQL query to fetch information of registerd users and finds user match.
            $query = "SELECT email, pass from user_cred where email=? AND pass=? LIMIT 1";

            // To protect MySQL injection for Security purpose
            $stmt = $conn->prepare($query);
            $stmt->bind_param("ss", $email, $pass);
            $stmt->execute();
            $stmt->bind_result($email, $pass);
            $stmt->store_result();

            if($stmt->fetch()) //fetching the contents of the row 
            {
                $_SESSION['login_user'] = $email; // Initializing Session
                header("location: homepage.html"); // Redirecting To Profile Page

            }

            else
            {

                $error="Email or Password is invalid";

            }

            mysqli_close($conn); // Closing Connection

        }    

    }
    ?>