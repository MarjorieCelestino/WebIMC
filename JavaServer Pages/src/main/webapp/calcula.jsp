<%@ page language="java" contentType="text/html; charset=UFT-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFT-8">
<title>Insert title here</title>
</head>
<body>
<%
    float peso = 0;
	float altura = 0;
	java.util.Formatter formatter = new java.util.Formatter();
	String resultado;

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
					out.println("IMC = " + formatter.format("%.2f", imc) + "\nAbaixo do peso.");
		        }else if(imc > 19.1 && imc <= 25.8){
		       	 	out.println("IMC = " + formatter.format("%.2f", imc) + "\nPeso normal.");
				}else if(imc >= 25.8 && imc <= 27.3){
					out.println("IMC = " + formatter.format("%.2f", imc) + "\nMarginalmente acima do peso.");
				}else if(imc >= 27.3 && imc <= 32.3){
					out.println("IMC = " + formatter.format("%.2f", imc) + "\nAcima do peso ideal.");
				}else if(imc > 32.3 ){
					out.println("IMC = " + formatter.format("%.2f", imc) + "\nObeso.");}
				
			break;
			case "mas":
				//Regras para homem
		        if(imc <= 20.7){
		        	out.println("IMC = " + formatter.format("%.2f", imc) + "\nAbaixo do peso.");
		        }else if(imc > 20.7 && imc <= 26.4){
		        	out.println("IMC = " + formatter.format("%.2f", imc) + "\nPeso normal.");
				}else if(imc >= 26.4 && imc <= 27.8){
					out.println("IMC = " + formatter.format("%.2f", imc) + "\nMarginalmente acima do peso.");
				}else if(imc >= 27.8 && imc <= 31.1){
					out.println("IMC = " + formatter.format("%.2f", imc) + "\nAcima do peso ideal.");
				}else if(imc > 31.1 ){
					out.println("IMC = " + formatter.format("%.2f", imc) + "\nObeso.");}
			break;
			default:
				out.println("Preencha todos campos corretamente!");
			break;
		}
	}else{out.println("Preencha todos campos corretamente!");}

%>
</body>
</html>