require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Accessibility
  module AccessibleControlEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Accessibility
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventObject
    }
  end
  
  # Instances of this class are sent as a result of
  # accessibility clients sending messages to controls
  # asking for detailed information about the implementation
  # of the control instance. Typically, only implementors
  # of custom controls need to listen for this event.
  # <p>
  # Note: The meaning of each field depends on the
  # message that was sent.
  # </p>
  # 
  # @see AccessibleControlListener
  # @see AccessibleControlAdapter
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 2.0
  class AccessibleControlEvent < AccessibleControlEventImports.const_get :SWTEventObject
    include_class_members AccessibleControlEventImports
    
    attr_accessor :child_id
    alias_method :attr_child_id, :child_id
    undef_method :child_id
    alias_method :attr_child_id=, :child_id=
    undef_method :child_id=
    
    # IN/OUT
    attr_accessor :accessible
    alias_method :attr_accessible, :accessible
    undef_method :accessible
    alias_method :attr_accessible=, :accessible=
    undef_method :accessible=
    
    # OUT
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
    
    # IN/OUT
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
    
    # OUT
    attr_accessor :detail
    alias_method :attr_detail, :detail
    undef_method :detail
    alias_method :attr_detail=, :detail=
    undef_method :detail=
    
    # IN/OUT
    attr_accessor :result
    alias_method :attr_result, :result
    undef_method :result
    alias_method :attr_result=, :result=
    undef_method :result=
    
    # OUT
    attr_accessor :children
    alias_method :attr_children, :children
    undef_method :children
    alias_method :attr_children=, :children=
    undef_method :children=
    
    class_module.module_eval {
      # [OUT]
      const_set_lazy(:SerialVersionUID) { 3257281444169529141 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Object] }
    # Constructs a new instance of this class.
    # 
    # @param source the object that fired the event
    def initialize(source)
      @child_id = 0
      @accessible = nil
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @detail = 0
      @result = nil
      @children = nil
      super(source)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      # $NON-NLS-1$
      # $NON-NLS-1$
      # $NON-NLS-1$
      # $NON-NLS-1$
      # $NON-NLS-1$
      # $NON-NLS-1$
      # $NON-NLS-1$
      # $NON-NLS-1$
      return "AccessibleControlEvent {childID=" + (@child_id).to_s + " accessible=" + (@accessible).to_s + " x=" + (@x).to_s + " y=" + (@y).to_s + " width=" + (@width).to_s + " height=" + (@height).to_s + " detail=" + (@detail).to_s + " result=" + @result + "}" # $NON-NLS-1$
    end
    
    private
    alias_method :initialize__accessible_control_event, :initialize
  end
  
end
