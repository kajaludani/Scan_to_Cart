package Vo;

public class stateVo {
	private int stateId;
	private String stateName;
	private String stateDiscription;
	private String stateStatus;
	private countryVo countryvo;
	public int getStateId() {
		return stateId;
	}
	public void setStateId(int stateId) {
		this.stateId = stateId;
	}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	public String getStateDiscription() {
		return stateDiscription;
	}
	public void setStateDiscription(String stateDiscription) {
		this.stateDiscription = stateDiscription;
	}
	public String getStateStatus() {
		return stateStatus;
	}
	public void setStateStatus(String stateStatus) {
		this.stateStatus = stateStatus;
	}
	public countryVo getCountryvo() {
		return countryvo;
	}
	public void setCountryvo(countryVo countryvo) {
		this.countryvo = countryvo;
	}
	
	
}
