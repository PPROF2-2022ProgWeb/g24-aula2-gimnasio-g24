<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>BOOTSTRAP 5</title>
    <style>
        header{
            height:100px;
            background-color: gray;
        }

        div#columna{
            backgorund-color: yellow;
        }
    </style>
</head>
<body>
    <!--align-items vertical -->    
    <!--align-content horizontal -->    
    
    <!-- contenedor padre clase d-flex flex-row //haciendo esto todos sus "hijos" apareceran uno al lado del otro-->
    <!-- contenedor padre clase d-flex flex-column //haciendo esto todos sus "hijos" apareceran uno debajo del otro-->
    
    
        <!-- tanto el contenedor como los hijos a los cuales queremos aplicarles propiedades deben tener el atributo d-flex -->
        <header class="d-flex flex-column">
            <h1 class="d-flex align-start">NADA PERSONAL</h1>
            <div id="columna" class="col d-flex align-items-center">
                <h1>Caja 1</h1>
                <h1>Caja 2</h1>
                <h1>Caja 3</h1>
            </div>
            
        </header>

    




    <script src="js/bootstrap.min.js"></script>   
</body>
</html>

