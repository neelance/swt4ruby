require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module TransferDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  # The <code>TransferData</code> class is a platform specific data structure for
  # describing the type and the contents of data being converted by a transfer agent.
  # 
  # <p>As an application writer, you do not need to know the specifics of
  # TransferData.  TransferData instances are passed to a subclass of Transfer
  # and the Transfer object manages the platform specific issues.
  # You can ask a Transfer subclass if it can handle this data by calling
  # Transfer.isSupportedType(transferData).</p>
  # 
  # <p>You should only need to become familiar with the fields in this class if you
  # are implementing a Transfer subclass and you are unable to subclass the
  # ByteArrayTransfer class.</p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class TransferData 
    include_class_members TransferDataImports
    
    # The type is a unique identifier of a system format or user defined format.
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # The formatetc structure is a generalized data transfer format, enhanced to
    # encompass a target device, the aspect, or view of the data, and
    # a storage medium.
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :formatetc
    alias_method :attr_formatetc, :formatetc
    undef_method :formatetc
    alias_method :attr_formatetc=, :formatetc=
    undef_method :formatetc=
    
    # The stgmedium structure is a generalized global memory handle used for
    # data transfer operations.
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :stgmedium
    alias_method :attr_stgmedium, :stgmedium
    undef_method :stgmedium
    alias_method :attr_stgmedium=, :stgmedium=
    undef_method :stgmedium=
    
    # The result field contains the result of converting a
    # java data type into a platform specific value.
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    # <p>The value of result is 1 if the conversion was successful.
    # The value of result is 0 if the conversion failed.</p>
    attr_accessor :result
    alias_method :attr_result, :result
    undef_method :result
    alias_method :attr_result=, :result=
    undef_method :result=
    
    # The pIDataObject is the address of an IDataObject OLE Interface which
    # provides access to the data associated with the transfer.
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    # 
    # long
    attr_accessor :p_idata_object
    alias_method :attr_p_idata_object, :p_idata_object
    undef_method :p_idata_object
    alias_method :attr_p_idata_object=, :p_idata_object=
    undef_method :p_idata_object=
    
    class_module.module_eval {
      typesig { [TransferData, TransferData] }
      def same_type(data1, data2)
        if ((data1).equal?(data2))
          return true
        end
        if ((data1).nil? || (data2).nil?)
          return false
        end
        return ((data1.attr_type).equal?(data2.attr_type) && (data1.attr_formatetc.attr_cf_format).equal?(data2.attr_formatetc.attr_cf_format) && (data1.attr_formatetc.attr_dw_aspect).equal?(data2.attr_formatetc.attr_dw_aspect) && (data1.attr_formatetc.attr_tymed).equal?(data2.attr_formatetc.attr_tymed))
      end
    }
    
    typesig { [] }
    def initialize
      @type = 0
      @formatetc = nil
      @stgmedium = nil
      @result = COM::E_FAIL
      @p_idata_object = 0
    end
    
    private
    alias_method :initialize__transfer_data, :initialize
  end
  
end
