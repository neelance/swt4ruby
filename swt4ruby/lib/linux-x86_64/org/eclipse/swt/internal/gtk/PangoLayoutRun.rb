require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others. All rights reserved.
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
  module PangoLayoutRunImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class PangoLayoutRun 
    include_class_members PangoLayoutRunImports
    
    # @field cast=(PangoItem *)
    # int
    attr_accessor :item
    alias_method :attr_item, :item
    undef_method :item
    alias_method :attr_item=, :item=
    undef_method :item=
    
    # @field cast=(PangoGlyphString *)
    # int
    attr_accessor :glyphs
    alias_method :attr_glyphs, :glyphs
    undef_method :glyphs
    alias_method :attr_glyphs=, :glyphs=
    undef_method :glyphs=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._pango_layout_run_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @item = 0
      @glyphs = 0
    end
    
    private
    alias_method :initialize__pango_layout_run, :initialize
  end
  
end
