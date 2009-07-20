require "rjava"

# Copyright (c) 2000, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module SWTEventObjectImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
      include_const ::Java::Util, :EventObject
    }
  end
  
  # This class is the cross-platform version of the
  # java.util.EventObject class.
  # <p>
  # It is part of our effort to provide support for both J2SE
  # and J2ME platforms. Under this scheme, classes need to
  # extend SWTEventObject instead of java.util.EventObject.
  # </p>
  # <p>
  # Note: java.util.EventObject is not part of CDC and CLDC.
  # </p>
  class SWTEventObject < SWTEventObjectImports.const_get :EventObject
    include_class_members SWTEventObjectImports
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3258125873411470903 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Object] }
    # Constructs a new instance of this class.
    # 
    # @param source the object which fired the event
    def initialize(source)
      super(source)
    end
    
    private
    alias_method :initialize__swtevent_object, :initialize
  end
  
end
