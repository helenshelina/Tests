class SignUp < SitePrism::Page
  set_url "/users/sign_up"

  element :email_address_field, '#user_email'
  element :password_field, '#user_password'
  element :confirm_btn, 'input[type="submit"]'
end
