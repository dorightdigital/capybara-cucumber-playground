When(/^I visit Let Me Google That For You$/) do
  visit 'http://lmgtfy.com'
end

When(/^I generate a link for search term "([^"]*)"$/) do |search_term|
  fill_in 'search-term', with: search_term
  click_button 'Google Search'
end

Then(/^the link provied should be "([^"]*)"$/) do |expected_url|
  copyable_link = find '.link.copyable' 
  expect(copyable_link.value).to eq(expected_url)
end
