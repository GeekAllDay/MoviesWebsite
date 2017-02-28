<%-- 
    Document   : welcome.jsp
    Created on : Jan 23, 2017, 11:49:58 PM
    Author     : Arash
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="include/CSS/main.css">
        <link rel="stylesheet" href="include/CSS/bootstrap.css">
        <script src="include/js/bootstrap.min.js"></script>
        <script src="include/js/jquery-3.1.1.min.js"></script>
        <title>Welcome Page</title>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <jsp:include page="/header.jsp"/>
            </div>
            <div>
                <h3>Recommended Movies from Google</h3>
                <a href="listOfMovies?action=chooseMovies&genre=Action"><p>Action </p></a>
                <a href="listOfMovies?action=chooseMovies&genre=Animated"><p>Animated</p></a>
                <a href="listOfMovies?action=chooseMovies&genre=Comedy"><p>Comedy</p></a>
                <a href="listOfMovies?action=chooseMovies&genre=Drama"><p>Drama</p></a>
            <div>
                <jsp:include page="footer.jsp"/>
            </div>
        </div>
    </body>
</html>
