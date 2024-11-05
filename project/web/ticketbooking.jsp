

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="ticketbookingsty.css">
    </head>
<body>
 <form method="post" action="config3">
<img src="images/icon.jpg">
<h1>&nbsp;&nbsp;Ticket booking</h1>
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
<td>Select movie</td>
<td><select name="umovie">
        <option value="0">select movie(ticket price $5)</option>
        <option value="The marvel avengers">1.The marvel avengers</option>
        <option value="The marvel ironman">2.The marvel ironman</option>
        <option value="Guardians of galaxy">3.Guardians of galaxy</option>
        <option value="The infernal machine">4.The infernal machine</option>
        <option value="The bullet train">5.The bullet train</option>
        <option value="Cars3">6.Cars3</option>
        <option value="Ready player one">7.Ready player one</option>
        <option value="6 Underground">8.6 Underground</option>
        <option value="Sonic the hedge dog 2">9.Sonic the hedge dog 2</option>
        <option value="The gray man">10.The gray man</option>
        <option value="The mortal engine">11.The mortal engine</option>
        <option value="Snakeeyes">12.Snakeeyes</option>
        </select></td>
</tr>
<tr>
<td>Ticket no</td>
<td><input type="number" name="uticket" required></td>
</tr>
<tr>
<td>Date</td>
<td><input type="date" name="udate" required ></td>
</tr>
<tr>
<td>select time</td>
<td><select name="utime">
<option value="0">select time</option>
<option value="9am-12am">morning</option>
<option value="1pm-4pm">evening</option>
    </select></td>
</tr>
<tr>
<td>Seat no</td>
<td><input type="number" name="useat" required ></td>
</tr>

    <ul class="show">
      <li>
        <div class="seat"></div>
        <small>Available seat</small>
      </li>

      <li>
        <div class="seat selected"></div>
        <small>Selected</small>
      </li>

      <li>
        <div class="seat occupied"></div>
        <small>Occupied</small>
      </li>
    </ul>

    <div class="container">
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat occupied"></div>
        <div class="seat occupied"></div>
        <div class="seat"></div>
        <div class="seat"></div>        
        <div class="seat"></div>
        <div class="seat occupied"></div>
        <div class="seat"></div>
        <div class="seat"></div>        
        <div class="seat"></div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat occupied"></div>
        <div class="seat occupied"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat occupied"></div>
        <div class="seat occupied"></div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat occupied"></div>
        <div class="seat occupied"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat occupied"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat occupied"></div>
        <div class="seat occupied"></div>
        <div class="seat occupied"></div>
        <div class="seat"></div>
        <div class="seat occupied"></div>
        <div class="seat occupied"></div>
        <div class="seat occupied"></div>
        <div class="seat"></div>
      </div>
    </div>
<tr>
<td><input type="submit" value="buy" style="background-color:green;color:white;"></td>
<td><input type="reset" value="cansel" style="background-color:red;color:white;"></td>
</tr>
</table>
    <script src="script.js"></script>
</form>
  </body>
</html>