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
  module PangoItemImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class PangoItem 
    include_class_members PangoItemImports
    
    attr_accessor :offset
    alias_method :attr_offset, :offset
    undef_method :offset
    alias_method :attr_offset=, :offset=
    undef_method :offset=
    
    attr_accessor :length
    alias_method :attr_length, :length
    undef_method :length
    alias_method :attr_length=, :length=
    undef_method :length=
    
    attr_accessor :num_chars
    alias_method :attr_num_chars, :num_chars
    undef_method :num_chars
    alias_method :attr_num_chars=, :num_chars=
    undef_method :num_chars=
    
    # int
    attr_accessor :analysis_shape_engine
    alias_method :attr_analysis_shape_engine, :analysis_shape_engine
    undef_method :analysis_shape_engine
    alias_method :attr_analysis_shape_engine=, :analysis_shape_engine=
    undef_method :analysis_shape_engine=
    
    # int
    attr_accessor :analysis_lang_engine
    alias_method :attr_analysis_lang_engine, :analysis_lang_engine
    undef_method :analysis_lang_engine
    alias_method :attr_analysis_lang_engine=, :analysis_lang_engine=
    undef_method :analysis_lang_engine=
    
    # int
    attr_accessor :analysis_font
    alias_method :attr_analysis_font, :analysis_font
    undef_method :analysis_font
    alias_method :attr_analysis_font=, :analysis_font=
    undef_method :analysis_font=
    
    attr_accessor :analysis_level
    alias_method :attr_analysis_level, :analysis_level
    undef_method :analysis_level
    alias_method :attr_analysis_level=, :analysis_level=
    undef_method :analysis_level=
    
    # int
    attr_accessor :analysis_language
    alias_method :attr_analysis_language, :analysis_language
    undef_method :analysis_language
    alias_method :attr_analysis_language=, :analysis_language=
    undef_method :analysis_language=
    
    # int
    attr_accessor :analysis_extra_attrs
    alias_method :attr_analysis_extra_attrs, :analysis_extra_attrs
    undef_method :analysis_extra_attrs
    alias_method :attr_analysis_extra_attrs=, :analysis_extra_attrs=
    undef_method :analysis_extra_attrs=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._pango_item_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @offset = 0
      @length = 0
      @num_chars = 0
      @analysis_shape_engine = 0
      @analysis_lang_engine = 0
      @analysis_font = 0
      @analysis_level = 0
      @analysis_language = 0
      @analysis_extra_attrs = 0
    end
    
    private
    alias_method :initialize__pango_item, :initialize
  end
  
end
