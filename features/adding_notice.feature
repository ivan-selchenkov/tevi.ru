Feature: Adding notice
  
  Scenario: Adding notice from admin panel
    Given there is admin "admin@tevi.ru"
    And login as "admin@tevi.ru"
    And I am on the cabinet page
    When I follow "Notices"
    And I follow "New Notice"
    And I fill in "Title" with "Test title"
    And I fill in "Content" with "Test Content"
    And I press "Create Notice"
    Then I should see "Title" with value "Test title"
    And I should see "Content" with value "Test Content"

    


    
   