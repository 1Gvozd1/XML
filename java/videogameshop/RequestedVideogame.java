package videogameshop;

import java.time.LocalDate;
import java.time.LocalTime;

public class RequestedVideogame {
    private String  requestedVideogameId;
    private LocalDate requestDate;
    private LocalTime requestTime;
    private int quantity;
    public RequestedVideogame(String  requestedVideogameId){
        this.requestedVideogameId = requestedVideogameId;
    }

    public LocalDate getRequestDate() {
        return requestDate;
    }

    public void setRequestDate(LocalDate requestDate) {
        this.requestDate = requestDate;
    }

    public LocalTime getRequestTime() {
        return requestTime;
    }

    public void setRequestTime(LocalTime requestTime) {
        this.requestTime = requestTime;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
