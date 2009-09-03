require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gdip
  module GdiplusStartupInputImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gdip
    }
  end
  
  # @jniclass flags=cpp
  class GdiplusStartupInput 
    include_class_members GdiplusStartupInputImports
    
    attr_accessor :gdiplus_version
    alias_method :attr_gdiplus_version, :gdiplus_version
    undef_method :gdiplus_version
    alias_method :attr_gdiplus_version=, :gdiplus_version=
    undef_method :gdiplus_version=
    
    # @field cast=(DebugEventProc)
    # long
    attr_accessor :debug_event_callback
    alias_method :attr_debug_event_callback, :debug_event_callback
    undef_method :debug_event_callback
    alias_method :attr_debug_event_callback=, :debug_event_callback=
    undef_method :debug_event_callback=
    
    # @field cast=(BOOL)
    attr_accessor :suppress_background_thread
    alias_method :attr_suppress_background_thread, :suppress_background_thread
    undef_method :suppress_background_thread
    alias_method :attr_suppress_background_thread=, :suppress_background_thread=
    undef_method :suppress_background_thread=
    
    # @field cast=(BOOL)
    attr_accessor :suppress_external_codecs
    alias_method :attr_suppress_external_codecs, :suppress_external_codecs
    undef_method :suppress_external_codecs
    alias_method :attr_suppress_external_codecs=, :suppress_external_codecs=
    undef_method :suppress_external_codecs=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { SwtGdip._gdiplus_startup_input_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @gdiplus_version = 0
      @debug_event_callback = 0
      @suppress_background_thread = false
      @suppress_external_codecs = false
    end
    
    private
    alias_method :initialize__gdiplus_startup_input, :initialize
  end
  
end
