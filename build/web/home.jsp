

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>

<html>
    <head>
        <title>Future Imagine </title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="stylesheet" href="assets/css/comment.css" />
    </head> 
      
    <body class="is-preload">
   
        <!-- Wrapper -->
        <div id="wrapper">

            <jsp:include page="includeFile/navigation.jsp"></jsp:include>

                <div class="main_section">
                    <!-- Main -->
                  
                    <div id="main">
                        <!-- Post -->
                    <c:forEach items="${listWed}" var="o">
                        <article class="post">
                            <header>
                                <div class="title">
                                    <h2><a href="detail?wedID=${o.wedID}">${o.wedName}</a></h2>
                                    <p>${o.wedCaption}</p>
                                </div>
                                <div class="meta">
                                    <time class="published" datetime="2015-11-01">${o.wedDate}</time>
                                    <a href="#" class="author"><span class="name">Vinh Khang </span><img src="${o.rImage}" alt="" /></a>
                                </div>
                            </header>
                            <a href="single.jsp" class="image featured"><img src="${o.rImage}" alt="" /></a>
                            <p>${o.description}</p> 
                            <footer>
                                <ul class="actions">
                                    <li><a href="single.jsp" class="button large">Continue Reading</a></li>
                                </ul>
                                <ul class="stats">
                                    <li><a href="#">General</a></li>
                                    <li><a href="#" class="icon solid fa-heart">28</a></li>
                                    <li><a href="#comment" class="icon solid fa-comment">128</a></li>
                                </ul>
                            </footer>
                        </article>
                    </c:forEach>


                    <ul class="actions pagination">
                        <li><a href="" class="disabled button large previous">Previous Page</a></li>
                        <li><a href="#" class="button large next">Next Page</a></li>
                    </ul>

                 </div>
                <jsp:include page="includeFile/sideBar.jsp"></jsp:include>

            </div>
        </div>
                 <jsp:include page="includeFile/footer.jsp"></jsp:include>
    <!--Scripts--> 
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/detail.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/comment.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="js/demo/datatables-demo.js"></script>


    </body>
</html>