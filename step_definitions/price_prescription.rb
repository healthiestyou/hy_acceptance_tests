And(/^I fill "([^"]*)" into "([^"]*)" field$/) do |value, field|
  fill_in(field, :with => value)
end

And(/^I choose "([^"]*)" from list$/) do |name|
  find('.ng-binding', :text => name).click
end

And(/^I enter "([^"]*)" into "([^"]*)" field$/) do |value1, field1|
  element = find(:xpath, '/html/body/div/div[2]/div/div[2]/div/div/form/div/div[2]/div[1]/div/div/input')
  element.native.clear
  find(:xpath, "/html/body/div/div[2]/div/div[2]/div/div/form/div/div[2]/div[1]/div/div/input").set(value1)
end

And(/^I choose "([^"]*)" miles distance$/) do |distance|
  find('.btn', :text => distance).click
end

Then(/^I see "([^"]*)"$/) do |pharmacy|
  eventually do
    expect(page).to have_content(pharmacy)
  end
end

And(/^I press VIEW CARD button on NALLY FAMILY PRACTICE$/) do
  find(:xpath, '/html/body/div/div[2]/div/div[5]/div[2]/div/div[1]/div/div[4]/button/span').click
end

Then(/^I see Discount Card pop up window$/) do
  expect(page).to have_selector('body > div.modal.fade.ng-isolate-scope.in > div')
end