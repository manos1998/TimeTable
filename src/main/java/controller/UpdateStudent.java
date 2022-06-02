package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDeclaration;
import dao.StudentOperation;

public class UpdateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			String name, address, contact, batchId;
			long id;
			id = Long.parseLong(request.getParameter("id"));
			name = request.getParameter("student_FN");
			address = request.getParameter("student_Add");
			contact = request.getParameter("student_Con");
			batchId = request.getParameter("student_BId");
			Student st = new Student(name,address,contact,batchId);
			
			StudentDeclaration sd = new StudentOperation();
			sd.updateStudent(id, st);
			response.sendRedirect("all_students.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}				
	}

}
