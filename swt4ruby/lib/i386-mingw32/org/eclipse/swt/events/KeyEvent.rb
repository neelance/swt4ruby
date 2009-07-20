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
  module KeyEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Widgets, :Event
    }
  end
  
  # Instances of this class are sent as a result of
  # keys being pressed and released on the keyboard.
  # <p>
  # When a key listener is added to a control, the control
  # will take part in widget traversal.  By default, all
  # traversal keys (such as the tab key and so on) are
  # delivered to the control.  In order for a control to take
  # part in traversal, it should listen for traversal events.
  # Otherwise, the user can traverse into a control but not
  # out.  Note that native controls such as table and tree
  # implement key traversal in the operating system.  It is
  # not necessary to add traversal listeners for these controls,
  # unless you want to override the default traversal.
  # </p>
  # 
  # @see KeyListener
  # @see TraverseListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class KeyEvent < KeyEventImports.const_get :TypedEvent
    include_class_members KeyEventImports
    
    # the character represented by the key that was typed.
    # This is the final character that results after all modifiers have been
    # applied.  For example, when the user types Ctrl+A, the character value
    # is 0x01.  It is important that applications do not attempt to modify the
    # character value based on a stateMask (such as SWT.CTRL) or the resulting
    # character will not be correct.
    attr_accessor :character
    alias_method :attr_character, :character
    undef_method :character
    alias_method :attr_character=, :character=
    undef_method :character=
    
    # the key code of the key that was typed,
    # as defined by the key code constants in class <code>SWT</code>.
    # When the character field of the event is ambiguous, this field
    # contains the unicode value of the original character.  For example,
    # typing Ctrl+M or Return both result in the character '\r' but the
    # keyCode field will also contain '\r' when Return was typed.
    # 
    # @see org.eclipse.swt.SWT
    attr_accessor :key_code
    alias_method :attr_key_code, :key_code
    undef_method :key_code
    alias_method :attr_key_code=, :key_code=
    undef_method :key_code=
    
    # the state of the keyboard modifier keys at the time
    # the event was generated, as defined by the key code
    # constants in class <code>SWT</code>.
    # 
    # @see org.eclipse.swt.SWT
    attr_accessor :state_mask
    alias_method :attr_state_mask, :state_mask
    undef_method :state_mask
    alias_method :attr_state_mask=, :state_mask=
    undef_method :state_mask=
    
    # A flag indicating whether the operation should be allowed.
    # Setting this field to <code>false</code> will cancel the operation.
    attr_accessor :doit
    alias_method :attr_doit, :doit
    undef_method :doit
    alias_method :attr_doit=, :doit=
    undef_method :doit=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3256442491011412789 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Event] }
    # Constructs a new instance of this class based on the
    # information in the given untyped event.
    # 
    # @param e the untyped event containing the information
    def initialize(e)
      @character = 0
      @key_code = 0
      @state_mask = 0
      @doit = false
      super(e)
      @character = e.attr_character
      @key_code = e.attr_key_code
      @state_mask = e.attr_state_mask
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
      return (string.substring(0, string.length - 1)).to_s + " character='" + ((((@character).equal?(0)) ? "\\0" : "" + (@character).to_s)).to_s + "'" + " keyCode=" + (@key_code).to_s + " stateMask=" + (@state_mask).to_s + " doit=" + (@doit).to_s + "}"
    end
    
    private
    alias_method :initialize__key_event, :initialize
  end
  
end
