class Org::Eclipse::Swt::Widgets::Widget
  extend Swt4Ruby::AccessorAliases
  extend Swt4Ruby::CreateMethod
  include Swt4Ruby::NewGraphicsMethods

  def find_display
    get_display
  end

  def new_color_dialog(*styles, &block)
    ColorDialog.create find_shell, styles, &block
  end

  def new_directory_dialog(*styles, &block)
    DirectoryDialog.create find_shell, styles, &block
  end

  def new_file_dialog(*styles, &block)
    FileDialog.create find_shell, styles, &block
  end

  def new_font_dialog(*styles, &block)
    FontDialog.create find_shell, styles, &block
  end

  def new_message_box(*styles, &block)
    MessageBox.create find_shell, styles, &block
  end

  def new_shell(*styles, &block)
    Shell.create find_shell, styles, &block
  end

  def new_tool_tip(*styles, &block)
    ToolTip.create find_shell, styles, &block
  end

  def new_tray_item(*styles, &block)
    TrayItem.create find_shell, styles, &block
  end

  def new_menu(*styles, &block)
    Menu.create find_shell, styles, &block
  end

  # Sent when the widget is disposed.
  def on_widget_disposed(&block)
    add_dispose_listener Swt4Ruby::Listener.new(:widget_disposed, &block)
  end
end
