package ui;

import java.sql.*;
 
public class Config {
    private static Connection mysqlconfig;
    public static Connection ConfigDB()throws SQLException{
        try {
            String url="jdbc:mysql://localhost:3306/farmasi"; //url database
            String user="root"; //user db
            String pass=""; //password db
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            mysqlconfig=DriverManager.getConnection(url, user, pass);            
        } catch (Exception e) {
            System.err.println("koneksi gagal "+e.getMessage()); //perintah menampilkan error pada koneksi
        }
        return mysqlconfig;
    }

    public void CloseConfigDB() throws SQLException{
            try{
                if(mysqlconfig != null){
                    System.out.print("Tutup Koneksi\n");
                }
            }catch(Exception ex){
            }
        }    
}