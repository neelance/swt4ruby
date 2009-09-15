require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module ToolBarImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Accessibility
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class support the layout of selectable
  # tool bar items.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>ToolItem</code>.
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add <code>Control</code> children to it,
  # or set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>FLAT, WRAP, RIGHT, HORIZONTAL, VERTICAL, SHADOW_OUT</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#toolbar">ToolBar, ToolItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class ToolBar < ToolBarImports.const_get :Composite
    include_class_members ToolBarImports
    
    attr_accessor :item_count
    alias_method :attr_item_count, :item_count
    undef_method :item_count
    alias_method :attr_item_count=, :item_count=
    undef_method :item_count=
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :accessibility_attributes
    alias_method :attr_accessibility_attributes, :accessibility_attributes
    undef_method :accessibility_attributes
    alias_method :attr_accessibility_attributes=, :accessibility_attributes=
    undef_method :accessibility_attributes=
    
    typesig { [Composite, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # and a style value describing its behavior and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p>
    # 
    # @param parent a composite control which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#FLAT
    # @see SWT#WRAP
    # @see SWT#RIGHT
    # @see SWT#HORIZONTAL
    # @see SWT#SHADOW_OUT
    # @see SWT#VERTICAL
    # @see Widget#checkSubclass()
    # @see Widget#getStyle()
    def initialize(parent, style)
      @item_count = 0
      @items = nil
      @accessibility_attributes = nil
      super(parent, check_style(style))
      @accessibility_attributes = nil
      # Ensure that either of HORIZONTAL or VERTICAL is set.
      # NOTE: HORIZONTAL and VERTICAL have the same values
      # as H_SCROLL and V_SCROLL so it is necessary to first
      # clear these bits to avoid scroll bars and then reset
      # the bits using the original style supplied by the
      # programmer.
      if (!((style & SWT::VERTICAL)).equal?(0))
        self.attr_style |= SWT::VERTICAL
      else
        self.attr_style |= SWT::HORIZONTAL
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_attribute_names(id, sel)
      if ((@accessibility_attributes).nil?)
        our_attributes = NSMutableArray.array_with_capacity(10)
        our_attributes.add_object(OS::NSAccessibilityRoleAttribute)
        our_attributes.add_object(OS::NSAccessibilityRoleDescriptionAttribute)
        our_attributes.add_object(OS::NSAccessibilityParentAttribute)
        our_attributes.add_object(OS::NSAccessibilityPositionAttribute)
        our_attributes.add_object(OS::NSAccessibilitySizeAttribute)
        our_attributes.add_object(OS::NSAccessibilityWindowAttribute)
        our_attributes.add_object(OS::NSAccessibilityTopLevelUIElementAttribute)
        our_attributes.add_object(OS::NSAccessibilityHelpAttribute)
        our_attributes.add_object(OS::NSAccessibilityEnabledAttribute)
        our_attributes.add_object(OS::NSAccessibilityFocusedAttribute)
        our_attributes.add_object(OS::NSAccessibilityChildrenAttribute)
        if (!(self.attr_accessible).nil?)
          # See if the accessible will override or augment the standard list.
          # Help, title, and description can be overridden.
          extra_attributes = NSMutableArray.array_with_capacity(3)
          extra_attributes.add_object(OS::NSAccessibilityHelpAttribute)
          extra_attributes.add_object(OS::NSAccessibilityDescriptionAttribute)
          extra_attributes.add_object(OS::NSAccessibilityTitleAttribute)
          # 64
          i = RJava.cast_to_int(extra_attributes.count) - 1
          while i >= 0
            attribute = NSString.new(extra_attributes.object_at_index(i).attr_id)
            if (!(self.attr_accessible.internal_accessibility_attribute_value(attribute, ACC::CHILDID_SELF)).nil?)
              our_attributes.add_object(extra_attributes.object_at_index(i))
            end
            i -= 1
          end
        end
        @accessibility_attributes = our_attributes
        @accessibility_attributes.retain
      end
      return @accessibility_attributes.attr_id
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def accessibility_attribute_value(id, sel, arg0)
      ns_attribute_name = NSString.new(arg0)
      if (!(self.attr_accessible).nil?)
        return_object = self.attr_accessible.internal_accessibility_attribute_value(ns_attribute_name, ACC::CHILDID_SELF)
        if (!(return_object).nil?)
          return return_object.attr_id
        end
      end
      if (ns_attribute_name.is_equal_to_string(OS::NSAccessibilityRoleAttribute) || ns_attribute_name.is_equal_to_string(OS::NSAccessibilityRoleDescriptionAttribute))
        role = OS::NSAccessibilityToolbarRole
        if (ns_attribute_name.is_equal_to_string(OS::NSAccessibilityRoleAttribute))
          return role.attr_id
        else
          # long
          role_description = OS._nsaccessibility_role_description(role.attr_id, 0)
          return role_description
        end
      else
        if (ns_attribute_name.is_equal_to_string(OS::NSAccessibilityEnabledAttribute))
          return NSNumber.number_with_bool(is_enabled).attr_id
        else
          if (ns_attribute_name.is_equal_to_string(OS::NSAccessibilityFocusedAttribute))
            focused = ((self.attr_view.attr_id).equal?(self.attr_view.window___org_eclipse_swt_widgets_tool_bar_1.first_responder.attr_id))
            return NSNumber.number_with_bool(focused).attr_id
          end
        end
      end
      return super(id, sel, arg0)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def accessibility_is_ignored(id, sel)
      # Toolbars aren't ignored.
      return false
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        # Even though it is legal to create this widget
        # with scroll bars, they serve no useful purpose
        # because they do not automatically scroll the
        # widget's client area.  The fix is to clear
        # the SWT style.
        return style & ~(SWT::H_SCROLL | SWT::V_SCROLL)
      end
    }
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = w_hint
      height = h_hint
      if ((w_hint).equal?(SWT::DEFAULT))
        width = 0x7fffffff
      end
      if ((h_hint).equal?(SWT::DEFAULT))
        height = 0x7fffffff
      end
      result = layout(width, height, false)
      extent = Point.new(result[1], result[2])
      if (!(w_hint).equal?(SWT::DEFAULT))
        extent.attr_x = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        extent.attr_y = h_hint
      end
      return extent
    end
    
    typesig { [] }
    def create_handle
      self.attr_state |= THEME_BACKGROUND
      widget = SWTView.new.alloc
      widget.init
      # widget.setDrawsBackground(false);
      self.attr_view = widget
    end
    
    typesig { [ToolItem, ::Java::Int] }
    def create_item(item, index)
      if (!(0 <= index && index <= @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((@item_count).equal?(@items.attr_length))
        new_items = Array.typed(ToolItem).new(@item_count + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      item.create_widget
      self.attr_view.add_subview(item.attr_view)
      System.arraycopy(@items, index, @items, index + 1, ((@item_count += 1) - 1) - index)
      @items[index] = item
      relayout
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(ToolItem).new(4) { nil }
      @item_count = 0
    end
    
    typesig { [ToolItem] }
    def destroy_item(item)
      index = 0
      while (index < @item_count)
        if ((@items[index]).equal?(item))
          break
        end
        index += 1
      end
      if ((index).equal?(@item_count))
        return
      end
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      item.attr_view.remove_from_superview
      relayout
    end
    
    typesig { [::Java::Int, NSGraphicsContext, NSRect] }
    # long
    def draw_background(id, context, rect)
      if (!(id).equal?(self.attr_view.attr_id))
        return
      end
      if (!(self.attr_background).nil?)
        fill_background(self.attr_view, context, rect, -1)
      end
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      i = 0
      while i < @item_count
        item = @items[i]
        if (!(item).nil?)
          item.enable_widget(enabled)
        end
        i += 1
      end
    end
    
    typesig { [NSPoint] }
    def find_tooltip(pt)
      pt = self.attr_view.convert_point_from_view_(pt, nil)
      i = 0
      while i < @item_count
        item = @items[i]
        if (OS._nspoint_in_rect(pt, item.attr_view.frame))
          return item
        end
        i += 1
      end
      return super(pt)
    end
    
    typesig { [::Java::Int] }
    # Returns the item at the given, zero-relative index in the
    # receiver. Throws an exception if the index is out of range.
    # 
    # @param index the index of the item to return
    # @return the item at the given index
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item(index)
      check_widget
      if (0 <= index && index < @item_count)
        return @items[index]
      end
      error(SWT::ERROR_INVALID_RANGE)
      return nil
    end
    
    typesig { [Point] }
    # Returns the item at the given point in the receiver
    # or null if no such item exists. The point is in the
    # coordinate system of the receiver.
    # 
    # @param point the point used to locate the item
    # @return the item at the given point
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item(pt)
      check_widget
      if ((pt).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < @item_count
        rect = @items[i].get_bounds
        if (rect.contains(pt))
          return @items[i]
        end
        i += 1
      end
      return nil
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_count
      check_widget
      return @item_count
    end
    
    typesig { [] }
    # Returns an array of <code>ToolItem</code>s which are the items
    # in the receiver.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items in the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      result = Array.typed(ToolItem).new(@item_count) { nil }
      System.arraycopy(@items, 0, result, 0, @item_count)
      return result
    end
    
    typesig { [] }
    # Returns the number of rows in the receiver. When
    # the receiver has the <code>WRAP</code> style, the
    # number of rows can be greater than one.  Otherwise,
    # the number of rows is always one.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_row_count
      check_widget
      rect = get_client_area
      return layout(rect.attr_width, rect.attr_height, false)[0]
    end
    
    typesig { [ToolItem] }
    # Searches the receiver's list starting at the first item
    # (index 0) until an item is found that is equal to the
    # argument, and returns the index of that item. If no item
    # is found, returns -1.
    # 
    # @param item the search item
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the tool item is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the tool item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      i = 0
      while i < @item_count
        if ((@items[i]).equal?(item))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def layout_horizontal(width, height, resize)
      x_spacing = 0
      y_spacing = 2
      margin_width = 0
      margin_height = 0
      x = margin_width
      y = margin_height
      max_x = 0
      rows = 1
      wrap = !((self.attr_style & SWT::WRAP)).equal?(0)
      item_height = 0
      sizes = Array.typed(Point).new(@item_count) { nil }
      i = 0
      while i < @item_count
        size = sizes[i] = @items[i].compute_size
        item_height = Math.max(item_height, size.attr_y)
        i += 1
      end
      i_ = 0
      while i_ < @item_count
        item = @items[i_]
        size = sizes[i_]
        if (wrap && !(i_).equal?(0) && x + size.attr_x > width)
          rows += 1
          x = margin_width
          y += y_spacing + item_height
        end
        if (resize)
          item.set_bounds(x, y, size.attr_x, item_height)
          visible = x + size.attr_x <= width && y + item_height <= height
          item.set_visible(visible)
          control = item.attr_control
          if (!(control).nil?)
            control_y = y + (item_height - size.attr_y) / 2
            control.set_bounds(x, control_y, size.attr_x, item_height - (control_y - y))
          end
        end
        x += x_spacing + size.attr_x
        max_x = Math.max(max_x, x)
        i_ += 1
      end
      return Array.typed(::Java::Int).new([rows, max_x, y + item_height])
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def layout_vertical(width, height, resize)
      x_spacing = 2
      y_spacing = 0
      margin_width = 0
      margin_height = 0
      x = margin_width
      y = margin_height
      max_y = 0
      cols = 1
      wrap = !((self.attr_style & SWT::WRAP)).equal?(0)
      item_width = 0
      sizes = Array.typed(Point).new(@item_count) { nil }
      i = 0
      while i < @item_count
        size = sizes[i] = @items[i].compute_size
        item_width = Math.max(item_width, size.attr_x)
        i += 1
      end
      i_ = 0
      while i_ < @item_count
        item = @items[i_]
        size = sizes[i_]
        if (wrap && !(i_).equal?(0) && y + size.attr_y > height)
          cols += 1
          x += x_spacing + item_width
          y = margin_height
        end
        if (resize)
          item.set_bounds(x, y, item_width, size.attr_y)
          visible = x + item_width <= width && y + size.attr_y <= height
          item.set_visible(visible)
          control = item.attr_control
          if (!(control).nil?)
            control_x = x + (item_width - size.attr_x) / 2
            control.set_bounds(control_x, y, item_width - (control_x - x), size.attr_y)
          end
        end
        y += y_spacing + size.attr_y
        max_y = Math.max(max_y, y)
        i_ += 1
      end
      return Array.typed(::Java::Int).new([cols, x + item_width, max_y])
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def layout(n_width, n_height, resize)
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        return layout_vertical(n_width, n_height, resize)
      else
        return layout_horizontal(n_width, n_height, resize)
      end
    end
    
    typesig { [] }
    def relayout
      if (!get_drawing)
        return
      end
      rect = get_client_area
      layout(rect.attr_width, rect.attr_height, true)
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@items).nil?)
        i = 0
        while i < @item_count
          item = @items[i]
          if (!(item).nil? && !item.is_disposed)
            item.release(false)
          end
          i += 1
        end
        @item_count = 0
        @items = nil
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@accessibility_attributes).nil?)
        @accessibility_attributes.release
      end
      @accessibility_attributes = nil
    end
    
    typesig { [Control] }
    def remove_control(control)
      super(control)
      i = 0
      while i < @item_count
        item = @items[i]
        if ((item.attr_control).equal?(control))
          item.set_control(nil)
        end
        i += 1
      end
    end
    
    typesig { [] }
    def resized
      super
      relayout
    end
    
    typesig { [NSFont] }
    def set_font(font)
      i = 0
      while i < @item_count
        item = @items[i]
        if (!(item.attr_button).nil?)
          (item.attr_button).set_attributed_title(item.create_string)
        end
        i += 1
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_redraw(redraw)
      check_widget
      super(redraw)
      if (redraw && (self.attr_draw_count).equal?(0))
        relayout
      end
    end
    
    private
    alias_method :initialize__tool_bar, :initialize
  end
  
end
