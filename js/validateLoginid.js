/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function getXmlHttpRequest()
{
    var xmlHttpReq= null;
    //For non micrsosft browser
    if(window.XMLHttpRequest)
        {
            xmlHttpReq=new XMLHttpRequest();

        }
        //For mircrosoft browser
        else
            {
                xmlHttpReq=new ActiveXObject("Microsoft.XMLHTTP");
            }
          return xmlHttpReq;

}

function validateLoginId()
{


    var xmlHttpRequest= getXmlHttpRequest();
    if(xmlHttpRequest==null)
        {
            alert("your browser does not support ajax");
        }
    var usrlogin= document.getElementById("user");
    var url="ValidateLoginId?usrlogin="+encodeURIComponent(usrlogin.value);
   // alert();
    xmlHttpRequest.onreadystatechange=procesRequest(xmlHttpRequest);
    xmlHttpRequest.open("POST", url, true);
    xmlHttpRequest.send(null);

}

 function procesRequest(xmlHttpRequest)
 {

return function(){
   
       if(xmlHttpRequest.readyState==4)
           {
               if(xmlHttpRequest.status==200)
                   {
                       var responsTxt=xmlHttpRequest.responseText;
                       if(responsTxt=="1")
                           {
							   alert("Sorry ! Either Your Account is paending for approval or this is invalid user id please contact to Admin");
                       //document.getElementById("msgArea").innerHTML="<font color='red'>Not Available !</font>";
					   document.getElementById("user").focus();
					   document.getElementById("submit").disabled = true;
                           }
                   else{
                       
					   document.getElementById("submit").disabled = false;
                   }

                   }
           }

 };
}