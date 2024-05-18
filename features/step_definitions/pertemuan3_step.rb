Given('saya akses halaman automationexercise.com') do
    visit "https://automationexercise.com/"
  end
  
  When('saya click tombol sign in di homepage') do
    find(:xpath, "//a[@href='/login']").click
  end
  
  Then('saya beralih ke halaman login') do
    assert_current_path("https://automationexercise.com/login", wait: 5)
  end

  When('saya entry username {string} di halaman login') do |username|
    find(:xpath, "//*[@data-qa='login-email']").set(username)
  end
  
  When('saya entry password {string} di halaman login') do |password|
    find(:xpath, "//*[@data-qa='login-password']").set(password)
  end
  
  When('saya entry username di halaman login') do
    find(:xpath, "//*[@data-qa='login-email']").set("wele.testing@gmail.com")
  end
  
  When('saya entry password di halaman login') do
    find(:xpath, "//*[@data-qa='login-password']").set("abc123")
  end
  
  When('saya click tombol login di halaman login') do
    find(:xpath, "//*[@data-qa='login-password']//following-sibling::button").click
  end
  
  Then('saya berhasil login') do
     # url harus https://automationexercise.com/
     assert_current_path("https://automationexercise.com/", wait: 5)
     # ada button delete account
     find(:xpath, "//*[contains(text(), 'Delete Account')]").should be_visible
  end

Given('saya memiliki data sebagai berikut:') do |table|
  $listDataUser = table.hashes
end

When('saya entry password di halaman login berdasarkan data di atas') do 
  find(:xpath, "//*[@data-qa='login-password']").set($listDataUser[1]['password'])
end

When('saya entry username di halaman login berdasarkan data di atas') do 
  find(:xpath, "//*[@data-qa='login-email']").set($listDataUser[1]['username'])
end





