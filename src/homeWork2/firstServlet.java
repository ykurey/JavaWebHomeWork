package homeWork2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "registerServlet", value = "/register.do")
public class firstServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String name = request.getParameter("name").trim();
        String age = request.getParameter("age").trim();
        String phone = request.getParameter("phone").trim();
        String email = request.getParameter("email").trim();
        ArrayList<String> errorMessage = new ArrayList<String>();
        if(name == null || name.equals("")){
            errorMessage.add("姓名未填寫");
        }
        if(age == null || age.equals("")){
            errorMessage.add("年齡未填寫");
        }
        if(phone == null || phone.equals("")){
            errorMessage.add("電話號碼未填寫");
        }
        if(email == null || email.equals("")){
            errorMessage.add("email未填寫");
        }
        if(errorMessage.isEmpty()){
            // form 過來用什麼方式，轉發就是用什麼方式
            request.getRequestDispatcher("/welcome.do").forward(request, response);
        }else if(errorMessage.size() != 0) {
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("/error.do").forward(request, response);
        }
    }
}
