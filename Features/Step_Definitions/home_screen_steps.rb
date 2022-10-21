Given('I land on Home screen') do
  puts("Sceond Test Secnario")
end

Then('Left Unit picker value should be {string}') do |left_value|
  puts("The Unit picker value is:= "+left_value)
end

Then('Right Unit picker value should be {string}') do |right_value|
  puts("The Unit picker value is:= "+right_value)
end

When('I press on Clear button') do
  puts("I press on Clear button")
end

Then('Show All button should be {string}') do |state|
  if(state=="enabled")
      puts("This is Enabled")
  else if(state=="disabled")
         puts("This is else if statement Disabled")
       end
  end
end

Then(/^I press on Add to Favorites icon$/) do
  find_element(id: "action_add_favorites").click
end

Then(/^I press on Favorite conversions$/) do
  find_element(xpath: "//*[contains(@text,'Favorite conversions')]").click
end

And(/^I verify "([^"]*)" added to Favorite conversions list$/) do |unit_type|
   find_element(xpath: "//*[contains(@text,#{unit_type})]")
   #text(unit_type)
end