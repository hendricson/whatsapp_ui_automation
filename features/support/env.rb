require 'cucumber'
require 'appium_lib'
require 'rspec'
require 'pry'

require_relative 'screen_actions'

APP_PATH = ENV['APP'] ||  File.join(File.dirname(__FILE__), "..", "..", "com.whatsapp-1.apk")
DEFAULT_TIMEOUT = 20


class AppiumWorld

  def screen_actions
    @screen_actions ||= ScreenActions.new
  end

  def eula_screen
    @eula_screen ||= EULAScreen.new
  end

  def phone_screen
    @phone_screen ||= PhoneScreen.new
  end

end

def caps
  { caps:       { deviceName: (ENV['DEVICE'] || "Nexus 4"),
                  platformName: 'Android',
                  app: APP_PATH,
                  appPackage: 'com.whatsapp',
                  appActivity: 'com.whatsapp.Main',
                  newCommandTimeout: '3600'},
    appium_lib: { wait: DEFAULT_TIMEOUT,
                  debug: false } }
end

Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld
Appium.promote_appium_methods ScreenActions


World do
  AppiumWorld.new
end