require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module MSGImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class MSG 
    include_class_members MSGImports
    
    # long
    attr_accessor :hwnd
    alias_method :attr_hwnd, :hwnd
    undef_method :hwnd
    alias_method :attr_hwnd=, :hwnd=
    undef_method :hwnd=
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    # long
    attr_accessor :w_param
    alias_method :attr_w_param, :w_param
    undef_method :w_param
    alias_method :attr_w_param=, :w_param=
    undef_method :w_param=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    attr_accessor :time
    alias_method :attr_time, :time
    undef_method :time
    alias_method :attr_time=, :time=
    undef_method :time=
    
    # POINT pt;
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._msg_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @hwnd = 0
      @message = 0
      @w_param = 0
      @l_param = 0
      @time = 0
      @x = 0
      @y = 0
    end
    
    private
    alias_method :initialize__msg, :initialize
  end
  
end
