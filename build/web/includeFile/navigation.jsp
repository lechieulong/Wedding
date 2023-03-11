

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>

<html>
    <!-- Header -->   <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />

        <title>SB Admin 2 - Tables</title>
        <link
            href="vendor/fontawesome-free/css/all.min.css"
            rel="stylesheet"
            type="text/css"
            />
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet"
            />

        <!-- Custom styles for this template -->
        <link href="css/sb-admin-2.min.css" rel="stylesheet" />

        <!-- Custom styles for this page -->
        <link
            href="vendor/datatables/dataTables.bootstrap4.min.css"
            rel="stylesheet"
            />
    </head>
    <!-- Header -->
    <header id="header">
        <h1>
            <a href="home" style="font-size: 18px">Future Imperfect</a> 
        </h1>
        <nav class="links">
            <ul>
                <li><a href="#">Live</a></li>
                <li><a href="register.jsp">REGISTER SERVICE</a></li>
                <li><a href="log.jsp">Manage transaction</a></li>
                <li><a href="#" class="js-account-topup" onclick="display5()">ACCOUNT TOP-UP</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="#">Logout</a></li>
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

    </section>

  <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/comment.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="assets/js/detail.js"></script>
    <!-- Menu -->


</html>