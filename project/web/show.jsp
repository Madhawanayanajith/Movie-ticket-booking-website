<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Show database data</h1>
        <%
           Connection con=null;
           Statement st=null;
           ResultSet rs=null;
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
            st=con.createStatement();
            String qry = "select * from user";
            rs = st.executeQuery(qry);
            while(rs.next())
            {
                out.println(rs.getString(1));
                out.println(rs.getString(2));
                out.println(rs.getString(3));
                out.println(rs.getString(4));
            }
            }
            catch(Exception e)
            {
                out.print(e);
            }
            %>
    </body>
</html>
