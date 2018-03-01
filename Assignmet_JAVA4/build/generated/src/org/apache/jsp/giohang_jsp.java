package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.GioHangDAO;

public final class giohang_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <title>Giỏ hàng - HoangTmS Mobile</title>\n");
      out.write("    </head>\n");
      out.write("    ");

        if (session != null) {
            if (session.getAttribute("USERNAME") == null) {
                response.sendRedirect("login.jsp");
            }
        }
    
      out.write("\n");
      out.write("    ");
 GioHangDAO ghDAO = new GioHangDAO();
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"container\" style=\"min-height:  700px\">\n");
      out.write("                <div class=\"col-sm-8\">\n");
      out.write("                    <h2 style=\"color: firebrick\"><strong>Giỏ hàng của khách hàng</strong></h2>\n");
      out.write("                    <table class=\"table table-bordered\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Username</th>\n");
      out.write("                                <th>Mã sản phẩm</th>\n");
      out.write("                                <th>Tên sản phẩm</th>\n");
      out.write("                                <th>Số lượng</th>\n");
      out.write("                                <th>Giá</th>\n");
      out.write("                                <th>Action</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>SyHoang</td>\n");
      out.write("                                <td>SP01</td>\n");
      out.write("                                <td>SamSung S8</td>\n");
      out.write("                                <td class=\"cart_quantity\">\n");
      out.write("                                    <div class=\"cart_quantity_button\">\n");
      out.write("                                        <a class=\"cart_quantity_up\" href=\"\"> + </a>\n");
      out.write("                                        <input class=\"cart_quantity_input\" type=\"text\" name=\"quantity\" value=\"1\" autocomplete=\"off\" size=\"2\">\n");
      out.write("                                        <a class=\"cart_quantity_down\" href=\"\"> - </a>\n");
      out.write("                                    </div>\n");
      out.write("                                </td>\n");
      out.write("                                <td>22000000</td>\n");
      out.write("                                <td>\n");
      out.write("                        <center>\n");
      out.write("                            <a href=\"\"><i class=\"fa fa-trash\" aria-hidden=\"true\"></i></a>\n");
      out.write("                        </center>\n");
      out.write("                        </td>\n");
      out.write("                        </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"col-sm-3\">\n");
      out.write("                        <h2 style=\"color: firebrick\"><strong>Thanh toán</strong></h2>\n");
      out.write("                        <form>\n");
      out.write("                            Tổng số lượng: <br>\n");
      out.write("                            Tổng tiền: <br><hr>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-info btn-lg\">Thanh toán</button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
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
