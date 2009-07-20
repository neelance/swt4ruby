class Org::Eclipse::Swt::Widgets::ToolBar
  def new_tool_item(*styles, &block)
    Org::Eclipse::Swt::Widgets::ToolItem.create self, styles, &block
  end
end
