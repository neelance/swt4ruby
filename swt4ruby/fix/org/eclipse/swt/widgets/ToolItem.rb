class Org::Eclipse::Swt::Widgets::ToolItem
  include Swt4Ruby::NewWidgetMethods

  def find_composite
    get_parent
  end

  def find_shell
    get_parent.get_shell
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
