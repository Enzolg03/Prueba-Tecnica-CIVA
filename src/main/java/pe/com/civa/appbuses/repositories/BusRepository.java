package pe.com.civa.appbuses.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pe.com.civa.appbuses.models.bd.Bus;

@Repository
public interface BusRepository extends JpaRepository<Bus, Long> {
}
