package com.example.boitemessagerie;

import java.sql.SQLException;

public class ListeMessages extends ConnexionBD{
    public ListeMessages(int idPersonne){
        lire("SELECT * FROM message WHERE idPersonne=\""+idPersonne+"\"");
    }
    public String sujet(){
        try {
            return resultat.getString("sujet");
        }catch(SQLException ex){
            return "";
        }
    }
    public String texte(){
        try{
            return resultat.getString("texte");
        }catch (SQLException ex){
            return "";
        }
    }
}
