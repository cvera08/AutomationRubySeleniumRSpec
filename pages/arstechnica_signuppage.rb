class ArsTechnicaSignupPage

	EMAIL_ADDRESS_INPUT = { id: "email"}
	REGISTER_BUTTON = { css: "input[type=submit][value=Register]"}
	ERRORS_LABEL = { css: "ul.form-errors li>a"}


	def initialize(driver)
		@driver = driver
	end

	def enter_email(email)
		@driver.find_element(EMAIL_ADDRESS_INPUT).send_keys(email)
	end

	def register_click
		@driver.find_element(REGISTER_BUTTON).click
	end

	def form_error_is_present(error)
		error_is_present = false
		error_elements = @driver.find_elements(ERRORS_LABEL)
		
		error_elements.each do |err|
 			if err.text.include? error
 				error_is_present = true
 				break
 			end
		end
		return error_is_present
	end


end