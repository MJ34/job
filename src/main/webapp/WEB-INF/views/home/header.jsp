<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
         <title>PUNGKOOK RECRUITMENT </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="icon" type="image/png" href="${contextPath}/resources/static/assets/img/logo/logo_pk_load.jpeg">

		<!-- CSS here -->
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/flaticon.css">
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/price_rangs.css">
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/slicknav.css">
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/animate.min.css">
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/magnific-popup.css">
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/themify-icons.css">
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/slick.css">
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/nice-select.css">
            <link rel="stylesheet" href="${contextPath}/resources/static/assets/css/style.css">
   </head>
   <style>
   @media only screen and (max-width: 600px) {
  .header-btn {
    margin-right:252px;
  }
}

   }
   </style>

   <body>
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="${contextPath}/resources/static/assets/img/logo/logo_pk_load.jpeg" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
       <div class="header-area header-transparrent">
           <div class="headder-top header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-2">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="/"><img src="${contextPath}/resources/static/assets/img/logo/logo_pk.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-9">
                            <div class="menu-wrapper">
                                <!-- Main-menu -->
                                <div class="main-menu">
                                    <nav class="d-none d-lg-block">
                                        <ul id="navigation">
                                            <li><a href="/">Home</a></li>
                                            <li><a href="#">About</a></li>
                                            <li><a href="#">Contact</a></li>
                                            <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
           </div>
       </div>
    </header>