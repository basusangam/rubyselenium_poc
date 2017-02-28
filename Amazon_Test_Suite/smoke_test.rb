#Dir["/path/to/directory/*.rb"].each {|file| load file }
require '../Amazon_Actions/site_actions'
require '../Amazon_OR/site_objects'


    #define new browser
browser=site_actions.new("https://www.amazon.in")

   #click on submenu 
browser.sub_menu.click
wait = Selenium::WebDriver::Wait.new(:timeout => 100) # seconds
wait.until {browser.login_username }

    #input user name
browser.login_username.send_keys('basavaraj.sangam@gmail.com')

    #input password
browser.login_password.send_keys('google85')

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