require '../Amazon_OR/site_objects.rb'
require 'selenium-webdriver'
require 'rubygems'


class SiteActions

  def initialize(url)
 @driver = Selenium::WebDriver.for :firefox
@driver.navigate.to url
  end
  def login_username()
    return @@login_username
  end
  def login_password()
    return @driver.find_element(:id,'ap_password')
  end
  def submit_button()
    return @driver.find_element(:id,'signInSubmit')
  end
  def sub_menu()
    return @driver.find_element(:xpath, "//*[@id='nav-link-yourAccount']/span[2]/span")
  end	
  def logout_link()
    @driver.find_element(:xpath,"//*[@id='nav-item-signout']/span")
  end
  def close_browser()
    @driver.quit
  end
end