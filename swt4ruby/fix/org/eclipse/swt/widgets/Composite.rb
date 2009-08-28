class Org::Eclipse::Swt::Widgets::Composite
  include Swt4Ruby::NewWidgetMethods

  def find_composite
    self
  end

  def apply_fill_layout
    layout = Org::Eclipse::Swt::Layout::FillLayout.new
    yield layout if block_given?
    set_layout layout
  end

  def apply_form_layout
    layout = Org::Eclipse::Swt::Layout::FormLayout.new
    yield layout if block_given?
    set_layout layout
  end

  def apply_grid_layout
    layout = Org::Eclipse::Swt::Layout::GridLayout.new
    yield layout if block_given?
    set_layout layout
  end

  def apply_row_layout
    layout = Org::Eclipse::Swt::Layout::RowLayout.new
    yield layout if block_given?
    set_layout layout
  end
end
