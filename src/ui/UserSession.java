/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ui;

/**
 *
 * @author LENOVO
 */
public class UserSession {
   
    private static int nip_id;
    private static String u_nama;
    private static String u_jkelamin;
    private static String u_alamat;
    private static String u_status;
    
    public static int getNip_id() {
        return nip_id;
    }
 
    public static void setNip_id(int nip_id) {
        UserSession.nip_id = nip_id;
    }
 
    public static String getU_nama() {
        return u_nama;
    }
 
    public static void setU_nama(String u_nama) {
        UserSession.u_nama = u_nama;
    }
    
    public static String getU_jkelamin(){
        return u_jkelamin;
    }
    
    public static void setU_jkelamin(String u_jkelamin){
        UserSession.u_jkelamin = u_jkelamin;
    }
    
    public static String getU_alamat(){
        return u_alamat;
    }
    
    public static void setU_alamat(String u_alamat){
        UserSession.u_alamat = u_alamat;
    }
    
    public static String getU_status() {
        return u_status;
    }
 
    public static void setU_status(String u_status) {
        UserSession.u_status = u_status;
    }

}
