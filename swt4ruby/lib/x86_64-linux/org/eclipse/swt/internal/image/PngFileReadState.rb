require "rjava"

# Copyright (c) 2000, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module PngFileReadStateImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
    }
  end
  
  class PngFileReadState < PngFileReadStateImports.const_get :Object
    include_class_members PngFileReadStateImports
    
    attr_accessor :read_ihdr
    alias_method :attr_read_ihdr, :read_ihdr
    undef_method :read_ihdr
    alias_method :attr_read_ihdr=, :read_ihdr=
    undef_method :read_ihdr=
    
    attr_accessor :read_plte
    alias_method :attr_read_plte, :read_plte
    undef_method :read_plte
    alias_method :attr_read_plte=, :read_plte=
    undef_method :read_plte=
    
    attr_accessor :read_idat
    alias_method :attr_read_idat, :read_idat
    undef_method :read_idat
    alias_method :attr_read_idat=, :read_idat=
    undef_method :read_idat=
    
    attr_accessor :read_iend
    alias_method :attr_read_iend, :read_iend
    undef_method :read_iend
    alias_method :attr_read_iend=, :read_iend=
    undef_method :read_iend=
    
    # Non - critical chunks
    attr_accessor :read_trns
    alias_method :attr_read_trns, :read_trns
    undef_method :read_trns
    alias_method :attr_read_trns=, :read_trns=
    undef_method :read_trns=
    
    # Set to true after IDATs have been read.
    attr_accessor :read_pixel_data
    alias_method :attr_read_pixel_data, :read_pixel_data
    undef_method :read_pixel_data
    alias_method :attr_read_pixel_data=, :read_pixel_data=
    undef_method :read_pixel_data=
    
    typesig { [] }
    def initialize
      @read_ihdr = false
      @read_plte = false
      @read_idat = false
      @read_iend = false
      @read_trns = false
      @read_pixel_data = false
      super()
    end
    
    private
    alias_method :initialize__png_file_read_state, :initialize
  end
  
end
