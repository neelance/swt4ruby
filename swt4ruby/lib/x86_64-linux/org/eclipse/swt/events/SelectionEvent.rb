require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module SelectionEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Instances of this class are sent as a result of
  # widgets being selected.
  # <p>
  # Note: The fields that are filled in depend on the widget.
  # </p>
  # 
  # @see SelectionListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class SelectionEvent < SelectionEventImports.const_get :TypedEvent
    include_class_members SelectionEventImports
    
    # The item that was selected.
    attr_accessor :item
    alias_method :attr_item, :item
    undef_method :item
    alias_method :attr_item=, :item=
    undef_method :item=
    
    # Extra detail information about the selection, depending on the widget.
    # 
    # <p><b>Sash</b><ul>
    # <li>{@link org.eclipse.swt.SWT#DRAG}</li>
    # </ul></p><p><b>ScrollBar and Slider</b><ul>
    # <li>{@link org.eclipse.swt.SWT#DRAG}</li>
    # <li>{@link org.eclipse.swt.SWT#HOME}</li>
    # <li>{@link org.eclipse.swt.SWT#END}</li>
    # <li>{@link org.eclipse.swt.SWT#ARROW_DOWN}</li>
    # <li>{@link org.eclipse.swt.SWT#ARROW_UP}</li>
    # <li>{@link org.eclipse.swt.SWT#PAGE_DOWN}</li>
    # <li>{@link org.eclipse.swt.SWT#PAGE_UP}</li>
    # </ul></p><p><b>Table and Tree</b><ul>
    # <li>{@link org.eclipse.swt.SWT#CHECK}</li>
    # </ul></p><p><b>Text</b><ul>
    # <li>{@link org.eclipse.swt.SWT#CANCEL}</li>
    # </ul></p><p><b>CoolItem and ToolItem</b><ul>
    # <li>{@link org.eclipse.swt.SWT#ARROW}</li>
    # </ul></p>
    attr_accessor :detail
    alias_method :attr_detail, :detail
    undef_method :detail
    alias_method :attr_detail=, :detail=
    undef_method :detail=
    
    # The x location of the selected area.
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # The y location of selected area.
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # The width of selected area.
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # The height of selected area.
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    # The state of the keyboard modifier keys at the time
    # the event was generated.
    attr_accessor :state_mask
    alias_method :attr_state_mask, :state_mask
    undef_method :state_mask
    alias_method :attr_state_mask=, :state_mask=
    undef_method :state_mask=
    
    # The text of the hyperlink that was selected.
    # This will be either the text of the hyperlink or the value of its HREF,
    # if one was specified.
    # 
    # @see org.eclipse.swt.widgets.Link#setText(String)
    # @since 3.1
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    # A flag indicating whether the operation should be allowed.
    # Setting this field to <code>false</code> will cancel the
    # operation, depending on the widget.
    attr_accessor :doit
    alias_method :attr_doit, :doit
    undef_method :doit
    alias_method :attr_doit=, :doit=
    undef_method :doit=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3976735856884987953 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Event] }
    # Constructs a new instance of this class based on the
    # information in the given untyped event.
    # 
    # @param e the untyped event containing the information
    def initialize(e)
      @item = nil
      @detail = 0
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @state_mask = 0
      @text = nil
      @doit = false
      super(e)
      @item = e.attr_item
      @x = e.attr_x
      @y = e.attr_y
      @width = e.attr_width
      @height = e.attr_height
      @detail = e.attr_detail
      @state_mask = e.attr_state_mask
      @text = e.attr_text
      @doit = e.attr_doit
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      string = super
      # remove trailing '}'
      return RJava.cast_to_string(string.substring(0, string.length - 1)) + " item=" + RJava.cast_to_string(@item) + " detail=" + RJava.cast_to_string(@detail) + " x=" + RJava.cast_to_string(@x) + " y=" + RJava.cast_to_string(@y) + " width=" + RJava.cast_to_string(@width) + " height=" + RJava.cast_to_string(@height) + " stateMask=" + RJava.cast_to_string(@state_mask) + " text=" + @text + " doit=" + RJava.cast_to_string(@doit) + "}"
    end
    
    private
    alias_method :initialize__selection_event, :initialize
  end
  
end
