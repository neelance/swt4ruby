class Org::Eclipse::Swt::Widgets::TreeColumn
  # Sent when the location (x, y) of a control changes relative to its parent (or relative to the display, for Shells).
  def on_control_moved(&block)
    add_control_listener Swt4Ruby::Listener.new(:control_moved, &block)
  end

  # Sent when the size (width, height) of a control changes.
  def on_control_resized(&block)
    add_control_listener Swt4Ruby::Listener.new(:control_resized, &block)
  end

  # Sent when default selection occurs in the control.
  def on_widget_default_selected(&block)
    add_selection_listener Swt4Ruby::Listener.new(:widget_default_selected, &block)
  end

  # Sent when selection occurs in the control.
  def on_widget_selected(&block)
    add_selection_listener Swt4Ruby::Listener.new(:widget_selected, &block)
  end
end
