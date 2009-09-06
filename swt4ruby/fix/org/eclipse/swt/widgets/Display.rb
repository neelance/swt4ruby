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

  alias_method :swt_async_exec, :async_exec
  def async_exec(runnable = nil, &block)
    if runnable
      swt_async_exec runnable
    else
      swt_async_exec Swt4Ruby::Listener.new(:run, Java::Lang::Runnable, &block)
    end
  end
end
