Given /^I am on the cabinet page$/ do
  visit '/admin/'
end

Given /^I am on registration page$/ do
  visit '/registration'
end

And /^I fill in hidden id "([^"]*)" with "([^"]*)"$/ do |id, value|
  find("input#{id}").set value
end


Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Given /^I press "([^"]*)"$/ do |button|
  click_button(button)
end

Given /^I should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    assert page.has_no_content?(text)
  end
end

When /^I follow "([^"]*)"$/ do |link|
  click_link link
end

And /^I select "([^"]*)" from "([^"]*)"$/ do |value, selectbox|
  select value, :from => selectbox
end

And /^I follow "([^"]*)" inline "([^"]*)"$/ do |link, text|
  find('td', :text => text).find(:xpath,".//..").click_link(link)
end

And /^I should see "([^"]*)" with value "([^"]*)"$/ do |field, text|
  find('th', :text => field).find(:xpath,".//..").should have_content(text)
end

And /^I should see "([^"]*)" with value "([^"]*)" \(form\)$/ do |field, text|
  #find('label', :text => field).find(:xpath,".//..").should have_css("input[value=\"#{text}\"]")
  find('label', :text => field).find(:xpath,".//..").find('input').value.should have_content(text)
end

And /^I should see "([^"]*)" select with value "([^"]*)"$/ do |field, text|
  find('label', :text => field).find(:xpath,".//..").find("option[selected]").text.should == text
end

And /^I should see "([^"]*)" textarea with value "([^"]*)"$/ do |field, text|
  find('label', :text => field).find(:xpath,".//..").find("textarea").text.should have_content(text)
end


Then /^I should see cell "([^"]*)" with "([^"]*)"$/ do |name, text|
  should have_selector("td.#{name}", :content => text)
end
