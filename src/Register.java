

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebServlet("/Register")
public class Register extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String city=request.getParameter("city");
		String password=request.getParameter("password");
		String email =request.getParameter("email");
		Model model = new Model();
		model.setName(name);
		model.setCity(city);
		model.setPassword(password);
		model.setEmailId(email);
		
		
		int row = model.register();
		HttpSession session = request.getSession();
		session.setAttribute("Name", name);
		if(row==0) 
		{
			
			response.sendRedirect("/RegistrationAppMVC/failure.jsp");
		}
		else
		{
			response.sendRedirect("/RegistrationAppMVC/succes.jsp");
		}
		
	}

}
