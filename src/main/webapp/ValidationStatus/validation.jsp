<%
    String massage = (String) request.getAttribute("msg");
    if(massage!=null){
    out.println(massage);
    
  	request.removeAttribute("msg");
  
    }
%>