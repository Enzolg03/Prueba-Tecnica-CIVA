package pe.com.civa.appbuses.controllers;

import lombok.AllArgsConstructor;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pe.com.civa.appbuses.exception.ResourceNotFoundException;
import pe.com.civa.appbuses.models.bd.Bus;
import pe.com.civa.appbuses.services.IBusService;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
@CrossOrigin(origins = "http://localhost:3000/")
@AllArgsConstructor
@RestController
@RequestMapping("api/v1/buses")
public class BusController {
    private IBusService iBusService;

    @GetMapping("")
    public ResponseEntity<List<Bus>> listarBuses(){
        List<Bus> buses = new ArrayList<>();
        buses = iBusService.listarBusses();
        if(buses.isEmpty()){
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(buses, HttpStatus.OK);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Bus> buscarBusXId(@PathVariable Long id){
        Bus bus = iBusService.buscarBusXId(id).orElseThrow(
                () -> new ResourceNotFoundException("El bus con el id " + id + " no existe")
        );
        return new ResponseEntity<>(bus, HttpStatus.OK);
    }
}
