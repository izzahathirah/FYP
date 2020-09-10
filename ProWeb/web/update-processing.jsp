<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
 String driver = "com.mysql.jdbc.Driver";
 String connUrl = "jdbc:mysql://localhost:3306/";
 String database = "sistem";
 String username = "root";
 String password = "";
 Connection conn = null;
 PreparedStatement stmt = null;

 
 String idstud = request.getParameter("idstud");
 String nama = request.getParameter("nama");
 String alamat = request.getParameter("alamat");
 String notel = request.getParameter("notel");
 String ic = request.getParameter("ic");
 String kadmatrik= request.getParameter("kadmatrik");
 String jantina = request.getParameter("jantina");
 String bangsa = request.getParameter("bangsa");
 String sem = request.getParameter("sem");
 String kos = request.getParameter("kos");
 String bandar = request.getParameter("bandar");
 String poskod = request.getParameter("poskod");
 String negeri = request.getParameter("negeri");
 String agama = request.getParameter("agama");
 

 
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "UPDATE student SET nama = ?, alamat = ?, notel = ?,ic = ?,kadmatrik = ?,jantina = ? ,bangsa = ?,sem = ?,kos = ? ,bandar = ?, poskod =? ,negeri = ?,agama = ? WHERE idstud = ?";


 stmt = conn.prepareStatement(sql);
 stmt.setString(1, nama);
 stmt.setString(2, alamat);
 stmt.setString(3, notel);
 stmt.setString(4, ic);
 stmt.setString(5, kadmatrik);
 stmt.setString(6, jantina);
 stmt.setString(7, bangsa);
 stmt.setString(8, sem);
 stmt.setString(9, kos);
 stmt.setString(10, bandar);
 stmt.setString(11, poskod);
 stmt.setString(12, negeri);
 stmt.setString(13, agama);
 stmt.setString(14, idstud);
 stmt.executeUpdate();



 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>
<html>
   
        <head>
          
            <link rel="stylesheet" href="css/update.css">
        </head>
        <body bgcolor="khaki">

<%
 try {
 Class.forName(driver);
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
 ResultSet rs = null;
 
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "SELECT * FROM student WHERE idstud = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, idstud);
 rs = stmt.executeQuery();
 rs.next();
 } catch (Exception e) {
 e.printStackTrace();
 }
%>

        <h1><font color="Red">Your Data has been Updated...</font></h1>
<div class="container">
    <button class="button" style="vertical-align:middle"><span><a href="customer/index.jsp?idstud=<%=rs.getString("idstud")%>">Kembali</a></span></button>
</div>
        </body>
</html>