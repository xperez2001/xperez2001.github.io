let log = `
<form action="" method="post">
    <div id="correu">
        <label for="correu">Dirección de e-mail</label><br>
        <input type="email" id="correu" name="Correu" placeholder="email@example.com"><br>
    </div>
    <div id="password">
        <label for="contraseña">Contraseña</label><br>
        <input type="password" id="contraseña" name="Contraseña" placeholder="Contraseña...">
    </div>
    <div id="Submit">
        <input type="submit" value="Inicia sesión">
        <a onclick="login(2)"><p>Registrarme</p></a>
    </div>
</form>`;
let reg = `
<form action="" method="post">
    <div id="Nom">
        <label for="nom">Nom</label><br>
        <input type="text" id="nom" name="Nom" placeholder="Nom..."><br>
    </div>
    <di id="correuR">
        <label for="correu">Dirección de e-mail</label><br>
        <input type="email" id="correu" name="Correu" placeholder="email@example.com"><br>
    </di>
    <div  id="passwordR">
        <label for="contraseña">Contraseña</label><br>
        <input type="password" id="contraseña" name="Contraseña" placeholder="Contraseña...">
    </div>
    <di id="address">
        <label for="direccion">Dirección</label><br>
        <input type="text" id="dirrrecion" name="Address" placeholder="Dirección..."><br>
    </di>
    <div id="codiPostal">
        <label for="codiPostal">Código Postal</label><br>
        <input type="number" id="codiPostal" name="CodigoPostal" placeholder="Código...">
    </div>
    <div id="Submit">
        <input type="submit" value="Registrar">
    </div>
</form>`;

let logOpen = false;

function login(type) {
    if (type == 1)
    {
        if (!logOpen)
        {
            logOpen = true;
            document.getElementById("Login").innerHTML = log;
            document.getElementById("Login").style.height = "200px";
        }
        else
        {
            logOpen = false;
            document.getElementById("Login").innerHTML = "";
            document.getElementById("Login").style.backgroundColor = "transparent";
            document.getElementById("Cuerpo").style.filter = "blur(0px)";
        }
    }
    else if (type == 2)
    {
        document.getElementById("Login").innerHTML = reg;
        document.getElementById("Login").style.height = "350px";
    }

    if (logOpen) {
        var cuerpoElement = document.getElementById("Cuerpo");
        var loginElement = document.getElementById("Login");
        loginElement.style.backgroundColor = "rgb(39,39,39)";
        cuerpoElement.style.filter = "blur(10px)";

        var screenHeight = screen.availHeight;
        var screenWidth = screen.availWidth;
        var loginHeight = loginElement.clientHeight;
        var loginWidth = loginElement.clientWidth;

        var middleH = ((screenHeight / 2) - (loginHeight / 2));
        var middleW = ((screenWidth / 2) - (loginWidth / 2));

        loginElement.style.top = middleH + "px";   
        loginElement.style.left = middleW + "px";
    }
}



