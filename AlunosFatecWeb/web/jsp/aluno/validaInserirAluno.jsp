<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.Aluno"%>
<%@page import="backalunos.control.AlunoControl"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String curso = request.getParameter("CURSO");
    String ra = request.getParameter("RA");
    Aluno alu = new Aluno(0,login,senha,curso,ra);
    AlunoControl alucont = new AlunoControl();
    alu = alucont.insereAluno(alu);

    String url = "inserirAluno.jsp";
    response.sendRedirect(url);
%>

<HTML>
    <BODY>
        <%=login%>  <BR>
        <%=senha%>  <BR>
        <%=curso%> <BR>
        <%=ra%>   <BR>
    </BODY>
</HTML>
