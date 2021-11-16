function LogIn() {

    var htmlElmenent = document.getElementById("Log");
    
    if (document.body.scrollWidth > 680)
    {
        if (htmlElmenent.style.display == "none" || htmlElmenent.style.display == "")
        {
            htmlElmenent.style.display = "block";
        }
        else if (htmlElmenent.style.display == "block")
        {
            htmlElmenent.style.display = "none";
        }
    }
    else 
    {
        var cuerpoHTML = document.getElementById("Cuerpo");

        if (htmlElmenent.style.display == "none" || htmlElmenent.style.display == "")
        {          
            cuerpoHTML.style.filter = "blur(10px)"
            cuerpoHTML.style.position = "relative";  
            htmlElmenent.style.zIndex = 1;
            htmlElmenent.style.display = "block";
            htmlElmenent.style.gridColumnStart = "1";
            htmlElmenent.style.gridColumnStart = "2";
            htmlElmenent.style.gridRowStart = "3";
            htmlElmenent.style.gridRowEnd = "4";
            htmlElmenent.style.marginTop = "200px";
        }
        else if (htmlElmenent.style.display == "block")
        {
            htmlElmenent.style.display = "none";
            cuerpoHTML.style.filter = "blur(0px)";
            cuerpoHTML.style.position = "block";
            htmlElmenent.style.marginTop = "0";
        }
    }
}

function LogIn2(type)
{
    var loginHTML = document.getElementById("Log");
    var regHTML = document.getElementById("Reg");
    var cuerpoHTML = document.getElementById("Cuerpo");

    if (type == 1)
    {
        if (loginHTML.style.display == "none" || loginHTML.style.display == "")
        {
            cuerpoHTML.style.filter = "blur(10px)";
            loginHTML.style.display = "block";
        }
        else if (loginHTML.style.display == "block")
        {
            cuerpoHTML.style.filter = "blur(0)";
            regHTML.style.display = "none"
            loginHTML.style.display = "none";
        }
    }
    else if (type == 2)
    {
        regHTML.style.display = "block";
    }
}