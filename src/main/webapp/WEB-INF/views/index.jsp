<!doctype html>

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
                <li class="active"><a href="index">Buses <span class="sr-only">(current)</span> </a> </li>
                <li><a href="cars">Cars</a> </li>
                <li><a href="hotels">Hotels</a> </li>
            </ul>
            <!-- signin right -->
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login">Log In</a></li>
                <li> <a href="signup">Sign Up</a></li>
                <li><a href="contactus">Contact Us</a></li>
            </ul>

        </div>
    </nav>
    <div class="jumbotron">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Buses</h2>
                    <form>
                        <div class="form-group">
                            <label for="Source">Source</label>
                            <input type="text" class="form-control" id="Source" aria-describedby="emailHelp" placeholder="Enter Source">
                            <small id="Source" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Destination</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Destination">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Depart</label>
                            <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder=" Enter Depart Date">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Return</label>
                            <input type="date" class="form-control" id="exampleInputPassword1" placeholder="Enter Return Date">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">No of Persons</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Number of Perons Travelling">
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input">
                                Two-Way
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
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
