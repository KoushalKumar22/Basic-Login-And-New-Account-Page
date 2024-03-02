Welcome To Repository for an basic login page and a create account page 

Changes u should make for the new account page to work

Create a table like given 
 
| id       | int(1)       | NO   | PRI | NULL    | auto_increment |
| name     | varchar(20)  | YES  |     | NULL    |                |
| password | varchar(12)  | YES  |     | NULL    |                |
| phone    | int(10)      | YES  | UNI | NULL    |                |
| age      | int(2)       | YES  |     | NULL    |                |
| email    | varchar(255) | YES  | UNI | NULL

open new_account.jsp

con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/(database name)","root","(your password)");          *type the name of your database and your password and remove the brackets

ps=con.prepareStatement("insert into (name of the table) (name,password,phone,age,email) value(?,?,?,?,?)");      *type the name of the table and remove the brackets

Changes u should make for login page to work

Open login.jsp

con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/(database name)","root","(your password)");         *type the name of your database and your password and remove the brackets

ps=con.prepareStatement("select * from (name of the table) where name=? and password=?");                        *type the name of the table and remove the bracketes 

response.sendRedirect("Welcome.html");                                                                           *if login is succesfull write the location of the page you want to redirect to


Feel free to work around and do some changes
