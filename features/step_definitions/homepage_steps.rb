Given /^I am on the homepage$/ do
  visit "/"
end

When /^I go to the homepage$/ do
  visit "/"
end

Then /^I should see the product name$/ do
  page.should have_css("h1", text: "Welcome to Do It TDD")
end

Then /^I should see the product description$/ do
  page.should have_css("[data-role='product-description']", text: /todo/)
end
