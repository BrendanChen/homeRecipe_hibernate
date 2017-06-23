package com.spring.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.spring.entity.RecipeVO;
import com.spring.service.RcpServiceImpl;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 5 * 1024 * 1024, maxRequestSize = 5 * 5 * 1024 * 1024)
public class RcpServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private RecipeVO recipeVO;
	
	private RcpServiceImpl rcpServiceImpl;

	private Map<String, String[]> map;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		
		if ("findByCriteria".equals(action)) {

			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);

			// 1.將輸入資料轉為map

			try {
				HttpSession session = req.getSession();
				map = (Map<String, String[]>) session.getAttribute("map");

				if (req.getParameter("whichPage") == null) {

					HashMap<String, String[]> map1 = (HashMap<String, String[]>) req.getParameterMap();

					HashMap<String, String[]> map2 = new HashMap<String, String[]>();

					map2 = (HashMap<String, String[]>) map1.clone();

					session.setAttribute("map", map2);

					map = (HashMap<String, String[]>) req.getParameterMap();
				}

				// 2. 開始複合查詢

				RcpServiceImpl rcpServiceImpl = new RcpServiceImpl();

				List<RecipeVO> list = rcpServiceImpl.findByCriteria(map); // 傳入物件為map

				// 3. 查詢完成，準備轉交
				req.setAttribute("list", list);

				RequestDispatcher failureView = req.getRequestDispatcher("/recipe/listRcpByCriteriaQuery.jsp");

				failureView.forward(req, res);

				// 4. 其他可能的錯誤處理
			} catch (Exception e) {

				errorMsgs.add(e.getMessage());

			}
		}

		if ("getOne_For_Display".equals(action)) {

			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				String rcpSeq = req.getParameter("rcp_seq").trim();

				// System.out.println("rcpSeq = "+rcpSeq);

				req.setAttribute("rcp_seq", rcpSeq);

				// 準備轉交
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("/recipe/listOneRecipe.jsp");

				requestDispatcher.forward(req, res);
			} catch (Exception e) {
				errorMsgs.add(e.getMessage());
			}
		}

		// addRecipe
		if ("addRecipe".equals(action)) {

			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				
				rcpServiceImpl = new RcpServiceImpl();
				
				recipeVO = new RecipeVO();
				
				String rName = req.getParameter("rName"); 
				
				String cookTime = req.getParameter("cookTime");
				
				String serving = req.getParameter("serving");
				
				String note = req.getParameter("note");
				
				String trick = req.getParameter("trick");
				
				String kindNo = req.getParameter("kindNo");
				
				String cookWayNo = req.getParameter("cookWayNo");
				
				recipeVO.setrName(rName);
				recipeVO.setCookTime(Integer.valueOf(cookTime));
				recipeVO.setServing(Integer.valueOf(serving));
				recipeVO.setNote(note);
				recipeVO.setTrick(trick);
				recipeVO.setKindNo(kindNo);
				recipeVO.setCookWayNo(cookWayNo);
				recipeVO.setCreateDt(new Date(new java.util.Date().getTime()));
				
				String[] iname = req.getParameterValues("iname");
				
				String[] groupName = req.getParameterValues("groupName");
				
				String[] detail = req.getParameterValues("detail");
				
				
				rcpServiceImpl.addRcpData(recipeVO);	
					
				// 準備轉交
//				RequestDispatcher requestDispatcher = req.getRequestDispatcher("/recipe/listOneRecipe.jsp");
//
//				requestDispatcher.forward(req, res);
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
				errorMsgs.add(e.getMessage());
			}
		}
		
		
		
	}
}
