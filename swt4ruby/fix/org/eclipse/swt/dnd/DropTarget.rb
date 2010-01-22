class Org::Eclipse::Swt::Dnd::DropTarget
  # The cursor has entered the drop target boundaries.
  def on_drag_enter(&block)
    add_drop_listener Swt4Ruby::Listener.new(:drag_enter, &block)
  end

  # The cursor has left the drop target boundaries OR the drop has been cancelled OR the data is about to be dropped.
  def on_drag_leave(&block)
    add_drop_listener Swt4Ruby::Listener.new(:drag_leave, &block)
  end

  # The operation being performed has changed (usually due to the user changing the selected modifier key(s) while dragging).
  def on_drag_operation_changed(&block)
    add_drop_listener Swt4Ruby::Listener.new(:drag_operation_changed, &block)
  end

  # The cursor is moving over the drop target.
  def on_drag_over(&block)
    add_drop_listener Swt4Ruby::Listener.new(:drag_over, &block)
  end

  # The data is being dropped. The data field contains java format of the data being dropped. To determine the type of the data object, refer to the documentation for the Transfer subclass specified in event.currentDataType.
  def on_drop(&block)
    add_drop_listener Swt4Ruby::Listener.new(:drop, &block)
  end

  # The drop is about to be performed. The drop target is given a last chance to change the nature of the drop.
  def on_drop_accept(&block)
    add_drop_listener Swt4Ruby::Listener.new(:drop_accept, &block)
  end
end
