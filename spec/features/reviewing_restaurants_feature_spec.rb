require 'spec_helper'

describe 'reviewing' do 

	before do
		Restaurant.create(name: 'McDonalds')
	end

	it 'can add a review to a restaurant' do

		visit '/restaurants'
		click_link 'McDonalds'
		click_link 'Add a review'

		fill_in 'Name', with: 'Anath'
		fill_in 'Review', with: 'The food was awful'
		fill_in 'Rating', with: '2'
		click_button 'submit'

		expect(page).to have_content 'The food was awful'
	end
	
end