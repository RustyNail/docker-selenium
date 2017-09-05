RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
      chrome_options: {
        args: %w[window-size=1600,800 headless disable-gpu no-sandbox user-agent=Mozilla/5.0\ (Macintosh;\ Intel\ Mac\ OS\ X\ 10.12;\ rv:54.0)\ Gecko/20100101\ Firefox/54.0]
      }
    )
  )
end

Capybara.configure do |capybara|
  capybara.default_driver = :selenium
  capybara.ignore_hidden_elements = false
end

