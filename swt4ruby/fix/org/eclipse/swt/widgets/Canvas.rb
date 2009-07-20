class Org::Eclipse::Swt::Widgets::Canvas
  def new_caret(*styles, &block)
    Org::Eclipse::Swt::Widgets::Caret.create self, styles, &block
  end
end
