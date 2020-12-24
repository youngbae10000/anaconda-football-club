<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>게시글 상세 보기</title>
</head>
<body>
<th:block th:include="fragments/common/topBar.html"></th:block>
<div class="ArticleBtnBox container p-2 mb-2">
    <div class="row">
        <input type="hidden" id="boardSeq" th:value="${boardDetail.getBoardSeq()}">
        <a class="btn btn-outline-primary ml-2 mr-3" th:href="@{'/?page='+${page}}" role="button">목록</a>
        <a class="btn btn-outline-secondary mr-3" th:href="@{'/board/update/' + ${boardDetail.getBoardSeq()}+'?page='+${page}}"
           th:if="${boardDetail.isUpdateDeletePermission()}" role="button">수정</a>
        <a th:action="'/board/delete/'+${boardDetail.getBoardSeq()}" th:method="post"></a>
        <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#delete-board" th:if="${boardDetail.isUpdateDeletePermission()}">삭제</button>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="delete-board" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="boardModalLabel">!</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>게시물을 삭제하시겠습니까?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <a type="button" class="btn btn-danger" th:href="@{'/board/delete/' + ${boardDetail.getBoardSeq()}+'?page='+${page}}" >Delete</a>
            </div>
        </div>
    </div>
</div>

<div class="ArticleContentBox container border shadow-sm">

    <div class="ArticleHeader container p-2 pl-5">
        <div>
            <h3 name="boardTitle" th:text="${boardDetail.getBoardTitle()}"></h3>
        </div>
        <div>
            <span name="boardWriter" th:text="${boardDetail.getBoardWriter()}"></span>
            <span th:text="${boardDetail.getModifiedDate()}"></span>
        </div>

    </div>
    <hr>
    <div class="ArticleContainer">
        <div class="row p-2 pl-5">
            <p style="font-size: 14px" th:utext="${#strings.replace(text, newLineChar, '<br/>')}"
               th:with="text=${boardDetail.getBoardContent()}"></p>
        </div>
        <hr>
        <div class="ArticleContainerReplyWriteBox p-3">
            <div class="row pl-5" th:if="${boardDetail.isReplyButtonPermission()}">
                <textarea class="form-control w-50 col-md-6" id="replyContent0" placeholder="댓글 내용" style="resize: none"></textarea>
                <button class="btn btn-outline-success col-md-1 ml-2" id="newReplySaveBtn">등록</button>
            </div>
            <div th:unless="${boardDetail.isReplyButtonPermission()}">
                <span>로그인 시 댓글 서비스를 이용하실 수 있습니다</span>
            </div>
        </div>
    </div>
    <div class="ArticleBtn">
    </div>
</div>

<div class="ReplayBox container border shadow-sm pt-4 mt-4">

    <ul id="replyList" style="list-style: none;">
    </ul>
    <nav>
        <ul class="pagination" id="pagination">
        </ul>
    </nav>

    <!-- Modal -->
    <div class="modal fade" id="delete-reply" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="replyModalLabel">!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>댓글을 삭제하시겠습니까?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-danger" id="reply-delete-modal-btn" data-dismiss="modal">Delete</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/static/jquery/jquery-3.5.1.min.js"></script>
<script src="/bootstrap-4.5.0/dist/js/bootstrap.js"></script>
<script src="/js/ajaxBeforeSend.min.js"></script>
<script src="/js/reply/replyList.min.js"></script>
<script src="/js/reply/replyCRUD.min.js"></script>
<script src="/js/currentPageEvent.min.js"></script>
</body>
</html>