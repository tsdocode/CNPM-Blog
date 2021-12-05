package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContentDAO;
import model.Content;

/**
 * Servlet implementation class ViewContentDetail
 */
public class ViewContentDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ContentDAO contentDAO = new ContentDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewContentDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		int id = Integer.parseInt(request.getParameter("post_id"));
		
		try {
			Content content = contentDAO.getContentByID(id);
			request.setAttribute("content", content);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("view_content_detail.tiles").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
