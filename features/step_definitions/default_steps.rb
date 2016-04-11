When(/^I visit "(.*?)"$/) do |url|
  visit url
end

Then(/^I should should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Given(/^that there is a user$/) do
  @user  = create(:user)
end

Given(/^that user has a post as "(.*?)"$/) do |arg1|
  @post  = create(:post, user: @user ) 
end


Then(/^I should see the post "(.*?)"$/) do |arg1|
  expect(page).to have_content(@post.title)
  expect(page).to have_content(@post.body)
end