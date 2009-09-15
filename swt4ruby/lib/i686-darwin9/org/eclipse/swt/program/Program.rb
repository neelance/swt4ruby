require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Program
  module ProgramImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Program
      include_const ::Org::Eclipse::Swt::Internal, :C
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Java::Util, :Vector
    }
  end
  
  # Instances of this class represent programs and
  # their associated file extensions in the operating
  # system.
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#program">Program snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Program 
    include_class_members ProgramImports
    
    attr_accessor :name
    alias_method :attr_name, :name
    undef_method :name
    alias_method :attr_name=, :name=
    undef_method :name=
    
    attr_accessor :full_path
    alias_method :attr_full_path, :full_path
    undef_method :full_path
    alias_method :attr_full_path=, :full_path=
    undef_method :full_path=
    
    attr_accessor :identifier
    alias_method :attr_identifier, :identifier
    undef_method :identifier
    alias_method :attr_identifier=, :identifier=
    undef_method :identifier=
    
    class_module.module_eval {
      const_set_lazy(:PREFIX_FILE) { "file:" }
      const_attr_reader  :PREFIX_FILE
      
      # $NON-NLS-1$
      const_set_lazy(:PREFIX_HTTP) { "http://" }
      const_attr_reader  :PREFIX_HTTP
      
      # $NON-NLS-1$
      const_set_lazy(:PREFIX_HTTPS) { "https://" }
      const_attr_reader  :PREFIX_HTTPS
    }
    
    typesig { [] }
    # $NON-NLS-1$
    # 
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @name = nil
      @full_path = nil
      @identifier = nil
    end
    
    class_module.module_eval {
      typesig { [String] }
      # Finds the program that is associated with an extension.
      # The extension may or may not begin with a '.'.  Note that
      # a <code>Display</code> must already exist to guarantee that
      # this method returns an appropriate result.
      # 
      # @param extension the program extension
      # @return the program or <code>null</code>
      # 
      # @exception IllegalArgumentException <ul>
      # <li>ERROR_NULL_ARGUMENT when extension is null</li>
      # </ul>
      def find_program(extension)
        if ((extension).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if ((extension.length).equal?(0))
          return nil
        end
        if (!(extension.char_at(0)).equal?(Character.new(?..ord)))
          extension = "." + extension
        end
        pool = NSAutoreleasePool.new.alloc.init
        begin
          workspace = NSWorkspace.shared_workspace
          # long
          app_name = OS.malloc(C::PTR_SIZEOF)
          # long
          type = OS.malloc(C::PTR_SIZEOF)
          temp = NSString.new(OS._nstemporary_directory)
          file_name = NSString.string_with("swt" + RJava.cast_to_string(System.current_time_millis) + extension)
          full_path = temp.string_by_appending_path_component(file_name)
          file_manager = NSFileManager.default_manager
          file_manager.create_file_at_path(full_path, nil, nil)
          if (!workspace.get_info_for_file(full_path, app_name, type))
            return nil
          end
          file_manager.remove_item_at_path(full_path, 0)
          # long
          # long
          buffer = Array.typed(::Java::Int).new(1) { 0 }
          # long
          # long
          buffer2 = Array.typed(::Java::Int).new(1) { 0 }
          OS.memmove___org_eclipse_swt_program_program_1(buffer, app_name, C::PTR_SIZEOF)
          OS.memmove___org_eclipse_swt_program_program_3(buffer2, type, C::PTR_SIZEOF)
          OS.free(app_name)
          OS.free(type)
          if (!(buffer[0]).equal?(0))
            app_path = NSString.new(buffer[0])
            app_type = NSString.new(buffer2[0])
            bundle = NSBundle.bundle_with_path(app_path)
            if (!(bundle).nil?)
              text_edit_id = NSString.string_with("com.apple.TextEdit")
              bundle_id = NSString.string_with("CFBundleIdentifier")
              info_dictionary_ = bundle.info_dictionary
              text_edit = text_edit_id.is_equal(info_dictionary_.object_for_key(bundle_id))
              if (!text_edit)
                return get_program(bundle)
              end
              # if text edit, make sure we're really one of the extensions that
              # text edit says it can handle.
              cfbundle_document_types = NSString.string_with("CFBundleDocumentTypes")
              cfbundle_type_extensions = NSString.string_with("CFBundleTypeExtensions")
              id = info_dictionary_.object_for_key(cfbundle_document_types)
              if (!(id).nil?)
                document_types = NSDictionary.new(id.attr_id)
                document_types_enumerator = document_types.object_enumerator
                while (!((id = document_types_enumerator.next_object)).nil?)
                  document_type = NSDictionary.new(id.attr_id)
                  supported_extensions = NSDictionary.new(document_type.object_for_key(cfbundle_type_extensions))
                  if (!(supported_extensions).nil?)
                    supported_extensions_enumerator = supported_extensions.object_enumerator
                    if (!(supported_extensions_enumerator).nil?)
                      ext = nil
                      while (!((ext = supported_extensions_enumerator.next_object)).nil?)
                        str_ext = NSString.new(ext)
                        if (app_type.is_equal(str_ext))
                          return get_program(bundle)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
          return nil
        ensure
          pool.release
        end
      end
      
      typesig { [] }
      # Answer all program extensions in the operating system.  Note
      # that a <code>Display</code> must already exist to guarantee
      # that this method returns an appropriate result.
      # 
      # @return an array of extensions
      def get_extensions
        pool = NSAutoreleasePool.new.alloc.init
        begin
          supported_document_types = NSMutableSet.set
          workspace = NSWorkspace.shared_workspace
          cfbundle_document_types = NSString.string_with("CFBundleDocumentTypes")
          cfbundle_type_extensions = NSString.string_with("CFBundleTypeExtensions")
          array = NSArray.new(OS._nssearch_path_for_directories_in_domains(OS::NSAllApplicationsDirectory, OS::NSAllDomainsMask, true))
          # 64
          count_ = RJava.cast_to_int(array.count)
          i = 0
          while i < count_
            path = NSString.new(array.object_at_index(i))
            file_manager = NSFileManager.default_manager
            enumerator = file_manager.enumerator_at_path(path)
            if (!(enumerator).nil?)
              id = nil
              while (!((id = enumerator.next_object)).nil?)
                enumerator.skip_descendents
                file_path = NSString.new(id.attr_id)
                full_path = path.string_by_appending_path_component(file_path)
                if (workspace.is_file_package_at_path(full_path))
                  bundle = NSBundle.bundle_with_path(full_path)
                  id = bundle.info_dictionary.object_for_key(cfbundle_document_types)
                  if (!(id).nil?)
                    document_types = NSDictionary.new(id.attr_id)
                    document_types_enumerator = document_types.object_enumerator
                    while (!((id = document_types_enumerator.next_object)).nil?)
                      document_type = NSDictionary.new(id.attr_id)
                      id = document_type.object_for_key(cfbundle_type_extensions)
                      if (!(id).nil?)
                        supported_document_types.add_objects_from_array(NSArray.new(id.attr_id))
                      end
                    end
                  end
                end
              end
            end
            i += 1
          end
          i_ = 0
          # 64
          exts = Array.typed(String).new(RJava.cast_to_int(supported_document_types.count)) { nil }
          enumerator = supported_document_types.object_enumerator
          id = nil
          while (!((id = enumerator.next_object)).nil?)
            ext = NSString.new(id.attr_id).get_string
            if (!(ext == "*"))
              exts[((i_ += 1) - 1)] = "." + ext
            end
          end
          if (!(i_).equal?(exts.attr_length))
            temp = Array.typed(String).new(i_) { nil }
            System.arraycopy(exts, 0, temp, 0, i_)
            exts = temp
          end
          return exts
        ensure
          pool.release
        end
      end
      
      typesig { [NSBundle] }
      def get_program(bundle)
        cfbundle_name = NSString.string_with("CFBundleName")
        cfbundle_display_name = NSString.string_with("CFBundleDisplayName")
        full_path = bundle.bundle_path
        identifier = bundle.bundle_identifier
        bundle_name = bundle.object_for_info_dictionary_key(cfbundle_display_name)
        if ((bundle_name).nil?)
          bundle_name = bundle.object_for_info_dictionary_key(cfbundle_name)
        end
        if ((bundle_name).nil?)
          bundle_name = full_path.last_path_component.string_by_deleting_path_extension
        end
        name = NSString.new(bundle_name.attr_id)
        program = Program.new
        program.attr_name = name.get_string
        program.attr_full_path = full_path.get_string
        program.attr_identifier = !(identifier).nil? ? identifier.get_string : ""
        return program
      end
      
      typesig { [] }
      # Answers all available programs in the operating system.  Note
      # that a <code>Display</code> must already exist to guarantee
      # that this method returns an appropriate result.
      # 
      # @return an array of programs
      def get_programs
        pool = NSAutoreleasePool.new.alloc.init
        begin
          vector = Vector.new
          workspace = NSWorkspace.shared_workspace
          array = NSArray.new(OS._nssearch_path_for_directories_in_domains(OS::NSAllApplicationsDirectory, OS::NSAllDomainsMask, true))
          # 64
          count_ = RJava.cast_to_int(array.count)
          i = 0
          while i < count_
            path = NSString.new(array.object_at_index(i))
            file_manager = NSFileManager.default_manager
            enumerator = file_manager.enumerator_at_path(path)
            if (!(enumerator).nil?)
              id = nil
              while (!((id = enumerator.next_object)).nil?)
                enumerator.skip_descendents
                full_path = path.string_by_appending_path_component(NSString.new(id.attr_id))
                if (workspace.is_file_package_at_path(full_path))
                  bundle = NSBundle.bundle_with_path(full_path)
                  if (!(bundle).nil?)
                    vector.add_element(get_program(bundle))
                  end
                end
              end
            end
            i += 1
          end
          programs = Array.typed(Program).new(vector.size) { nil }
          vector.copy_into(programs)
          return programs
        ensure
          pool.release
        end
      end
      
      typesig { [String] }
      # Launches the operating system executable associated with the file or
      # URL (http:// or https://).  If the file is an executable then the
      # executable is launched.  Note that a <code>Display</code> must already
      # exist to guarantee that this method returns an appropriate result.
      # 
      # @param fileName the file or program name or URL (http:// or https://)
      # @return <code>true</code> if the file is launched, otherwise <code>false</code>
      # 
      # @exception IllegalArgumentException <ul>
      # <li>ERROR_NULL_ARGUMENT when fileName is null</li>
      # </ul>
      def launch(file_name)
        if ((file_name).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        pool = NSAutoreleasePool.new.alloc.init
        begin
          unescaped_str = NSString.string_with("%") # $NON-NLS-1$
          lowercase_name = file_name.to_lower_case
          if (lowercase_name.starts_with(PREFIX_HTTP) || lowercase_name.starts_with(PREFIX_HTTPS))
            unescaped_str = NSString.string_with("%#") # $NON-NLS-1$
          else
            if (!lowercase_name.starts_with(PREFIX_FILE))
              file_name = PREFIX_FILE + file_name
            end
          end
          full_path = NSString.string_with(file_name)
          # long
          ptr = OS._cfurlcreate_string_by_adding_percent_escapes(0, full_path.attr_id, unescaped_str.attr_id, 0, OS.attr_k_cfstring_encoding_utf8)
          escaped_string = NSString.new(ptr)
          workspace = NSWorkspace.shared_workspace
          result = workspace.open_url(NSURL._urlwith_string(escaped_string))
          OS._cfrelease(ptr)
          return result
        ensure
          pool.release
        end
      end
    }
    
    typesig { [String] }
    # Executes the program with the file as the single argument
    # in the operating system.  It is the responsibility of the
    # programmer to ensure that the file contains valid data for
    # this program.
    # 
    # @param fileName the file or program name
    # @return <code>true</code> if the file is launched, otherwise <code>false</code>
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when fileName is null</li>
    # </ul>
    def execute(file_name)
      if ((file_name).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      pool = NSAutoreleasePool.new.alloc.init
      begin
        workspace = NSWorkspace.shared_workspace
        lowercase_name = file_name.to_lower_case
        if (lowercase_name.starts_with(PREFIX_HTTP) || lowercase_name.starts_with(PREFIX_HTTPS))
          full_path = NSString.string_with(file_name)
          unescaped_str = NSString.string_with("%#") # $NON-NLS-1$
          # long
          ptr = OS._cfurlcreate_string_by_adding_percent_escapes(0, full_path.attr_id, unescaped_str.attr_id, 0, OS.attr_k_cfstring_encoding_utf8)
          escaped_string = NSString.new(ptr)
          urls = NSArray.array_with_object(NSURL._urlwith_string(escaped_string))
          OS._cfrelease(ptr)
          return workspace.open_urls(urls, NSString.string_with(@identifier), 0, nil, 0)
        else
          if (file_name.starts_with(PREFIX_FILE))
            file_name = RJava.cast_to_string(file_name.substring(PREFIX_FILE.length))
          end
          full_path = NSString.string_with(file_name)
          return workspace.open_file(full_path, NSString.string_with(@name))
        end
      ensure
        pool.release
      end
    end
    
    typesig { [] }
    # Returns the receiver's image data.  This is the icon
    # that is associated with the receiver in the operating
    # system.
    # 
    # @return the image data for the program, may be null
    def get_image_data
      pool = NSAutoreleasePool.new.alloc.init
      begin
        workspace = NSWorkspace.shared_workspace
        full_path = nil
        if (!(@full_path).nil?)
          full_path = NSString.string_with(@full_path)
        else
          full_path = workspace.full_path_for_application(NSString.string_with(@name))
        end
        if (!(full_path).nil?)
          ns_image = workspace.icon_for_file(full_path)
          if (!(ns_image).nil?)
            size_ = NSSize.new
            size_.attr_width = size_.attr_height = 16
            ns_image.set_size(size_)
            image_rep = nil
            rep = ns_image.best_representation_for_device(nil)
            if (rep.is_kind_of_class(OS.attr_class_nsbitmap_image_rep))
              image_rep = NSBitmapImageRep.new(rep.attr_id)
            end
            if (!(image_rep).nil?)
              # 64
              width = RJava.cast_to_int(image_rep.pixels_wide)
              # 64
              height = RJava.cast_to_int(image_rep.pixels_high)
              # 64
              bpr = RJava.cast_to_int(image_rep.bytes_per_row)
              # 64
              bpp = RJava.cast_to_int(image_rep.bits_per_pixel)
              data_size = height * bpr
              src_data = Array.typed(::Java::Byte).new(data_size) { 0 }
              OS.memmove___org_eclipse_swt_program_program_5(src_data, image_rep.bitmap_data, data_size)
              # TODO: Image representation wrong???
              palette = PaletteData.new(-0x1000000, 0xff0000, 0xff00)
              data = ImageData.new(width, height, bpp, palette, 4, src_data)
              data.attr_bytes_per_line = bpr
              data.attr_alpha_data = Array.typed(::Java::Byte).new(width * height) { 0 }
              i = 3
              o = 0
              while i < src_data.attr_length
                data.attr_alpha_data[o] = src_data[i]
                i += 4
                o += 1
              end
              return data
            end
          end
        end
        return nil
      ensure
        pool.release
      end
    end
    
    typesig { [] }
    # Returns the receiver's name.  This is as short and
    # descriptive a name as possible for the program.  If
    # the program has no descriptive name, this string may
    # be the executable name, path or empty.
    # 
    # @return the name of the program
    def get_name
      return @name
    end
    
    typesig { [Object] }
    # Compares the argument to the receiver, and returns true
    # if they represent the <em>same</em> object using a class
    # specific comparison.
    # 
    # @param other the object to compare with this object
    # @return <code>true</code> if the object is the same as this object and <code>false</code> otherwise
    # 
    # @see #hashCode()
    def ==(other)
      if ((self).equal?(other))
        return true
      end
      if (other.is_a?(Program))
        program = other
        return (@name == program.attr_name)
      end
      return false
    end
    
    typesig { [] }
    # Returns an integer hash code for the receiver. Any two
    # objects that return <code>true</code> when passed to
    # <code>equals</code> must return the same value for this
    # method.
    # 
    # @return the receiver's hash
    # 
    # @see #equals(Object)
    def hash_code
      return @name.hash_code
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the program
    def to_s
      return "Program {" + @name + "}"
    end
    
    private
    alias_method :initialize__program, :initialize
  end
  
end
