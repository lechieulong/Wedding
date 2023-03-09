<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Đám cưới</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link rel="stylesheet" href="assets/css/detail.css" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <style>
        #form-register {
            display: none;
            position: fixed;
            top: 37%;
            left: 50%;
            transform: translate(-50%, -30%);
            background-color: #fff;
            padding: 10px;
            z-index: 9999;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 500px;
            max-width: 90%;
        }

        #form-register label {
            display: block;
        }
        .form-group input {
            height: 30px;
        }
        .form-group textArea {
            height: 30px;
        }

        #form-register input[type="text"], #form-register input[type="date"],
        #form-register textarea {
            width: 100%;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        #form-register button[type="submit"] {
            height: 40px;
            width: 115px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #form-register button[type="button"] {
            height: 57px;
            width: 115px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #form-register .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }

        .bolder {
            border: 5px, 8px;
            border-radius: 80px;
            background-color: #d33;
            color: #000;
        }

        .content-button:hover {
            font-size: 22px;
        }

        .btn:hover {
            background: #ccc;
        }

        .mg {
            margin-right: 10px;
            margin-left: 10px;
        }

        .text-center {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 1rem;
        }

        .section-accessibilities {
            background: #ffe2e5;
            padding: 0;
        }

        .section-accessibilities .btn-container {
            margin-top: 20px;
            margin-bottom: 30px;
        }

        .section-accessibilities .button-accessibilities .accessibility-btn {
            padding: 11px 20px !important;
            min-width: 220px !important;
            margin: 10px 5px 0 !important;
            font-size: 1.4rem !important;
            text-transform: uppercase;
        }

        .section-accessibilities .button-accessibilities .accessibility-btn .content-button
        {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .section-accessibilities .button-accessibilities .accessibility-btn .content-button svg
        {
            margin-right: 5px;
        }

        .section-accessibilities .button-accessibilities .accessibility-btn:after
        {
            content: "" !important;
        }

        @media ( max-width : 500px) {
            .section-accessibilities .button-accessibilities .accessibility-btn {
                width: 100% !important;
                margin: 10px 0 !important;
            }
        }

        .btn-danger {
            background: #f23b43 !important;
        }

        .ul-social {
            list-style: none;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 23px;
        }

        .clearfix::before, .clearfix::after {
            content: ' ';
            display: table;
            clear: both;
        }

        .desc-groom {
            text-align: center;
        }

        .groom {
            width: 400px;
            height: 400px;
            margin: 0 auto 20px;
            border-radius: 50%;
        }

        .groom img {
            border-radius: 50%;
            width: 100%;
            box-shadow: 0 0 0 2px white, 0 0 0 7px red;
            padding: 5px;
        }
        /* About-us */
        .couple-wrap {
            /*width: 90%;*/
            margin: 0 auto;
            position: relative;
        }

        @media only screen and (min-width: 768px) {
            .couple-wrap {
                width: 100%;
            }
        }

        .couple-wrap h3 {
            font-size: 35px;
            color: #000;
            font-weight: bold;
        }

        .couple-wrap .groom-wrap {
            margin-bottom: 40px;
        }

        @media only screen and (min-width: 992px) {
            .couple-wrap .groom-wrap {
                margin-bottom: 0;
                padding-right: 30px;
            }
        }

        @media only screen and (min-width: 992px) {
            .couple-wrap .bride-wrap {
                padding-left: 30px;
            }
        }

        .clear60 {
            clear: both;
            height: 60px
        }

        .clear40 {
            clear: both;
            height: 40px
        }

        .clear20 {
            clear: both;
            height: 20px
        }

        .clear10 {
            clear: both;
            height: 10px
        }

        .list-unstyled {
            text-align: center;
        }

        .width-50 img {
            width: 50px;
            height: 50px;
        }

        .full-w {
            width: 100%;
        }

        .full-w:hover {
            background: #d33;
        }

        button .full-w {
            padding: 5px;
        }

        .form-header {
            display: flex;
            flex-direction: row;
        }

        .center {
            text-align: center;
        }

        .donate-modal {
            display: none;
            position: fixed;
            z-index: 99999;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
            padding-top: 100px;
            padding-bottom: 100px;
        }

        .donate-modal-header {
            padding: 8px 16px;
            background-color: #f23b43;
            color: #fff;
            font-size: 30px;
            text-align: center;
            line-height: 40px;
        }

        .donate-modal-content {
            position: relative;
            background-color: #fefefe;
            margin: auto;
            padding: 0;
            width: 90%;
            max-width: 750px;
            box-shadow: 0 4px 8px 0 rgb(0 0 0/ 20%), 0 6px 20px 0 rgb(0 0 0/ 19%);
            -webkit-animation-name: animatetopfordonatemodal;
            -webkit-animation-duration: 0.4s;
            animation-name: animatetopfordonatemodal;
            animation-duration: 0.4s;
        }

        /* CSS cho nút đóng */
        .donate-modal-close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .donate-box {
            display: flex;
            justify-content: space-evenly;
            flex-wrap: wrap;
        }

        .donate-box .donate-card {
            width: calc(50% - 40px);
            margin: 20px;
            padding: 20px;
            border: 3px solid #f23b43;
            border-radius: 10px;
        }

        .donate-modal-header strong {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
            color: #fff;
        }

        .list-unstyled li {
            padding: 0;
            gap: 5px;
        }
        .list-unstyled li:hover {
            border: 2px #d33 solid;
        }

        .donate-modal-body {
            padding: 0 15px;
        }

        .donate-modal-close:hover, .donate-modal-close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        @media ( max-width : 699px) {
            .donate-box .donate-card {
                width: 100%;
                margin: 20px 5px;
            }
        }

        .qr-code-image {
            width: 100px;
            height: 100px;
        }

        .donate-box .donate-card .qr-code-image {
            max-width: 150px;
            border: 1px solid #ccc;
            padding: 3px;
            margin: auto;
            display: block;
        }

        .donate-modal-header {
            padding: 8px 16px;
            background-color: #f23b43;
            color: #fff;
            font-size: 30px;
            text-align: center;
            line-height: 40px;
        }
    </style>
    <body>

        <!-- Responsive navbar-->
        <!-- Header -->
        <header id="header">
            <h1>
                <a href="home">Future Imperfect</a>
            </h1>
            <nav class="links">
                <ul>
                    <li><a href="#">LIVE</a></li>
                    <li><a href="#" onclick="showForm()">REGISTER SERVICE</a></li>
                    <li><a href="#">MANAGE TRANSACTION</a></li>
                    <li><a href="#" id="add-money-btn">ACCOUNT TOP-UP</a></li>
                    <li><a href="login.jsp">LOGIN</a></li>
                    <li><a href="#">LOGOUT</a></li>
                </ul>
            </nav>
            <nav class="main">
                <ul>
                    <li class="search"><a class="fa-search" href="#search">Search</a>
                        <form id="search" method="get" action="#">
                            <input type="text" name="query" placeholder="Search" />
                        </form></li>
                    <li class="menu"><a class="fa-bars" href="#menu">Menu</a></li>
                </ul>
            </nav>
        </header>

        <!-- Menu -->
        <section id="menu">

            <!-- Search -->
            <section>
                <form class="search" method="get" action="#">
                    <input type="text" name="query" placeholder="Search" />
                </form>
            </section>

            <!-- Links -->
            <section>
                <ul class="links">
                    <li><a href="#">
                            <h3>Lorem ipsum</h3>
                            <p>Feugiat tempus veroeros dolor</p>
                        </a></li>
                    <li><a href="#">
                            <h3>Dolor sit amet</h3>
                            <p>Sed vitae justo condimentum</p>
                        </a></li>
                    <li><a href="#">
                            <h3>Feugiat veroeros</h3>
                            <p>Phasellus sed ultricies mi congue</p>
                        </a></li>
                    <li><a href="#">
                            <h3>Etiam sed consequat</h3>
                            <p>Porta lectus amet ultricies</p>
                        </a></li>
                </ul>
            </section>

            <!-- Actions -->
            <section>
                <ul class="actions stacked">
                    <li><a href="login.jsp" class="button large fit">Log In</a></li>
                </ul>
            </section>
            <div class="add-money">
                <div id="add-money-form" hidden>
                    <h3>Add Money to Your Account</h3>
                    <label for="amount">Amount:</label> <input type="number" id="amount"
                                                               name="amount" min="0" max="10000" step="100"><br> <br>
                    <button type="submit">Submit</button>
                </div>
            </div>
        </section>
        <!-- Page content-->
        <div class="container mt-5">
            <div class="row">
                <div class="col-lg-8">
                    <!-- Post content-->
                    <article class="post">
                        <header>
                            <div class="title">
                                <h3>${wed.wedName} </h3>
                                <p>${wed.wedCaption}</p>
                            </div>
                            <div class="meta">
                                <time class="published center" 
                                      datetime="2015-11-01">March 10 2023</time>
                                <a href="#" class="author center"><span class="name">Chieu
                                        Khang</span><img src="https://th.bing.com/th/id/OIP._6U5jk9pNRqQtaxeffvsDQHaJQ?pid=ImgDet&rs=1" alt="" /></a>
                            </div>
                        </header>
                        <span class="image featured"><img src="https://th.bing.com/th/id/OIP._6U5jk9pNRqQtaxeffvsDQHaJQ?pid=ImgDet&rs=1"
                                                          alt="" /></span>



                    </article>
                    <!-- Comments section-->

                </div>
                <!-- Side widgets-->
                <div class="col-lg-4">

                    <!-- Categories widget-->
                    <div class="card mb-4">
                        <h1 class="card-header center" style="background: #d33;">GIFT</h1>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-4">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#!" class="width-50"> <img
                                                    src="https://th.bing.com/th/id/OIP._6U5jk9pNRqQtaxeffvsDQHaJQ?pid=ImgDet&rs=1">
                                            </a></li>
                                        <li><a href="#!" class="width-50"> <img
                                                    src="images/Mau-icon-gift-card-dac-sac-removebg-preview.png">
                                            </a></li>
                                        <li><a href="#!" class="width-50"> <img
                                                    src="images/hinh-anh-hai-bao-li-xi-co-2-to-500k-removebg-preview.png">
                                            </a></li>

                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#!" class="width-50"> <img
                                                    src="images/Goi-y-mau-icon-tien-removebg-preview.png">
                                            </a></li>
                                        <li><a href="#!" class="width-50"> <img
                                                    src="images/Bat-mi-mau-icon-gift-pink-removebg-preview.png">
                                            </a></li>
                                        <li><a href="#!" class="width-50"> <img
                                                    src="images/An-tuong-voi-mau-icon-qua-tang-dep-removebg-preview.png">
                                            </a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#!" class="width-50"> <img
                                                    src="images/Anh-mau-icon-gift-black-dac-sac-removebg-preview.png">
                                            </a></li>
                                        <li><a href="#!" class="width-50"> <img
                                                    src="images/Anh-icon-gift-Png-dep-removebg-preview.png">
                                            </a></li>
                                        <li><a href="#!" class="width-50"> <img
                                                    src="images/6_1438052987_cardviettel500k-removebg-preview.png">
                                            </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" mb-4">
                        <button class="js-ATM full-w" onclick="display()">ATM For
                            couple</button>

                    </div>
                    <!-- Side widget-->
                    <div class="card mb-4">
                        <section class="mb-5">
                            <div class="card bg-light">
                                <div class="card-body">

                                    <!-- Comment with nested comments-->
                                    <div class="d-flex mb-4">
                                        <!-- Parent comment-->
                                        <div class="flex-shrink-0">
                                            <img class="rounded-circle"
                                                 src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
                                                 alt="..." />
                                        </div>
                                        <div class="ms-3">
                                            <div class="fw-bold">Quốc Bảo</div>
                                            Khá quá nhở =))
                                            <!-- Child comment 1-->
                                            <div class="d-flex mt-4">
                                                <div class="flex-shrink-0">
                                                    <img class="rounded-circle"
                                                         src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
                                                         alt="..." />
                                                </div>
                                                <div class="ms-3">
                                                    <div class="fw-bold">Khang</div>
                                                    Cảm ơn anh!!
                                                </div>
                                            </div>
                                            <!-- Child comment 2-->
                                            <div class="d-flex mt-4">
                                                <div class="flex-shrink-0">
                                                    <img class="rounded-circle"
                                                         src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
                                                         alt="..." />
                                                </div>
                                                <div class="ms-3">
                                                    <div class="fw-bold">Long baby</div>
                                                    Bồ m xinh quá Khang
                                                </div>
                                            </div>
                                            <div class="d-flex mt-4">
                                                <div class="flex-shrink-0">
                                                    <img class="rounded-circle"
                                                         src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
                                                         alt="..." />
                                                </div>
                                                <div class="ms-3">
                                                    <div class="fw-bold">Quốc Bảo</div>
                                                    Melem Mlem =)
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single comment-->
                                    <div class="d-flex">
                                        <div class="flex-shrink-0">
                                            <img class="rounded-circle"
                                                 src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
                                                 alt="..." />
                                        </div>
                                        <div class="ms-3">
                                            <div class="fw-bold">Tuấn Trần</div>
                                            Happy weading >3
                                        </div>
                                    </div>
                                    <!-- Comment form-->
                                    <form class="mb-4">
                                        <textarea class="form-control" rows="3"
                                                  placeholder="Enter your wishes for this couple"></textarea>
                                    </form>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
        <!-- ATM-->
        <div id="donate-modal" class="donate-modal">
            <div class="donate-modal-content">
                <div class="donate-modal-header">
                    <span class="donate-modal-close">x</span> <strong> <span>Hộp
                            Mừng Cưới</span>
                    </strong>
                </div>
                <div class="donate-modal-body">
                    <div class="donate-box">
                        <div class="donate-card">
                            <h3>Mừng cưới đến cặp đôi</h3>
                            <img class="qr-code-image" style="height: 150px; width: 150px; margin-bottom: 15px;"
                                 src="https://biihappycom.sgp1.vultrobjects.com/ziiweb/website/6406b0e8633dc4dd0102c497/512dc42fa892ea38d7835fb50d8e2c3d.jpeg">
                            <p class="center">
                                Ngân hàng: <strong>Vietinbank</strong>
                            </p>
                            <p class="center">
                                Tên chủ tài khoản: <strong>Bé Nhi</strong>
                            </p>
                            <p class="center">
                                Số tài khoản: <strong>1016183386</strong>
                            </p>
                            <p class="center">
                                Chi nhánh: <strong>Quảng Nam</strong>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container mt-4">
            <div class="row justify-content-center">
                <div class="col-md-6">


                    <!--FORM REGISTER-->

                    <div id="form-register" ">
                        <span class="donate-modal-close" onclick="hideForm()">x</span>
                        <h2 class="text-center">Đăng kí</h2>
                        <form>
                            <div class="form-group">
                                <label for="bride-name">Họ tên cô dâu:</label> <input type="text"
                                                                                      class="form-control" id="bride-name" required>
                            </div>
                            <div class="form-group">
                                <label for="groom-name">Họ tên chú rể:</label> <input type="text"
                                                                                      class="form-control" id="groom-name" required>
                            </div>
                            <div class="form-group">
                                <label for="caption">Caption:</label> <input type="text"
                                                                             class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="wedding-date">Ngày tổ chức:</label> <input
                                    type="date" class="form-control" id="wedding-date" required>
                            </div>
                            <div class="form-group">
                                <label for="description">Mô tả:</label>
                                <textarea class="form-control" id="description" rows="1" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="image-main">Anh Chinhs</label> <input type="text"
                                                                                  class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="image-sub">Anh Phu</label> <input type="text"
                                                                              class="form-control" required>
                            </div>
                            <!--                            <div class="form-group">
                                                            <label for="main-photo">Ảnh chính:</label> <input type="file"
                                                                                                              class="form-control-file" id="main-photo">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="secondary-photos">Ảnh phụ:</label> <input type="file"
                                                                                                                  class="form-control-file" id="secondary-photos" multiple>
                                                        </div>-->
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Đăng kí</button>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <p class="center" style="font-size: 40px; font-weight: bold;">Cô
                dâu & Chú rể</p>

            <p class="center">Tình yêu là điều kiện trong đó hạnh phúc của
                người khác là điều cần thiết cho chính bạn.</p>
            <div class="clear60"></div>
            <div class="row couple-wrap">
                <div class="groo-wrap col-md-6 clearfix">
                    <div class="groom">
                        <img alt="groom" src="https://biihappycom.sgp1.vultrobjects.com/ziiweb/website/6406b0e8633dc4dd0102c497/512dc42fa892ea38d7835fb50d8e2c3d.jpeg">
                    </div>
                    <div class="desc-groom">
                        <h3>Vinh Khang</h3>
                        <h4>21-2-2002</h4>
                        <p>Là một chàng trai đến từ quê hương Quảng Ninh</p>
                    </div>
                    <div class="social">
                        <ul class="ul-social">
                            <li><a href="">Facebook</a></li>
                            <li><a href="">Intargram</a></li>
                            <li><a href="">Telegram</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="groom">
                        <img alt="groom"
                             src="https://biihappycom.sgp1.vultrobjects.com/ziiweb/website/6406b0e8633dc4dd0102c497/512dc42fa892ea38d7835fb50d8e2c3d.jpeg">
                    </div>
                    <div class="desc-groom">
                        <h3>Yến Vy</h3>
                        <h4>21-2-2002</h4>
                        <p>Là một cô gái đến từ quê hương Đà Nẵng</p>
                    </div>
                    <div class="social">
                        <ul class="ul-social">
                            <li><a href="">Facebook</a></li>
                            <li><a href="">Intargram</a></li>
                            <li><a href="">Telegram</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <section class="section-accessibilities">
            <div class="container">
                <div class="row">
                    <div class="col col-md-12">
                        <div class="text-center btn-container">
                            <a href="#" class="accessibility-btn btn btn-danger mg"> <span
                                    class="content-button">
                                    <p>Gửi lời chúc</p>
                                </span>
                            </a> <a href="#" class="accessibility-bt btn btn-danger mg"> <span
                                    class="content-button">
                                    <p>Mừng cưới</p>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="clear60"></div>
        <div class="container">
            <div class="row">
                <div class="col col-md-12">
                    <h1 class="center" style="font-size: 50px;">The big day</h1>
                    <p class="center" style="font-size: 40px;">10 MARCH 2023</p>
                    <div class="center bolder" id="countdown" style="font-size: 50px;"></div>


                </div>
            </div>
        </div>
        <div class="clear60"></div>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your
                    Website 2022</p>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="assets/js/atm.js"></script>

        <script>
                            function display() {
                                var modal = document.getElementById("donate-modal");
                                var closeButton = document
                                        .getElementsByClassName("donate-modal-close")[0];

                                modal.style.display = "block";

                                closeButton.onclick = function () {
                                    modal.style.display = "none";
                                }

                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            }

                            var atmButton = document.querySelector(".js-ATM");
                            atmButton.addEventListener("click", display);
        </script>
        <script>
            function countdown() {
                var destination = new Date("2023-03-10 12:00:00").getTime();
                var now = new Date().getTime();
                var distance = now - destination;

                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24))
                        / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60))
                        / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                if (days < 0) {
                    days = -days;
                    var sign = "-";
                }
                if (hours < 0) {
                    hours = -hours;
                    var sign = "-";
                }
                if (minutes < 0) {
                    minutes = -minutes;
                    var sign = "-";
                }
                if (seconds < 0) {
                    seconds = -seconds;
                    var sign = "-";
                }
                document.getElementById("countdown").innerHTML = days + " ngày, "
                        + hours + " giờ, " + minutes + " phút, " + seconds
                        + " giây";
            }

            setInterval(countdown, 1000);

            function getCurrentTime() {
                var now = new Date();
                var date = now.getDate();
                var month = now.getMonth() + 1;
                var year = now.getFullYear();
                var hours = now.getHours();
                var minutes = now.getMinutes();
                var seconds = now.getSeconds();
                document.getElementById("current-time").innerHTML = year + "-"
                        + month + "-" + date + " " + hours + ":" + minutes + ":"
                        + seconds;
            }

            setInterval(getCurrentTime, 1000);
        </script>
        <script>

            function showForm() {
                document.getElementById("form-register").style.display = "block";
            }

            function hideForm() {
                document.getElementById("form-register").style.display = "none";
            }
        </script>

    </body>
</html>
