package pe.edu.tecsup.lab01.tiendaderopa.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.edu.tecsup.lab01.tiendaderopa.model.Talla;
import pe.edu.tecsup.lab01.tiendaderopa.repository.TallaRepository;

import java.util.List;
import java.util.Optional;

@Service
public class TallaService {

    @Autowired
    private TallaRepository tallaRepository;

    public List<Talla> findAll() {
        return tallaRepository.findAll();
    }

    public Optional<Talla> findById(Long id) {
        return tallaRepository.findById(id);
    }

    public Talla save(Talla talla) {
        return tallaRepository.save(talla);
    }

    public void deleteById(Long id) {
        tallaRepository.deleteById(id);
    }
}