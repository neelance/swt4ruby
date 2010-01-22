class Org::Eclipse::Swt::Widgets::Control
  def find_shell
    get_shell
  end

  def apply_grid_data(*args)
    data = Org::Eclipse::Swt::Layout::GridData.new(*args.map { |arg| arg.is_a?(Symbol) ? Org::Eclipse::Swt::Layout::GridData.const_get(arg.to_s.upcase) : arg })
    yield data if block_given?
    set_layout_data data
  end

  def apply_form_data(width = nil, height = nil)
    data = width ? Org::Eclipse::Swt::Layout::FormData.new(width, height) : Org::Eclipse::Swt::Layout::FormData.new
    yield data if block_given?
    set_layout_data data
  end

  def apply_row_data(*args)
    data = Org::Eclipse::Swt::Layout::RowData.new(*args.map { |arg| arg.is_a?(Symbol) ? Org::Eclipse::Swt::SWT.const_get(arg.to_s.upcase) : arg })
    yield data if block_given?
    set_layout_data data
  end

  def new_drop_target(*operations, &block)
    operation_mask = operations.inject(0) { |mask, op| mask | (op.is_a?(Symbol) ? Org::Eclipse::Swt::Dnd::DND.const_get(op.to_s.upcase) : op) }
    target = Org::Eclipse::Swt::Dnd::DropTarget.new(self, operation_mask)
    target.instance_eval &block if block
    target
  end

  # Sent when the location (x, y) of a control changes relative to its parent (or relative to the display, for Shells).
  def on_control_moved(&block)
    add_control_listener Swt4Ruby::Listener.new(:control_moved, &block)
  end

  # Sent when the size (width, height) of a control changes.
  def on_control_resized(&block)
    add_control_listener Swt4Ruby::Listener.new(:control_resized, &block)
  end

  # Sent when a drag gesture is detected.
  def on_drag_detected(&block)
    add_drag_detect_listener Swt4Ruby::Listener.new(:drag_detected, &block)
  end

  # Sent when a control gets focus.
  def on_focus_gained(&block)
    add_focus_listener Swt4Ruby::Listener.new(:focus_gained, &block)
  end

  # Sent when a control loses focus.
  def on_focus_lost(&block)
    add_focus_listener Swt4Ruby::Listener.new(:focus_lost, &block)
  end

  # Sent when help is requested for a control, typically when the user presses F1.
  def on_help_requested(&block)
    add_help_listener Swt4Ruby::Listener.new(:help_requested, &block)
  end

  # Sent when a key is pressed on the system keyboard.
  def on_key_pressed(&block)
    add_key_listener Swt4Ruby::Listener.new(:key_pressed, &block)
  end

  # Sent when a key is released on the system keyboard.
  def on_key_released(&block)
    add_key_listener Swt4Ruby::Listener.new(:key_released, &block)
  end  

  # Sent when the platform-dependent trigger for showing a menu item is detected.
  def on_menu_detected(&block)
    add_menu_detect_listener Swt4Ruby::Listener.new(:menu_detected, &block)
  end

  # Sent when a mouse button is pressed twice within the (operating system specified) double click period.
  def on_mouse_double_click(&block)
    add_mouse_listener Swt4Ruby::Listener.new(:mouse_double_click, &block)
  end

  # Sent when a mouse button is pressed.
  def on_mouse_down(&block)
    add_mouse_listener Swt4Ruby::Listener.new(:mouse_down, &block)
  end

  # Sent when a mouse button is released.
  def on_mouse_up(&block)
    add_mouse_listener Swt4Ruby::Listener.new(:mouse_up, &block)
  end

  # Sent when the mouse moves.
  def on_mouse_move(&block)
    add_mouse_move_listener Swt4Ruby::Listener.new(:mouse_move, &block)
  end

  # Sent when the mouse pointer passes into the area of the screen covered by a control.
  def on_mouse_enter(&block)
    add_mouse_track_listener Swt4Ruby::Listener.new(:mouse_enter, &block)
  end

  # Sent when the mouse pointer passes out of the area of the screen covered by a control.
  def on_mouse_exit(&block)
    add_mouse_track_listener Swt4Ruby::Listener.new(:mouse_exit, &block)
  end

  # Sent when the mouse pointer hovers (that is, stops moving for an (operating system specified) period of time) over a control.
  def on_mouse_hover(&block)
    add_mouse_track_listener Swt4Ruby::Listener.new(:mouse_hover, &block)
  end

  # Sent when the mouse wheel is scrolled.
  def on_mouse_scrolled(&block)
    add_mouse_wheel_listener Swt4Ruby::Listener.new(:mouse_scrolled, &block)
  end

  # Sent when a paint event occurs for the control.
  def on_paint_control(&block)
    add_paint_listener Swt4Ruby::Listener.new(:paint_control, &block)
  end

  # Sent when a paint event occurs for the control.
  def on_key_traversed(&block)
    add_traverse_listener Swt4Ruby::Listener.new(:key_traversed, &block)
  end
end
