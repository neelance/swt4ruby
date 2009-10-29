require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module ExpandEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Instances of this class are sent as a result of
  # <code>ExpandItem</code>s being expanded or collapsed.
  # 
  # @see ExpandListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  class ExpandEvent < ExpandEventImports.const_get :SelectionEvent
    include_class_members ExpandEventImports
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3976735856884987356 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Event] }
    # Constructs a new instance of this class based on the
    # information in the given untyped event.
    # 
    # @param e the untyped event containing the information
    def initialize(e)
      super(e)
    end
    
    private
    alias_method :initialize__expand_event, :initialize
  end
  
end
