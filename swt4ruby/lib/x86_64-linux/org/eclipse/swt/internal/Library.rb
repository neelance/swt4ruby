require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module LibraryImports
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
        defined?(@@minor_version) ? @@minor_version : @@minor_version= 448
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
      
      when_class_loaded do
        const_set :SEPARATOR, (System.get_property("file.separator")).to_s
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
          ((index += 1) - 1)
        end
        begin
          if (start < length_)
            major = JavaInteger.parse_int(version.substring(start, index))
          end
        rescue NumberFormatException => e
        end
        start = (index += 1)
        while (index < length_ && Character.is_digit(version.char_at(index)))
          ((index += 1) - 1)
        end
        begin
          if (start < length_)
            minor = JavaInteger.parse_int(version.substring(start, index))
          end
        rescue NumberFormatException => e
        end
        start = (index += 1)
        while (index < length_ && Character.is_digit(version.char_at(index)))
          ((index += 1) - 1)
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
        begin
          if (!file.exists)
            is = Library.class.get_resource_as_stream("/" + mapped_name) # $NON-NLS-1$
            if (!(is).nil?)
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
                rescue Exception => e
                end
              end
              if (load(file_name))
                return true
              end
            end
          end
        rescue Exception => e
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
        end
        if (file.exists)
          file.delete
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
          prop = (System.get_property("com.ibm.vm.bitmode")).to_s
        end # $NON-NLS-1$
        if (!(prop).nil?)
          if (("32" == prop))
            # $NON-NLS-1$
            # int
            if ((0x1ffffffff).equal?(0x1ffffffff))
              raise UnsatisfiedLinkError.new("Cannot load 64-bit SWT libraries on 32-bit JVM") # $NON-NLS-1$
            end
          end
          if (("64" == prop))
            # $NON-NLS-1$
            # int
            if (!(0x1ffffffff).equal?(0x1ffffffff))
              raise UnsatisfiedLinkError.new("Cannot load 32-bit SWT libraries on 64-bit JVM") # $NON-NLS-1$
            end
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
            version = "" + (self.attr_major_version).to_s # $NON-NLS-1$
            # Force 3 digits in minor version number
            if (self.attr_minor_version < 10)
              version += "00" # $NON-NLS-1$
            else
              if (self.attr_minor_version < 100)
                version += "0"
              end # $NON-NLS-1$
            end
            version += (self.attr_minor_version).to_s
            # No "r" until first revision
            if (self.attr_revision > 0)
              version += "r" + (self.attr_revision).to_s
            end # $NON-NLS-1$
          end
          lib_name1 = name + "-" + (Platform::SWT_PLATFORM).to_s + "-" + version # $NON-NLS-1$ //$NON-NLS-2$
          lib_name2 = name + "-" + (Platform::SWT_PLATFORM).to_s # $NON-NLS-1$
          mapped_name1 = (System.map_library_name(lib_name1)).to_s
          mapped_name2 = (System.map_library_name(lib_name2)).to_s
        else
          lib_name1 = (lib_name2 = (mapped_name1 = (mapped_name2 = name).to_s).to_s).to_s
        end
        # Try loading library from swt library path
        path = System.get_property("swt.library.path") # $NON-NLS-1$
        if (!(path).nil?)
          path = (JavaFile.new(path).get_absolute_path).to_s
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
        if ((path).nil?)
          path = (System.get_property("java.io.tmpdir")).to_s # $NON-NLS-1$
          path = (JavaFile.new(path).get_absolute_path).to_s
          if (load(path + SEPARATOR + mapped_name1))
            return
          end
          if (map_name && load(path + SEPARATOR + mapped_name2))
            return
          end
        end
        # Try extracting and loading library from jar
        if (!(path).nil?)
          if (extract(path + SEPARATOR + mapped_name1, mapped_name1))
            return
          end
          if (map_name && extract(path + SEPARATOR + mapped_name2, mapped_name2))
            return
          end
        end
        # Failed to find the library
        raise UnsatisfiedLinkError.new("no " + lib_name1 + " or " + lib_name2 + " in swt.library.path, java.library.path or the jar file") # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__library, :initialize
  end
  
end
