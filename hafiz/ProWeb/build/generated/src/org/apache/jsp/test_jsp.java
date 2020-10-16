package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/";
String database = "cuisine";
String uid = "root";
String psw = "root";
Connection con;
ResultSet rs;
PreparedStatement ps;

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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>JSP Radio Button</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<form>\n");
      out.write("<h3>Select Your Favorite Cuisine :</h3>\n");
      out.write("<p><input type=\"radio\" name=\"dish\" value=\"Indian\"> Indian</input></p>\n");
      out.write("<p><input type=\"radio\" name=\"dish\" value=\"Continental\"> Continental</input></p>\n");
      out.write("<p><input type=\"radio\" name=\"dish\" value=\"Chinese\"> Chinese</input></p>\n");
      out.write("<p><input type=\"radio\" name=\"dish\" value=\"Italian\"> Italian</input></p>\n");
      out.write("<p><input type=\"radio\" name=\"dish\" value=\"Russian\"> Russian</input></p>\n");
      out.write("<input type=\"submit\" value=\"Submit\">\n");
      out.write("</form>\n");
      out.write("<br>\n");
      out.write('\n');

try
{
Class.forName(driver);
con = DriverManager.getConnection(url,uid,psw);
}
catch(ClassNotFoundException cx)
{
out.println(cx);
}
String option = request.getParameter("dish");
if(option !=(null))
{ 
try{

String sql = "INSERT INTO cuisine(favoriteCuisine) VALUES(?)";
ps= con.prepareStatement(sql);
ps.setString(1, option);
int i = ps.executeUpdate();
if(i != 0)
{
out.println("Your order has been made successfully");
}
else
out.println("Sorry your order can not be made try again later");


      out.write("\n");
      out.write("<p>You Cuisine order is for \n");
      out.print( option );
      out.write("</p>\n");

}
catch(Exception e)
{
out.println(e);
}
finally
{
if(rs != null)
{
rs.close();
}
if(ps != null)
{
ps.close();
}
if(con != null)
{
con.close();
}
}
} 

      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
