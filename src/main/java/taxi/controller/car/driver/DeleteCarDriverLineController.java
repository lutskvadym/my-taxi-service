package taxi.controller.car.driver;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.service.DriverService;

public class DeleteCarDriverLineController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Long carId = Long.parseLong(req.getParameter("ids").split(":")[0]);
        Long driverId = Long.parseLong(req.getParameter("ids").split(":")[1]);
        driverService.deleteCarDriverLine(carId, driverId);
        resp.sendRedirect(req.getContextPath() + "/cars/drivers");
    }
}
