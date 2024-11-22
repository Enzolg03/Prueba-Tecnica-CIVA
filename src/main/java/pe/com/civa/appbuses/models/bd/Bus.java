package pe.com.civa.appbuses.models.bd;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "bus")
public class Bus {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idbus;
    private Integer nroBus;
    private String placa;
    private Date fechaCreacion;
    private String caracteristicas;
    @ManyToOne
    @JoinColumn(name = "marca")
    private Marca marca;
    private boolean activo;
}
