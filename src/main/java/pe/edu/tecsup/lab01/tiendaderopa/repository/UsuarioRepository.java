package pe.edu.tecsup.lab01.tiendaderopa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pe.edu.tecsup.lab01.tiendaderopa.model.Usuario;

import java.util.Optional;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    Optional<Usuario> findByEmail(String email);
}