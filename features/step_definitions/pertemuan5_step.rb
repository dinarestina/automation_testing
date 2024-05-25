Given('saya berada di halaman google.com') do
    visit("https://google.com/")
  end
  
  When('saya mengetikkan keyword {string}') do |keyword|
    find(:xpath, "//textarea[@name='q']").set(keyword)
    find(:xpath, "//textarea[@name='q']").send_keys(:enter)
  end
  
  Then('saya berhasil mendapatkan hasil pencarian {string}') do |keyword|
    sleep 3
    expect(find(:xpath, "//textarea[@name='q']").text).to eq(keyword)
    expect(URI.parse(current_url)).to have_content("search?q=#{keyword}")
  end