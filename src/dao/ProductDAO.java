package dao;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.Category;
import model.Product;
public class ProductDAO {
	public ArrayList<Product> getListProduct() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            product.setCategoryID(rs.getLong("category_id"));
            list.add(product);
        }
        return list;
    }  
    // get danh sách sản phẩm dựa theo danh mục
    public ArrayList<Product> getListProductByCategory(long category_id) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE category_id = '" + category_id + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }    
    
    public Product getProduct(long productID) throws SQLException {
     Connection connection = DBConnect.getConnecttion();
     String sql = "SELECT * FROM product WHERE product_id = '" + productID + "'";
     PreparedStatement ps = connection.prepareCall(sql);
     ResultSet rs = ps.executeQuery();
     Product product = new Product();
     while (rs.next()) {
          product.setProductID(rs.getLong("product_id"));
          product.setProductName(rs.getString("product_name"));
          product.setProductImage(rs.getString("product_image"));
          product.setProductPrice(rs.getDouble("product_price"));
          product.setProductDescription(rs.getString("product_description"));
     }
     return product;
    }
    
    ////////láº¥y danh sÃ¡ch sáº£n pháº©m
    public ArrayList<Product> getListProductByNav(long categoryID, int firstResult, int maxResult) throws SQLException{
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE category_id = '" + categoryID + "' limit ?,?";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setInt(1, firstResult);
        ps.setInt(2, maxResult);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    ///////// TÃ­nh tá»•ng sáº£n pháº©m
    public int countProductByCategory(long categoryID) throws SQLException{
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT count(product_id) FROM product WHERE category_id = '" + categoryID + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        int count = 0;
        while (rs.next()) {
            count = rs.getInt(1);
        }
        return count;  
    }
    public boolean insert(Product c) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO product VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, c.getProductID());
            ps.setLong(2, c.getCategoryID());
            ps.setString(3, c.getProductName());
            ps.setString(4, c.getProductImage());
            ps.setDouble(5, c.getProductPrice());
            ps.setString(6, c.getProductDescription());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    // cáº­p nháº­t dá»¯ liá»‡u
    public boolean update(Product c) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "UPDATE product SET product_name = ?,category_id = ?,product_image = ?,product_price = ?,product_description = ? WHERE product_id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, c.getProductName());
            ps.setLong(2, c.getCategoryID());
            ps.setString(3, c.getProductImage());
            ps.setDouble(4, c.getProductPrice());
            ps.setString(5, c.getProductDescription());
            ps.setLong(6, c.getProductID());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    // xÃ³a dá»¯ liá»‡u
    public boolean delete(long product_id) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "DELETE FROM product WHERE product_id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, product_id);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    ////////////////////////////
      public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
        // for(Product p : dao.getListProductByCategory(2)){
        //     System.out.println(p.getProductID() + " - "+p.getProductName());
        //}    
        //System.out.println(dao.getProduct(1).getProductID() + " - " +dao.getProduct(1).getProductName()); 
        System.out.println(dao.countProductByCategory(1));
    }
}































