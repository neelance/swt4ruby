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
  module EventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class provide a description of a particular
  # event which occurred within SWT. The SWT <em>untyped listener</em>
  # API uses these instances for all event dispatching.
  # <p>
  # Note: For a given event, only the fields which are appropriate
  # will be filled in. The contents of the fields which are not used
  # by the event are unspecified.
  # </p>
  # 
  # @see Listener
  # @see org.eclipse.swt.events.TypedEvent
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample, Listeners</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Event 
    include_class_members EventImports
    
    # the display where the event occurred
    # 
    # @since 2.0
    attr_accessor :display
    alias_method :attr_display, :display
    undef_method :display
    alias_method :attr_display=, :display=
    undef_method :display=
    
    # the widget that issued the event
    attr_accessor :widget
    alias_method :attr_widget, :widget
    undef_method :widget
    alias_method :attr_widget=, :widget=
    undef_method :widget=
    
    # the type of event, as defined by the event type constants
    # in class <code>SWT</code>
    # 
    # @see org.eclipse.swt.SWT
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # the event specific detail field, as defined by the detail constants
    # in class <code>SWT</code>
    # 
    # @see org.eclipse.swt.SWT
    attr_accessor :detail
    alias_method :attr_detail, :detail
    undef_method :detail
    alias_method :attr_detail=, :detail=
    undef_method :detail=
    
    # the item that the event occurred in (can be null)
    attr_accessor :item
    alias_method :attr_item, :item
    undef_method :item
    alias_method :attr_item=, :item=
    undef_method :item=
    
    # the index of the item where the event occurred
    # 
    # @since 3.2
    attr_accessor :index
    alias_method :attr_index, :index
    undef_method :index
    alias_method :attr_index=, :index=
    undef_method :index=
    
    # the graphics context to use when painting
    # that is configured to use the colors, font and
    # damaged region of the control.  It is valid
    # only during the paint and must not be disposed
    attr_accessor :gc
    alias_method :attr_gc, :gc
    undef_method :gc
    alias_method :attr_gc=, :gc=
    undef_method :gc=
    
    # depending on the event type, the x offset of the bounding
    # rectangle of the region that requires painting or the
    # widget-relative, x coordinate of the pointer at the
    # time the mouse button was pressed or released
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # depending on the event type, the y offset of the bounding
    # rectangle of the  region that requires painting or the
    # widget-relative, y coordinate of the pointer at the
    # time the mouse button was pressed or released
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # the width of the bounding rectangle of the
    # region that requires painting
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # the height of the bounding rectangle of the
    # region that requires painting
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    # depending on the event type, the number of following
    # paint events which are pending which may always be zero
    # on some platforms or the number of lines or pages to
    # scroll using the mouse wheel
    attr_accessor :count
    alias_method :attr_count, :count
    undef_method :count
    alias_method :attr_count=, :count=
    undef_method :count=
    
    # the time that the event occurred.
    # 
    # NOTE: This field is an unsigned integer and should
    # be AND'ed with 0xFFFFFFFFL so that it can be treated
    # as a signed long.
    attr_accessor :time
    alias_method :attr_time, :time
    undef_method :time
    alias_method :attr_time=, :time=
    undef_method :time=
    
    # the button that was pressed or released; 1 for the
    # first button, 2 for the second button, and 3 for the
    # third button, etc.
    attr_accessor :button
    alias_method :attr_button, :button
    undef_method :button
    alias_method :attr_button=, :button=
    undef_method :button=
    
    # depending on the event, the character represented by the key
    # that was typed.  This is the final character that results
    # after all modifiers have been applied.  For example, when the
    # user types Ctrl+A, the character value is 0x01 (ASCII SOH).
    # It is important that applications do not attempt to modify the
    # character value based on a stateMask (such as SWT.CTRL) or the
    # resulting character will not be correct.
    attr_accessor :character
    alias_method :attr_character, :character
    undef_method :character
    alias_method :attr_character=, :character=
    undef_method :character=
    
    # depending on the event, the key code of the key that was typed,
    # as defined by the key code constants in class <code>SWT</code>.
    # When the character field of the event is ambiguous, this field
    # contains the unaffected value of the original character.  For
    # example, typing Ctrl+M or Enter both result in the character '\r'
    # but the keyCode field will also contain '\r' when Enter was typed
    # and 'm' when Ctrl+M was typed.
    # 
    # @see org.eclipse.swt.SWT
    attr_accessor :key_code
    alias_method :attr_key_code, :key_code
    undef_method :key_code
    alias_method :attr_key_code=, :key_code=
    undef_method :key_code=
    
    # depending on the event, the state of the keyboard modifier
    # keys and mouse masks at the time the event was generated.
    # 
    # @see org.eclipse.swt.SWT
    attr_accessor :state_mask
    alias_method :attr_state_mask, :state_mask
    undef_method :state_mask
    alias_method :attr_state_mask=, :state_mask=
    undef_method :state_mask=
    
    # depending on the event, the range of text being modified.
    # Setting these fields only has effect during ImeComposition
    # events.
    attr_accessor :start
    alias_method :attr_start, :start
    undef_method :start
    alias_method :attr_start=, :start=
    undef_method :start=
    
    attr_accessor :end
    alias_method :attr_end, :end
    undef_method :end
    alias_method :attr_end=, :end=
    undef_method :end=
    
    # depending on the event, the new text that will be inserted.
    # Setting this field will change the text that is about to
    # be inserted or deleted.
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    # depending on the event, a flag indicating whether the operation
    # should be allowed.  Setting this field to false will cancel the
    # operation.
    attr_accessor :doit
    alias_method :attr_doit, :doit
    undef_method :doit
    alias_method :attr_doit=, :doit=
    undef_method :doit=
    
    # a field for application use
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    typesig { [] }
    # Gets the bounds.
    # 
    # @return a rectangle that is the bounds.
    def get_bounds
      return Rectangle.new(@x, @y, @width, @height)
    end
    
    typesig { [Rectangle] }
    # Sets the bounds.
    # 
    # @param rect the new rectangle
    def set_bounds(rect)
      @x = rect.attr_x
      @y = rect.attr_y
      @width = rect.attr_width
      @height = rect.attr_height
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      return "Event {type=" + RJava.cast_to_string(@type) + " " + RJava.cast_to_string(@widget) + " time=" + RJava.cast_to_string(@time) + " data=" + RJava.cast_to_string(@data) + " x=" + RJava.cast_to_string(@x) + " y=" + RJava.cast_to_string(@y) + " width=" + RJava.cast_to_string(@width) + " height=" + RJava.cast_to_string(@height) + " detail=" + RJava.cast_to_string(@detail) + "}" # $NON-NLS-1$//$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$ //$NON-NLS-5$ //$NON-NLS-6$ //$NON-NLS-7$
    end
    
    typesig { [] }
    def initialize
      @display = nil
      @widget = nil
      @type = 0
      @detail = 0
      @item = nil
      @index = 0
      @gc = nil
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @count = 0
      @time = 0
      @button = 0
      @character = 0
      @key_code = 0
      @state_mask = 0
      @start = 0
      @end = 0
      @text = nil
      @doit = true
      @data = nil
    end
    
    private
    alias_method :initialize__event___org_eclipse_swt_widgets_event_0, :initialize
  end
  
end
