package pe.com.civa.appbuses.models.dto;

import lombok.Builder;
import lombok.Data;

import java.util.Date;
@Builder
@Data
public class MensajeErrorDto {
    private Integer codigoEstado;
    private Date fechaError;
    private String mensaje;
    private String descripcion;
}
