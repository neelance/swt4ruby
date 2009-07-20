class Org::Eclipse::Swt::Widgets::Text
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

  # Sent when the text is about to be modified.
  def on_verify_text(&block)
    add_verify_listener Swt4Ruby::Listener.new(:verify_text, &block)
  end
end
