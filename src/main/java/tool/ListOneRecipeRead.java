package tool;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ListOneRecipeRead extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		OutputStream out = res.getOutputStream();
		
		try{
			byte[] photo  = req.getParameter("imgString").getBytes(); 
			res.setContentType("image/jpg");
			out.write(photo);
			
			out.flush();
			out.close();
			
		} catch(Exception e) { 
			
			InputStream in = getServletContext().getResourceAsStream("/images/default.png"); 
				byte[] buf = new byte[in.available()]; 
				in.read(buf); 
				res.setContentType("image/jpg");
				out.write(buf); 
				in.close();
				out.close();
			}
		}
	}