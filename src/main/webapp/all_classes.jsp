<!doctype html>
<%@page import="bean.Classes"%>
<%@page import="dao.ClassesOperation"%>
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
<title>All Classes</title>
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
		<h1 class="text-uppercase">All Classes Record</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Classes");
				//List<Student> list = q.list();
				%>

				<table class="table">
					<thead>
						<tr>
							<th scope="col">Batch ID</th>
							<th scope="col">Subject 1</th>
							<th scope="col">Subject 2</th>
							<th scope="col">Subject 3</th>
							<th scope="col">Subject 4</th>
							<th scope="col">Subject 5</th>
							<th scope="col">Subject 6</th>
							<th scope="col">Subject 7</th>
							<th scope="col">Subject 8</th>
							<th scope="col">Update</th>
							<th scope="col">Delete</th>
						</tr>
					</thead>
					<tbody>
						<%
						ClassesOperation cl = new ClassesOperation();
						List <Classes> li = cl.selectAllClasses();
;						if(li != null){
						ListIterator <Classes> lit = li.listIterator();					
						do {
							Classes classes = (Classes) lit.next();                      //do{//statement} while(condition)
						%>
						<tr>
							<th scope="row"><%=classes.getBatchId()%></th>
							<td><%=classes.getSubjectId1()%></td>
							<td><%=classes.getSubjectId2()%></td>
							<td><%=classes.getSubjectId3()%></td>
							<td><%=classes.getSubjectId4()%></td>
							<td><%=classes.getSubjectId5()%></td>
							<td><%=classes.getSubjectId6()%></td>
							<td><%=classes.getSubjectId7()%></td>
							<td><%=classes.getSubjectId8()%></td>
							<td><a
								href="update_classes.jsp?id=<%=classes.getBatchId()%> ">Update</a></td>
							<td><a href="DeleteClasses?id=<%=classes.getBatchId()%> ">Delete</a>	</td>
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