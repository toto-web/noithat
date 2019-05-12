package com.noithat.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.noithat.databases.MysqlConnection;
<<<<<<< HEAD
import com.noithat.object.Infomation;
=======
import com.noithat.object.Information;
>>>>>>> HaiNtn - Commit code
import com.noithat.object.Log;

/**
 * Servlet implementation class InformationServlet
 */
public class InformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InformationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		HashMap<String, String> map = new HashMap<String, String>();
		response.setContentType("text/html;charset=UTF-8");
		int type = Integer.parseInt(request.getParameter("type"));
		String jsonData = "";
		boolean status;
		Gson g = new Gson();
<<<<<<< HEAD
		Infomation info = new Infomation();
=======
		Information info = new Information();
>>>>>>> HaiNtn - Commit code
		MysqlConnection con = new MysqlConnection();
		JsonArray arr = new JsonArray();
		int id;
		switch(type){
			case 1://create
				jsonData= request.getParameter("jsonData");
<<<<<<< HEAD
				info = g.fromJson(jsonData, Infomation.class);
=======
				info = g.fromJson(jsonData, Information.class);
>>>>>>> HaiNtn - Commit code
				status = con.insert(info);
				map.put("status", Boolean.toString(status));
				out.println(map);
				break;
			case 2://update
				jsonData = request.getParameter("jsonData");
<<<<<<< HEAD
				info = g.fromJson(jsonData, Infomation.class);
				status = con.update(Infomation.class, info);
=======
				info = g.fromJson(jsonData, Information.class);
				status = con.update(Information.class, info);
>>>>>>> HaiNtn - Commit code
				map.put("status", Boolean.toString(status));
				out.println(map);
				break;
			case 3://delete
				id = Integer.parseInt(request.getParameter("infoId"));
<<<<<<< HEAD
				status = con.delete(Infomation.class, id);
=======
				status = con.delete(Information.class, id);
>>>>>>> HaiNtn - Commit code
				map.put("status", Boolean.toString(status));
				out.println(map);
				break;
			case 4://get
				id = Integer.parseInt(request.getParameter("infoId"));
<<<<<<< HEAD
				info = con.get(Infomation.class, id);
=======
				info = con.get(Information.class, id);
>>>>>>> HaiNtn - Commit code
				String json = g.toJson(info);
				map.put("info", json);
				out.println(map);
				break;
			case 5://select
				int start = Integer.parseInt(request.getParameter("start"));
				int max = Integer.parseInt(request.getParameter("max"));
<<<<<<< HEAD
				List<Infomation> listInfo = con.getListPaging(Infomation.class, start, max);
				for(Infomation inf : listInfo){
=======
				List<Information> listInfo = con.getListPaging(Information.class, start, max);
				for(Information inf : listInfo){
>>>>>>> HaiNtn - Commit code
					arr.add(g.toJson(inf));
				}
				out.println(arr);
				break;
			default:
		}
		out.println(g.toJson(map));
		out.flush();
	}

}
