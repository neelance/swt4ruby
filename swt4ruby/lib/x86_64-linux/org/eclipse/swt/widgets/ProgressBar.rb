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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    attr_accessor :timer_id
    alias_method :attr_timer_id, :timer_id
    undef_method :timer_id
    alias_method :attr_timer_id=, :timer_id=
    undef_method :timer_id=
    
    attr_accessor :minimum
    alias_method :attr_minimum, :minimum
    undef_method :minimum
    alias_method :attr_minimum=, :minimum=
    undef_method :minimum=
    
    attr_accessor :maximum
    alias_method :attr_maximum, :maximum
    undef_method :maximum
    alias_method :attr_maximum=, :maximum=
    undef_method :maximum=
    
    attr_accessor :selection
    alias_method :attr_selection, :selection
    undef_method :selection
    alias_method :attr_selection=, :selection=
    undef_method :selection=
    
    class_module.module_eval {
      const_set_lazy(:DELAY) { 100 }
      const_attr_reader  :DELAY
    }
    
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
      @timer_id = 0
      @minimum = 0
      @maximum = 0
      @selection = 0
      super(parent, check_style(style))
      @minimum = 0
      @maximum = 100
      @selection = 0
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style |= SWT::NO_FOCUS
        return check_bits(style, SWT::HORIZONTAL, SWT::VERTICAL, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      self.attr_handle = OS.gtk_progress_bar_new
      if ((self.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
      orientation = !((self.attr_style & SWT::VERTICAL)).equal?(0) ? OS::GTK_PROGRESS_BOTTOM_TO_TOP : OS::GTK_PROGRESS_LEFT_TO_RIGHT
      OS.gtk_progress_bar_set_orientation(self.attr_handle, orientation)
      if (!((self.attr_style & SWT::INDETERMINATE)).equal?(0))
        @timer_id = OS.gtk_timeout_add(DELAY, self.attr_display.attr_window_timer_proc, self.attr_handle)
      end
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
      return @maximum
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
      return @minimum
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
      return @selection
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
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_realize(widget)
      # int
      result = super(widget)
      if (!(result).equal?(0))
        return result
      end
      # Bug in GTK.  When a progress bar has been unrealized after being
      # realized at least once, gtk_progress_bar_set_fraction() GP's.  The
      # fix is to update the progress bar state only when realized and restore
      # the state when the progress bar becomes realized.
      update_bar(@selection, @minimum, @maximum)
      return 0
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@timer_id).equal?(0))
        OS.gtk_timeout_remove(@timer_id)
      end
      @timer_id = 0
    end
    
    typesig { [] }
    def set_parent_background
      # Bug in GTK.  For some reason, some theme managers will crash
      # when the progress bar is inheriting the background from a parent.
      # The fix is to stop inheriting the background. This is acceptable
      # since progress bars do not use the inherited background.
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
      if (value <= @minimum)
        return
      end
      @maximum = value
      @selection = Math.min(@selection, @maximum)
      update_bar(@selection, @minimum, @maximum)
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
      if (value < 0 || value >= @maximum)
        return
      end
      @minimum = value
      @selection = Math.max(@selection, @minimum)
      update_bar(@selection, @minimum, @maximum)
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
      @selection = Math.max(@minimum, Math.min(@maximum, value))
      update_bar(@selection, @minimum, @maximum)
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
    
    typesig { [::Java::Long] }
    # int
    # int
    def timer_proc(widget)
      if (is_visible)
        OS.gtk_progress_bar_pulse(self.attr_handle)
      end
      return 1
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def update_bar(selection, minimum, maximum)
      # Bug in GTK.  When a progress bar has been unrealized after being
      # realized at least once, gtk_progress_bar_set_fraction() GP's.  The
      # fix is to update the progress bar state only when realized and restore
      # the state when the progress bar becomes realized.
      if (((OS._gtk_widget_flags(self.attr_handle) & OS::GTK_REALIZED)).equal?(0))
        return
      end
      fraction = (minimum).equal?(maximum) ? 1 : ((selection - minimum)).to_f / (maximum - minimum)
      OS.gtk_progress_bar_set_fraction(self.attr_handle, fraction)
      # Feature in GTK.  The progress bar does
      # not redraw right away when a value is
      # changed.  This is not strictly incorrect
      # but unexpected.  The fix is to force all
      # outstanding redraws to be delivered.
      # 
      # int
      window = paint_window
      OS.gdk_window_process_updates(window, false)
      OS.gdk_flush
    end
    
    private
    alias_method :initialize__progress_bar, :initialize
  end
  
end
