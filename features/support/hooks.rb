Before do
  $driver.start_driver
  unless File.directory?("screenshots")
    FileUtils.mkdir_p("screenshots")
  end
end

After do
  $driver.driver_quit
end

