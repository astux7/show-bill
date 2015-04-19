Feature: Sky Bill page

Scenario: View bill
  Given user is on Sky bill page
  Then user can see Sky bill page
  And the Subscriptions section not empty
  And the Sky Store section not empty
  And the Call Charges section not empty
  And the Total section should have a total
