import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CountServlet", urlPatterns = "/count")
public class CountServlet extends HttpServlet {

    private int count = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        count++;
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String reset = req.getParameter("reset");

        if(reset == null){
            count = count;
        } else if (reset.equalsIgnoreCase("true")){
            count = 0;
        } else {
            count = count;
        }

        out.println("<h1>This page has been visited " + count + " times.</h1>");

    }
}
