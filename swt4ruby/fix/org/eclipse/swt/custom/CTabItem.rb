class Org::Eclipse::Swt::Custom::CTabItem
  include Swt4Ruby::NewWidgetMethods

  def find_composite
    get_parent
  end
end
