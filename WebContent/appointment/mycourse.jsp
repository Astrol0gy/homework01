<%@ page contentType="text/html;charset=GB2312" import="appointmentCourse.*,java.util.*"%>
<%
	String path = request.getContextPath();
	ArrayList<CourseInfo> reclist=(ArrayList<CourseInfo>)session.getAttribute("mycourselist");
	session.removeAttribute("mycourselist");
	if(reclist==null){//�������ݻ�δ����
		reclist=new ArrayList<CourseInfo>();
	}
%>

<html>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/course.css">

  <body>
		<table width="100%" height="100" border="0" cellpadding="0"
			cellspacing="0" align="center">
			<tr>
				<td height="25" colspan="6" class="tb_showall" align="center">
					�ҵ�ԤԼ
				</td>
			</tr>
			<tr class="td_header">
				<td>�γ�ID</td>
				<td></td>
				<td></td>
				<td>ԤԼʱ��</td>
				<td></td>
				<td></td>
			</tr>
<% int count=reclist.size();
for(int i=0;i<count;i++){
	CourseInfo course=reclist.get(i);
	%>
			<tr class="td_<%=i%2+1%>">
				<td><%=course.getCourseID() %></td>
				<td></td>
				<td></td>
				<td><%=course.getAppointmentTime() %></td>
				<td>
					<a href="<%=path %>/CourseCancelAction?courseid=<%=course.getCourseID()%>">ȡ��ԤԼ</a>
				</td>
			</tr>
	<%
}
 %>	
			<tr><td colspan="4"><a href="<%=path %>/appointment/appointment_add.jsp">ԤԼ�γ�</a>
				<td colspan="4"><a href="<%=path %>/GetMyAppointment">ˢ�������б�</a>
			</tr>
		</table>


  </body>
</html>
