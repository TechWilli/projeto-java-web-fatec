
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.Disciplina"%>
<%@page import="backalunos.control.DisciplinaControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Disciplina dis = new Disciplina(id,"","","","");
    DisciplinaControl disCont = new DisciplinaControl();
    dis = disCont.excluiDisciplina(dis);
    String dbusca = request.getParameter("DBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarDisciplina.jsp?PROFESSOR=" + dbusca;
    response.sendRedirect(url);
%>