class Login < SitePrism::Page
  set_url "/users/sign_in"

  element :email_address, '#user_email' #"input[name='user[email]']"
  element :password, '#user_password' #"input[name='user[password]']"
  element :login_btn, "#log-in-submit-button"
end
