import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ResumeServlet", urlPatterns = "/resume")
public class ResumeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String content = "<h1>My Resume</h1>";
        content += "<p>I write a lot of code. Check my GitHub</p>";
        content += "<hr><br>";
        content += "<a href='https://github.com/lauraldavis'>My GitHub Profile</a><br>";
        content += "<a href='/portfolio'>My Portfolio</a>";

        out.println(content);
    }

}
