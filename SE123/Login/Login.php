<?php include('../Paritial/config.php'); ?>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Login - Food Order Website</title>
		<link rel="stylesheet" href="../Login/login.css" />
	</head>
	<body>
		<div class="center">
			<h1>Login</h1>
			<?php
				if(isset($_SESSION['login']))
                {
                    echo $_SESSION['login'];
                    unset($_SESSION['login']);
                }
				if(isset($_SESSION['no-login-message']))
                {
                    echo $_SESSION['no-login-message'];
                    unset($_SESSION['no-login-message']);
                }
			?>
			<form action="" method="post">
				<div class="txt_field">
					<input type="text" name="username" required />
					<span></span>
					<label>Username</label>
				</div>
				<div class="txt_field">
					<input type="password" name="password" required />
					<span></span>
					<label>Password</label>
				</div>
				<input type="submit" name="submit" value="Login" /> <br /><br />
			</form>
		</div>
	</body>	
</html>

<?php
	
	if(isset($_POST['submit']))
	{
		//Process Login
		//Get Data from Form
		$username = mysqli_real_escape_string($conn, $_POST['username']);
		$raw_password = md5($_POST['password']);
		$password = mysqli_real_escape_string($conn, $raw_password);

		//Check
        $count = 0;
        if($username == 'admin' AND $password = '1')
            $count = 1;

		if($count==1)
		{
			$_SESSION['user'] = $username; //Check whether user logged in 
			//Redirect
			header('location:'.SITEURL.'Dashboard/Dashboard.php');
		}
		else
		{
			$_SESSION['login'] = "<div class='error text-center'>Failed to Login.</div>";
			//Redirect
			header('location:'.SITEURL.'Login/Login.php');
		}
	}	

?>
