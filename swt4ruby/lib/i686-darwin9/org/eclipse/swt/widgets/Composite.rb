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
  module CompositeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Accessibility
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # same value as <code>EMBEDDED</code> which is used to embed widgets from other
  # widget toolkits into SWT.  On some operating systems (GTK, Motif), this may cause
  # the children of this composite to be obscured.
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
    def initialize
      @layout = nil
      @tab_list = nil
      @layout_count = 0
      @background_mode = 0
      super()
      # Do nothing
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
    # @see SWT#EMBEDDED
    # @see SWT#DOUBLE_BUFFERED
    # @see Widget#getStyle
    def initialize(parent, style)
      @layout = nil
      @tab_list = nil
      @layout_count = 0
      @background_mode = 0
      super(parent, style)
    end
    
    typesig { [] }
    def __get_children
      views = content_view.subviews
      # 64
      count_ = RJava.cast_to_int(views.count)
      children = Array.typed(Control).new(count_) { nil }
      if ((count_).equal?(0))
        return children
      end
      j = 0
      i = 0
      while i < count_
        widget = self.attr_display.get_widget(views.object_at_index(count_ - i - 1).attr_id)
        if (!(widget).nil? && !(widget).equal?(self) && widget.is_a?(Control))
          children[((j += 1) - 1)] = widget
        end
        i += 1
      end
      if ((j).equal?(count_))
        return children
      end
      new_children = Array.typed(Control).new(j) { nil }
      System.arraycopy(children, 0, new_children, 0, j)
      return new_children
    end
    
    typesig { [] }
    def __get_tab_list
      if ((@tab_list).nil?)
        return nil
      end
      count_ = 0
      i = 0
      while i < @tab_list.attr_length
        if (!@tab_list[i].is_disposed)
          count_ += 1
        end
        i += 1
      end
      if ((count_).equal?(@tab_list.attr_length))
        return @tab_list
      end
      new_list = Array.typed(Control).new(count_) { nil }
      index = 0
      i_ = 0
      while i_ < @tab_list.attr_length
        if (!@tab_list[i_].is_disposed)
          new_list[((index += 1) - 1)] = @tab_list[i_]
        end
        i_ += 1
      end
      @tab_list = new_list
      return @tab_list
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def accepts_first_responder(id, sel)
      if (!((self.attr_state & CANVAS)).equal?(0))
        if (((self.attr_style & SWT::NO_FOCUS)).equal?(0) && hooks_keys)
          if ((content_view.subviews.count).equal?(0))
            return true
          end
        end
        return false
      end
      return super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_attribute_names(id, sel)
      if ((id).equal?(self.attr_view.attr_id))
        if (!(self.attr_accessible).nil?)
          # If there is an accessible, it may provide its own list of attributes if it's a lightweight control.
          # If not, let Cocoa handle it for this view.
          return_object = self.attr_accessible.internal_accessibility_attribute_names(ACC::CHILDID_SELF)
          if (!(return_object).nil?)
            return return_object.attr_id
          end
        end
      end
      return super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def accessibility_is_ignored(id, sel)
      # If we have an accessible and it represents a valid accessible role, this view is not ignored.
      if (!(self.attr_view).nil? && (id).equal?(self.attr_view.attr_id))
        if (!(self.attr_accessible).nil?)
          role = self.attr_accessible.internal_accessibility_attribute_value(OS::NSAccessibilityRoleAttribute, ACC::CHILDID_SELF)
          if (!(role).nil?)
            return false
          end
        end
      end
      return super(id, sel)
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
        i += 1
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
        i_ += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      size = nil
      if (!(@layout).nil?)
        if (((w_hint).equal?(SWT::DEFAULT)) || ((h_hint).equal?(SWT::DEFAULT)))
          changed |= !((self.attr_state & LAYOUT_CHANGED)).equal?(0)
          size = @layout.compute_size(self, w_hint, h_hint, changed)
          self.attr_state &= ~LAYOUT_CHANGED
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
          new_result = Array.typed(Widget).new(result.attr_length + child_list.attr_length) { nil }
          System.arraycopy(result, 0, new_result, 0, result.attr_length)
          System.arraycopy(child_list, 0, new_result, result.attr_length, child_list.attr_length)
          result = new_result
        end
        i += 1
      end
      return result
    end
    
    typesig { [] }
    def create_handle
      self.attr_state |= CANVAS
      scrolled = !((self.attr_style & (SWT::V_SCROLL | SWT::H_SCROLL))).equal?(0)
      if (!scrolled)
        self.attr_state |= THEME_BACKGROUND
      end
      rect = NSRect.new
      if (scrolled || has_border)
        scroll_widget = SWTScrollView.new.alloc
        scroll_widget.init_with_frame(rect)
        scroll_widget.set_draws_background(false)
        if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
          scroll_widget.set_has_horizontal_scroller(true)
        end
        if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
          scroll_widget.set_has_vertical_scroller(true)
        end
        scroll_widget.set_border_type(has_border ? OS::NSBezelBorder : OS::NSNoBorder)
        self.attr_scroll_view = scroll_widget
      end
      widget = SWTCanvasView.new.alloc
      widget.init_with_frame(rect)
      # widget.setFocusRingType(OS.NSFocusRingTypeExterior);
      self.attr_view = widget
      if (!(self.attr_scroll_view).nil?)
        content_view_ = self.attr_scroll_view.content_view
        content_view_.set_autoresizes_subviews(true)
        self.attr_view.set_autoresizing_mask(OS::NSViewWidthSizable | OS::NSViewHeightSizable)
      end
    end
    
    typesig { [::Java::Int, NSGraphicsContext, NSRect] }
    # long
    def draw_background(id, context, rect)
      if (!(id).equal?(self.attr_view.attr_id))
        return
      end
      if (!((self.attr_state & CANVAS)).equal?(0))
        if (((self.attr_style & SWT::NO_BACKGROUND)).equal?(0))
          fill_background(self.attr_view, context, rect, -1)
        end
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
        i += 1
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
        i += 1
      end
    end
    
    typesig { [Control] }
    def fix_tab_list(control)
      if ((@tab_list).nil?)
        return
      end
      count_ = 0
      i = 0
      while i < @tab_list.attr_length
        if ((@tab_list[i]).equal?(control))
          count_ += 1
        end
        i += 1
      end
      if ((count_).equal?(0))
        return
      end
      new_list = nil
      length = @tab_list.attr_length - count_
      if (!(length).equal?(0))
        new_list = Array.typed(Control).new(length) { nil }
        index = 0
        i_ = 0
        while i_ < @tab_list.attr_length
          if (!(@tab_list[i_]).equal?(control))
            new_list[((index += 1) - 1)] = @tab_list[i_]
          end
          i_ += 1
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
        count_ = 0
        list = __get_children
        i = 0
        while i < list.attr_length
          if (list[i].is_tab_group)
            count_ += 1
          end
          i += 1
        end
        tab_list = Array.typed(Control).new(count_) { nil }
        index = 0
        i_ = 0
        while i_ < list.attr_length
          if (list[i_].is_tab_group)
            tab_list[((index += 1) - 1)] = list[i_]
          end
          i_ += 1
        end
      end
      return tab_list
    end
    
    typesig { [] }
    def hooks_keys
      return hooks(SWT::KeyDown) || hooks(SWT::KeyUp)
    end
    
    typesig { [] }
    def invalidate_children_visible_region
      children = __get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        child.reset_visible_region
        child.invalidate_children_visible_region
        i += 1
      end
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def is_opaque(id, sel)
      if (!((self.attr_state & CANVAS)).equal?(0))
        if ((id).equal?(self.attr_view.attr_id))
          if ((self.attr_region).nil? && !(self.attr_background).nil? && (self.attr_background[3]).equal?(1))
            return true
          end
        end
      end
      return super(id, sel)
    end
    
    typesig { [] }
    def is_tab_group
      if (!((self.attr_state & CANVAS)).equal?(0))
        return true
      end
      return super
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def key_down(id, sel, the_event)
      if ((self.attr_view.window___org_eclipse_swt_widgets_composite_1.first_responder.attr_id).equal?(id))
        if (!((self.attr_state & CANVAS)).equal?(0))
          s = self.get_shell
          array = NSArray.array_with_object(NSEvent.new(the_event))
          s.attr_key_input_happened = false
          self.attr_view.interpret_key_events(array)
          if (ime_in_composition)
            return
          end
          if (!s.attr_key_input_happened)
            ns_event = NSEvent.new(the_event)
            consume = Array.typed(::Java::Boolean).new(1) { false }
            if (translate_traversal(ns_event.key_code, ns_event, consume))
              return
            end
            if (is_disposed)
              return
            end
            if (!send_key_event(ns_event, SWT::KeyDown))
              return
            end
            if (consume[0])
              return
            end
          end
          return
        end
      end
      super(id, sel, the_event)
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
      update_layout(all)
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
        i += 1
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
        i_ += 1
      end
      i__ = update_count - 1
      while i__ >= 0
        update[i__].update_layout(false)
        i__ -= 1
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
          i += 1
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def minimum_size(w_hint, hint, changed)
      children = __get_children
      width = 0
      height = 0
      i = 0
      while i < children.attr_length
        rect = children[i].get_bounds
        width = Math.max(width, rect.attr_x + rect.attr_width)
        height = Math.max(height, rect.attr_y + rect.attr_height)
        i += 1
      end
      return Point.new(width, height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_event(id, sel, the_event, type)
      result = super(id, sel, the_event, type)
      return ((self.attr_state & CANVAS)).equal?(0) ? result : !(NSEvent.new(the_event).type).equal?(OS::NSLeftMouseDown)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def page_down(id, sel, sender)
      if (!((self.attr_state & CANVAS)).equal?(0))
        return
      end
      super(id, sel, sender)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def page_up(id, sel, sender)
      if (!((self.attr_state & CANVAS)).equal?(0))
        return
      end
      super(id, sel, sender)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def reflect_scrolled_clip_view(id, sel, a_clip_view)
      if (!((self.attr_state & CANVAS)).equal?(0))
        return
      end
      super(id, sel, a_clip_view)
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
        i += 1
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_widget
      super
      @layout = nil
      @tab_list = nil
    end
    
    typesig { [Control] }
    def remove_control(control)
      fix_tab_list(control)
    end
    
    typesig { [] }
    def resized
      super
      if (!(@layout).nil?)
        mark_layout(false, false)
        update_layout(false)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def scroll_wheel(id, sel, the_event)
      if (!((self.attr_state & CANVAS)).equal?(0))
        view = !(self.attr_scroll_view).nil? ? self.attr_scroll_view : self.attr_view
        if ((id).equal?(view.attr_id))
          ns_event = NSEvent.new(the_event)
          # double
          delta = ns_event.delta_y
          if (!(delta).equal?(0))
            if (hooks(SWT::MouseWheel) || filters(SWT::MouseWheel))
              if (!send_mouse_event(ns_event, SWT::MouseWheel, true))
                return
              end
            end
          end
          handled = false
          bar = self.attr_vertical_bar
          if (!(delta).equal?(0) && !(bar).nil? && bar.get_enabled)
            if (-1 < delta && delta < 0)
              delta = -1
            end
            if (0 < delta && delta < 1)
              delta = 1
            end
            selection = Math.max(0, RJava.cast_to_int((0.5 + bar.get_selection - bar.get_increment * delta)))
            bar.set_selection(selection)
            event = Event.new
            event.attr_detail = delta > 0 ? SWT::PAGE_UP : SWT::PAGE_DOWN
            bar.send_event(SWT::Selection, event)
            handled = true
          end
          bar = self.attr_horizontal_bar
          delta = ns_event.delta_x
          if (!(delta).equal?(0) && !(bar).nil? && bar.get_enabled)
            selection = Math.max(0, RJava.cast_to_int((0.5 + bar.get_selection - bar.get_increment * delta)))
            bar.set_selection(selection)
            event = Event.new
            event.attr_detail = delta > 0 ? SWT::PAGE_UP : SWT::PAGE_DOWN
            bar.send_event(SWT::Selection, event)
            handled = true
          end
          if (!handled)
            view.superview.scroll_wheel(ns_event)
          end
          return
        end
        call_super(id, sel, the_event)
        return
      end
      super(id, sel, the_event)
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
        i += 1
      end
    end
    
    typesig { [] }
    def set_focus
      check_widget
      children = __get_children
      i = 0
      while i < children.attr_length
        if (children[i].set_focus)
          return true
        end
        i += 1
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
            update_layout(true)
          end
        end
      else
        @layout_count += 1
      end
    end
    
    typesig { [ScrollBar, ::Java::Boolean] }
    def set_scroll_bar_visible(bar, visible)
      changed = super(bar, visible)
      if (changed && !(@layout).nil?)
        mark_layout(false, false)
        update_layout(false)
      end
      return changed
    end
    
    typesig { [] }
    def set_tab_group_focus
      if (is_tab_item)
        return set_tab_item_focus
      end
      take_focus = ((self.attr_style & SWT::NO_FOCUS)).equal?(0)
      if (!((self.attr_state & CANVAS)).equal?(0))
        take_focus = hooks_keys
      end
      if (take_focus && set_tab_item_focus)
        return true
      end
      children = __get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        if (child.is_tab_item && child.set_tab_item_focus)
          return true
        end
        i += 1
      end
      return false
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
          i += 1
        end
        new_list = Array.typed(Control).new(tab_list.attr_length) { nil }
        System.arraycopy(tab_list, 0, new_list, 0, tab_list.attr_length)
        tab_list = new_list
      end
      @tab_list = tab_list
    end
    
    typesig { [::Java::Int, NSEvent] }
    def traversal_code(key, the_event)
      if (!((self.attr_state & CANVAS)).equal?(0))
        if (!((self.attr_style & SWT::NO_FOCUS)).equal?(0))
          return 0
        end
        if (hooks_keys)
          return 0
        end
      end
      return super(key, the_event)
    end
    
    typesig { [] }
    def update_background_mode
      super
      children = __get_children
      i = 0
      while i < children.attr_length
        children[i].update_background_mode
        i += 1
      end
    end
    
    typesig { [::Java::Boolean] }
    def update_cursor_rects(enabled)
      super(enabled)
      children = __get_children
      i = 0
      while i < children.attr_length
        control = children[i]
        control.update_cursor_rects(enabled && control.is_enabled)
        i += 1
      end
    end
    
    typesig { [::Java::Boolean] }
    def update_layout(all)
      parent = find_deferred_control
      if (!(parent).nil?)
        parent.attr_state |= LAYOUT_CHILD
        return
      end
      if (!((self.attr_state & LAYOUT_NEEDED)).equal?(0))
        changed = !((self.attr_state & LAYOUT_CHANGED)).equal?(0)
        self.attr_state &= ~(LAYOUT_NEEDED | LAYOUT_CHANGED)
        @layout.layout(self, changed)
      end
      if (all)
        self.attr_state &= ~LAYOUT_CHILD
        children = __get_children
        i = 0
        while i < children.attr_length
          children[i].update_layout(all)
          i += 1
        end
      end
    end
    
    private
    alias_method :initialize__composite, :initialize
  end
  
end
