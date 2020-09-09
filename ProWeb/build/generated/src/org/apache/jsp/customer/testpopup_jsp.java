package org.apache.jsp.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class testpopup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
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
 String idstud = request.getParameter("idstud");
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
 





      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>");
      out.print(rs.getString("nama"));
      out.write("</title>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"user.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/Table.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/pp.css\">\n");
      out.write("        \n");
      out.write(" <style>\n");
      out.write("body,h1,h2,h3,h4,h5 {font-family: \"Poppins\", sans-serif}\n");
      out.write("body {font-size:16px;}\n");
      out.write(".w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}\n");
      out.write(".w3-half img:hover{opacity:1}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("/* The Modal (background) */\n");
      out.write(".modal {\n");
      out.write("  display: none; /* Hidden by default */\n");
      out.write("  position: fixed; /* Stay in place */\n");
      out.write("  z-index: 1; /* Sit on top */\n");
      out.write("  left: 0;\n");
      out.write("  top: 0;\n");
      out.write("  width: 100%; /* Full width */\n");
      out.write("  height: 100%; /* Full height */\n");
      out.write("  overflow: auto; /* Enable scroll if needed */\n");
      out.write("  background-color: rgb(0,0,0); /* Fallback color */\n");
      out.write("  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */\n");
      out.write("  -webkit-animation-name: fadeIn; /* Fade in the background */\n");
      out.write("  -webkit-animation-duration: 0.4s;\n");
      out.write("  animation-name: fadeIn;\n");
      out.write("  animation-duration: 0.4s\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Modal Content */\n");
      out.write(".modal-content {\n");
      out.write("  position: fixed;\n");
      out.write("  bottom: 0;\n");
      out.write("  background-color: #fefefe;\n");
      out.write("  width: 100%;\n");
      out.write("  -webkit-animation-name: slideIn;\n");
      out.write("  -webkit-animation-duration: 0.4s;\n");
      out.write("  animation-name: slideIn;\n");
      out.write("  animation-duration: 0.4s\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The Close Button */\n");
      out.write(".close {\n");
      out.write("  color: white;\n");
      out.write("  float: right;\n");
      out.write("  font-size: 28px;\n");
      out.write("  font-weight: bold;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".close:hover,\n");
      out.write(".close:focus {\n");
      out.write("  color: #000;\n");
      out.write("  text-decoration: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".modal-header {\n");
      out.write("  padding: 2px 16px;\n");
      out.write("  background-color: #5cb85c;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".modal-body {padding: 2px 16px;}\n");
      out.write("\n");
      out.write(".modal-footer {\n");
      out.write("  padding: 2px 16px;\n");
      out.write("  background-color: #5cb85c;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add Animation */\n");
      out.write("@-webkit-keyframes slideIn {\n");
      out.write("  from {bottom: -300px; opacity: 0} \n");
      out.write("  to {bottom: 0; opacity: 1}\n");
      out.write("}\n");
      out.write("\n");
      out.write("@keyframes slideIn {\n");
      out.write("  from {bottom: -300px; opacity: 0}\n");
      out.write("  to {bottom: 0; opacity: 1}\n");
      out.write("}\n");
      out.write("\n");
      out.write("@-webkit-keyframes fadeIn {\n");
      out.write("  from {opacity: 0} \n");
      out.write("  to {opacity: 1}\n");
      out.write("}\n");
      out.write("\n");
      out.write("@keyframes fadeIn {\n");
      out.write("  from {opacity: 0} \n");
      out.write("  to {opacity: 1}\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write(" <nav class=\"w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding\" style=\"z-index:3;width:300px;font-weight:bold;\" id=\"mySidebar\"><br>\n");
      out.write("  <a href=\"javascript:void(0)\" onclick=\"w3_close()\" class=\"w3-button w3-hide-large w3-display-topleft\" style=\"width:100%;font-size:22px\">Close Menu</a>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <div class=\"w3-container\">\n");
      out.write("    <h3 class=\"w3-padding-64\"><b>Welcome<br> ");
      out.print(rs.getString("nama"));
      out.write("</b></h3>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <div class=\"w3-bar-block\">\n");
      out.write("    <a href=\"#\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\"><img src=\"../img/home.png\"  width=\"40\" height=\"40\">Laman Utama</a> \n");
      out.write("    <a href=\"#maklumatpelajar\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\"><img src=\"../img/profile.png\"  width=\"40\" height=\"40\">Maklumat Pelajar</a> \n");
      out.write("    <a href=\"#book\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\"><img src=\"../img/booking.png\"  width=\"40\" height=\"40\">Tempah Bilik</a> \n");
      out.write("    <a href=\"#aduan\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\"><img src=\"../img/aduan.png\"  width=\"40\" height=\"40\">Aduan</a><br>\n");
      out.write("    <a href=\"../logout.jsp\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\">​<img src=\"../img/logout.png\"  width=\"40\" height=\"40\">Logout</a>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("  <div class=\"w3-main\" style=\"margin-left:340px;margin-right:40px\">\n");
      out.write("      <h1 class=\"w3-xxxlarge w3-text-red\"><b>Welcome</b><br>");
      out.print(rs.getString("nama"));
      out.write("</h1>\n");
      out.write("         <hr style=\"width:100%;border:5px solid red\" class=\"w3-round\">\n");
      out.write("   \n");
      out.write(" <div class=\"w3-overlay w3-hide-large\" onclick=\"w3_close()\" style=\"cursor:pointer\" title=\"close side menu\" id=\"myOverlay\"></div>\n");
      out.write("    <div class=\"w3-row-padding\">\n");
      out.write("    <div class=\"w3-half\">\n");
      out.write("      <img src=\"../img/img1.jpg\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"Concrete meets bricks\">\n");
      out.write("      <img src=\"../img/img2.jpg\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"Light, white and tight scandinavian design\">\n");
      out.write("      <img src=\"../img/img3.jpg\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"White walls with designer chairs\">\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"w3-half\">\n");
      out.write("      <img src=\"../img/img4.jpg\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"Windows for the atrium\">\n");
      out.write("      <img src=\"../img/img5.jpg\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"Bedroom and office in one space\">\n");
      out.write("      <img src=\"../img/img6.jpg\" style=\"width:100%\" onclick=\"onClick(this)\" alt=\"Scandinavian design\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("     \n");
      out.write("          <hr id=\"maklumatpelajar\" style=\"width:100%;border:5px solid red\" class=\"w3-round\">\n");
      out.write("<div class=\"tbl-header\">\n");
      out.write("  \n");
      out.write("  <h1 class=\"w3-xxxlarge w3-text-red\">Maklumat Pelajar</h1>\n");
      out.write("  \n");
      out.write("  <div class=\"tbl-header\">\n");
      out.write("    <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n");
      out.write("      <thead>\n");
      out.write("      <tr>\n");
      out.write("        <th>Username</th>\n");
      out.write("        <td>");
      out.print(rs.getString("username"));
      out.write("</td>  \n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <th>Password</th>\n");
      out.write("        <td>");
      out.print(rs.getString("password"));
      out.write("</td>  \n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <th>Nama</th>\n");
      out.write("        <td>");
      out.print(rs.getString("nama"));
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <th>No.Ic</th>\n");
      out.write("        <td>");
      out.print(rs.getString("ic"));
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <th>No.Matrik</th>\n");
      out.write("        <td>");
      out.print(rs.getString("kadmatrik"));
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <th>No.Tel</th>\n");
      out.write("        <td>");
      out.print(rs.getString("notel"));
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <th>Jantina</th>\n");
      out.write("        <td>");
      out.print(rs.getString("jantina"));
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <th>Bangsa</th>\n");
      out.write("        <td>");
      out.print(rs.getString("bangsa"));
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("        <th>Course</th>\n");
      out.write("        <td>");
      out.print(rs.getString("kos"));
      out.write("</td>\n");
      out.write("    <tr>\n");
      out.write("        <th>Semester</th>\n");
      out.write("        <td>");
      out.print(rs.getString("sem"));
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("      </thead>\n");
      out.write("       <a href=\"../update.jsp\" onclick=\"w3_close()\" class=\"w3-bar-item w3-button w3-hover-white\"><img src=\"../img/kemaskini.png\"  width=\"40\" height=\"40\">kemaskini</a>\n");
      out.write("    </table>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("   <hr style=\"width:100%;border:5px solid red\" class=\"w3-round\">\n");
      out.write("    \n");
      out.write("    <div class=\"w3-container\" style=\"margin-top:75px\">\n");
      out.write("    <hr id=\"maklumatpelajar\" style=\"width:100%;border:5px solid red\" class=\"w3-round\">\n");
      out.write("    <h1 id=\"book\" class=\"w3-xxxlarge w3-text-red\"><b>Packages.</b></h1>\n");
      out.write("    <p>Some text our prices. Lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure</p>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"w3-row-padding\">\n");
      out.write("    <div class=\"w3-half w3-margin-bottom\">\n");
      out.write("      <ul class=\"w3-ul w3-light-grey w3-center\">\n");
      out.write("        <li class=\"w3-dark-grey w3-xlarge w3-padding-32\">Basic</li>\n");
      out.write("        <li class=\"w3-padding-16\">Aras 1-5</li>\n");
      out.write("        <li class=\"w3-padding-16\">1 Sem</li>\n");
      out.write("        <li class=\"w3-padding-16\">10 Blok(4 Siswa/6 Siswi)</li>\n");
      out.write("        <li class=\"w3-padding-16\">Kemudahan Disediakan</li>\n");
      out.write("        <li class=\"w3-padding-16\"><font color=\"red\">Sila bawa Dokumen ketika hari pendaftaran</font></li>\n");
      out.write("        <li class=\"w3-padding-16\">\n");
      out.write("          <h2>RM 60.00</h2>\n");
      out.write("          <span class=\"w3-opacity\">per room</span>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"w3-light-grey w3-padding-24\">\n");
      out.write("          <button id=\"myBtn\"class=\"w3-button w3-white w3-padding-large w3-hover-black\">Tempah</button>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("      \n");
      out.write("       <div class=\"w3-half\">\n");
      out.write("      <ul class=\"w3-ul w3-light-grey w3-center\">\n");
      out.write("        <li class=\"w3-red w3-xlarge w3-padding-32\">Pro</li>\n");
      out.write("        <li class=\"w3-padding-16\">Aras 1-5</li>\n");
      out.write("        <li class=\"w3-padding-16\">6 sem</li>\n");
      out.write("        <li class=\"w3-padding-16\">10 Blok(4 Siswa/6 Siswi)</li>\n");
      out.write("        <li class=\"w3-padding-16\">Kemudahan Disediakan</li>\n");
      out.write("        <li class=\"w3-padding-16\"><font color=\"red\">Sila bawa Dokumen ketika hari pendaftaran</font></li>\n");
      out.write("        <li class=\"w3-padding-16\">\n");
      out.write("          <h2>RM 320 off 10%</h2>\n");
      out.write("          <span class=\"w3-opacity\">per room</span>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"w3-light-grey w3-padding-24\">\n");
      out.write("          <button id=\"myBtn1\" class=\"w3-button w3-white w3-padding-large w3-hover-red\">Tempah</button>\n");
      out.write(" \n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("            \n");
      out.write("            <div class=\"w3-container\" style=\"margin-top:75px\">\n");
      out.write("      <hr id=\"aduan\" style=\"width:100%;border:5px solid red\" class=\"w3-round\">\n");
      out.write("    <h1 class=\"w3-xxxlarge w3-text-red\"><b>Contact.</b></h1>\n");
      out.write(" \n");
      out.write("    <p>Do you want us to style your home? Fill out the form and fill me in with the details :) We love meeting new people!</p>\n");
      out.write("    <form action=\"index.jsp\" target=\"_blank\">\n");
      out.write("      <div class=\"w3-section\">\n");
      out.write("        <label>Name</label>\n");
      out.write("        <input class=\"w3-input w3-border\" type=\"text\" name=\"Name\" required>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"w3-section\">\n");
      out.write("        <label>Email</label>\n");
      out.write("        <input class=\"w3-input w3-border\" type=\"text\" name=\"Email\" required>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"w3-section\">\n");
      out.write("        <label>Message</label>\n");
      out.write("        <input class=\"w3-input w3-border\" type=\"text\" name=\"Message\" required>\n");
      out.write("      </div>\n");
      out.write("      <button type=\"submit\" class=\"w3-button w3-block w3-padding-large w3-red w3-margin-bottom\">Send Message</button>\n");
      out.write("    </form>  \n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("          \n");
      out.write(" \n");
      out.write("        \n");
      out.write("<h2>Bottom Modal</h2>\n");
      out.write("\n");
      out.write("<!-- Trigger/Open The Modal -->\n");
      out.write("<button id=\"myBtn\">Open Modal</button>\n");
      out.write("\n");
      out.write("<!-- The Modal -->\n");
      out.write("<div id=\"myModal\" class=\"modal\">\n");
      out.write("\n");
      out.write("  <!-- Modal content -->\n");
      out.write("  <div class=\"modal-content\">\n");
      out.write("    <div class=\"modal-header\">\n");
      out.write("      <span class=\"close\">&times;</span>\n");
      out.write("      <h2>Modal Header</h2>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"modal-body\">\n");
      out.write("      <p>Some text in the Modal Body</p>\n");
      out.write("      <p>Some other text...</p>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"modal-footer\">\n");
      out.write("      <h3>Modal Footer</h3>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("// Get the modal\n");
      out.write("var modal = document.getElementById(\"myModal\");\n");
      out.write("\n");
      out.write("// Get the button that opens the modal\n");
      out.write("var btn = document.getElementById(\"myBtn\");\n");
      out.write("var btn1 = document.getElementById(\"myBtn1\");\n");
      out.write("\n");
      out.write("// Get the <span> element that closes the modal\n");
      out.write("var span = document.getElementsByClassName(\"close\")[0];\n");
      out.write("\n");
      out.write("// When the user clicks the button, open the modal \n");
      out.write("btn.onclick = function() {\n");
      out.write("  modal.style.display = \"block\";\n");
      out.write("}\n");
      out.write("btn1.onclick = function() {\n");
      out.write("  modal.style.display = \"block\";\n");
      out.write("}\n");
      out.write("\n");
      out.write("// When the user clicks on <span> (x), close the modal\n");
      out.write("span.onclick = function() {\n");
      out.write("  modal.style.display = \"none\";\n");
      out.write("}\n");
      out.write("\n");
      out.write("// When the user clicks anywhere outside of the modal, close it\n");
      out.write("window.onclick = function(event) {\n");
      out.write("  if (event.target == modal) {\n");
      out.write("    modal.style.display = \"none\";\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
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
