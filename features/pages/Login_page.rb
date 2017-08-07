class Login < SitePrism::Page
  set_url "/users/sign_in"

  element :email_address_field, '#user_email'
  element :password_field, '#user_password'
  element :confirm_btn, 'input[type="submit"]'
  element :forgot_pass_btn, 'a[href="/users/password/new"]'
end
