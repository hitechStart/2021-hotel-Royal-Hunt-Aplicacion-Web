package logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import persistencia.ControladoraPersistencia;

public class ControladoraHabitacion {

    ControladoraPersistencia control = new ControladoraPersistencia();

    public void crearHabitacion(String idHabitacion, String piso, String tematica,
            String tipo, String disponibilidad, String precioNoche) throws Exception {

        Habitacion habitacion = new Habitacion();

        int identificacion = Integer.parseInt(idHabitacion);
        habitacion.setIdHabitacion(identificacion);
        habitacion.setPiso(Integer.parseInt(piso));
        habitacion.setTipo(tipo);
        habitacion.setTematica(tematica);
        habitacion.setPrecioNoche(Double.valueOf(precioNoche));

        control.crearHabitacion(habitacion);
    }

    public double calculaMontoTotal(String idHabitacion, String piso, String tematica, String tipo,
            String numPersonas, String check_in, String check_out) throws ParseException {

        List<Habitacion> habitaciones = control.traerHabitaciones();
        int numero = Integer.parseInt(idHabitacion);
        int floor = Integer.parseInt(piso);
        int numberPerson = Integer.parseInt(numPersonas);
        Reserva reserva = new Reserva();

        /*Convertir de String a Date*/
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date date;

        date = formatter.parse(check_in);
        long fechaInicialMs = date.getTime();
        reserva.setCheck_in(date);

        date = formatter.parse(check_out);
        long fechaFinalMs = date.getTime();
        reserva.setCheck_out(date);

        /*Calcula Cantidad de dias*/
        long diferencia = fechaFinalMs - fechaInicialMs;
        double dias = Math.floor(diferencia / (1000 * 60 * 60 * 24));

        reserva.setCantDias(dias);

        /*Calcula el monto total*/
        for (Habitacion room : habitaciones) {

            /*Si cumple los requisitos calcula el monto total*/
            if (numero == room.getIdHabitacion()) {

                switch (tipo) {
                    case "SINGLE":
                        if (numberPerson == 1) {
                            return (reserva.getCantDias() * numberPerson * room.getPrecioNoche());
                        }
                        break;

                    case "DOBLE":
                        if (numberPerson <= 2) {
                            return (reserva.getCantDias() * numberPerson * room.getPrecioNoche());
                        }
                        break;
                    case "TRIPLE":
                        if (numberPerson <= 3) {
                            return (reserva.getCantDias() * numberPerson * room.getPrecioNoche());
                        }
                        break;
                    case "MULTIPLE":
                        return (reserva.getCantDias() * numberPerson * room.getPrecioNoche());

                    default:
                        return 0;

                }
            }
        }
        return 0;
    }

}
