class Org::Eclipse::Swt::Widgets::TabItem
  include Swt4Ruby::NewWidgetMethods

  def find_composite
    get_parent
  end
end
