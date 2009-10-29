require "rjava"

# Copyright (c) 2003, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module TitleListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # This listener interface may be implemented in order to receive
  # a {@link TitleEvent} notification when the title of the document
  # displayed in a {@link Browser} is known or has been changed.
  # 
  # @see Browser#addTitleListener(TitleListener)
  # @see Browser#removeTitleListener(TitleListener)
  # 
  # @since 3.0
  module TitleListener
    include_class_members TitleListenerImports
    include SWTEventListener
    
    typesig { [TitleEvent] }
    # This method is called when the title of the current document
    # is available or has changed.
    # <p>
    # 
    # <p>The following fields in the <code>TitleEvent</code> apply:
    # <ul>
    # <li>(in) title the title of the current document
    # <li>(in) widget the <code>Browser</code> whose current document's
    # title is known or modified
    # </ul>
    # 
    # @param event the <code>TitleEvent</code> that contains the title
    # of the document currently displayed in a <code>Browser</code>
    # 
    # @since 3.0
    def changed(event)
      raise NotImplementedError
    end
  end
  
end
