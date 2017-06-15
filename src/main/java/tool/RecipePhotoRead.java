package tool;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.recipe.model.RcpServiceImpl;
import com.recipe.model.RecipeVO;


public class RecipePhotoRead extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		OutputStream out = res.getOutputStream();
		
		try{
			String rcp_seq  = req.getParameter("rcp_seq"); 
			
			RecipeVO recipeData = new RecipeVO();
			
			recipeData.setRcpSeq(rcp_seq);
			
			RcpServiceImpl rcpServiceImpl = new RcpServiceImpl();
			
			RecipeVO recipeVO = rcpServiceImpl.findByPk(recipeData);
			
			byte[] photo = recipeVO.getPhoto();
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
