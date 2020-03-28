package homeWork2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "errorServlet", value = "/error.do")
public class errorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>失敗</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>報名失敗</h1>");
        ArrayList<String> errorMessage = (ArrayList<String>) request.getAttribute("errorMessage");
        for(String error:errorMessage){
            out.println("<h1>" + error + "</h1>");
        }
        out.println("<a href='/template/homeWork2/index.html'>回首頁</a>");
        out.println("</body>");
        out.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}