package pe.com.civa.appbuses.services;

import pe.com.civa.appbuses.models.bd.Bus;

import java.util.List;
import java.util.Optional;

public interface IBusService {
    List<Bus> listarBusses();
    Optional<Bus> buscarBusXId(Long id);
}
