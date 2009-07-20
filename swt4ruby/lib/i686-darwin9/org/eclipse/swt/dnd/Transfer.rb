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
  module TransferImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
    }
  end
  
  # <code>Transfer</code> provides a mechanism for converting between a java
  # representation of data and a platform specific representation of data and
  # vice versa.  It is used in data transfer operations such as drag and drop and
  # clipboard copy/paste.
  # 
  # <p>You should only need to become familiar with this class if you are
  # implementing a Transfer subclass and you are unable to subclass the
  # ByteArrayTransfer class.</p>
  # 
  # @see ByteArrayTransfer
  # @see <a href="http://www.eclipse.org/swt/snippets/#dnd">Drag and Drop snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: DNDExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Transfer 
    include_class_members TransferImports
    
    typesig { [] }
    # Returns a list of the platform specific data types that can be converted using
    # this transfer agent.
    # 
    # <p>Only the data type fields of the <code>TransferData</code> objects are filled
    # in.</p>
    # 
    # @return a list of the data types that can be converted using this transfer agent
    def get_supported_types
      raise NotImplementedError
    end
    
    typesig { [TransferData] }
    # Returns true if the <code>TransferData</code> data type can be converted
    # using this transfer agent, or false otherwise (including if transferData is
    # <code>null</code>).
    # 
    # @param transferData a platform specific description of a data type; only the data
    # type fields of the <code>TransferData</code> object need to be filled in
    # 
    # @return true if the transferData data type can be converted using this transfer
    # agent
    def is_supported_type(transfer_data)
      raise NotImplementedError
    end
    
    typesig { [] }
    # Returns the platform specific ids of the  data types that can be converted using
    # this transfer agent.
    # 
    # @return the platform specific ids of the data types that can be converted using
    # this transfer agent
    def get_type_ids
      raise NotImplementedError
    end
    
    typesig { [] }
    # Returns the platform specific names of the  data types that can be converted
    # using this transfer agent.
    # 
    # @return the platform specific names of the data types that can be converted
    # using this transfer agent.
    def get_type_names
      raise NotImplementedError
    end
    
    typesig { [Object, TransferData] }
    # Converts a java representation of data to a platform specific representation of
    # the data.
    # 
    # <p>On a successful conversion, the transferData.result field will be set as follows:
    # <ul>
    # <li>Windows: COM.S_OK
    # <li>Motif: 1
    # <li>GTK: 1
    # <li>Photon: 1
    # </ul></p>
    # 
    # <p>If this transfer agent is unable to perform the conversion, the transferData.result
    # field will be set to a failure value as follows:
    # <ul>
    # <li>Windows: COM.DV_E_TYMED or COM.E_FAIL
    # <li>Motif: 0
    # <li>GTK: 0
    # <li>Photon: 0
    # </ul></p>
    # 
    # @param object a java representation of the data to be converted; the type of
    # Object that is passed in is dependent on the <code>Transfer</code> subclass.
    # 
    # @param transferData an empty TransferData object; this object will be
    # filled in on return with the platform specific representation of the data
    # 
    # @exception org.eclipse.swt.SWTException <ul>
    # <li>ERROR_INVALID_DATA - if object does not contain data in a valid format or is <code>null</code></li>
    # </ul>
    def java_to_native(object, transfer_data)
      raise NotImplementedError
    end
    
    typesig { [TransferData] }
    # Converts a platform specific representation of data to a java representation.
    # 
    # @param transferData the platform specific representation of the data to be
    # converted
    # 
    # @return a java representation of the converted data if the conversion was
    # successful; otherwise null.  If transferData is <code>null</code> then
    # <code>null</code> is returned.  The type of Object that is returned is
    # dependent on the <code>Transfer</code> subclass.
    def native_to_java(transfer_data)
      raise NotImplementedError
    end
    
    class_module.module_eval {
      typesig { [String] }
      # Registers a name for a data type and returns the associated unique identifier.
      # 
      # <p>You may register the same type more than once, the same unique identifier
      # will be returned if the type has been previously registered.</p>
      # 
      # <p>Note: On windows, do <b>not</b> call this method with pre-defined
      # Clipboard Format types such as CF_TEXT or CF_BITMAP because the
      # pre-defined identifier will not be returned</p>
      # 
      # @param formatName the name of a data type
      # 
      # @return the unique identifier associated with this data type
      def register_type(format_name)
        length_ = format_name.length
        # TODO - hashcode may not be unique - need another way
        if (length_ > 4)
          return format_name.hash_code
        end
        type = 0
        if (length_ > 0)
          type |= (format_name.char_at(0) & 0xff) << 24
        end
        if (length_ > 1)
          type |= (format_name.char_at(1) & 0xff) << 16
        end
        if (length_ > 2)
          type |= (format_name.char_at(2) & 0xff) << 8
        end
        if (length_ > 3)
          type |= format_name.char_at(3) & 0xff
        end
        return type
      end
    }
    
    typesig { [Object] }
    # Test that the object is of the correct format for this Transfer class.
    # 
    # @param object a java representation of the data to be converted
    # 
    # @return true if object is of the correct form for this transfer type
    # 
    # @since 3.1
    def validate(object)
      return true
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__transfer, :initialize
  end
  
end
