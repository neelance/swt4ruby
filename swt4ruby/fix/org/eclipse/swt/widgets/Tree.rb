class Org::Eclipse::Swt::Widgets::Tree
  def new_tree_column(*styles, &block)
    TreeColumn.create self, styles, &block
  end

  def new_tree_item(*styles, &block)
    TreeItem.create self, styles, &block
  end

  # Sent when default selection occurs in the control.
  def on_widget_default_selected(&block)
    add_selection_listener Swt4Ruby::Listener.new(:widget_default_selected, &block)
  end

  # Sent when selection occurs in the control.
  def on_widget_selected(&block)
    add_selection_listener Swt4Ruby::Listener.new(:widget_selected, &block)
  end

  # Sent when a tree branch is collapsed.
  def on_tree_collapsed(&block)
    add_tree_listener Swt4Ruby::Listener.new(:tree_collapsed, &block)
  end

  # Sent when a tree branch is expanded.
  def on_tree_expanded(&block)
    add_tree_listener Swt4Ruby::Listener.new(:tree_expanded, &block)
  end
end
