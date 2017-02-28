require 'selenium-webdriver'
require '../Amazon_Actions/site_actions.rb'

require 'rubygems'

class SiteObjects

@driver = Selenium::WebDriver.for :firefox
browser=site_actions.new("https://www.amazon.in")
@@login_username=@driver.find_element(:id,'ap_email')
@@login_pwd=@driver.find_element(:id,'ap_password')
@@signIn=@driver.find_element(:id,'signInSubmit')
@@submenu=@driver.find_element(:xpath, "//*[@id='nav-link-yourAccount']/span[2]/span")
@@signout=@driver.find_element(:xpath,"//*[@id='nav-item-signout']/span")

end