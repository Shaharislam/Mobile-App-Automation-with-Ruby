Then('I press on Create your first conversion button') do
  find_element(xpath: "//*[contains(@text,'CREATE YOUR FIRST CONVERSION')]").click
end

Then('I type {string} as custom conversion name') do |conversion_name|
  # find_element(id: "#edit_custom_conversion_category_name").send_keys(conversion_name)
  find_element(xpath: "//*[contains(@id,'edit_custom_conversion_category_name')]").send_keys(conversion_name)
end

When('I press on New unit button') do
  find_element(id: "btn_new_custom_unit").click
end

Then('I type {string} as unit name') do |unit_name|
  find_element(id: "edit_custom_conversion_unit_dtls_name").send_keys(unit_name)
end

Then('I type {string} as unit symbol') do |symbol_name|
  find_element(id: "edit_custom_conversion_unit_dtls_symbol").send_keys(symbol_name)
end

Then('I type {string} as unit value') do |unit_value|
  find_element(id: "edit_custom_conversion_unit_dtls_value").send_keys(unit_value)
end

Then('I press submit checkmark on Custom conversions screen') do
  find_element(id: "btn_unit_dtls_ok").click
end

Then('I press on Ok button on Custom conversions screen') do
  find_element(id: "btn_custom_conversion_details_ok").click
end

Then('I verify {string} added to Custom conversions list') do |conversion_name|
  text(conversion_name)
end

