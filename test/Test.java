
import dbObject.News;
import java.util.ArrayList;
import dao.NewsDAO;
import java.util.Map;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author VICTUS
 */
public class Test {
    public static void main(String[] args) {
        NewsDAO newsDAO = new NewsDAO();
        ArrayList<Map<String, Object>> newsList = newsDAO.getMapNews();
        for (Map<String, Object> map : newsList) {
            System.out.println(map);
        }

    }
}
