class Org::Eclipse::Swt::Custom::CTabFolder
  def new_c_tab_item(*styles, &block)
    CTabItem.create self, styles, &block
  end

  # Sent when the user clicks on the close button of an item in the CTabFolder.
  def on_close(&block)
    add_ctab_folder2listener Swt4Ruby::Listener.new(:close, &block)
  end

  # Sent when the user clicks on the maximize button of a CTabFolder.
  def on_maximize(&block)
    add_ctab_folder2listener Swt4Ruby::Listener.new(:maximize, &block)
  end

  # Sent when the user clicks on the minimize button of a CTabFolder.
  def on_minimize(&block)
    add_ctab_folder2listener Swt4Ruby::Listener.new(:minimize, &block)
  end

  # Sent when the user clicks on the restore button of a CTabFolder.
  def on_restore(&block)
    add_ctab_folder2listener Swt4Ruby::Listener.new(:restore, &block)
  end

  # Sent when the user clicks on the chevron button of the CTabFolder.
  def on_show_list(&block)
    add_ctab_folder2listener Swt4Ruby::Listener.new(:show_list, &block)
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
