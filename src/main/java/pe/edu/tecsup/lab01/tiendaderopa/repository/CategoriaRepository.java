package pe.edu.tecsup.lab01.tiendaderopa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pe.edu.tecsup.lab01.tiendaderopa.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
}