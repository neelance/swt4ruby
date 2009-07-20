class Org::Eclipse::Swt::Widgets::Composite
  include Swt4Ruby::NewWidgetMethods

  def find_composite
    self
  end

  def apply_grid_layout
    set_layout Org::Eclipse::Swt::Layout::GridLayout.new
  end
end
