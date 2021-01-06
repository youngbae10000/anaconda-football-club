<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>게시글 상세 보기</title>
</head>
<body class="bg-light">
<div class="container">
    <div class="row">
        <h5>게시글 수정</h5>
    </div>
        <input type="hidden" id="page" th:value="${page}"/>
        <a th:action="'/board/detail/'+${board.getBoardSeq()}"></a>
        <input type="hidden" id="boardSeq" th:value="${board.getBoardSeq()}">
        <div class="row">
            <div class="form-group">
                <input type="text" class="form-control" id="boardTitle" th:value="${board.getBoardTitle()}">
            </div>
        </div>

        <div class="row">
            <div class="form-group">
                <textarea class="form-control" cols="93" rows="28" id="boardContent" th:text="${board.getBoardContent()}"/></textarea>
            </div>
        </div>

        <div class="row">
            <a class="btn btn-outline-primary" th:href="@{/}" role="button">목록</a>
            <button class="btn btn-outline-secondary" id="updateBtn">수정 완료</button>
        </div>
</div>
</body>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="js/ajaxBeforeSend.min.js"></script>
<script src="js/update.min.js"></script>
</html>