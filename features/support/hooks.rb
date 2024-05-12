Before do |scenario|
    page.windows[0].maximize
  end
  
  After do |scenario|
    sleep 10
  end
  
  Before('@test-login-123') do
    puts "HOOKS BEFORE DIJALANKAN!"
  end
  
  After('@test-login') do
    # puts "HOOKS AFTER TAGGED DIJALANKAN!"
  end