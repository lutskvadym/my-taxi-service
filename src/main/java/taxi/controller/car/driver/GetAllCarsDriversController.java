package taxi.controller.car.driver;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.service.DriverService;

public class GetAllCarsDriversController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<String> carsDrivers = driverService.getAllCarsDrivers();
        req.setAttribute("carsdrivers", carsDrivers);
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/all.jsp").forward(req, resp);
    }

}
