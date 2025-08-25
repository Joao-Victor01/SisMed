package com.projetoBD.demo.descontos.service;

// import com.projetoBD.demo.descontos.DescontosRepository;
// import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DescontosServiceImpl implements DescontosService {

    // @Autowired
    // private DescontosRepository descontosRepository;
    @Override
    public boolean descontoFlamengo(String cpfPaciente){
        // Descontos desativados temporariamente: sempre retorna false
        return false;
    }

    @Override
    public boolean descontoSouza(String cpfPaciente) {
        // Descontos desativados temporariamente: sempre retorna false
        return false;    }

    @Override
    public boolean descontoOnePiece(String cpfPaciente) {
        // Descontos desativados temporariamente: sempre retorna false
        return false;    }

}
