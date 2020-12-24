<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Sign Up</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">
    <link href="resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/form-validation.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container">
    <main>
        <div class="row g-3">
            <div class="col-md-7 col-lg-8">
                <h4 class="mb-3">Sign Up</h4>
                <form class="needs-validation" novalidate>
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="firstName" class="form-label">이름</label>
                            <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                            <div class="invalid-feedback"> Enter your name </div>
                            <div class="invalid-feedback"> Valid first name is required. </div>
                        </div>

                        <div class="col-12">
                            <label for="username" class="form-label">User ID</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="username" placeholder="Username" required>
                                <div class="invalid-feedback"> Enter Your ID </div>
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" placeholder="you@example.com">
                            <div class="invalid-feedback"> Enter password </div>
                        </div>

                        <div class="col-12">
                            <label for="address2" class="form-label">Password</label>
                            <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
                        </div>
                    </div>
                    <button class="w-100 btn btn-primary btn-lg" type="submit">Sign Up</button>
                </form>
            </div>
        </div>
    </main>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">2020 Company Name</p>
    </footer>
</div>
<script src="resources/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="resources/js/form-validation.js"></script>
</body>
</html>
