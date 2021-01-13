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
                            <th><a>${board.boardIdx}</a></th>
                            <th><a>${board.boardTitle}</a></th>
                            <td><a>${board.boardUserId}</a></td>
                            <td>${board.boardCreateDate}</td>
                            <td>${board.boardUpdateDate}</td>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>
</body>
</html>