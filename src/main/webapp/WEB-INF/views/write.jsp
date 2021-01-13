<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>write page</title>
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/write.css" rel="stylesheet">
  </head>

<body>
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
</main>

<script src="bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="js/write.js"></script>
</body>
</html>
