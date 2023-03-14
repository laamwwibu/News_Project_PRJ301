<%-- 
    Document   : home
    Created on : Mar 8, 2023, 11:26:46 PM
    Author     : VICTUS
--%>
<%@page import="dbObject.*"%>
<%@page import="java.util.*"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>VICE</title>
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <!-- Icons -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- CSS -->
        <link rel="stylesheet" href="css/styleGlobal.css">
    </head>

    <body>
        <%
           ArrayList<News> news_list = (ArrayList<News>) request.getAttribute("news_list");
           ArrayList<String> cat_nameList = (ArrayList<String>) request.getAttribute("cat_namelist");
           ArrayList<String> user_nameList = (ArrayList<String>) request.getAttribute("user_namelist");
        %>
        <!-- NAVBAR -->
        <nav class="navbar navbar-expand-lg fixed-top">
            <div class="container-fluid">
                <!-- NAVBAR -->
                <div class="navbar-logo col-md-1">
                    <a class="navbar-brand" href="#">
                        <img style="width: 100px;" src="image/branding/vice logo.png" alt="">
                    </a>
                </div>
                <!-- NAVBAR TOOGLER -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- NAVBAR CATEGORY -->
                <div class="collapse navbar-collapse col-md-6" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <c:forEach items="${categories_list}" var="categories">
                            <div class="nav-item">
                                <a class="nav-link hover-animation-underline" href="">${categories.getName()}</a>
                            </div>
                        </c:forEach>
                    </ul>
                </div>
                <!-- NAVBAR SEARCH -->
                <div class="col-md-3 navbar-search">
                    <form action="">
                        <input style="width: 100%;" type="text" placeholder="Search anything">
                        <button style="border: 0px;" type="submit" class="rounded-circle nopadding">
                            <i class="material-icons hover-animation-grow">search</i>
                        </button>
                    </form>
                </div>

                <!-- NAVBAR PROFILE -->
                <div class="col-md-2 navbar-login navbar-collapse" id="navbarNavDropdown">
                    <p class="nopadding">Hello, user</p>
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="dropdown-toggle" href="#" id="navbarDropdownMenuLink" id="navbar-icon-user"
                               role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="material-icons hover-animation-grow">person</i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
                                <!-- cái này thằng nào làm jsp thì phân loại theo kiểu người dùng -->
                                <li><a class="dropdown-item" href="#">Login</a></li>
                                <li><a class="dropdown-item" href>Sign up</a></li>
                                <li><a class="dropdown-item" href>Log out</a></li>
                                <li><a class="dropdown-item" href>Profile</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- spacer for fixed navbar -->
        <div style="height: 84px;" class="spacer"></div>

        <!-- Hotest News -->
        <!-- 2 row: 1st be full row; 2nd be 3 smaller one -->
        <div class="hotest-news">
            <div class="container-fluid">
                <div style="background-color: black;" class="row card featured-card nopadding">
                    <div class="row nopadding">
                        <div class="col-md-8 featured-card-image nopadding">
                            <img class="card-img" src="image/news/New Zealand Grapples.webp" alt="...">
                        </div>
                        <div class="col-md-4 featured-card-content align-self-center nopadding">
                            <div class="card-body">
                                <h5 class="card-subtitle">Sample category</h5>
                                <h3 class="card-title">Thousands Uncontactable As New Zealand Grapples with Its Worst
                                    Natural
                                    Disaster ‘This Century’</h3>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                    additional content. This content is a little bit longer.</p>
                                <h6 class="card-text">Sample author</h6>
                                <h6 class="card-text">Sample time</h6>
                            </div>
                        </div>
                    </div>
                    <a style="position: absolute; width: 100%; height: 100%;" href="newsInfo.html"></a>
                </div>
                <div class="row card-group nopadding">
                    <div class="card">
                        <img src="image/news/airline.webp" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h3 class="card-title">Thousands Uncontactable As New Zealand Grapples with Its Worst Natural
                                Disaster ‘This Century’</h3>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <h6 class="card-text">Sample author</h6>
                            <h6 class="card-text">Sample time</h6>
                        </div>
                        <a style="position: absolute; width: 100%; height: 100%;" href="newsInfo.html"></a>
                    </div>
                    <div class="card">
                        <img src="image/news/japan.webp" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h3 class="card-title">Japan Will No Longer Have the Developed World’s Lowest Age of Consent
                            </h3>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <h6 class="card-text">Sample author</h6>
                            <h6 class="card-text">Sample time</h6>
                        </div>
                    </div>
                    <div class="card">
                        <img src="image/news/artist.webp" class="card-img" alt="...">
                        <div class="card-body">
                            <h3 class="card-title">Thousands Uncontactable As New Zealand Grapples with Its Worst Natural
                                Disaster ‘This Century’</h3>
                            <p class="card-text">An Artist Who Exposed the ‘Absurdity’ of China’s Zero-COVID Policy Went
                                Missing. lo</p>
                            <h6 class="card-text">Sample author</h6>
                            <h6 class="card-text">Sample time</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Title -->
        <div class="latest-title nopadding">
            <h1>THE</h1>
            <h1>LATEST</h1>
        </div>

        <div class="latest-news">
            <div class="container-fluid">
                <c:forEach items="${news_list}" var="news">
                    <div class="row card nopadding">
                        <div class="col-md-8 latest-news-body nopadding">
                            <div class="row nopadding">
                                <div class="col-md-6 card-image nopadding">
                                    <img class="card-img" src="image/news/New Zealand Grapples.webp" alt="...">
                                </div>
                                <div class="col-md-6 card-content align-self-center nopadding">
                                    <div class="card-body">
                                        <h5 class="card-subtitle">${news.Cat_name}</h5>
                                        <h3 class="card-title">${news.News_title}</h3>
                                        <p class="card-text">${news.News_subtitle}</p>
                                        <h6 class="card-text">${news.User_name}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 latest-news-blank nopadding"></div>
                    </div>
                </c:forEach>
            </div>

            <!-- footer -->
            <div class="footer">
                <img class="rotate" style="width: 100px;" src="image/branding/VMG-logo-updated.png" alt="">
                <ul>
                    <li>Trần Thế Hùng</li>
                    <li>Lý Thế Lượng</li>
                    <li>Phùng Phúc Lâm</li>
                    <li>Nguyễn Hoàng Hiệp</li>
                    <li>Nguyễn Chí Trung</li>
                </ul>
                <p>@ 2023 PRj301 HE1725</p>
            </div>
        </div>

        <!-- Bootstrap script -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    </body>



</html>
