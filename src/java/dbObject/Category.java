/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dbObject;

/**
 *
 * @author VICTUS
 */
public class Category {

    private int id;
    private String description;
    private String name;

    public Category() {
    }

    public Category(int id, String name, String des) {
        this.id = id;
        this.description = des;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDes() {
        return description;
    }

    public void setDes(String des) {
        this.description = des;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
