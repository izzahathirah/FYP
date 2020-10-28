<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
 String driver = "com.mysql.jdbc.Driver";
 String connUrl = "jdbc:mysql://localhost:3306/";
 String database = "sistem";
 String user = "root";
 String pass = "";
 Connection conn = null;
 PreparedStatement stmt = null;
 ResultSet rs=null;
 
 String idstud = request.getParameter("idstud");
 String nama = request.getParameter("nama");
 String ic = request.getParameter("ic");
 String username = request.getParameter("username");
 String password= request.getParameter("password"); 
 String alamat = request.getParameter("alamat");
 String bandar = request.getParameter("bandar");
 String poskod = request.getParameter("poskod");
 String jantina = request.getParameter("jantina");
 String agama = request.getParameter("agama");
 String bangsa = request.getParameter("bangsa");
 String kadmatrik= request.getParameter("kadmatrik"); 
 String negeri = request.getParameter("negeri");
 String kos = request.getParameter("kos");
 String sem = request.getParameter("sem");
 String notel = request.getParameter("notel");
 String date=request.getParameter("date");
 String email = request.getParameter("email");
 String bill = request.getParameter("bill");
 String blok = request.getParameter("blok");
 String aras = request.getParameter("aras");
 String no_bilik = request.getParameter("no_bilik");
 String sesi = request.getParameter("sesi");
 String skill= request.getParameter("skill"); 
 String kelas = request.getParameter("kelas");


 

 
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, user, pass);
 
 String sql = "INSERT INTO student VALUES (null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
 stmt = conn.prepareStatement(sql);

 stmt = conn.prepareStatement(sql);
 stmt.setString(1, nama);
 stmt.setString(2, ic);
 stmt.setString(3, username);
 stmt.setString(4, password);
 stmt.setString(5, alamat);
 stmt.setString(6, bandar);
 stmt.setString(7, poskod);
 stmt.setString(8, jantina);
 stmt.setString(9, agama);
 stmt.setString(10, bangsa);
 stmt.setString(11, kadmatrik);
 stmt.setString(12, negeri);
 stmt.setString(13, kos);
 stmt.setString(14, sem);
 stmt.setString(15, notel);
 stmt.setString(16, date);
 stmt.setString(17, email);
 stmt.setString(18, bill);
 stmt.setString(19, blok);
 stmt.setString(20, aras);
 stmt.setString(21, no_bilik);
 stmt.setString(22, sesi);
 stmt.setString(23, skill);
 stmt.setString(24, kelas);

 
 

 stmt.executeUpdate();
  response.sendRedirect("./");
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>