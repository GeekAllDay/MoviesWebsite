/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.csueb.cs3520.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;
import com.mysql.jdbc.Statement;
import static java.lang.Thread.sleep;
import java.util.ArrayList;
/**
 *
 * @author Arash
 */
public class movieLists {
        private static String db_URL = "jdbc:mysql://localhost:3306/sys";
        private static String db_username = "root";
        private static String db_password = "lin94538";
        //private static String db_password = "abbasalidehdari";
        public static List<String> setMovieList(String genre){
        ArrayList<String> listOfMovies = new ArrayList<String>();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(db_URL,db_username,db_password);
            Statement statement = (Statement) connection.createStatement();
            ResultSet rs = statement.executeQuery("Select * From sys.movies where genre = ('"+ genre + "')");
            while(rs.next()){
                String mName = rs.getString("movieName");
                listOfMovies.add(mName);
            }
            rs.close();
            statement.close();
            connection.close();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
        return listOfMovies;
    }
    public static void removeMovie(String movieToRemove){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(db_URL,db_username,db_password);
            Statement statement = (Statement) connection.createStatement();
            int deleteQuery = statement.executeUpdate("delete From sys.movies where movieName = ('"+ movieToRemove + "')");
            statement.close();
            connection.close();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
}
