<%@ page contentType="text/html;charset=GB2312" import="appointmentCourse.*,java.util.*"%>
<%
String path = request.getContextPath();
%>
<html>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/course.css">
  <body>
  <form name="frm" action="#" method="post">
		<table width="100%" height="100" border="0" cellpadding="0"
			cellspacing="0" align="center">
			<tr>
				<td height="25" colspan="6" class="tb_showall" align="center">
					ԤԼ�γ�
				</td>
			</tr>
			<tr class="td_header">
				<td>�γ�ID</td>
				<td>�γ�����</td>
				<td>����</td>
				<td>���ڳ���</td>
				<td>ԤԼʱ��</td>
				<td></td>
			</tr>
			<tr class="td_1">
				<td><input type="text" name="courseid" value="1234" size="20" readonly="readonly" style="border:none;background-color:transparent" /></td>
				<td><input type="text" name="coursename" value="�ܲ�" size="20" readonly="readonly" style="border:none;background-color:transparent" /></td>
				<td><input type="text" name="coach" value="����" size="20" readonly="readonly" style="border:none;background-color:transparent"/></td>
				<td><input type="text" name="site" value="����1¥" size="20" readonly="readonly" style="border:none;background-color:transparent"/></td>
				<td><input type="text" name="date" value="2019-10-06 14:00:00" size="20" readonly="readonly" style="border:none;background-color:transparent"/></td>
				<td>
					<a href="<%=path %>/CourseAppointAction?courseid=1234&date=2019-10-06 14:00:00"><input name="1" type="button" value="ԤԼ"/></a>
				</td>
			</tr>
			<tr class="td_2">
				<td><input type="text" name="courseid" value="2564315" size="20" readonly="readonly" style="border:none;background-color:transparent" /></td>
				<td><input type="text" name="coursename" value="�ܲ�" size="20" readonly="readonly" style="border:none;background-color:transparent" /></td>
				<td><input type="text" name="coach" value="����" size="20" readonly="readonly" style="border:none;background-color:transparent"/></td>
				<td><input type="text" name="site" value="����3¥" size="20" readonly="readonly" style="border:none;background-color:transparent"/></td>
				<td><input type="text" name="date" value="2019-10-06 10:00:00" size="20" readonly="readonly" style="border:none;background-color:transparent"/></td>
				<td>
					<a href="<%=path %>/CourseAppointAction?courseid=2564315&date=2019-10-06 10:00:00"><input name="1" type="button" value="ԤԼ"/></a>
				</td>
			</tr>
		</table>
		</form>


  </body>
</html>
