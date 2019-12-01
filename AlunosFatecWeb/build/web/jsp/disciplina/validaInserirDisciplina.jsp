<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.Disciplina"%>
<%@page import="backalunos.control.DisciplinaControl"%>

<%
    String turma = request.getParameter("TURMA");
    String nome = request.getParameter("NOME");
    String periodo = request.getParameter("PERIODO");
    String professor = request.getParameter("PROFESSOR");
 
    Disciplina dis = new Disciplina(0,turma,nome,periodo,professor);
    DisciplinaControl discont = new DisciplinaControl();
    dis = discont.insereDisciplina(dis);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirDisciplina.jsp";
    response.sendRedirect(url);
    
    /*String cpf = request.getParameter("CPF");
    String nome = request.getParameter("NOME");
    String mail = request.getParameter("EMAIL");
    String tipo = request.getParameter("TIPO");
 
    Disciplina dis = new Disciplina(0,cpf,nome,tipo,mail);
    DisciplinaControl discont = new DisciplinaControl();
    dis = discont.insereDisciplina(dis);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirDisciplina.jsp";
    response.sendRedirect(url);*/
    
%>

