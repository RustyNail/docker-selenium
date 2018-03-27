require 'capybara/rspec'
require 'selenium-webdriver'

RSpec.describe 'Visiting google.com' do
  example do
    visit 'https://google.com'
    expect(page).to have_css('[name="q"]') & have_css('[name="btnK"]')
  end
end

Dir[File.join(__dir__, './support/*.rb')].each {|f| require f }
