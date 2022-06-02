<!doctype html>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="helper.FactoryProvider"%>
<%@page import="bean.Subject"%>
<%@page import="dao.SubjectOperation"%>
<%@page import="javax.persistence.Query"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
<head>
<title>All Subject</title>
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
		<h1 class="text-uppercase">All Subjects Record</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Subject");
				//List<Student> list = q.list();
				%>

				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Subject Name</th>
							<th scope="col">Teacher Name</th>
							<th scope="col">Update</th>
							<th scope="col">Delete</th>
						</tr>
					</thead>
					<tbody>
						<%
						SubjectOperation sub = new SubjectOperation();
						//if (st.selectAllSubjects() != null) {
						List <Subject> li = sub.selectAllSubject();
						if(li != null){
						ListIterator <Subject> lit = li.listIterator();					
						do {
							Subject subject = (Subject) lit.next();                      //do{//statement} while(condition)
						%>
						<tr>
							<th scope="row"><%=subject.getSubjectId()%></th>
							<td><%=subject.getSubjectName()%>x</td>
							<td><%=subject.getTeacherName()%></td>
							<td><a
								href="update_subject.jsp?id=<%=subject.getSubjectId()%> ">Update</a></td>
							<td><a href="DeleteSubject?id=<%=subject.getSubjectId()%> ">Delete</a></td>
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