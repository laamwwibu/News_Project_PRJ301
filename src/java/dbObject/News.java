/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dbObject;

/**
 *
 * @author Asus
 */
public class News {
    private int user_id;
    private int news_id;
    private int cat_id;
    private String cat_name;
    private String title;
    private String subtitle;
    private String content;
    private String image;
    private int save_id;

    public News() {
    }
    
    public News(int user_id, int cat_id, String title, String subtitle, String content, String image) {
        this.user_id = user_id;
        this.cat_id = cat_id;
        this.title = title;
        this.subtitle = subtitle;
        this.content = content;
        this.image = image;
    }
    
    
    public News(int user_id, int news_id, int cat_id, String cat_name, String title, String subtitle, String content, String image) {
        this.user_id = user_id;
        this.news_id = news_id;
        this.cat_id = cat_id;
        this.cat_name = cat_name;
        this.title = title;
        this.subtitle = subtitle;
        this.content = content;
        this.image = image;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getNews_id() {
        return news_id;
    }

    public void setNews_id(int news_id) {
        this.news_id = news_id;
    }

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    public String getCat_name() {
        return cat_name;
    }

    public void setCat_name(String cat_name) {
        this.cat_name = cat_name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "News{" + "user_id=" + user_id + ", news_id=" + news_id + ", cat_id=" + cat_id + ", cat_name=" + cat_name + ", title=" + title + ", subtitle=" + subtitle + ", content=" + content + ", image=" + image + '}';
    }
    
    
    
}