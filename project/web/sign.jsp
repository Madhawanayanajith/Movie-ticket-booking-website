

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
body{
    background-color:black;
}
.z{
    border:3px solid green;
    width:500px;
    height:500px;
    text-align:center;
    margin-left:auto;
    margin-right:auto;
    margin-top:50px;
    
}
img{
    width:50px;
    height:50px;
    display:block;
    margin-left:auto;
    margin-right:auto;

}

h1{
   color:blue;
   text-align:center;
}


.t{
   text-align:center;
   margin-left:auto;
   margin-right:auto; 
}

td{
   width:200px;
   height:50px;
   color:blue;
}

</style>
</head>
<body>
<div class="z">
<form method="POST" action="config">
<img src="images/icon.jpg">
<h1>Sign To ABC Cinema</h1>
<table class="t">
<tr>
<td>Name</td>
<td><input type="text" name="uname" required></td>
</tr>
<tr>
<td>E mail</td>
<td><input type="text" name="uemail" required></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="upassword" required></td>
</tr>
<tr>
<td>Phone number</td>
<td><input type="number" name="unumber" required></td>
</tr>
<tr>
<td><input type="submit" value="submit" style="background-color:green;color:white;"></td>
<td><input type="reset" value="cansel" style="background-color:red;color:white;"></td>
</tr>
</table>
</form>
</div>
</body>
</html>    
    