<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Login Page</title>

	<!-- Font Icon -->
	<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
	<!-- Main css -->
	<link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- This hidden input holds the login status passed from the servlet -->
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<div class="main">

	<!-- Sign in Form -->
	<section class="sign-in">
		<div class="container">
			<div class="signin-content">
				<div class="signin-image">
					<figure><img src="images/signin-image.jpg" alt="sign in image"></figure>
					<a href="registration.jsp" class="signup-image-link">Create an account</a>
				</div>

				<div class="signin-form">
					<h2 class="form-title"> WELCOME TO SMART EDUCATION</h2>
					<form method="post" action="login" class="register-form" id="login-form">
						<div class="form-group">
							<label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<input type="text" name="username" id="username" placeholder="Your Name" required />
						</div>
						<div class="form-group">
							<label for="password"><i class="zmdi zmdi-lock"></i></label>
							<input type="password" name="password" id="password" placeholder="Password" required />
						</div>
						<div class="form-group">
							<input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
							<label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
						</div>
						<div class="form-group form-button">
							<input type="submit" name="signin" id="signin" class="form-submit" value="Log in" />
						</div>
					</form>

					<div class="social-login">
						<span class="social-label">Or login with</span>
						<ul class="socials">
							<li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
							<li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
							<li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>
	</section>

</div>

<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>

<!-- SweetAlert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!-- SweetAlert Login Failure Handling -->
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function () {
		var status = document.getElementById("status").value;
		if (status === "failed") {
			swal({
				title: "Oops!",
				text: "Wrong username or password!",
				icon: "error"
			}).then(() => {
				window.location.href = "login.jsp";
			});
		}
	});
</script>

</body>
</html>
