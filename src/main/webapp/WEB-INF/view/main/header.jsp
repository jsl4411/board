<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="keywords" content="sansillyung, gxsx, bitcamp">
    <meta name="description" content="sansillyung - GxSx">
    <meta name="author" content="sansillyung">

    <title>GxSx</title>

    <link rel="stylesheet" href="/css/beryllium/style.css">
    <link rel="stylesheet" href="/css/beryllium/themify-icons.css">
    <link rel="stylesheet" href="/css/topmenu.css">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="/images/coza/icons/favicon.png"/>
    <link rel="stylesheet" type="text/css" href="/vendor/coza/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/fonts/coza/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/fonts/coza/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="/fonts/coza/linearicons-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="/vendor/coza/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="/vendor/coza/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="/vendor/coza/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="/vendor/coza/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/vendor/coza/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="/vendor/coza/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="/vendor/coza/MagnificPopup/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="/vendor/coza/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" type="text/css" href="/css/coza/util.css">
    <link rel="stylesheet" type="text/css" href="/css/coza/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/css/lightpick.css">
    <style>

    </style>

</head>

<body class="animsition">

<!-- Header -->
<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
<!-- ////////////////////////////////////// 맨 위 메뉴 시작 ////////////////////////////////////// -->
<header class="header-v4">
    <!-- Header desktop -->
    <div class="container-menu-desktop">

        <div class="wrap-menu-desktop how-shadow1">
            <nav class="limiter-menu-desktop container">

                <!-- Logo desktop -->
                <a href="/" class="logo">
                    <img src="/images/003-.png" alt="IMG-LOGO">
                </a>

                <!-- Menu desktop -->
                <div class="menu-desktop">
                    <ul class="main-menu">
                        <li class="active-menu">
                            <a href="/">Home</a>
                        </li>

                        <li>
                            <a href="/gxsx/notice.do?cp=1">Notice</a>
                        </li>

                        <li class="label1" data-label1="습득물">
                            <a href="/board/find">Finditem</a>
                        </li>

                        <li class="label1" data-label1="분실물">
                            <a href="/board/lost">Lostitem</a>
                        </li>
                        <li>
                            <a href="/gxsx/contact.do">Contact</a>
                        </li>
                    </ul>
                </div>

                <!-- Icon header -->
                <div class="wrap-icon-header flex-w flex-r-m">
                    <ul class="main-menu">
                        <c:if test="${ empty loginUser && empty klogin}">
                            <li><i class="zmdi zmdi-account-circle"></i>
                                <a href="/user/login">Login</a></li>
                        </c:if>
                        <c:if test="${ !empty loginUser }">
                            <li class="dropdown">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <i class="ti-bell"></i>(<b>${messageResult.size()}</b>)</a>
                                <c:choose>
                                    <c:when test="${messageResult=='[]'}">
                                        <ul class="dropdown-menu notify-drop" style="right:350px;min-width:100px;max-height:30px">
                                            <div class="drop-content" data-tooltip="tooltip" data-placement="top" style="min-height:10px">
                                                <li><center><div class="col-md-9 col-sm-9 col-xs-9 pd-l0" style="margin-left:15px;">
                                                    알람 없음</div></center>
                                                </li>
                                            </div>
                                        </ul>
                                    </c:when>
                                    <c:otherwise>
                                        <ul class="dropdown-menu notify-drop" style="right:350px">
                                            <div class="drop-content" data-tooltip="tooltip" data-placement="top">
                                                <c:forEach items="${messageResult}" var="messageResult" varStatus="status" begin="0" end="4">
                                                    <li><div class="col-md-9 col-sm-9 col-xs-9 pd-l0" style="margin-left:15px;min-width:250px">
                                                        <a href="/Question/questionco.do?qno=${messageResult.qno}">${messageResult.qsub}</a>
                                                        <p style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;width: 250px">${messageResult.qcon}</p>
                                                        <p class="time">답변완료</p></div>
                                                    </li>
                                                </c:forEach>
                                            </div>
                                        </ul>
                                    </c:otherwise>
                                </c:choose>
                            </li>
                            </li>
                        </c:if>

                        <c:if test="${ !empty loginUser || !empty klogin }">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="ti-user"></i></a>
                                <ul class="dropdown-menu notify-drop" style="min-width:150px">
                                    <div class="drop-content" data-tooltip="tooltip" data-placement="top" style="min-height:50px; overflow:hidden">
                                        <li><div>&nbsp;&nbsp;
                                            <i class="ti-bookmark-alt"></i>&nbsp;&nbsp;<a href="/Users/mypage.do">마이페이지</a>
                                        </div></li>
                                        <li><div>&nbsp;&nbsp;
                                            <i class="ti-headphone-alt"></i>&nbsp;&nbsp;<a href="/gxsx/contact.do">고객센터</a>
                                        </div></li>
                                        <li><div>&nbsp;&nbsp;
                                            <i class="ti-power-off"></i>
                                            <c:if test="${ empty loginUser && empty klogin}">
                                                &nbsp;<a href="">로그아웃</a>
                                            </c:if>
                                            <c:if test="${ !empty loginUser && empty kakaologout_url}">
                                                &nbsp;<a href="/user/logout">로그아웃</a>
                                            </c:if>
                                            <c:if test="${!empty klogin && !empty kakaologout_url}">
                                                &nbsp;<a href="${kakaologout_url}">로그아웃</a>
                                            </c:if>
                                        </div></li>
                                    </div>
                                </ul>
                            </li>
                        </c:if>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>