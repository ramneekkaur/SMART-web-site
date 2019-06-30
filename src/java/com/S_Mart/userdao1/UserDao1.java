/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.S_Mart.userdao1;
import com.S_Mart.user.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dell
 */
public class UserDao1 {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/S_Mart","root","root");
        }
        catch(Exception e)
        {
            System.out.print(e);
        }
    
    return con;
    }
    

public static int save(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into user(name,number,email,pswd) values(?,?,?,?)");  
        ps.setString(1,u.getName());  
        ps.setString(2,u.getNumber());  
        ps.setString(3,u.getEmail());  
        
        ps.setString(4,u.getPswd());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update user set name=?,number=?,email=?,pswd=? where id=?");  
                ps.setInt(1,u.getId());  

        ps.setString(2,u.getName());
                ps.setString(3,u.getNumber()); 

        ps.setString(4,u.getEmail());  
          
                ps.setString(5,u.getPswd());  

        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from user where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<User> getAllRecords(){  
    List<User> list=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from user");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
                        u.setNumber(rs.getString("number"));  

            u.setEmail(rs.getString("email"));  
                         u.setPswd(rs.getString("pswd"));  

            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static User getRecordById(int id){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from user where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));
            u.setNumber(rs.getString("number"));  

            u.setEmail(rs.getString("email"));  
             u.setPswd(rs.getString("pswd"));  

        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  

 
    

