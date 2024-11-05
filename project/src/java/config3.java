import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/config3"})
public class config3 extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("uname");
        String email = request.getParameter("uemail");
        String movie = request.getParameter("umovie");
        int ticketno = Integer.parseInt(request.getParameter("uticket"));
        String date = request.getParameter("udate");
        String time = request.getParameter("utime");
        int seatno = Integer.parseInt(request.getParameter("useat"));
          int ticket = Integer.parseInt(request.getParameter("uticket"));
          int price = ticket*10;
           
        PrintWriter out = response.getWriter();
        out.println("Name is " + name); // to show user ticket detail
        out.println("E mail is " + email);
        out.println("Movie is " + movie);
        out.println("The price is $" + price);
        
       
        Connection con = null;
        Statement  st = null;
        
             
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
            st=con.createStatement();
            String qry="insert into ticket value('"+name+"','"+email+"','"+movie+"','"+ticketno+"','"+date+"','"+time+"','"+seatno+"')";
            st.executeUpdate(qry);
            out.print("Ticket buyed successfully");
            request.getRequestDispatcher("user.jsp").forward(request, response);
        }
        catch(Exception e)
        {
            out.print(e);
        }
    }
    }

   
    

