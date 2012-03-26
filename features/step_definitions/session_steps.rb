Given /^I have signed in as "([^"]*)"$/ do |email_address|
  steps %{
    Given I am on the homepage
    When I register for an account with the email "#{email_address}"
  }
end

Given /^I have signed in$/ do
  step %{I have signed in as "person@example.com"}
end

When /^I sign out$/ do
  click_link "Sign out"
end

When /^I register for an account with the email "([^"]*)"$/ do |email_address|
  click_link "Sign up for an account"
  fill_in "Email", with: email_address
  click_button "Create my account"
end

Then /^I should be signed in as "([^"]*)"$/ do |email_address|
  page.should have_css("[data-role='user-identification']", text: email_address)
end

Then /^I should be signed out$/ do
  page.should_not have_css("[data-role='user-identification']")
  page.should_not have_link("Sign out")
end

Then /^I should be able to begin the registration process$/ do
  page.should have_link("Sign up for an account", href: "/sign_up")
end
