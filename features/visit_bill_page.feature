Feature: Visit Sky Bill page

Scenario: View bill
  Given user is on Sky bill page
  Then user can see Sky bill page
  And the Subscriptions section with subtotal
  And the Sky Store section with subtotal
  And the Call Charges section with subtotal
  And the Total section should have a total
