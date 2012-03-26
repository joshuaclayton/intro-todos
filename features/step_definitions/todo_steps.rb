When /^I create a todo titled "([^"]*)"$/ do |todo_title|
  click_link "Add a todo"
  fill_in "Title", with: todo_title
  click_button "Create"
end

When /^I create a todo without a title$/ do
  step %{I create a todo titled ""}
end

Then /^I should have no todos$/ do
  page.should_not have_css("ul.todos")
end

Then /^"([^"]*)" should be in my list of things to do$/ do |todo_title|
  within "ul.todos" do
    page.should have_css("li", text: todo_title)
  end
end

Then /^I should see a message telling me the todo needs a title$/ do
  within "ul" do
    page.should have_css("li", text: /Title/)
  end
end

Then /^I should see the following todos:$/ do |table|
  todos = table.raw.flatten

  todos.each do |todo|
    step %{"#{todo}" should be in my list of things to do}
  end
end

Then /^I should not see the following todos:$/ do |table|
  todos = table.raw.flatten

  within "ul.todos" do
    todos.each do |todo|
      page.should_not have_css("li", text: todo)
    end
  end
end
