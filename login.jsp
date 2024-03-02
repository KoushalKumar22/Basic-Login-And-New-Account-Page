
<%@page contentType="text/html" import="java.sql.*"%>
<html>
    <body>
        <%
            Connection con;   
            PreparedStatement ps;   
            ResultSet rs;
            String name=request.getParameter("name");
            String pass=request.getParameter("pass");
          %>
            <br>
            <br>
            
            <%
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/(database name)","root","(your password)");
                ps=con.prepareStatement("select * from (table name) where name=? and password=?");
                ps.setString(1, name);
                ps.setString(2, pass);
                rs=ps.executeQuery();
                if(rs.next())
                {
                response.sendRedirect("welcome.html");      
                }
                else
                {
                    out.print("User Not Regestered ! Please Login");
                }
            %>
                <a href="create_acc.html">Click Here</a>
    </body>
</html>
