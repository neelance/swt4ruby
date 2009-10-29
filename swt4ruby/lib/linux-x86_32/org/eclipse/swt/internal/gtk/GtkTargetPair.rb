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
  module GtkTargetPairImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GtkTargetPair 
    include_class_members GtkTargetPairImports
    
    # @field cast=(GdkAtom)
    # long
    attr_accessor :target
    alias_method :attr_target, :target
    undef_method :target
    alias_method :attr_target=, :target=
    undef_method :target=
    
    # @field cast=(guint)
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    # @field cast=(guint)
    attr_accessor :info
    alias_method :attr_info, :info
    undef_method :info
    alias_method :attr_info=, :info=
    undef_method :info=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gtk_target_pair_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @target = 0
      @flags = 0
      @info = 0
    end
    
    private
    alias_method :initialize__gtk_target_pair, :initialize
  end
  
end
