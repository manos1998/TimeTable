package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClassesDeclaration;
import dao.ClassesOperation;

public class DeleteClasses extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteClasses() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			long id;
			id = Long.parseLong(request.getParameter("id"));
			ClassesDeclaration sd = new ClassesOperation();
			sd.deleteClasses(id);
			response.sendRedirect("all_classes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
