Feature: User Registration Functionality
 As a user I want to
 Register on the Application 
 So that I can Book Flight Tickets
 
 @positive
 @order1
 Scenario: Register new user with valid details
 Given user is on the "Sign Up" Page
 When user enters First Name "Vikram" under Sign up
 And user enters Last Name "Kumar" under Sign up
 And user selects Select Country "United States +1" under Sign up
 And user enters Phone "9876543210" under Sign up
 And user enters EmailAddress "vkumar@gmail.com" under Sign up
 And user enters Password "vkumar123" under Sign up
 And user solves captcha manually
 And user clicks Sign up button under Sign up
 Then the user should be registered Successfully under Sign up

 @negative
 @order2
  Scenario: Registration fails with invalid email format
    Given user is on the "Sign Up" Page
    When user enters First Name "Suraj" under Sign up
    And user enters Last Name " " under Sign up
    And user selects Select Country "United States +1" under Sign up
    And user enters Phone " " under Sign up
    And user enters EmailAddress "suraj@gmail.com" under Sign up
    And user enters Password "suraj123" under Sign up
    And user solves captcha manually
    And user clicks Sign up button under Sign up
   Then user should not be registered
 




