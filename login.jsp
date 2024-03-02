
<%@page contentType="text/html" import="java.sql.*"%>
<html>
    <body>
        <%
            Connection con;   //only connection
            PreparedStatement ps;   //query execution
            ResultSet rs;
            String name=request.getParameter("name");
            String pass=request.getParameter("pass");
          %>
            <br>
            <br>
            
            <%
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/koushal","root","271024");
                ps=con.prepareStatement("select * from newacc where name=? and password=?");
                ps.setString(1, name);
                ps.setString(2, pass);
                rs=ps.executeQuery();
                if(rs.next())
                {
                response.sendRedirect("About.html")   ;      
                }
                else
                {
                    out.print("User Not Regestered ! Please Login");
                }
                    %>
                    <a href="create_acc.html">Click Here</a>
    </body>
</html>
