require 'selenium-webdriver'
require_relative '../utils/spec_helper'
require_relative '../pages/arstechnica_homepage'
require_relative '../pages/arstechnica_searchpage'

describe 'Ars Technica Search tests' do

	before(:each) do
 		@arstechnica_homepage = ArsTechnicaHomePage.new(@driver)
 		@arstechnica_searchpage = ArsTechnicaSearchPage.new(@driver)
	end

	it 'Search a post in the news website' do
		text_to_search = 'Russia'
		@arstechnica_homepage.visit
		@arstechnica_homepage.header_search_click
		@arstechnica_homepage.enter_search_criteria(text_to_search) #Could be improved, send by parameter from the testfile/testrunner
		@arstechnica_homepage.hit_enter
		@arstechnica_searchpage.titles_sections_are_displayed?.should be true
		@arstechnica_searchpage.searched_title_is_present?(text_to_search).should be true
	end
end