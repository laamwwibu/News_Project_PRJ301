/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dbConnect.DBContext;
import dbObject.Category;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author VICTUS
 */
public class CategoryDAO {

    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> list = new ArrayList<>();
        try {
            DBContext db = new DBContext();
            Connection con = db.getConnection();
            if (con != null) {
                Statement st = con.createStatement();
                String sql = "Select * from Category ";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    Category cat = new Category(rs.getInt("Cat_id"), rs.getNString("Cat_name"), rs.getNString("Cat_description"));
                    list.add(cat);
                }
                rs.close();
                st.close();
                con.close();
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Category getCategory(int id) {
        Category cat = new Category();
        try {
            DBContext db = new DBContext();
            Connection con = db.getConnection();
            if (con != null) {
                Statement st = con.createStatement();
                String sql = "Select * from Category where Cat_id = " + id;
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {             //needed even if just 1 row       
                    cat.setId(id);
                    cat.setName(rs.getString("Cat_name"));
                    cat.setDes(rs.getNString("Cat_description"));
                }
                st.close();
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return cat;
    }

    public boolean insertCategorys(Category cat) {
        try {
            DBContext db = new DBContext();
            Connection con = db.getConnection();
            if (con != null) {
                String sql = "{call insertCate(?,?)}";
                CallableStatement call = con.prepareCall(sql);
                call.setNString(1, cat.getName());
                call.setNString(2, cat.getDes());
                if (call.executeUpdate() <= 0) {
                    throw new Exception();
                }
                call.close();
                con.close();
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public boolean delCategory(int id) {
        try {
            DBContext db = new DBContext();
            Connection con = db.getConnection();
            if (con != null) {
                String sql = "{call delCate(?)}";
                CallableStatement call = con.prepareCall(sql);
                call.setInt(1, id);
                if (call.executeUpdate() <= 0) {
                    throw new Exception();
                }
                call.close();
                con.close();
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }
}
