import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/config4"})
public class config4 extends HttpServlet {

  
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
        String email = request.getParameter("uemail"); //feedback form data getting store to database
        String name = request.getParameter("uname"); 
        String feedback = request.getParameter("ufeedback");
        
        PrintWriter out = response.getWriter();
        Connection con = null;
        Statement  st = null;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
            st=con.createStatement();
            String qry="insert into feedback value('"+email+"','"+name+"','"+feedback+"')";
            st.executeUpdate(qry);
            out.print("Data inserted suceessfully");
            response.sendRedirect("home.jsp");
            
             
        }
        catch(Exception e)
        {
            out.print(e);
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
