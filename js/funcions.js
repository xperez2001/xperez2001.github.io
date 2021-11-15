function LogIn() {

    var loginHTML = document.getElementById("LoginContainer");
    
    if (document.body.scrollWidth > 680)
    {
        if (loginHTML.style.display == "none" || loginHTML.style.display == "")
            loginHTML.style.display = "block";
        else if (loginHTML.style.display == "block")
            loginHTML.style.display = "none";
    }
    else 
    {
        var cuerpoHTML = document.getElementById("Cuerpo");
        cuerpoHTML.style.filter = "blur(10px)"
        cuerpoHTML.style.position = "relative";

        loginHTML.style.display = "block";
        loginHTML.style.gridColumnStart = "1";
        loginHTML.style.gridColumnStart = "2";
        loginHTML.style.gridRowStart = "3";
        loginHTML.style.gridRowEnd = "4";
        loginHTML.style.zIndex = 1;
        loginHTML.style.marginTop = "50%";

    }
}