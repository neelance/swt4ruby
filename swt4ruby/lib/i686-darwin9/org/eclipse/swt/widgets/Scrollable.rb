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
  module ScrollableImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # This class is the abstract superclass of all classes which
  # represent controls that have standard scroll bars.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>H_SCROLL, V_SCROLL</dd>
  # <dt><b>Events:</b>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Scrollable < ScrollableImports.const_get :Control
    include_class_members ScrollableImports
    
    attr_accessor :scroll_view
    alias_method :attr_scroll_view, :scroll_view
    undef_method :scroll_view
    alias_method :attr_scroll_view=, :scroll_view=
    undef_method :scroll_view=
    
    attr_accessor :horizontal_bar
    alias_method :attr_horizontal_bar, :horizontal_bar
    undef_method :horizontal_bar
    alias_method :attr_horizontal_bar=, :horizontal_bar=
    undef_method :horizontal_bar=
    
    attr_accessor :vertical_bar
    alias_method :attr_vertical_bar, :vertical_bar
    undef_method :vertical_bar
    alias_method :attr_vertical_bar=, :vertical_bar=
    undef_method :vertical_bar=
    
    typesig { [] }
    def initialize
      @scroll_view = nil
      @horizontal_bar = nil
      @vertical_bar = nil
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
    # @see SWT#H_SCROLL
    # @see SWT#V_SCROLL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @scroll_view = nil
      @horizontal_bar = nil
      @vertical_bar = nil
      super(parent, style)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def accessibility_is_ignored(id, sel)
      # Always ignore scrollers.
      if (!(@scroll_view).nil? && (id).equal?(@scroll_view.attr_id))
        return true
      end
      return super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Given a desired <em>client area</em> for the receiver
    # (as described by the arguments), returns the bounding
    # rectangle which would be required to produce that client
    # area.
    # <p>
    # In other words, it returns a rectangle such that, if the
    # receiver's bounds were set to that rectangle, the area
    # of the receiver which is capable of displaying data
    # (that is, not covered by the "trimmings") would be the
    # rectangle described by the arguments (relative to the
    # receiver's parent).
    # </p>
    # 
    # @param x the desired x coordinate of the client area
    # @param y the desired y coordinate of the client area
    # @param width the desired width of the client area
    # @param height the desired height of the client area
    # @return the required bounds to produce the given client area
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getClientArea
    def compute_trim(x, y, width, height)
      check_widget
      if (!(@scroll_view).nil?)
        size = NSSize.new
        size.attr_width = width
        size.attr_height = height
        border = has_border ? OS::NSBezelBorder : OS::NSNoBorder
        size = NSScrollView.frame_size_for_content_size(size, !((self.attr_style & SWT::H_SCROLL)).equal?(0), !((self.attr_style & SWT::V_SCROLL)).equal?(0), border)
        width = RJava.cast_to_int(size.attr_width)
        height = RJava.cast_to_int(size.attr_height)
        frame = @scroll_view.content_view.frame
        x -= frame.attr_x
        y -= frame.attr_y
      end
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [::Java::Int] }
    def create_scroll_bar(style)
      if ((@scroll_view).nil?)
        return nil
      end
      bar = ScrollBar.new
      bar.attr_parent = self
      bar.attr_style = style
      bar.attr_display = self.attr_display
      scroller = nil
      # long
      action_selector = 0
      rect = NSRect.new
      if (!((style & SWT::H_SCROLL)).equal?(0))
        rect.attr_width = 1
      else
        rect.attr_height = 1
      end
      scroller = SWTScroller.new.alloc
      scroller.init_with_frame(rect)
      if (!((style & SWT::H_SCROLL)).equal?(0))
        @scroll_view.set_horizontal_scroller(scroller)
        action_selector = OS.attr_sel_send_horizontal_selection
      else
        @scroll_view.set_vertical_scroller(scroller)
        action_selector = OS.attr_sel_send_vertical_selection
      end
      bar.attr_view = scroller
      bar.create_jniref
      bar.register
      if (((self.attr_state & CANVAS)).equal?(0))
        bar.attr_target = scroller.target
        bar.attr_action_selector = scroller.action
      end
      scroller.set_target(@scroll_view)
      scroller.set_action(action_selector)
      if (!((self.attr_state & CANVAS)).equal?(0))
        bar.update_bar(0, 0, 100, 10)
      end
      return bar
    end
    
    typesig { [] }
    def create_widget
      super
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        @horizontal_bar = create_scroll_bar(SWT::H_SCROLL)
      end
      if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
        @vertical_bar = create_scroll_bar(SWT::V_SCROLL)
      end
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@scroll_view).nil?)
        self.attr_display.remove_widget(@scroll_view)
      end
    end
    
    typesig { [] }
    # Returns a rectangle which describes the area of the
    # receiver which is capable of displaying data (that is,
    # not covered by the "trimmings").
    # 
    # @return the client area
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #computeTrim
    def get_client_area
      check_widget
      if (!(@scroll_view).nil?)
        size = @scroll_view.content_size
        content_view_ = @scroll_view.content_view
        bounds_ = content_view_.bounds
        return Rectangle.new(RJava.cast_to_int(bounds_.attr_x), RJava.cast_to_int(bounds_.attr_y), RJava.cast_to_int(size.attr_width), RJava.cast_to_int(size.attr_height))
      else
        rect = self.attr_view.bounds
        return Rectangle.new(0, 0, RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
      end
    end
    
    typesig { [] }
    # Returns the receiver's horizontal scroll bar if it has
    # one, and null if it does not.
    # 
    # @return the horizontal scroll bar (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_horizontal_bar
      check_widget
      return @horizontal_bar
    end
    
    typesig { [] }
    # Returns the receiver's vertical scroll bar if it has
    # one, and null if it does not.
    # 
    # @return the vertical scroll bar (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_vertical_bar
      check_widget
      return @vertical_bar
    end
    
    typesig { [] }
    def hooks_keys
      return hooks(SWT::KeyDown) || hooks(SWT::KeyUp) || hooks(SWT::Traverse)
    end
    
    typesig { [::Java::Int] }
    # long
    def is_event_view(id)
      return (id).equal?(event_view.attr_id)
    end
    
    typesig { [NSView] }
    def is_trim(view)
      if (!(@scroll_view).nil?)
        if ((@scroll_view.attr_id).equal?(view.attr_id))
          return true
        end
        if (!(@horizontal_bar).nil? && (@horizontal_bar.attr_view.attr_id).equal?(view.attr_id))
          return true
        end
        if (!(@vertical_bar).nil? && (@vertical_bar.attr_view.attr_id).equal?(view.attr_id))
          return true
        end
      end
      return super(view)
    end
    
    typesig { [] }
    def register
      super
      if (!(@scroll_view).nil?)
        self.attr_display.add_widget(@scroll_view, self)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@scroll_view).nil?)
        @scroll_view.release
      end
      @scroll_view = nil
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@horizontal_bar).nil?)
        @horizontal_bar.release(false)
        @horizontal_bar = nil
      end
      if (!(@vertical_bar).nil?)
        @vertical_bar.release(false)
        @vertical_bar = nil
      end
      super(destroy)
    end
    
    typesig { [] }
    def send_horizontal_selection
      if (((self.attr_state & CANVAS)).equal?(0) && !(@scroll_view).nil? && (self.attr_visible_rgn).equal?(0))
        @scroll_view.content_view.set_copies_on_scroll(!is_obscured)
      end
      @horizontal_bar.send_selection
    end
    
    typesig { [] }
    def send_vertical_selection
      if (((self.attr_state & CANVAS)).equal?(0) && !(@scroll_view).nil? && (self.attr_visible_rgn).equal?(0))
        @scroll_view.content_view.set_copies_on_scroll(!is_obscured)
      end
      @vertical_bar.send_selection
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      if (!(@horizontal_bar).nil?)
        @horizontal_bar.enable_widget(enabled)
      end
      if (!(@vertical_bar).nil?)
        @vertical_bar.enable_widget(enabled)
      end
    end
    
    typesig { [ScrollBar, ::Java::Boolean] }
    def set_scroll_bar_visible(bar, visible)
      if ((@scroll_view).nil?)
        return false
      end
      if (((self.attr_state & CANVAS)).equal?(0))
        return false
      end
      if (visible)
        if (((bar.attr_state & HIDDEN)).equal?(0))
          return false
        end
        bar.attr_state &= ~HIDDEN
      else
        if (!((bar.attr_state & HIDDEN)).equal?(0))
          return false
        end
        bar.attr_state |= HIDDEN
      end
      if (!((bar.attr_style & SWT::HORIZONTAL)).equal?(0))
        @scroll_view.set_has_horizontal_scroller(visible)
      else
        @scroll_view.set_has_vertical_scroller(visible)
      end
      bar.send_event___org_eclipse_swt_widgets_scrollable_1(visible ? SWT::Show : SWT::Hide)
      send_event___org_eclipse_swt_widgets_scrollable_3(SWT::Resize)
      return true
    end
    
    typesig { [] }
    def set_zorder
      super
      if (!(@scroll_view).nil?)
        @scroll_view.set_document_view(self.attr_view)
      end
    end
    
    typesig { [] }
    def top_view
      if (!(@scroll_view).nil?)
        return @scroll_view
      end
      return super
    end
    
    typesig { [::Java::Boolean] }
    def update_cursor_rects(enabled)
      super(enabled)
      if ((@scroll_view).nil?)
        return
      end
      update_cursor_rects(enabled, @scroll_view)
      content_view_ = @scroll_view.content_view
      update_cursor_rects(enabled, content_view_)
    end
    
    private
    alias_method :initialize__scrollable, :initialize
  end
  
end
