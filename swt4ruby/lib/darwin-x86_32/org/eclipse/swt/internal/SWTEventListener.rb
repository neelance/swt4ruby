require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module SWTEventListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
      include_const ::Java::Util, :EventListener
    }
  end
  
  # This interface is the cross-platform version of the
  # java.util.EventListener interface.
  # <p>
  # It is part of our effort to provide support for both J2SE
  # and J2ME platforms. Under this scheme, classes need to
  # implement SWTEventListener instead of java.util.EventListener.
  # </p>
  # <p>
  # Note: java.util.EventListener is not part of CDC and CLDC.
  # </p>
  module SWTEventListener
    include_class_members SWTEventListenerImports
    include EventListener
  end
  
end
