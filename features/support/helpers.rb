require_relative '../pages/login_page.rb'

module LoginPageHelper
  def fill_login_form

    @login_page.email_address.set 'helenshelina@gmail.com'
    @login_page.password.set '278948592'

  end
end
World(LoginPageHelper)
