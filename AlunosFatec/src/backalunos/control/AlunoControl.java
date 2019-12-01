/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backalunos.control;

import backalunos.bean.Aluno;
import backalunos.dao.AlunoDao;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author William
 */
public class AlunoControl {
    
    AlunoDao aluDao;

    public Aluno validaLogin(Aluno alu) throws SQLException, ClassNotFoundException {
       this.aluDao = new AlunoDao();
       return aluDao.validaLogin(alu);
    }
    
    public Aluno insereAluno(Aluno alu) throws SQLException, ClassNotFoundException {
       this.aluDao = new AlunoDao();
       return aluDao.inseri(alu);
    }

    public Aluno alteraAluno(Aluno alu) throws SQLException, ClassNotFoundException {
       this.aluDao = new AlunoDao();
       return aluDao.altera(alu);
    }

    public Aluno excluiAluno(Aluno alu) throws SQLException, ClassNotFoundException {
       this.aluDao = new AlunoDao();
       return aluDao.exclui(alu);
    }

    public Aluno buscaAluno(Aluno alu) throws SQLException, ClassNotFoundException {
       this.aluDao = new AlunoDao();
       return aluDao.busca(alu);
    }

    public List<Aluno> ListaAluno(Aluno alu) throws SQLException, ClassNotFoundException { 
       this.aluDao = new AlunoDao();
       return aluDao.lista(alu);
    }
    
}
