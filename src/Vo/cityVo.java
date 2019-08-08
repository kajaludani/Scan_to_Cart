package Vo;

public class cityVo {
	private int cityId;
	private String cityName;
	private String cityDiscription;
	private stateVo statevo;
	private countryVo countryVO;
	public int getCityId() {
		return cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getCityDiscription() {
		return cityDiscription;
	}
	public void setCityDiscription(String cityDiscription) {
		this.cityDiscription = cityDiscription;
	}
	public stateVo getStatevo() {
		return statevo;
	}
	public void setStatevo(stateVo statevo) {
		this.statevo = statevo;
	}
	public countryVo getCountryVO() {
		return countryVO;
	}
	public void setCountryVO(countryVo countryVO) {
		this.countryVO = countryVO;
	}
	
	

}
