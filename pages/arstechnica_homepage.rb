class ArsTechnicaHomePage

	HEADER_SEARCH_BUTTON = { css: '#header-search a.dropdown-toggle.search-toggle'}
	HEADER_SEARCH_INPUT = { id: 'hdr_search_input'}
	SIGN_IN_LABEL = { id: 'header-account'}
	SIGN_UP_BUTTON = { css: 'a.signup-btn.button.button-wide'}

	def initialize(driver)
		@driver = driver
	end

	def visit
		@driver.get "https://arstechnica.com/" #We may define it as a base url in a separated file with different environments (QA, DEV, STG, PROD, etc)
	end

	def header_search_click
		@driver.find_element(HEADER_SEARCH_BUTTON).click
	end

	def enter_search_criteria(search)
		@driver.find_element(HEADER_SEARCH_INPUT).send_keys(search)
	end

	def hit_enter #need to move this method to utils #It can be improved with CHAIN Pattern as well (it returns the new PageObject to be re-used in the testfile)
		@driver.find_element(HEADER_SEARCH_INPUT).send_keys(:enter)
	end

	def sign_in_click
		@driver.find_element(SIGN_IN_LABEL).click
	end

	def sign_up_click
		@driver.find_element(SIGN_UP_BUTTON).click
	end

end