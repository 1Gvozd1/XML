package videogameshop;

public class Review {
    private String  reviewId;
    private String clientFullname;
    private String assessment;
    private String reviewText;
    public Review(String  reviewId, String clientFullname){
        this.reviewId = reviewId;
        this.clientFullname = clientFullname;
    }

    public String getAssessment() {
        return assessment;
    }

    public void setAssessment(String assessment) {
        this.assessment = assessment;
    }

    public String getReviewText() {
        return reviewText;
    }

    public void setReviewText(String reviewText) {
        this.reviewText = reviewText;
    }
}
