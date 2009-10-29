require "rjava"

# Copyright (c) 2003, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module AuthenticationListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # This listener interface may be implemented in order to receive
  # an {@link AuthenticationEvent} notification when the {@link Browser}
  # encounters a page that requires authentication.
  # 
  # @see Browser#addAuthenticationListener(AuthenticationListener)
  # @see Browser#removeAuthenticationListener(AuthenticationListener)
  # 
  # @since 3.5
  module AuthenticationListener
    include_class_members AuthenticationListenerImports
    include SWTEventListener
    
    typesig { [AuthenticationEvent] }
    # This method is called when a page is navigated to that requires
    # authentication.
    # <p>
    # Setting both the event's <code>user</code> and <code>password</code>
    # fields causes these values to be used as credentials for authentication.
    # Leaving one or both of these fields as <code>null</code> indicates
    # that credentials are not known, so an authentication prompter should
    # be shown to the user.  Otherwise, setting the event's <code>doit</code>
    # field to <code>false</code> cancels the authentication challenge, and
    # the page will not be loaded.
    # <p>
    # 
    # <p>The following fields in the <code>AuthenticationEvent</code> apply:
    # <ul>
    # <li>(in) widget the <code>Browser</code> that is attempting to show the
    # page that requires authentication
    # <li>(in) location the location issuing the authentication challenge
    # <li>(in/out) doit can be set to <code>false</code> to cancel the
    # authentication challenge
    # <li>(out) user the user name to authenticate with
    # <li>(out) password the password to authenticate with
    # </ul>
    # 
    # @param event the <code>AuthenticationEvent</code> that can be used to
    # either supply authentication credentials, defer credential input to
    # an authentication prompter, or cancel an authentication challenge.
    def authenticate(event)
      raise NotImplementedError
    end
  end
  
end
