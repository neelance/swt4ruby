class Org::Eclipse::Swt::Widgets::Table
  def new_table_column(*styles, &block)
    TableColumn.create self, styles, &block
  end

  def new_table_item(*styles, &block)
    TableItem.create self, styles, &block
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
