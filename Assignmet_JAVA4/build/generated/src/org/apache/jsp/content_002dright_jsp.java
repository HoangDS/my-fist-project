package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class content_002dright_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"css/style1.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"content-right\">\n");
      out.write("           \n");
      out.write("            <img src=\"image/right1.png\"><br><br>\n");
      out.write("            <img src=\"image/right2.png\"><br>\n");
      out.write("            <h3>Tin tức công nghệ</h3>\n");
      out.write("            <hr/><hr/>\n");
      out.write("            <p style=\"font-size: 14px; face: Time new roman; text-align:justify; line-height:22px\">\n");
      out.write("                <img style=\"float: left; width: 105px; margin-right: 5px;\" src =image/right3.png>\n");
      out.write("                iPhone 7, iPhone 7 Plus đồng loạt giảm giá như chưa từng được giảm\n");
      out.write("            </p><br>\n");
      out.write("            <p style=\"font-size: 14px; face: Time new roman; text-align:justify; line-height:22px\">\n");
      out.write("                <img style=\"float: left; width: 105px; margin-right: 5px;\" src =image/right5.png>\n");
      out.write("                Lại là tin rất buồn cho ai đang chờ mua iPhone X\n");
      out.write("            </p>\n");
      out.write("            \n");
      out.write("            <div class=\"col-25\">\n");
      out.write("                    <div class=\"prod\">\n");
      out.write("                        <div class=\"name\"><h3 style=\"color: #FB060A\">SamSung J7 Pro</h3></div>\n");
      out.write("                        <img src=\"image/2.png\" alt=\"Avatar\" class=\"image\">\n");
      out.write("                        <div class=\"overlay\">\n");
      out.write("                            <div class=\"text\">\n");
      out.write("                                <a>\n");
      out.write("                                    * Thông tin sản phẩm<br>\n");
      out.write("                                     -Công nghệ cảm biến hình ảnh<br>\n");
      out.write("                                     -Mặt sau bằng kim loại <br>\n");
      out.write("                                     -Quản lý pin thông minh<br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <strong style=\"color: red\">Giá: 6.990.000 VND</strong>\n");
      out.write("                                </a>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("        </div>\n");
      out.write("\n");
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
