package appointmentCourse;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.MyTools;

@WebServlet("/CourseAppointAction")
public class CourseAppointAction extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CourseDB beanDB = new CourseDB();
		CourseInfo course = new CourseInfo();
		course.setCourseID(MyTools.strToint(request.getParameter("courseid")));
		course.setCourseName(String.valueOf(request.getSession().getAttribute("id")));
		course.setAppointmentTime(request.getParameter("date"));
		beanDB.appointCourse(course);
		response.sendRedirect("GetMyAppointment");
	}

}
