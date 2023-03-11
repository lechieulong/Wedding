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

.container1 {
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
        <div class="container1">
            <img alt="" src="images/undraw_wedding_re_66hj.svg">
            <form>
                <h1>Wedding registration</h1>
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
</html>