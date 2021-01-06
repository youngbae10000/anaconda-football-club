<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>write page</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/starter-template/">
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/write.css" rel="stylesheet">
  </head>
  <body>
    
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">FC ANACONDA</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item active">
          <a class="nav-link" aria-current="page" href="/dashboard">dashboard</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
          <ul class="dropdown-menu" aria-labelledby="dropdown01">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<main class="container">
  <div class="row">
    <h5>게시글 등록</h5>
  </div>

  <a th:action="@{/board/writer}"></a>
  <div class="row">
    <div class="form-group">
      <input type="text" class="form-control" id="boardTitle" placeholder="제목을 입력하세요">
    </div>
  </div>
  <div class="row">
    <div class="form-group">
      <textarea class="form-control" id="boardContent" cols="93" rows="28" placeholder="내용을 입력하세요"></textarea>
    </div>
  </div>

  <div class="row">
    <a href="/" role="button" class="btn btn-secondary">목록</a>
    <button class="btn btn-primary ml-1" id="writerBtn">등록</button>
  </div>
  </div>

</main><!-- /.container -->

<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="js/ajaxBeforeSend.min.js"></script>
<script src="js/writer.min.js"></script>
<script src="js/preventAutoSubmit.min.js"></script>
  </body>
</html>
