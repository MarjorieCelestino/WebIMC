function myFunction() {
    var peso, altura, imc, sexo, opcao;
	peso = 0;
	altura = 0;

	//Recebe valores de peso e altura
    peso = document.getElementById("peso").value;
    altura = document.getElementById("altura").value;
	sexo = document.getElementById("sexo");

	
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
}
			
