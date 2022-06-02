package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StudentDeclaration;
import dao.StudentOperation;

public class DeleteStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			long id;
			id = Long.parseLong(request.getParameter("id"));
			StudentDeclaration sd = new StudentOperation();
			sd.deleteStudent(id);
			response.sendRedirect("all_students.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
