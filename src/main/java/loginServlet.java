import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext servletContext = getServletContext();

        String navn = request.getParameter("brugernavn");
        String kodeord = request.getParameter("kodeord ");


        if(servletContext.getAttribute("brugerMap")==null) {

            Map<String, String> brugerMap = new HashMap<>();

            brugerMap.put("test","test");

            servletContext.setAttribute("brugerMap", brugerMap);
        }

        if(!((Map<String,String>) servletContext.getAttribute("brugerMap")).containsKey(navn)  ){
            request.setAttribute("besked","Opret dig som bruger her");
            request.getRequestDispatcher("WEB-INF/OpretBruger.jsp").forward(request,response);
        }


        if( ((Map<String,String>) servletContext.getAttribute("brugerMap")).get(navn).equalsIgnoreCase(kodeord)){
            //TODO gå til huskeliste

            request.getRequestDispatcher("WEB-INF/HuskeListe.jsp").forward(request,response);
        }

        //TODO gå til index siden
        request.setAttribute("besked","Din kode var forkert");
        request.getRequestDispatcher("index.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
