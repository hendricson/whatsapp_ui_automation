class PhoneScreen < ScreenActions

  def phone_text_field
    id("registration_phone")
  end

  def eula_button_exists?
    exists{eula_button}
  end

end