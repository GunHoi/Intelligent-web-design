<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<% 
	String filename = "";
	String realFolder = "c:\\upload";	//웹 어플리케이션상의 절대 경로
	String encType = "utf-8";			//인코딩 유형
	int maxSize = 5 * 1024 * 1024;		//최대 업도드될 파일의 크기 5MB
	
	MultipartRequest multi = new MultipartRequest(request, realFolder,
			maxSize, encType, new DefaultFileRenamePolicy());
	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	String userID = multi.getParameter("userID");
	Integer price;
	
	if(unitPrice.isEmpty())
		price = 0;
	else 
		price = Integer.valueOf(unitPrice);
	
	long stock;
	
	if(unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt =null;
	ResultSet rs = null;
	
	String sql="select * from product where p_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	rs = pstmt.executeQuery();
	if(rs.next()){
		if(fileName!=null){
			sql = "UPDATE product SET p_name=?, p_uintPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitsInStock=?, p_condition=?, p_fileName=? WHERE p_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productId);
			pstmt.setString(2, name);
			pstmt.setInt(3, price);
			pstmt.setString(4, description);
			pstmt.setString(5, category);
			pstmt.setString(6, manufacturer);
			pstmt.setLong(7, stock);
			pstmt.setString(8, condition);
			pstmt.setString(9, fileName);
			pstmt.setString(10, userID);
			pstmt.executeUpdate();
		}else{
			sql = "UPDATE product SET p_name=?, p_uintPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitsInStock=?, p_condition=? WHERE p_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productId);
			pstmt.setString(2, name);
			pstmt.setInt(3, price);
			pstmt.setString(4, description);
			pstmt.setString(5, category);
			pstmt.setString(6, manufacturer);
			pstmt.setLong(7, stock);
			pstmt.setString(8, condition);
			pstmt.setString(10, userID);
			pstmt.executeUpdate();
		}
	}
	if(rs!=null)
		rs.close();
	if(pstmt != null)
		pstmt.close();
	if(conn!=null)
		conn.close();
	
	response.sendRedirect("editProduct.jsp?edit=update");
%>