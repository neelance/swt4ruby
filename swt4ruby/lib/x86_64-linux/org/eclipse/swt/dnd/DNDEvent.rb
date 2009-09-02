require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module DNDEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class DNDEvent < DNDEventImports.const_get :Event
    include_class_members DNDEventImports
    
    attr_accessor :data_type
    alias_method :attr_data_type, :data_type
    undef_method :data_type
    alias_method :attr_data_type=, :data_type=
    undef_method :data_type=
    
    attr_accessor :data_types
    alias_method :attr_data_types, :data_types
    undef_method :data_types
    alias_method :attr_data_types=, :data_types=
    undef_method :data_types=
    
    attr_accessor :operations
    alias_method :attr_operations, :operations
    undef_method :operations
    alias_method :attr_operations=, :operations=
    undef_method :operations=
    
    attr_accessor :feedback
    alias_method :attr_feedback, :feedback
    undef_method :feedback
    alias_method :attr_feedback=, :feedback=
    undef_method :feedback=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :offset_x
    alias_method :attr_offset_x, :offset_x
    undef_method :offset_x
    alias_method :attr_offset_x=, :offset_x=
    undef_method :offset_x=
    
    attr_accessor :offset_y
    alias_method :attr_offset_y, :offset_y
    undef_method :offset_y
    alias_method :attr_offset_y=, :offset_y=
    undef_method :offset_y=
    
    typesig { [] }
    def initialize
      @data_type = nil
      @data_types = nil
      @operations = 0
      @feedback = 0
      @image = nil
      @offset_x = 0
      @offset_y = 0
      super()
    end
    
    private
    alias_method :initialize__dndevent, :initialize
  end
  
end
