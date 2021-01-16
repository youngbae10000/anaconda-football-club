<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>게시글 수정 하기</title>
</head>
<body>

<div class="container-fluid">
    <div class="btn-toolbar">
        <h1 class="h2">Dashboard</h1>
        <a type="button" class="btn btn-outline-primary" href="dashboard">목록</a>
        <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteModal">삭제</button>

        <!-- Modal -->
        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <a type="button" class="btn btn-danger"
                           href="delete?idx=${board.boardIdx}">Delete</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container border shadow-sm">
    <form method="post" action="update">
        <input type="hidden" id="boardSeq" name="boardIdx" value="${board.boardIdx}">
    <div>
        <input name="boardTitle" name="boardTitle" value="${board.boardTitle}" />
        <span name="boardUserId" >${board.boardUserId}</span>
        <span name="boardUpdateDate">${board.boardUpdateDate}</span>
    </div>
    <hr>
    <div>
        <div class="row p-2 pl-5">
            <textarea style="font-size: 14px" name="boardContent">${board.boardContent}</textarea>
        </div>
        <hr>
        <div class="ArticleContainerReplyWriteBox p-3">
            <div class="row pl-5">
                <textarea class="form-control w-50 col-md-6" id="replyContent0" placeholder="댓글 내용" style="resize: none"></textarea>
                <button class="btn btn-outline-success col-md-1 ml-2" id="newReplySaveBtn">등록</button>
            </div>
            <div>
                <span>로그인 시 댓글 서비스를 이용하실 수 있습니다</span>
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-outline-secondary">수정하기</button>
    </form>
</div>

<div class="ReplayBox container border shadow-sm pt-4 mt-4">

    <ul id="replyList" style="list-style: none;">
    </ul>
    <nav>
        <ul class="pagination" id="pagination">
        </ul>
    </nav>

    <!-- Modal -->
    <div class="modal fade" id="delete-reply" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel"
         aria-hidden="true">
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
                    <button type="button" class="btn btn-danger" id="reply-delete-modal-btn" data-dismiss="modal">
                        Delete
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="bootstrap/dist/js/bootstrap.js"></script>
</body>
</html>