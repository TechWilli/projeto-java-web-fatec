/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backalunos.control;

import backalunos.bean.Disciplina;
import backalunos.dao.DisciplinaDao;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author William
 */
public class DisciplinaControl {
    
    static DisciplinaDao disDao;

    public Disciplina buscaDisciplina(Disciplina dis) throws SQLException, ClassNotFoundException {
        disDao = new DisciplinaDao();
        return disDao.busca(dis);
    }

    public List<Disciplina> listaDisciplina(Disciplina dis) throws SQLException, ClassNotFoundException {
        disDao = new DisciplinaDao();
        List<Disciplina> diss = disDao.lista(dis);
        return diss;
    }

    public Disciplina insereDisciplina(Disciplina dis) throws SQLException, ClassNotFoundException {
        disDao = new DisciplinaDao();
        return disDao.inseri(dis);
    }

    public Disciplina alteraDisciplina(Disciplina dis) throws SQLException, ClassNotFoundException {
        disDao = new DisciplinaDao();
        return disDao.altera(dis);
    }

    public Disciplina excluiDisciplina(Disciplina dis) throws SQLException, ClassNotFoundException {
        disDao = new DisciplinaDao();
        return disDao.exclui(dis);
    }
}
