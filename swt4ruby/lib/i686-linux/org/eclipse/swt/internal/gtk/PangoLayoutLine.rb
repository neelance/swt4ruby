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
  module PangoLayoutLineImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class PangoLayoutLine 
    include_class_members PangoLayoutLineImports
    
    # long
    attr_accessor :layout
    alias_method :attr_layout, :layout
    undef_method :layout
    alias_method :attr_layout=, :layout=
    undef_method :layout=
    
    attr_accessor :start_index
    alias_method :attr_start_index, :start_index
    undef_method :start_index
    alias_method :attr_start_index=, :start_index=
    undef_method :start_index=
    
    attr_accessor :length
    alias_method :attr_length, :length
    undef_method :length
    alias_method :attr_length=, :length=
    undef_method :length=
    
    # long
    attr_accessor :runs
    alias_method :attr_runs, :runs
    undef_method :runs
    alias_method :attr_runs=, :runs=
    undef_method :runs=
    
    class_module.module_eval {
      # public boolean is_paragraph_start;
      # public byte resolved_dir;
      const_set_lazy(:Sizeof) { OS._pango_layout_line_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @layout = 0
      @start_index = 0
      @length = 0
      @runs = 0
    end
    
    private
    alias_method :initialize__pango_layout_line, :initialize
  end
  
end
