package appointmentCourse;

import java.sql.*;
import java.util.*;

import DBConnection.DBConnection;

public class CourseDB {
	private Connection con = null;
	//获取用户个人的预约课程信息
	public ArrayList<CourseInfo> getMyappointment(String id) {
		ResultSet rSet = null;
		PreparedStatement preparedStatement = null;
		ArrayList<CourseInfo> myInfo = new ArrayList<CourseInfo>();
		try {
			con = DBConnection.getConnection();
			preparedStatement = con.prepareStatement("SELECT DISTINCT * FROM appointment WHERE courseName = ?");
			preparedStatement.setString(1, id);
			rSet = preparedStatement.executeQuery();
			while (rSet.next()) {
				CourseInfo  courseInfo = new CourseInfo();
				courseInfo.setAppointmentID(rSet.getInt(1));
				courseInfo.setCourseID(rSet.getInt(2));
				courseInfo.setCourseName(rSet.getString(3));
				courseInfo.setAppointmentTime(rSet.getString(4));
				myInfo.add(courseInfo);
			}
			System.out.println(myInfo.size());
			rSet.close();
			preparedStatement.close();
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
			System.out.println("获取个人信息失败！");
		} finally {
			DBConnection.closeConnection();
		}
		return myInfo;
	}
	//预约课程
	public int appointCourse(CourseInfo courseInfo) {
		PreparedStatement preparedStatement = null;
		int flag = 0;
		try {
			con = DBConnection.getConnection();
			preparedStatement = con.prepareStatement("INSERT INTO appointment (courseID, courseName, "
													+ "appointmentTime) VALUES (?, ?, ?);");
			preparedStatement.setInt(1, courseInfo.getCourseID());
			preparedStatement.setString(2, courseInfo.getCourseName());
			preparedStatement.setString(3, courseInfo.getAppointmentTime());
			flag = preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
			System.out.println("预约课程失败！");
		} finally {
			DBConnection.closeConnection();
		}
		return flag;
	}
	//取消预约
	public int cancelCourse(int id) {
		PreparedStatement pstmt = null;
		int count = 0;
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement("DELETE FROM appointment WHERE courseID = ?");
			pstmt.setInt(1, id);
			count = pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("删除失败");
		} finally {
			DBConnection.closeConnection();
		}
		return count;
	}
	
}



