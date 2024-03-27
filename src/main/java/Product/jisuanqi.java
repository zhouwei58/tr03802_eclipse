package Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/CalculatorServlet")
public class jisuanqi extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String aStr = request.getParameter("a");
        String bStr = request.getParameter("b");
        String operator = request.getParameter("o");

        double a = Double.parseDouble(aStr);
        double b = Double.parseDouble(bStr);

        double result = 0;
        // 根据选定的运算符进行计算
        if (operator.equals("+")) {
            result = a + b;
        } else if (operator.equals("-")) {
            result = a - b;
        } else if (operator.equals("*")) {
            result = a * b;
        } else if (operator.equals("/")) {
            if (b != 0) {
                result = a / b;
            } else {
                // 处理除数为0的情况
                result = Double.POSITIVE_INFINITY;
            }
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><body>");
        out.println("<h2>计算结果：</h2>");
        out.println("<p>" + a + operator + b + " = " + result + "</p>");
        out.println("</body></html>");
    }
}