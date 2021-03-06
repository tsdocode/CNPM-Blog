package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ContentDAO;
import dao.UserDAO;

import model.Content;

/**
 * Servlet implementation class ViewContentAllServlet
 */
public class ViewContentAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ContentDAO contentDAO = new ContentDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewContentAllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		
		int total;
		try {
			total = contentDAO.getCountContent();
			request.setAttribute("totalPost", total);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//contents = contentDAO.selecContent();
		
		
	    request.getRequestDispatcher("all-content.tiles").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}