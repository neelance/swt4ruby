require "rjava"

# ***** BEGIN LICENSE BLOCK *****
# Version: MPL 1.1
# 
# The contents of this file are subject to the Mozilla Public License Version
# 1.1 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
# 
# Software distributed under the License is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
# for the specific language governing rights and limitations under the
# License.
# 
# The Original Code is Mozilla Communicator client code, released March 31, 1998.
# 
# The Initial Developer of the Original Code is
# Netscape Communications Corporation.
# Portions created by Netscape are Copyright (C) 1998-1999
# Netscape Communications Corporation.  All Rights Reserved.
# 
# Contributor(s):
# 
# IBM
# -  Binding to permit interfacing between Mozilla and SWT
# -  Copyright (C) 2003, 2006 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module XPCOMInitImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
      include_const ::Org::Eclipse::Swt::Internal, :Platform
    }
  end
  
  class XPCOMInit < XPCOMInitImports.const_get :Platform
    include_class_members XPCOMInitImports
    
    class_module.module_eval {
      const_set_lazy(:PATH_MAX) { 4096 }
      const_attr_reader  :PATH_MAX
      
      JNI.native_method :Java_org_eclipse_swt_internal_mozilla_XPCOMInit_GREVersionRange_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _greversion_range_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_mozilla_XPCOMInit_GREVersionRange_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_mozilla_XPCOMInit_GRE_1GetGREPathWithProperties, [:pointer, :long, :long, :int32, :int64, :int32, :int64, :int32], :int32
      typesig { [GREVersionRange, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Long, ::Java::Int] }
      # int
      # int
      def _gre_get_grepath_with_properties(versions, versions_length, properties, properties_length, buffer, buflen)
        JNI.__send__(:Java_org_eclipse_swt_internal_mozilla_XPCOMInit_GRE_1GetGREPathWithProperties, JNI.env, self.jni_id, versions.jni_id, versions_length.to_int, properties.to_int, properties_length.to_int, buffer.to_int, buflen.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_mozilla_XPCOMInit_XPCOMGlueStartup, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def _xpcomglue_startup(place)
        JNI.__send__(:Java_org_eclipse_swt_internal_mozilla_XPCOMInit_XPCOMGlueStartup, JNI.env, self.jni_id, place.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_mozilla_XPCOMInit_XPCOMGlueShutdown, [:pointer, :long], :int32
      typesig { [] }
      def _xpcomglue_shutdown
        JNI.__send__(:Java_org_eclipse_swt_internal_mozilla_XPCOMInit_XPCOMGlueShutdown, JNI.env, self.jni_id)
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__xpcominit, :initialize
  end
  
end
