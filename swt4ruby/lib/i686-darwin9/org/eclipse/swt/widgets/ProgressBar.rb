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
  module ProgressBarImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of the receiver represent an unselectable
  # user interface object that is used to display progress,
  # typically in the form of a bar.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SMOOTH, HORIZONTAL, VERTICAL, INDETERMINATE</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#progressbar">ProgressBar snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class ProgressBar < ProgressBarImports.const_get :Control
    include_class_members ProgressBarImports
    
    attr_accessor :visible_path
    alias_method :attr_visible_path, :visible_path
    undef_method :visible_path
    alias_method :attr_visible_path=, :visible_path=
    undef_method :visible_path=
    
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
    # @see SWT#SMOOTH
    # @see SWT#HORIZONTAL
    # @see SWT#VERTICAL
    # @see SWT#INDETERMINATE
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @visible_path = nil
      super(parent, check_style(style))
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style |= SWT::NO_FOCUS
        return check_bits(style, SWT::HORIZONTAL, SWT::VERTICAL, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      size = OS::NSProgressIndicatorPreferredThickness
      width = 0
      height = 0
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        height = size
        width = height * 10
      else
        width = size
        height = width * 10
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      widget = SWTProgressIndicator.new.alloc
      widget.init
      widget.set_uses_threaded_animation(false)
      widget.set_indeterminate(!((self.attr_style & SWT::INDETERMINATE)).equal?(0))
      self.attr_view = widget
    end
    
    typesig { [] }
    def default_nsfont
      return self.attr_display.attr_progress_indicator_font
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def __draw_theme_progress_area(id, sel, arg0)
      # Bug in Cocoa.  When the threaded animation is turned off by calling
      # setUsesThreadedAnimation(), _drawThemeProgressArea() attempts to
      # access a deallocated NSBitmapGraphicsContext when drawing a zero sized
      # progress bar.  The fix is to avoid calling super when the progress bar
      # is zero sized.
      frame_ = self.attr_view.frame
      if ((frame_.attr_width).equal?(0) || (frame_.attr_height).equal?(0))
        return
      end
      # Bug in Cocoa. When the progress bar is animating it calls
      # _drawThemeProgressArea() directly without taking into account
      # obscured areas. The fix is to clip the drawing to the visible
      # region of the progress bar before calling super.
      if ((@visible_path).nil?)
        # long
        visible_region = get_visible_region
        @visible_path = get_path(visible_region)
        OS._dispose_rgn(visible_region)
      end
      context = NSGraphicsContext.current_context
      context.save_graphics_state
      @visible_path.set_clip
      super(id, sel, arg0)
      context.restore_graphics_state
    end
    
    typesig { [] }
    # Returns the maximum value which the receiver will allow.
    # 
    # @return the maximum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_maximum
      check_widget
      return RJava.cast_to_int((self.attr_view).max_value)
    end
    
    typesig { [] }
    # Returns the minimum value which the receiver will allow.
    # 
    # @return the minimum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_minimum
      check_widget
      return RJava.cast_to_int((self.attr_view).min_value)
    end
    
    typesig { [] }
    # Returns the single 'selection' that is the receiver's position.
    # 
    # @return the selection
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      return RJava.cast_to_int((self.attr_view).double_value)
    end
    
    typesig { [] }
    # Returns the state of the receiver. The value will be one of:
    # <ul>
    # <li>{@link SWT#NORMAL}</li>
    # <li>{@link SWT#ERROR}</li>
    # <li>{@link SWT#PAUSED}</li>
    # </ul>
    # 
    # @return the state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_state
      check_widget
      return SWT::NORMAL
    end
    
    typesig { [::Java::Int] }
    # Sets the maximum value that the receiver will allow.  This new
    # value will be ignored if it is not greater than the receiver's current
    # minimum value.  If the new maximum is applied then the receiver's
    # selection value will be adjusted if necessary to fall within its new range.
    # 
    # @param value the new maximum, which must be greater than the current minimum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_maximum(value)
      check_widget
      minimum = RJava.cast_to_int((self.attr_view).min_value)
      if (value <= minimum)
        return
      end
      (self.attr_view).set_max_value(value)
      selection = RJava.cast_to_int((self.attr_view).double_value)
      new_selection = Math.min(selection, value)
      if (!(selection).equal?(new_selection))
        (self.attr_view).set_double_value(new_selection)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the minimum value that the receiver will allow.  This new
    # value will be ignored if it is negative or is not less than the receiver's
    # current maximum value.  If the new minimum is applied then the receiver's
    # selection value will be adjusted if necessary to fall within its new range.
    # 
    # @param value the new minimum, which must be nonnegative and less than the current maximum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_minimum(value)
      check_widget
      maximum = RJava.cast_to_int((self.attr_view).max_value)
      if (!(0 <= value && value < maximum))
        return
      end
      (self.attr_view).set_min_value(value)
      selection = RJava.cast_to_int((self.attr_view).double_value)
      new_selection = Math.max(selection, value)
      if (!(selection).equal?(new_selection))
        (self.attr_view).set_double_value(new_selection)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the single 'selection' that is the receiver's
    # position to the argument which must be greater than or equal
    # to zero.
    # 
    # @param value the new selection (must be zero or greater)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(value)
      check_widget
      (self.attr_view).set_double_value(value)
      # Feature in Cocoa.  The progress bar does
      # not redraw right away when a value is
      # changed.  This is not strictly incorrect
      # but unexpected.  The fix is to force all
      # outstanding redraws to be delivered.
      update(false)
    end
    
    typesig { [::Java::Int] }
    # Sets the state of the receiver. The state must be one of these values:
    # <ul>
    # <li>{@link SWT#NORMAL}</li>
    # <li>{@link SWT#ERROR}</li>
    # <li>{@link SWT#PAUSED}</li>
    # </ul>
    # 
    # @param state the new state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_state(state)
      check_widget
      # NOT IMPLEMENTED
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@visible_path).nil?)
        @visible_path.release
      end
      @visible_path = nil
    end
    
    typesig { [] }
    def reset_visible_region
      super
      if (!(@visible_path).nil?)
        @visible_path.release
      end
      @visible_path = nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def view_did_move_to_window(id, sel)
      # Bug in Cocoa. An indeterminate progress indicator doesn't start animating until it is in
      # a visible window.  Workaround is to catch when the bar has been added to a window and start
      # the animation there.
      if (!(self.attr_view.window___org_eclipse_swt_widgets_progress_bar_1).nil?)
        if (!((self.attr_style & SWT::INDETERMINATE)).equal?(0))
          (self.attr_view).start_animation(nil)
        end
      end
    end
    
    private
    alias_method :initialize__progress_bar, :initialize
  end
  
end
