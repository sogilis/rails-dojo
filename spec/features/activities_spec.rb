require "rails_helper"

RSpec.feature 'Time filling', type: :feature do
	scenario 'Page should display empty month when nothing is filled' do
		visit '/activities?month[y]=2016&month[m]=4'
	  expect(page).to have_css '.activity[data-empty]', count: 60
		expect(page).to have_css 'tr', count: 30
	end
	
	scenario 'Page should display previously filled activities' do
    Activity.create! day: Date.new(2016, 4, 3),
                     day_half: "am",
                     description: "Sogiboard"
	  visit '/activities?month[y]=2016&month[m]=4'
	  expect(page).to have_selector '.activity:not([data-empty])', text: 'Sogiboard'
	end
end

