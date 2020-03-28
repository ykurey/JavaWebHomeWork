package homeWork2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "successServlet", value = "/welcome.do")
public class successServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>成功</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>servlet歡迎</h1>");
        out.println("<h1>你的姓名：" + request.getParameter("name") + "</h1>");
        out.println("<h1>你的年齡：" + request.getParameter("age") + "</h1>");
        out.println("<h1>你的電話：" + request.getParameter("phone") + "</h1>");
        out.println("<h1>你的email：" + request.getParameter("email") + "</h1>");
        out.println("</body>");
        out.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
