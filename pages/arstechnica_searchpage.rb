class ArsTechnicaSearchPage

	HEADER_TITLE_RESULT_TEXT = { css: "div.gsc-webResult.gsc-result a.gs-title>b"}

	def initialize(driver)
		@driver = driver
	end

	def titles_sections_are_displayed? #We can improve this to "def is_displayed? (locator)" in an utils folder to be re-used by different classes
		@driver.find_element(HEADER_TITLE_RESULT_TEXT).displayed?
	end

	def searched_title_is_present? (search_text)
		@driver.find_element(HEADER_TITLE_RESULT_TEXT).text.include? search_text
	end


end