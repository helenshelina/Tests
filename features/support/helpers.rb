require_relative '../pages/app.rb'


module LoginPageHelper
  def user_log_in(email, password)
    @app.login_page.email_address_field.set email
    @app.login_page.password_field.set password
    @app.login_page.login_btn.click
  end
end

module SignUpPageHelper
  def login_from_signup_page(email, password)
    @app.signup_page.email_address_field.set email
    @app.signup_page.password_field.set password
    @app.signup_page.signup_btn.click
  end
end

module ForgotPasswordHelper
  def user_forgot_password(email)
    @app.forgotpass_page.email_address_field.set email
    @app.forgotpass_page.sendinstructions_btn.click
  end
end
World(LoginPageHelper, SignUpPageHelper, ForgotPasswordHelper)
