package action.features;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.stripe.Stripe;
import com.stripe.model.PaymentIntent;

public class StripeTestAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String clientSecret;

	public String execute() throws Exception {
		Stripe.apiKey = "sk_test_51N3Z3yCPsLuw0tApfvMGtclPM24qp5ItBu2p0FUB1XZccfKnnw6lx7EH5eI7TMyKCQtHjl7Y7S1Wk0VqIxEaLDNd005mlJjl53";

		Map<String, Object> automaticPaymentMethods =
		  new HashMap<>();
		automaticPaymentMethods.put("enabled", true);
		Map<String, Object> params = new HashMap<>();
		params.put("amount", 10000);
		params.put("currency", "jpy");
		params.put(
		  "automatic_payment_methods",
		  automaticPaymentMethods
		);

		PaymentIntent paymentIntent = PaymentIntent.create(params);
		
		setClientSecret(paymentIntent.getClientSecret());
		
		return "success";
	}

	public String getClientSecret() {
		return clientSecret;
	}

	public void setClientSecret(String clientSecret) {
		this.clientSecret = clientSecret;
	}
	
	
	
}
