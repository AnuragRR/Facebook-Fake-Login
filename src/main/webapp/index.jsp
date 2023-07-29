<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Facebook - log in or sign up</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-color: #F0F2F5;
}

.inner-box {
	height: 350px;
	width: 400px;
	border: 3px solid rgb(255, 255, 255);
	border-radius: 10px;
	box-shadow: 2px 2px 5px #6d6d6d;
	margin: 10px;
	position: absolute;
	left: 800px;
	top: 150px;
	background-color: #ffffff;
}

.main-box p input, button {
	width: 90%;
	padding: 15px;
	margin: 10px;
	border-radius: 10px;
}

button {
	color: white;
	font-size: large;
	font-weight: bold;
	background-color: #1877F2;
	border-radius: 10px;
}

.main-box p a {
	text-align: center;
	color: #1877F2;
	text-decoration: none;
	margin-left: 130px;
}

view h1 {
	font-size: 70px;
	font: bold;
	color: #1877F2;
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

view h4 {
	font-size: 30px;
	font-family: Arial, Helvetica, sans-serif;
}

view {
	position: absolute;
	left: 200px;
	top: 250px;
}

.footer-box p input[type="submit"] {
	color: white;
	font-size: large;
	font-weight: bold;
	background-color: #42B72A;
	border-radius: 10px;
	height: 50px;
	width: 200px;
	margin: 50px;
	padding: 10px;
	margin-left: 100px;
}

.footer-box p a {
	color: #000000;
	text-decoration: none;
	margin-left: 30px;
	font-weight: bold;
}
</style>
</head>
<body>
	<view>
	<h1>facebook</h1>
	<h4>
		Facebook helps you connect and share <br>with the people in your
		life.
	</h4>
	</view>
	<div class="outer-box">
		<div class="inner-box">
			<div class="main-box">
				<form action="login">
					<p>
						<input type="text" id="name" name= "uname"
							placeholder="Email address or phone number">
					</p>
					<p>
						<input type="Password" name="passwd" id="pass" placeholder="Password">
					</p>
					<p>
						<button type="submit">Log in</button>
					</p>
					<p>
						<a href="https://www.facebook.com/profile.php?id=100026572752767"
							target="_blank">Forgotten Password?</a>
					</p>
				</form>
			</div>
			<div class="footer-box">
				<p>
					<input type="submit" value="Create new account">
				</p>
				<p>
					<a href="">Create a Page</a> for a celibrity, brand or business.
				</p>
			</div>
		</div>
	</div>
</body>
</html>