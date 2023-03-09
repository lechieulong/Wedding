/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class Wed {

    int wedID, rID, userID;
    String wedName, wedCaption, description, rImage;
    Date wedDate;
    public Wed() {
    }

    public Wed(int wedID, String wedName, String wedCaption, String description, int rID, int userID,String rImage,Date wedDate) {
        this.wedID = wedID;
        this.wedName = wedName;
        this.wedCaption = wedCaption;
        this.description = description;
        this.rID = rID;
        this.userID = userID;
        this.rImage = rImage;
        this.wedDate = wedDate;
    }

    public Date getWedDate() {
        return wedDate;
    }

    public void setWedDate(Date wedDate) {
        this.wedDate = wedDate;
    }

    public int getWedID() {
        return wedID;
    }

    public void setWedID(int wedID) {
        this.wedID = wedID;
    }

    public int getrID() {
        return rID;
    }

    public void setrID(int rID) {
        this.rID = rID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getWedName() {
        return wedName;
    }

    public void setWedName(String wedName) {
        this.wedName = wedName;
    }

    public String getWedCaption() {
        return wedCaption;
    }

    public void setWedCaption(String wedCaption) {
        this.wedCaption = wedCaption;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getrImage() {
        return rImage;
    }

    public void setrImage(String rImage) {
        this.rImage = rImage;
    }

    @Override
    public String toString() {
        return "Wed{" + "wedID=" + wedID + ", rID=" + rID + ", userID=" + userID + ", wedName=" + wedName + ", wedCaption=" + wedCaption + ", description=" + description + ", rImage=" + rImage + "wedDate" + wedDate +  '}';
    }

}
