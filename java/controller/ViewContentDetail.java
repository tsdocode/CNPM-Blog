package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContentDAO;
import dao.UserDAO;
import model.Content;
import model.User;

/**
 * Servlet implementation class ViewContentDetail
 */
public class ViewContentDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ContentDAO contentDAO = new ContentDAO();
	private UserDAO userDao = new UserDAO();
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
			User user = userDao.getUserByID(Integer.parseInt(content.getAuthorID()));
			int total = contentDAO.getCountContentByUserID(Integer.parseInt(content.getAuthorID()));
			request.setAttribute("user", user);
			request.setAttribute("content", content);
			request.setAttribute("total", total);
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
