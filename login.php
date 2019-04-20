<?php
include 'includes/dbc.php';
if (isset($_POST) && isset($_POST['doLogin'])) {
	$useremail = filter($_POST['useremail']);
	$pwd = filter($_POST['password']);
	$location = $_POST['station'];
	$area = $_POST['area'];
	$result = mysqli_query($dbcon, "SELECT id, password, first_name, last_name, office, city, user_permission, access_type FROM users WHERE useremail='$useremail'");
	if (mysqli_num_rows($result) < 1) {
		$err[] = "User account dose not exist";
	} else {
		list($id, $password, $first_name, $last_name, $office, $city, $user_permission, $access_type) = mysqli_fetch_row($result);
		if ($password === PwdHash($pwd, substr($password, 0, 9))) {
			$res = mysqli_query($dbcon,"INSERT INTO login_history(userid,log_date,station,area) VALUES('$id',NOW(),'$location','$area')");
			$login_id = MYSQLI_INSERT_ID($dbcon);
			session_start();
			session_regenerate_id(true);
			$_SESSION['user_id'] = $id;
			$_SESSION['login_id'] = $login_id;
			$_SESSION['first_name'] = $first_name;
			$_SESSION['last_name'] = $last_name;
			$_SESSION['office'] = $office;
			$_SESSION['city'] = $city;
			$_SESSION['user_permission'] = $user_permission;
			$_SESSION['access_type'] = $access_type;
			$_SESSION['HTTP_USER_AGENT'] = md5($_SERVER['HTTP_USER_AGENT']);
			header("Location: mis/");
		} else {
			$err[] = "email and password not match";
		}
	}
}
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin Log In</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>USER </b>LOGIN</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your dashboard</p>
    <?php
        if (!empty($err)) {
            foreach ($err as $key => $value) {
                echo '<div class="alert alert-danger alert-dismissible fade in" role="alert"><strong>Error: </strong>' . $value . '</div>';
            }
        }
        ?>
    <form action="" method="post">
      <?php if(isset($_COOKIE["username"])) { echo $_COOKIE["username"]; } ?>
      <div class="form-group has-feedback">
        <input type="email" name="useremail" class="form-control" placeholder="Username" value="<?php if(isset($_COOKIE["username"])) { echo $_COOKIE["username"]; } ?>">
        <?php if(isset($_COOKIE["password"])) { echo $_COOKIE["password"]; } ?>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" name="password" class="form-control" placeholder="Password" value="<?php if(isset($_COOKIE["password"])) { echo $_COOKIE["password"]; } ?>">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="text" name="station" class="form-control" placeholder="Station name" >
        <span class="glyphicon glyphicon-location form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="text" name="area" class="form-control" placeholder="Enter area" >
        <span class="glyphicon glyphicon-location form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox" name="remember"> Remember Me
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <input type="submit" name="doLogin" class="btn btn-primary btn-block btn-flat" value="Sign In">
        </div>
        <!-- /.col -->
      </div>
    </form>

<!--   <div class="social-auth-links text-center">
      <p>- OR -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
        Facebook</a>
      <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
        Google+</a>
    </div> -->
    <!-- /.social-auth-links -->

    <a href="forgot.php">I forgot my password</a><br>
    <!-- <a href="registration.php" class="text-center">Register if new user</a> -->

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>
