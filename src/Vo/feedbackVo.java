package Vo;

public class feedbackVo {
	
	int feedbackId;
	String feedbackTitle;
	String feedbackRatings;
	String feedbackDate;
	String feedbackTime;
	String feedbackDescription;
	private loginVo UserId;
	
	public int getFeedbackId() {
		return feedbackId;
	}
	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}
	public String getFeedbackTitle() {
		return feedbackTitle;
	}
	public void setFeedbackTitle(String feedbackTitle) {
		this.feedbackTitle = feedbackTitle;
	}
	public String getFeedbackRatings() {
		return feedbackRatings;
	}
	public void setFeedbackRatings(String feedbackRatings) {
		this.feedbackRatings = feedbackRatings;
	}
	public String getFeedbackDate() {
		return feedbackDate;
	}
	public void setFeedbackDate(String feedbackDate) {
		this.feedbackDate = feedbackDate;
	}
	public String getFeedbackTime() {
		return feedbackTime;
	}
	public void setFeedbackTime(String feedbackTime) {
		this.feedbackTime = feedbackTime;
	}
	public loginVo getUserId() {
		return UserId;
	}
	public void setUserId(loginVo userId) {
		UserId = userId;
	}
	public String getFeedbackDescription() {
		return feedbackDescription;
	}
	public void setFeedbackDescription(String feedbackDescription) {
		this.feedbackDescription = feedbackDescription;
	}
	
	

}
