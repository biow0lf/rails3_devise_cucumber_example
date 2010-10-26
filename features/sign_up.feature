Feature: Sign up
  In order to get access to protected sections of the site
  A user
  Should be able to sign up

    Scenario: User signs up with valid data
      Given I am not logged in
      When I go to the sign up page
      And I fill in "Email" with "email@person.com"
      And I fill in "Password" with "monkey"
      And I fill in "Password confirmation" with "monkey"
      And I press "Sign up"
      Then I should see "You have signed up successfully. If enabled, a confirmation was sent to your e-mail."
