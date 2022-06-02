<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Register</title>
</head>
<body>
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
</head>

</head>
<body>
	<div class="container">
		<div class="row col-md-10 col-md-offset-3">

			<div class="card card-body">

				<h2>Admin Login Form</h2>
				<div class="col-md-8 col-md-offset-3">

					<form action="LoginUser" method="post">

						<div class="form-group">
							<label for="uname">User Name:</label> <input type="text"
								class="form-control" id="uname" placeholder="User Name"
								name="uname" required>
						</div>

						<div class="form-group">
							<label for="pass">Password:</label> <input type="password"
								class="form-control" id="pass" placeholder="Password"
								name="pass" required>
						</div>

						<button type="submit" class="btn btn-primary">Login</button>
						
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>