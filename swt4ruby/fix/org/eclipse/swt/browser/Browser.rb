class Org::Eclipse::Swt::Widgets::Browser
  # This method is called when a page is navigated to that requires authentication.
  def on_authenticate(&block)
    add_authentication_listener Swt4Ruby::Listener.new(:authenticate, &block)
  end

  # This method is called when the window hosting a Browser should be closed.
  def on_close_window(&block)
    add_close_window_listener Swt4Ruby::Listener.new(:close, &block)
  end

  # This method is called when the current location is changed.
  def on_location_changed(&block)
    add_location_listener Swt4Ruby::Listener.new(:changed, &block)
  end

  # This method is called when the current location is about to be changed.
  def on_location_changing(&block)
    add_location_listener Swt4Ruby::Listener.new(:changing, &block)
  end

  # This method is called when a new window needs to be created.
  def on_open_window(&block)
    add_open_window_listener Swt4Ruby::Listener.new(:open, &block)
  end

  # This method is called when a progress is made during the loading of the current location.
  def on_progress_changed(&block)
    add_progress_listener Swt4Ruby::Listener.new(:changed, &block)
  end

  # This method is called when the current location has been completely loaded.
  def on_progress_completed(&block)
    add_progress_listener Swt4Ruby::Listener.new(:completed, &block)
  end

  # This method is called when the status text is changed.
  def on_status_text_changed(&block)
    add_status_text_listener Swt4Ruby::Listener.new(:changed, &block)
  end

  # This method is called when the status text is changed.
  def on_title_changed(&block)
    add_title_listener Swt4Ruby::Listener.new(:changed, &block)
  end

  # This method is called when the window hosting a Browser is requested to be hidden.
  def on_hide_window(&block)
    add_visibility_window_listener Swt4Ruby::Listener.new(:hide, &block)
  end

  # This method is called when the window hosting a Browser  is requested to be displayed.
  def on_show_window(&block)
    add_visibility_window_listener Swt4Ruby::Listener.new(:show, &block)
  end
end
