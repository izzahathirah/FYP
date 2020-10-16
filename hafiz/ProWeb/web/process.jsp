<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<% String driver = "com.mysql.jdbc.Driver";
    String connUrl = "jdbc:mysql://localhost:3306/";
    String database = "sistem";
    String username = "root";
    String password = "";

    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    String idstaff = request.getParameter("idstaff");
    conn = DriverManager.getConnection(connUrl + database, username, password);
    String sql = "SELECT * FROM admin";
    stmt = conn.prepareStatement(sql);
    rs = stmt.executeQuery();
    rs.next();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%
            String idpengguna = request.getParameter("username");
            String katalaluan = request.getParameter("password");
            
            String strkatalaluan = rs.getString("admin");

            if (!idpengguna.equals("admin")) {
                
                sql = "SELECT * FROM staff WHERE username = ? AND password = ?";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, idpengguna);
                stmt.setString(2, katalaluan);
                rs = stmt.executeQuery();
                rs.next();
                if (rs.getRow() == 1) {
                    response.sendRedirect("staff/index.jsp?idstaff=" + rs.getString("idstaff"));
                } else {
                    sql = "SELECT * FROM student WHERE username = ? AND password = ?";
                    stmt = conn.prepareStatement(sql);
                    stmt.setString(1, idpengguna);
                    stmt.setString(2, katalaluan);
                    rs = stmt.executeQuery();
                    rs.next();
                    
                    if (rs.getRow() == 1) {
                        response.sendRedirect("customer/index.jsp?idstud=" + rs.getString("idstud"));
                    } else {
                        %>
                        <script>
                            alert("Username & Password adalah salah");
                            window.location = 'index.jsp';
                        </script>
                        <% 
                    }
                    
                }
                
            } else if (!katalaluan.equals(strkatalaluan)) {
                %>
                <script>
                    alert("Username & Password adalah salah");
                    window.location = 'index.jsp';
                </script>
                <%
            } else {
                response.sendRedirect("admin/index.jsp");
            }
        %>
    </body>
</html>
