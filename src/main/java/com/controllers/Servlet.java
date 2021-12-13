package com.controllers;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class test
 */
@WebServlet("/Book/List")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private HashMap<String,String> books = new HashMap<String,String>();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        
        // TODO Auto-generated constructor stub
        books.put("The Great Gatsby","F. Scott Fitzgerald");
		books.put("Out","Natsuo Kirino");
		books.put("Origin","Dan Brown");
		books.put("Grotesque","Natsuo Kirino");
		books.put("Political Tribes","Amy Chua");
    }
    public static boolean isNumeric(String strNum) {
        if (strNum == null) {
            return false;
        }
        try {
            double d = Double.parseDouble(strNum);
        } catch (NumberFormatException nfe) {
            return false;
        }
        return true;
    }
    //helper function to return name of book if it matches case insensitive book Name entered by user
    public String arrayContains(HashMap<String,String> array,String bookName) {
    	for(String name: array.keySet()){
    		if(name.equalsIgnoreCase(bookName)) {
    			//array.remove(name);
    			return name;
    		}
    	}
    	return null;
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession();
		for(String book:books.keySet()) {
			System.out.println(book);
		}
		
		System.out.println(books);
		session.setAttribute("books", books);
		request.getRequestDispatcher("/DisplayBooks.jsp").forward(request, response);
		//doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		String bookAuthor="";
		String bookName="";
		String input="";
		String message="";
		boolean errorFlag=false;
		switch(action) {
		case "insertRandom":
			input = request.getParameter("input");
			message = "Success: The input you entered is: "+input;
			session.setAttribute("message", message);
			request.getRequestDispatcher("/Welcome.jsp").forward(request, response);
			break;
		
		
//		if(action.equals("picture")) {
//			request.getRequestDispatcher("/displayPicture.jsp").forward(request, response);
//		}
		case "addBook": 
			bookName = request.getParameter("bookName");
			bookAuthor = request.getParameter("bookAuthor");
			if(bookName.length()==0 || bookAuthor.length()==0) {
				errorFlag=true;
				break;
			}
			books.put(bookName,bookAuthor);
			message = "Success: The book you added to the list is: "+bookName +" by "+bookAuthor;
			
			System.out.println(books);
			session.setAttribute("message", message);
			request.getRequestDispatcher("/Welcome.jsp").forward(request, response);
			break;
		case "deleteBook": 
			bookName = request.getParameter("bookName");
			
			if(bookName.length()==0 || arrayContains(books,bookName)==null) {
				errorFlag=true;
				break;
			}
			message = "Success: The book you deleted from the list is: "+bookName+" by "+books.get(arrayContains(books,bookName));
			books.remove(arrayContains(books,bookName));
			
			session.setAttribute("message", message);
			request.getRequestDispatcher("/Welcome.jsp").forward(request, response);
			break;
		}
		if(errorFlag==true) {
			message="Error: You did not input a correct value, please try again.";
			session.setAttribute("errorMessage", message);
			request.getRequestDispatcher("/errorPage.jsp").forward(request, response);
			
		}
		//doGet(request, response);
	}
}



