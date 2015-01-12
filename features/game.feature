Feature: Place the Ships from an initiated fleet
	In order to place ships we need a fleet
	We need each player to have their own fleet 
	We need each player to place each of the ships on their board

	Scenario: scissors beats paper
    Given I am on the homepage
    When I fill in "name" with "johnny" within "test"
    And I press "test"
    And I press "rock"
    Then I should see "Johnny chose:"

	Scenario: rock looses to paper
		