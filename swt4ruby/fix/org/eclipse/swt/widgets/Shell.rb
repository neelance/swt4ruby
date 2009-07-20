class Org::Eclipse::Swt::Widgets::Shell
  Point = Org::Eclipse::Swt::Graphics::Point

  def find_shell
    self
  end

  # Sent when a shell becomes the active window.
  def on_shell_activated(&block)
    add_shell_listener Swt4Ruby::Listener.new(:shell_activated, &block)
  end

  # Sent when a shell is closed.
  def on_shell_closed(&block)
    add_shell_listener Swt4Ruby::Listener.new(:shell_closed, &block)
  end

  # Sent when a shell stops being the active window.
  def on_shell_deactivated(&block)
    add_shell_listener Swt4Ruby::Listener.new(:shell_deactivated, &block)
  end

  # Sent when a shell is un-minimized.
  def on_shell_deiconified(&block)
    add_shell_listener Swt4Ruby::Listener.new(:shell_deiconified, &block)
  end

  # Sent when a shell is minimized.
  def on_shell_iconified(&block)
    add_shell_listener Swt4Ruby::Listener.new(:shell_iconified, &block)
  end
end
