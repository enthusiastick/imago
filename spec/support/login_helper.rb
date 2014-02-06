module LoginHelper
  def login(user)
    # user.confirmed_at = Time.now
    user.save
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Sign in'
  end
end
