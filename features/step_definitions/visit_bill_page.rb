Given(/^user is on Sky bill page$/) do
  visit('/')
end

Then(/^user can see Sky bill page$/) do
   expect(page).to have_content("Your Sky Bill")
end

Then(/^the Subscriptions section with subtotal$/) do
  expect(page).to have_content("Package Subscriptions")
  expect(page).to have_content("£71.4")
end

Then(/^the Sky Store section with subtotal$/) do
  expect(page).to have_content("Sky Store")
  expect(page).to have_content("£24.97")
end

Then(/^the Call Charges section with subtotal$/) do
  expect(page).to have_content("Calls Charges")
  expect(page).to have_content("£59.64")
end

Then(/^the Total section should have a total$/) do
  expect(page).to have_content("Amount due")
  expect(page).to have_content("£136.03")
end
