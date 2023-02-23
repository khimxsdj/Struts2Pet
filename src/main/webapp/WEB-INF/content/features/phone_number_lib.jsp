<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phone Number Library</title>

</head>
<style>
.gray-background {
	background-color: #f9f9f9;
}
</style>
<body>
	<tiles:insertDefinition name="classic">
		<tiles:putAttribute name="jsByPage">
			<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
		</tiles:putAttribute>
		<tiles:putAttribute name="main">
			<div class="p-4 gray-background" style="height: 500px;">
				<h4 class="fst-italic">This feature validate when typing phone number with a specific country<br> using phonenumberlib</h4>
				<div class="card shadow w-25 mx-auto">
					<div class="card-body">
						<form action="phone-number-validate" >
							<div>
								<label class="form-label" for="country">Select country</label> <select required="required"
									 name="code" id="country" class="form-control">
										<option value="" hidden='true'>please select country</option>
									</select>
							</div>
							<div class="my-4">
								<label class="form-label" for="phonenumber">Phone number</label>
								<input name="phoneNumber" value="${phoneNumber}" class="form-control" type="text" id="phonenumber"
									placeholder="type your phone number" required="required">
							</div>
							<s:actionmessage/>
							<button class="btn btn-outline-secondary mt-4">Test</button>
						</form>
					</div>
				</div>
			</div>

		</tiles:putAttribute>
	</tiles:insertDefinition>
	<script>
	var myQuery = `{
		  countries {
		    name
		    phone
		  }
	}`
	var countrySelect = $("#country");
	$.ajax({
		url: "https://countries.trevorblades.com/",
		method: "POST",
		contentType: "application/json",
		data: JSON.stringify({
			query: myQuery
		}),
		success: function (result) {
			console.log(result);
			$.each(result.data.countries, function(i, country) {
				countrySelect.append($("<option></option>").attr("value", country.phone).attr("name", "code").text(country.name));
			})
		}
	})
</script>
</body>
</html>