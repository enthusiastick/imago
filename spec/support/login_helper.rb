module LoginHelper
  def login(user)
    # user.confirmed_at = Time.now
    user.save
    visit '/'
    click_on 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Sign in'
  end
end
