When(/^user press on Package subscription arrow$/) do
  execute_script("$('.subscriptions .title').click()")
end

Then(/^user can see more details about subscriptions$/) do
  expect(page).to have_content("Sky Talk Anytime")
end

Then(/^Then user cannot see more details about Call Chargers$/) do
  expect(page).to have_no_content("07716393769")
end

When(/^user press on Calls Charges arrow$/) do
  execute_script("$('.calls .title').click()")
end

Then(/^user can see more details about calls$/) do
   expect(page).to have_content("07716393769")
end

When(/^user press on Sky Store arrow$/) do
  execute_script("$('.store .title').click()")
end

Then(/^user can see more details about store$/) do
  expect(page).to have_content("That's what she said")
end