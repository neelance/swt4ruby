require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others. All rights reserved.
# The contents of this file are made available under the terms
# of the GNU Lesser General Public License (LGPL) Version 2.1 that
# accompanies this distribution (lgpl-v21.txt).  The LGPL is also
# available at http://www.gnu.org/licenses/lgpl.html.  If the version
# of the LGPL at http://www.gnu.org is different to the version of
# the LGPL accompanying this distribution and there is any conflict
# between the two license versions, the terms of the LGPL accompanying
# this distribution shall govern.
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gtk
  module PangoLogAttrImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class PangoLogAttr 
    include_class_members PangoLogAttrImports
    
    attr_accessor :is_line_break
    alias_method :attr_is_line_break, :is_line_break
    undef_method :is_line_break
    alias_method :attr_is_line_break=, :is_line_break=
    undef_method :is_line_break=
    
    attr_accessor :is_mandatory_break
    alias_method :attr_is_mandatory_break, :is_mandatory_break
    undef_method :is_mandatory_break
    alias_method :attr_is_mandatory_break=, :is_mandatory_break=
    undef_method :is_mandatory_break=
    
    attr_accessor :is_char_break
    alias_method :attr_is_char_break, :is_char_break
    undef_method :is_char_break
    alias_method :attr_is_char_break=, :is_char_break=
    undef_method :is_char_break=
    
    attr_accessor :is_white
    alias_method :attr_is_white, :is_white
    undef_method :is_white
    alias_method :attr_is_white=, :is_white=
    undef_method :is_white=
    
    attr_accessor :is_cursor_position
    alias_method :attr_is_cursor_position, :is_cursor_position
    undef_method :is_cursor_position
    alias_method :attr_is_cursor_position=, :is_cursor_position=
    undef_method :is_cursor_position=
    
    attr_accessor :is_word_start
    alias_method :attr_is_word_start, :is_word_start
    undef_method :is_word_start
    alias_method :attr_is_word_start=, :is_word_start=
    undef_method :is_word_start=
    
    attr_accessor :is_word_end
    alias_method :attr_is_word_end, :is_word_end
    undef_method :is_word_end
    alias_method :attr_is_word_end=, :is_word_end=
    undef_method :is_word_end=
    
    attr_accessor :is_sentence_boundary
    alias_method :attr_is_sentence_boundary, :is_sentence_boundary
    undef_method :is_sentence_boundary
    alias_method :attr_is_sentence_boundary=, :is_sentence_boundary=
    undef_method :is_sentence_boundary=
    
    attr_accessor :is_sentence_start
    alias_method :attr_is_sentence_start, :is_sentence_start
    undef_method :is_sentence_start
    alias_method :attr_is_sentence_start=, :is_sentence_start=
    undef_method :is_sentence_start=
    
    attr_accessor :is_sentence_end
    alias_method :attr_is_sentence_end, :is_sentence_end
    undef_method :is_sentence_end
    alias_method :attr_is_sentence_end=, :is_sentence_end=
    undef_method :is_sentence_end=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._pango_log_attr_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @is_line_break = false
      @is_mandatory_break = false
      @is_char_break = false
      @is_white = false
      @is_cursor_position = false
      @is_word_start = false
      @is_word_end = false
      @is_sentence_boundary = false
      @is_sentence_start = false
      @is_sentence_end = false
    end
    
    private
    alias_method :initialize__pango_log_attr, :initialize
  end
  
end
