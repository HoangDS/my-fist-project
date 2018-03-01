package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sanpham_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/style2.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\n");
      out.write("        <div id=\"container\">\n");
      out.write("            <div id=\"content\">\n");
      out.write("                <div class=\"bgimg\">\n");
      out.write("                    <img style=\"height: 495px; width: 1400px\" src=\"image/coming_soon.png\">\n");
      out.write("                    <div class=\"topleft\">\n");
      out.write("                        <p>Hoang TMS</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"middle\">\n");
      out.write("                        <h1>COMING SOON</h1>\n");
      out.write("                        <hr>\n");
      out.write("                        <p id=\"demo\" style=\"font-size:30px\"></p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"bottomleft\">\n");
      out.write("                        <p>Hàng sắp về: Iphone X</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <script>\n");
      out.write("                // Set the date we're counting down to\n");
      out.write("                    var countDownDate = new Date(\"December 10, 2017 15:37:25\").getTime();\n");
      out.write("\n");
      out.write("                // Update the count down every 1 second\n");
      out.write("                    var countdownfunction = setInterval(function () {\n");
      out.write("\n");
      out.write("                        // Get todays date and time\n");
      out.write("                        var now = new Date().getTime();\n");
      out.write("\n");
      out.write("                        // Find the distance between now an the count down date\n");
      out.write("                        var distance = countDownDate - now;\n");
      out.write("\n");
      out.write("                        // Time calculations for days, hours, minutes and seconds\n");
      out.write("                        var days = Math.floor(distance / (1000 * 60 * 60 * 24));\n");
      out.write("                        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));\n");
      out.write("                        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));\n");
      out.write("                        var seconds = Math.floor((distance % (1000 * 60)) / 1000);\n");
      out.write("\n");
      out.write("                        // Output the result in an element with id=\"demo\"\n");
      out.write("                        document.getElementById(\"demo\").innerHTML = days + \"d \" + hours + \"h \"\n");
      out.write("                                + minutes + \"m \" + seconds + \"s \";\n");
      out.write("\n");
      out.write("                        // If the count down is over, write some text \n");
      out.write("                        if (distance < 0) {\n");
      out.write("                            clearInterval(countdownfunction);\n");
      out.write("                            document.getElementById(\"demo\").innerHTML = \"EXPIRED\";\n");
      out.write("                        }\n");
      out.write("                    }, 1000);\n");
      out.write("                </script>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
