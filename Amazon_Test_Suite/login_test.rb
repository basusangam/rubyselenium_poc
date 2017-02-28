require_relative '../Amazon_OR/site_element'
require_relative '../Amazon_Exl_opr/SpreadsheetOpr'

    #define new browser
browser=SiteElement.new("https://www.amazon.in")

   #click on submenu 
browser.sub_menu.click
wait = Selenium::WebDriver::Wait.new(:timeout => 100) # seconds
wait.until {browser.login_username }

    #input user name
browser.login_username.send_keys(readsheet(0,1,0))

    #input password
browser.login_password.send_keys(readsheet(0,1,1))

    #click on submit button
browser.submit_button.click

    #wait until the Logout link displays, timeout in 10 seconds
wait = Selenium::WebDriver::Wait.new(:timeout => 1000) # seconds
wait.until {browser.sub_menu.displayed? }

    #click on submenu
browser.sub_menu.click

    #click on logout button
browser.logout_link.click
    #Close the browser	
browser.close_browser