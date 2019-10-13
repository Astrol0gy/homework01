<%@ page contentType="text/html; charset=GBK"    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
%>
<html>
<HEAD>
<META http-equiv="Content-Type" content="text/html; charset=GB2312">
<link rel="stylesheet" href="<%=path%>/css/menu_style.css" type="text/css">
<TITLE>menu</TITLE>
</HEAD>
<script>
	  var classCount = 1; // 菜单大类的个数
	  function Show(theId) {
	  	theTr = eval("tr_" + theId);
			//document.getElementById('tr_0');
		if (theTr.style.display == "none") {
			theTr.style.display = "block";
		}
		else {
			theTr.style.display = "none";
		}
		for (i = 0; i < classCount; i++) {
			if (i == theId)
				continue;
			theTr = eval("tr_" + i);
			theTr.style.display = "none";
		}
	  }
	  <%session.setAttribute("id", "2017074014");%>;
var menuList={
0:{1:"预约课程","查找课程":"waiting.jsp","我的预约":"<%=path%>/GetMyAppointment"},
};
function createMenu(){	
	for( menu in menuList){
    	document.write('<TR><TD  id="td_'+menu+'"  align="center" width="90%" bgColor="#1f65c2" ><A  href="javascript:Show('+menu+')">'+menuList[menu][1]+'</A></TD></TR>');
		document.write(' <TR id=tr_'+menu+' style="DISPLAY: none;cursor:hand">');
		document.write(' 	<TD  width="100%" align="center"  bgColor="#4c84ce" height="50">');
		document.write(' 		<table align="center" border="0" width="90%">');
	    for(submenu in menuList[menu]){
            if(submenu==1){
				continue;
		    }
		    document.write('<tr><td width="150" align="center" ><A href="'+menuList[menu][submenu]+'" target="right_workspace">'+submenu+'</A> </td><tr>');
		}
		document.write(' </table> </TD> </TR>');	
	}
}
</script>
<BODY link="#333333" vlink="#333333" alink="#FF0000" bgColor="#1fa5a2">
<table class="guide guideText" width="100%">
<script>
createMenu();
</script>

</table>
</BODY>
</html>
