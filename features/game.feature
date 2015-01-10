Feature: Place the Ships from an initiated fleet
	In order to place ships we need a fleet
	We need each player to have their own fleet 
	We need each player to place each of the ships on their board

	Scenario: scissors beats paper
    Given I am on the homepage
    When I press "scissors"
    Then I should see "You win!"

	Scenario: rock looses to paper
		Given I am on the homepage
		When I press "rock"
		Then i should see "You lose!"