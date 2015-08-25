/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Nirodya Gamage
 */
public class Users {
    private int id;
    private String name;
    private boolean isLeft;

    public Users(int id, String name, boolean isLeft) {
        this.id = id;
        this.name = name;
        this.isLeft = isLeft;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the isLeft
     */
    public boolean isIsLeft() {
        return isLeft;
    }

    /**
     * @param isLeft the isLeft to set
     */
    public void setIsLeft(boolean isLeft) {
        this.isLeft = isLeft;
    }
    
    
}
