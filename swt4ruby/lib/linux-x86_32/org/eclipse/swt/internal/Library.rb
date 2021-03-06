require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module LibraryImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
      include ::Java::Io
    }
  end
  
  class Library 
    include_class_members LibraryImports
    
    class_module.module_eval {
      # SWT Version - Mmmm (M=major, mmm=minor)
      # 
      # SWT Major version number (must be >= 0)
      
      def major_version
        defined?(@@major_version) ? @@major_version : @@major_version= 3
      end
      alias_method :attr_major_version, :major_version
      
      def major_version=(value)
        @@major_version = value
      end
      alias_method :attr_major_version=, :major_version=
      
      # SWT Minor version number (must be in the range 0..999)
      
      def minor_version
        defined?(@@minor_version) ? @@minor_version : @@minor_version= 550
      end
      alias_method :attr_minor_version, :minor_version
      
      def minor_version=(value)
        @@minor_version = value
      end
      alias_method :attr_minor_version=, :minor_version=
      
      # SWT revision number (must be >= 0)
      
      def revision
        defined?(@@revision) ? @@revision : @@revision= 0
      end
      alias_method :attr_revision, :revision
      
      def revision=(value)
        @@revision = value
      end
      alias_method :attr_revision=, :revision=
      
      # 64-bit support
      # final
      # long
      
      def is_64
        defined?(@@is_64) ? @@is_64 : @@is_64= (0x1ffffffff).equal?(RJava.cast_to_int(0x1ffffffff))
      end
      alias_method :attr_is_64, :is_64
      
      def is_64=(value)
        @@is_64 = value
      end
      alias_method :attr_is_64=, :is_64=
      
      const_set_lazy(:SUFFIX_64) { "-64" }
      const_attr_reader  :SUFFIX_64
      
      # $NON-NLS-1$
      const_set_lazy(:SWTDIR_32) { "swtlib-32" }
      const_attr_reader  :SWTDIR_32
      
      # $NON-NLS-1$
      const_set_lazy(:SWTDIR_64) { "swtlib-64" }
      const_attr_reader  :SWTDIR_64
      
      # $NON-NLS-1$
      when_class_loaded do
        const_set :SEPARATOR, RJava.cast_to_string(System.get_property("file.separator"))
        const_set :JAVA_VERSION, parse_version(System.get_property("java.version"))
        const_set :SWT_VERSION, _swt_version(self.attr_major_version, self.attr_minor_version)
      end
      
      typesig { [String] }
      def parse_version(version)
        if ((version).nil?)
          return 0
        end
        major = 0
        minor = 0
        micro = 0
        length_ = version.length
        index = 0
        start = 0
        while (index < length_ && Character.is_digit(version.char_at(index)))
          index += 1
        end
        begin
          if (start < length_)
            major = JavaInteger.parse_int(version.substring(start, index))
          end
        rescue NumberFormatException => e
        end
        start = (index += 1)
        while (index < length_ && Character.is_digit(version.char_at(index)))
          index += 1
        end
        begin
          if (start < length_)
            minor = JavaInteger.parse_int(version.substring(start, index))
          end
        rescue NumberFormatException => e
        end
        start = (index += 1)
        while (index < length_ && Character.is_digit(version.char_at(index)))
          index += 1
        end
        begin
          if (start < length_)
            micro = JavaInteger.parse_int(version.substring(start, index))
          end
        rescue NumberFormatException => e
        end
        return _java_version(major, minor, micro)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # Returns the Java version number as an integer.
      # 
      # @param major
      # @param minor
      # @param micro
      # @return the version
      def _java_version(major, minor, micro)
        return (major << 16) + (minor << 8) + micro
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # Returns the SWT version number as an integer.
      # 
      # @param major
      # @param minor
      # @return the version
      def _swt_version(major, minor)
        return major * 1000 + minor
      end
      
      typesig { [String, String] }
      def extract(file_name, mapped_name)
        os = nil
        is = nil
        file = JavaFile.new(file_name)
        extracted = false
        begin
          if (!file.exists)
            is = Library.get_resource_as_stream("/" + mapped_name) # $NON-NLS-1$
            if (!(is).nil?)
              extracted = true
              read = 0
              buffer = Array.typed(::Java::Byte).new(4096) { 0 }
              os = FileOutputStream.new(file_name)
              while (!((read = is.read(buffer))).equal?(-1))
                os.write(buffer, 0, read)
              end
              os.close
              is.close
              if (!(Platform::SWT_PLATFORM == "win32"))
                # $NON-NLS-1$
                begin
                  Runtime.get_runtime.exec(Array.typed(String).new(["chmod", "755", file_name])).wait_for # $NON-NLS-1$ //$NON-NLS-2$
                rescue JavaThrowable => e
                end
              end
            end
          end
          if (load(file_name))
            return true
          end
        rescue JavaThrowable => e
          begin
            if (!(os).nil?)
              os.close
            end
          rescue IOException => e1
          end
          begin
            if (!(is).nil?)
              is.close
            end
          rescue IOException => e1
          end
          if (extracted && file.exists)
            file.delete
          end
        end
        return false
      end
      
      typesig { [String] }
      def load(lib_name)
        begin
          if (!(lib_name.index_of(SEPARATOR)).equal?(-1))
            System.load(lib_name)
          else
            System.load_library(lib_name)
          end
          return true
        rescue UnsatisfiedLinkError => e
        end
        return false
      end
      
      typesig { [String] }
      # Loads the shared library that matches the version of the
      # Java code which is currently running.  SWT shared libraries
      # follow an encoding scheme where the major, minor and revision
      # numbers are embedded in the library name and this along with
      # <code>name</code> is used to load the library.  If this fails,
      # <code>name</code> is used in another attempt to load the library,
      # this time ignoring the SWT version encoding scheme.
      # 
      # @param name the name of the library to load
      def load_library(name)
        load_library(name, true)
      end
      
      typesig { [String, ::Java::Boolean] }
      # Loads the shared library that matches the version of the
      # Java code which is currently running.  SWT shared libraries
      # follow an encoding scheme where the major, minor and revision
      # numbers are embedded in the library name and this along with
      # <code>name</code> is used to load the library.  If this fails,
      # <code>name</code> is used in another attempt to load the library,
      # this time ignoring the SWT version encoding scheme.
      # 
      # @param name the name of the library to load
      # @param mapName true if the name should be mapped, false otherwise
      def load_library(name, map_name)
        prop = System.get_property("sun.arch.data.model") # $NON-NLS-1$
        if ((prop).nil?)
          prop = RJava.cast_to_string(System.get_property("com.ibm.vm.bitmode"))
        end # $NON-NLS-1$
        if (!(prop).nil?)
          if (("32" == prop) && self.attr_is_64)
            # $NON-NLS-1$
            raise UnsatisfiedLinkError.new("Cannot load 64-bit SWT libraries on 32-bit JVM") # $NON-NLS-1$
          end
          if (("64" == prop) && !self.attr_is_64)
            # $NON-NLS-1$
            raise UnsatisfiedLinkError.new("Cannot load 32-bit SWT libraries on 64-bit JVM") # $NON-NLS-1$
          end
        end
        # Compute the library name and mapped name
        lib_name1 = nil
        lib_name2 = nil
        mapped_name1 = nil
        mapped_name2 = nil
        if (map_name)
          version = System.get_property("swt.version") # $NON-NLS-1$
          if ((version).nil?)
            version = "" + RJava.cast_to_string(self.attr_major_version) # $NON-NLS-1$
            # Force 3 digits in minor version number
            if (self.attr_minor_version < 10)
              version += "00" # $NON-NLS-1$
            else
              if (self.attr_minor_version < 100)
                version += "0"
              end # $NON-NLS-1$
            end
            version += RJava.cast_to_string(self.attr_minor_version)
            # No "r" until first revision
            if (self.attr_revision > 0)
              version += "r" + RJava.cast_to_string(self.attr_revision)
            end # $NON-NLS-1$
          end
          lib_name1 = name + "-" + RJava.cast_to_string(Platform::SWT_PLATFORM) + "-" + version # $NON-NLS-1$ //$NON-NLS-2$
          lib_name2 = name + "-" + RJava.cast_to_string(Platform::SWT_PLATFORM) # $NON-NLS-1$
          mapped_name1 = RJava.cast_to_string(map_library_name(lib_name1))
          mapped_name2 = RJava.cast_to_string(map_library_name(lib_name2))
        else
          lib_name1 = RJava.cast_to_string(lib_name2 = RJava.cast_to_string(mapped_name1 = RJava.cast_to_string(mapped_name2 = name)))
        end
        # Try loading library from swt library path
        path = System.get_property("swt.library.path") # $NON-NLS-1$
        if (!(path).nil?)
          path = RJava.cast_to_string(JavaFile.new(path).get_absolute_path)
          if (load(path + SEPARATOR + mapped_name1))
            return
          end
          if (map_name && load(path + SEPARATOR + mapped_name2))
            return
          end
        end
        # Try loading library from java library path
        if (load(lib_name1))
          return
        end
        if (map_name && load(lib_name2))
          return
        end
        # Try loading library from the tmp directory if swt library path is not specified
        file_name1 = mapped_name1
        file_name2 = mapped_name2
        if ((path).nil?)
          path = RJava.cast_to_string(System.get_property("java.io.tmpdir")) # $NON-NLS-1$
          dir = JavaFile.new(path, self.attr_is_64 ? SWTDIR_64 : SWTDIR_32)
          make = false
          if ((dir.exists && dir.is_directory) || (make = dir.mkdir))
            path = RJava.cast_to_string(dir.get_absolute_path)
            if (make && !(Platform::SWT_PLATFORM == "win32"))
              # $NON-NLS-1$
              begin
                Runtime.get_runtime.exec(Array.typed(String).new(["chmod", "777", path])).wait_for # $NON-NLS-1$ //$NON-NLS-2$
              rescue JavaThrowable => e
              end
            end
          else
            # fall back to using the tmp directory
            if (self.attr_is_64)
              file_name1 = RJava.cast_to_string(map_library_name(lib_name1 + SUFFIX_64))
              file_name2 = RJava.cast_to_string(map_library_name(lib_name2 + SUFFIX_64))
            end
          end
          if (load(path + SEPARATOR + file_name1))
            return
          end
          if (map_name && load(path + SEPARATOR + file_name2))
            return
          end
        end
        # Try extracting and loading library from jar
        if (!(path).nil?)
          if (extract(path + SEPARATOR + file_name1, mapped_name1))
            return
          end
          if (map_name && extract(path + SEPARATOR + file_name2, mapped_name2))
            return
          end
        end
        # Failed to find the library
        raise UnsatisfiedLinkError.new("no " + lib_name1 + " or " + lib_name2 + " in swt.library.path, java.library.path or the jar file") # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
      end
      
      typesig { [String] }
      def map_library_name(lib_name)
        # SWT libraries in the Macintosh use the extension .jnilib but the some VMs map to .dylib.
        lib_name = RJava.cast_to_string(System.map_library_name(lib_name))
        ext = ".dylib" # $NON-NLS-1$
        if (lib_name.ends_with(ext))
          lib_name = RJava.cast_to_string(lib_name.substring(0, lib_name.length - ext.length)) + ".jnilib" # $NON-NLS-1$
        end
        return lib_name
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__library, :initialize
  end
  
end
