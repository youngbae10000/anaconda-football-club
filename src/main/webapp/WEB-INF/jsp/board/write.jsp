<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>게시글 등록</title>
</head>
<body class="bg-light">

    <th:block th:include="fragments/common/topBar.html"></th:block>

<div class="container">
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

<script src="/static/jquery/jquery-3.5.1.min.js"></script>
<script src="/js/ajaxBeforeSend.min.js"></script>
<script src="/js/writer.min.js"></script>
<script src="/js/preventAutoSubmit.min.js"></script>
</body>
</html>