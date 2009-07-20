class Org::Eclipse::Swt::Widgets::Tracker
  # Sent when the location (x, y) of a control changes relative to its parent (or relative to the display, for Shells).
  def on_control_moved(&block)
    add_control_listener Swt4Ruby::Listener.new(:control_moved, &block)
  end

  # Sent when the size (width, height) of a control changes.
  def on_control_resized(&block)
    add_control_listener Swt4Ruby::Listener.new(:control_resized, &block)
  end

  # Sent when a key is pressed on the system keyboard.
  def on_key_pressed(&block)
    add_key_listener Swt4Ruby::Listener.new(:key_pressed, &block)
  end

  # Sent when a key is released on the system keyboard.
  def on_key_released(&block)
    add_key_listener Swt4Ruby::Listener.new(:key_released, &block)
  end
end
