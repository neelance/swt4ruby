class Org::Eclipse::Swt::Widgets::Spinner
  # Sent when default selection occurs in the control.
  def on_widget_default_selected(&block)
    add_selection_listener Swt4Ruby::Listener.new(:widget_default_selected, &block)
  end

  # Sent when selection occurs in the control.
  def on_widget_selected(&block)
    add_selection_listener Swt4Ruby::Listener.new(:widget_selected, &block)
  end

  # Sent when the text is modified.
  def on_modify_text(&block)
    add_modify_listener Swt4Ruby::Listener.new(:modify_text, &block)
  end
end
