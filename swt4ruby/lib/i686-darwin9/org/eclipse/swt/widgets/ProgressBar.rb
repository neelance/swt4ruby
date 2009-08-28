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
  module ProgressBarImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Graphics, :Point
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
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
  class ProgressBar < ProgressBarImports.const_get :Control
    include_class_members ProgressBarImports
    
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
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
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
      out_metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_normal_progress_bar_thickness, out_metric)
      width = 0
      height = 0
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        height = out_metric[0]
        width = height * 10
      else
        width = out_metric[0]
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
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      window = OS._get_control_owner(self.attr_parent.attr_handle)
      OS._create_progress_bar_control(window, nil, 0, 0, 100, !((self.attr_style & SWT::INDETERMINATE)).equal?(0), out_control)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = out_control[0]
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def draw_background(control, context)
      fill_background(control, context, nil)
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
      return OS._get_control32bit_maximum(self.attr_handle)
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
      return OS._get_control32bit_minimum(self.attr_handle)
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
      return OS._get_control32bit_value(self.attr_handle)
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
      if (value < 0)
        return
      end
      minimum = OS._get_control32bit_minimum(self.attr_handle)
      if (value > minimum)
        OS._set_control32bit_maximum(self.attr_handle, value)
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
      if (value < 0)
        return
      end
      maximum = OS._get_control32bit_maximum(self.attr_handle)
      if (value < maximum)
        OS._set_control32bit_minimum(self.attr_handle, value)
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
      OS._set_control32bit_value(self.attr_handle, value)
      # Feature in the Macintosh.  Progress bars are always updated
      # using an event loop timer, even when they are not indeterminate.
      # This means that nothing is drawn until the event loop.  The
      # fix is to allow operating system timers to run without dispatching
      # any other events.
      self.attr_display.run_event_loop_timers
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
    
    private
    alias_method :initialize__progress_bar, :initialize
  end
  
end
