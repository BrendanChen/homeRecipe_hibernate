package com.test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class CreateGroupServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("enter CreateGroupServlet...");
		
		String str = request.getParameter("group_no");
		
	
	    List<String> list = new ArrayList<>();
	    

	    list.add("<div class='group group-"+ str +"'><div class=''><div class='form-inline group-name clearfix'><div class='form-group required maxlen'><input type='text' class='form-control required maxlen'placeholder='分組名稱（例如：醬汁）' name='groupName' required='' value=''></div><div class='pull-right'><a class='btn btn-remove destroy deleteGroup' onclick='deleteGroup()'></a></div></div></div><div><button type='button' class='btn btn-add-ingredient addIngre'>加入食材</button></div></div>");
	    
	    
	    String json = new Gson().toJson(list);

	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
	}
}
