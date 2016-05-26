<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
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
  <option value = "fem">Feminino</option>
  <option value = "mas">Masculino</option>
</select>
<br></br><br></br>
<%
	float peso = 0;
	float altura = 0;
	java.util.Formatter formatter = new java.util.Formatter();
	String resultado = "";

		//Recebe valores de peso e altura
		String p = request.getParameter("peso");
		String a = request.getParameter("altura");
		String sexo = request.getParameter("sexo");
		//trasforma em float
		peso = Float.valueOf(p).floatValue();
		altura = Float.valueOf(a).floatValue();
    	//Cálculo do imc
   		float imc = peso / (altura * altura);
   		if(peso !=0 && altura !=0){
    	switch(sexo){
    		case "fem":
    		//Regras para mulher
				if(imc <= 19.1){
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAbaixo do peso.";
		        }else if(imc > 19.1 && imc <= 25.8){
		        	resultado = "IMC = " + formatter.format("%.2f", imc) + "\nPeso normal.";
				}else if(imc >= 25.8 && imc <= 27.3){
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nMarginalmente acima do peso.";
				}else if(imc >= 27.3 && imc <= 32.3){
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAcima do peso ideal.";
				}else if(imc > 32.3 ){
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nObeso.";}
				
			break;
			case "mas":
				//Regras para homem
		        if(imc <= 20.7){
		        	resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAbaixo do peso.";
		        }else if(imc > 20.7 && imc <= 26.4){
		        	resultado = "IMC = " + formatter.format("%.2f", imc) + "\nPeso normal.";
				}else if(imc >= 26.4 && imc <= 27.8){
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nMarginalmente acima do peso.";
				}else if(imc >= 27.8 && imc <= 31.1){
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAcima do peso ideal.";
				}else if(imc > 31.1 ){
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nObeso.";}
			break;
			default:
				resultado = "Preencha todos campos corretamente!";
			break;
		}
	}else{resultado = "Preencha todos campos corretamente!";}

   		
%>
<button <%=resultado %> >Enviar</button>
<hr>
</body>
</html>