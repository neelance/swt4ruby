require "rjava"

# Copyright (c) 2007, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module DropTargetEffectImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides a default drag under effect during a drag and drop.
  # The current implementation does not provide any visual feedback.
  # 
  # <p>The drop target effect has the same API as the
  # <code>DropTargetAdapter</code> so that it can provide custom visual
  # feedback when a <code>DropTargetEvent</code> occurs.
  # </p>
  # 
  # <p>Classes that wish to provide their own drag under effect
  # can extend the <code>DropTargetEffect</code> and override any applicable methods
  # in <code>DropTargetAdapter</code> to display their own drag under effect.</p>
  # 
  # <p>The feedback value is either one of the FEEDBACK constants defined in
  # class <code>DND</code> which is applicable to instances of this class,
  # or it must be built by <em>bitwise OR</em>'ing together
  # (that is, using the <code>int</code> "|" operator) two or more
  # of those <code>DND</code> effect constants.
  # </p>
  # <p>
  # <dl>
  # <dt><b>Feedback:</b></dt>
  # <dd>FEEDBACK_EXPAND, FEEDBACK_INSERT_AFTER, FEEDBACK_INSERT_BEFORE,
  # FEEDBACK_NONE, FEEDBACK_SELECT, FEEDBACK_SCROLL</dd>
  # </dl>
  # </p>
  # 
  # @see DropTargetAdapter
  # @see DropTargetEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class DropTargetEffect < DropTargetEffectImports.const_get :DropTargetAdapter
    include_class_members DropTargetEffectImports
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    typesig { [Control] }
    # Creates a new <code>DropTargetEffect</code> to handle the drag under effect on the specified
    # <code>Control</code>.
    # 
    # @param control the <code>Control</code> over which the user positions the cursor to drop the data
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the control is null</li>
    # </ul>
    def initialize(control)
      @control = nil
      super()
      if ((control).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @control = control
    end
    
    typesig { [] }
    # Returns the Control which is registered for this DropTargetEffect.  This is the control over which the
    # user positions the cursor to drop the data.
    # 
    # @return the Control which is registered for this DropTargetEffect
    def get_control
      return @control
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the item at the given x-y coordinate in the receiver
    # or null if no such item exists. The x-y coordinate is in the
    # display relative coordinates.
    # 
    # @param x the x coordinate used to locate the item
    # @param y the y coordinate used to locate the item
    # @return the item at the given x-y coordinate, or null if the coordinate is not in a selectable item
    def get_item(x, y)
      if (@control.is_a?(Table))
        return get_item(@control, x, y)
      end
      if (@control.is_a?(Tree))
        return get_item(@control, x, y)
      end
      return nil
    end
    
    typesig { [Table, ::Java::Int, ::Java::Int] }
    def get_item(table, x, y)
      coordinates = Point.new(x, y)
      coordinates = table.to_control(coordinates)
      item = table.get_item(coordinates)
      if (!(item).nil?)
        return item
      end
      area = table.get_client_area
      table_bottom = area.attr_y + area.attr_height
      item_count = table.get_item_count
      i = table.get_top_index
      while i < item_count
        item = table.get_item(i)
        rect = item.get_bounds
        rect.attr_x = area.attr_x
        rect.attr_width = area.attr_width
        if (rect.contains(coordinates))
          return item
        end
        if (rect.attr_y > table_bottom)
          break
        end
        ((i += 1) - 1)
      end
      return nil
    end
    
    typesig { [Tree, ::Java::Int, ::Java::Int] }
    def get_item(tree, x, y)
      point = Point.new(x, y)
      point = tree.to_control(point)
      item = tree.get_item(point)
      if ((item).nil?)
        area = tree.get_client_area
        if (area.contains(point))
          tree_bottom = area.attr_y + area.attr_height
          item = tree.get_top_item
          while (!(item).nil?)
            rect = item.get_bounds
            item_bottom = rect.attr_y + rect.attr_height
            if (rect.attr_y <= point.attr_y && point.attr_y < item_bottom)
              return item
            end
            if (item_bottom > tree_bottom)
              break
            end
            item = next_item(tree, item)
          end
          return nil
        end
      end
      return item
    end
    
    typesig { [Tree, TreeItem] }
    def next_item(tree, item)
      if ((item).nil?)
        return nil
      end
      if (item.get_expanded && item.get_item_count > 0)
        return item.get_item(0)
      end
      child_item = item
      parent_item = child_item.get_parent_item
      index = (parent_item).nil? ? tree.index_of(child_item) : parent_item.index_of(child_item)
      count = (parent_item).nil? ? tree.get_item_count : parent_item.get_item_count
      while (true)
        if (index + 1 < count)
          return (parent_item).nil? ? tree.get_item(index + 1) : parent_item.get_item(index + 1)
        end
        if ((parent_item).nil?)
          return nil
        end
        child_item = parent_item
        parent_item = child_item.get_parent_item
        index = (parent_item).nil? ? tree.index_of(child_item) : parent_item.index_of(child_item)
        count = (parent_item).nil? ? tree.get_item_count : parent_item.get_item_count
      end
    end
    
    typesig { [Tree, TreeItem] }
    def previous_item(tree, item)
      if ((item).nil?)
        return nil
      end
      child_item = item
      parent_item = child_item.get_parent_item
      index = (parent_item).nil? ? tree.index_of(child_item) : parent_item.index_of(child_item)
      if ((index).equal?(0))
        return parent_item
      end
      next_item_ = (parent_item).nil? ? tree.get_item(index - 1) : parent_item.get_item(index - 1)
      count = next_item_.get_item_count
      while (count > 0 && next_item_.get_expanded)
        next_item_ = next_item_.get_item(count - 1)
        count = next_item_.get_item_count
      end
      return next_item_
    end
    
    private
    alias_method :initialize__drop_target_effect, :initialize
  end
  
end
