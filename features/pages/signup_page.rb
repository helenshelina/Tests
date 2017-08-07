class SignUp < SitePrism::Page
  set_url "/users/sign_up"

  element :email_address_field, '#user_email'
  element :password_field, '#user_password'
  element :signup_btn, "#sign-up"
end
