/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kamitha
 */
public class DataCenter extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String soilMoist = request.getParameter("soil");
        //String test = request.getParameter("test");
        
        DateFormat df = new SimpleDateFormat("yy/MM/dd");
        Date dateobj = new Date();
        
        String currentdate = df.format(dateobj);

        DateFormat tf = new SimpleDateFormat("HH:mm:ss");
        Date timeobj = new Date();
        String currenttime = tf.format(timeobj);
        
        try {
            
            Connection connection = DBConnection.getInstance().getConnection();
            PreparedStatement pst = connection.prepareStatement("INSERT INTO test(soil,date,time) VALUES(?,?,?)");
            pst.setObject(1, soilMoist);
            pst.setObject(2, currentdate);
            pst.setObject(3, currenttime);
            int result = pst.executeUpdate();
//            if (result > 0) {
//                System.out.println("OK");
//                response.setContentType("text/html");
//                request.setAttribute("getData", soilMoist);
//                request.getRequestDispatcher("/index.jsp").forward(request, response);
//            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

//        System.out.println(soilMoist);
//        
//        File file = new File("data.txt");
//        if (!file.exists()) {
//            file.createNewFile();
//        }
//        FileWriter out = new FileWriter(file);
//        BufferedWriter bWriter = new BufferedWriter(out);
//
//        bWriter.write(soilMoist);
//
//        bWriter.close();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
