require '/features/pages/login_page'

module LoginPageHelper
  def fill_login_form
    fill_in Login.email_address, :with => "Mocra"
    fill_in Login.password, :with => "12 345 678 901"
  end
end
World(LoginPageHelper)
