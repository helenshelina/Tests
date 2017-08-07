require_relative '../pages/app.rb'


module LoginHelper
  def user_log_in(email, password)
    @app.login_page.email_address_field.set email
    @app.login_page.password_field.set password
    @app.login_page.confirm_btn.click
  end
end

module ForgotPasswordHelper
  def user_forgot_password(email)
    @app.forgotpass_page.email_address_field.set email
    @app.forgotpass_page.sendinstructions_btn.click
  end
end
World(LoginHelper, ForgotPasswordHelper)
