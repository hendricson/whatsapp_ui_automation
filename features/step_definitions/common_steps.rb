Given(/^I land on EULA$/) do
  break unless eula_screen.eula_button_exists?
end

Then(/^I press Accept button$/) do
  system "adb shell \"pm grant net.sanapeli.adbchangelanguage android.permission.CHANGE_CONFIGURATION\""
  screen_actions.take_screenshot('eula', 'en', 1)
  screen_actions.take_screenshot('eula', 'ru', 1)
  find_element(id: "eula_accept").click
end

Then(/^I enter my phone number$/) do
  phone_screen.phone_text_field.send_keys '234 456-789'
  screen_actions.take_screenshot('phone', 'ru', 0)
  screen_actions.take_screenshot('phone', 'en', 1)
end