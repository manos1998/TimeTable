package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import bean.Subject;
import dao.StudentDeclaration;
import dao.StudentOperation;
import dao.SubjectDeclaration;
import dao.SubjectOperation;

public class UpdateSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateSubject() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			String SubjectId, SubjectName, TeacherName;
			long id;
			id = Long.parseLong(request.getParameter("id"));
			SubjectName = request.getParameter("subject_Name");
			TeacherName = request.getParameter("teacher_Name");
			Subject sub = new Subject(SubjectName, TeacherName);
			SubjectDeclaration sd = new SubjectOperation();
			sd.updateSubject(id, sub);
			response.sendRedirect("all_subjects.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
