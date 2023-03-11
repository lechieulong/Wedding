<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
}

.container {
	display: flex;
	width: 100ch;
	margin: 0 auto;
	padding: 0 40px 0 40px;
	background-color: #fff;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	justify-content: center;
	align-items: center;
	gap: 2rem;
	margin-top: 60px;
}

form {
	width: 500px;
}

h1 {
	width: 22ch;
	font-family: monospace;
	overflow: hidden;
	border-right: 4px solid #36f0ed;
	border-bottom: 4px solid #36f0ed;
	white-space: nowrap;
	color: #000;
	text-align: center;
	margin-bottom: 20px;
	margin-top: 15px;
	padding: 10px;
	animation: typing 3s steps(18), cursor 0.75s step-start infinite;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="text"], input[type="date"], textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-bottom: 20px;
	box-sizing: border-box;
	font-size: 16px;
}

input[type="file"] {
	margin-bottom: 10px;
}

.btn {
	width:100%;
	padding: 15px 20px;
	background-color: #f55d5d;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
	transition: background-color 0.3s ease;
	display: block;
	margin: auto;
}

.btn:hover {
	background-color: #e24949;
	cursor: pointer;
}

@keyframes cursor { 
		0%{
			border-color: #36f0ed;
		}
		
		50%{
			border-color:transparent;
		}
		100%{
		border-color:#36f0ed;
		}
}
@keyframes typing {
	from { 
		width:0%; 
	}
}
</style>
    <body> 
        <div class="container">
            <img alt="" src="images/undraw_wedding_re_66hj.svg">
            <form>
                <h1>EDIT INFORMATION</h1>
                <label for="bride_name">Bride's full name:</label> <input type="text"
                                                                          id="bride_name" name="bride_name" required> <label
                                                                          for="groom_name">Groom's full name:</label> <input type="text"
                                                                          id="groom_name" name="groom_name" required> <label
                                                                          for="wedding_date">Wedding day:</label> <input type="date"
                                                                          id="wedding_date" name="wedding_date" required> <label
                                                                          for="caption">Caption:</label> <input type="text" id="caption"
                                                                          name="caption"> <label for="description">Description:</label>
                <textarea id="description" name="description"></textarea>

                <label for="banner">Banner photo:</label> <input type="file"
                                                                 id="banner" name="banner" accept="image/*"> <label
                                                                 for="photos">List of wedding photos:</label> <input type="file" id="photos"
                                                                 name="photos" multiple accept="image/*">

                <button type="submit" class="btn">Confirm</button>
            </form>
        </div>
    </body>
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