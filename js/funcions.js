function LogIn() {
    var elementHTML = document.getElementById("LoginContainer");
       
    if (elementHTML.style.display == "none" || elementHTML.style.display == "")
    {
        elementHTML.style.display = "block";
    }
    else if (elementHTML.style.display == "block")
    {
        elementHTML.style.display = "none";
    }
}