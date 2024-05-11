@login @desktop @sanity @regression
Feature: login page

@test-login @test-case=ABC-001
Scenario: success login with correct credentials
    Given I am on the homepage automationexercise.com
    When I click sign in on the homepage
    And I fill my credentials on the homepage
    Then I should be logged in