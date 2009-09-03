class Org::Eclipse::Swt::Widgets::Display
  include Swt4Ruby::NewGraphicsMethods
  Point = Org::Eclipse::Swt::Graphics::Point

  def find_display
    self
  end

  def new_shell(*styles, &block)
    Org::Eclipse::Swt::Widgets::Shell.create self, styles, &block
  end

  def new_tray_item(&block)
    Org::Eclipse::Swt::Widgets::TrayItem.create get_system_tray, [], &block
  end
end
