package pe.com.civa.appbuses.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import pe.com.civa.appbuses.models.dto.MensajeErrorDto;

import java.util.Date;

@RestControllerAdvice
public class ExceptionControllerHandler {
    @ExceptionHandler(ResourceNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public MensajeErrorDto ResourceNotFoundException(
            ResourceNotFoundException resourceNotFoundException,
            WebRequest request
    ){
        return MensajeErrorDto.builder()
                .codigoEstado(HttpStatus.NOT_FOUND.value())
                .fechaError(new Date())
                .mensaje(resourceNotFoundException.getMessage())
                .descripcion(request.getDescription(true))
                .build();
    }
}
