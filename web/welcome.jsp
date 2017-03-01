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
                <form action="listOfMovies" method="post">                   
                    <input type="hidden" name="action" value="chooseMovies"/>
                    <input type="hidden" name="genre" value="Action"/>
                    <input class="button action" type="submit" value="Action"/>
                </form>
                
                 <form action="listOfMovies" method="post">
                    <input type="hidden" name="action" value="chooseMovies"/>
                    <input type="hidden" name="genre" value="Animated"/>
                    <input class="button animated" type="submit" value="Action"/>
                </form>
                
                 <form action="listOfMovies" method="post">
                    <input type="hidden" name="action" value="chooseMovies"/>
                    <input type="hidden" name="genre" value="Comedy"/>
                    <input class="button comedy" type="submit" value="Comedy"/>
                </form>
                
                 <form action="listOfMovies" method="post">
                    <input type="hidden" name="action" value="chooseMovies"/>
                    <input type="hidden" name="genre" value="Drama"/>
                    <input class="button drama" type="submit" value="Drama"/>
                </form>
            <div>
                <jsp:include page="footer.jsp"/>
            </div>
        </div>
    </body>
</html>
