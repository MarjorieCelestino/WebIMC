/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Imc;

import java.text.DecimalFormat;
import java.text.NumberFormat;

/**
 *
 * @author alunoinf
 */
public class Model {

    public String calcular(float peso, float altura, String sexo) {
        NumberFormat formatarFloat= new DecimalFormat("0.00"); 
        String resultado = "";

        //Cálculo do imc
        float imc = peso / (altura * altura);
        formatarFloat.format(imc); 
        
        if (peso != 0 && altura != 0) {
            switch (sexo) {
                case "Feminino":
                    //Regras para mulher
                    if (imc <= 19.1) {
                        resultado = "IMC = " + imc + "\nAbaixo do peso.";
                    } else if (imc > 19.1 && imc <= 25.8) {
                        resultado = "IMC = " + imc + "\nPeso normal.";
                    } else if (imc >= 25.8 && imc <= 27.3) {
                        resultado = "IMC = " + imc + "\nMarginalmente acima do peso.";
                    } else if (imc >= 27.3 && imc <= 32.3) {
                        resultado = "IMC = " + imc + "\nAcima do peso ideal.";
                    } else if (imc > 32.3) {
                        resultado = "IMC = " + imc + "\nObeso.";
                    }

                    break;
                case "Masculino":
                    //Regras para homem
                    if (imc <= 20.7) {
                        resultado = "IMC = " + imc + "\nAbaixo do peso.";
                    } else if (imc > 20.7 && imc <= 26.4) {
                        resultado = "IMC = " + imc + "\nPeso normal.";
                    } else if (imc >= 26.4 && imc <= 27.8) {
                        resultado = "IMC = " + imc + "\nMarginalmente acima do peso.";
                    } else if (imc >= 27.8 && imc <= 31.1) {
                        resultado = "IMC = " + imc + "\nAcima do peso ideal.";
                    } else if (imc > 31.1) {
                        resultado = "IMC = " + imc + "\nObeso.";
                    }
                    break;
                default:
                    resultado ="Preencha todos campos corretamente!";
                    break;
            }
        } else {
            resultado = "Preencha todos campos corretamente!";
        }
        return resultado;
    }
}
