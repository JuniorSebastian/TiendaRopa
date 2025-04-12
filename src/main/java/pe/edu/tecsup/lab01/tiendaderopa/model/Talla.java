package pe.edu.tecsup.lab01.tiendaderopa.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Talla {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;  // S, M, L, XL, etc.
}