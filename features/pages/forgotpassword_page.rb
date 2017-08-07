class ForgotPassword < SitePrism::Page
  set_url "/users/password/new"

  element :email_address_field, '#user_email'
  element :sendinstructions_btn, 'input[value="Send reset password instructions"]'
end
