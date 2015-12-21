class EULAScreen < ScreenActions

  def eula_button
    id("eula_accept")
    #find_element(id: "eula_accept")
  end

  def eula_button_exists?
    exists{eula_button}
  end

end