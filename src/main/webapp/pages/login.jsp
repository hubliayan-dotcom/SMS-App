<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<div class="card bg-dark">
 <marquee class="text-danger mb-3 fs-1 ">
 ${login_fail}
 </marquee>
</div>
 <div class="container">
 <div class="d-flex justify-content-center align-items-center vh-100">
 <div class="card shadow rounded-4 bg-dark" style="width: 22rem;">
 <div class="card-body">
 <h3 class="card-title text-center mb-3 text-white">Login</h3>
 <form action = "login">
 <!-- Username -->
 <div class="mb-3">
 <label for="username" class="form-label text-white">Username</label>
 <input type="text" class="form-control" id="username"
 placeholder="Enter username" name="username" required >
 </div>
 <!-- Password -->
 <div class="mb-3">
 <label for="password" class="form-label text-white">Password</label>
 <input type="password" class="form-control" id="password"
 placeholder="Enter password" name="password"  required>
 </div>
 <!-- Button -->
 <div class="d-grid">
 <button type="submit" class="btn btn-primary">Login</button>
 </div>
 </form>
 </div>
 </div>
 </div>
 </div>
</body>
</html>


</body>
</html>