<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IMC</title>
<link rel="stylesheet" type="text/css" href="modelo.css" />
</head>
<div>

<body>

<br><br>
<h1>IMC</h1>
<br><br>

<hr> 
</div>
<br></br>
<!-- Recebe dados -->
<p>Preencha os dados abaixo para calcular seu Índice de Massa Corporal:</p>

<br></br>


<p>Peso:</p> <input id = "peso" type="text" name="Peso" placeholder="Peso" >
<br></br>
<p>Altura:</p> <input id= "altura" type="text" name="Altura" placeholder="Altura" >
<br></br>
<p>Sexo:</p>
<select id = "sexo">
  <option></option>
  <option>Feminino</option>
  <option>Masculino</option>
</select>
<br></br><br></br>
<button onclick="myFunction()" >Enviar</button>
<!-- Referencia JS -->
<%
float peso = document.getParameter("peso");
float altura = document.getElementById("altura").value;
int sexo = document.getElementById("sexo");


    	//Cálculo do imc
   		imc = peso / (altura * altura);
   		if(peso !=0 && altura !=0){
    	switch(sexo.selectedIndex){
    		case 1:
    		//Regras para mulher
				if(imc <= 19.1){
				window.alert("IMC = " + imc.toFixed(2) + "\nAbaixo do peso.");
		        }else if(imc > 19.1 && imc <= 25.8){
				window.alert("IMC = " + imc.toFixed(2) + "\nPeso normal.");
				}else if(imc >= 25.8 && imc <= 27.3){
				window.alert("IMC = " + imc.toFixed(2) + "\nMarginalmente acima do peso.");
				}else if(imc >= 27.3 && imc <= 32.3){
				window.alert("IMC = " + imc.toFixed(2) + "\nAcima do peso ideal.");
				}else if(imc > 32.3 ){
				window.alert("IMC = " + imc.toFixed(2) + "\nObeso.");}
				
			break;
			case 2:
				//Regras para homem
		        if(imc <= 20.7){
				window.alert("IMC = " + imc.toFixed(2) + "\nAbaixo do peso.");
		        }else if(imc > 20.7 && imc <= 26.4){
				window.alert("IMC = " + imc.toFixed(2) + "\nPeso normal.");
				}else if(imc >= 26.4 && imc <= 27.8){
				window.alert("IMC = " + imc.toFixed(2) + "\nMarginalmente acima do peso.");
				}else if(imc >= 27.8 && imc <= 31.1){
				window.alert("IMC = " + imc.toFixed(2) + "\nAcima do peso ideal.");
				}else if(imc > 31.1 ){
				window.alert("IMC = " + imc.toFixed(2) + "\nObeso.");}
			break;
			default:
				window.alert("Preencha todos campos corretamente!");
			break;
		}
	}else{window.alert("Preencha todos campos corretamente!");}
%>

<hr>
</body>
</html>