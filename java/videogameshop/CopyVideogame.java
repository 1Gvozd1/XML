package videogameshop;

import java.time.LocalDate;
import java.time.LocalTime;

public class CopyVideogame {
    private String copyVideoGameId;
    private LocalDate saleDate;
    private LocalTime saleTime;
    private String status = "На складе";
    public CopyVideogame(String copyVideoGameId){
        this.copyVideoGameId = copyVideoGameId;
    }
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDate getSaleDate() {
        return saleDate;
    }
        public void setSaleDate (LocalDate saleDate){
        if(status.equals("Продана")){
            this.saleDate = saleDate;
        }

    }

    public LocalTime getSaleTime() {
        return saleTime;
    }

    public void setSaleTime(LocalTime saleTime) {
        if(status.equals("Продана")) {
            this.saleTime = saleTime;
        }
    }


}
