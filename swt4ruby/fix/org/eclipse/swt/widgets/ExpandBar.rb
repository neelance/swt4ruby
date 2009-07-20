class Org::Eclipse::Swt::Widgets::ExpandBar
  def new_expand_item(*styles, &block)
    ExpandItem.create self, styles, &block
  end

  # Sent when an item is collapsed.
  def on_item_collapsed(&block)
    add_expand_listener Swt4Ruby::Listener.new(:item_collapsed, &block)
  end

  # Sent when an item is expanded.
  def on_item_expanded(&block)
    add_expand_listener Swt4Ruby::Listener.new(:item_expanded, &block)
  end
end
