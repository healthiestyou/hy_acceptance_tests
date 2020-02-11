Feature: Find price prescriptions
  As a registered member
  I want to be able to find a drug
  To have discount

  Background: Login
    Given I am not logged in user
    When I am login with valid "username" and "password"
    And I wait for animation
    Then I see welcome banner
    And I click outside the banner

  Scenario: Find discount card for prescription
    Given I am logged in as member
    When I click on burger menu
    And I click "Apps" drop down
    And I click on "Price Prescriptions" button
    And I fill "Nat" into "search" field
    And I choose "NATESTO" from list
    And I enter "85001" into "Zip Code" field
    And I choose "10" miles distance
    And I wait for animation
    And I click "PRICE PRESCRIPTION" button
    Then I see "NALLY FAMILY PRACTICE"
    And I press VIEW CARD button on NALLY FAMILY PRACTICE
    Then I see Discount Card pop up window

