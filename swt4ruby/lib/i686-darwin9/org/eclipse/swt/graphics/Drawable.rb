require "rjava"

# Copyright (c) 2000, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module DrawableImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Implementers of <code>Drawable</code> can have a graphics context (GC)
  # created for them, and then they can be drawn on by sending messages to
  # their associated GC. SWT images, and device objects such as the Display
  # device and the Printer device, are drawables.
  # <p>
  # <b>IMPORTANT:</b> This class is <em>not</em> part of the SWT
  # public API. It is marked public only so that it can be shared
  # within the packages provided by SWT. It should never be
  # referenced from application code.
  # </p>
  # 
  # @see Device
  # @see Image
  # @see GC
  module Drawable
    include_class_members DrawableImports
    
    typesig { [SwtGCData] }
    # Invokes platform specific functionality to allocate a new GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Drawable</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param data the platform specific GC data
    # @return the platform specific GC handle
    # 
    # long
    def internal_new__gc(data)
      raise NotImplementedError
    end
    
    typesig { [::Java::Int, SwtGCData] }
    # Invokes platform specific functionality to dispose a GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Drawable</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param handle the platform specific GC handle
    # @param data the platform specific GC data
    # 
    # long
    def internal_dispose__gc(handle, data)
      raise NotImplementedError
    end
  end
  
end
