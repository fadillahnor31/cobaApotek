/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ui;

import java.util.Date;

/**
 *
 * @author LENOVO
 */
public class TimeNow {
    
    private Date wkt;
    private String $jam = "", $menit = "", $detik = "";
    public String getWkt(){
        wkt = new Date();
        int jam = wkt.getHours();
        int menit = wkt.getMinutes();
        int detik = wkt.getSeconds();
        if(jam <= 9)$jam = "0";
        if(menit <= 9)$menit = "0";
        if(detik <= 9)$detik = "0";
        return $jam + Integer.toString(jam)+":"+$menit + Integer.toString(menit)+":"+$detik + Integer.toString(detik);
    }
    public String getTgl(){
        wkt = new Date();
        java.text.SimpleDateFormat tgl = new java.text.SimpleDateFormat("dd/MM/yyyy");
        return tgl.format(wkt);
    }
    
}
