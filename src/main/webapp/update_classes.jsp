<!doctype html>
<%@page import="helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="javax.persistence.Query"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="dao.SubjectOperation"%>
<%@page import="bean.Classes"%>
<%@page import="dao.ClassesOperation"%>
<%@page import="bean.Subject"%>
<%@page import="bean.Student"%>
<html lang="en">
<head>
<title>Update Classes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
	if (session.getAttribute("uname") == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	<%
	if (request.getParameter("id") != null) {
		long id = Long.parseLong(request.getParameter("id"));
		ClassesOperation cl = new ClassesOperation();
		Classes classes = cl.selectClasses(id);
		if (classes != null) {
	%>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from Subject");
		%>
		<h1>Update Classes Form</h1>
		<form action="UpdateClasses" method="post">
			<div class="mb-3">
				<label for="BatchId" class="form-label"> Batch ID</label> <input
					name="BatchId" required="required" type="number"
					class="form-control" id="BatchId" value="<%= classes.getBatchId() %>">
			</div>
			<div class="mb-3">
				<%
				SubjectOperation sub = new SubjectOperation();
				List<Subject> li = sub.selectAllSubject();
				%>

				<select name="subjectId1" id="subjectId1" class="form-select"
					aria-label="Default select example">
					<option selected><%=classes.getSubjectId1()%> 
					</option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
						while (lit.hasNext()) {
							Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%> + <%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br> 
				<select name="subjectId2" id="subjectId2"
					class="form-select" aria-label="Default select example">
					<option selected ><%=classes.getSubjectId2()%></option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
						while (lit.hasNext()) {
							Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%>
						+
						<%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br> 
				<select name="subjectId3" id="subjectId3"
					class="form-select" aria-label="Default select example">
					<option selected ><%=classes.getSubjectId3()%></option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
						while (lit.hasNext()) {
							Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%>
						+
						<%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br> 
				<select name="subjectId4" id="subjectId4"
					class="form-select" aria-label="Default select example">
					<option selected ><%=classes.getSubjectId4()%></option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
						while (lit.hasNext()) {
							Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%>
						+
						<%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br> 
				<select name="subjectId5" id="subjectId5"
					class="form-select" aria-label="Default select example">
					<option selected ><%=classes.getSubjectId5()%></option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
						while (lit.hasNext()) {
							Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%>
						+
						<%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br> 
				
				<select name="subjectId6" id="subjectId6"
					class="form-select" aria-label="Default select example">
					<option selected> <%=classes.getSubjectId6()%></option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
						while (lit.hasNext()) {
							Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%>
						+
						<%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br> 
				
				<select name="subjectId7" id="subjectId7"
					class="form-select" aria-label="Default select example">
					<option selected > <%=classes.getSubjectId7()%></option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
						while (lit.hasNext()) {
							Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%>
						+
						<%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br> 
				
				<select name="subjectId8" id="subjectId8"
					class="form-select" aria-label="Default select example">
					<option selected> <%=classes.getSubjectId8()%></option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
						while (lit.hasNext()) {
							Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%>
						+
						<%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br>
				<%
				s.close();
				%>
			</div>
			<button type="submit" class="btn btn-primary">Update Student</button>
		</form>
	</div>
	<%
	}
	} else {
	out.print("Select any record cause ID is null");
	}
	%>
</body>
</html>