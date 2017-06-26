package com.test;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class createTableServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//System.out.println("enter createTableServlet block...");

//		List<String> list = new ArrayList<>();
//
//		list.add(
//				"<div class='form-inline ingredient clearfix'><div class='form-group required maxlen'><input type='text'class='form-control ingredient-name required maxlen'placeholder='食材' name='name' required=''value=''></div><div class='form-group required maxlen'><input type='text'class='form-control ingredient-unit required maxlen'placeholder='份量' name='quantity' required=''value=''></div><div class='pull-left edit-fn'><a class='btn btn-remove destroy removebtn' onclick='deleteIngredient()'></a></div></div>");
//
//		String json = new Gson().toJson(list);

		InputStream is = null;

		String json = null;
		
		Gson gson = new Gson();
		
		PrintWriter out = null;
		
		String line = null;
		
		StringBuilder sb  = null;
		
		try {
			response.setCharacterEncoding("UTF-8");

			ServletContext context = request.getServletContext();

			is = context.getResourceAsStream("txt/addIngredient.txt");

			InputStreamReader inputStreamReader = new InputStreamReader(is, "utf-8");

			BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			out = response.getWriter();
			sb = new StringBuilder();
			
			while ((line = bufferedReader.readLine()) != null) {
				sb.append(line);
			}
			
			json = gson.toJson(sb);
			
			out.write(json);
			
		} catch (Exception e) {

			System.out.println("查無檔案...");
		}
	}
}
