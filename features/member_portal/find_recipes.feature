Feature: Find Honey Brined Turkey recipe
  As a registered member
  I want to be able to find a recipe
  To see ingredients

  Background: Login
    Given I am not logged in user
    When I am login with valid "username" and "password"
    And I wait for animation
    Then I see welcome banner
    And I click outside the banner

  Scenario: Find Honey Brined Turkey recipe
    Given I am logged in as member
    When I click on burger menu
    And I click "Apps" drop down
    And I click on "Find Recipes" button
    And I click Andvanced button
    And I choose Main Dish from Meal drop down
    And I choose Dairy Free from Diet drop down
    And I choose American from Cuisine drop down
    And I enter "Turkey" into Recipe field
    And I enter "Honey" into Include field
    And I enter "Pork" into Exclude field
    And I press FIND RECIPES button
    Then I see "Honey Brined Turkey" in results
    And I click Details button on recipe
    Then I see "Honey Brined Turkey" recipe "Instructions" page