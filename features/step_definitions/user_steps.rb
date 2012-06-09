Given /^there is admin "([^"]*)"$/ do |email|
  admin =
      AdminUser.new :email => email,
                    :password => "password",
                    :password_confirmation => "password"
  admin.save!
end

Given /^login as "([^"]*)"$/ do |email|
  steps("
    Given I am on the cabinet page
    When I fill in \"Email\" with \"#{email}\"
    And I fill in \"Password\" with \"password\"
    And I press \"Login\"
    Then I should see \"Signed in successfully.\"
        ")
end

