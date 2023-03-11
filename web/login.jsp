<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Animated Login Form</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a81368914c.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/form.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<style>
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap")
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body, input {
	font-family: "Poppins", sans-serif;
}

.container {
	position: relative;
	width: 100%;
	background-color: #fff;
	min-height: 100vh;
	overflow: hidden;
}

.forms-container {
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
}

.signin-signup {
	position: absolute;
	top: 50%;
	transform: translate(-50%, -50%);
	left: 75%;
	width: 50%;
	transition: 1s 0.7s ease-in-out;
	display: grid;
	grid-template-columns: 1fr;
	z-index: 5;
}

form {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0rem 5rem;
	transition: all 0.2s 0.7s;
	overflow: hidden;
	grid-column: 1/2;
	grid-row: 1/2;
}

form.sign-up-form {
	opacity: 0;
	z-index: 1;
}

form.sign-in-form {
	z-index: 2;
}

.title {
	font-size: 2.2rem;
	color: #444;
	margin-bottom: 10px;
}

.input-field {
	max-width: 380px;
	width: 100%;
	background-color: #f0f0f0;
	margin: 10px 0;
	height: 55px;
	border-radius: 55px;
	display: grid;
	grid-template-columns: 15% 85%;
	padding: 0 0.4rem;
	position: relative;
}

.input-field i {
	text-align: center;
	line-height: 55px;
	color: #acacac;
	transition: 0.5s;
	font-size: 1.1rem;
}

.input-field input {
	background: none;
	outline: none;
	border: none;
	line-height: 1;
	font-weight: 600;
	font-size: 1.1rem;
	color: #333;
}

.input-field input::placeholder {
	color: #aaa;
	font-weight: 500;
}

.social-text {
	padding: 0.7rem 0;
	font-size: 1rem;
}

.social-media {
	display: flex;
	justify-content: center;
}

.social-icon {
	height: 46px;
	width: 46px;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 0 0.45rem;
	color: #333;
	border-radius: 50%;
	border: 1px solid #333;
	text-decoration: none;
	font-size: 1.1rem;
	transition: 0.3s;
}

.social-icon:hover {
	color: #4481eb;
	border-color: #4481eb;
}

.btn {
	width: 150px;
	background-color: #5995fd;
	border: none;
	outline: none;
	height: 49px;
	border-radius: 49px;
	color: #fff;
	text-transform: uppercase;
	font-weight: 600;
	margin: 10px 0;
	cursor: pointer;
	transition: 0.5s;
}

.btn:hover {
	background-color: #4d84e2;
}

.panels-container {
	position: absolute;
	height: 100%;
	width: 100%;
	top: 0;
	left: 0;
	display: grid;
	grid-template-columns: repeat(2, 1fr);
}

.container:before {
	content: "";
	position: absolute;
	height: 2000px;
	width: 2000px;
	top: -10%;
	right: 48%;
	transform: translateY(-50%);
	background-image: linear-gradient(-45deg, #4481eb 0%, #04befe 100%);
	transition: 1.8s ease-in-out;
	border-radius: 50%;
	z-index: 6;
}

.image {
	width: 100%;
	transition: transform 1.1s ease-in-out;
	transition-delay: 0.4s;
}

.panel {
	display: flex;
	flex-direction: column;
	align-items: flex-end;
	justify-content: space-around;
	text-align: center;
	z-index: 6;
}

.left-panel {
	pointer-events: all;
	padding: 3rem 17% 2rem 12%;
}

.right-panel {
	pointer-events: none;
	padding: 3rem 12% 2rem 17%;
}

.panel .content {
	color: #fff;
	transition: transform 0.9s ease-in-out;
	transition-delay: 0.6s;
}

.panel h3 {
	font-weight: 600;
	line-height: 1;
	font-size: 1.5rem;
}

.panel p {
	font-size: 0.95rem;
	padding: 0.7rem 0;
}

.btn.transparent {
	margin: 0;
	background: none;
	border: 2px solid #fff;
	width: 130px;
	height: 41px;
	font-weight: 600;
	font-size: 0.8rem;
}

.right-panel .image, .right-panel .content {
	transform: translateX(800px);
}

/* ANIMATION */
.container.sign-up-mode:before {
	transform: translate(100%, -50%);
	right: 52%;
}

.container.sign-up-mode .left-panel .image, .container.sign-up-mode .left-panel .content
	{
	transform: translateX(-800px);
}

.container.sign-up-mode .signin-signup {
	left: 25%;
}

.container.sign-up-mode form.sign-up-form {
	opacity: 1;
	z-index: 2;
}

.container.sign-up-mode form.sign-in-form {
	opacity: 0;
	z-index: 1;
}

.container.sign-up-mode .right-panel .image, .container.sign-up-mode .right-panel .content
	{
	transform: translateX(0%);
}

.container.sign-up-mode .left-panel {
	pointer-events: none;
}

.container.sign-up-mode .right-panel {
	pointer-events: all;
}

@media ( max-width : 870px) {
	.container {
		min-height: 800px;
		height: 100vh;
	}
	.signin-signup {
		width: 100%;
		top: 95%;
		transform: translate(-50%, -100%);
		transition: 1s 0.8s ease-in-out;
	}
	.signin-signup, .container.sign-up-mode .signin-signup {
		left: 50%;
	}
	.panels-container {
		grid-template-columns: 1fr;
		grid-template-rows: 1fr 2fr 1fr;
	}
	.panel {
		flex-direction: row;
		justify-content: space-around;
		align-items: center;
		padding: 2.5rem 8%;
		grid-column: 1/2;
	}
	.right-panel {
		grid-row: 3/4;
	}
	.left-panel {
		grid-row: 1/2;
	}
	.image {
		width: 200px;
		transition: transform 0.9s ease-in-out;
		transition-delay: 0.6s;
	}
	.panel .content {
		padding-right: 15%;
		transition: transform 0.9s ease-in-out;
		transition-delay: 0.8s;
	}
	.panel h3 {
		font-size: 1.2rem;
	}
	.panel p {
		font-size: 0.7rem;
		padding: 0.5rem 0;
	}
	.btn.transparent {
		width: 110px;
		height: 35px;
		font-size: 0.7rem;
	}
	.container:before {
		width: 1500px;
		height: 1500px;
		transform: translateX(-50%);
		left: 30%;
		bottom: 68%;
		right: initial;
		top: initial;
		transition: 2s ease-in-out;
	}
	.container.sign-up-mode:before {
		transform: translate(-50%, 100%);
		bottom: 32%;
		right: initial;
	}
	.container.sign-up-mode .left-panel .image, .container.sign-up-mode .left-panel .content
		{
		transform: translateY(-300px);
	}
	.container.sign-up-mode .right-panel .image, .container.sign-up-mode .right-panel .content
		{
		transform: translateY(0px);
	}
	.right-panel .image, .right-panel .content {
		transform: translateY(300px);
	}
	.container.sign-up-mode .signin-signup {
		top: 5%;
		transform: translate(-50%, 0);
	}
}

@media ( max-width : 570px) {
	form {
		padding: 0 1.5rem;
	}
	.image {
		display: none;
	}
	.panel .content {
		padding: 0.5rem 1rem;
	}
	.container {
		padding: 1.5rem;
	}
	.container:before {
		bottom: 72%;
		left: 50%;
	}
	.container.sign-up-mode:before {
		bottom: 28%;
		left: 50%;
	}
}
</style>
<body>
        <header id="header">
		<h1>
			<a href="index.jsp">Future Imperfect</a>
		</h1>
		<nav class="links">
			<ul>
				<li><a href="#">LIVE</a></li>
				<li><a href="register.jsp">REGISTER SERVICE</a></li>
				<li><a href="#" id="js-form-regis">MANAGE TRANSACTION</a></li>
				<li><a href="#" class="js-account-topup" onclick="display5()">ACCOUNT
						TOP-UP</a></li>
				<li><a href="login.jsp">LOGIN</a></li>
				<li><a href="#">LOGOUT</a></li>
			</ul>
		</nav>
		<nav class="main">
			<ul>
				<li class="search"><a class="fa-search" href="#search">Search</a>
					<form id="search" method="get" action="#">
						<input type="text" name="query" placeholder="Search" />
					</form></li>
				<li class="menu"><a href="#menu"> Menu <i
						class="fa-thin fa-bars"></i>
				</a></li>
			</ul>
		</nav>
	</header>

	<!-- Menu -->
	<section id="menu">

		<!-- Search -->
		<section>
			<form class="search" method="get" action="#">
				<input type="text" name="query" placeholder="Search" />
			</form>
		</section>

		<!-- Links -->
		<section>
			<ul class="links">
				<li><a href="#">
						<h3>Lorem ipsum</h3>
						<p>Feugiat tempus veroeros dolor</p>
				</a></li>
				<li><a href="#">
						<h3>Dolor sit amet</h3>
						<p>Sed vitae justo condimentum</p>
				</a></li>
				<li><a href="#">
						<h3>Feugiat veroeros</h3>
						<p>Phasellus sed ultricies mi congue</p>
				</a></li>
				<li><a href="#">
						<h3>Etiam sed consequat</h3>
						<p>Porta lectus amet ultricies</p>
				</a></li>
			</ul>
		</section>

		<!-- Actions -->
		<section>
			<ul class="actions stacked">
				<li><a href="login.jsp" class="button large fit">Log In</a></li>
			</ul>
		</section>
	</section>
        <div class="modal-top-up" id="modal-top-up">
		<div class="modal-content-top-up">
			<div class="modal-header">
				<h2 class="center">Top-up</h2>
				<span class="modal-close-top-up">X</span>
			</div>
			<div class="modal-body">
				<label for="amount">Amount to top-up:</label> <input type="number"
					id="amount" name="amount"><br> <br>

			</div>
			<div class="modal-footer">
				<button type="submit">Top-up</button>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="forms-container">
			<div class="signin-signup" style="display: flex;">
				<form action="#" class="sign-in-form" style="padding: 40px;border: 5px #d33 solid; margin-left: 50px;">
					<h2 class="title">Sign in</h2>
					<div class="input-field">
						<i class="fas fa-user"></i> <input type="text"
							placeholder="Username" />
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password"
							placeholder="Password" />
					</div>
					<input type="submit" value="Login" class="btn solid" /> 
				</form>
				<form action="#" class="sign-up-form" style="padding: 40px;border: 5px #d33 solid;margin-right: 50px;">
					<h2 class="title">Sign up</h2>
					
					<div class="input-field">
						<i class="fas fa-user"></i> <input type="text"
							placeholder="Username" />
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password"
							placeholder="Password" />
					</div>
					<div class="input-field">
						<i class="fas fa-envelope"></i> <input type="email"
							placeholder="Email" />
					</div>
					<div class="input-field">
						<i class="fa fa-mobile-phone" style="font-size:30px; "></i> <input type="number"
							placeholder="Phone" />
					</div>
					<input type="submit" class="btn" value="Sign up" /> 
					
				</form>
			</div>
		</div>

		<div class="panels-container">
			<div class="panel left-panel">
				<div class="content"> 
				<img alt="" src="images/undraw_wedding_re_66hj.svg" style="margin-bottom: 70px;margin-right: 50px;">
					<button class="btn transparent" id="sign-up-btn" style="padding-bottom: 58px;">Sign up</button>
				</div>
				<img src="img/log.svg" class="image" alt="" />
			</div>
			<div class="panel right-panel">
				<div class="content">
				<img alt="" src="images/undraw_love_re_mwbq.svg" style="width: 400px;margin-bottom: 18px; margin-left: 100px;">
					<button class="btn transparent" id="sign-in-btn" style="padding-bottom: 58px;">Sign in</button>
				</div>
				<img src="img/register.svg" class="image" alt="" />
			</div>
		</div>
	</div>

	
</body>
	<!-- Scripts -->
        <script src="app.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/atm.js"></script>

	<script>
		function display() {
			var modal = document.getElementById("donate-modal");
			var closeButton = document
					.getElementsByClassName("donate-modal-close")[0];

			modal.style.display = "block";

			closeButton.onclick = function() {
				modal.style.display = "none";
			}

			window.onclick = function(event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		}

		var atmButton = document.querySelector(".js-ATM");
		atmButton.addEventListener("click", display);
	</script>
	<script>
		function countdown() {
			var destination = new Date("2023-03-10 12:00:00").getTime();
			var now = new Date().getTime();
			var distance = now - destination;

			var days = Math.floor(distance / (1000 * 60 * 60 * 24));
			var hours = Math.floor((distance % (1000 * 60 * 60 * 24))
					/ (1000 * 60 * 60));
			var minutes = Math.floor((distance % (1000 * 60 * 60))
					/ (1000 * 60));
			var seconds = Math.floor((distance % (1000 * 60)) / 1000);
			if (days < 0) {
				days = -days;
				var sign = "-";
			}
			if (hours < 0) {
				hours = -hours;
				var sign = "-";
			}
			if (minutes < 0) {
				minutes = -minutes;
				var sign = "-";
			}
			if (seconds < 0) {
				seconds = -seconds;
				var sign = "-";
			}
			document.getElementById("countdown").innerHTML = days + " ngày, "
					+ hours + " giờ, " + minutes + " phút, " + seconds
					+ " giây";
		}

		setInterval(countdown, 1000);

		function getCurrentTime() {
			var now = new Date();
			var date = now.getDate();
			var month = now.getMonth() + 1;
			var year = now.getFullYear();
			var hours = now.getHours();
			var minutes = now.getMinutes();
			var seconds = now.getSeconds();
			document.getElementById("current-time").innerHTML = year + "-"
					+ month + "-" + date + " " + hours + ":" + minutes + ":"
					+ seconds;
		}

		setInterval(getCurrentTime, 1000);
	</script>

	<script>
		function showTopUp() {
			var modal1 = document.getElementById("modal-top-up");
			var closeButton1 = document
					.getElementsByClassName("modal-close-top-up")[0];

			modal1.style.display = "flex";

			closeButton1.onclick = function() {
				modal1.style.display = "none";
			}

			window.onclick = function(event) {
				if (event.target == modal1) {
					modal1.style.display = "none";
				}
			}
		}

		var accountTopupBtn = document.querySelector(".js-account-topup");
		accountTopupBtn.addEventListener("click", showTopUp);
	</script>
	<script>
		function scrollToComment() {
			var commentInput = document.querySelector("#comment-input");
			commentInput.scrollIntoView({
				behavior : "smooth"
			});
		}
	</script>

</html>