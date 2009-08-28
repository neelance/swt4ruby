class Org::Eclipse::Swt::Custom::StyledText
  # This method is called when a line needs to be reordered for measuring or rendering in a bidi locale.
  def on_line_get_segments(&block)
    add_bidi_segment_listener Swt4Ruby::Listener.new(:line_get_segments, &block)
  end

  # This method is called after the caret offset is changed.
  def on_caret_moved(&block)
    add_caret_listener Swt4Ruby::Listener.new(:caret_moved, &block)
  end

  # This method is called after a text change occurs.
  def on_modify_text(&block)
    add_extended_modify_listener Swt4Ruby::Listener.new(:modify_text, &block)
  end

  # This method is called when a line is about to be drawn in order to get its background color.
  def on_line_get_background(&block)
    add_line_background_listener Swt4Ruby::Listener.new(:line_get_background, &block)
  end

  # This method is called when a line is about to be drawn in order to get the line's style information.
  def on_line_get_style(&block)
    add_line_style_listener Swt4Ruby::Listener.new(:line_get_style, &block)
  end

  # This method is called when an object needs to be drawn.
  def on_paint_object(&block)
    add_paint_object_listener Swt4Ruby::Listener.new(:paint_object, &block)
  end

  # Sent when default selection occurs in the control.
  def on_widget_default_selected(&block)
    add_selection_listener Swt4Ruby::Listener.new(:widget_default_selected, &block)
  end

  # Sent when selection occurs in the control.
  def on_widget_selected(&block)
    add_selection_listener Swt4Ruby::Listener.new(:widget_selected, &block)
  end

  # The following event fields are used: event.character is the character that was typed (input) event.keyCode is the key code that was typed (input) event.stateMask is the state of the keyboard (input) event.doit is processed or not (output).
  def on_verify_key(&block)
    add_verify_key_listener Swt4Ruby::Listener.new(:verify_key, &block)
  end

  # Sent when the text is about to be modified.
  def on_verify_text(&block)
    add_verify_listener Swt4Ruby::Listener.new(:verify_text, &block)
  end

  # Sent when the text is about to be modified.
  def on_word_movement_get_next_offset(&block)
    add_word_movement_listener Swt4Ruby::Listener.new(:get_next_offset, &block)
  end

  # Sent when the text is about to be modified.
  def on_word_movement_get_previous_offset(&block)
    add_word_movement_listener Swt4Ruby::Listener.new(:get_previous_offset, &block)
  end
end
