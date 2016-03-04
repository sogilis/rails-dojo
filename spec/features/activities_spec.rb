require "rails_helper"

RSpec.feature 'Time filling', type: :feature do
	scenario 'Page should display empty month when nothing is filled' do
		visit '/activities?month[y]=2016&month[m]=4'
		expect(page).to have_css 'tr', count: 30
	end
end

