/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author n0387
 */
public class ProductDAO {

    private static final String GET_LIST_PRODUCT = "SELECT [productID],[productName],[image],[productPrice],[productQuantity]\n"
            + "  FROM [dbo].[Products]";

    public List<ProductDTO> getListProduct() throws SQLException {
        List<ProductDTO> listP = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_LIST_PRODUCT);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String productID = rs.getString("productID");
                    String productName = rs.getString("productName");
                    String image = rs.getString("image");
                    double price = rs.getDouble("productPrice");
                    int quantity = rs.getInt("productQuantity");
                    ProductDTO p = new ProductDTO(productID, productName, image, price, quantity);
                    listP.add(p);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listP;
    }

    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
        List<ProductDTO> list = dao.getListProduct();

        for (ProductDTO o : list) {
            System.out.println(o);
        }
    }
}
