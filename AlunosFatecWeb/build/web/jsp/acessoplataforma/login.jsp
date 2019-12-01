<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LOGIN - SISTEMA</title>
    <body>
        <div class="container">
            <div class="jooj">
                <h1 style = "font-size: 20px">SISTEMA DE LOGIN DE ALUNO</h1>
                <img src = "../img/aluno.png" alt = "imagem login aluno" height = "250px" style = "margin-bottom: 10px">
                <form name="FORMLOGIN" action="menu.jsp" method="post" style = "margin-left: 100px; width: 300px">
                    Login: <input type="text" name ="LOGIN"> <br class = "linha">
                    Senha: <input type="password" name ="SENHA"> <br class = "linha">
                    <input class="enviar" type="submit" name="ENVIAR" value="ENVIAR" style = "border-radius: 25px; background-color:black; color:white; width:136px; height:56px; border:0px">
                </form>
            </div>
            
        </div>
    </body>
</html>
