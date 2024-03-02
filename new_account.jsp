
<%@page contentType="text/html" import="java.sql.*"%>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-color: lightblue">
        <%
            Connection con;   //only connection
            PreparedStatement ps;   //query execution
            
            String name=request.getParameter("name");
            String pass=request.getParameter("pass");
            String phone = request.getParameter("phone");
            String age=request.getParameter("age");
            String email=request.getParameter("email");
          %>
            <br>
            <br>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/(database name)","root","(your password)");
                ps=con.prepareStatement("insert into newacc(name,password,phone,age,email) value(?,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, pass);
                ps.setString(3, phone);
                ps.setString(4,age);
                ps.setString(5, email);
                ps.execute();
            %>
          <script>
              var name = '<%= name %>';
                document.write("<h1 style='color: red; text-align: center;'>Data Inserted For " + name + "</h1>");
          </script>
          <form action="login.html" method="post">
                <div class="sub">
                    <br><br><input type="submit" id="submit" value="Confirm"><br><br>
                </div>
            </form>
    </body>
</html>
