package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <title>Shop Homepage - Start Bootstrap Template</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"css/shop-homepage.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <section class=\"vh-100\">\n");
      out.write("            <div class=\"container py-5 h-100\">\n");
      out.write("                <div class=\"row d-flex align-items-center justify-content-center h-100\">\n");
      out.write("                    <div class=\"col-md-8 col-lg-7 col-xl-6\">\n");
      out.write("                        <img src=\"https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg\" class=\"img-fluid\" alt=\"Phone image\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-7 col-lg-5 col-xl-5 offset-xl-1\">\n");
      out.write("                        <form>\n");
      out.write("                            <!-- Email input -->\n");
      out.write("                            <div class=\"form-outline mb-4\">\n");
      out.write("                                <input type=\"email\" id=\"form1Example13\" class=\"form-control form-control-lg\" />\n");
      out.write("                                <label class=\"form-label\" for=\"form1Example13\">Email address</label>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <!-- Password input -->\n");
      out.write("                            <div class=\"form-outline mb-4\">\n");
      out.write("                                <input type=\"password\" id=\"form1Example23\" class=\"form-control form-control-lg\" />\n");
      out.write("                                <label class=\"form-label\" for=\"form1Example23\">Password</label>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"d-flex justify-content-around align-items-center mb-4\">\n");
      out.write("                                <!-- Checkbox -->\n");
      out.write("                                <div class=\"form-check\">\n");
      out.write("                                    <input\n");
      out.write("                                        class=\"form-check-input\"\n");
      out.write("                                        type=\"checkbox\"\n");
      out.write("                                        value=\"\"\n");
      out.write("                                        id=\"form1Example3\"\n");
      out.write("                                        checked\n");
      out.write("                                        />\n");
      out.write("                                    <label class=\"form-check-label\" for=\"form1Example3\"> Remember me </label>\n");
      out.write("                                </div>\n");
      out.write("                                <a href=\"#!\">Forgot password?</a>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <!-- Submit button -->\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary btn-lg btn-block\">Sign in</button>\n");
      out.write("\n");
      out.write("                            <div class=\"divider d-flex align-items-center my-4\">\n");
      out.write("                                <p class=\"text-center fw-bold mx-3 mb-0 text-muted\">OR</p>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <a class=\"btn btn-primary btn-lg btn-block\" style=\"background-color: #3b5998\" href=\"#!\" role=\"button\">\n");
      out.write("                                <i class=\"fab fa-facebook-f me-2\"></i>Continue with Facebook\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"btn btn-primary btn-lg btn-block\" style=\"background-color: #55acee\" href=\"#!\" role=\"button\">\n");
      out.write("                                <i class=\"fab fa-twitter me-2\"></i>Continue with Twitter</a>\n");
      out.write("\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core JavaScript -->\n");
      out.write("        <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("        <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
