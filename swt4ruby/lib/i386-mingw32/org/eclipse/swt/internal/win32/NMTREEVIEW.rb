require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module NMTREEVIEWImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMTREEVIEW 
    include_class_members NMTREEVIEWImports
    
    attr_accessor :hdr
    alias_method :attr_hdr, :hdr
    undef_method :hdr
    alias_method :attr_hdr=, :hdr=
    undef_method :hdr=
    
    attr_accessor :action
    alias_method :attr_action, :action
    undef_method :action
    alias_method :attr_action=, :action=
    undef_method :action=
    
    attr_accessor :item_old
    alias_method :attr_item_old, :item_old
    undef_method :item_old
    alias_method :attr_item_old=, :item_old=
    undef_method :item_old=
    
    attr_accessor :item_new
    alias_method :attr_item_new, :item_new
    undef_method :item_new
    alias_method :attr_item_new=, :item_new=
    undef_method :item_new=
    
    attr_accessor :pt_drag
    alias_method :attr_pt_drag, :pt_drag
    undef_method :pt_drag
    alias_method :attr_pt_drag=, :pt_drag=
    undef_method :pt_drag=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nmtreeview_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @hdr = NMHDR.new
      @action = 0
      @item_old = TVITEM.new
      @item_new = TVITEM.new
      @pt_drag = POINT.new
    end
    
    private
    alias_method :initialize__nmtreeview, :initialize
  end
  
end
