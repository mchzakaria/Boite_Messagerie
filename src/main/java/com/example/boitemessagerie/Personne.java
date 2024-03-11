package com.example.boitemessagerie;
import java.sql.SQLException;
public class Personne extends ConnexionBD{
    String nom , prenom , email , password;
    public void setNom(String nom) {
        this.nom = nom;
    } public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    public void setEmail(String email) {
        this.email = email;
    } public String getNom() {
        return nom;
    }
    public String getPrenom() {
        return prenom;
    }public String getEmail() {
        return email;
    }
    public String getPassword() {
        return password;
    } public void setPassword(String password) {
        this.password = password;
    }
    public void add(){
        miseAJour("INSERT INTO personne (nom, prenom, email, password) values('"+nom+"','"+prenom+"','"+email+"','"+password+"')");
    }
    public String check(){
        lire("SELECT * FROM personne WHERE email='"+email+"'AND password='"+password+"'");
        try {
            if(resultat.next()){
                return String.valueOf(resultat.getInt("idPersonne"));
            }
            else{ return null ; }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }
}
