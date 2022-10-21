Given('I land a Home Screen') do
  find_element(id:"action_search")
  find_element(id:"action_add_favorites")
end

When('I press on menu icon') do
  find_element(accessibility_id:"Open navigation drawer").click
end

Then('I should left side menu') do
  text("Unit Converter")
end

When('I press on My Conversions button') do
  find_element(xpath: "//*[contains(@text,'My conversions')]").click
end

Then('I land on My conversions screen') do
  find_element(xpath: "//*[contains(@text, 'No personal conversion created yet')]")
end

When('I type {string} to target text field') do |target|
  puts("I Type "+ target+" to target text field := "+target)
end

Then('I should see result as {string}') do |result|
  puts("I should see result as:= "+result)
end

When(/^This is Test Scenario$/) do
  puts("This is Test Scenario")
end