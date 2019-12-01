/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backalunos.dao;

import backalunos.bean.Disciplina;
import backalunos.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author William
 */
public class DisciplinaDao {
    
    private final Connection c;
    
    public DisciplinaDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }

    public Disciplina busca(Disciplina dis) throws SQLException{
        String sql = "select * from disciplinas WHERE id = ?";
        
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,dis.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                // criando o objeto Disciplina
                dis.setId(rs.getInt(1));
                dis.setTurma(rs.getString(2));
                dis.setNomeDis(rs.getString(3));
                dis.setPeriodo(rs.getString(4));
                dis.setProf(rs.getString(5));
                
                // adiciona o dis à lista de dis
            }
        return dis;
    }

    public List<Disciplina> lista(Disciplina p) throws SQLException {

        // usus: array armazena a lista de registros
        List<Disciplina> diss = new ArrayList<>();
        
        String sql = "select * from disciplinas where prof like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + p.getProf() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            Disciplina dis = new Disciplina(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5)
            );
            // adiciona o dis à lista de dis
            diss.add(dis);
        }
        
        rs.close();
        stmt.close();
        return diss;
    }

    
    public Disciplina inseri(Disciplina dis) throws SQLException{
        String sql = "insert into disciplinas" + " (turma, nomeDis, periodo, prof)" + " values (?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1,dis.getTurma());
        stmt.setString(2,dis.getNomeDis());
        stmt.setString(3,dis.getPeriodo());
        stmt.setString(4,dis.getProf());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            dis.setId(id);
        }
        stmt.close();
        return dis;
    }

   
    public Disciplina exclui(Disciplina dis) throws SQLException{
        String sql = "delete from disciplinas WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,dis.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return dis;
    }
    
    public Disciplina altera(Disciplina dis) throws SQLException{
        String sql = "UPDATE disciplinas SET turma = ?, nomeDis = ?, periodo = ?, prof = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,dis.getTurma());
        stmt.setString(2,dis.getNomeDis());
        stmt.setString(3,dis.getPeriodo());
        stmt.setString(4,dis.getProf());
        stmt.setInt(5,dis.getId());

        // executa
        stmt.execute();
        stmt.close();
        return dis;
    }
}
