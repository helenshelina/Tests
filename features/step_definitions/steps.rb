Given(/^user Annalisa is a registered user$/) do
end

Given(/^Log in is opened$/) do
  #visit '/users/sign_in'
  @login_page = Login.new
  @login_page.load
end

When(/^Annalisa fills login form with valid credentials$/) do
  @login_page.email_address.set 'helenshelina@gmail.com'
  @login_page.password.set '278948592'

end

When(/^Annalisa fills form with valid credentials$/) do
  fill_login_form
  # fill_in 'Email', with: 'helenshelina@gmail.com'
  # fill_in 'Password', with: '278948592'
end

When(/^clicks Log in button$/) do
   within ('.signin-form-container') do
     click_on 'Log in'
   end
  sleep 3
end

Then(/^Annalisa should see a user name in the top of the page$/) do
    expect(page).to have_content 'Helen Shelina'
end

Given(/^Sign up is opened$/) do
visit '/users/sign_up'
end

When(/^clicks Sign up with Email button$/) do
  click_on 'Sign up with Email'
end

When(/^Annalisa tries to login$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^provides valid and fgrfdfere$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^Annalisa should not be logged in$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^should see an error message$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^provides rgrgre@gre\.ge and valid$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^provides fgdfg@fgfd\.df and dfdfsdfs$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^Login page is opened$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^Annalisa clicks forgot password$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^fills and confirm the form$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^Annalisa sees a success message$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^Janie is not registered$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^Janie clicks forgot password$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^Janie sees an error message$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
