

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
   
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
       

        Model user = new Model();
        boolean isValid = user.login(email,password);

        if (isValid) {
            HttpSession session = request.getSession();
            session.setAttribute("email", email);
            response.sendRedirect("welcome.jsp");
        } else {
            response.sendRedirect("loginFailure.jsp?error=Invalid credentials");
        }
    }
}

