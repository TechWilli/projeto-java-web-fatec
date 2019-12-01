<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.AlunoDisciplina"%>
<%@page import="backalunos.control.AlunoDisciplinaControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idAluno = Integer.parseInt(request.getParameter("ID_ALUNO"));
    int idDisciplina = Integer.parseInt(request.getParameter("ID_DISCIPLINA"));
    double p1 = Double.parseDouble(request.getParameter("P1"));
    double p2 = Double.parseDouble(request.getParameter("P2"));
    String sitFinal = request.getParameter("SITUFINAL");
    String adbusca = request.getParameter("ADBUSCA"); //pbusca ou abusca ou adbusca
    AlunoDisciplina aludis = new AlunoDisciplina(id,idAluno,idDisciplina,p1,p2,sitFinal);
    AlunoDisciplinaControl aludiscont = new AlunoDisciplinaControl();
    aludis = aludiscont.alterarAlunoDisciplina(aludis);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoAlunoDisciplina.jsp?=" + adbusca;
    response.sendRedirect(url);
%>    
    
    