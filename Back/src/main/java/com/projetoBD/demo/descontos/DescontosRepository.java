package com.projetoBD.demo.descontos;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class DescontosRepository {

    private final JdbcTemplate jdbcTemplate;

    public DescontosRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public boolean descontoSouza(String cpfPaciente) {
        String sql = "SELECT souza FROM Descontos WHERE cpfPaciente = ?";
        return Boolean.TRUE.equals(jdbcTemplate.queryForObject(sql, Boolean.class, cpfPaciente));
    }

    public boolean descontoFlamengo(String cpfPaciente) {
        String sql = "SELECT flamengo FROM Descontos WHERE cpfPaciente = ?";
        try {
            Boolean valor = jdbcTemplate.queryForObject(sql, Boolean.class, cpfPaciente);
            return Boolean.TRUE.equals(valor);
        } catch (EmptyResultDataAccessException e) {
            // retorna false quando não existe registro de desconto
            return false;
        }
    }

    public boolean descontoOnePiece(String cpfPaciente) {
        String sql = "SELECT onepiece FROM Descontos WHERE cpfPaciente = ?";
        return Boolean.TRUE.equals(jdbcTemplate.queryForObject(sql, Boolean.class, cpfPaciente));
    }

}
