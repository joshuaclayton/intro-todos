When /^I register for an account with the email "([^"]*)"$/ do |email_address|
  click_link "Sign up for an account"
  fill_in "Email", with: email_address
  click_button "Create my account"
end
