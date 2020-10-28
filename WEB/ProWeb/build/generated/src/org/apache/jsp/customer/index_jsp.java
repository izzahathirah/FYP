package org.apache.jsp.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");

 String driver = "com.mysql.jdbc.Driver";
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
 String idcustomer = request.getParameter("idcustomer");
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "SELECT * FROM customer WHERE idcustomer = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, idcustomer);
 rs = stmt.executeQuery();
 rs.next();
 } catch (Exception e) {
 e.printStackTrace();
 }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <title>Customer</title>\n");
      out.write("        <body bgcolor=\"#bd3c81\" style=\"text-align: center;\">\n");
      out.write("            <link rel=\"stylesheet\" href=\"user.css\">\n");
      out.write("  <center><img src=\"tesco.png\" alt=\"\" style=\"width: 250px\"></center>\n");
      out.write("  \n");
      out.write("  <center>\n");
      out.write("    <style type = \"text/css\">\n");
      out.write("      table, td, th {\n");
      out.write("          border: 1px solid black;\n");
      out.write("          padding: 5px;\n");
      out.write("      } \n");
      out.write("    </style>\n");
      out.write("  </center>\n");
      out.write("          <h1> Welcome , Customer ");
      out.print(rs.getString("idcustomer"));
      out.write("</h1>\n");
      out.write("        <h1>Please check your information!</h1>\n");
      out.write("        <nav class=\"w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding\" style=\"z-index:3;width:300px;font-weight:bold;\" id=\"mySidebar\"><br>\n");
      out.write("  <a href=\"javascript:void(0)\" onclick=\"w3_close()\" class=\"w3-button w3-hide-large w3-display-topleft\" style=\"width:100%;font-size:22px\">Close Menu</a>\n");
      out.write("  <div class=\"w3-container\">\n");
      out.write("    <h3 class=\"w3-padding-64\"><b>Welcome<br>Name</b></h3>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"w3-bar-block\">\n");
      out.write("    <a href=\"#\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\">Home</a> \n");
      out.write("    <a href=\"#showcase\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\">Showcase</a> \n");
      out.write("    <a href=\"#services\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\">Services</a> \n");
      out.write("    <a href=\"#designers\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\">Designers</a> \n");
      out.write("    <a href=\"#packages\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\">Packages</a> \n");
      out.write("    <a href=\"#contact\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\">Contact</a>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("        <table align=\"center\">\n");
      out.write("            <tr>\n");
      out.write("                <th style=\"background-color: #56d9e8\" colspan=\"2\">Customer</th>\n");
      out.write("            </tr>    \n");
      out.write("            <tr>\n");
      out.write("                <td style=\"background-color: #fff0e6\">Name</td>\n");
      out.write("                <td style=\"background-color: #fff0e6\">");
      out.print(rs.getString("nama"));
      out.write("</td>  \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td style=\"background-color: #fff0e6\">Phone Number</td>\n");
      out.write("                <td style=\"background-color: #fff0e6\">");
      out.print(rs.getString("telefon"));
      out.write("</td>  \n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
