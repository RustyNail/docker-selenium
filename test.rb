require 'capybara/rspec'
require 'selenium-webdriver'
require 'yaml'

RSpec.describe 'Sample' do
  example do
    visit 'https://google.com'

    save_screenshot 'sample_screenshot.png'
  end
end

Dir[File.join(__dir__, './support/*.rb')].each {|f| require f }

