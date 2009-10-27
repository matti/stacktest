Feature: Manage animals
  In order to manage as many animals
  Farmer
  wants to manage his farm.
  
  Scenario: Create a new animal
    Given I am on the animal creation page
    And I fill in "animal[name]" with "David Duck"
	And I fill in "animal[age]" with "12"
	And I press "Create"
	Then I should see "David Duck of age: 12"
	