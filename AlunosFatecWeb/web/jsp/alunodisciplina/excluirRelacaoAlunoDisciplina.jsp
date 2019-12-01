<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.AlunoDisciplina"%>
<%@page import="backalunos.control.AlunoDisciplinaControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    AlunoDisciplina aluDis = new AlunoDisciplina(id,0,0,0,0,"");
    AlunoDisciplinaControl aluDisCont = new AlunoDisciplinaControl();
    aluDis = aluDisCont.excluirAlunoDisciplina(aluDis);
    
    String adbusca = request.getParameter("ADBUSCA"); //OU abusca OU dbusca
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoAlunoDisciplina.jsp?OBS=" + adbusca;
    response.sendRedirect(url);

%>

