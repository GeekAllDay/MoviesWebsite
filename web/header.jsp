<%-- 
    Document   : header
    Created on : Feb 4, 2017, 5:45:00 PM
    Author     : Arash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div class="container">
        <div class="container-static">
            <div class="navbar-header">
                <h1 class="navbar-brand" href="#">WELCOME ${sessionScope.user.firstName}!</h1>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <span class="glyphicon glyphicon-user"></span>${sessionScope.user.email}
            </ul>
        </div>
    </div>             
</html>
