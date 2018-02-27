require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
ßß
describe('add a word and definition', {:type => :feature}) do
  it('saves the input then returns the word') do
    visit('/')
    fill_in('word', :with => 'hoax')
    fill_in('definition', :with => 'to trick into believing or accepting as genuine something false and often preposterous')
    click_button('Save')
    expect(page).to have_content('hoax')
  end
end
