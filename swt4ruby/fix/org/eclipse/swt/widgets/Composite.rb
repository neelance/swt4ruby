class Org::Eclipse::Swt::Widgets::Composite
  include Swt4Ruby::NewWidgetMethods

  def find_composite
    self
  end

  def apply_fill_layout(*args)
    layout = Org::Eclipse::Swt::Layout::FillLayout.new(*Swt4Ruby.replace_symbols(args))
    yield layout if block_given?
    set_layout layout
  end

  def apply_form_layout(*args)
    layout = Org::Eclipse::Swt::Layout::FormLayout.new(*Swt4Ruby.replace_symbols(args))
    yield layout if block_given?
    set_layout layout
  end

  def apply_grid_layout(*args)
    layout = Org::Eclipse::Swt::Layout::GridLayout.new(*Swt4Ruby.replace_symbols(args))
    yield layout if block_given?
    set_layout layout
  end

  def apply_row_layout(*args)
    layout = Org::Eclipse::Swt::Layout::RowLayout.new(*Swt4Ruby.replace_symbols(args))
    yield layout if block_given?
    set_layout layout
  end
end
