package com.spring.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class createStepBlockServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("enter createStepBlockServlet...");
		
		String step_no = request.getParameter("step_no");
		
		//System.out.println("step_no : "+step_no);
	
	    List<String> list = new ArrayList<>();
	    
	    //list.add("<div class='step fadeIn'><div class='media'><form method='post' enctype='multipart/form-data'class='step-img pull-left' id='uploadForm0"+step_no+"'><div class='fileupload-processing'><img alt='step-cover' class='img-responsive'src='http://localhost:8081/homeRecipe_hibernate/images/upload.jpg'><input type='file' name='upfile' class='uploadImage' onchange='stepUploadImg()'></div></form><div class='media-body'><big>"+step_no+"</big><div class='edit-fn order pull-right'><a class='btn btn-remove destroy stepRemove'> </a></div><div class='step-content'><div class='form-group maxlen'><label for='stepBody' class='control-label maxlen hidden'></label><textarea class='form-control maxlen' placeholder='點擊輸入...'name='stepBody' rows='3' cols='10' maxlength='150'style='height: 72px;'></textarea><div class='help-block'><span class=''>剩餘150個字</span></div></div></div></div></div></div>");
	    
	    list.add("<div class='step fadeIn'> <div class='media'> <div class='fileupload-processing step-img pull-left'><img alt='step-cover' class='img-responsive' src='http://localhost:8081/homeRecipe_hibernate/images/upload.jpg'><input type='file' name='upfile' class='uploadImage' onchange='stepUploadImg()'></div> <div class='media-body'><big>" + step_no + "</big> <div class='edit-fn order pull-right'><a class='btn btn-remove destroy stepRemove'> </a></div> <div class='step-content'> <div class='form-group maxlen'><label for='stepBody' class='control-label maxlen hidden'></label><textarea class='form-control maxlen' placeholder='點擊輸入...' name='detail' rows='3' cols='10' maxlength='150' style='height: 72px;'></textarea> <div class='help-block'><span class=''>剩餘150個字</span></div> </div> </div> </div> </div></div>");
	    
	    String json = new Gson().toJson(list);

	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
	}
}
