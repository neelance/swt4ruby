require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module CompositeImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class are controls which are capable
  # of containing other controls.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>NO_BACKGROUND, NO_FOCUS, NO_MERGE_PAINTS, NO_REDRAW_RESIZE, NO_RADIO_GROUP, EMBEDDED, DOUBLE_BUFFERED</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # Note: The <code>NO_BACKGROUND</code>, <code>NO_FOCUS</code>, <code>NO_MERGE_PAINTS</code>,
  # and <code>NO_REDRAW_RESIZE</code> styles are intended for use with <code>Canvas</code>.
  # They can be used with <code>Composite</code> if you are drawing your own, but their
  # behavior is undefined if they are used with subclasses of <code>Composite</code> other
  # than <code>Canvas</code>.
  # </p><p>
  # Note: The <code>CENTER</code> style, although undefined for composites, has the
  # same value as <code>EMBEDDED</code> (which is used to embed widgets from other
  # widget toolkits into SWT).  On some operating systems (GTK, Motif), this may cause
  # the children of this composite to be obscured.  The <code>EMBEDDED</code> style
  # is for use by other widget toolkits and should normally never be used.
  # </p><p>
  # This class may be subclassed by custom control implementors
  # who are building controls that are constructed from aggregates
  # of other controls.
  # </p>
  # 
  # @see Canvas
  # @see <a href="http://www.eclipse.org/swt/snippets/#composite">Composite snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Composite < CompositeImports.const_get :Scrollable
    include_class_members CompositeImports
    
    attr_accessor :layout
    alias_method :attr_layout, :layout
    undef_method :layout
    alias_method :attr_layout=, :layout=
    undef_method :layout=
    
    attr_accessor :lpwp
    alias_method :attr_lpwp, :lpwp
    undef_method :lpwp
    alias_method :attr_lpwp=, :lpwp=
    undef_method :lpwp=
    
    attr_accessor :tab_list
    alias_method :attr_tab_list, :tab_list
    undef_method :tab_list
    alias_method :attr_tab_list=, :tab_list=
    undef_method :tab_list=
    
    attr_accessor :layout_count
    alias_method :attr_layout_count, :layout_count
    undef_method :layout_count
    alias_method :attr_layout_count=, :layout_count=
    undef_method :layout_count=
    
    attr_accessor :background_mode
    alias_method :attr_background_mode, :background_mode
    undef_method :background_mode
    alias_method :attr_background_mode=, :background_mode=
    undef_method :background_mode=
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @layout = nil
      @lpwp = nil
      @tab_list = nil
      @layout_count = 0
      @background_mode = 0
      super()
    end
    
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
    # @param parent a widget which will be the parent of the new instance (cannot be null)
    # @param style the style of widget to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    # 
    # @see SWT#NO_BACKGROUND
    # @see SWT#NO_FOCUS
    # @see SWT#NO_MERGE_PAINTS
    # @see SWT#NO_REDRAW_RESIZE
    # @see SWT#NO_RADIO_GROUP
    # @see Widget#getStyle
    def initialize(parent, style)
      @layout = nil
      @lpwp = nil
      @tab_list = nil
      @layout_count = 0
      @background_mode = 0
      super(parent, style)
    end
    
    typesig { [] }
    def __get_children
      count = 0
      # long
      hwnd_child = OS._get_window(self.attr_handle, OS::GW_CHILD)
      if ((hwnd_child).equal?(0))
        return Array.typed(Control).new(0) { nil }
      end
      while (!(hwnd_child).equal?(0))
        ((count += 1) - 1)
        hwnd_child = OS._get_window(hwnd_child, OS::GW_HWNDNEXT)
      end
      children = Array.typed(Control).new(count) { nil }
      index = 0
      hwnd_child = OS._get_window(self.attr_handle, OS::GW_CHILD)
      while (!(hwnd_child).equal?(0))
        control = self.attr_display.get_control(hwnd_child)
        if (!(control).nil? && !(control).equal?(self))
          children[((index += 1) - 1)] = control
        end
        hwnd_child = OS._get_window(hwnd_child, OS::GW_HWNDNEXT)
      end
      if ((count).equal?(index))
        return children
      end
      new_children = Array.typed(Control).new(index) { nil }
      System.arraycopy(children, 0, new_children, 0, index)
      return new_children
    end
    
    typesig { [] }
    def __get_tab_list
      if ((@tab_list).nil?)
        return @tab_list
      end
      count = 0
      i = 0
      while i < @tab_list.attr_length
        if (!@tab_list[i].is_disposed)
          ((count += 1) - 1)
        end
        ((i += 1) - 1)
      end
      if ((count).equal?(@tab_list.attr_length))
        return @tab_list
      end
      new_list = Array.typed(Control).new(count) { nil }
      index = 0
      i_ = 0
      while i_ < @tab_list.attr_length
        if (!@tab_list[i_].is_disposed)
          new_list[((index += 1) - 1)] = @tab_list[i_]
        end
        ((i_ += 1) - 1)
      end
      @tab_list = new_list
      return @tab_list
    end
    
    typesig { [Array.typed(Control)] }
    # Clears any data that has been cached by a Layout for all widgets that
    # are in the parent hierarchy of the changed control up to and including the
    # receiver.  If an ancestor does not have a layout, it is skipped.
    # 
    # @param changed an array of controls that changed state and require a recalculation of size
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the changed array is null any of its controls are null or have been disposed</li>
    # <li>ERROR_INVALID_PARENT - if any control in changed is not in the widget tree of the receiver</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def changed(changed)
      check_widget
      if ((changed).nil?)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      i = 0
      while i < changed.attr_length
        control = changed[i]
        if ((control).nil?)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (control.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        ancestor = false
        composite = control.attr_parent
        while (!(composite).nil?)
          ancestor = (composite).equal?(self)
          if (ancestor)
            break
          end
          composite = composite.attr_parent
        end
        if (!ancestor)
          error(SWT::ERROR_INVALID_PARENT)
        end
        ((i += 1) - 1)
      end
      i_ = 0
      while i_ < changed.attr_length
        child = changed[i_]
        composite = child.attr_parent
        while (!(child).equal?(self))
          if ((composite.attr_layout).nil? || !composite.attr_layout.flush_cache(child))
            composite.attr_state |= LAYOUT_CHANGED
          end
          child = composite
          composite = child.attr_parent
        end
        ((i_ += 1) - 1)
      end
    end
    
    typesig { [] }
    def check_buffered
      if (OS::IsWinCE || ((self.attr_state & CANVAS)).equal?(0))
        super
      end
    end
    
    typesig { [] }
    def check_composited
      if (!((self.attr_state & CANVAS)).equal?(0))
        if (!((self.attr_style & SWT::TRANSPARENT)).equal?(0))
          # long
          hwnd_parent = self.attr_parent.attr_handle
          bits = OS._get_window_long(hwnd_parent, OS::GWL_EXSTYLE)
          bits |= OS::WS_EX_COMPOSITED
          OS._set_window_long(hwnd_parent, OS::GWL_EXSTYLE, bits)
        end
      end
    end
    
    typesig { [] }
    def check_subclass
      # Do nothing - Subclassing is allowed
    end
    
    typesig { [] }
    def compute_tab_list
      result = super
      if ((result.attr_length).equal?(0))
        return result
      end
      list = !(@tab_list).nil? ? __get_tab_list : __get_children
      i = 0
      while i < list.attr_length
        child = list[i]
        child_list = child.compute_tab_list
        if (!(child_list.attr_length).equal?(0))
          new_result = Array.typed(Control).new(result.attr_length + child_list.attr_length) { nil }
          System.arraycopy(result, 0, new_result, 0, result.attr_length)
          System.arraycopy(child_list, 0, new_result, result.attr_length, child_list.attr_length)
          result = new_result
        end
        ((i += 1) - 1)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      size = nil
      if (!(@layout).nil?)
        if ((w_hint).equal?(SWT::DEFAULT) || (h_hint).equal?(SWT::DEFAULT))
          changed |= !((self.attr_state & LAYOUT_CHANGED)).equal?(0)
          self.attr_state &= ~LAYOUT_CHANGED
          size = @layout.compute_size(self, w_hint, h_hint, changed)
        else
          size = Point.new(w_hint, h_hint)
        end
      else
        size = minimum_size(w_hint, h_hint, changed)
      end
      if ((size.attr_x).equal?(0))
        size.attr_x = DEFAULT_WIDTH
      end
      if ((size.attr_y).equal?(0))
        size.attr_y = DEFAULT_HEIGHT
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        size.attr_x = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        size.attr_y = h_hint
      end
      trim = compute_trim(0, 0, size.attr_x, size.attr_y)
      return Point.new(trim.attr_width, trim.attr_height)
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Copies a rectangular area of the receiver at the specified
    # position using the gc.
    # 
    # @param gc the gc where the rectangle is to be filled
    # @param x the x coordinate of the rectangle to be filled
    # @param y the y coordinate of the rectangle to be filled
    # @param width the width of the rectangle to be filled
    # @param height the height of the rectangle to be filled
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the gc is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the gc has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # public
    def copy_area(gc, x, y, width, height)
      check_widget
      if ((gc).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # XP only, no GDI+
      # #define PW_CLIENTONLY 0x00000001
      # DCOrg() wrong
      # topHandle wrong for Tree?
      # long
      h_dc = gc.attr_handle
      n_saved_dc = OS._save_dc(h_dc)
      OS._intersect_clip_rect(h_dc, 0, 0, width, height)
      # WRONG PARENT
      lp_point = POINT.new
      # long
      hwnd_parent = OS._get_parent(self.attr_handle)
      OS._map_window_points(self.attr_handle, hwnd_parent, lp_point, 1)
      rect = RECT.new
      OS._get_window_rect(self.attr_handle, rect)
      lp_point1 = POINT.new
      lp_point2 = POINT.new
      x = x + (lp_point.attr_x - rect.attr_left)
      y = y + (lp_point.attr_y - rect.attr_top)
      OS._set_window_org_ex(h_dc, x, y, lp_point1)
      OS._set_brush_org_ex(h_dc, x, y, lp_point2)
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (((bits & OS::WS_VISIBLE)).equal?(0))
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
      end
      # NECESSARY?
      OS._redraw_window(self.attr_handle, nil, 0, OS::RDW_UPDATENOW | OS::RDW_ALLCHILDREN)
      OS._print_window(self.attr_handle, h_dc, 0) # 0x00000001);
      if (((bits & OS::WS_VISIBLE)).equal?(0))
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
      end
      OS._restore_dc(h_dc, n_saved_dc)
    end
    
    typesig { [] }
    def create_handle
      super
      self.attr_state |= CANVAS
      if (((self.attr_style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
        self.attr_state |= THEME_BACKGROUND
      end
      if (!((self.attr_style & SWT::TRANSPARENT)).equal?(0))
        bits = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
        bits |= OS::WS_EX_TRANSPARENT
        OS._set_window_long(self.attr_handle, OS::GWL_EXSTYLE, bits)
      end
    end
    
    typesig { [] }
    def find_deferred_control
      return @layout_count > 0 ? self : self.attr_parent.find_deferred_control
    end
    
    typesig { [Control] }
    def find_menus(control)
      if ((control).equal?(self))
        return Array.typed(Menu).new(0) { nil }
      end
      result = super(control)
      children = __get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        menu_list = child.find_menus(control)
        if (!(menu_list.attr_length).equal?(0))
          new_result = Array.typed(Menu).new(result.attr_length + menu_list.attr_length) { nil }
          System.arraycopy(result, 0, new_result, 0, result.attr_length)
          System.arraycopy(menu_list, 0, new_result, result.attr_length, menu_list.attr_length)
          result = new_result
        end
        ((i += 1) - 1)
      end
      return result
    end
    
    typesig { [Shell, Shell, Decorations, Decorations, Array.typed(Menu)] }
    def fix_children(new_shell, old_shell, new_decorations, old_decorations, menus)
      super(new_shell, old_shell, new_decorations, old_decorations, menus)
      children = __get_children
      i = 0
      while i < children.attr_length
        children[i].fix_children(new_shell, old_shell, new_decorations, old_decorations, menus)
        ((i += 1) - 1)
      end
    end
    
    typesig { [Control] }
    def fix_tab_list(control)
      if ((@tab_list).nil?)
        return
      end
      count = 0
      i = 0
      while i < @tab_list.attr_length
        if ((@tab_list[i]).equal?(control))
          ((count += 1) - 1)
        end
        ((i += 1) - 1)
      end
      if ((count).equal?(0))
        return
      end
      new_list = nil
      length = @tab_list.attr_length - count
      if (!(length).equal?(0))
        new_list = Array.typed(Control).new(length) { nil }
        index = 0
        i_ = 0
        while i_ < @tab_list.attr_length
          if (!(@tab_list[i_]).equal?(control))
            new_list[((index += 1) - 1)] = @tab_list[i_]
          end
          ((i_ += 1) - 1)
        end
      end
      @tab_list = new_list
    end
    
    typesig { [] }
    # Returns the receiver's background drawing mode. This
    # will be one of the following constants defined in class
    # <code>SWT</code>:
    # <code>INHERIT_NONE</code>, <code>INHERIT_DEFAULT</code>,
    # <code>INHERTIT_FORCE</code>.
    # 
    # @return the background mode
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT
    # 
    # @since 3.2
    def get_background_mode
      check_widget
      return @background_mode
    end
    
    typesig { [] }
    # Returns a (possibly empty) array containing the receiver's children.
    # Children are returned in the order that they are drawn.  The topmost
    # control appears at the beginning of the array.  Subsequent controls
    # draw beneath this control and appear later in the array.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of children, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return an array of children
    # 
    # @see Control#moveAbove
    # @see Control#moveBelow
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_children
      check_widget
      return __get_children
    end
    
    typesig { [] }
    def get_children_count
      # NOTE: The current implementation will count
      # non-registered children.
      count = 0
      # long
      hwnd_child = OS._get_window(self.attr_handle, OS::GW_CHILD)
      while (!(hwnd_child).equal?(0))
        ((count += 1) - 1)
        hwnd_child = OS._get_window(hwnd_child, OS::GW_HWNDNEXT)
      end
      return count
    end
    
    typesig { [] }
    # Returns layout which is associated with the receiver, or
    # null if one has not been set.
    # 
    # @return the receiver's layout or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_layout
      check_widget
      return @layout
    end
    
    typesig { [] }
    # Gets the (possibly empty) tabbing order for the control.
    # 
    # @return tabList the ordered list of controls representing the tab order
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setTabList
    def get_tab_list
      check_widget
      tab_list = __get_tab_list
      if ((tab_list).nil?)
        count = 0
        list = __get_children
        i = 0
        while i < list.attr_length
          if (list[i].is_tab_group)
            ((count += 1) - 1)
          end
          ((i += 1) - 1)
        end
        tab_list = Array.typed(Control).new(count) { nil }
        index = 0
        i_ = 0
        while i_ < list.attr_length
          if (list[i_].is_tab_group)
            tab_list[((index += 1) - 1)] = list[i_]
          end
          ((i_ += 1) - 1)
        end
      end
      return tab_list
    end
    
    typesig { [] }
    def hooks_keys
      return hooks(SWT::KeyDown) || hooks(SWT::KeyUp)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver has deferred
    # the performing of layout, and <code>false</code> otherwise.
    # 
    # @return the receiver's deferred layout state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setLayoutDeferred(boolean)
    # @see #isLayoutDeferred()
    # 
    # @since 3.1
    def get_layout_deferred
      check_widget
      return @layout_count > 0
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver or any ancestor
    # up to and including the receiver's nearest ancestor shell
    # has deferred the performing of layouts.  Otherwise, <code>false</code>
    # is returned.
    # 
    # @return the receiver's deferred layout state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setLayoutDeferred(boolean)
    # @see #getLayoutDeferred()
    # 
    # @since 3.1
    def is_layout_deferred
      check_widget
      return !(find_deferred_control).nil?
    end
    
    typesig { [] }
    # If the receiver has a layout, asks the layout to <em>lay out</em>
    # (that is, set the size and location of) the receiver's children.
    # If the receiver does not have a layout, do nothing.
    # <p>
    # This is equivalent to calling <code>layout(true)</code>.
    # </p>
    # <p>
    # Note: Layout is different from painting. If a child is
    # moved or resized such that an area in the parent is
    # exposed, then the parent will paint. If no child is
    # affected, the parent will not paint.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def layout
      check_widget
      layout(true)
    end
    
    typesig { [::Java::Boolean] }
    # If the receiver has a layout, asks the layout to <em>lay out</em>
    # (that is, set the size and location of) the receiver's children.
    # If the argument is <code>true</code> the layout must not rely
    # on any information it has cached about the immediate children. If it
    # is <code>false</code> the layout may (potentially) optimize the
    # work it is doing by assuming that none of the receiver's
    # children has changed state since the last layout.
    # If the receiver does not have a layout, do nothing.
    # <p>
    # If a child is resized as a result of a call to layout, the
    # resize event will invoke the layout of the child.  The layout
    # will cascade down through all child widgets in the receiver's widget
    # tree until a child is encountered that does not resize.  Note that
    # a layout due to a resize will not flush any cached information
    # (same as <code>layout(false)</code>).
    # </p>
    # <p>
    # Note: Layout is different from painting. If a child is
    # moved or resized such that an area in the parent is
    # exposed, then the parent will paint. If no child is
    # affected, the parent will not paint.
    # </p>
    # 
    # @param changed <code>true</code> if the layout must flush its caches, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def layout(changed)
      check_widget
      if ((@layout).nil?)
        return
      end
      layout(changed, false)
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    # If the receiver has a layout, asks the layout to <em>lay out</em>
    # (that is, set the size and location of) the receiver's children.
    # If the changed argument is <code>true</code> the layout must not rely
    # on any information it has cached about its children. If it
    # is <code>false</code> the layout may (potentially) optimize the
    # work it is doing by assuming that none of the receiver's
    # children has changed state since the last layout.
    # If the all argument is <code>true</code> the layout will cascade down
    # through all child widgets in the receiver's widget tree, regardless of
    # whether the child has changed size.  The changed argument is applied to
    # all layouts.  If the all argument is <code>false</code>, the layout will
    # <em>not</em> cascade down through all child widgets in the receiver's widget
    # tree.  However, if a child is resized as a result of a call to layout, the
    # resize event will invoke the layout of the child.  Note that
    # a layout due to a resize will not flush any cached information
    # (same as <code>layout(false)</code>).
    # </p>
    # <p>
    # Note: Layout is different from painting. If a child is
    # moved or resized such that an area in the parent is
    # exposed, then the parent will paint. If no child is
    # affected, the parent will not paint.
    # </p>
    # 
    # @param changed <code>true</code> if the layout must flush its caches, and <code>false</code> otherwise
    # @param all <code>true</code> if all children in the receiver's widget tree should be laid out, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def layout(changed, all)
      check_widget
      if ((@layout).nil? && !all)
        return
      end
      mark_layout(changed, all)
      update_layout(true, all)
    end
    
    typesig { [Array.typed(Control)] }
    # Forces a lay out (that is, sets the size and location) of all widgets that
    # are in the parent hierarchy of the changed control up to and including the
    # receiver.  The layouts in the hierarchy must not rely on any information
    # cached about the changed control or any of its ancestors.  The layout may
    # (potentially) optimize the work it is doing by assuming that none of the
    # peers of the changed control have changed state since the last layout.
    # If an ancestor does not have a layout, skip it.
    # <p>
    # Note: Layout is different from painting. If a child is
    # moved or resized such that an area in the parent is
    # exposed, then the parent will paint. If no child is
    # affected, the parent will not paint.
    # </p>
    # 
    # @param changed a control that has had a state change which requires a recalculation of its size
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the changed array is null any of its controls are null or have been disposed</li>
    # <li>ERROR_INVALID_PARENT - if any control in changed is not in the widget tree of the receiver</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def layout(changed)
      check_widget
      if ((changed).nil?)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      i = 0
      while i < changed.attr_length
        control = changed[i]
        if ((control).nil?)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (control.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        ancestor = false
        composite = control.attr_parent
        while (!(composite).nil?)
          ancestor = (composite).equal?(self)
          if (ancestor)
            break
          end
          composite = composite.attr_parent
        end
        if (!ancestor)
          error(SWT::ERROR_INVALID_PARENT)
        end
        ((i += 1) - 1)
      end
      update_count = 0
      update = Array.typed(Composite).new(16) { nil }
      i_ = 0
      while i_ < changed.attr_length
        child = changed[i_]
        composite = child.attr_parent
        while (!(child).equal?(self))
          if (!(composite.attr_layout).nil?)
            composite.attr_state |= LAYOUT_NEEDED
            if (!composite.attr_layout.flush_cache(child))
              composite.attr_state |= LAYOUT_CHANGED
            end
          end
          if ((update_count).equal?(update.attr_length))
            new_update = Array.typed(Composite).new(update.attr_length + 16) { nil }
            System.arraycopy(update, 0, new_update, 0, update.attr_length)
            update = new_update
          end
          child = update[((update_count += 1) - 1)] = composite
          composite = child.attr_parent
        end
        ((i_ += 1) - 1)
      end
      i__ = update_count - 1
      while i__ >= 0
        update[i__].update_layout(true, false)
        ((i__ -= 1) + 1)
      end
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def mark_layout(changed, all)
      if (!(@layout).nil?)
        self.attr_state |= LAYOUT_NEEDED
        if (changed)
          self.attr_state |= LAYOUT_CHANGED
        end
      end
      if (all)
        children = __get_children
        i = 0
        while i < children.attr_length
          children[i].mark_layout(changed, all)
          ((i += 1) - 1)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def minimum_size(w_hint, h_hint, changed)
      children = __get_children
      width = 0
      height = 0
      i = 0
      while i < children.attr_length
        rect = children[i].get_bounds
        width = Math.max(width, rect.attr_x + rect.attr_width)
        height = Math.max(height, rect.attr_y + rect.attr_height)
        ((i += 1) - 1)
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def redraw_children
      if (!super)
        return false
      end
      children = __get_children
      i = 0
      while i < children.attr_length
        children[i].redraw_children
        ((i += 1) - 1)
      end
      return true
    end
    
    typesig { [] }
    def release_parent
      super
      if (!((self.attr_state & CANVAS)).equal?(0))
        if (!((self.attr_style & SWT::TRANSPARENT)).equal?(0))
          # long
          hwnd_parent = self.attr_parent.attr_handle
          # long
          hwnd_child = OS._get_window(hwnd_parent, OS::GW_CHILD)
          while (!(hwnd_child).equal?(0))
            if (!(hwnd_child).equal?(self.attr_handle))
              bits = OS._get_window_long(hwnd_parent, OS::GWL_EXSTYLE)
              if (!((bits & OS::WS_EX_TRANSPARENT)).equal?(0))
                return
              end
            end
            hwnd_child = OS._get_window(hwnd_child, OS::GW_HWNDNEXT)
          end
          bits = OS._get_window_long(hwnd_parent, OS::GWL_EXSTYLE)
          bits &= ~OS::WS_EX_COMPOSITED
          OS._set_window_long(hwnd_parent, OS::GWL_EXSTYLE, bits)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      children = __get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        if (!(child).nil? && !child.is_disposed)
          child.release(false)
        end
        ((i += 1) - 1)
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_widget
      super
      if (!((self.attr_state & CANVAS)).equal?(0) && !((self.attr_style & SWT::EMBEDDED)).equal?(0))
        # long
        hwnd_child = OS._get_window(self.attr_handle, OS::GW_CHILD)
        if (!(hwnd_child).equal?(0))
          thread_id = OS._get_window_thread_process_id(hwnd_child, nil)
          if (!(thread_id).equal?(OS._get_current_thread_id))
            OS._show_window(hwnd_child, OS::SW_HIDE)
            OS._set_parent(hwnd_child, 0)
          end
        end
      end
      @layout = nil
      @tab_list = nil
      @lpwp = nil
    end
    
    typesig { [Control] }
    def remove_control(control)
      fix_tab_list(control)
      resize_children
    end
    
    typesig { [] }
    def resize_children
      if ((@lpwp).nil?)
        return
      end
      begin
        current_lpwp = @lpwp
        @lpwp = nil
        if (!resize_children(true, current_lpwp))
          resize_children(false, current_lpwp)
        end
      end while (!(@lpwp).nil?)
    end
    
    typesig { [::Java::Boolean, Array.typed(WINDOWPOS)] }
    def resize_children(defer, pwp)
      if ((pwp).nil?)
        return true
      end
      # long
      hdwp = 0
      if (defer)
        hdwp = OS._begin_defer_window_pos(pwp.attr_length)
        if ((hdwp).equal?(0))
          return false
        end
      end
      i = 0
      while i < pwp.attr_length
        wp = pwp[i]
        if (!(wp).nil?)
          # This code is intentionally commented.  All widgets that
          # are created by SWT have WS_CLIPSIBLINGS to ensure that
          # application code does not draw outside of the control.
          # 
          # int count = parent.getChildrenCount ();
          # if (count > 1) {
          # int bits = OS.GetWindowLong (handle, OS.GWL_STYLE);
          # if ((bits & OS.WS_CLIPSIBLINGS) == 0) wp.flags |= OS.SWP_NOCOPYBITS;
          # }
          if (defer)
            hdwp = _defer_window_pos(hdwp, wp.attr_hwnd, 0, wp.attr_x, wp.attr_y, wp.attr_cx, wp.attr_cy, wp.attr_flags)
            if ((hdwp).equal?(0))
              return false
            end
          else
            _set_window_pos(wp.attr_hwnd, 0, wp.attr_x, wp.attr_y, wp.attr_cx, wp.attr_cy, wp.attr_flags)
          end
        end
        ((i += 1) - 1)
      end
      if (defer)
        return OS._end_defer_window_pos(hdwp)
      end
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def resize_embedded_handle(embedded_handle, width, height)
      if ((embedded_handle).equal?(0))
        return
      end
      process_id = Array.typed(::Java::Int).new(1) { 0 }
      thread_id = OS._get_window_thread_process_id(embedded_handle, process_id)
      if (!(thread_id).equal?(OS._get_current_thread_id))
        if ((process_id[0]).equal?(OS._get_current_process_id))
          if ((self.attr_display.attr_msg_hook).equal?(0))
            if (!OS::IsWinCE)
              self.attr_display.attr_get_msg_callback = Callback.new(self.attr_display, "getMsgProc", 3)
              self.attr_display.attr_get_msg_proc = self.attr_display.attr_get_msg_callback.get_address
              if ((self.attr_display.attr_get_msg_proc).equal?(0))
                error(SWT::ERROR_NO_MORE_CALLBACKS)
              end
              self.attr_display.attr_msg_hook = OS._set_windows_hook_ex(OS::WH_GETMESSAGE, self.attr_display.attr_get_msg_proc, OS._get_library_handle, thread_id)
              OS._post_thread_message(thread_id, OS::WM_NULL, 0, 0)
            end
          end
        end
        flags = OS::SWP_NOZORDER | OS::SWP_DRAWFRAME | OS::SWP_NOACTIVATE | OS::SWP_ASYNCWINDOWPOS
        OS._set_window_pos(embedded_handle, 0, 0, 0, width, height, flags)
      end
    end
    
    typesig { [] }
    def send_resize
      set_resize_children(false)
      super
      if (is_disposed)
        return
      end
      if (!(@layout).nil?)
        mark_layout(false, false)
        update_layout(false, false)
      end
      set_resize_children(true)
    end
    
    typesig { [::Java::Int] }
    # Sets the background drawing mode to the argument which should
    # be one of the following constants defined in class <code>SWT</code>:
    # <code>INHERIT_NONE</code>, <code>INHERIT_DEFAULT</code>,
    # <code>INHERIT_FORCE</code>.
    # 
    # @param mode the new background mode
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT
    # 
    # @since 3.2
    def set_background_mode(mode)
      check_widget
      @background_mode = mode
      children = __get_children
      i = 0
      while i < children.attr_length
        children[i].update_background_mode
        ((i += 1) - 1)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_bounds(x, y, width, height, flags, defer)
      if (self.attr_display.attr_resize_count > Display::RESIZE_LIMIT)
        defer = false
      end
      if (!defer && !((self.attr_state & CANVAS)).equal?(0))
        self.attr_state &= ~RESIZE_OCCURRED | MOVE_OCCURRED
        self.attr_state |= RESIZE_DEFERRED | MOVE_DEFERRED
      end
      super(x, y, width, height, flags, defer)
      if (!defer && !((self.attr_state & CANVAS)).equal?(0))
        was_moved = !((self.attr_state & MOVE_OCCURRED)).equal?(0)
        was_resized = !((self.attr_state & RESIZE_OCCURRED)).equal?(0)
        self.attr_state &= ~(RESIZE_DEFERRED | MOVE_DEFERRED)
        if (was_moved && !is_disposed)
          send_move
        end
        if (was_resized && !is_disposed)
          send_resize
        end
      end
    end
    
    typesig { [] }
    def set_fixed_focus
      check_widget
      children = __get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        if (child.set_radio_focus)
          return true
        end
        ((i += 1) - 1)
      end
      i_ = 0
      while i_ < children.attr_length
        child = children[i_]
        if (child.set_fixed_focus)
          return true
        end
        ((i_ += 1) - 1)
      end
      return super
    end
    
    typesig { [] }
    def set_focus
      check_widget
      children = __get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        if (child.set_radio_focus)
          return true
        end
        ((i += 1) - 1)
      end
      i_ = 0
      while i_ < children.attr_length
        child = children[i_]
        if (child.set_focus)
          return true
        end
        ((i_ += 1) - 1)
      end
      return super
    end
    
    typesig { [SwtLayout] }
    # Sets the layout which is associated with the receiver to be
    # the argument which may be null.
    # 
    # @param layout the receiver's new layout or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_layout(layout_)
      check_widget
      @layout = layout_
    end
    
    typesig { [::Java::Boolean] }
    # If the argument is <code>true</code>, causes subsequent layout
    # operations in the receiver or any of its children to be ignored.
    # No layout of any kind can occur in the receiver or any of its
    # children until the flag is set to false.
    # Layout operations that occurred while the flag was
    # <code>true</code> are remembered and when the flag is set to
    # <code>false</code>, the layout operations are performed in an
    # optimized manner.  Nested calls to this method are stacked.
    # 
    # @param defer the new defer state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #layout(boolean)
    # @see #layout(Control[])
    # 
    # @since 3.1
    def set_layout_deferred(defer)
      if (!defer)
        if (((@layout_count -= 1)).equal?(0))
          if (!((self.attr_state & LAYOUT_CHILD)).equal?(0) || !((self.attr_state & LAYOUT_NEEDED)).equal?(0))
            update_layout(true, true)
          end
        end
      else
        ((@layout_count += 1) - 1)
      end
    end
    
    typesig { [Array.typed(Control)] }
    # Sets the tabbing order for the specified controls to
    # match the order that they occur in the argument list.
    # 
    # @param tabList the ordered list of controls representing the tab order or null
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if a widget in the tabList is null or has been disposed</li>
    # <li>ERROR_INVALID_PARENT - if widget in the tabList is not in the same widget tree</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_tab_list(tab_list)
      check_widget
      if (!(tab_list).nil?)
        i = 0
        while i < tab_list.attr_length
          control = tab_list[i]
          if ((control).nil?)
            error(SWT::ERROR_INVALID_ARGUMENT)
          end
          if (control.is_disposed)
            error(SWT::ERROR_INVALID_ARGUMENT)
          end
          if (!(control.attr_parent).equal?(self))
            error(SWT::ERROR_INVALID_PARENT)
          end
          ((i += 1) - 1)
        end
        new_list = Array.typed(Control).new(tab_list.attr_length) { nil }
        System.arraycopy(tab_list, 0, new_list, 0, tab_list.attr_length)
        tab_list = new_list
      end
      @tab_list = tab_list
    end
    
    typesig { [::Java::Boolean] }
    def set_resize_children(resize)
      if (resize)
        resize_children
      else
        if (self.attr_display.attr_resize_count > Display::RESIZE_LIMIT)
          return
        end
        count = get_children_count
        if (count > 1 && (@lpwp).nil?)
          @lpwp = Array.typed(WINDOWPOS).new(count) { nil }
        end
      end
    end
    
    typesig { [] }
    def set_tab_group_focus
      if (is_tab_item)
        return set_tab_item_focus
      end
      take_focus = ((self.attr_style & SWT::NO_FOCUS)).equal?(0)
      if (!((self.attr_state & CANVAS)).equal?(0))
        take_focus = hooks_keys
        if (!((self.attr_style & SWT::EMBEDDED)).equal?(0))
          take_focus = true
        end
      end
      if (take_focus && set_tab_item_focus)
        return true
      end
      children = __get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        if (child.is_tab_item && child.set_radio_focus)
          return true
        end
        ((i += 1) - 1)
      end
      i_ = 0
      while i_ < children.attr_length
        child = children[i_]
        if (child.is_tab_item && !child.is_tab_group && child.set_tab_item_focus)
          return true
        end
        ((i_ += 1) - 1)
      end
      return false
    end
    
    typesig { [NMTTDISPINFO] }
    def tool_tip_text(hdr)
      shell = get_shell
      if (((hdr.attr_u_flags & OS::TTF_IDISHWND)).equal?(0))
        string = nil
        # 64
        tool_tip = shell.find_tool_tip(RJava.cast_to_int(hdr.attr_id_from))
        if (!(tool_tip).nil?)
          string = (tool_tip.attr_message).to_s
          if ((string).nil? || (string.length).equal?(0))
            string = " "
          end
        end
        return string
      end
      shell.set_tool_tip_title(hdr.attr_hwnd_from, nil, 0)
      OS._send_message(hdr.attr_hwnd_from, OS::TTM_SETMAXTIPWIDTH, 0, 0x7fff)
      control = self.attr_display.get_control(hdr.attr_id_from)
      return !(control).nil? ? control.attr_tool_tip_text : nil
    end
    
    typesig { [Event, Control] }
    def translate_mnemonic(event, control)
      if (super(event, control))
        return true
      end
      if (!(control).nil?)
        children = __get_children
        i = 0
        while i < children.attr_length
          child = children[i]
          if (child.translate_mnemonic(event, control))
            return true
          end
          ((i += 1) - 1)
        end
      end
      return false
    end
    
    typesig { [MSG] }
    def translate_traversal(msg)
      if (!((self.attr_state & CANVAS)).equal?(0))
        if (!((self.attr_style & SWT::EMBEDDED)).equal?(0))
          return false
        end
        # 64
        case (RJava.cast_to_int(msg.attr_w_param))
        when OS::VK_UP, OS::VK_LEFT, OS::VK_DOWN, OS::VK_RIGHT, OS::VK_PRIOR, OS::VK_NEXT
          # 64
          ui_state = RJava.cast_to_int(OS._send_message(msg.attr_hwnd, OS::WM_QUERYUISTATE, 0, 0))
          if (!((ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
            OS._send_message(msg.attr_hwnd, OS::WM_UPDATEUISTATE, OS._makewparam(OS::UIS_CLEAR, OS::UISF_HIDEFOCUS), 0)
          end
        end
      end
      return super(msg)
    end
    
    typesig { [] }
    def update_background_color
      super
      children = __get_children
      i = 0
      while i < children.attr_length
        if (!((children[i].attr_state & PARENT_BACKGROUND)).equal?(0))
          children[i].update_background_color
        end
        ((i += 1) - 1)
      end
    end
    
    typesig { [] }
    def update_background_image
      super
      children = __get_children
      i = 0
      while i < children.attr_length
        if (!((children[i].attr_state & PARENT_BACKGROUND)).equal?(0))
          children[i].update_background_image
        end
        ((i += 1) - 1)
      end
    end
    
    typesig { [] }
    def update_background_mode
      super
      children = __get_children
      i = 0
      while i < children.attr_length
        children[i].update_background_mode
        ((i += 1) - 1)
      end
    end
    
    typesig { [Font, Font] }
    def update_font(old_font, new_font)
      super(old_font, new_font)
      children = __get_children
      i = 0
      while i < children.attr_length
        control = children[i]
        if (!control.is_disposed)
          control.update_font(old_font, new_font)
        end
        ((i += 1) - 1)
      end
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def update_layout(resize, all)
      parent = find_deferred_control
      if (!(parent).nil?)
        parent.attr_state |= LAYOUT_CHILD
        return
      end
      if (!((self.attr_state & LAYOUT_NEEDED)).equal?(0))
        changed = !((self.attr_state & LAYOUT_CHANGED)).equal?(0)
        self.attr_state &= ~(LAYOUT_NEEDED | LAYOUT_CHANGED)
        if (resize)
          set_resize_children(false)
        end
        @layout.layout(self, changed)
        if (resize)
          set_resize_children(true)
        end
      end
      if (all)
        self.attr_state &= ~LAYOUT_CHILD
        children = __get_children
        i = 0
        while i < children.attr_length
          children[i].update_layout(resize, all)
          ((i += 1) - 1)
        end
      end
    end
    
    typesig { [] }
    def update_uistate
      # long
      hwnd_shell = get_shell.attr_handle
      # 64
      ui_state = RJava.cast_to_int(OS._send_message(hwnd_shell, OS::WM_QUERYUISTATE, 0, 0))
      if (!((ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
        OS._send_message(hwnd_shell, OS::WM_CHANGEUISTATE, OS._makewparam(OS::UIS_CLEAR, OS::UISF_HIDEFOCUS), 0)
      end
    end
    
    typesig { [] }
    def widget_style
      # Force clipping of children by setting WS_CLIPCHILDREN
      return super | OS::WS_CLIPCHILDREN
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_erasebkgnd(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!((self.attr_state & CANVAS)).equal?(0))
        # Return zero to indicate that the background was not erased
        if (!((self.attr_style & (SWT::NO_BACKGROUND | SWT::TRANSPARENT))).equal?(0))
          return LRESULT::ZERO
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getdlgcode(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!((self.attr_state & CANVAS)).equal?(0))
        flags = 0
        if (hooks_keys)
          flags |= OS::DLGC_WANTALLKEYS | OS::DLGC_WANTARROWS | OS::DLGC_WANTTAB
        end
        if (!((self.attr_style & SWT::NO_FOCUS)).equal?(0))
          flags |= OS::DLGC_STATIC
        end
        if (!(OS._get_window(self.attr_handle, OS::GW_CHILD)).equal?(0))
          flags |= OS::DLGC_STATIC
        end
        if (!(flags).equal?(0))
          return LRESULT.new(flags)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getfont(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # long
      code = call_window_proc(self.attr_handle, OS::WM_GETFONT, w_param, l_param)
      if (!(code).equal?(0))
        return LRESULT.new(code)
      end
      return LRESULT.new(!(self.attr_font).nil? ? self.attr_font.attr_handle : default_font)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      result = super(w_param, l_param)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      # Set focus for a canvas with no children
      if (!((self.attr_state & CANVAS)).equal?(0))
        if (((self.attr_style & SWT::NO_FOCUS)).equal?(0) && hooks_keys)
          if ((OS._get_window(self.attr_handle, OS::GW_CHILD)).equal?(0))
            set_focus
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_nchittest(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug in Windows.  For some reason, under circumstances
      # that are not understood, when one scrolled window is
      # embedded in another and the outer window scrolls the
      # inner horizontally by moving the location of the inner
      # one, the vertical scroll bars of the inner window no
      # longer function.  Specifically, WM_NCHITTEST returns
      # HTCLIENT instead of HTVSCROLL.  The fix is to detect
      # the case where the result of WM_NCHITTEST is HTCLIENT
      # and the point is not in the client area, and redraw
      # the trim, which somehow fixes the next WM_NCHITTEST.
      if (!OS::IsWinCE && OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        if (!((self.attr_state & CANVAS)).equal?(0))
          # long
          code = call_window_proc(self.attr_handle, OS::WM_NCHITTEST, w_param, l_param)
          if ((code).equal?(OS::HTCLIENT))
            rect = RECT.new
            OS._get_client_rect(self.attr_handle, rect)
            pt = POINT.new
            pt.attr_x = OS._get_x_lparam(l_param)
            pt.attr_y = OS._get_y_lparam(l_param)
            OS._map_window_points(0, self.attr_handle, pt, 1)
            if (!OS._pt_in_rect(rect, pt))
              flags = OS::RDW_FRAME | OS::RDW_INVALIDATE
              OS._redraw_window(self.attr_handle, nil, 0, flags)
            end
          end
          return LRESULT.new(code)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_parentnotify(w_param, l_param)
      if (!((self.attr_state & CANVAS)).equal?(0) && !((self.attr_style & SWT::EMBEDDED)).equal?(0))
        if ((OS._loword(w_param)).equal?(OS::WM_CREATE))
          rect = RECT.new
          OS._get_client_rect(self.attr_handle, rect)
          resize_embedded_handle(l_param, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_paint(w_param, l_param)
      if (((self.attr_state & CANVAS)).equal?(0) || !((self.attr_state & FOREIGN_HANDLE)).equal?(0))
        return super(w_param, l_param)
      end
      # Set the clipping bits
      old_bits = 0
      new_bits = 0
      if (!OS::IsWinCE)
        old_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        new_bits = old_bits | OS::WS_CLIPSIBLINGS | OS::WS_CLIPCHILDREN
        if (!(new_bits).equal?(old_bits))
          OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
        end
      end
      # Paint the control and the background
      ps = PAINTSTRUCT.new
      if (hooks(SWT::Paint))
        # Use the buffered paint when possible
        buffered_paint = false
        if (!((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0))
          if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
            if (((self.attr_style & (SWT::NO_MERGE_PAINTS | SWT::RIGHT_TO_LEFT))).equal?(0))
              if (((self.attr_style & SWT::TRANSPARENT)).equal?(0))
                buffered_paint = true
              end
            end
          end
        end
        if (buffered_paint)
          # long
          h_dc = OS._begin_paint(self.attr_handle, ps)
          width = ps.attr_right - ps.attr_left
          height = ps.attr_bottom - ps.attr_top
          if (!(width).equal?(0) && !(height).equal?(0))
            # long
            # long
            phdc = Array.typed(::Java::Int).new(1) { 0 }
            flags = OS::BPBF_COMPATIBLEBITMAP
            prc_target = RECT.new
            OS._set_rect(prc_target, ps.attr_left, ps.attr_top, ps.attr_right, ps.attr_bottom)
            # long
            h_buffered_paint = OS._begin_buffered_paint(h_dc, prc_target, flags, nil, phdc)
            data = SwtGCData.new
            data.attr_device = self.attr_display
            data.attr_foreground = get_foreground_pixel
            control = find_background_control
            if ((control).nil?)
              control = self
            end
            data.attr_background = control.get_background_pixel
            data.attr_font = Font.win32_new(self.attr_display, OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0))
            # 64
            data.attr_ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
            if (!((self.attr_style & SWT::NO_BACKGROUND)).equal?(0))
              # This code is intentionally commented because it may be slow to copy bits from the screen
              # paintGC.copyArea (image, ps.left, ps.top);
            else
              rect = RECT.new
              OS._set_rect(rect, ps.attr_left, ps.attr_top, ps.attr_right, ps.attr_bottom)
              draw_background(phdc[0], rect)
            end
            gc = SwtGC.win32_new(phdc[0], data)
            event = Event.new
            event.attr_gc = gc
            event.attr_x = ps.attr_left
            event.attr_y = ps.attr_top
            event.attr_width = width
            event.attr_height = height
            send_event(SWT::Paint, event)
            if (data.attr_focus_drawn && !is_disposed)
              update_uistate
            end
            gc.dispose
            OS._end_buffered_paint(h_buffered_paint, true)
          end
          OS._end_paint(self.attr_handle, ps)
        else
          # Create the paint GC
          data = SwtGCData.new
          data.attr_ps = ps
          data.attr_hwnd = self.attr_handle
          gc = SwtGC.win32_new(self, data)
          # Get the system region for the paint HDC
          # long
          sys_rgn = 0
          if (!((self.attr_style & (SWT::DOUBLE_BUFFERED | SWT::TRANSPARENT))).equal?(0) || !((self.attr_style & SWT::NO_MERGE_PAINTS)).equal?(0))
            sys_rgn = OS._create_rect_rgn(0, 0, 0, 0)
            if ((OS._get_random_rgn(gc.attr_handle, sys_rgn, OS::SYSRGN)).equal?(1))
              if (OS::WIN32_VERSION >= OS._version(4, 10))
                if (!((OS._get_layout(gc.attr_handle) & OS::LAYOUT_RTL)).equal?(0))
                  n_bytes = OS._get_region_data(sys_rgn, 0, nil)
                  lp_rgn_data = Array.typed(::Java::Int).new(n_bytes / 4) { 0 }
                  OS._get_region_data(sys_rgn, n_bytes, lp_rgn_data)
                  # long
                  new_sys_rgn = OS._ext_create_region(Array.typed(::Java::Float).new([-1, 0, 0, 1, 0, 0]), n_bytes, lp_rgn_data)
                  OS._delete_object(sys_rgn)
                  sys_rgn = new_sys_rgn
                end
              end
              if (OS::IsWinNT)
                pt = POINT.new
                OS._map_window_points(0, self.attr_handle, pt, 1)
                OS._offset_rgn(sys_rgn, pt.attr_x, pt.attr_y)
              end
            end
          end
          # Send the paint event
          width = ps.attr_right - ps.attr_left
          height = ps.attr_bottom - ps.attr_top
          if (!(width).equal?(0) && !(height).equal?(0))
            paint_gc = nil
            image = nil
            if (!((self.attr_style & (SWT::DOUBLE_BUFFERED | SWT::TRANSPARENT))).equal?(0))
              image = Image.new(self.attr_display, width, height)
              paint_gc = gc
              gc = SwtGC.new(image, paint_gc.get_style & SWT::RIGHT_TO_LEFT)
              gc_data = gc.get_gcdata
              gc_data.attr_ui_state = data.attr_ui_state
              gc.set_foreground(get_foreground)
              gc.set_background(get_background)
              gc.set_font(get_font)
              if (!((self.attr_style & SWT::TRANSPARENT)).equal?(0))
                OS._bit_blt(gc.attr_handle, 0, 0, width, height, paint_gc.attr_handle, ps.attr_left, ps.attr_top, OS::SRCCOPY)
              end
              OS._offset_rgn(sys_rgn, -ps.attr_left, -ps.attr_top)
              OS._select_clip_rgn(gc.attr_handle, sys_rgn)
              OS._offset_rgn(sys_rgn, ps.attr_left, ps.attr_top)
              OS._set_meta_rgn(gc.attr_handle)
              OS._set_window_org_ex(gc.attr_handle, ps.attr_left, ps.attr_top, nil)
              OS._set_brush_org_ex(gc.attr_handle, ps.attr_left, ps.attr_top, nil)
              if (!((self.attr_style & (SWT::NO_BACKGROUND | SWT::TRANSPARENT))).equal?(0))
                # This code is intentionally commented because it may be slow to copy bits from the screen
                # paintGC.copyArea (image, ps.left, ps.top);
              else
                rect = RECT.new
                OS._set_rect(rect, ps.attr_left, ps.attr_top, ps.attr_right, ps.attr_bottom)
                draw_background(gc.attr_handle, rect)
              end
            end
            event = Event.new
            event.attr_gc = gc
            rect = nil
            if (!((self.attr_style & SWT::NO_MERGE_PAINTS)).equal?(0) && (OS._get_rgn_box(sys_rgn, rect = RECT.new)).equal?(OS::COMPLEXREGION))
              n_bytes = OS._get_region_data(sys_rgn, 0, nil)
              lp_rgn_data = Array.typed(::Java::Int).new(n_bytes / 4) { 0 }
              OS._get_region_data(sys_rgn, n_bytes, lp_rgn_data)
              count = lp_rgn_data[2]
              i = 0
              while i < count
                offset = 8 + (i << 2)
                OS._set_rect(rect, lp_rgn_data[offset], lp_rgn_data[offset + 1], lp_rgn_data[offset + 2], lp_rgn_data[offset + 3])
                if (((self.attr_style & (SWT::DOUBLE_BUFFERED | SWT::NO_BACKGROUND | SWT::TRANSPARENT))).equal?(0))
                  draw_background(gc.attr_handle, rect)
                end
                event.attr_x = rect.attr_left
                event.attr_y = rect.attr_top
                event.attr_width = rect.attr_right - rect.attr_left
                event.attr_height = rect.attr_bottom - rect.attr_top
                event.attr_count = count - 1 - i
                send_event(SWT::Paint, event)
                ((i += 1) - 1)
              end
            else
              if (((self.attr_style & (SWT::DOUBLE_BUFFERED | SWT::NO_BACKGROUND | SWT::TRANSPARENT))).equal?(0))
                if ((rect).nil?)
                  rect = RECT.new
                end
                OS._set_rect(rect, ps.attr_left, ps.attr_top, ps.attr_right, ps.attr_bottom)
                draw_background(gc.attr_handle, rect)
              end
              event.attr_x = ps.attr_left
              event.attr_y = ps.attr_top
              event.attr_width = width
              event.attr_height = height
              send_event(SWT::Paint, event)
            end
            # widget could be disposed at this point
            event.attr_gc = nil
            if (!((self.attr_style & (SWT::DOUBLE_BUFFERED | SWT::TRANSPARENT))).equal?(0))
              if (!gc.is_disposed)
                gc_data = gc.get_gcdata
                if (gc_data.attr_focus_drawn && !is_disposed)
                  update_uistate
                end
              end
              gc.dispose
              if (!is_disposed)
                paint_gc.draw_image(image, ps.attr_left, ps.attr_top)
              end
              image.dispose
              gc = paint_gc
            end
          end
          if (!(sys_rgn).equal?(0))
            OS._delete_object(sys_rgn)
          end
          if (data.attr_focus_drawn && !is_disposed)
            update_uistate
          end
          # Dispose the paint GC
          gc.dispose
        end
      else
        # long
        h_dc = OS._begin_paint(self.attr_handle, ps)
        if (((self.attr_style & (SWT::NO_BACKGROUND | SWT::TRANSPARENT))).equal?(0))
          rect = RECT.new
          OS._set_rect(rect, ps.attr_left, ps.attr_top, ps.attr_right, ps.attr_bottom)
          draw_background(h_dc, rect)
        end
        OS._end_paint(self.attr_handle, ps)
      end
      # Restore the clipping bits
      if (!OS::IsWinCE && !is_disposed)
        if (!(new_bits).equal?(old_bits))
          # It is possible (but unlikely), that application
          # code could have disposed the widget in the paint
          # event.  If this happens, don't attempt to restore
          # the style.
          if (!is_disposed)
            OS._set_window_long(self.attr_handle, OS::GWL_STYLE, old_bits)
          end
        end
      end
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_printclient(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!((self.attr_state & CANVAS)).equal?(0))
        force_resize
        n_saved_dc = OS._save_dc(w_param)
        rect = RECT.new
        OS._get_client_rect(self.attr_handle, rect)
        if (((self.attr_style & (SWT::NO_BACKGROUND | SWT::TRANSPARENT))).equal?(0))
          draw_background(w_param, rect)
        end
        if (hooks(SWT::Paint) || filters(SWT::Paint))
          data = SwtGCData.new
          data.attr_device = self.attr_display
          data.attr_foreground = get_foreground_pixel
          control = find_background_control
          if ((control).nil?)
            control = self
          end
          data.attr_background = control.get_background_pixel
          data.attr_font = Font.win32_new(self.attr_display, OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0))
          # 64
          data.attr_ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
          gc = SwtGC.win32_new(w_param, data)
          event = Event.new
          event.attr_gc = gc
          event.attr_x = rect.attr_left
          event.attr_y = rect.attr_top
          event.attr_width = rect.attr_right - rect.attr_left
          event.attr_height = rect.attr_bottom - rect.attr_top
          send_event(SWT::Paint, event)
          event.attr_gc = nil
          gc.dispose
        end
        OS._restore_dc(w_param, n_saved_dc)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfont(w_param, l_param)
      if (!(l_param).equal?(0))
        OS._invalidate_rect(self.attr_handle, nil, true)
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      result = nil
      if (!((self.attr_state & RESIZE_DEFERRED)).equal?(0))
        result = super(w_param, l_param)
      else
        # Begin deferred window positioning
        set_resize_children(false)
        # Resize and Layout
        result = super(w_param, l_param)
        # It is possible (but unlikely), that application
        # code could have disposed the widget in the resize
        # event.  If this happens, end the processing of the
        # Windows message by returning the result of the
        # WM_SIZE message.
        if (is_disposed)
          return result
        end
        if (!(@layout).nil?)
          mark_layout(false, false)
          update_layout(false, false)
        end
        # End deferred window positioning
        set_resize_children(true)
      end
      # Damage the widget to cause a repaint
      if (OS._is_window_visible(self.attr_handle))
        if (!((self.attr_state & CANVAS)).equal?(0))
          if (((self.attr_style & SWT::NO_REDRAW_RESIZE)).equal?(0))
            if (hooks(SWT::Paint))
              OS._invalidate_rect(self.attr_handle, nil, true)
            end
          end
        end
        if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
          if (!(find_theme_control).nil?)
            redraw_children
          end
        end
      end
      # Resize the embedded window
      if (!((self.attr_state & CANVAS)).equal?(0) && !((self.attr_style & SWT::EMBEDDED)).equal?(0))
        resize_embedded_handle(OS._get_window(self.attr_handle, OS::GW_CHILD), OS._loword(l_param), OS._hiword(l_param))
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_syscolorchange(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # long
      hwnd_child = OS._get_window(self.attr_handle, OS::GW_CHILD)
      while (!(hwnd_child).equal?(0))
        OS._send_message(hwnd_child, OS::WM_SYSCOLORCHANGE, 0, 0)
        hwnd_child = OS._get_window(hwnd_child, OS::GW_HWNDNEXT)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_syscommand(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Check to see if the command is a system command or
      # a user menu item that was added to the system menu.
      # 
      # NOTE: This is undocumented.
      if (((w_param & 0xf000)).equal?(0))
        return result
      end
      # Bug in Windows.  When a vertical or horizontal scroll bar is
      # hidden or shown while the opposite scroll bar is being scrolled
      # by the user (with WM_HSCROLL code SB_LINEDOWN), the scroll bar
      # does not redraw properly.  The fix is to detect this case and
      # redraw the non-client area.
      if (!OS::IsWinCE)
        # 64
        cmd = RJava.cast_to_int(w_param) & 0xfff0
        case (cmd)
        when OS::SC_HSCROLL, OS::SC_VSCROLL
          show_hbar = !(self.attr_horizontal_bar).nil? && self.attr_horizontal_bar.get_visible
          show_vbar = !(self.attr_vertical_bar).nil? && self.attr_vertical_bar.get_visible
          # long
          code = call_window_proc(self.attr_handle, OS::WM_SYSCOMMAND, w_param, l_param)
          if ((!(show_hbar).equal?((!(self.attr_horizontal_bar).nil? && self.attr_horizontal_bar.get_visible))) || (!(show_vbar).equal?((!(self.attr_vertical_bar).nil? && self.attr_vertical_bar.get_visible))))
            flags = OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_UPDATENOW
            OS._redraw_window(self.attr_handle, nil, 0, flags)
          end
          if ((code).equal?(0))
            return LRESULT::ZERO
          end
          return LRESULT.new(code)
        end
      end
      # Return the result
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_updateuistate(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!((self.attr_state & CANVAS)).equal?(0) && hooks(SWT::Paint))
        OS._invalidate_rect(self.attr_handle, nil, true)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_ncpaint(hwnd, w_param, l_param)
      result = super(hwnd, w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # long
      border_handle_ = border_handle
      if (!((self.attr_state & CANVAS)).equal?(0) || ((hwnd).equal?(border_handle_) && !(self.attr_handle).equal?(border_handle_)))
        if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
          bits1 = OS._get_window_long(hwnd, OS::GWL_EXSTYLE)
          if (!((bits1 & OS::WS_EX_CLIENTEDGE)).equal?(0))
            # long
            code = 0
            bits2 = OS._get_window_long(hwnd, OS::GWL_STYLE)
            if (!((bits2 & (OS::WS_HSCROLL | OS::WS_VSCROLL))).equal?(0))
              code = call_window_proc(hwnd, OS::WM_NCPAINT, w_param, l_param)
            end
            # long
            h_dc = OS._get_window_dc(hwnd)
            rect = RECT.new
            OS._get_window_rect(hwnd, rect)
            rect.attr_right -= rect.attr_left
            rect.attr_bottom -= rect.attr_top
            rect.attr_left = rect.attr_top = 0
            border = OS._get_system_metrics(OS::SM_CXEDGE)
            OS._exclude_clip_rect(h_dc, border, border, rect.attr_right - border, rect.attr_bottom - border)
            OS._draw_theme_background(self.attr_display.h_edit_theme, h_dc, OS::EP_EDITTEXT, OS::ETS_NORMAL, rect, nil)
            OS._release_dc(hwnd, h_dc)
            return LRESULT.new(code)
          end
        end
      end
      return result
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify(hdr, w_param, l_param)
      if (!OS::IsWinCE)
        catch(:break_case) do
          case (hdr.attr_code)
          # Feature in Windows.  When the tool tip control is
          # created, the parent of the tool tip is the shell.
          # If SetParent () is used to reparent the tool bar
          # into a new shell, the tool tip is not reparented
          # and pops up underneath the new shell.  The fix is
          # to make sure the tool tip is a topmost window.
          # 
          # 
          # Bug in Windows 98.  For some reason, the tool bar control
          # sends both TTN_GETDISPINFOW and TTN_GETDISPINFOA to get
          # the tool tip text and the tab folder control sends only
          # TTN_GETDISPINFOW.  The fix is to handle only TTN_GETDISPINFOW,
          # even though it should never be sent on Windows 98.
          # 
          # NOTE:  Because the size of NMTTDISPINFO differs between
          # Windows 98 and NT, guard against the case where the wrong
          # kind of message occurs by inlining the memory moves and
          # the UNICODE conversion code.
          when OS::TTN_SHOW, OS::TTN_POP
            # Bug in Windows 98 and NT.  Setting the tool tip to be the
            # top most window using HWND_TOPMOST can result in a parent
            # dialog shell being moved behind its parent if the dialog
            # has a sibling that is currently on top.  The fix is to
            # lock the z-order of the active window.
            # 
            # Feature in Windows.  Using SetWindowPos() with HWND_NOTOPMOST
            # to clear the topmost state of a window whose parent is already
            # topmost clears the topmost state of the parent.  The fix is to
            # check if the parent is already on top and neither set or clear
            # the topmost status of the tool tip.
            # 
            # long
            hwnd_parent = hdr.attr_hwnd_from
            begin
              hwnd_parent = OS._get_parent(hwnd_parent)
              if ((hwnd_parent).equal?(0))
                break
              end
              bits = OS._get_window_long(hwnd_parent, OS::GWL_EXSTYLE)
              if (!((bits & OS::WS_EX_TOPMOST)).equal?(0))
                break
              end
            end while (true)
            if (!(hwnd_parent).equal?(0))
              throw :break_case, :thrown
            end
            self.attr_display.attr_lock_active_window = true
            flags = OS::SWP_NOACTIVATE | OS::SWP_NOMOVE | OS::SWP_NOSIZE
            # long
            hwnd_insert_after = (hdr.attr_code).equal?(OS::TTN_SHOW) ? OS::HWND_TOPMOST : OS::HWND_NOTOPMOST
            _set_window_pos(hdr.attr_hwnd_from, hwnd_insert_after, 0, 0, 0, 0, flags)
            self.attr_display.attr_lock_active_window = false
          when OS::TTN_GETDISPINFOA, OS::TTN_GETDISPINFOW
            lpnmtdi = nil
            if ((hdr.attr_code).equal?(OS::TTN_GETDISPINFOA))
              lpnmtdi = NMTTDISPINFOA.new
              OS._move_memory(lpnmtdi, l_param, NMTTDISPINFOA.attr_sizeof)
            else
              lpnmtdi = NMTTDISPINFOW.new
              OS._move_memory(lpnmtdi, l_param, NMTTDISPINFOW.attr_sizeof)
            end
            string = tool_tip_text(lpnmtdi)
            if (!(string).nil?)
              shell = get_shell
              string = (Display.with_cr_lf(string)).to_s
              chars = fix_mnemonic(string)
              # Ensure that the orientation of the tool tip matches
              # the orientation of the control.
              widget = nil
              # long
              hwnd = hdr.attr_id_from
              if (!((lpnmtdi.attr_u_flags & OS::TTF_IDISHWND)).equal?(0))
                widget = self.attr_display.get_control(hwnd)
              else
                if ((hdr.attr_hwnd_from).equal?(shell.attr_tool_tip_handle) || (hdr.attr_hwnd_from).equal?(shell.attr_balloon_tip_handle))
                  # 64
                  widget = shell.find_tool_tip(RJava.cast_to_int(hdr.attr_id_from))
                end
              end
              if (!(widget).nil?)
                if (!((widget.get_style & SWT::RIGHT_TO_LEFT)).equal?(0))
                  lpnmtdi.attr_u_flags |= OS::TTF_RTLREADING
                else
                  lpnmtdi.attr_u_flags &= ~OS::TTF_RTLREADING
                end
              end
              if ((hdr.attr_code).equal?(OS::TTN_GETDISPINFOA))
                bytes = Array.typed(::Java::Byte).new(chars.attr_length * 2) { 0 }
                OS._wide_char_to_multi_byte(get_code_page, 0, chars, chars.attr_length, bytes, bytes.attr_length, nil, nil)
                shell.set_tool_tip_text(lpnmtdi, bytes)
                OS._move_memory(l_param, lpnmtdi, NMTTDISPINFOA.attr_sizeof)
              else
                shell.set_tool_tip_text(lpnmtdi, chars)
                OS._move_memory(l_param, lpnmtdi, NMTTDISPINFOW.attr_sizeof)
              end
              return LRESULT::ZERO
            end
          end
        end
      end
      return super(hdr, w_param, l_param)
    end
    
    private
    alias_method :initialize__composite, :initialize
  end
  
end
