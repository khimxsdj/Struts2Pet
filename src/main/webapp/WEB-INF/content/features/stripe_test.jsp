<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://js.stripe.com/v3/"></script>
<script src="https://kit.fontawesome.com/af62b3d87b.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body class="">
<main class="m-4 d-flex justify-content-center align-items-center">
	<button type="button" class="btn btn-sm btn-primary"
		id="payment-request-button">
		<span class="default"> <i class="fas fa-lg fa-credit-card"></i>
			Pay Now
		</span> <span class="applepay ml-4 mr-4" style="display: none"> <span
			class="fa-lg"> <i class="fab fa-apple-pay"
				data-fa-transform="grow-12"></i>
		</span> <span class="sr-only">Purchase with Apple Pay</span>
		</span>
	</button>
</main>
</body>
<script type="text/javascript">
$(document).ready(function() {
	const stripe = Stripe('pk_test_51N3Z3yCPsLuw0tApxwJkU3E4bzbyPagOCpzWgAYmTQNq9RUYlcpzOyXqlOpsUZtZUzpGo5yXF6N86dtLDZiiZ17800QGg4GV5K', {
		apiVersion: "2022-11-15"
	});
    const paymentRequest = stripe.paymentRequest({
        country: 'US',
        currency: 'usd',
        total: {
            label: 'Tra tien di',
            amount: 10000,
        },
        requestPayerName: true,
        requestPayerEmail: true,
    });
    paymentRequest.canMakePayment().then((result) => {
    	if (result) {
    		let button = document.getElementById('payment-request-button');
            if (result) {
                button.addEventListener('click', paymentRequest.show);
            }
    	}
    	else {
    		document.getElementById("payment-request-button").style.display = "none";
    	}
    });
    paymentRequest.on('paymentmethod', async (ev) => {
    	const clientSecret = "<s:property value='clientSecret'></s:property>"
    	  // Confirm the PaymentIntent without handling potential next actions (yet).
    	  const {paymentIntent, error: confirmError} = await stripe.confirmCardPayment(
    	    clientSecret,
    	    {payment_method: ev.paymentMethod.id},
    	    {handleActions: false}
    	  );

    	  if (confirmError) {
    	    // Report to the browser that the payment failed, prompting it to
    	    // re-show the payment interface, or show an error message and close
    	    // the payment interface.
    	    ev.complete('fail');
    	  } else {
    	    // Report to the browser that the confirmation was successful, prompting
    	    // it to close the browser payment method collection interface.
    	    ev.complete('success');
    	    // Check if the PaymentIntent requires any actions and if so let Stripe.js
    	    // handle the flow. If using an API version older than "2019-02-11"
    	    // instead check for: `paymentIntent.status === "requires_source_action"`.
    	    if (paymentIntent.status === "requires_action") {
    	      // Let Stripe.js handle the rest of the payment flow.
    	      const {error} = await stripe.confirmCardPayment(clientSecret);
    	      if (error) {
    	        // The payment failed -- ask your customer for a new payment method.
    	      } else {
    	        // The payment has succeeded.
    	      }
    	    } else {
    	      // The payment has succeeded.
    	    }
    	  }
    	});
})
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>