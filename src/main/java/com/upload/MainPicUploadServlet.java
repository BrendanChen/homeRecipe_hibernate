package com.upload;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.google.gson.Gson;


@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 5 * 1024 * 1024, maxRequestSize = 5 * 5 * 1024 * 1024)
public class MainPicUploadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	String filename;

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");

		res.setContentType("text/html; charset=utf-8");

		System.out.println("enter MainPicUploadServlet...");

		String rcp_seq = req.getParameter("rcp_seq");

		String saveDirectory = "/images/main_picture/"+rcp_seq+"";

		//System.out.println("saveDirectory = " + saveDirectory);

		//System.out.println("rcp_seq = " + rcp_seq);

		//System.out.println("ContentType="+req.getContentType());

		String realPath = getServletContext().getRealPath(saveDirectory);
		
		//System.out.println("realPath=" + realPath);

		File fsaveDirectory = new File(realPath);
		if (!fsaveDirectory.exists())
			fsaveDirectory.mkdirs();

		Collection<Part> parts = req.getParts();
		
		//&& part.getContentType()!=null
		for (Part part : parts) {
			if (getFileNameFromPart(part) != null && part.getContentType()!=null) {
				
				String name = part.getName();
				filename = getFileNameFromPart(part);
				String ContentType = part.getContentType();
				long size = part.getSize();
				File f = new File(fsaveDirectory, filename);


				part.write(f.toString());

				InputStream in = part.getInputStream();
				byte[] buf = new byte[in.available()];
				in.read(buf);
				in.close();
	
			}
		}
		
		//System.out.println("filename =" + filename);
		String json = new Gson().toJson(filename);

		res.setContentType("application/json");
		res.setCharacterEncoding("UTF-8");
		res.getWriter().write(json);

	}

	public String getFileNameFromPart(Part part) {
		String header = part.getHeader("content-disposition");
		// System.out.println("header=" + header);
		String filename = new File(header.substring(header.lastIndexOf("=") + 2, header.length() - 1)).getName();
		// System.out.println("filename=" + filename);
		if (filename.length() == 0) {
			return null;
		}
		return filename;
	}
}
