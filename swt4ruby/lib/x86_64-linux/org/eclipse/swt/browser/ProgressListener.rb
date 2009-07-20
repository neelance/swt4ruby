require "rjava"

# Copyright (c) 2003, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module ProgressListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # This listener interface may be implemented in order to receive
  # a {@link ProgressEvent} notification when a {@link Browser}
  # makes a progress in loading the current URL or when the
  # current URL has been loaded.
  # 
  # @see Browser#addProgressListener(ProgressListener)
  # @see Browser#removeProgressListener(ProgressListener)
  # @see Browser#getUrl()
  # 
  # @since 3.0
  module ProgressListener
    include_class_members ProgressListenerImports
    include SWTEventListener
    
    typesig { [ProgressEvent] }
    # This method is called when a progress is made during the loading of the
    # current location.
    # <p>
    # 
    # <p>The following fields in the <code>ProgressEvent</code> apply:
    # <ul>
    # <li>(in) current the progress for the location currently being loaded
    # <li>(in) total the maximum progress for the location currently being loaded
    # <li>(in) widget the <code>Browser</code> whose current URL is being loaded
    # </ul>
    # 
    # @param event the <code>ProgressEvent</code> related to the loading of the
    # current location of a <code>Browser</code>
    # 
    # @since 3.0
    def changed(event)
      raise NotImplementedError
    end
    
    typesig { [ProgressEvent] }
    # This method is called when the current location has been completely loaded.
    # <p>
    # 
    # <p>The following fields in the <code>ProgressEvent</code> apply:
    # <ul>
    # <li>(in) widget the <code>Browser</code> whose current URL has been loaded
    # </ul>
    # 
    # @param event the <code>ProgressEvent</code> related to the <code>Browser</code>
    # that has loaded its current URL.
    # 
    # @since 3.0
    def completed(event)
      raise NotImplementedError
    end
  end
  
end
