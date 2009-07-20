require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module ResourceImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
    }
  end
  
  # This class is the abstract superclass of all graphics resource objects.
  # Resources created by the application must be disposed.
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation. However, it has not been marked
  # final to allow those outside of the SWT development team to implement
  # patched versions of the class in order to get around specific
  # limitations in advance of when those limitations can be addressed
  # by the team.  Any class built using subclassing to access the internals
  # of this class will likely fail to compile or run between releases and
  # may be strongly platform specific. Subclassing should not be attempted
  # without an intimate and detailed understanding of the workings of the
  # hierarchy. No support is provided for user-written classes which are
  # implemented as subclasses of this class.
  # </p>
  # 
  # @see #dispose
  # @see #isDisposed
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.1
  class Resource 
    include_class_members ResourceImports
    
    # the device where this resource was created
    attr_accessor :device
    alias_method :attr_device, :device
    undef_method :device
    alias_method :attr_device=, :device=
    undef_method :device=
    
    typesig { [] }
    def initialize
      @device = nil
    end
    
    typesig { [Device] }
    def initialize(device)
      @device = nil
      if ((device).nil?)
        device = Device.get_device
      end
      if ((device).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @device = device
    end
    
    typesig { [] }
    def destroy
    end
    
    typesig { [] }
    # Disposes of the operating system resources associated with
    # this resource. Applications must dispose of all resources
    # which they allocate.
    def dispose
      if ((@device).nil?)
        return
      end
      if (@device.is_disposed)
        return
      end
      destroy
      if (@device.attr_tracking)
        @device.dispose__object(self)
      end
      @device = nil
    end
    
    typesig { [] }
    # Returns the <code>Device</code> where this resource was
    # created.
    # 
    # @return <code>Device</code> the device of the receiver
    # 
    # @since 3.2
    def get_device
      device = @device
      if ((device).nil? || is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return device
    end
    
    typesig { [] }
    def init
      if (@device.attr_tracking)
        @device.new__object(self)
      end
    end
    
    typesig { [] }
    # Returns <code>true</code> if the resource has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the resource.
    # When a resource has been disposed, it is an error to
    # invoke any other method using the resource.
    # 
    # @return <code>true</code> when the resource is disposed and <code>false</code> otherwise
    def is_disposed
      raise NotImplementedError
    end
    
    private
    alias_method :initialize__resource, :initialize
  end
  
end
