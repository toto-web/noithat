package com.noithat.servlet;

<<<<<<< HEAD
=======
import java.io.File;
>>>>>>> HaiNtn - Commit code
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.noithat.databases.MysqlConnection;
import com.noithat.object.Log;
import com.noithat.object.Product;
import com.noithat.object.Product;
=======
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.noithat.databases.MysqlConnection;
import com.noithat.object.Product;
import com.noithat.utils.Utility;
>>>>>>> HaiNtn - Commit code

/**
 * Servlet implementation class ProductServlet
 */
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
<<<<<<< HEAD
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
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
=======

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
>>>>>>> HaiNtn - Commit code
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		HashMap<String, String> map = new HashMap<String, String>();
		response.setContentType("text/html;charset=UTF-8");
<<<<<<< HEAD
		int type = Integer.parseInt(request.getParameter("type"));
=======
		JSONObject result;
		int type = 0; // Integer.parseInt(request.getParameter("type"));
		List<FileItem> multiparts = null;
		try {
			multiparts = new ServletFileUpload((FileItemFactory) new DiskFileItemFactory()).parseRequest(request);
		} catch (FileUploadException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

>>>>>>> HaiNtn - Commit code
		String jsonData = "";
		boolean status;
		Gson g = new Gson();
		Product product = new Product();
		MysqlConnection con = new MysqlConnection();
		JsonArray arr = new JsonArray();
<<<<<<< HEAD
		int id;
		switch(type){
			case 1://create
				jsonData= request.getParameter("jsonData");
				product = g.fromJson(jsonData, Product.class);
				status = con.insert(product);
				map.put("status", Boolean.toString(status));
				out.println(map);
				break;
			case 2://update
				jsonData = request.getParameter("jsonData");
				product = g.fromJson(jsonData, Product.class);
				status = con.update(Product.class, product);
				map.put("status", Boolean.toString(status));
				out.println(map);
				break;
			case 3://delete
				id = Integer.parseInt(request.getParameter("productId"));
				status = con.delete(Product.class, id);
				map.put("status", Boolean.toString(status));
				out.println(map);
				break;
			case 4://get
				id = Integer.parseInt(request.getParameter("productId"));
				product = con.get(Product.class, id);
				String json = g.toJson(product);
				map.put("product", json);
				out.println(map);
				break;
			case 5://select
				int start = Integer.parseInt(request.getParameter("start"));
				int max = Integer.parseInt(request.getParameter("max"));
				List<Product> listProduct = con.getListPaging(Product.class, start, max);
				for(Product p : listProduct){
					arr.add(g.toJson(p));
				}
				out.println(arr);
				break;
			default:
		}
=======
		byte[] productPictureContent = null;
		String pictureName = "";
		for (FileItem item : multiparts) {
			if ("type".equals(item.getFieldName())) {
				type = Integer.parseInt(item.getString());
				System.out.println("type: " + type);
				continue;
			}

			if ("jsonData".equals(item.getFieldName())) {

				jsonData = item.getString();
				System.out.println("json: " + jsonData);
				continue;
			}

			if (!item.isFormField() || "productPicture".equals(item.getFieldName())) {
				productPictureContent = item.get();
				pictureName = item.getName();
				System.out.println("pictureName: " + pictureName);
				continue;
			}
		}

		int id;
		switch (type) {
		case 1:// create
			try {
				JSONObject json = new JSONObject(jsonData);
				product.setCategoriesId(Integer.parseInt(json.get("categoriesId").toString()));
				product.setContent(json.get("productContent").toString());
				product.setIsVisible(Integer.parseInt(json.get("isVisible").toString()));
				product.setProductCode(json.get("productCode").toString());
				product.setProductDescription(json.get("productDescription").toString());
				product.setProductName(json.get("productName").toString());
				product.setProductSeo(json.get("seo").toString());
				String pathProductPicture = "C:/Picture/" + product.getProductCode() + "/";
				File file = new File(pathProductPicture);
				if (!file.exists())
					file.mkdirs();
				Utility.writeByteToFile(pathProductPicture + pictureName, productPictureContent);
				product.setProductPicture(pathProductPicture + pictureName);
				status = con.insert(product);
				map.put("status", Boolean.toString(status));
				//out.println(map);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case 2:// update
			try {
				JSONObject json = new JSONObject(jsonData);
				product.setCategoriesId(Integer.parseInt(json.get("categoriesId").toString()));
				product.setContent(json.get("productContent").toString());
				product.setIsVisible(Integer.parseInt(json.get("isVisible").toString()));
				product.setProductCode(json.get("productCode").toString());
				product.setProductDescription(json.get("productDescription").toString());
				product.setProductName(json.get("productName").toString());
				product.setProductSeo(json.get("seo").toString());
				String pathProductPicture = "C:/Picture/" + product.getProductCode() + "/";
				File file = new File(pathProductPicture);
				if (!file.exists())
					file.mkdirs();
				Utility.writeByteToFile(pathProductPicture + pictureName, productPictureContent);
				status = con.update(Product.class, product);
				map.put("status", Boolean.toString(status));
				out.println(map);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case 3:// delete
			id = Integer.parseInt(request.getParameter("productId"));
			status = con.delete(Product.class, id);
			map.put("status", Boolean.toString(status));
			out.println(map);
			break;
		case 4:// get
			id = Integer.parseInt(request.getParameter("productId"));
			product = con.get(Product.class, id);
			// String json = g.toJson(product);
			// map.put("product", json);
			
			break;
		case 5:// select
			int start = Integer.parseInt(request.getParameter("start"));
			int max = Integer.parseInt(request.getParameter("max"));
			List<Product> listProduct = con.getListPaging(Product.class, start, max);
			for (Product p : listProduct) {
				arr.add(g.toJson(p));
			}
			out.println(arr);
			break;
		default:
		}
		result = new JSONObject(map);
		out.println(result);
>>>>>>> HaiNtn - Commit code
		out.flush();
	}

}
