<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dashboard</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/dashboard/">
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dashboard.css" rel="stylesheet">
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

<div class="container-fluid">
    <div class="row">
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Dashboard</h1>
                <div class="btn-toolbar mb-2 mb-md-0">
                    <div class="btn-group me-2">
                        <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
                        <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
                    </div>
                    <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
                        <span data-feather="calendar"></span>
                        This week
                    </button>
                </div>
            </div>

            <div>
                <a class="btn btn-outline-success" type="button" href="/writer" role="button" sec:authorize="isAuthenticated()">글쓰기</a>
            </div>

            <div class="table-responsive">
                <table class="table table-striped table-md">
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
                    <c:forEach items="${boardList}" var="board">
                        <th><a>${board.boardIdx}</a></th>
                        <th><a>${board.title}</a></th>
                        <td><a>${board.boardIdx}</a></td>
                        <td><a>${board.boardUserId}</a></td>
                        <td>${board.boardTitle()}</td>
                        <td>${board.boardCreatDate()}</td>
                        <td>${board.boardUpdateDate()}</td>
                    </c:forEach>
                    </tbody>
                </table>

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

                            <li class="page-item" th:with="startPageNum=${startPageNum}, endPageNum=${endPageNum}" th:each="page:${#numbers.sequence(startPageNum, endPageNum)}">
                                <a class="page-link" th:id="${page}" th:text="${page}" th:href="@{/(page=${page})}"></a>
                            </li>

                            <li class="page-item">
                                <a class="page-link" th:href="@{/(page=${endPageNum} == ${totalPageCount} ? ${totalPageCount} : ${endPageNum}+1)}">Next</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" th:href="@{/(page=${totalPageCount})}">Last</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </main>
    </div>
</div>
</body>
</html>
