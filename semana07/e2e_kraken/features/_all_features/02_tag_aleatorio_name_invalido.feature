Feature: Crear tag con el campo name invalido

@user1 @web
Scenario: Crear tags
  Given I navigate to page "<URL>"
  And I wait for 1 seconds

  When I login to ghost "<EMAIL>" "<PASSWORD>"
  And I wait for 1 seconds
  Then I should be logged
  
  When I select the tags section
  And I wait for 1 seconds
  Then I should have a new tag button

  When I click on the new tag button
  And I wait for 1 seconds
  Then I should have a form to enter tag information

  When I enter an invalid tag name
  And I wait for 1 seconds

  When I click Save
  And I wait for 1 seconds
  Then I should have a retry button
