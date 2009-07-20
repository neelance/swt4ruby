class Org::Eclipse::Swt::Widgets::CoolBar
  def new_cool_item(*styles, &block)
    Org::Eclipse::Swt::Widgets::CoolItem.create self, styles, &block
  end
end
