<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>Dashboard</title>
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dashboard.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <main>
            <div>
                <h1>Dashboard</h1>
                <a type="button" href="/write" role="button">글쓰기</a>
            </div>

            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th>seq</th>
                        <th>Title</th>
                        <th>Writer</th>
                        <th>create date</th>
                        <th>update date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${boardList}" var="board" varStatus="status">
                        <tr>
                            <td><a>${board.boardIdx}</a></td>
                            <td><a href="detail?idx=${board.boardIdx}&page=${board.boardIdx}">${board.boardTitle}</a></td>
                            <td><a>${board.boardUserId}</a></td>
                            <td>${board.boardCreateDate}</td>
                            <td>${board.boardUpdateDate}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div>
                <nav>
                    <ul class="pagination">
                        <input type="hidden" id="currentPage" th:value="${currentPage}"/>
                        <li class="page-item">
                            <a class="page-link" th:href="@{/(page=1)}">First</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" th:href="@{/(page=(${startPageNum}-1 == 0 ? 1 : ${startPageNum}-1))}">Previous</a>
                        </li>

                        <li class="page-item" th:with="startPageNum=${startPageNum}, endPageNum=${endPageNum}"
                            th:each="page:${#numbers.sequence(startPageNum, endPageNum)}">
                            <a class="page-link" th:id="${page}" th:text="${page}" th:href="@{/(page=${page})}"></a>
                        </li>

                        <li class="page-item">
                            <a class="page-link"
                               th:href="@{/(page=${endPageNum} == ${totalPageCount} ? ${totalPageCount} : ${endPageNum}+1)}">Next</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" th:href="@{/(page=${totalPageCount})}">Last</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </main>
    </div>
</div>
</body>
</html>