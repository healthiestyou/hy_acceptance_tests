Feature: Request a visit doctor by phone
  As a registered member
  I want to be able to schedule request a GM visit
  To receive consultation via phone

  Background: Login
    Given I am not logged in user
    When I am login with valid "username" and "password"
    And I wait for animation
    Then I see welcome banner
    And I click outside the banner

  Scenario: Request a visit for member
    Given I am logged in as member
    When I click on burger menu
    And I click "Apps" drop down
    And I click on "Visit Doctor" button
    And I choose "Maksym" member
    And I accept the Telemedicine Terms and Conditions.
    And I click "REQUEST VISIT FOR MAKSYM" button
    And I wait for animation
    Then I see "Active Doctor Visit" page