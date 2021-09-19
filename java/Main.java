import videogameshop.*;

public class Main {
    public static void main(String[] args) {
        Videogame videogame1 = new Videogame("312312","Portal");
        CopyVideogame copyVideogame1 = new CopyVideogame("3123");
        Provider provider1 = new Provider("31233", "Иванов Иван Иванович");
        Review review1 = new Review("31", "Степанов Михаил Геннадиевич");
        RequestedVideogame requestedVideogame1 = new RequestedVideogame("12345");
        videogame1.setGenre("Головоломка");
        System.out.println(videogame1.getGenre());
    }
}
