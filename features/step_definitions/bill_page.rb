Given(/^user is on Sky bill page$/) do
  visit('/')
end

Then(/^user can see Sky bill page$/) do
   expect(page).to have_content("Sky Bill Page")
end

# Then(/^the Subscriptions section not empty$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^the Sky Store section not empty$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^the Call Charges section not empty$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^the Total section should have a total$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end
