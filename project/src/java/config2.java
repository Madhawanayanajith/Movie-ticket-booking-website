import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/config2"})
public class config2 extends HttpServlet {

   
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
        PrintWriter out = response.getWriter();
        Connection con = null;
        Statement  st = null;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
            st=con.createStatement();
            String qry="update user set name='"+name+"' where email='"+email+"'"; //this qry update name  which e mail of user name updated
            st.execute(qry);
            out.print("Data updated successfully");
        }
        catch (Exception e)
        {
            out.print(e);
        }
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
