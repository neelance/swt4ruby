require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module IOleObjectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class IOleObject < IOleObjectImports.const_get :IUnknown
    include_class_members IOleObjectImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _advise(p_adv_sink, pdw_connection)
      return COM._vtbl_call(19, self.attr_address, p_adv_sink, pdw_connection)
    end
    
    typesig { [::Java::Int] }
    def _close(dw_save_option)
      return COM._vtbl_call(6, self.attr_address, dw_save_option)
    end
    
    typesig { [::Java::Int, MSG, ::Java::Int, ::Java::Int, ::Java::Int, RECT] }
    # long
    # long
    def _do_verb(i_verb, lpmsg, p_active_site, lindex, hwnd_parent, lprc_pos_rect)
      return COM._vtbl_call(11, self.attr_address, i_verb, lpmsg, p_active_site, lindex, hwnd_parent, lprc_pos_rect)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_client_site(ppv_client_site)
      return COM._vtbl_call(4, self.attr_address, ppv_client_site)
    end
    
    typesig { [::Java::Int, SIZE] }
    def _get_extent(dw_draw_aspect, p_sizel)
      return COM._vtbl_call(18, self.attr_address, dw_draw_aspect, p_sizel)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_client_site(p_client_site)
      return COM._vtbl_call(3, self.attr_address, p_client_site)
    end
    
    typesig { [::Java::Int, SIZE] }
    def _set_extent(dw_draw_aspect, p_sizel)
      return COM._vtbl_call(17, self.attr_address, dw_draw_aspect, p_sizel)
    end
    
    typesig { [String, String] }
    def _set_host_names(sz_container_app, sz_container_obj)
      # create a null terminated array of char
      buffer1 = nil
      if (!(sz_container_app).nil?)
        count1 = sz_container_app.length
        buffer1 = CharArray.new(count1 + 1)
        sz_container_app.get_chars(0, count1, buffer1, 0)
      end
      # create a null terminated array of char
      buffer2 = nil
      if (!(sz_container_obj).nil?)
        count2 = sz_container_obj.length
        buffer2 = CharArray.new(count2 + 1)
        sz_container_obj.get_chars(0, count2, buffer2, 0)
      end
      return COM._vtbl_call(5, self.attr_address, buffer1, buffer2)
    end
    
    typesig { [] }
    def _update
      return COM._vtbl_call(13, self.attr_address)
    end
    
    private
    alias_method :initialize__iole_object, :initialize
  end
  
end
