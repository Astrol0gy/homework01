package appointmentCourse;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CourseCancelAction
 */
@WebServlet("/CourseCancelAction")
public class CourseCancelAction extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CourseDB beanDB = new CourseDB();
		int id = Integer.parseInt(request.getParameter("courseid"));
		int count = beanDB.cancelCourse(id);
		
		response.sendRedirect("GetMyAppointment");
	}

}
