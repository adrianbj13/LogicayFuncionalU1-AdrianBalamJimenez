/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ejercicio;

import javax.swing.JOptionPane;

public class POO_EJERCICIO {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        //se declaran las variables que vamos a utilizar
        String Nombre="ADRIAN GUADALUPE ";
        String Apellildo="BALAM JIMENEZ";
        int Edad=21;
        //se debe de crear una instancia de la clase persona
        Persona p=new Persona(Nombre,Apellildo,Edad);
        //se muestran los datos de la persona en un mensaje.-
        JOptionPane.showMessageDialog(null,"Nombre Completo:\n"+ p.datos()+"\n"
                + "Edad: "+p.edad()+" años");
    }
}

