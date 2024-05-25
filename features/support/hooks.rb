Before do |scenario|
    page.windows[0].maximize
  end
  
  After do |scenario|
    sleep 3
    take_screenshot
  end

  # ss scenario failed
  # After do |scenario|
  #   # sleep 3
  #   take_screenshot if scenario.failed?
  # end
  
#   Before('@test-login-123') do
#     puts "HOOKS BEFORE DIJALANKAN!"
#   end
  
#   After('@test-login') do
#     # puts "HOOKS AFTER TAGGED DIJALANKAN!"
#   end


  at_exit do
    generate_report
    # Kernel.exit(0)
  end