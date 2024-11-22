package pe.com.civa.appbuses.services;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pe.com.civa.appbuses.models.bd.Bus;
import pe.com.civa.appbuses.repositories.BusRepository;

import java.util.List;
import java.util.Optional;

@AllArgsConstructor
@Service
public class BusService implements IBusService{
    private BusRepository busRepository;
    @Override
    public List<Bus> listarBusses() {
        return busRepository.findAll();
    }

    @Override
    public Optional<Bus> buscarBusXId(Long id) {
        Optional<Bus> bus = busRepository.findById(id);
        if(bus.isEmpty()){
            return Optional.empty();
        }
        return bus;
    }
}
