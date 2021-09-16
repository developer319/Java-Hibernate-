package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveNoteServlet() {
        super();
   
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		//title,content fetch
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			Note note=new Note(title,content,new Date());
			System.out.println(note.getId()+"||"+note.getTitle()+"||"+note.getContent()+"||"+note.getAddedDate());
			//hibernate::save
			response.setContentType("text/html");
			Session s= FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
			s.save(note);
			tx.commit();
			s.close();
			PrintWriter out=response.getWriter();
			out.println("<h1 style='text-align:center;'>Note is added successfully</h1><br><h2 style='text-align:center;'><a href='allNotes.jsp'>View All Notes</a></h2>");
	

		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
