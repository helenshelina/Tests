Given(/^(.+) is (.+) user$/) do |user, registered|
  if registered =='a registered'
    @user_email = 'k105674@mvrht.net'
    @user_password = 'mvrhtmvrht'
    @user_name = 'K105674 Mvrht'
  else
    @user_email = 'k105891@mvrht.net'
  end
end

Given(/^Login page is opened$/) do
  @app.login_page.load
end

When(/^Annalisa logs in with valid credentials$/) do
  user_log_in(@user_email , @user_password)
end

Given(/^Sign up page is opened$/) do
  @app.signup_page.load
end

When(/^Annalisa fills form with valid credentials$/) do
  login_from_signup_page(@user_email , @user_password)
end

Then(/^she should see a user name in the top of the page$/) do
    expect(page).to have_content @user_name
end

When(/^Annalisa tries to login$/) do
  @app.login_page.load
end

When(/^provides (.+) and (.+)$/) do |email, password|
  user_log_in(email, password)
end

Then(/^Annalisa should not be logged in$/) do
    expect(@app.login_page).to_not have_content @user_name
end

Then(/^should see an error message$/) do
  expect(@app.login_page).to have_content 'Incorrect email/password'
end

When(/^(.+) clicks forgot password$/) do |user|
  click_link 'Forgot your password?'
  expect(@app.forgotpass_page).to have_content 'Forgot your password?'
end

When(/^fills and confirm the form$/) do
  user_forgot_password(@user_email)
end

Then(/^(.+) sees a success message$/) do |user|
  expect(@app.forgotpass_page).to have_content 'You will receive an email with instructions about how to reset your password in a few minutes.'
end

Then(/^(.+) sees an error message$/) do |user|
  expect(@app.forgotpass_page).to have_content 'Oops, something went wrong!'
end
