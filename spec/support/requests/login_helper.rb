def log_in!(user = nil)
  user = Factory(:user) if user.nil?
  visit '/'
  within('#login') do
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on 'Login'
  end
end
