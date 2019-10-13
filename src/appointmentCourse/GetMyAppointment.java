package appointmentCourse;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetMyAppointment
 */
@WebServlet("/GetMyAppointment")
public class GetMyAppointment extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CourseDB beanDB = new CourseDB();
		//1、获取客户端请求
		String id =String.valueOf(request.getSession().getAttribute("id"));
		//2、进行数据处理
		request.getSession().setAttribute("mycourselist",beanDB.getMyappointment(id));
		request.getSession().setAttribute("id", id);
	 	//3、向客户端做出响应
		response.sendRedirect(request.getContextPath()+"/appointment/mycourse.jsp" );//重定向
	}

}
