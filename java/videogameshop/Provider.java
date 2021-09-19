package videogameshop;

public class Provider {
    private String  providerId;
    private String fullName;
    private String productPrice;
    private String productPacking;
    private String workExperience;
    private String location;
    private String email;
    private String graphicsCompliance;
    private String costLevel;
    public Provider(String providerId , String fullName){
        this.providerId = providerId;
        this.fullName = fullName;
    }

    public String getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(String productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductPacking() {
        return productPacking;
    }

    public void setProductPacking(String productPacking) {
        this.productPacking = productPacking;
    }

    public String getWorkExperience() {
        return workExperience;
    }

    public void setWorkExperience(String workExperience) {
        this.workExperience = workExperience;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGraphicsCompliance() {
        return graphicsCompliance;
    }

    public void setGraphicsCompliance(String graphicsCompliance) {
        this.graphicsCompliance = graphicsCompliance;
    }

    public String getCostLevel() {
        return costLevel;
    }

    public void setCostLevel(String costLevel) {
        this.costLevel = costLevel;
    }
}
