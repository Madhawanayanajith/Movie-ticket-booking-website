

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body{
                 background-color:#A9A9A9;
                 text-align:center;
            }
            h1{
                color:blue;
            }
            .ta{
                margin-left:auto;
                margin-right:auto;
                
            }
        </style>
    </head>
    <body>
        <h1>Ticket buying</h1>
        <br>
        <%out.println("THE RECEIPT "); %>
        <br>
        <br>
        Name is  : ${param.uname} <br>
        Email is : ${param.uemail}<br>
        Movie is : ${param.umovie} <br>
        No of tickets  : ${param.uticket} <br>
        Date is : ${param.udate}<br>
        Time is : ${param.utime}<br>
        Seat no : ${param.useat}<br>
        <%
            //String name= (request.getParameter("uname"));
            //String themovie= (request.getParameter("movie"));
            int ticket = Integer.parseInt(request.getParameter("uticket"));
            //out.println("Name is " + name);
            //out.println("The movie is " + themovie);
            int price = ticket*5;
            out.println("The price is  :$" + price);
            
            
        %>  
 
        <br>
        <br>
         <form  method="POST" action="https://formsubmit.co/qjqa40@gmail.com">
         <table class="ta">
            <tr>
                <td>verify email</td>
                <td><input type="text" name="uemail" ></td>
            </tr>
            <tr>
                <td>Confirm you want to buy ticket</td>
                <td><input type="radio" name="ticeket_confirm" value="ticket orderded successfully">yes <input type="radio" name="ticket_confirm" value="not orderded ticket">no</td>
                <td><input type="submit" value="verify" style="background-color:green;color:white;"></td>
            </tr>
        </table>
         </form>
        <br>
        <br>
        <br>
        <br>
      <div id="smart-button-container">
      <div style="text-align: center;">
        <div id="paypal-button-container"></div>
      </div>
    </div>
  <script src="https://www.paypal.com/sdk/js?client-id=AX07CUCDqx5pzkq2Ro9-7KISOZHTFBrv478FMjpEIqymBHSmV02xL87sfGVz82yPGNUl1tmiI_54lI4F&enable-funding=venmo&currency=USD" data-sdk-integration-source="button-factory"></script>
  <script>
    function initPayPalButton() {
      paypal.Buttons({
        style: {
          shape: 'rect',
          color: 'gold',
          layout: 'vertical',
          label: 'paypal',
        },

        createOrder: function(data, actions) {
          return actions.order.create({
            purchase_units: [{"amount":{"currency_code":"USD","value":5}}]
          });
        },

        onApprove: function(data, actions) {
          return actions.order.capture().then(function(orderData) {
            
            // Full available details
            console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

            // Show a success message within this page, e.g.
            const element = document.getElementById('paypal-button-container');
            element.innerHTML = '';
            element.innerHTML = '<h3>Thank you for your payment!</h3>';

            // Or go to another URL:  actions.redirect('thank_you.html');
            
          });
        },

        onError: function(err) {
          console.log(err);
        }
      }).render('#paypal-button-container');
    }
    initPayPalButton();
  </script>
        
           <form method="POST" action="home.jsp">
            <input type="submit" value="home">
        </form>
    </body>
</html>
