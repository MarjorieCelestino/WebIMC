
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


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

<form>
<p>Peso:</p> <input name = "peso" type="text" name="Peso" placeholder="Peso" >
<br></br>
<p>Altura:</p> <input name= "altura" type="text" name="Altura" placeholder="Altura" >
<br></br>
<p>Sexo:</p>
<select name = "sexo">
    <option></option>
    <option>Feminino</option>
    <option>Masculino</option>
</select>
</form>
<br></br><br></br>
<button>Calcular</button>

<b>${resultado}</b>

</body>
</html>