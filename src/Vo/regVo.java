package Vo;

public class regVo {
	private int regId;
	private String firstname;
	private String lastname;
/*	private String gender;
*/	private String confirmPassword;
	private loginVo loginVo;
	public int getRegId() {
		return regId;
	}
	public void setRegId(int regId) {
		this.regId = regId;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	/*public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}*/
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public loginVo getLoginVo() {
		return loginVo;
	}
	public void setLoginVo(loginVo loginVo) {
		this.loginVo = loginVo;
	}
	
	
	
	
}
