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

public class RegisterStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			String name, address, contact, batchId;
			name = request.getParameter("student_FN");
			address = request.getParameter("student_Add");
			contact = request.getParameter("student_Con");
			batchId = request.getParameter("student_BId");
			Student st = new Student(name,address,contact,batchId);
			StudentDeclaration sd = new StudentOperation();
			long id = sd.insertStudent(st);
			if (id>=0) {
				out.print("Inserted Successfully");
			}else {
				out.print("Error");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);			
		}
	}

}
