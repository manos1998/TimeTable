<!doctype html>
<%@page import="bean.Student"%>
<%@page import="dao.StudentOperation"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="helper.FactoryProvider"%>
<%@page import="javax.persistence.Query"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
<head>
<title>All Records</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
	if (session.getAttribute("uname") == null) {
		response.sendRedirect("login.jsp");
	}
	%>
 	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Records</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Student");
				//List<Student> list = q.list();
				%>

				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">First Name</th>
							<th scope="col">Address</th>
							<th scope="col">Contact Number</th>
							<th scope="col">BatchID</th>
							<th scope="col">Update</th>
							<th scope="col">Delete</th>
						</tr>
					</thead>
					<tbody>
						<%
						StudentOperation st = new StudentOperation();
						List <Student> li = st.selectAllStudent();
						if(li != null){
						ListIterator <Student> lit = li.listIterator();					
						do {
							Student student = (Student) lit.next();                      //do{//statement} while(condition)
						%>
						<tr>
							<th scope="row"><%=student.getStudentId()%></th>
							<td><%=student.getName()%></td>
							<td><%=student.getAddress()%></td>
							<td><%=student.getContact()%></td>
							<td><%=student.getBatchId()%></td>
							<td><a
								href="update_student.jsp?id=<%=student.getStudentId()%> ">Update</a></td>
							<td><a href="DeleteStudent?id=<%=student.getStudentId()%> ">Delete</a>	</td>
						</tr>
						<%
						/* out.println(note.getId() + " : " + note.getTitle() + "<br>"); */
						} while(lit.hasNext());}
						//}
						s.close();
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>