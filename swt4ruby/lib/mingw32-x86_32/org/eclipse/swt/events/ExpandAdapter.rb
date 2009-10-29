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
  module ExpandAdapterImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This adapter class provides default implementations for the
  # methods described by the <code>ExpandListener</code> interface.
  # <p>
  # Classes that wish to deal with <code>ExpandEvent</code>s can
  # extend this class and override only the methods which they are
  # interested in.
  # </p>
  # 
  # @see ExpandListener
  # @see ExpandEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  class ExpandAdapter 
    include_class_members ExpandAdapterImports
    include ExpandListener
    
    typesig { [ExpandEvent] }
    # Sent when an item is collapsed.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the operation
    def item_collapsed(e)
    end
    
    typesig { [ExpandEvent] }
    # Sent when an item is expanded.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the operation
    def item_expanded(e)
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__expand_adapter, :initialize
  end
  
end
