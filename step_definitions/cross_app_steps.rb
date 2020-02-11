Given(/^I am not logged in user$/) do
  @login_page = LoginPage.new
  @login_page.load
end

When(/^I am login with valid "([^"]*)" and "([^"]*)"$/) do |username, password|
  login('max.test.softs@gmail.com', 'Welcome2!')
end

And /^I wait for animation$/ do
  sleep 0.5
  eventually { expect(page.evaluate_script("$(':animated').length")).to eq 0 }
end

Then(/^I see welcome banner$/) do
    eventually do
      expect(page).to have_xpath '/html/body/div[3]/div/div/div'
    end
    wait_for_page_to_load
  end
def wait_for_page_to_load
  eventually { page.has_content? '' }
  step 'I wait for animation'
end

And(/^I click outside the banner$/) do
  #sleep 4
  page.should have_selector('.modal', :text => 'Trying to use')
  find('.modal').send_keys :escape
end
