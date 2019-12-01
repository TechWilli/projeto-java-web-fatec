/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backalunos.control;

import backalunos.bean.Disciplina;
import backalunos.bean.Aluno;
import backalunos.bean.AlunoDisciplina;
import backalunos.dao.AlunoDisciplinaDao;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author William
 */
public class AlunoDisciplinaControl {
    
    static AlunoControl alucont = new AlunoControl();
    static DisciplinaControl discont = new DisciplinaControl();

    public AlunoDisciplina inserirAlunoDisciplina(AlunoDisciplina aludi) throws SQLException, ClassNotFoundException {
        AlunoDisciplinaDao aludisDao = new AlunoDisciplinaDao();
        aludi = aludisDao.inseri(aludi);
        return aludi;
    }
    
    public AlunoDisciplina buscarAlunoDisciplina(AlunoDisciplina aludi) throws SQLException, ClassNotFoundException {

        AlunoDisciplinaDao aludisDao = new AlunoDisciplinaDao();
        aludi = aludisDao.busca(aludi);

        Aluno alu = new Aluno(aludi.getIdAluno(),"","","","");
        alu = alucont.buscaAluno(alu);
        aludi.setAlu(alu);

        Disciplina dis = new Disciplina(aludi.getIdDis(),"","","","");
        dis = discont.buscaDisciplina(dis);
        aludi.setDis(dis);

        return aludi;
    }
    
    public AlunoDisciplina excluirAlunoDisciplina(AlunoDisciplina aludi) throws SQLException, ClassNotFoundException {
        AlunoDisciplinaDao aludisDao = new AlunoDisciplinaDao();
        aludi = aludisDao.exclui(aludi);
        return aludi;
    }

    public AlunoDisciplina alterarAlunoDisciplina(AlunoDisciplina aludi) throws SQLException, ClassNotFoundException {
        AlunoDisciplinaDao aludisDao = new AlunoDisciplinaDao();
        aludi = aludisDao.altera(aludi);
        return aludi;
    }

    public List<AlunoDisciplina> listarAlunoDisciplina(AlunoDisciplina aludis) throws SQLException, ClassNotFoundException {

        AlunoDisciplinaDao aludisDao = new AlunoDisciplinaDao();
        List<AlunoDisciplina> alusdis = aludisDao.lista(aludis);

        for (AlunoDisciplina listaAlunoDisciplina : alusdis) {
            Aluno alu = new Aluno(listaAlunoDisciplina.getIdAluno(),"","","","");
            Disciplina pesfis = new Disciplina(listaAlunoDisciplina.getIdDis(),"","","","");
            listaAlunoDisciplina.setDis(discont.buscaDisciplina(pesfis));
            listaAlunoDisciplina.setAlu(alucont.buscaAluno(alu));
        }

        return alusdis;
    }
}
