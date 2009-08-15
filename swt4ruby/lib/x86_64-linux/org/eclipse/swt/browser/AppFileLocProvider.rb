require "rjava"

# Copyright (c) 2003, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module AppFileLocProviderImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Java::Util, :Vector
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class AppFileLocProvider 
    include_class_members AppFileLocProviderImports
    
    attr_accessor :supports
    alias_method :attr_supports, :supports
    undef_method :supports
    alias_method :attr_supports=, :supports=
    undef_method :supports=
    
    attr_accessor :directory_service_provider
    alias_method :attr_directory_service_provider, :directory_service_provider
    undef_method :directory_service_provider
    alias_method :attr_directory_service_provider=, :directory_service_provider=
    undef_method :directory_service_provider=
    
    attr_accessor :directory_service_provider2
    alias_method :attr_directory_service_provider2, :directory_service_provider2
    undef_method :directory_service_provider2
    alias_method :attr_directory_service_provider2=, :directory_service_provider2=
    undef_method :directory_service_provider2=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :mozilla_path
    alias_method :attr_mozilla_path, :mozilla_path
    undef_method :mozilla_path
    alias_method :attr_mozilla_path=, :mozilla_path=
    undef_method :mozilla_path=
    
    attr_accessor :profile_path
    alias_method :attr_profile_path, :profile_path
    undef_method :profile_path
    alias_method :attr_profile_path=, :profile_path=
    undef_method :profile_path=
    
    attr_accessor :plugin_dirs
    alias_method :attr_plugin_dirs, :plugin_dirs
    undef_method :plugin_dirs
    alias_method :attr_plugin_dirs=, :plugin_dirs=
    undef_method :plugin_dirs=
    
    attr_accessor :is_xulrunner
    alias_method :attr_is_xulrunner, :is_xulrunner
    undef_method :is_xulrunner
    alias_method :attr_is_xulrunner=, :is_xulrunner=
    undef_method :is_xulrunner=
    
    class_module.module_eval {
      const_set_lazy(:SEPARATOR_OS) { System.get_property("file.separator") }
      const_attr_reader  :SEPARATOR_OS
      
      # $NON-NLS-1$
      const_set_lazy(:CHROME_DIR) { "chrome" }
      const_attr_reader  :CHROME_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:COMPONENTS_DIR) { "components" }
      const_attr_reader  :COMPONENTS_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:HISTORY_FILE) { "history.dat" }
      const_attr_reader  :HISTORY_FILE
      
      # $NON-NLS-1$
      const_set_lazy(:LOCALSTORE_FILE) { "localstore.rdf" }
      const_attr_reader  :LOCALSTORE_FILE
      
      # $NON-NLS-1$
      const_set_lazy(:MIMETYPES_FILE) { "mimeTypes.rdf" }
      const_attr_reader  :MIMETYPES_FILE
      
      # $NON-NLS-1$
      const_set_lazy(:PLUGINS_DIR) { "plugins" }
      const_attr_reader  :PLUGINS_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:USER_PLUGINS_DIR) { ".mozilla" + SEPARATOR_OS + "plugins" }
      const_attr_reader  :USER_PLUGINS_DIR
      
      # $NON-NLS-1$ //$NON-NLS-2$
      const_set_lazy(:PREFERENCES_FILE) { "prefs.js" }
      const_attr_reader  :PREFERENCES_FILE
    }
    
    typesig { [String] }
    # $NON-NLS-1$
    def initialize(path)
      @supports = nil
      @directory_service_provider = nil
      @directory_service_provider2 = nil
      @ref_count = 0
      @mozilla_path = nil
      @profile_path = nil
      @plugin_dirs = nil
      @is_xulrunner = false
      @mozilla_path = path + SEPARATOR_OS
      create_cominterfaces
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def create_cominterfaces
      @supports = # Create each of the interfaces that this object implements
      Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members AppFileLocProvider
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      @directory_service_provider = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members AppFileLocProvider
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method3 do |args|
          return get_file(args[0], args[1], args[2])
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3]))
      @directory_service_provider2 = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members AppFileLocProvider
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method3 do |args|
          return get_file(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method4 do |args|
          return get_files(args[0], args[1])
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3, 2]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@supports).nil?)
        @supports.dispose
        @supports = nil
      end
      if (!(@directory_service_provider).nil?)
        @directory_service_provider.dispose
        @directory_service_provider = nil
      end
      if (!(@directory_service_provider2).nil?)
        @directory_service_provider2.dispose
        @directory_service_provider2 = nil
      end
    end
    
    typesig { [] }
    # int
    def get_address
      return @directory_service_provider.get_address
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return XPCOM::NS_ERROR_NO_INTERFACE
      end
      guid = NsID.new
      XPCOM.memmove(guid, riid, self.attr_ns_id.attr_sizeof)
      if (guid._equals(NsISupports::NS_ISUPPORTS_IID))
        # int
        XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([@supports.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIDirectoryServiceProvider::NS_IDIRECTORYSERVICEPROVIDER_IID))
        # int
        XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([@directory_service_provider.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIDirectoryServiceProvider2::NS_IDIRECTORYSERVICEPROVIDER2_IID))
        # int
        XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([@directory_service_provider2.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      # int
      XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([0]), C::PTR_SIZEOF)
      return XPCOM::NS_ERROR_NO_INTERFACE
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
      end
      return @ref_count
    end
    
    typesig { [String] }
    def set_profile_path(path)
      @profile_path = path
      if (!Compatibility.file_exists(path, ""))
        # $NON-NLS-1$
        # int
        # int
        result = Array.typed(::Java::Long).new(1) { 0 }
        path_string = NsEmbedString.new(path)
        rc = XPCOM._ns_new_local_file(path_string.get_address, 1, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        if ((result[0]).equal?(0))
          Mozilla.error(XPCOM::NS_ERROR_NULL_POINTER)
        end
        path_string.dispose
        file = NsILocalFile.new(result[0])
        rc = file._create(NsILocalFile::DIRECTORY_TYPE, 700)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        file._release
      end
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # nsIDirectoryServiceProvider2
    # int
    # int
    def get_files(prop, _retval)
      size = XPCOM.strlen(prop)
      bytes = Array.typed(::Java::Byte).new(size) { 0 }
      XPCOM.memmove(bytes, prop, size)
      property_name = String.new(MozillaDelegate.mbcs_to_wcs(nil, bytes))
      property_values = nil
      if ((property_name == XPCOM::NS_APP_PLUGINS_DIR_LIST))
        if ((@plugin_dirs).nil?)
          index = 0
          # set the first value(s) to the MOZ_PLUGIN_PATH environment variable value if it's defined
          # int
          ptr = C.getenv(MozillaDelegate.wcs_to_mbcs(nil, XPCOM::MOZILLA_PLUGIN_PATH, true))
          if (!(ptr).equal?(0))
            length = C.strlen(ptr)
            buffer = Array.typed(::Java::Byte).new(length) { 0 }
            C.memmove(buffer, ptr, length)
            value = String.new(MozillaDelegate.mbcs_to_wcs(nil, buffer))
            if (value.length > 0)
              separator = System.get_property("path.separator") # $NON-NLS-1$
              segments = Vector.new
              start = 0
              end_ = -1
              begin
                start = end_ + 1
                end_ = value.index_of(separator, start)
                segment = nil
                if ((end_).equal?(-1))
                  segment = RJava.cast_to_string(value.substring(start))
                else
                  segment = RJava.cast_to_string(value.substring(start, end_))
                end
                if (segment.length > 0)
                  segments.add_element(segment)
                end
              end while (!(end_).equal?(-1))
              segments_size = segments.size
              @plugin_dirs = Array.typed(String).new(segments_size + 2) { nil }
              index = 0
              while index < segments_size
                @plugin_dirs[index] = segments.element_at(index)
                index += 1
              end
            end
          end
          if ((@plugin_dirs).nil?)
            @plugin_dirs = Array.typed(String).new(2) { nil }
          end
          # set the next value to the GRE path + "plugins"
          @plugin_dirs[((index += 1) - 1)] = @mozilla_path + PLUGINS_DIR
          # set the next value to the home directory + "/.mozilla/plugins"
          @plugin_dirs[((index += 1) - 1)] = RJava.cast_to_string(System.get_property("user.home")) + SEPARATOR_OS + USER_PLUGINS_DIR
        end
        property_values = @plugin_dirs
      end
      # int
      XPCOM.memmove(_retval, Array.typed(::Java::Long).new([0]), C::PTR_SIZEOF)
      if (!(property_values).nil?)
        # int
        # int
        result = Array.typed(::Java::Long).new(1) { 0 }
        files = Array.typed(NsISupports).new(property_values.attr_length) { nil }
        index = 0
        i = 0
        while i < property_values.attr_length
          path_string = NsEmbedString.new(property_values[i])
          rc = XPCOM._ns_new_local_file(path_string.get_address, 1, result)
          if (!(rc).equal?(XPCOM::NS_ERROR_FILE_UNRECOGNIZED_PATH))
            # value appears to be a valid pathname
            if (!(rc).equal?(XPCOM::NS_OK))
              Mozilla.error(rc)
            end
            if ((result[0]).equal?(0))
              Mozilla.error(XPCOM::NS_ERROR_NULL_POINTER)
            end
            local_file = NsILocalFile.new(result[0])
            result[0] = 0
            rc = local_file._query_interface(NsIFile::NS_IFILE_IID, result)
            if (!(rc).equal?(XPCOM::NS_OK))
              Mozilla.error(rc)
            end
            if ((result[0]).equal?(0))
              Mozilla.error(XPCOM::NS_ERROR_NO_INTERFACE)
            end
            local_file._release
            file = NsIFile.new(result[0])
            files[((index += 1) - 1)] = file
          end
          path_string.dispose
          result[0] = 0
          i += 1
        end
        if (index < property_values.attr_length)
          # there were some invalid values so remove the trailing empty array slots
          temp = Array.typed(NsISupports).new(index) { nil }
          System.arraycopy(files, 0, temp, 0, index)
          files = temp
        end
        enumerator = SimpleEnumerator.new(files)
        enumerator._add_ref
        # int
        XPCOM.memmove(_retval, Array.typed(::Java::Long).new([enumerator.get_address]), C::PTR_SIZEOF)
        return XPCOM::NS_OK
      end
      return XPCOM::NS_ERROR_FAILURE
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # nsIDirectoryServiceProvider implementation
    # int
    # int
    # int
    def get_file(prop, persistent, _retval)
      size_ = XPCOM.strlen(prop)
      bytes = Array.typed(::Java::Byte).new(size_) { 0 }
      XPCOM.memmove(bytes, prop, size_)
      property_name = String.new(MozillaDelegate.mbcs_to_wcs(nil, bytes))
      property_value = nil
      if ((property_name == XPCOM::NS_APP_HISTORY_50_FILE))
        property_value = @profile_path + HISTORY_FILE
      else
        if ((property_name == XPCOM::NS_APP_USER_MIMETYPES_50_FILE))
          property_value = @profile_path + MIMETYPES_FILE
        else
          if ((property_name == XPCOM::NS_APP_PREFS_50_FILE))
            property_value = @profile_path + PREFERENCES_FILE
          else
            if ((property_name == XPCOM::NS_APP_PREFS_50_DIR))
              property_value = @profile_path
            else
              if ((property_name == XPCOM::NS_APP_USER_CHROME_DIR))
                property_value = @profile_path + CHROME_DIR
              else
                if ((property_name == XPCOM::NS_APP_USER_PROFILE_50_DIR))
                  property_value = @profile_path
                else
                  if ((property_name == XPCOM::NS_APP_LOCALSTORE_50_FILE))
                    property_value = @profile_path + LOCALSTORE_FILE
                  else
                    if ((property_name == XPCOM::NS_APP_CACHE_PARENT_DIR))
                      property_value = @profile_path
                    else
                      if ((property_name == XPCOM::NS_OS_HOME_DIR))
                        property_value = RJava.cast_to_string(System.get_property("user.home")) # $NON-NLS-1$
                      else
                        if ((property_name == XPCOM::NS_OS_TEMP_DIR))
                          property_value = RJava.cast_to_string(System.get_property("java.io.tmpdir")) # $NON-NLS-1$
                        else
                          if ((property_name == XPCOM::NS_GRE_DIR))
                            property_value = @mozilla_path
                          else
                            if ((property_name == XPCOM::NS_GRE_COMPONENT_DIR))
                              property_value = @mozilla_path + COMPONENTS_DIR
                            else
                              if ((property_name == XPCOM::NS_XPCOM_INIT_CURRENT_PROCESS_DIR))
                                property_value = @mozilla_path
                              else
                                if ((property_name == XPCOM::NS_OS_CURRENT_PROCESS_DIR))
                                  property_value = @mozilla_path
                                else
                                  if ((property_name == XPCOM::NS_XPCOM_COMPONENT_DIR))
                                    property_value = @mozilla_path + COMPONENTS_DIR
                                  else
                                    if ((property_name == XPCOM::NS_XPCOM_CURRENT_PROCESS_DIR))
                                      property_value = @mozilla_path
                                    else
                                      if ((property_name == XPCOM::NS_APP_PREF_DEFAULTS_50_DIR))
                                        # Answering a value for this property causes problems in Mozilla versions
                                        # < 1.7.  Unfortunately this property is queried early enough in the
                                        # Browser creation process that the Mozilla version being used is not
                                        # yet determined.  However it is known if XULRunner is being used or not.
                                        # 
                                        # For now answer a value for this property iff XULRunner is the GRE.
                                        # If the range of Mozilla versions supported by the Browser is changed
                                        # in the future to be >= 1.7 then this value can always be answered.
                                        if (@is_xulrunner)
                                          property_value = @profile_path
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      XPCOM.memmove(persistent, Array.typed(::Java::Int).new([1]), 4)
      # PRBool
      # int
      XPCOM.memmove(_retval, Array.typed(::Java::Long).new([0]), C::PTR_SIZEOF)
      if (!(property_value).nil? && property_value.length > 0)
        # int
        # int
        result = Array.typed(::Java::Long).new(1) { 0 }
        path_string = NsEmbedString.new(property_value)
        rc = XPCOM._ns_new_local_file(path_string.get_address, 1, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        if ((result[0]).equal?(0))
          Mozilla.error(XPCOM::NS_ERROR_NULL_POINTER)
        end
        path_string.dispose
        local_file = NsILocalFile.new(result[0])
        result[0] = 0
        rc = local_file._query_interface(NsIFile::NS_IFILE_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        if ((result[0]).equal?(0))
          Mozilla.error(XPCOM::NS_ERROR_NO_INTERFACE)
        end
        # int
        XPCOM.memmove(_retval, Array.typed(::Java::Long).new([result[0]]), C::PTR_SIZEOF)
        local_file._release
        return XPCOM::NS_OK
      end
      return XPCOM::NS_ERROR_FAILURE
    end
    
    private
    alias_method :initialize__app_file_loc_provider, :initialize
  end
  
end
