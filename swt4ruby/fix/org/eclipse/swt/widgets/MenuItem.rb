class Org::Eclipse::Swt::Widgets::MenuItem
  def find_shell
    get_parent.get_shell
  end

  # Sent when a widget is armed, or 'about to be selected'.
  def on_widget_armed(&block)
    add_arm_listener Swt4Ruby::Listener.new(:widget_armed, &block)
  end

  # Sent when help is requested for a control, typically when the user presses F1.
  def on_help_requested(&block)
    add_help_listener Swt4Ruby::Listener.new(:help_requested, &block)
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
