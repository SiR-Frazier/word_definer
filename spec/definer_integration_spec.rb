require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('add your own word and definition', {:type => :feature}) do
  it('saves the user input and returns the word') do
    visit('/')
    fill_in('word', :with => 'harbor')
    fill_in('definition', :with => 'a place to give protection')
    click_button('save')
    expect(page).to have_content('harbor')
  end
end
