require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module NMLINKImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMLINK < NMLINKImports.const_get :NMHDR
    include_class_members NMLINKImports
    
    # LITEM item;
    # @field accessor=item.mask
    attr_accessor :mask
    alias_method :attr_mask, :mask
    undef_method :mask
    alias_method :attr_mask=, :mask=
    undef_method :mask=
    
    # @field accessor=item.iLink
    attr_accessor :i_link
    alias_method :attr_i_link, :i_link
    undef_method :i_link
    alias_method :attr_i_link=, :i_link=
    undef_method :i_link=
    
    # @field accessor=item.state
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    # @field accessor=item.stateMask
    attr_accessor :state_mask
    alias_method :attr_state_mask, :state_mask
    undef_method :state_mask
    alias_method :attr_state_mask=, :state_mask=
    undef_method :state_mask=
    
    # @field accessor=item.szID
    attr_accessor :sz_id
    alias_method :attr_sz_id, :sz_id
    undef_method :sz_id
    alias_method :attr_sz_id=, :sz_id=
    undef_method :sz_id=
    
    # @field accessor=item.szUrl
    attr_accessor :sz_url
    alias_method :attr_sz_url, :sz_url
    undef_method :sz_url
    alias_method :attr_sz_url=, :sz_url=
    undef_method :sz_url=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nmlink_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @mask = 0
      @i_link = 0
      @state = 0
      @state_mask = 0
      @sz_id = nil
      @sz_url = nil
      super()
      @sz_id = CharArray.new(OS::MAX_LINKID_TEXT)
      @sz_url = CharArray.new(OS::L_MAX_URL_LENGTH)
    end
    
    private
    alias_method :initialize__nmlink, :initialize
  end
  
end
