class Org::Eclipse::Swt::Widgets::TreeItem
  def new_tree_item(*styles, &block)
    TreeItem.create self, styles, &block
  end
end
