@regression
Feature: LoginPage Feature
  As a User, I should be able to navigate to login page and Login and Logout successfully

  Background: User should click on login link on home page
    Given I am on homepage
    When I click on login link

  @sanity @smoke
  Scenario: Verify that User should navigate to login page successfully
    Then I should navigate to login page successfully

  @smoke
  Scenario: Verify that User should get error message with invalid credentials
    And I enter email "az5252@gmail.com"
    And I enter password "abc123"
    And I click on login button
    Then I should get error message

  Scenario: Verify that User should log in successfully with valid credentials
    And I enter email "jalsakar2023@gmail.com"
    And I enter password "jalsakar2023"
    And I click on login button
    Then I should login successfully
    Then I can see logout link

  Scenario: Verify that User should logout successfully
    And I enter email "jalsakar2023@gmail.com"
    And I enter password "jalsakar2023"
    And I click on login button
    And I should login successfully
    And I click on logout link
    Then I should logout successfully
    Then I can see login link