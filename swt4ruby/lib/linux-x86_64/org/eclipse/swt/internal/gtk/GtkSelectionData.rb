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
  module GtkSelectionDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GtkSelectionData 
    include_class_members GtkSelectionDataImports
    
    # @field cast=(GdkAtom)
    # int
    attr_accessor :selection
    alias_method :attr_selection, :selection
    undef_method :selection
    alias_method :attr_selection=, :selection=
    undef_method :selection=
    
    # @field cast=(GdkAtom)
    # int
    attr_accessor :target
    alias_method :attr_target, :target
    undef_method :target
    alias_method :attr_target=, :target=
    undef_method :target=
    
    # @field cast=(GdkAtom)
    # int
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # @field cast=(gint)
    attr_accessor :format
    alias_method :attr_format, :format
    undef_method :format
    alias_method :attr_format=, :format=
    undef_method :format=
    
    # @field cast=(guchar *)
    # int
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    # @field cast=(gint)
    attr_accessor :length
    alias_method :attr_length, :length
    undef_method :length
    alias_method :attr_length=, :length=
    undef_method :length=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gtk_selection_data_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @selection = 0
      @target = 0
      @type = 0
      @format = 0
      @data = 0
      @length = 0
    end
    
    private
    alias_method :initialize__gtk_selection_data, :initialize
  end
  
end
