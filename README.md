Welcome To Repository for an basic login page and a create account page 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Changes U Should make for the new account page to work page to work

create a table like given 
 
| id       | int(1)       | NO   | PRI | NULL    | auto_increment |
| name     | varchar(20)  | YES  |     | NULL    |                |
| password | varchar(12)  | YES  |     | NULL    |                |
| phone    | int(10)      | YES  | UNI | NULL    |                |
| age      | int(2)       | YES  |     | NULL    |                |
| email    | varchar(255) | YES  | UNI | NULL

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
open new_account.jsp

con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/(database name)","root","(your password)");              *type the name of your database and your password and remove the brackets
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
cahanges u should make for login page to work

open login.jsp

con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/(database name)","root","(your password)");         *type the name of your database and your password and remove the brackets

ps=con.prepareStatement("select * from (name of the table) where name=? and password=?");                        *type the name of the table ad rwmove the bracketes 

response.sendRedirect("Welcome.html");                                                                            *if login is succesfull the location of the page you want to redirect to


feel free to work around and do some changes
