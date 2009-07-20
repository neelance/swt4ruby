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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Cairo
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    # int
    attr_accessor :embedded_handle
    alias_method :attr_embedded_handle, :embedded_handle
    undef_method :embedded_handle
    alias_method :attr_embedded_handle=, :embedded_handle=
    undef_method :embedded_handle=
    
    # int
    attr_accessor :im_handle
    alias_method :attr_im_handle, :im_handle
    undef_method :im_handle
    alias_method :attr_im_handle=, :im_handle=
    undef_method :im_handle=
    
    attr_accessor :socket_handle
    alias_method :attr_socket_handle, :socket_handle
    undef_method :socket_handle
    alias_method :attr_socket_handle=, :socket_handle=
    undef_method :socket_handle=
    
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
    
    class_module.module_eval {
      const_set_lazy(:NO_INPUT_METHOD) { "org.eclipse.swt.internal.gtk.noInputMethod" }
      const_attr_reader  :NO_INPUT_METHOD
    }
    
    typesig { [] }
    # $NON-NLS-1$
    def initialize
      @embedded_handle = 0
      @im_handle = 0
      @socket_handle = 0
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
    # @see Widget#getStyle
    def initialize(parent, style)
      @embedded_handle = 0
      @im_handle = 0
      @socket_handle = 0
      @layout = nil
      @tab_list = nil
      @layout_count = 0
      @background_mode = 0
      super(parent, check_style(style))
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style &= ~SWT::TRANSPARENT
        return style
      end
    }
    
    typesig { [] }
    def __get_children
      # int
      parent_handle = parenting_handle
      # int
      list = OS.gtk_container_get_children(parent_handle)
      if ((list).equal?(0))
        return Array.typed(Control).new(0) { nil }
      end
      count = OS.g_list_length(list)
      children = Array.typed(Control).new(count) { nil }
      i = 0
      # int
      temp = list
      while (!(temp).equal?(0))
        # int
        handle = OS.g_list_data(temp)
        if (!(handle).equal?(0))
          widget = self.attr_display.get_widget(handle)
          if (!(widget).nil? && !(widget).equal?(self))
            if (widget.is_a?(Control))
              children[((i += 1) - 1)] = widget
            end
          end
        end
        temp = OS.g_list_next(temp)
      end
      OS.g_list_free(list)
      if ((i).equal?(count))
        return children
      end
      new_children = Array.typed(Control).new(i) { nil }
      System.arraycopy(children, 0, new_children, 0, i)
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
      if (((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0) && !((self.attr_style & SWT::NO_BACKGROUND)).equal?(0))
        return
      end
      super
    end
    
    typesig { [] }
    def check_subclass
      # Do nothing - Subclassing is allowed
    end
    
    typesig { [] }
    # int
    def child_style
      if (!(self.attr_scrolled_handle).equal?(0))
        return 0
      end
      return super
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      size = nil
      if (!(@layout).nil?)
        if ((w_hint).equal?(SWT::DEFAULT) || (h_hint).equal?(SWT::DEFAULT))
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
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE | CANVAS
      scrolled = !((self.attr_style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0)
      if (!scrolled)
        self.attr_state |= THEME_BACKGROUND
      end
      create_handle(index, true, scrolled || !((self.attr_style & SWT::BORDER)).equal?(0))
    end
    
    typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def create_handle(index, fixed, scrolled)
      if (scrolled)
        if (fixed)
          self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
          if ((self.attr_fixed_handle).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
        end
        # int
        vadj = OS.gtk_adjustment_new(0, 0, 100, 1, 10, 10)
        if ((vadj).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        # int
        hadj = OS.gtk_adjustment_new(0, 0, 100, 1, 10, 10)
        if ((hadj).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_scrolled_handle = OS.gtk_scrolled_window_new(hadj, vadj)
        if ((self.attr_scrolled_handle).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
      end
      self.attr_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_handle, true)
      OS._gtk_widget_set_flags(self.attr_handle, OS::GTK_CAN_FOCUS)
      if (((self.attr_style & SWT::EMBEDDED)).equal?(0))
        if (!((self.attr_state & CANVAS)).equal?(0))
          # Prevent an input method context from being created for the Browser widget
          if ((self.attr_display.get_data(NO_INPUT_METHOD)).nil?)
            @im_handle = OS.gtk_im_multicontext_new
            if ((@im_handle).equal?(0))
              error(SWT::ERROR_NO_HANDLES)
            end
          end
        end
      end
      if (scrolled)
        if (fixed)
          OS.gtk_container_add(self.attr_fixed_handle, self.attr_scrolled_handle)
        end
        # Force the scrolledWindow to have a single child that is
        # not scrolled automatically.  Calling gtk_container_add()
        # seems to add the child correctly but cause a warning.
        warnings = self.attr_display.get_warnings
        self.attr_display.set_warnings(false)
        OS.gtk_container_add(self.attr_scrolled_handle, self.attr_handle)
        self.attr_display.set_warnings(warnings)
        hsp = !((self.attr_style & SWT::H_SCROLL)).equal?(0) ? OS::GTK_POLICY_ALWAYS : OS::GTK_POLICY_NEVER
        vsp = !((self.attr_style & SWT::V_SCROLL)).equal?(0) ? OS::GTK_POLICY_ALWAYS : OS::GTK_POLICY_NEVER
        OS.gtk_scrolled_window_set_policy(self.attr_scrolled_handle, hsp, vsp)
        if (has_border)
          OS.gtk_scrolled_window_set_shadow_type(self.attr_scrolled_handle, OS::GTK_SHADOW_ETCHED_IN)
        end
      end
      if (!((self.attr_style & SWT::EMBEDDED)).equal?(0))
        @socket_handle = OS.gtk_socket_new
        if ((@socket_handle).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(self.attr_handle, @socket_handle)
      end
      if (!((self.attr_style & SWT::NO_REDRAW_RESIZE)).equal?(0) && ((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        OS.gtk_widget_set_redraw_on_allocate(self.attr_handle, false)
      end
      # Bug in GTK.  When a widget is double buffered and the back
      # pixmap is null, the double buffer pixmap is filled with the
      # background of the widget rather than the current contents of
      # the screen.  If nothing is drawn during an expose event,
      # the pixels are altered.  The fix is to clear double buffering
      # when NO_BACKGROUND is set and DOUBLE_BUFFERED
      # is not explicitly set.
      if (((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0) && !((self.attr_style & SWT::NO_BACKGROUND)).equal?(0))
        OS.gtk_widget_set_double_buffered(self.attr_handle, false)
      end
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@socket_handle).equal?(0))
        self.attr_display.remove_widget(@socket_handle)
      end
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_background(gc, x, y, width, height)
      control = find_background_control
      if (!(control).nil?)
        data = gc.get_gcdata
        # int
        cairo = data.attr_cairo
        if (!(cairo).equal?(0))
          Cairo.cairo_save(cairo)
          if (!(control.attr_background_image).nil?)
            pt = self.attr_display.map(self, control, 0, 0)
            Cairo.cairo_translate(cairo, -pt.attr_x, -pt.attr_y)
            x += pt.attr_x
            y += pt.attr_y
            # int
            x_display = OS._gdk_display
            # int
            x_visual = OS.gdk_x11_visual_get_xvisual(OS.gdk_visual_get_system)
            # int
            drawable = control.attr_background_image.attr_pixmap
            # int
            x_drawable = OS._gdk_pixmap_xid(drawable)
            w = Array.typed(::Java::Int).new(1) { 0 }
            h = Array.typed(::Java::Int).new(1) { 0 }
            OS.gdk_drawable_get_size(drawable, w, h)
            # int
            surface = Cairo.cairo_xlib_surface_create(x_display, x_drawable, x_visual, w[0], h[0])
            if ((surface).equal?(0))
              error(SWT::ERROR_NO_HANDLES)
            end
            # int
            pattern = Cairo.cairo_pattern_create_for_surface(surface)
            if ((pattern).equal?(0))
              error(SWT::ERROR_NO_HANDLES)
            end
            Cairo.cairo_pattern_set_extend(pattern, Cairo::CAIRO_EXTEND_REPEAT)
            if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
              matrix = Array.typed(::Java::Double).new([-1, 0, 0, 1, 0, 0])
              Cairo.cairo_pattern_set_matrix(pattern, matrix)
            end
            Cairo.cairo_set_source(cairo, pattern)
            Cairo.cairo_surface_destroy(surface)
            Cairo.cairo_pattern_destroy(pattern)
          else
            color = control.get_background_color
            Cairo.cairo_set_source_rgba(cairo, (color.attr_red & 0xffff) / (0xffff).to_f, (color.attr_green & 0xffff) / (0xffff).to_f, (color.attr_blue & 0xffff) / (0xffff).to_f, data.attr_alpha / (0xff).to_f)
          end
          Cairo.cairo_rectangle(cairo, x, y, width, height)
          Cairo.cairo_fill(cairo)
          Cairo.cairo_restore(cairo)
        else
          # int
          gdk_gc = gc.attr_handle
          values = GdkGCValues.new
          OS.gdk_gc_get_values(gdk_gc, values)
          if (!(control.attr_background_image).nil?)
            pt = self.attr_display.map(self, control, 0, 0)
            OS.gdk_gc_set_fill(gdk_gc, OS::GDK_TILED)
            OS.gdk_gc_set_ts_origin(gdk_gc, -pt.attr_x, -pt.attr_y)
            OS.gdk_gc_set_tile(gdk_gc, control.attr_background_image.attr_pixmap)
            OS.gdk_draw_rectangle(data.attr_drawable, gdk_gc, 1, x, y, width, height)
            OS.gdk_gc_set_fill(gdk_gc, values.attr_fill)
            OS.gdk_gc_set_ts_origin(gdk_gc, values.attr_ts_x_origin, values.attr_ts_y_origin)
          else
            color = control.get_background_color
            OS.gdk_gc_set_foreground(gdk_gc, color)
            OS.gdk_draw_rectangle(data.attr_drawable, gdk_gc, 1, x, y, width, height)
            color.attr_pixel = values.attr_foreground_pixel
            OS.gdk_gc_set_foreground(gdk_gc, color)
          end
        end
      else
        gc.fill_rectangle(x, y, width, height)
      end
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      if (!((self.attr_state & CANVAS)).equal?(0))
        return
      end
      super(enabled)
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
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def fix_modal(group, modal_group)
      controls = __get_children
      i = 0
      while i < controls.attr_length
        controls[i].fix_modal(group, modal_group)
        ((i += 1) - 1)
      end
    end
    
    typesig { [] }
    def fix_style
      super
      if ((self.attr_scrolled_handle).equal?(0))
        fix_style(self.attr_handle)
      end
      children = __get_children
      i = 0
      while i < children.attr_length
        children[i].fix_style
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
    def fix_zorder
      if (!((self.attr_state & CANVAS)).equal?(0))
        return
      end
      # int
      parent_handle = parenting_handle
      # int
      parent_window = OS._gtk_widget_window(parent_handle)
      if ((parent_window).equal?(0))
        return
      end
      # int
      # int
      user_data = Array.typed(::Java::Long).new(1) { 0 }
      # int
      window_list = OS.gdk_window_get_children(parent_window)
      if (!(window_list).equal?(0))
        # int
        windows = window_list
        while (!(windows).equal?(0))
          # int
          window = OS.g_list_data(windows)
          if (!(window).equal?(self.attr_redraw_window))
            OS.gdk_window_get_user_data(window, user_data)
            if ((user_data[0]).equal?(0) || !(OS._g_object_type(user_data[0])).equal?(self.attr_display.gtk_fixed_get_type))
              OS.gdk_window_lower(window)
            end
          end
          windows = OS.g_list_next(windows)
        end
        OS.g_list_free(window_list)
      end
    end
    
    typesig { [] }
    # int
    def focus_handle
      if (!(@socket_handle).equal?(0))
        return @socket_handle
      end
      return super
    end
    
    typesig { [::Java::Long] }
    # int
    def force_focus(focus_handle)
      if (!(@socket_handle).equal?(0))
        OS._gtk_widget_set_flags(focus_handle, OS::GTK_CAN_FOCUS)
      end
      result = super(focus_handle)
      if (!(@socket_handle).equal?(0))
        OS._gtk_widget_unset_flags(focus_handle, OS::GTK_CAN_FOCUS)
      end
      return result
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
      # 
      # int
      list = OS.gtk_container_get_children(self.attr_handle)
      if ((list).equal?(0))
        return 0
      end
      count = OS.g_list_length(list)
      OS.g_list_free(list)
      return count
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      if (!((self.attr_state & CANVAS)).equal?(0))
        if (!((self.attr_state & ZERO_WIDTH)).equal?(0) && !((self.attr_state & ZERO_HEIGHT)).equal?(0))
          return Rectangle.new(0, 0, 0, 0)
        end
        force_resize
        # int
        client_handle_ = client_handle
        width = !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(client_handle_)
        height = !((self.attr_state & ZERO_HEIGHT)).equal?(0) ? 0 : OS._gtk_widget_height(client_handle_)
        return Rectangle.new(0, 0, width, height)
      end
      return super
    end
    
    typesig { [] }
    def get_client_width
      return !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(client_handle)
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
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_button_press_event(widget, event)
      # int
      result = super(widget, event)
      if (!(result).equal?(0))
        return result
      end
      if (!((self.attr_state & CANVAS)).equal?(0))
        if (((self.attr_style & SWT::NO_FOCUS)).equal?(0) && hooks_keys)
          gdk_event = GdkEventButton.new
          OS.memmove(gdk_event, event, GdkEventButton.attr_sizeof)
          if ((gdk_event.attr_button).equal?(1))
            if ((get_children_count).equal?(0))
              set_focus
            end
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_expose_event(widget, event_ptr)
      if (!((self.attr_state & OBSCURED)).equal?(0))
        return 0
      end
      if (((self.attr_state & CANVAS)).equal?(0))
        return super(widget, event_ptr)
      end
      if (((self.attr_style & SWT::NO_MERGE_PAINTS)).equal?(0))
        return super(widget, event_ptr)
      end
      if (!hooks(SWT::Paint) && !filters(SWT::Paint))
        return 0
      end
      gdk_event = GdkEventExpose.new
      OS.memmove(gdk_event, event_ptr, GdkEventExpose.attr_sizeof)
      # int
      # int
      rectangles = Array.typed(::Java::Long).new(1) { 0 }
      n_rectangles = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_region_get_rectangles(gdk_event.attr_region, rectangles, n_rectangles)
      rect = GdkRectangle.new
      i = 0
      while i < n_rectangles[0]
        event = Event.new
        OS.memmove(rect, rectangles[0] + i * GdkRectangle.attr_sizeof, GdkRectangle.attr_sizeof)
        event.attr_x = rect.attr_x
        event.attr_y = rect.attr_y
        event.attr_width = rect.attr_width
        event.attr_height = rect.attr_height
        if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
          event.attr_x = get_client_width - event.attr_width - event.attr_x
        end
        # int
        damage_rgn = OS.gdk_region_new
        OS.gdk_region_union_with_rect(damage_rgn, rect)
        data = SwtGCData.new
        data.attr_damage_rgn = damage_rgn
        gc = event.attr_gc = SwtGC.gtk_new(self, data)
        OS.gdk_gc_set_clip_region(gc.attr_handle, damage_rgn)
        send_event(SWT::Paint, event)
        gc.dispose
        OS.gdk_region_destroy(damage_rgn)
        event.attr_gc = nil
        ((i += 1) - 1)
      end
      OS.g_free(rectangles[0])
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_key_press_event(widget, event)
      # int
      result = super(widget, event)
      if (!(result).equal?(0))
        return result
      end
      # Feature in GTK.  The default behavior when the return key
      # is pressed is to select the default button.  This is not the
      # expected behavior for Composite and its subclasses.  The
      # fix is to avoid calling the default handler.
      if (!((self.attr_state & CANVAS)).equal?(0) && (@socket_handle).equal?(0))
        key_event = GdkEventKey.new
        OS.memmove(key_event, event, GdkEventKey.attr_sizeof)
        key = key_event.attr_keyval
        case (key)
        when OS::GDK_Return, OS::GDK_KP_Enter
          return 1
        end
      end
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_focus(widget, direction_type)
      if ((widget).equal?(@socket_handle))
        return 0
      end
      return super(widget, direction_type)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_focus_in_event(widget, event)
      # int
      result = super(widget, event)
      return !((self.attr_state & CANVAS)).equal?(0) ? 1 : result
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_focus_out_event(widget, event)
      # int
      result = super(widget, event)
      return !((self.attr_state & CANVAS)).equal?(0) ? 1 : result
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_map(widget)
      fix_zorder
      return 0
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_realize(widget)
      # int
      result = super(widget)
      if (!((self.attr_style & SWT::NO_BACKGROUND)).equal?(0))
        # int
        window = OS._gtk_widget_window(paint_handle)
        if (!(window).equal?(0))
          OS.gdk_window_set_back_pixmap(window, 0, false)
        end
      end
      if (!(@socket_handle).equal?(0))
        @embedded_handle = OS.gtk_socket_get_id(@socket_handle)
      end
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def gtk_scroll_child(widget, scroll_type, horizontal)
      # Stop GTK scroll child signal for canvas
      OS.g_signal_stop_emission_by_name(widget, OS.attr_scroll_child)
      return 1
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_style_set(widget, previous_style)
      # int
      result = super(widget, previous_style)
      if (!((self.attr_style & SWT::NO_BACKGROUND)).equal?(0))
        # int
        window = OS._gtk_widget_window(paint_handle)
        if (!(window).equal?(0))
          OS.gdk_window_set_back_pixmap(window, 0, false)
        end
      end
      return result
    end
    
    typesig { [] }
    def has_border
      return !((self.attr_style & SWT::BORDER)).equal?(0)
    end
    
    typesig { [] }
    def hook_events
      super
      if (!((self.attr_state & CANVAS)).equal?(0))
        OS.gtk_widget_add_events(self.attr_handle, OS::GDK_POINTER_MOTION_HINT_MASK)
        if (!(self.attr_scrolled_handle).equal?(0))
          OS.g_signal_connect_closure(self.attr_scrolled_handle, OS.attr_scroll_child, self.attr_display.attr_closures[SCROLL_CHILD], false)
        end
      end
    end
    
    typesig { [] }
    def hooks_keys
      return hooks(SWT::KeyDown) || hooks(SWT::KeyUp)
    end
    
    typesig { [] }
    # int
    def im_handle
      return @im_handle
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
    def is_tab_group
      if (!((self.attr_state & CANVAS)).equal?(0))
        return true
      end
      return super
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
        update[i__].update_layout(false)
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
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def move_above(child, sibling)
      if ((child).equal?(sibling))
        return
      end
      # int
      parent_handle = parenting_handle
      fixed = GtkFixed.new
      OS.memmove(fixed, parent_handle)
      # int
      children = fixed.attr_children
      if ((children).equal?(0))
        return
      end
      # int
      # int
      data = Array.typed(::Java::Long).new(1) { 0 }
      # int
      # int
      widget = Array.typed(::Java::Long).new(1) { 0 }
      # int
      child_data = 0
      child_link = 0
      sibling_link = 0
      temp = children
      while (!(temp).equal?(0))
        OS.memmove(data, temp, OS::PTR_SIZEOF)
        OS.memmove(widget, data[0], OS::PTR_SIZEOF)
        if ((child).equal?(widget[0]))
          child_link = temp
          child_data = data[0]
        else
          if ((sibling).equal?(widget[0]))
            sibling_link = temp
          end
        end
        if (!(child_data).equal?(0) && ((sibling).equal?(0) || !(sibling_link).equal?(0)))
          break
        end
        temp = OS.g_list_next(temp)
      end
      children = OS.g_list_remove_link(children, child_link)
      if ((sibling_link).equal?(0) || (OS.g_list_previous(sibling_link)).equal?(0))
        OS.g_list_free_1(child_link)
        children = OS.g_list_prepend(children, child_data)
      else
        temp = OS.g_list_previous(sibling_link)
        OS.g_list_set_previous(child_link, temp)
        OS.g_list_set_next(temp, child_link)
        OS.g_list_set_next(child_link, sibling_link)
        OS.g_list_set_previous(sibling_link, child_link)
      end
      fixed.attr_children = children
      OS.memmove(parent_handle, fixed)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def move_below(child, sibling)
      if ((child).equal?(sibling))
        return
      end
      # int
      parent_handle = parenting_handle
      if ((sibling).equal?(0) && (parent_handle).equal?(self.attr_fixed_handle))
        move_above(child, !(self.attr_scrolled_handle).equal?(0) ? self.attr_scrolled_handle : self.attr_handle)
        return
      end
      fixed = GtkFixed.new
      OS.memmove(fixed, parent_handle)
      # int
      children = fixed.attr_children
      if ((children).equal?(0))
        return
      end
      # int
      # int
      data = Array.typed(::Java::Long).new(1) { 0 }
      # int
      # int
      widget = Array.typed(::Java::Long).new(1) { 0 }
      # int
      child_data = 0
      child_link = 0
      sibling_link = 0
      temp = children
      while (!(temp).equal?(0))
        OS.memmove(data, temp, OS::PTR_SIZEOF)
        OS.memmove(widget, data[0], OS::PTR_SIZEOF)
        if ((child).equal?(widget[0]))
          child_link = temp
          child_data = data[0]
        else
          if ((sibling).equal?(widget[0]))
            sibling_link = temp
          end
        end
        if (!(child_data).equal?(0) && ((sibling).equal?(0) || !(sibling_link).equal?(0)))
          break
        end
        temp = OS.g_list_next(temp)
      end
      children = OS.g_list_remove_link(children, child_link)
      if ((sibling_link).equal?(0) || (OS.g_list_next(sibling_link)).equal?(0))
        OS.g_list_free_1(child_link)
        children = OS.g_list_append(children, child_data)
      else
        temp = OS.g_list_next(sibling_link)
        OS.g_list_set_next(child_link, temp)
        OS.g_list_set_previous(temp, child_link)
        OS.g_list_set_previous(child_link, sibling_link)
        OS.g_list_set_next(sibling_link, child_link)
      end
      fixed.attr_children = children
      OS.memmove(parent_handle, fixed)
    end
    
    typesig { [::Java::Int] }
    def move_children(old_width)
      children = __get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        # int
        top_handle_ = child.top_handle
        x = OS._gtk_widget_x(top_handle_)
        y = OS._gtk_widget_y(top_handle_)
        control_width = !((child.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(top_handle_)
        x = old_width - control_width - x
        client_width = get_client_width
        x = client_width - control_width - x
        if (!(child.attr_enable_window).equal?(0))
          OS.gdk_window_move(child.attr_enable_window, x, y)
        end
        child.move_handle(x, y)
        # Cause a size allocation this widget's topHandle.  Note that
        # all calls to gtk_widget_size_allocate() must be preceded by
        # a call to gtk_widget_size_request().
        requisition = GtkRequisition.new
        gtk_widget_size_request(top_handle_, requisition)
        allocation = GtkAllocation.new
        allocation.attr_x = x
        allocation.attr_y = y
        allocation.attr_width = OS._gtk_widget_width(top_handle_)
        allocation.attr_height = OS._gtk_widget_height(top_handle_)
        OS.gtk_widget_size_allocate(top_handle_, allocation)
        control = child.find_background_control
        if (!(control).nil? && !(control.attr_background_image).nil?)
          if (child.is_visible)
            child.redraw_widget(0, 0, 0, 0, true, true, true)
          end
        end
        ((i += 1) - 1)
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
    # int
    def parenting_handle
      if (!((self.attr_state & CANVAS)).equal?(0))
        return self.attr_handle
      end
      return !(self.attr_fixed_handle).equal?(0) ? self.attr_fixed_handle : self.attr_handle
    end
    
    typesig { [SwtGC, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int] }
    # int
    def print_widget(gc, drawable, depth, x, y)
      old_clip = Region.new(gc.get_device)
      new_clip = Region.new(gc.get_device)
      gc.get_clipping(old_clip)
      rect = get_bounds
      new_clip.add(old_clip)
      new_clip.intersect(x, y, rect.attr_width, rect.attr_height)
      gc.set_clipping(new_clip)
      super(gc, drawable, depth, x, y)
      client_rect = get_client_area
      pt = self.attr_display.map(self, self.attr_parent, client_rect.attr_x, client_rect.attr_y)
      client_rect.attr_x = x + pt.attr_x - rect.attr_x
      client_rect.attr_y = y + pt.attr_y - rect.attr_y
      new_clip.intersect(client_rect)
      gc.set_clipping(new_clip)
      children = __get_children
      i = children.attr_length - 1
      while i >= 0
        child = children[i]
        if (child.get_visible)
          location = child.get_location
          child.print_widget(gc, drawable, depth, x + location.attr_x, y + location.attr_y)
        end
        (i -= 1)
      end
      gc.set_clipping(old_clip)
      old_clip.dispose
      new_clip.dispose
    end
    
    typesig { [] }
    def redraw_children
      super
      children = __get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        if (!((child.attr_state & PARENT_BACKGROUND)).equal?(0))
          child.redraw_widget(0, 0, 0, 0, true, false, true)
          child.redraw_children
        end
        ((i += 1) - 1)
      end
    end
    
    typesig { [] }
    def register
      super
      if (!(@socket_handle).equal?(0))
        self.attr_display.add_widget(@socket_handle, self)
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
    def release_handle
      super
      @socket_handle = @embedded_handle = 0
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@im_handle).equal?(0))
        OS.g_object_unref(@im_handle)
      end
      @im_handle = 0
      @layout = nil
      @tab_list = nil
    end
    
    typesig { [Control] }
    def remove_control(control)
      fix_tab_list(control)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def resize_handle(width, height)
      super(width, height)
      if (!(@socket_handle).equal?(0))
        OS.gtk_widget_set_size_request(@socket_handle, width, height)
      end
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      result = super(x, y, width, height, move, resize)
      if (!((result & RESIZED)).equal?(0) && !(@layout).nil?)
        mark_layout(false, false)
        update_layout(false)
      end
      return result
    end
    
    typesig { [] }
    def set_focus
      check_widget
      children = __get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        if (child.get_visible && child.set_focus)
          return true
        end
        ((i += 1) - 1)
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
        ((@layout_count += 1) - 1)
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
    
    typesig { [::Java::Boolean] }
    def set_tab_group_focus(next_)
      if (is_tab_item)
        return set_tab_item_focus(next_)
      end
      take_focus = ((self.attr_style & SWT::NO_FOCUS)).equal?(0)
      if (!((self.attr_state & CANVAS)).equal?(0))
        take_focus = hooks_keys
      end
      if (!(@socket_handle).equal?(0))
        take_focus = true
      end
      if (take_focus && set_tab_item_focus(next_))
        return true
      end
      children = __get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        if (child.is_tab_item && child.set_tab_item_focus(next_))
          return true
        end
        ((i += 1) - 1)
      end
      return false
    end
    
    typesig { [::Java::Boolean] }
    def set_tab_item_focus(next_)
      if (!super(next_))
        return false
      end
      if (!(@socket_handle).equal?(0))
        direction = next_ ? OS::GTK_DIR_TAB_FORWARD : OS::GTK_DIR_TAB_BACKWARD
        OS._gtk_widget_unset_flags(@socket_handle, OS::GTK_HAS_FOCUS)
        OS.gtk_widget_child_focus(@socket_handle, direction)
        OS._gtk_widget_set_flags(@socket_handle, OS::GTK_HAS_FOCUS)
      end
      return true
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
    
    typesig { [] }
    def show_widget
      super
      if (!(@socket_handle).equal?(0))
        OS.gtk_widget_show(@socket_handle)
        @embedded_handle = OS.gtk_socket_get_id(@socket_handle)
      end
      if ((self.attr_scrolled_handle).equal?(0))
        fix_style(self.attr_handle)
      end
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
    
    typesig { [::Java::Int, GdkEventKey] }
    def traversal_code(key, event)
      if (!((self.attr_state & CANVAS)).equal?(0))
        if (!((self.attr_style & SWT::NO_FOCUS)).equal?(0))
          return 0
        end
        if (hooks_keys)
          return 0
        end
      end
      return super(key, event)
    end
    
    typesig { [GdkEventKey] }
    def translate_traversal(key_event)
      if (!(@socket_handle).equal?(0))
        return false
      end
      return super(key_event)
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
          ((i += 1) - 1)
        end
      end
    end
    
    private
    alias_method :initialize__composite, :initialize
  end
  
end
