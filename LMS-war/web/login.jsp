<%-- 
    Document   : signin
    Created on : Sep 10, 2017, 4:58:17 AM
    Author     : user
--%>
<%
    session.setAttribute("username", "");
    session.setAttribute("password", "");
    response.setHeader("cache-control", "no-cache");
    response.setHeader("cache-control", "no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("pragma", "no-cache");
%>
<%@include file="packages.jsp" %>


<!DOCTYPE html>
<%

    String role = "";
    // session.setAttribute("role", role);
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    System.out.println("user name is " + username);
    System.out.println("user password is " + password);
    session.setAttribute("username", username);
    boolean bol = false;
    String msg = "";
    if (username != null && username != "" && password != null && password != "" && request.getParameter("submit") != null) {
        try {
            //Accountrecord record = new Accountrecord(sl.currentDate(), "0", "0", sl.currentDate1());
            //Userloginhistory id = new Userloginhistory(sl.randNum(), username, sl.currentDate1(), sl.currentTime(), "00", "Signed");
            //sl.createAccountRecord(record);
            //sl.createLoginHistory(id);
            //id, dateLastLogin, status, timeLastLogin, timeLogout, username 
            role = sl.checkUsername(username);
            System.out.println("user role is " + role);
            if (role != null && role != "") {
                session.setAttribute("role", role);
                bol = sl.validatePassword(username, password);
                if (bol != false && role.equalsIgnoreCase("admin")) {
                    session.setAttribute("username", username);
                    response.sendRedirect("dashboard.jsp");
                } else if (bol != false && role.equalsIgnoreCase("sales")) {
                    session.setAttribute("username", username);
                    response.sendRedirect("dashboard.jsp");
                } else {
                    msg = "wrong username or password";
                }
            }
        } catch (Exception ex) {
            System.out.println(ex);
            msg = "wrong username or password";
        }
    }

%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Livestock |Signin</title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <form class="form-signin">
          <h2 class="form-signin-heading" align="center">LIVESTOCK MANAGEMENT SYSTEM LOGIN</h2>
        <label for="inputEmail" class="sr-only">Username</label>
        <input type="text" name="username" id="inputEmail" class="form-control" placeholder="Username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password"  name="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          
        </div>
        <input class="btn btn-lg btn-primary btn-block" type="submit" name="submit" value="Login"/>
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
  
</body>
</html>

