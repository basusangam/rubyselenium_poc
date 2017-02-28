require 'selenium-webdriver'
require 'rubygems'


class SiteElement

  def initialize(url)
    @driver = Selenium::WebDriver.for :firefox
@driver.navigate.to url
 #driver.get "https://www.amazon.in/"
  end
  def login_username()
    return @driver.find_element(:id,'ap_email')
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