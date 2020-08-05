require 'watir'
require 'webdrivers'

Before do
  is_headless = ENV['EXECUTION'] == 'headless' ? true : false
  args = %w(
    --disable-dev-shm-usage
    --disable-extensions
    --disable-gpu
    --no-proxy-server
    --no-sandbox
    --window-size=1366,768
  )
  @browser = Watir::Browser.new(:chrome, headless: is_headless, options: { args: args })
  @page = lambda { |b, klass| klass.new b }.curry.(@browser)
end
