<%-- 
    Document   : index
    Created on : Feb 4, 2017, 5:19:08 PM
    Author     : Arash
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Enter Your Information</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="include/CSS/main.css">
        <link rel="stylesheet" href="include/CSS/bootstrap.css">
        <script src="include/js/bootstrap.min.js"></script>
        <script src="include/js/jquery-3.1.1.min.js"></script>

        <style>
            body {
                padding-top: 60px;
                background-image: url("images/website_background.jpg");
            }
        
        </style>
    </head>
    <body>
        <div class="container-fluid index">
            <form class="form-horizontal" action="welcome" method="post">
                <input type="hidden" name="action" value="getInfo"/>
            <div class="form-group">
                <label class="control col-sm-2">Enter your first name</label>
                <div class="col-sm-6">
                    <input class="form-control col-sm-10" type="FirstName" name="fname"/> 
                </div>
            </div>
            <div class="form-group">
                <label class="control col-sm-2">Enter your last name</label>
                <div class="col-sm-6">
                    <input class="form-control col-sm-10" type="LastName" name ="lname"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control col-sm-2">Enter your email</label>
                <div class="col-sm-6">
                    <input class="form-control col-sm-10" type="Email" name ="email"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2"></label>
                <div class="col-sm-10">
                    <input class="btn btn-warning" type="submit" value="Enter"/>
                </div>
            </div>   
            </form>
        </div>
    </body>
</html>

