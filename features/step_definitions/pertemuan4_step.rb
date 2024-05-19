Given('[page_object] saya akses halaman automationexercise.com') do
    #inisialiasi
    @landing_page = LandingPage.new

    #untuk buka pege(load page)
    @landing_page.load 
  end
  
  When('[page_object] saya click tombol sign in di homepage') do
    @landing_page.click_btn_login
  end
  
  Then('[page_object] saya beralih ke halaman login') do
    assert_current_path("https://automationexercise.com/login", wait: 5)
  end
  
  When('[page_object] saya entry username {string} di halaman login') do |username|
    @login_page = LoginPage.new
    @login_page.input_username(username)
  end
  
  When('[page_object] saya entry password {string} di halaman login') do |password|
    @login_page = LoginPage.new
    @login_page.input_password(password)
  end
  
  When('[page_object] saya click tombol login di halaman login') do
    @login_page = LoginPage.new
    @login_page.click_btn_login
  end
  
  Then('[page_object] saya berhasil login') do
    @dashboard_page = DashboardPage.new
    @dashboard_page.validate_page
  end

Then('[page_object] saya tidak berhasil login muncul error') do 
    @login_page.error_login
end
