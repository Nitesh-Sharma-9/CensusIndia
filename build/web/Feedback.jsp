<%-- 
    Document   : Feedback
    Author     : Anuj Kumar & Team
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype HTML>

<html>
    <head>
        <title>Feedback</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <script type="text/javascript" src="js/js-image-slider.js"></script>
    </head>
    
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html" style="color: #003101">
                        <h4>
                            <strong>Census India</strong><sup>&reg;</sup>
                        </h4>
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="About.html">About</a>
                        </li>
                        <li>
                            <a href="Register.jsp">Register</a>
                        </li>
                        <li>
                            <a href="Feedback.jsp">Feedback</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="wrapper" style="color: #0C5A00">
            <div id="form-container">
                <br><br><br><br>
                provide your <strong>feedback</strong> to <h3>Census India<sup>&reg;</sup></h3>
                <strong>
                    <form id="form-layout" name="feedback" action="FeedbackAction" method="post">
                        <br><br>
                        Name:<input type="text" name="name" class="txt" placeholder="Enter your name">
                        <br><br>
                        Is font-size?:<br>
                        <input type="radio" name="font" value="Small">Small
                        <input type="radio" name="font" value="Normal">Normal
                        <input type="radio" name="font" value="Large">Large<br>
                        <br><br>                        
                        How is the registration-process?:<br>
                        <input type="radio" name="process" value="Easy">Easy
                        <input type="radio" name="process"value="Normal">Normal
                        <input type="radio" name="process" value="Hard">Hard<br>
                        <br><br>
                        Comment:<br>
                        <textarea cols="50" rows="5" name="comment" class="txt" placeholder="Post any query or suggestion..."></textarea>
                        <br><br>
                        <input type="submit" name="submit" id="submit" value="Submit">
                        <br><br>
                    </form>
                </strong>
            </div>
        </div>
        <footer id="footer">
            <div class="row">
                <div class="col-lg-12">
                    <center>Copyrights &COPY; <strong>Census | India</strong><sup>&REG;</sup> 2016-17</center>
                </div>
            </div>
        </footer>
    </body>
</html>