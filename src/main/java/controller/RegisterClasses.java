package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Classes;
import bean.Student;
import dao.ClassesDeclaration;
import dao.ClassesOperation;

public class RegisterClasses extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterClasses() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			Long batchId;
			String subjectId1,subjectId2,subjectId3,subjectId4,subjectId5,subjectId6,subjectId7,subjectId8;
			batchId = Long.parseLong(request.getParameter("BatchId"));
			subjectId1 = request.getParameter("subjectId1");
			subjectId2 = request.getParameter("subjectId2");
			subjectId3 = request.getParameter("subjectId3");
			subjectId4 = request.getParameter("subjectId4");
			subjectId5 = request.getParameter("subjectId5");
			subjectId6 = request.getParameter("subjectId6");
			subjectId7 = request.getParameter("subjectId7");
			subjectId8 = request.getParameter("subjectId8");
			Classes cl = new Classes(batchId,subjectId1,subjectId2,subjectId3,subjectId4,subjectId5,subjectId6,subjectId7,subjectId8);
			ClassesDeclaration cd = new ClassesOperation();
			long id = cd.insertClasses(cl);
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
