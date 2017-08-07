Feature: Login page regression tests

  Background:
    Given Annalisa is a registered user

   Scenario: user is able to log in into app with valid credentials from Sign up page
    Given Sign up page is opened
    When Annalisa fills form with valid credentials
    Then she should see a user name in the top of the page

   Scenario Outline: user cannot login with invalid credentials from Sign up page
    Given Sign up page is opened
    And Annalisa provides <email> and <password>
    Then Annalisa should not be logged in
    And should see an error message
    Examples:
      |email              |password  |
      |k105674@mvrht.net  |fgrfdfere |

  Scenario: user is able to log in into app with valid credentials from Login page
    Given Login page is opened
    When Annalisa logs in with valid credentials
    Then she should see a user name in the top of the page

   Scenario Outline: user cannot login with invalid credentials
     When Login page is opened
     And Annalisa provides <email> and <password>
     Then Annalisa should not be logged in
     And should see an error message
     Examples:
       |email              |password  |
       |k105674@mvrht.net  |fgrfdfere |
       |k105891@mvrht.net  |mvrhtmvrht|

   Scenario: user is able to get new password in case he forgot it
     Given Login page is opened
     When Annalisa clicks forgot password
     And fills and confirm the form
     Then Annalisa sees a success message

   Scenario: unregistered user is not able to use 'forgot password'
     Given Janie is not registered user
     And Login page is opened
     When Janie clicks forgot password
     And fills and confirm the form
     Then Janie sees an error message
