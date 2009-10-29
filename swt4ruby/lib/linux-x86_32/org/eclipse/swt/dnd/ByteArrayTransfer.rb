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
  module ByteArrayTransferImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  # The class <code>ByteArrayTransfer</code> provides a platform specific
  # mechanism for converting a java <code>byte[]</code> to a platform
  # specific representation of the byte array and vice versa.
  # 
  # <p><code>ByteArrayTransfer</code> is never used directly but is sub-classed
  # by transfer agents that convert between data in a java format such as a
  # <code>String</code> and a platform specific byte array.
  # 
  # <p>If the data you are converting <b>does not</b> map to a
  # <code>byte[]</code>, you should sub-class <code>Transfer</code> directly
  # and do your own mapping to a platform data type.</p>
  # 
  # <p>The following snippet shows a subclass of ByteArrayTransfer that transfers
  # data defined by the class <code>MyType</code>.</p>
  # 
  # <pre><code>
  # public class MyType {
  # public String fileName;
  # public long fileLength;
  # public long lastModified;
  # }
  # </code></pre>
  # 
  # <pre><code>
  # public class MyTypeTransfer extends ByteArrayTransfer {
  # 
  # private static final String MYTYPENAME = "my_type_name";
  # private static final int MYTYPEID = registerType(MYTYPENAME);
  # private static MyTypeTransfer _instance = new MyTypeTransfer();
  # 
  # private MyTypeTransfer() {}
  # 
  # public static MyTypeTransfer getInstance () {
  # return _instance;
  # }
  # public void javaToNative (Object object, TransferData transferData) {
  # if (object == null || !(object instanceof MyType[])) return;
  # 
  # if (isSupportedType(transferData)) {
  # MyType[] myTypes = (MyType[]) object;
  # try {
  # // write data to a byte array and then ask super to convert to pMedium
  # ByteArrayOutputStream out = new ByteArrayOutputStream();
  # DataOutputStream writeOut = new DataOutputStream(out);
  # for (int i = 0, length = myTypes.length; i &lt; length;  i++){
  # byte[] buffer = myTypes[i].fileName.getBytes();
  # writeOut.writeInt(buffer.length);
  # writeOut.write(buffer);
  # writeOut.writeLong(myTypes[i].fileLength);
  # writeOut.writeLong(myTypes[i].lastModified);
  # }
  # byte[] buffer = out.toByteArray();
  # writeOut.close();
  # 
  # super.javaToNative(buffer, transferData);
  # 
  # } catch (IOException e) {
  # }
  # }
  # }
  # public Object nativeToJava(TransferData transferData){
  # 
  # if (isSupportedType(transferData)) {
  # 
  # byte[] buffer = (byte[])super.nativeToJava(transferData);
  # if (buffer == null) return null;
  # 
  # MyType[] myData = new MyType[0];
  # try {
  # ByteArrayInputStream in = new ByteArrayInputStream(buffer);
  # DataInputStream readIn = new DataInputStream(in);
  # while(readIn.available() > 20) {
  # MyType datum = new MyType();
  # int size = readIn.readInt();
  # byte[] name = new byte[size];
  # readIn.read(name);
  # datum.fileName = new String(name);
  # datum.fileLength = readIn.readLong();
  # datum.lastModified = readIn.readLong();
  # MyType[] newMyData = new MyType[myData.length + 1];
  # System.arraycopy(myData, 0, newMyData, 0, myData.length);
  # newMyData[myData.length] = datum;
  # myData = newMyData;
  # }
  # readIn.close();
  # } catch (IOException ex) {
  # return null;
  # }
  # return myData;
  # }
  # 
  # return null;
  # }
  # protected String[] getTypeNames(){
  # return new String[]{MYTYPENAME};
  # }
  # protected int[] getTypeIds(){
  # return new int[] {MYTYPEID};
  # }
  # }
  # </code></pre>
  # 
  # @see Transfer
  class ByteArrayTransfer < ByteArrayTransferImports.const_get :Transfer
    include_class_members ByteArrayTransferImports
    
    typesig { [] }
    def get_supported_types
      types = get_type_ids
      data = Array.typed(TransferData).new(types.attr_length) { nil }
      i = 0
      while i < types.attr_length
        data[i] = TransferData.new
        data[i].attr_type = types[i]
        i += 1
      end
      return data
    end
    
    typesig { [TransferData] }
    def is_supported_type(transfer_data)
      if ((transfer_data).nil?)
        return false
      end
      types = get_type_ids
      i = 0
      while i < types.attr_length
        if ((transfer_data.attr_type).equal?(types[i]))
          return true
        end
        i += 1
      end
      return false
    end
    
    typesig { [Object, TransferData] }
    # This implementation of <code>javaToNative</code> converts a java
    # <code>byte[]</code> to a platform specific representation.
    # 
    # @param object a java <code>byte[]</code> containing the data to be converted
    # @param transferData an empty <code>TransferData</code> object that will
    # be filled in on return with the platform specific format of the data
    # 
    # @see Transfer#nativeToJava
    def java_to_native(object, transfer_data)
      transfer_data.attr_result = 0
      if (!check_byte_array(object) || !is_supported_type(transfer_data))
        DND.error(DND::ERROR_INVALID_DATA)
      end
      buffer = object
      if ((buffer.attr_length).equal?(0))
        return
      end
      # long
      p_value = OS.g_malloc(buffer.attr_length)
      if ((p_value).equal?(0))
        return
      end
      OS.memmove___org_eclipse_swt_dnd_byte_array_transfer_1(p_value, buffer, buffer.attr_length)
      transfer_data.attr_length = buffer.attr_length
      transfer_data.attr_format = 8
      transfer_data.attr_p_value = p_value
      transfer_data.attr_result = 1
    end
    
    typesig { [TransferData] }
    # This implementation of <code>nativeToJava</code> converts a platform specific
    # representation of a byte array to a java <code>byte[]</code>.
    # 
    # @param transferData the platform specific representation of the data to be converted
    # @return a java <code>byte[]</code> containing the converted data if the conversion was
    # successful; otherwise null
    # 
    # @see Transfer#javaToNative
    def native_to_java(transfer_data)
      if (!is_supported_type(transfer_data) || (transfer_data.attr_p_value).equal?(0))
        return nil
      end
      size = transfer_data.attr_format * transfer_data.attr_length / 8
      if ((size).equal?(0))
        return nil
      end
      buffer = Array.typed(::Java::Byte).new(size) { 0 }
      OS.memmove___org_eclipse_swt_dnd_byte_array_transfer_3(buffer, transfer_data.attr_p_value, size)
      return buffer
    end
    
    typesig { [Object] }
    def check_byte_array(object)
      return (!(object).nil? && object.is_a?(Array.typed(::Java::Byte)) && (object).attr_length > 0)
    end
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__byte_array_transfer, :initialize
  end
  
end
