require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module TextChangingEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This event is sent by the StyledTextContent implementor when a change
  # to the text is about to occur.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class TextChangingEvent < TextChangingEventImports.const_get :TypedEvent
    include_class_members TextChangingEventImports
    
    # Start offset of the text that is going to be replaced
    attr_accessor :start
    alias_method :attr_start, :start
    undef_method :start
    alias_method :attr_start=, :start=
    undef_method :start=
    
    # Text that is going to be inserted or empty string
    # if no text will be inserted
    attr_accessor :new_text
    alias_method :attr_new_text, :new_text
    undef_method :new_text
    alias_method :attr_new_text=, :new_text=
    undef_method :new_text=
    
    # Length of text that is going to be replaced
    attr_accessor :replace_char_count
    alias_method :attr_replace_char_count, :replace_char_count
    undef_method :replace_char_count
    alias_method :attr_replace_char_count=, :replace_char_count=
    undef_method :replace_char_count=
    
    # Length of text that is going to be inserted
    attr_accessor :new_char_count
    alias_method :attr_new_char_count, :new_char_count
    undef_method :new_char_count
    alias_method :attr_new_char_count=, :new_char_count=
    undef_method :new_char_count=
    
    # Number of lines that are going to be replaced
    attr_accessor :replace_line_count
    alias_method :attr_replace_line_count, :replace_line_count
    undef_method :replace_line_count
    alias_method :attr_replace_line_count=, :replace_line_count=
    undef_method :replace_line_count=
    
    # Number of new lines that are going to be inserted
    attr_accessor :new_line_count
    alias_method :attr_new_line_count, :new_line_count
    undef_method :new_line_count
    alias_method :attr_new_line_count=, :new_line_count=
    undef_method :new_line_count=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3257290210114352439 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [StyledTextContent] }
    # Create the TextChangedEvent to be used by the StyledTextContent implementor.
    # <p>
    # 
    # @param source the object that will be sending the new TextChangingEvent,
    # cannot be null
    def initialize(source)
      @start = 0
      @new_text = nil
      @replace_char_count = 0
      @new_char_count = 0
      @replace_line_count = 0
      @new_line_count = 0
      super(source)
    end
    
    typesig { [StyledTextContent, StyledTextEvent] }
    def initialize(source, e)
      @start = 0
      @new_text = nil
      @replace_char_count = 0
      @new_char_count = 0
      @replace_line_count = 0
      @new_line_count = 0
      super(source)
      @start = e.attr_start
      @replace_char_count = e.attr_replace_char_count
      @new_char_count = e.attr_new_char_count
      @replace_line_count = e.attr_replace_line_count
      @new_line_count = e.attr_new_line_count
      @new_text = RJava.cast_to_string(e.attr_text)
    end
    
    private
    alias_method :initialize__text_changing_event, :initialize
  end
  
end
