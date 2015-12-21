class ScreenActions

  def self.element name, finder
    define_method(name)do
      find_element(finder)
    end
  end

  def take_screenshot screen, locale, initialize
    if initialize == 1
      system "adb shell \"am start -n net.sanapeli.adbchangelanguage/.AdbChangeLanguage -e language #{locale}\""
      sleep 25
    end
    screenshot_name = "#{screen}__#{locale}.png"
    screenshot_file = File.join("screenshots", screenshot_name)
    $driver.screenshot(screenshot_file)
  end

end