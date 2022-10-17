package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bbs.Bbs;
import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	private Connection conn = null;
	private PreparedStatement pstmt= null;
	private ResultSet rs = null;
	private static String dbURL = "jdbc:mysql://localhost:3306/chopadb";	
	private static String dbID = "root";
	private static String dbPassword = "1234";
	public static ProductRepository getInstance() {
		return instance;
	}	
	
	public ArrayList<Product> getAllProducts(){
		String sql = "select * from product";
		try {
			conn=getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Product product = new Product();
				product.setProductId(rs.getString("productId"));
				product.setPname(rs.getNString("pname"));
				product.setUnitPrice(rs.getInt("unitPrice"));
				product.setDescription(rs.getString("description"));
				product.setManufacturer(rs.getString("manufacturer"));
				product.setCategory(rs.getString("category"));
				product.setUnitsInStock(rs.getLong("unitsInStock"));
				product.setCondition(rs.getNString("condition"));
				product.setFilename(rs.getNString("filename"));
				product.setQuantity(rs.getInt("quantity"));
				product.setUserID(rs.getString("userID"));
				
				listOfProducts.add(product);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return listOfProducts;
	}
	
	public Connection getConnection() {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}

	public Product getProductById(String productId) {
		Product productById = new Product();
		String sql = "select * from product where productId=?";
		try {
			conn=getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productId);

			rs = pstmt.executeQuery();
			if(!rs.next()) {
				return null;
			}
			
			if(rs.next()) {
				
				productById.setProductId(rs.getString("productId"));
				productById.setPname(rs.getString("pname"));
				productById.setUnitPrice(rs.getInt("unitPrice"));
				productById.setDescription(rs.getString("description"));
				productById.setManufacturer(rs.getString("manufacturer"));
				productById.setCategory(rs.getString("category"));
				productById.setUnitsInStock(rs.getLong("unitsInStock"));
				productById.setCondition(rs.getString("condition"));
				productById.setFilename(rs.getString("filename"));
				productById.setQuantity(rs.getInt("quantity"));
				productById.setUserID(rs.getString("userID"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
//		for (int i =0; i<listOfProducts.size(); i++) {
//			Product product = listOfProducts.get(i);
//			if(product != null && product.getProductId() != null &&
//					product.getProductId().equals(productId)) {
//				productById = product;
//				break;
//			}
//		}
		return productById;
	}
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
