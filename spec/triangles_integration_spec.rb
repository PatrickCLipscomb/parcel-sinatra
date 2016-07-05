require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('determines what type of triangle, if any, that a user inputs') do
    visit('/')
    fill_in('side1', :with => 8)
    fill_in('side2', :with => 8)
    fill_in('side3', :with => 8)
    click_button('Submit')
    expect(page).to have_content("Triangle is an equilateral.")
  end
end
