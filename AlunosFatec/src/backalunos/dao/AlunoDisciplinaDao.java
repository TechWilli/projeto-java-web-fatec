/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backalunos.dao;

import backalunos.bean.AlunoDisciplina;
import backalunos.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author William
 */
public class AlunoDisciplinaDao {
    
    private final Connection c;
    
    public AlunoDisciplinaDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public AlunoDisciplina altera(AlunoDisciplina aluDis) throws SQLException{
        String sql = "UPDATE alunos_disciplinas SET idAluno = ?, idDis = ?, p1 = ?, p2 = ?, situacaoFinal = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,aluDis.getIdAluno());
        stmt.setInt(2,aluDis.getIdDis());
        stmt.setDouble(3,aluDis.getP1());
        stmt.setDouble(4,aluDis.getP2());
        stmt.setString(5,aluDis.getSitFinal());
        stmt.setInt(6,aluDis.getIdAluDis());

        // executa
        stmt.execute();
        stmt.close();
        return aluDis;
    }

    public AlunoDisciplina exclui(AlunoDisciplina aluDis) throws SQLException{
        String sql = "delete from alunos_disciplinas WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,aluDis.getIdAluDis());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return aluDis;
    }


    public AlunoDisciplina inseri(AlunoDisciplina aluDis) throws SQLException{
        String sql = "insert into alunos_disciplinas" + " (idAluno, idDis, p1, p2, situacaoFinal)" + " values (?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        stmt.setInt(1,aluDis.getIdAluno());
        stmt.setInt(2,aluDis.getIdDis());
        stmt.setDouble(3,aluDis.getP1());
        stmt.setDouble(4,aluDis.getP2());
        stmt.setString(5,aluDis.getSitFinal());

        // executa
        stmt.execute();
        stmt.close();
        return aluDis;
    }
    
    public AlunoDisciplina busca(AlunoDisciplina aluDis) throws SQLException{
        String sql = "select * from alunos_disciplinas WHERE id = ?";
        
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,aluDis.getIdAluDis());
            // executa
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                // criando o objeto Aluno
                aluDis.setIdAluDis(rs.getInt(1));
                aluDis.setIdAluno(rs.getInt(2));
                aluDis.setIdDis(rs.getInt(3));
                aluDis.setP1(rs.getDouble(4));
                aluDis.setP2(rs.getDouble(5));
                aluDis.setSitFinal(rs.getString(6));
                // adiciona o alu à lista de alus
            }
        return aluDis;
    }
    
    public List<AlunoDisciplina> lista(AlunoDisciplina aluDis) throws SQLException{

        List<AlunoDisciplina> aluDiss = new ArrayList<>();
        
        String sql = "select * from alunos_disciplinas where situacaoFinal like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + aluDis.getSitFinal()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Aluno
            AlunoDisciplina alu = new AlunoDisciplina(
                rs.getInt(1),
                rs.getInt(2),
                rs.getInt(3),
                rs.getDouble(4),
                rs.getDouble(5),
                rs.getString(6)
            );
            // adiciona o alu à lista de alus
            aluDiss.add(alu);
        }
        
        rs.close();
        stmt.close();
        return aluDiss;
    }
}
