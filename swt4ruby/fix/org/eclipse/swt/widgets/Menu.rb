class Org::Eclipse::Swt::Widgets::Menu
  def new_menu_item(*styles, &block)
    MenuItem.create self, styles, &block
  end

  # Sent when help is requested for a control, typically when the user presses F1.
  def on_help_requested(&block)
    add_help_listener Swt4Ruby::Listener.new(:help_requested, &block)
  end

  # Sent when a menu is hidden.
  def on_menu_hidden(&block)
    add_menu_listener Swt4Ruby::Listener.new(:menu_hidden, &block)
  end

  # Sent when a menu is shown.
  def on_menu_shown(&block)
    add_menu_listener Swt4Ruby::Listener.new(:menu_shown, &block)
  end
end
