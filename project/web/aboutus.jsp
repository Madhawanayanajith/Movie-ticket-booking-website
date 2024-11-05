
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
h1,h2{
   color:blue;
}
p{
  color:white;
}
body{
     background-color:black;
}
.a{
    border:3px solid green;
    width:500px;
    height:300px;
    text-align:center;
    margin-left:auto;
    margin-right:auto;

   
}
.t{
   
    text-align:center;
    margin-left:auto;
    margin-right:auto;
}
td{
    color:blue;
    width:200px;
    height:50px;
}

</style>
</head>
<body>
<h1>About us</h1>
<p>ABC Cinema  give good theater experince to customer using new technologies and good sound system for the customer.
   ABC Cinema located in several branches, all of them give good cinema experince to customer.also ABC Cinema try
   to give minimum ticket price for good theater experince.
</p>

<div class="a">
<h2>Give your feedback</h2>
<form method="POST"  action="config4">
    <table class="t">
        <tr>
            <td>E mail</td>
            <td><input type="text" name="uemail"></td>
        </tr>
        <tr>
            <td>Username</td>
            <td><input type="text" name="uname"></td>
        </tr>
        <tr>
            <td>Feedback</td>
            <td><input type="text" name="ufeedback"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="submit" style="background-color:green;color:white;"></td>
        </tr>
    </table>
</form>
</div>
</body>
</html> 

