require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt
  module SWTErrorImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  # This error is thrown whenever an unrecoverable error
  # occurs internally in SWT. The message text and error code
  # provide a further description of the problem. The exception
  # has a <code>throwable</code> field which holds the underlying
  # throwable that caused the problem (if this information is
  # available (i.e. it may be null)).
  # <p>
  # SWTErrors are thrown when something fails internally which
  # either leaves SWT in an unknown state (eg. the o/s call to
  # remove an item from a list returns an error code) or when SWT
  # is left in a known-to-be-unrecoverable state (eg. it runs out
  # of callback resources). SWTErrors should not occur in typical
  # programs, although "high reliability" applications should
  # still catch them.
  # </p><p>
  # This class also provides support methods used by SWT to match
  # error codes to the appropriate exception class (SWTError,
  # SWTException, or IllegalArgumentException) and to provide
  # human readable strings for SWT error codes.
  # </p>
  # 
  # @see SWTException
  # @see SWT#error(int)
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class SWTError < SWTErrorImports.const_get :JavaError
    include_class_members SWTErrorImports
    
    # The SWT error code, one of SWT.ERROR_*.
    attr_accessor :code
    alias_method :attr_code, :code
    undef_method :code
    alias_method :attr_code=, :code=
    undef_method :code=
    
    # The underlying throwable that caused the problem,
    # or null if this information is not available.
    attr_accessor :throwable
    alias_method :attr_throwable, :throwable
    undef_method :throwable
    alias_method :attr_throwable=, :throwable=
    undef_method :throwable=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3833467327105808433 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [] }
    # Constructs a new instance of this class with its
    # stack trace filled in. The error code is set to an
    # unspecified value.
    def initialize
      initialize__swterror(SWT::ERROR_UNSPECIFIED)
    end
    
    typesig { [String] }
    # Constructs a new instance of this class with its
    # stack trace and message filled in. The error code is
    # set to an unspecified value.  Specifying <code>null</code>
    # as the message is equivalent to specifying an empty string.
    # 
    # @param message the detail message for the exception
    def initialize(message)
      initialize__swterror(SWT::ERROR_UNSPECIFIED, message)
    end
    
    typesig { [::Java::Int] }
    # Constructs a new instance of this class with its
    # stack trace and error code filled in.
    # 
    # @param code the SWT error code
    def initialize(code)
      initialize__swterror(code, SWT.find_error_text(code))
    end
    
    typesig { [::Java::Int, String] }
    # Constructs a new instance of this class with its
    # stack trace, error code and message filled in.
    # Specifying <code>null</code> as the message is
    # equivalent to specifying an empty string.
    # 
    # @param code the SWT error code
    # @param message the detail message for the exception
    def initialize(code, message)
      @code = 0
      @throwable = nil
      super(message)
      @code = code
    end
    
    typesig { [] }
    # Returns the underlying throwable that caused the problem,
    # or null if this information is not available.
    # <p>
    # NOTE: This method overrides Throwable.getCause() that was
    # added to JDK1.4. It is necessary to override this method
    # in order for inherited printStackTrace() methods to work.
    # </p>
    # @return the underlying throwable
    # 
    # @since 3.1
    def get_cause
      return @throwable
    end
    
    typesig { [] }
    # Returns the string describing this SWTError object.
    # <p>
    # It is combined with the message string of the Throwable
    # which caused this SWTError (if this information is available).
    # </p>
    # @return the error message string of this SWTError object
    def get_message
      if ((@throwable).nil?)
        return super
      end
      return (super).to_s + " (" + (@throwable.to_s).to_s + ")" # $NON-NLS-1$ //$NON-NLS-2$
    end
    
    typesig { [] }
    # Outputs a printable representation of this error's
    # stack trace on the standard error stream.
    # <p>
    # Note: printStackTrace(PrintStream) and printStackTrace(PrintWriter)
    # are not provided in order to maintain compatibility with CLDC.
    # </p>
    def print_stack_trace
      super
      if (Library::JAVA_VERSION < Library._java_version(1, 4, 0) && !(@throwable).nil?)
        System.err.println("*** Stack trace of contained error ***") # $NON-NLS-1$
        @throwable.print_stack_trace
      end
    end
    
    private
    alias_method :initialize__swterror, :initialize
  end
  
end
