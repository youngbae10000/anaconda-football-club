<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dashboard</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/dashboard/">
    <link href="resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/dashboard.css" rel="stylesheet">
</head>
<body>

<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">Company name</a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="#">Sign out</a>
        </li>
    </ul>
</header>

<div class="container-fluid">
    <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
            <div class="position-sticky pt-3">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">
                            <span data-feather="home"></span>
                            Dashboard
                        </a>
                    </li>
                </ul>

                <ul class="nav flex-column mb-2">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="file-text"></span>
                            Current month
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

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
                <h2>게시판</h2>
                <a class="btn btn-outline-success" type="button" href="/board/writer" role="button" sec:authorize="isAuthenticated()">글쓰기</a>
            </div>

            <div class="table-responsive">
                <table class="table table-striped table-md">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Title</th>
                        <th>Writer</th>
                        <th>Date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr th:each="board : ${boardList}">
                        <th><a th:text="${board.getBoardSeq()}"></a></th>
                        <td><a th:href="@{'/board/detail/'+${board.getBoardSeq()}+'?page='+${currentPage}}" th:text="${board.getBoardTitle()}"></a></td>
                        <td><a th:text="${board.getBoardWriter()}"></a></td>
                        <td th:text="${board.getModifiedDate()}"></td>
                    </tr>
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
