#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Search the hotel in Addactin  app
  I feature is to test the search functionality of addactin App

   @tag2
  Scenario: Display Itenary for the booking
    Given when the user is on the login page
		When user enters valid username and password
    And user clicks on login button
    And Login is successfull
    And Search page is displayed
    And User selects "<location>", "<rooms>", "<checkInDate>", "<checkOutDate>", "<adultsPerRoom>"
    And User click on search button
  	And Search results should be displayed
  	And User selects hotel
  	And User click on continue button
    And Book a hotel page should be displayed
    And user fills book hotel form "<FirstName>", "<LastName>", "<BillingAddress>", "<Creditcardnumber>", "<Creditcardtype>", "<Expirymonth>", "<Expiryyear>", "<cvv>"
  	And User click on BookNow button
    And user click on my itinerary    
  	Then Itenary page should be displayed

    Examples: 
      | location  | rooms  | checkInDate | checkOutDate  | adultsPerRoom | FirstName | LastName | BillingAddress | Creditcardnumber | Creditcardtype | Expirymonth | Expiryyear | cvv |
      | Sydney | 1 - One | 13/01/2023 | 14/01/2023 | 2 | Ranjini | Ram | anup | 1100110011001100  | VISA | March | 2022 | 194 |
      
      
      
      
      
      