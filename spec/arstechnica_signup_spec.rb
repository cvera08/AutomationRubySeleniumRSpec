require 'selenium-webdriver'
require_relative '../utils/spec_helper'
require_relative '../pages/arstechnica_homepage'
require_relative '../pages/arstechnica_signuppage'

describe 'Ars Technica Sign up tests' do

	before(:each) do
 		@arstechnica_homepage = ArsTechnicaHomePage.new(@driver)
 		@arstechnica_signuppage = ArsTechnicaSignupPage.new(@driver)
	end

	it 'Search a post in the news website' do
		@arstechnica_homepage.visit
		@arstechnica_homepage.sign_in_click
		@arstechnica_homepage.sign_up_click
		@arstechnica_signuppage.enter_email('invalid#email')
		@arstechnica_signuppage.register_click
		@arstechnica_signuppage.form_error_is_present('The e-mail address you entered is invalid').should be true
	end
end