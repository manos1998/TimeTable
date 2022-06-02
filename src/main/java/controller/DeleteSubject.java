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

public class DeleteSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteSubject() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			long id;
			id = Long.parseLong(request.getParameter("id"));
			SubjectDeclaration sd = new SubjectOperation();
			sd.deleteSubject(id);
			response.sendRedirect("all_subjects.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
