Feature: Find price procedure
  As a registered member
  I want to be able to find a procedure
  To see pricing

  Background: Login
    Given I am not logged in user
    When I am login with valid "username" and "password"
    And I wait for animation
    Then I see welcome banner
    And I click outside the banner

  Scenario: Find procedure pricing
    Given I am logged in as member
    When I click on burger menu
    And I click "Apps" drop down
    And I click on "Price Procedures" button
    And I set "85001" into "Zip Code" field
    And I choose "Cash" Payment Type
    And I enter "Lap" into Procedure field
    And I choose "Laparoscopy" from the list
    And I click Find Procedures button
    Then I see "Laparoscopy" procedure description
    And I click on VIEW PRICING button under procedure description
    Then I see Pricing pop up with "Low", "Average" and "High" procedure price
