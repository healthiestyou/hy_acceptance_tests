And(/^I click Andvanced button$/) do
  find(:xpath, '/html/body/div/div[2]/div/div[2]/div/div/form/div[2]/button[1]').click
end

And(/^I choose Main Dish from Meal drop down$/) do
  find(:xpath, '//*[@ng-model="model.search.category"]').click
  find(:xpath, '//*[@value="main dish"]').click
end

And(/^I choose Dairy Free from Diet drop down$/) do
  find(:xpath, '//*[@ng-model="model.search.diet"]').click
  find(:xpath, '//*[@value="Dairy-Free"]').click
end

And(/^I choose American from Cuisine drop down$/) do
  find(:xpath, '//*[@ng-model="model.search.cuisine"]').click
  find(:xpath, '//*[@value="American"]').click
end

And(/^I enter "([^"]*)" into Recipe field$/) do |recipe|
  find(:xpath, '/html/body/div/div[2]/div/div[2]/div/div/form/div[1]/div[3]/div[2]/div/div/div/input').set(recipe)
end

And(/^I enter "([^"]*)" into Include field$/) do |include|
  find(:xpath, '/html/body/div/div[2]/div/div[2]/div/div/form/div[1]/div[3]/div[4]/div/md-chips/md-chips-wrap/div/input').set(include)
end

And(/^I enter "([^"]*)" into Exclude field$/) do |exclude|
  find(:xpath, '/html/body/div/div[2]/div/div[2]/div/div/form/div[1]/div[3]/div[5]/div/md-chips/md-chips-wrap/div/input').set(exclude)
end

And(/^I press FIND RECIPES button$/) do
  find(:xpath, '/html/body/div/div[2]/div/div[2]/div/div/form/div[2]/button[2]').click
end

Then(/^I see "([^"]*)" in results$/) do |recipe_name|
  expect(page).to have_text(recipe_name)
end

And(/^I click Details button on recipe$/) do
  find(:xpath, '/html/body/div/div[2]/div/div[4]/div[2]/div/div[3]/div[2]/button').click
end

Then(/^I see recipe "([^"]*)" page$/) do |arg|
  pending
end

Then(/^I see "([^"]*)" recipe "([^"]*)" page$/) do |recipe_name, text|
  expect(page).to have_text(recipe_name)
  expect(page).to have_text(text)
end