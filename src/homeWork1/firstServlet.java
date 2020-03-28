package homeWork1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "loginServlet", value = "/login.do")
public class firstServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>homework4</title>");
        out.println("</head>");
        out.println("<body>");
        String account = request.getParameter("account");
        String password = request.getParameter("password").replaceAll(" ", "");
        //不需考量多執行緒同步的時候我們使用StringBuilder來獲得最佳的效率，
        //要考慮多執行緒的情況下使用StringBuffer來讓類別自動處理同步的問題。
        StringBuffer errMessage = new StringBuffer();
        if(password == null || password.isEmpty() ){
            errMessage.append("<h1>密碼沒填—會員註冊失敗</h1>");
        }
        if(password.length() < 4){
            errMessage.append("<h1>密碼長度需大於4—會員註冊失敗</h1>");
        }
        if(account == null || account.isEmpty()){
            errMessage.append("<h1>密碼帳號—會員註冊失敗</h1>");
        }
        if( errMessage.length() == 0){
            out.println("<h1>歡迎" + account + "成為我門的會員</h1>");
        }else{
            out.println(errMessage);
        }
        //清空
        //errMessage.setLength(0)
        //errMessage.delete(0, errMessage.length())


        out.println("</body>");
        out.println("</html>");
    }
}
