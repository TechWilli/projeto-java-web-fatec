<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.AlunoDisciplina"%>
<%@page import="backalunos.control.AlunoDisciplinaControl"%>

<%
    int idAluno = Integer.parseInt(request.getParameter("ID_ALUNO"));
    int idDisciplina = Integer.parseInt(request.getParameter("ID_DISCIPLINA"));
    double p1 = Double.parseDouble(request.getParameter("P1"));
    double p2 = Double.parseDouble(request.getParameter("P2"));
    String sitFinal = request.getParameter("SITUFINAL");
    AlunoDisciplina aludis = new AlunoDisciplina(0,idAluno,idDisciplina,p1,p2,sitFinal);
    AlunoDisciplinaControl aludiscont = new AlunoDisciplinaControl();
    aludis = aludiscont.inserirAlunoDisciplina(aludis);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoAlunoDisciplina.jsp";
    response.sendRedirect(url);

%>