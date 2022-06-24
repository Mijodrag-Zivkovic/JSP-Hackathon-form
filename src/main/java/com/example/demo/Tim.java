package com.example.demo;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

public class Tim {

    private String naziv;
    private String email;
    private String telefon;
    private String moto;
    private String kako_ste_culi;
    private String brClanova;
    private ArrayList<Clan> clanovi = new ArrayList<>();
    //private


    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getMoto() {
        return moto;
    }

    public void setMoto(String moto) {
        this.moto = moto;
    }

    public String getKako_ste_culi() {
        return kako_ste_culi;
    }

    public void setKako_ste_culi(String kako_ste_culi) {
        this.kako_ste_culi = kako_ste_culi;
    }

    public String getBrClanova() {
        return brClanova;
    }

    public void setBrClanova(String brClanova) {
        this.brClanova = brClanova;
    }

    public ArrayList<Clan> getClanovi() {
        return clanovi;
    }

    public void setClanovi(ArrayList<Clan> clanovi) {
        this.clanovi = clanovi;
    }

    @Override
    public String toString() {
        return naziv;
    }

    public void toFile() throws IOException {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        Date date = new Date();
        Timestamp timestamp2 = new Timestamp(date.getTime());
        System.out.println(timestamp);
        System.out.println(timestamp2);
        String path = "C:\\Users\\mijod\\Desktop\\fax\\web\\demo\\src\\main\\java\\storage";
        path += naziv + " " + timestamp.toString().replace("-", " ").replace(":", " ") + ".txt"; //
        System.out.println(path);
        File myObj = new File(path);
        //System.out.println(naziv);
        if (myObj.createNewFile()) {
            System.out.println("File created: " + myObj.getName());
        } else {
            System.out.println("File already exists.");
        }
        try {
            FileWriter myWriter = new FileWriter(path);
            //Field[] fields = Tim.class.getDeclaredFields();
            {
                //System.out.println(f.getType().getSimpleName());
                myWriter.write("naziv: " + naziv + "\n");
                myWriter.write("email: " + email + "\n");
                myWriter.write("telefon: " + telefon + "\n");
                myWriter.write("moto: " + moto + "\n");
                myWriter.write("kako ste culi za nas: " + kako_ste_culi + "\n");
                myWriter.write("broj clanova: " + brClanova + "\n");
                myWriter.write("clanovi:" + "\n");
                for (int i = 0; i < clanovi.size(); i++) {
                    myWriter.write("ime: " + clanovi.get(i).getIme() + "\n");
                    myWriter.write("prezime: " + clanovi.get(i).getPrezime() + "\n");
                    myWriter.write("email: " + clanovi.get(i).getEmail() + "\n");
                    myWriter.write("pozicija: " + clanovi.get(i).getPozicija() + "\n");
                }

            }
            //myWriter.write("Files in Java might be tricky, but it is fun enough!");
            myWriter.close();
            System.out.println("Successfully wrote to the file.");
        } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }


}
