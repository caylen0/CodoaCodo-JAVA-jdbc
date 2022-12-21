package com.mycompany.web.models;

import java.io.Serializable;

public class Orador implements Serializable {
        private int id;
        private String nombre,apellido,contacto,tema;

        public Orador(){
    
        }
    
        public int get_id(){
            return id;
        }
    
        public void set_id(int nuevo_id){
            this.id = nuevo_id;
        }
    
        public String get_nombre(){
            return nombre;
        }
    
        public void set_nombre(String nuevo_nombre){
            this.nombre = nuevo_nombre;
        }

        public String get_apellido(){
            return apellido;
        }
    
        public void set_apellido(String nuevo_apellido){
            this.apellido = nuevo_apellido;
        }
    
        public String get_contacto(){
            return contacto;
        }
    
        public void set_contacto(String nuevo_contacto){
            this.contacto = nuevo_contacto;
        }
    
        public String get_tema(){
            return tema;
        }
    
        public void set_tema(String nuevo_tema){
            this.tema = nuevo_tema;
        }
    }

