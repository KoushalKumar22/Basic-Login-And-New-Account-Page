
function validate(){
    var passerror=document.getElementById("pass-error");
    var pherror=document.getElementById("phone-error");
    
     var pass = document.getElementById("pass").value;
     var a = pass.length;
     if (a > 8) {
        document.getElementById("pass").classList.remove("error_border");
        passerror.innerHTML="";
     } 
     else {
        document.getElementById("pass").classList.add("error_border");
        passerror.innerHTML="min 8 characters required"; 
        return false;
     }
     
     
     var phone=document.getElementById("phone").value;
     var b=phone.length;
     if(b==10){
         document.getElementById("phone").classList.remove("error_border");
        pherror.innerHTML="";
     }
     else {
        document.getElementById("phone").classList.add("error_border");
        pherror.innerHTML="phone must have 10 digits"; 
        return false;
     }
}