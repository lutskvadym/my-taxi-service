package taxi.dao;

import java.util.List;
import java.util.Optional;
import taxi.model.Driver;

public interface DriverDao extends GenericDao<Driver> {
    Optional<Driver> findByLogin(String login);

    List<String> getAllCarsDrivers();

    boolean deleteCarDriverLine(Long carId, Long driverId);
}
