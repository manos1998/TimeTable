package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Subject;
import dao.SubjectDeclaration;
import dao.SubjectOperation;

public class RegisterSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterSubject() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			String SubjectId, SubjectName, TeacherName;
			SubjectName = request.getParameter("subject_Name");
			TeacherName = request.getParameter("teacher_Name");
			Subject sub = new Subject(SubjectName,TeacherName);
			SubjectDeclaration sd = new SubjectOperation();
			long id = sd.insertSubject(sub);
			if (id>=0) {
				out.print("Inserted Successfully");
			}else {
				out.print("Error");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
