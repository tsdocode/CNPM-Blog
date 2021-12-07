package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContentDAO;
import model.Content;

/**
 * Servlet implementation class ListContentServlet
 */
public class ListContentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ContentDAO contentDAO = new ContentDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListContentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pageNo = Integer.parseInt(request.getParameter("pageNO"));
		int numberOfPage = Integer.parseInt(request.getParameter("numPage"));
		
		

		
		ArrayList<Content> contents = new ArrayList<Content>();
		
		contents = contentDAO.listContent(numberOfPage , (pageNo - 1) * (numberOfPage));
		System.out.println(numberOfPage);
		
		request.setAttribute("contents", contents);
		request.getRequestDispatcher("list-content.tiles").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
