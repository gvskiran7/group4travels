<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">

    <title>Group 4 Travels</title>
    <meta name="description" content="The HTML5 Herald">
    <meta name="author" content="SitePoint">

    <link rel="stylesheet" href="css/styles.css?v=1.0">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Header -->
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Group4Travels</a>
            </div>
            <!-- Tabs-->
            <ul class="nav navbar-nav">
                <li><a href="index">Buses <span class="sr-only">(current)</span> </a> </li>
                <li><a href="cars">Cars</a> </li>
                <li><a href="hotels">Hotels</a> </li>
            </ul>
            <!-- signin right -->
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login">Log In</a></li>
                <li class="active"><a href="signup">Sign Up</a></li>
                <li><a href="contactus">Contact Us</a></li>
            </ul>

        </div>
    </nav>
    <div class="jumbotron">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Sign Up</h2>
                    <form:form id="regForm" modelAttribute="user" action="signup" method="post">
                        <div class="form-group">
                            <form:label path="name" class="cols-sm-2 control-label">Your Name</form:label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <form:input  path="name" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <form:label path="email" class="cols-sm-2 control-label">Your Email</form:label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                    <input path="email" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <form:label path="username" class="cols-sm-2 control-label">Username</form:label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input path="username" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <form:label path="password" class="cols-sm-2 control-label">Password</form:label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input path="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group ">
                            <form:button id="register" class="btn btn-primary " name="register">Register</form:button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <p>Advertisement 1</p>
            <a href="#" class="thumbnail">
                <img src="resources/images/img1.jpg" alt="...">
            </a>
        </div>
        <div class="col-md-3">
            <p>Advertisement 2</p>
            <a href="#" class="thumbnail">
                <img src="resources/images/img2.jpg" alt="...">
            </a>
        </div>
        <div class="col-md-3">
            <p>Advertisement 3</p>
            <a href="#" class="thumbnail">
                <img src="resources/images/img3.jpg" alt="...">
            </a>
        </div>
        <div class="col-md-3">
            <p>Advertisement 4</p>
            <a href="#" class="thumbnail">
                <img src="resources/images/img4.jpg" alt="...">
            </a>
        </div>
    </div>
</div>

</body>
</html>
