<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Page</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
    <link href="bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
</head>
<body class="text-center">

<main class="form-signin">
    <form action="/user/login" method="post">
        <label for="id" class="visually-hidden">ID</label>
        <input type="text" id="id" name="id" class="form-control" placeholder="ID" required autofocus>
        <label for="password" class="visually-hidden">Password</label>
        <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit">login</button>
    </form>
</main>
</body>
</html>
