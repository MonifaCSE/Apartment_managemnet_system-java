/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Houserent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author user
 */
public class Rentel extends javax.swing.JFrame {

    /**
     * Creates new form Renter
     */
    public Rentel() {
        initComponents();
    }
Connection con;
  PreparedStatement pst; 
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLocation = new javax.swing.JComboBox<>();
        jNumberofroom = new javax.swing.JComboBox<>();
        jCost = new javax.swing.JComboBox<>();
        jLabel5 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jButton1 = new javax.swing.JButton();
        jSearch = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(920, 610));

        jPanel1.setBackground(new java.awt.Color(51, 102, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 7));
        jPanel1.setPreferredSize(new java.awt.Dimension(885, 560));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("Rental Details");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 20, 270, 40));

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel2.setText("Location");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 90, 120, 30));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel3.setText(" Cost");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 90, 80, 30));

        jLocation.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Khulshi", "Chawkbazar", "Nasirabaad", "Jamal Khan", "Bahaddarhat", " ", " " }));
        jPanel1.add(jLocation, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 90, 120, 30));

        jNumberofroom.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "1", "2", "3", "4", "5", "6", " " }));
        jNumberofroom.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jNumberofroomActionPerformed(evt);
            }
        });
        jPanel1.add(jNumberofroom, new org.netbeans.lib.awtextra.AbsoluteConstraints(760, 90, 60, 30));

        jCost.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "5000", "8000", "10000", "15000", "20000", "25000", "30000", " " }));
        jCost.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jCostActionPerformed(evt);
            }
        });
        jPanel1.add(jCost, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 90, 110, 30));

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel5.setText(" Number of room");
        jPanel1.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(540, 90, 224, 30));

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Apartment no", "Owner Name", "Name", "Apartment Type", "Location", "Number of room", "Cost", "Available"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class, java.lang.Integer.class, java.lang.String.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);
        if (jTable1.getColumnModel().getColumnCount() > 0) {
            jTable1.getColumnModel().getColumn(0).setResizable(false);
        }

        jPanel1.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 140, 700, 390));

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton1.setText("Exit");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(780, 220, 90, 30));

        jSearch.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jSearch.setText("Search");
        jSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jSearchActionPerformed(evt);
            }
        });
        jPanel1.add(jSearch, new org.netbeans.lib.awtextra.AbsoluteConstraints(780, 160, 90, 30));

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jNumberofroomActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jNumberofroomActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jNumberofroomActionPerformed

    private void jCostActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jCostActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jCostActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        // TODO add your handling code here:
       

    }//GEN-LAST:event_jTable1MouseClicked

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
          MainG p = new MainG();
          this.hide();
          p.setVisible(true);
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jSearchActionPerformed
        // TODO add your handling code here:
         String Location  =(String) jLocation.getSelectedItem();
            String Numberofroom  =(String) jNumberofroom.getSelectedItem();
             String Cost  = (String) jCost.getSelectedItem();
        try {
            Class.forName("java.sql.DriverManager");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rent","root","");
               pst = con.prepareStatement("SELECT * FROM `apartment_details` WHERE Location=? and Number_of_room=? and Cost=?");
                pst.setString(1,Location);
                 pst.setString(2,Numberofroom);
                   pst.setString(3,Cost);
                   ResultSet Rs= pst.executeQuery();
                     ResultSetMetaData rd = Rs.getMetaData();
                     int c;
                  c=rd.getColumnCount();
            DefaultTableModel df = (DefaultTableModel)jTable1.getModel();
            df.setNumRows(0);
            
             while(Rs.next())
             {
                 Vector v2 = new Vector();
                 
                 for(int i=1;i<=c;i++)
                 {
                      
                      v2.add(Rs.getString("Apartment_no"));
                       v2.add(Rs.getString("Owner_name"));
                     v2.add(Rs.getString("Name"));
                      v2.add(Rs.getString("Apartment_type"));
                      
                      v2.add(Rs.getString("Location"));
                      
                       v2.add(Rs.getString("Number_of_room"));
                      
                      v2.add(Rs.getString("Cost"));
                       v2.add(Rs.getString("Available"));
                 }
                 df.addRow(v2);
             }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Rentel.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Rentel.class.getName()).log(Level.SEVERE, null, ex);
        }
           
    }//GEN-LAST:event_jSearchActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Rentel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Rentel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Rentel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Rentel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Rentel().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JComboBox<String> jCost;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JComboBox<String> jLocation;
    private javax.swing.JComboBox<String> jNumberofroom;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JButton jSearch;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
}
