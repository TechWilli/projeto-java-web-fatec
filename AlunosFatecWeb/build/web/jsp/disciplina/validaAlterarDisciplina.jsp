<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.control.DisciplinaControl"%>
<%@page import="backalunos.bean.Disciplina"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String turma = request.getParameter("TURMA");
    String nome = request.getParameter("NOME");
    String periodo = request.getParameter("PERIODO");
    String professor = request.getParameter("PROFESSOR");
    String dbusca = request.getParameter("DBUSCA");
    Disciplina dis = new Disciplina(id,turma,nome,periodo,professor);
    DisciplinaControl disCont = new DisciplinaControl();
    dis = disCont.alteraDisciplina(dis);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarDisciplina.jsp?PROFESSOR=" + dbusca;
    response.sendRedirect(url);
%>