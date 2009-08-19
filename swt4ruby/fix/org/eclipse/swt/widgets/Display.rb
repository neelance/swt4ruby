class Org::Eclipse::Swt::Widgets::Display
  Point = Org::Eclipse::Swt::Graphics::Point

  def new_shell(*styles, &block)
    Org::Eclipse::Swt::Widgets::Shell.create self, styles, &block
  end

  def new_tray_item(&block)
    Org::Eclipse::Swt::Widgets::TrayItem.create get_system_tray, [], &block
  end
end
