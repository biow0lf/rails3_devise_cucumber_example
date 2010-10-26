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

    Scenario: User signs up with invalid email
      Given I am not logged in
      When I go to the sign up page
      And I fill in "Email" with "invalidemail"
      And I fill in "Password" with "monkey"
      And I fill in "Password confirmation" with "monkey"
      And I press "Sign up"
      Then I should see "Email is invalid"

    Scenario: User signs up without password
      Given I am not logged in
      When I go to the sign up page
      And I fill in "Email" with "email@person.com"
      And I fill in "Password" with ""
      And I fill in "Password confirmation" with "monkey"
      And I press "Sign up"
      Then I should see "Password can't be blank"

    Scenario: User signs up without password confirmation
      Given I am not logged in
      When I go to the sign up page
      And I fill in "Email" with "email@person.com"
      And I fill in "Password" with "monkey"
      And I fill in "Password confirmation" with ""
      And I press "Sign up"
      Then I should see "Password doesn't match confirmation"

    Scenario: User signs up with password and password confirmation that doesn't match
      Given I am not logged in
      When I go to the sign up page
      And I fill in "Email" with "email@person.com"
      And I fill in "Password" with "monkey"
      And I fill in "Password confirmation" with "monkey1"
      And I press "Sign up"
      Then I should see "Password doesn't match confirmation"

