Given('I am on the homepage automationexercise.com') do
    visit"https://automationexercise.com"
  end
  
  When('I click sign in on the homepage') do
    find(:xpath, "//a[@href='/login']").click
  end
  
  When('I fill my credentials on the homepage') do
    # //*[@data-qa='login-email']
    find(:xpath, "//*[@data-qa='login-email']").set("wele.testing@gmail.com")
    find(:xpath, "//*[@data-qa='login-password']").set("abc123")
    find(:xpath, "//button[text()='Login']").click
    # find(:xpath, "//*[@data-qa='login-password']//following-sibling::button").click
  end
  
  Then('I should be logged in') do
    assert_current_path("https://automationexercise.com/", wait: 5)
    # ada button delete account
    find(:xpath, "//*[contains(text(), 'Delete Account')]").should be_visible
  end