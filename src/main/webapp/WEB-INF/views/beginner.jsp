<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Beginner</title>
    <meta charset="UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="<c:url value="/resources/css/beginner.css" />" rel="stylesheet">
</head>
<body>
<div style="background-color: #333" class="container-fluid">
    <nav>
        <div class="navbar-header">
            <a class="navbar-brand" href="index.html">
                <%--  <img src="/EnglishInpictures/images/logo1.png" alt="Brand">--%>
            </a>
            <a class="navbar-brand" id="brand-name" href="#">polyglot</a>
        </div>
        <ul class="nav  navbar-nav" id="navbar-nav">
            <li>
                <a href="http://localhost:63342/Inspiring/web/EnglishInpictures/HomePage/index.html">HOME</a>
            </li>
            <li>
                <a href="#">LESSON</a>
            </li>
            <li>
                <a href="#">TRAININGS</a>
            </li>
            <li>
                <a href="#">SUPPORT</a>
            </li>
            <li>
                <a href="http://localhost:8082/profile">PROFILE</a>
            </li>
            <li id="pol-login">
                <a href="http://localhost:8082/login.jsp">
                    <span class="glyphicon glyphicon-log-in"></span>Login
                </a>
            </li>
            <li style="background-color: rgba(111, 67, 56, 0.72);">
                <a href="http://localhost:8082/registration.jsp">
                    <span class="glyphicon glyphicon-user"></span> SignsUp
                </a>
            </li>
        </ul>
    </nav>
</div>
<%--<div class="container">
    <div class="col-md-2">
        profile
    </div>
    <div class="col-md-8">
        <div class="row">
            <h3>All Lessons</h3>
        </div>
        <div class="row">
            <div class="col-md-3 pol-beginner-topics" id="pol-topic-1">
                <form class="form-group" action="#" id="pol-food-form">
                    <p>#Lesson 1 <br>Food</p>
                    <a href="#" class="btn btn-danger btn-block">Start</a>
                </form>
                <img class="img-responsive pol-beginner-t-img" src="Beginner/images/003.jpg" alt="img">
            </div>
            <div class="col-md-3 pol-beginner-topics" id="pol-topic-2">
                <form class="form-group" action="#" id="pol-family-form">
                    <p>#Lesson 2 <br>Family</p>
                    <a href="#" class="btn btn-danger btn-block">Start</a>
                </form>
                <img class="img-responsive pol-beginner-t-img" src="Beginner/images/003.jpg"/>
            </div>
            <div class="col-md-3 pol-beginner-topics" id="pol-topic-3">
                <form class="form-group" action="#" id="pol-room-form">
                    <p>#Lesson 3 <br>Room</p>
                    <a href="#" class="btn btn-danger btn-block">Start</a>
                </form>
                <img class="img-responsive pol-beginner-t-img" src="Beginner/images/003.jpg"/>
            </div>

            <div class="col-md-3 pol-beginner-topics" id="pol-topic-4">
                <form class="form-group" action="#" id="pol-school-form">
                    <p>#Lesson 4 <br>School</p>
                    <a href="#" class="btn btn-danger btn-block">Start</a>
                </form>
                <img class="img-responsive pol-beginner-t-img" src="Beginner/images/003.jpg"/>
            </div>
            <div class="col-md-3 pol-beginner-topics" id="pol-topic-5">
                <form class="form-group" action="#" id="pol-classroom-form">
                    <p>#Lesson 5 <br>Classroom</p>
                    <a href="#" class="btn btn-danger btn-block">Start</a>
                </form>
                <img class="img-responsive pol-beginner-t-img" src="Beginner/images/003.jpg"/>
            </div>

            <div class="col-md-3 pol-beginner-topics" id="pol-topic-6">
                <form class="form-group" action="#" id="pol-fruits-form">
                    <p>#Lesson 6 <br>Fruits</p>
                    <a href="#" class="btn btn-danger btn-block">Start</a>
                </form>
                <img class="img-responsive pol-beginner-t-img" src="Beginner/images/003.jpg"/>

            </div>
            <div class="col-md-3 pol-beginner-topics" id="pol-topic-7">
                <form class="form-group" action="#" id="pol-vegetables-form">
                    <p>#Lesson 7 <br>Vegetables</p>
                    <a href="#" class="btn btn-danger btn-block">Start</a>
                </form>
                <img class="img-responsive pol-beginner-t-img" src="Beginner/images/003.jpg"/>
            </div>
            <div class="col-md-3 pol-beginner-topics" id="pol-topic-8">
                <form class="form-group" action="#" id="pol-friends-form">
                    <p>#Lesson 8 <br>Friends</p>
                    <a href="#" class="btn btn-danger btn-block">Start</a>
                </form>
                <img class="img-responsive pol-beginner-t-img" src="Beginner/images/003.jpg"/>
            </div>
        </div>
        &lt;%&ndash;slider&ndash;%&gt;
        <div class="row" style="padding-bottom: 80px;">
            <div id="jssor_1"
                 style=" position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden; visibility: hidden;">
                <!-- Loading Screen -->
                <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                    <div style="position:absolute;display:block;background:url('Beginner/images/006.jpg') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                </div>
                <div data-u="slides"
                     style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden;">
                    <div data-p="112.50" style="display: none;">
                        <img data-u="image" src="Beginner/images/002.jpg"/>

                        <div data-u="caption" data-t="0"
                             style="position: absolute; top: 320px; left: 30px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.5); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                            mobile ready, touch swipe
                        </div>
                    </div>
                    <div data-p="112.50" style="display: none;">
                        <img data-u="image" src="Beginner/images/002.jpg"/>

                        <div data-u="caption" data-t="1" data-3d="1"
                             style="position: absolute; top: -50px; left: 125px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.5); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                            time lined layer animation
                        </div>
                    </div>
                    <div data-p="112.50" style="display: none;">
                        <img data-u="image" src="Beginner/images/002.jpg"/>

                        <div data-u="caption" data-t="2"
                             style="position: absolute; top: 30px; left: -380px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.5); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                            finger catchable right to left
                        </div>
                    </div>
                    <div data-p="112.50" style="display: none;">
                        <img data-u="image" src="Beginner/images/002.jpg"/>

                        <div data-u="caption" data-t="3"
                             style="position: absolute; top: 30px; left: 30px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.5); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                            responsive, scale smoothly
                        </div>
                    </div>
                    <div data-p="112.50" style="display: none;">
                        <img data-u="image" src="Beginner/images/002.jpg"/>

                        <div data-u="caption" data-t="4"
                             style="position: absolute; top: 30px; left: 30px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.6); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                            image, text, and custom layers
                        </div>
                    </div>
                    <a data-u="any" href="http://www.jssor.com" style="display:none">Image Slider</a>

                    <div data-p="112.50" style="display: none;">
                        <img data-u="image" src="Beginner/images/002.jpg"/>

                        <div data-u="caption" data-t="5"
                             style="position: absolute; top: 30px; left: 600px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.5); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                            tons of transition type
                        </div>
                    </div>
                    <div data-p="112.50" style="display: none;">
                        <img data-u="image" src="Beginner/images/002.jpg"/>

                        <div data-u="caption" data-t="6"
                             style="position: absolute; top: 30px; left: 30px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.5); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                            visual slider maker
                        </div>
                    </div>
                    <div data-b="0" data-p="112.50" style="display: none;">
                        <img data-u="image" src="Beginner/images/008.jpg"/>

                        <div data-u="caption" data-t="7"
                             style="position: absolute; top: -50px; left: 30px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.5); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                            play in and play out
                        </div>
                    </div>
                    <div data-p="112.50" style="display: none;">
                        <img data-u="image" src="Beginner/images/011.jpg"/>

                        <div data-u="caption" data-t="8" data-3d="1"
                             style="position: absolute; top: 25px; left: 150px; width: 250px; height: 250px; background-color: rgba(40,177,255,0.6); overflow: hidden;">
                            <div data-u="caption" data-t="9"
                                 style="position: absolute; top: 100px; left: 25px; width: 200px; height: 50px; font-size: 24px; line-height: 50px;">
                                A Child Layer
                            </div>
                        </div>
                    </div>
                    <div data-p="112.50" style="display: none;">
                        <img data-u="image" src="Beginner/images/010.jpg"/>

                        <div data-u="caption" data-t="10" data-3d="1"
                             style="position: absolute; top: 25px; left: 100px; width: 250px; height: 250px; background-color: rgba(40,177,255,0.6);">
                            <div style="margin: 15px; font-size: 20px;">
                                <p>This is full customized content layer.<br/>
                                </p>

                                <p>
                                    Everything is allowed

                                </p>
                                You can put
                                <a href="http://wwww.jssor.com">
                                    a link
                                </a> or an image

                                <img src="images/icon_chrome.png"/> here.

                            </div>
                        </div>
                    </div>
                </div>
                <!-- Bullet Navigator -->
                <div data-u="navigator" class="jssorb01" style="bottom:16px;right:16px;">
                    <div data-u="prototype" style="width:12px;height:12px;"></div>
                </div>
                <!-- Arrow Navigator -->
                <span data-u="arrowleft" class="jssora02l" style="top:0px;left:8px;width:55px;height:55px;"
                      data-autocenter="2"></span>
                <span data-u="arrowright" class="jssora02r" style="top:0px;right:8px;width:55px;height:55px;"
                      data-autocenter="2"></span>
            </div>
        </div>
    </div>
</div>--%>
<%--<div id="footer" class="container-fluid footer">
    <div class="col-md-6 col-sm-12  col-lg-offset-3">
        <p id="footerBrand">polyglot.uz</p>
        <ul id="followUs">
            <li><a href="https://facebook.com"> <i class="fa fa-facebook" aria-hidden="true"></i></a>
            </li>
            <li><a href="twitter.com"> <i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <li><a href="google-pls.com"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
            </li>
            <!-- <li><i class="fa fa-facebook" aria-hidden="true"></i></li>-->
            <li><a href="instagram.com"> <i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            <li><span style="    margin: auto; color: white;font-weight: 800;">Follow Us</span></li>
        </ul>
        <ul id="support" style="margin: 0%">
            <li class="support-type"><a href="index.html">SUPPORT </a></li>
            <li class="support-type"><a href="index.html">BLOG </a></li>
            <li class="support-type"><a href="index.html">PARTNERS </a></li>
            <li class="support-type"><a href="index.html">USEFUL LINKS </a></li>
            <li class="support-type"><a href="index.html">UZBEKISTAN </a></li>
        </ul>
        <ul id="legal">
            <li class="security">Security</li>
            <li class="security">Terms of Use</li>
            <li class="security">Privacy</li>
            <li class="security">Legal&TradeMark Notices</li>
            <li class="security">About polyglot</li>
        </ul>
        <ul id="money">
            <li class="payment">Payment Types</li>
            <li class="payment">Credit Card</li>
            <li class="payment">My Account</li>
            <li class="payment">Sitemap</li>
        </ul>
        <div id="footerText">
            <p class="text" id="service">polyglot.uz services are provided by Bright Future Comp, under
                applicablelicenses </p>

            <p style="padding-top: 2%"><i class="fa fa-copyright" aria-hidden="true"></i>2016 Bright Future Inc. All
                rights reserved.</p>

            <p>Terms, conditions, features, availability, pricing, fees, service and support options subject to change
                without notice</p>
        </div>
    </div>
</div>--%>
</body>
</html>
