And(/^I set "([^"]*)" into "([^"]*)" field$/) do |zip_code, field|
  find(:xpath, '/html/body/div/div[2]/div/div[2]/div[1]/div/div/form/div/div[1]/div[1]/div/div/input').set(zip_code)
end

And(/^I choose "([^"]*)" Payment Type$/) do |payment_type|
  find('.btn', :text => payment_type).click
end

And(/^I enter "([^"]*)" into Procedure field$/) do |procedure_search|
  find(:xpath, '/html/body/div/div[2]/div/div[2]/div[1]/div/div/form/div/div[3]/div/div/div/input').set(procedure_search)
end

And(/^I choose "([^"]*)" from the list$/) do |procedure_name|
  find('.insurance-option', :text => procedure_name).click
end

And(/^I click Find Procedures button$/) do
  find(:xpath, '/html/body/div/div[2]/div/div[2]/div[1]/div/div/form/div/div[4]/button/span/span[2]').click
end

Then(/^I see "([^"]*)" procedure description$/) do |procedure_name|
  expect(page).to have_content(procedure_name)
end

And(/^I click on VIEW PRICING button under procedure description$/) do
  find(:xpath, '/html/body/div/div[2]/div/div[4]/div/div/div[3]/button/span').click
end

Then(/^I see Pricing pop up with "([^"]*)", "([^"]*)" and "([^"]*)" procedure price$/) do |low, average, high|
  expect(page).to have_text(low)
  expect(page).to have_text(average)
  expect(page).to have_text(high)
end