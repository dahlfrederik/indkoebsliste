import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

@WebServlet(name = "AddItemServlet", urlPatterns = {"/AddItemServlet"})
public class AddItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        String vareNavn = request.getParameter("vareNavn");

        if(((Set<String>)session.getAttribute("indkøb") )==null ){

            Set<String> indkøb = new HashSet<>();

            session.setAttribute("indkøb", indkøb);
        }
        ((Set<String>)session.getAttribute("indkøb")).add(vareNavn);

        request.setAttribute("besked","Her kan du se dine valgte varer");
        request.getRequestDispatcher("WEB-INF/HuskeListe.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
