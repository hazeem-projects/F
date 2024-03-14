/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

/**
 *
 * @author Javid Nizamdeen
 */
public class DBCon {
    
    private static Connection c ;
    private static void SetUpConnection()throws Exception{
        Class.forName("com.mysql.cj.jdbc.Driver");
        c = DriverManager.getConnection("jdbc:mysql://localhost:3306/classic_lounge_db?useSSL=false","root","Hazeem1998*");
    }
    public static void iud(String sql)throws Exception{
        if(c==null){
        SetUpConnection();
        }
        c.createStatement().execute(sql);  
    }
    
    public static ResultSet search(String sql)throws Exception{
        if(c==null){
            SetUpConnection();
        }
    return c.createStatement().executeQuery(sql);
    
    }
    public static Connection getConn()throws Exception{
        if(c==null){
            try {
                SetUpConnection();
            } catch (Exception e) {
                e.printStackTrace();
            }
        
        }
        return c ;
    }
    
}