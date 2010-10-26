Given /^no user exists with an email of "(.*)"$/ do |email|
  assert_nil User.find_by_email(email)
end

Then /^I should be already signed in$/ do
  And %{I should see "Logout"}
end
