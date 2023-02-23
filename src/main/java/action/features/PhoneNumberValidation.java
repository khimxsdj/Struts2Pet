package action.features;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.components.ActionMessage;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.opensymphony.xwork2.ActionSupport;

public class PhoneNumberValidation extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String phoneNumber;
	
	private String code;
	

	public String getPhoneNumber() {
		return phoneNumber;
	}



	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}



	public String getCode() {
		return code;
	}



	public void setCode(String code) {
		this.code = code;
	}



	public String execute() throws NumberParseException {
		PhoneNumberUtil phoneUtil = PhoneNumberUtil.getInstance();
		PhoneNumber phone = new PhoneNumber();
		phone.setNationalNumber(Long.parseLong(phoneNumber));
		phone.setCountryCode(Integer.parseInt(code));
		if (phoneUtil.isValidNumber(phone)) {
			addActionMessage("valid");
		}
		else {
			addActionMessage("invalid");
		}
		return SUCCESS;
	}
}
