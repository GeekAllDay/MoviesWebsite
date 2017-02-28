<%-- 
    Document   : welcome.jsp
    Created on : Jan 23, 2017, 11:49:58 PM
    Author     : Arash
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%--<meta http-equiv="refresh" content="100">--%>
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
            <div class="container">
                <h1>${genre}</h1>
            </div>
            <div>
                <table class="table table-condensed">
                <tr>
                    <th>Movie Name:</th>
                    <th>Click To Remove:</th>
                </tr>
                <c:forEach var="m" items="${movies}">    
                    <tr>
                        <td>${m}</td>
                        <td>
                            <form action ="listOfMovies" method="post">
                            <input type="hidden" name="action" value="removeMovie"/>
                            <input type="hidden" name="genre" value="${genre}"/>
                            <input type="hidden" name="movieToRemove" value="${m}"/>
                            <input class="btn btn-danger" type="submit" value="I Dont Like This Movie"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            </div>
            <div>
                <jsp:include page="/footer.jsp"/>
            </div>
        </div>
    </body>
</html>
