<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Registration</title>
    <!-- Bootstrap Files -->
	<!-- <link rel="stylesheet" href="css/bootstrap.css"> -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<!-- Stylesheet -->
	<link rel="stylesheet" href="css/style.css">
	<!-- TechSavvy Font -->
	<link href="https://fonts.googleapis.com/css?family=Saira+Stencil+One&display=swap" rel="stylesheet">
	<!-- Headings Blog -->
	<link href="https://fonts.googleapis.com/css?family=Acme&display=swap" rel="stylesheet">
	<!-- Paragraph Blog -->
	<link href="https://fonts.googleapis.com/css?family=Ubuntu+Condensed&display=swap" rel="stylesheet">

	<link href="css/jquery-ui.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
<?php
		// $query = "SELECT * FROM admin_users WHERE username = '$username' AND password = '$password'";
		// $execution = mysqli_query($db, $query) or die(mysqli_error($db));
		// if($result = mysqli_fetch_assoc($execution))
		// {
		// 	$_SESSION['user_id'] = $result['id'];
		// 	$_SESSION['username'] = $result['username'];
		// 	$_SESSION['name'] = $result['name'];
		// 	header("Location: dashboard.php");  
		// }
		// else
		// {
		// 	echo '<script>alert("Username/Password is Invalid")</script>';
		// }
    require('db.php');
    // When form submitted, insert values into the database.
    if (isset($_REQUEST['username'])) {
        // removes backslashes
        $username = stripslashes($_REQUEST['username']);
        //escapes special characters in a string
        $username = mysqli_real_escape_string($db, $username);
        $name    = stripslashes($_REQUEST['name']);
        $name    = mysqli_real_escape_string($db, $name);
        $password = stripslashes($_REQUEST['password']);
        $password = mysqli_real_escape_string($db, $password);
        $query    = "INSERT into `admin_users` (username, password, name,admindate)
                     VALUES ('$username', '$password', '$name',CURRENT_DATE())";
        $execution = mysqli_query($db, $query) or die(mysqli_error($db));
        

        if ($execution) {
            echo "<div class='form'>
                  <h3>You are registered successfully.</h3><br/>
                  <p class='link'>Click here to <a href='user/index.php'>Login</a></p>
                  </div>";
        } else {
            echo "<div class='form'>
                  <h3>Required fields are missing.</h3><br/>
                  <p class='link'>Click here to <a href='registration.php'>registration</a> again.</p>
                  </div>";
        }
    } else {
?>
    <div class="d-flex justify-content-center m-5">
    <div class="card">
    <div class="card-body">
    <form class="form" action="" method="post">
        <h1 class="login-title">Registration</h1>
        <input type="text" class="login-input form-control mb-3 mt-3" name="username" placeholder="Username" required />
        <input type="text" class="login-input form-control mb-3 mt-3" name="name" placeholder="Name">
        <input type="password" class="login-input form-control mb-3 mt-3" name="password" placeholder="Password">
        <div class="d-flex justify-content-center">
            <div>
        <input type="submit" name="submit form-control mb-3 mt-3" value="Register" class="login-button btn btn-primary">
        <p class="link mt-2">Already a registered user ? <a href="index.php">Click here to login !</a></p>
    </div>
        </div>
    </form>
  </div>
    
    </div>
    </div>
<?php
    }
?>
</body>
</html>