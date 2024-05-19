class DashboardPage < SitePrism::Page 
    

    element :btn_delete_account, :xpath, "//*[contains(text(), 'Delete Account')]"
    # element :btn_logout_account
    element :btn_logout, :xpath, "//*[contains(text(), 'Logout')]"

  def validate_page
    # btn_delete_account.should be_visible
    # btn_logout.should be_visible
    raise "Delete Account button is not visible" unless has_btn_delete_account?(visible: true)
    raise "Logout button is not visible" unless has_btn_logout?(visible: true)
  end


end
