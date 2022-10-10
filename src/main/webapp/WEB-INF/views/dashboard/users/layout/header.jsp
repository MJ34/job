<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="${contextPath}/resources/static/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${contextPath}/resources/static/assets/img/logo/logo_pk_load.jpeg">
  <title>
    PT PUNGKOOK INDONESIA ONE
  </title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="${contextPath}/resources/static/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="${contextPath}/resources/static/assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
  <style>
    .card{
      box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
    }
  </style>
</head>
<body class="g-sidenav-show bg-gray-100">
  <div class="min-height-300 position-absolute w-100" style="background: #f12711;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #f5af19, #f12711);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #f5af19, #f12711); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
"></div>
  <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4" style="box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;" id="sidenav-main">
    <div class="sidenav-header" style="margin-left: -25px;">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="${pageContext.request.contextPath}/applicant/main" >
        <img src="${contextPath}/resources/static/images/logoPK100px.png" class="navbar-brand-img h-100" alt="main_logo">
        <span class="ms-1 font-weight-bold" style="font-size: 13px;" >PT PUNGKOOK INDONESIA ONE</span>
      </a>
    </div>
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/applicant/main">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <img src="https://img.icons8.com/bubbles/45/000000/home-office.png"/>
            </div>
            <span class="nav-link-text ms-1 ml-2 font-weight-bold text-dark">Dashboard</span>
          </a>
        </li>
      <li class="nav-item">
          <a class="nav-link " href="#">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <img src="https://img.icons8.com/bubbles/45/000000/briefcase.png"/>
            </div>
            <span class="nav-link-text ms-1 font-weight-bold ml-2 text-dark">Available Jobs</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="${contextPath}/applicant/showUserInfo">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <img src="https://img.icons8.com/bubbles/45/000000/administrator-male.png"/>
            </div>
            <span class="nav-link-text ms-1 font-weight-bold text-dark">Profile</span>
          </a>
        </li>
         <li class="nav-item">
          <a class="nav-link " href="<c:url value="/logout" />">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <img src="https://img.icons8.com/bubbles/45/000000/shutdown--v1.png"/>
            </div>
            <span class="nav-link-text ms-1 ml-2 font-weight-bold text-dark">Sign Out</span>
          </a>
        </li>
      </ul>
    </div>
  </aside>