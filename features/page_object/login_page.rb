class LoginPage < SitePrism::Page 
    # set_url ("https://automationexercise.com/")

    element :set_username, :xpath, "//*[@data-qa='login-email']"
    element :set_password, :xpath, "//*[@data-qa='login-password']"
    element :btn_login, :xpath, "//*[@data-qa='login-password']//following-sibling::button"
    # element :btn_login, :xpath, "//button[text()='Login']"
    element :err_message, :xpath, "//*[text()='Your email or password is incorrect!']"

    def input_username(username)
      set_username.set(username)
    end

    def input_password(password)
      set_password.set(password)
    end

    def click_btn_login
        btn_login.click
    end 

    def error_login
        raise "label login not visible" unless has_err_message?(visible: true)
    end

    
end