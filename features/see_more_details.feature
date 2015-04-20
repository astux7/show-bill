Feature: See full Sky Bill page
@javascript
Scenario: View bill with more details
  Given user is on Sky bill page
  When user press on Package subscription arrow
  Then user can see more details about subscriptions 
  And Then user cannot see more details about Call Charges
  When user press on Calls Charges arrow
  Then user can see more details about calls
  When user press on Sky Store arrow
  Then user can see more details about store
