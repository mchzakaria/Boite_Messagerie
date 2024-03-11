package com.example.boitemessagerie;

import java.sql.*;

public class ConnexionBD {
    private Connection connexion;private Statement instruction;protected ResultSet resultat;

    public ConnexionBD(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connexion = DriverManager.getConnection("jdbc:mysql://localhost/messagerie","root","");
            instruction = connexion.createStatement();
        } catch (SQLException ex){
            System.err.println("Base de donnees non Trouvee ou requete incorrecte");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
    public void lire(String requete){
        try{
            resultat = instruction.executeQuery(requete);
        } catch (SQLException e) {
            System.err.println("Requete incorrecte"+requete);
        }
    }
    public void miseAJour(String requete){
        try{
            instruction.executeUpdate(requete);
        } catch (SQLException e) {
            System.err.println("Requete incorrecte"+requete);
        }
    }
    public boolean suivant(){
        try {
            return resultat.next();
        } catch (SQLException ex){
            return false ;
        }
    }
    public void arret(){
        try {
            connexion.close();
        }catch (SQLException exception){
            System.err.println("Erreur sur l'arret a la base de donnees");
        }
    }
}
