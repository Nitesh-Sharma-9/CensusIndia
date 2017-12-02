<%-- 
    Document   : Personal Information
    Author     : Anuj Kumar & Team
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype HTML>

<html>
    <head>
        <title>Personal Information</title>
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
                <strong>log-in</strong>to <h3>Census India<sup>&reg;</sup></h3>
                <strong>
                    <form id="form-layout" name="step1" action="Step1Action" method="post">
                        <br><br>
                        First Name:<input type="text" name="fname" class="txt" placeholder="Enter your first name" required>
                        Middle Name:<input type="text" name="mname" class="txt" placeholder="Enter your middle name">
                        Last Name:<input type="text" name="lname" class="txt" placeholder="Enter your last name" required>
                        <br><br>
                        Father Name:<input type="text" name="father" class="txt" placeholder="Enter your father name" required>
                        Mother Name:<input type="text" name="mother" class="txt" placeholder="Enter your mother name" required>
                        <br><br>
                        Date of Birth:<input type="date" name="dob" class="txt" placeholder="DD/MM/YYYY" required>
                        <br><br>
                        Marital Status:<br>
                        <input type="radio" name="marital" value="married" required>Married
                        <input type="radio" name="marital" value="unmarried" required>Unmarried<br>
                        <br><br>
                        Literacy:<br>
                        <input type="radio" name="literacy" value="literate" required>Literate
                        <input type="radio" name="literacy" value="illiterate" required>Illiterate<br>
                        <br><br>
                        Qualified Upto:<br>
                        <input type="radio" name="qupto" value="APG" required>Above PG
                        <input type="radio" name="qupto" value="UG" required>Undergraduate
                        <input type="radio" name="qupto" value="INTER" required>Intermediate
                        <input type="radio" name="qupto" value="HS" required>High-School<br>
                        <input type="radio" name="qupto" value="METRIC" required>Metric
                        <input type="radio" name="qupto" value="PRI" required>Primary
                        <input type="radio" name="qupto" value="BPRI" required>Below Primary
                        <input type="radio" name="qupto" value="NONE" required>None<br>
                        <br><br>
                        Street|Mohalla|Colony|Other(same as mentioned in your Identity &amp; Address proofs both):<br>
                        <textarea cols="100" rows="2" name="add1" class="txt" placeholder="enter your address as mentioned in your Identity & Address proof both" required>
                        </textarea>
                        <br><br>
                        City | Village(post):<input name="add2" type="text" class="txt" value="Bulandshahr" required>
                        <br><br>
                        Tehsil:<input type="text" name="tehsil" class="txt" value="Bulandshahr" disabled>
                        <br><br>
                        ZIP:<input type="number" name="zip" class="txt" value="203001" disabled>
                        <br><br>
                        State:<input type="text" name="state" class="txt" value="Uttar Pradesh" disabled>
                        <br><br>
                        Country:<input type="text" name="country" class="txt" value="India" disabled>
                        <%
                            String UID = (String)session.getAttribute("UID");
                            String CardNo = (String)session.getAttribute("CardNo");
                            String RegNo = (String)session.getAttribute("loginID");
                            
                            session.setAttribute("UID", UID);
                            session.setAttribute("CardNo", CardNo);
                            session.setAttribute("RegNo", RegNo);
                        %>
                        <input type="submit" name="submit" id="submit" value="Submit">
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