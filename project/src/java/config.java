import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/config"})
public class config extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String email = request.getParameter("uemail");
        String password = request.getParameter("upassword");
        if(email.equals("qjqa40@gmail.com") && password.equals("1234"))
        {
            response.sendRedirect("home.jsp");
        }
        else
        {
            response.sendRedirect("error.jsp");
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("uname"); //sign up form data getting store to database
        String email = request.getParameter("uemail");
        String password = request.getParameter("upassword");
        String phoneno = request.getParameter("unumber");
        
        PrintWriter out = response.getWriter();
        Connection con = null;
        Statement  st = null;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
            st=con.createStatement();
            String qry="insert into user value('"+name+"','"+email+"','"+password+"','"+phoneno+"')";
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
