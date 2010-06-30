Feature: Site Bar
  In order to allow administrators to easily switch between editing and viewing their website
  I want logged in refinery users to see a site bar 
  And I want logged in customers to not see a site bar

  Scenario: Not logged in
    When I go to the home page
    Then I should not see "Log out"
    
  Scenario: Logged in as a Refinery user
    Given I am a logged in user
    When I go to the home page
    Then I should see "Log out"
    
  Scenario: Logged in as a customer
    Given I am a logged in customer
    When I go to the home page
    Then I should not see "Log out"