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
  module CaretImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class provide an i-beam that is typically used
  # as the insertion point for text.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#caret">Caret snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample, Canvas tab</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Caret < CaretImports.const_get :Widget
    include_class_members CaretImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :moved
    alias_method :attr_moved, :moved
    undef_method :moved
    alias_method :attr_moved=, :moved=
    undef_method :moved=
    
    attr_accessor :resized
    alias_method :attr_resized, :resized
    undef_method :resized
    alias_method :attr_resized=, :resized=
    undef_method :resized=
    
    attr_accessor :is_visible
    alias_method :attr_is_visible, :is_visible
    undef_method :is_visible
    alias_method :attr_is_visible=, :is_visible=
    undef_method :is_visible=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :old_font
    alias_method :attr_old_font, :old_font
    undef_method :old_font
    alias_method :attr_old_font=, :old_font=
    undef_method :old_font=
    
    typesig { [Canvas, ::Java::Int] }
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
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @parent = nil
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @moved = false
      @resized = false
      @is_visible = false
      @image = nil
      @font = nil
      @old_font = nil
      super(parent, style)
      @parent = parent
      create_widget
    end
    
    typesig { [] }
    def create_widget
      @is_visible = true
      if ((@parent.get_caret).nil?)
        @parent.set_caret(self)
      end
    end
    
    typesig { [] }
    # long
    def default_font
      # long
      hwnd = @parent.attr_handle
      # long
      hwnd_ime = OS._imm_get_default_imewnd(hwnd)
      # long
      h_font = 0
      if (!(hwnd_ime).equal?(0))
        h_font = OS._send_message(hwnd_ime, OS::WM_GETFONT, 0, 0)
      end
      if ((h_font).equal?(0))
        h_font = OS._send_message(hwnd, OS::WM_GETFONT, 0, 0)
      end
      if ((h_font).equal?(0))
        return @parent.default_font
      end
      return h_font
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent (or its display if its parent is null).
    # 
    # @return the receiver's bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_bounds
      check_widget
      if (!(@image).nil?)
        rect = @image.get_bounds
        return Rectangle.new(@x, @y, rect.attr_width, rect.attr_height)
      else
        if (!OS::IsWinCE && (@width).equal?(0))
          buffer = Array.typed(::Java::Int).new(1) { 0 }
          if (OS._system_parameters_info(OS::SPI_GETCARETWIDTH, 0, buffer, 0))
            return Rectangle.new(@x, @y, buffer[0], @height)
          end
        end
      end
      return Rectangle.new(@x, @y, @width, @height)
    end
    
    typesig { [] }
    # Returns the font that the receiver will use to paint textual information.
    # 
    # @return the receiver's font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_font
      check_widget
      if ((@font).nil?)
        # long
        h_font = default_font
        return Font.win32_new(self.attr_display, h_font)
      end
      return @font
    end
    
    typesig { [] }
    # Returns the image that the receiver will use to paint the caret.
    # 
    # @return the receiver's image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_image
      check_widget
      return @image
    end
    
    typesig { [] }
    # Returns a point describing the receiver's location relative
    # to its parent (or its display if its parent is null).
    # 
    # @return the receiver's location
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_location
      check_widget
      return Point.new(@x, @y)
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Canvas</code>.
    # 
    # @return the receiver's parent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent
      check_widget
      return @parent
    end
    
    typesig { [] }
    # Returns a point describing the receiver's size.
    # 
    # @return the receiver's size
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_size
      check_widget
      if (!(@image).nil?)
        rect = @image.get_bounds
        return Point.new(rect.attr_width, rect.attr_height)
      else
        if (!OS::IsWinCE && (@width).equal?(0))
          buffer = Array.typed(::Java::Int).new(1) { 0 }
          if (OS._system_parameters_info(OS::SPI_GETCARETWIDTH, 0, buffer, 0))
            return Point.new(buffer[0], @height)
          end
        end
      end
      return Point.new(@width, @height)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is visible, and
    # <code>false</code> otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_visible
      check_widget
      return @is_visible
    end
    
    typesig { [] }
    def has_focus
      return (@parent.attr_handle).equal?(OS._get_focus)
    end
    
    typesig { [] }
    def is_focus_caret
      return (@parent.attr_caret).equal?(self) && has_focus
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is visible and all
    # of the receiver's ancestors are visible and <code>false</code>
    # otherwise.
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getVisible
    def is_visible
      check_widget
      return @is_visible && @parent.is_visible && has_focus
    end
    
    typesig { [] }
    def kill_focus
      OS._destroy_caret
      restore_imefont
    end
    
    typesig { [] }
    def move
      @moved = false
      if (!OS._set_caret_pos(@x, @y))
        return
      end
      resize_ime
    end
    
    typesig { [] }
    def resize_ime
      if (!OS::IsDBLocale)
        return
      end
      pt_current_pos = POINT.new
      if (!OS._get_caret_pos(pt_current_pos))
        return
      end
      # long
      hwnd = @parent.attr_handle
      # long
      h_imc = OS._imm_get_context(hwnd)
      ime = @parent.get_ime
      if (!(ime).nil? && ime.is_inline_enabled)
        size = get_size
        lp_candidate = CANDIDATEFORM.new
        lp_candidate.attr_dw_style = OS::CFS_EXCLUDE
        lp_candidate.attr_pt_current_pos = pt_current_pos
        lp_candidate.attr_rc_area = RECT.new
        OS._set_rect(lp_candidate.attr_rc_area, pt_current_pos.attr_x, pt_current_pos.attr_y, pt_current_pos.attr_x + size.attr_x, pt_current_pos.attr_y + size.attr_y)
        OS._imm_set_candidate_window(h_imc, lp_candidate)
      else
        rect = RECT.new
        OS._get_client_rect(hwnd, rect)
        lp_comp_form = COMPOSITIONFORM.new
        lp_comp_form.attr_dw_style = OS::CFS_RECT
        lp_comp_form.attr_x = pt_current_pos.attr_x
        lp_comp_form.attr_y = pt_current_pos.attr_y
        lp_comp_form.attr_left = rect.attr_left
        lp_comp_form.attr_right = rect.attr_right
        lp_comp_form.attr_top = rect.attr_top
        lp_comp_form.attr_bottom = rect.attr_bottom
        OS._imm_set_composition_window(h_imc, lp_comp_form)
      end
      OS._imm_release_context(hwnd, h_imc)
    end
    
    typesig { [] }
    def release_parent
      super
      if ((self).equal?(@parent.get_caret))
        @parent.set_caret(nil)
      end
    end
    
    typesig { [] }
    def release_widget
      super
      @parent = nil
      @image = nil
      @font = nil
      @old_font = nil
    end
    
    typesig { [] }
    def resize
      @resized = false
      # long
      hwnd = @parent.attr_handle
      OS._destroy_caret
      # long
      h_bitmap = !(@image).nil? ? @image.attr_handle : 0
      width = @width
      if (!OS::IsWinCE && (@image).nil? && (width).equal?(0))
        buffer = Array.typed(::Java::Int).new(1) { 0 }
        if (OS._system_parameters_info(OS::SPI_GETCARETWIDTH, 0, buffer, 0))
          width = buffer[0]
        end
      end
      OS._create_caret(hwnd, h_bitmap, width, @height)
      OS._set_caret_pos(@x, @y)
      OS._show_caret(hwnd)
      move___org_eclipse_swt_widgets_caret_1
    end
    
    typesig { [] }
    def restore_imefont
      if (!OS::IsDBLocale)
        return
      end
      if ((@old_font).nil?)
        return
      end
      # long
      hwnd = @parent.attr_handle
      # long
      h_imc = OS._imm_get_context(hwnd)
      OS._imm_set_composition_font(h_imc, @old_font)
      OS._imm_release_context(hwnd, h_imc)
      @old_font = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the receiver's size and location to the rectangular
    # area specified by the arguments. The <code>x</code> and
    # <code>y</code> arguments are relative to the receiver's
    # parent (or its display if its parent is null).
    # 
    # @param x the new x coordinate for the receiver
    # @param y the new y coordinate for the receiver
    # @param width the new width for the receiver
    # @param height the new height for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_bounds(x, y, width, height)
      check_widget
      same_position = (@x).equal?(x) && (@y).equal?(y)
      same_extent = (@width).equal?(width) && (@height).equal?(height)
      if (same_position && same_extent)
        return
      end
      @x = x
      @y = y
      @width = width
      @height = height
      if (same_extent)
        @moved = true
        if (@is_visible && has_focus)
          move___org_eclipse_swt_widgets_caret_3
        end
      else
        @resized = true
        if (@is_visible && has_focus)
          resize
        end
      end
    end
    
    typesig { [Rectangle] }
    # Sets the receiver's size and location to the rectangular
    # area specified by the argument. The <code>x</code> and
    # <code>y</code> fields of the rectangle are relative to
    # the receiver's parent (or its display if its parent is null).
    # 
    # @param rect the new bounds for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_bounds(rect)
      if ((rect).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_bounds(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
    end
    
    typesig { [] }
    def set_focus
      # long
      hwnd = @parent.attr_handle
      # long
      h_bitmap = 0
      if (!(@image).nil?)
        h_bitmap = @image.attr_handle
      end
      width = @width
      if (!OS::IsWinCE && (@image).nil? && (width).equal?(0))
        buffer = Array.typed(::Java::Int).new(1) { 0 }
        if (OS._system_parameters_info(OS::SPI_GETCARETWIDTH, 0, buffer, 0))
          width = buffer[0]
        end
      end
      OS._create_caret(hwnd, h_bitmap, width, @height)
      move___org_eclipse_swt_widgets_caret_5
      set_imefont
      if (@is_visible)
        OS._show_caret(hwnd)
      end
    end
    
    typesig { [Font] }
    # Sets the font that the receiver will use to paint textual information
    # to the font specified by the argument, or to the default font for that
    # kind of control if the argument is null.
    # 
    # @param font the new font (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the font has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_font(font)
      check_widget
      if (!(font).nil? && font.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @font = font
      if (has_focus)
        set_imefont
      end
    end
    
    typesig { [Image] }
    # Sets the image that the receiver will use to paint the caret
    # to the image specified by the argument, or to the default
    # which is a filled rectangle if the argument is null
    # 
    # @param image the new image (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @image = image
      if (@is_visible && has_focus)
        resize
      end
    end
    
    typesig { [] }
    def set_imefont
      if (!OS::IsDBLocale)
        return
      end
      # long
      h_font = 0
      if (!(@font).nil?)
        h_font = @font.attr_handle
      end
      if ((h_font).equal?(0))
        h_font = default_font
      end
      # long
      hwnd = @parent.attr_handle
      # long
      h_imc = OS._imm_get_context(hwnd)
      # Save the current IME font
      if ((@old_font).nil?)
        @old_font = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
        if (!OS._imm_get_composition_font(h_imc, @old_font))
          @old_font = nil
        end
      end
      # Set new IME font
      log_font = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
      if (!(OS._get_object(h_font, LOGFONT.attr_sizeof, log_font)).equal?(0))
        OS._imm_set_composition_font(h_imc, log_font)
      end
      OS._imm_release_context(hwnd, h_imc)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the receiver's location to the point specified by
    # the arguments which are relative to the receiver's
    # parent (or its display if its parent is null).
    # 
    # @param x the new x coordinate for the receiver
    # @param y the new y coordinate for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_location(x, y)
      check_widget
      if ((@x).equal?(x) && (@y).equal?(y))
        return
      end
      @x = x
      @y = y
      @moved = true
      if (@is_visible && has_focus)
        move___org_eclipse_swt_widgets_caret_7
      end
    end
    
    typesig { [Point] }
    # Sets the receiver's location to the point specified by
    # the argument which is relative to the receiver's
    # parent (or its display if its parent is null).
    # 
    # @param location the new location for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_location(location)
      check_widget
      if ((location).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_location(location.attr_x, location.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the receiver's size to the point specified by the arguments.
    # 
    # @param width the new width for the receiver
    # @param height the new height for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_size(width, height)
      check_widget
      if ((@width).equal?(width) && (@height).equal?(height))
        return
      end
      @width = width
      @height = height
      @resized = true
      if (@is_visible && has_focus)
        resize
      end
    end
    
    typesig { [Point] }
    # Sets the receiver's size to the point specified by the argument.
    # 
    # @param size the new extent for the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_size(size)
      check_widget
      if ((size).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_size(size.attr_x, size.attr_y)
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, marking
    # it visible may not actually cause it to be displayed.
    # </p>
    # 
    # @param visible the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_visible(visible)
      check_widget
      if ((visible).equal?(@is_visible))
        return
      end
      @is_visible = visible
      # long
      hwnd = @parent.attr_handle
      if (!(OS._get_focus).equal?(hwnd))
        return
      end
      if (!@is_visible)
        OS._hide_caret(hwnd)
      else
        if (@resized)
          resize
        else
          if (@moved)
            move___org_eclipse_swt_widgets_caret_9
          end
        end
        OS._show_caret(hwnd)
      end
    end
    
    private
    alias_method :initialize__caret, :initialize
  end
  
end
