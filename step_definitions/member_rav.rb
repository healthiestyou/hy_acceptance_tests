Given(/^I am logged in as member$/) do
  expect(page).to have_text('Today')
end

When(/^I click on burger menu$/) do
  find('.hamburger').click
end

And(/^I click "([^"]*)" drop down$/) do |arg1|
  find('.ng-binding', :text => arg1).click
end

And(/^I click on "([^"]*)" button$/) do |arg2|
  find('.ng-binding', :text => arg2).click
end

And(/^I choose "([^"]*)" member$/) do |name|
  find('.btn-consultation', :text => name).click
end

And(/^I accept the Telemedicine Terms and Conditions.$/) do
  find('.md-thumb').click
end

And(/^I click "([^"]*)" button$/) do |button_text|
  find('.ng-binding', :text => button_text).click
end

Then(/^I see "([^"]*)" page$/) do |header|
  page.should have_selector('.panel-body', :text => header)
end


