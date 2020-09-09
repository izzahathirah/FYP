package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registerStud_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/register.scss\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"user\">\n");
      out.write("    <header class=\"user__header\">\n");
      out.write("        <img src=\"https://s3-us-west-2.amazonaws.com/s.cdpn.io/3219/logo.svg\" alt=\"\" />\n");
      out.write("        <h1 class=\"user__title\">A lightweight and simple sign-up form</h1>\n");
      out.write("    </header>\n");
      out.write("    \n");
      out.write("    <form class=\"form\">\n");
      out.write("        <div class=\"form__group\">\n");
      out.write("            <input type=\"text\" placeholder=\"Username\" class=\"form__input\" />\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"form__group\">\n");
      out.write("            <input type=\"email\" placeholder=\"Email\" class=\"form__input\" />\n");
      out.write("        </div>\n");
      out.write("           <div class=\"form__group\">\n");
      out.write("            <input type=\"email\" placeholder=\"Email\" class=\"form__input\" />\n");
      out.write("        </div>   <div class=\"form__group\">\n");
      out.write("            <input type=\"email\" placeholder=\"Email\" class=\"form__input\" />\n");
      out.write("        </div>   <div class=\"form__group\">\n");
      out.write("            <input type=\"email\" placeholder=\"Email\" class=\"form__input\" />\n");
      out.write("        </div>   <div class=\"form__group\">\n");
      out.write("            <input type=\"email\" placeholder=\"Email\" class=\"form__input\" />\n");
      out.write("        </div>   <div class=\"form__group\">\n");
      out.write("            <input type=\"email\" placeholder=\"Email\" class=\"form__input\" />\n");
      out.write("        </div>   <div class=\"form__group\">\n");
      out.write("            <input type=\"email\" placeholder=\"Email\" class=\"form__input\" />\n");
      out.write("        </div>   <div class=\"form__group\">\n");
      out.write("            <input type=\"email\" placeholder=\"Email\" class=\"form__input\" />\n");
      out.write("        </div>   <div class=\"form__group\">\n");
      out.write("            <input type=\"email\" placeholder=\"Email\" class=\"form__input\" />\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"form__group\">\n");
      out.write("            <input type=\"password\" placeholder=\"Password\" class=\"form__input\" />\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <button class=\"btn\" type=\"button\">Register</button>\n");
      out.write("    </form>\n");
      out.write("</div>\n");
      out.write("        <script>\n");
      out.write("            const button = document.querySelector('.btn')\n");
      out.write("const form   = document.querySelector('.form')\n");
      out.write("\n");
      out.write("button.addEventListener('click', function() {\n");
      out.write("   form.classList.add('form--no') \n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("    </body>\n");
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
