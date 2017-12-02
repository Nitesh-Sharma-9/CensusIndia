<%-- 
    Document   : Register
    Author     : Anuj Kumar & Team
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype HTML>

<html>
    <head>
        <title>Register</title>
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
        <div id="left-pane" style="color: #0C5A00">
            <div id="form-container">
                <br><br><br><br>
                Get <strong>registered</strong> with <h3>Census India<sup>&reg;</sup></h3>
                <strong>
                    <form id="form-layout" name="registration-form" action="RegistrationAction" method="post">
                        <br><br>
                        UID:<input type="text" name="uid" class="txt" placeholder="Enter AADHAAR no or E-ID" required>
                        <br><br>
                        Ration Card:<input type="text" name="r_card" class="txt" placeholder="Enter ration card number" required>
                        <br><br>
                        Password:<input type="password" name="pass1" class="txt" placeholder="Enter password" required>
                        <br><br>
                        Confirm Password:<input type="password" name="pass2" class="txt" placeholder="Re-enter password" required>
                        <input type="submit" name="Submit" id="submit" value="Register">
                        <br><br>
                    </form>
                </strong>
            </div>
        </div>
        <footer id="footer">
            <div class="row">
                <div class="col-lg-12">
                    <center>Copyrights &COPY; <strong>Census India</strong><sup>&REG;</sup> 2016-17</center>
                </div>
            </div>
        </footer>
    </body>
</html>