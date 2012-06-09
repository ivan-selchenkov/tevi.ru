Feature: Adding picture
  As a admin

Scenario: Adding picture from admin panel
  Given there is admin "admin@tevi.ru"
  And login as "admin@tevi.ru"
  And I follow "Pictures"
  And I follow "New Picture"
  And I fill in "Name" with "Test picture"
  And I fill in "Description" with "Test Description"
  And I fill in "Price" with "100"
  And I attach file "spec/fixtures/test.jpg" to "Image"
  And I attach file "spec/fixtures/test.jpg" to "Thumb"
  And I press "Create Picture"
  
  When I should see "Name" with value "Test picture"
  And I should see "Description" with value "Test Description"
  And I should see "Price" with value "100"
  And I should see "Image" with value "test.jpg"
  And I should see "Thumb" with value "test.jpg"