When(/^I visit "(.*?)"$/) do |url|
  visit url
end

Then(/^I should should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end



Given(/^that there is a user$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^that user has a post$/) do
  pending # express the regexp above with the code you wish you had
end
