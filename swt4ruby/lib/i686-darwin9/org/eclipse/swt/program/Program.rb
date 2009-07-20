require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Program
  module ProgramImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Program
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :LSApplicationParameters
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Java::Util, :Enumeration
      include_const ::Java::Util, :Hashtable
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
    
    attr_accessor :fs_ref
    alias_method :attr_fs_ref, :fs_ref
    undef_method :fs_ref
    alias_method :attr_fs_ref=, :fs_ref=
    undef_method :fs_ref=
    
    class_module.module_eval {
      const_set_lazy(:PREFIX_HTTP) { "http://" }
      const_attr_reader  :PREFIX_HTTP
      
      # $NON-NLS-1$
      const_set_lazy(:PREFIX_HTTPS) { "https://" }
      const_attr_reader  :PREFIX_HTTPS
      
      # $NON-NLS-1$
      const_set_lazy(:PREFIX_FILE) { "file://" }
      const_attr_reader  :PREFIX_FILE
    }
    
    typesig { [] }
    # $NON-NLS-1$
    # 
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @name = nil
      @fs_ref = nil
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
        chars = nil
        if (!(extension.char_at(0)).equal?(Character.new(?..ord)))
          chars = CharArray.new(extension.length)
          extension.get_chars(0, chars.attr_length, chars, 0)
        else
          chars = CharArray.new(extension.length - 1)
          extension.get_chars(1, extension.length, chars, 0)
        end
        ext = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
        program = nil
        if (!(ext).equal?(0))
          fs_ref = Array.typed(::Java::Byte).new(80) { 0 }
          if ((OS._lsget_application_for_info(OS.attr_k_lsunknown_type, OS.attr_k_lsunknown_creator, ext, OS.attr_k_lsroles_all, fs_ref, nil)).equal?(OS.attr_no_err))
            program = get_program(fs_ref)
          end
          OS._cfrelease(ext)
        end
        return program
      end
      
      typesig { [] }
      # Answer all program extensions in the operating system.  Note
      # that a <code>Display</code> must already exist to guarantee
      # that this method returns an appropriate result.
      # 
      # @return an array of extensions
      def get_extensions
        # From System-Declared Uniform Type Identifiers
        # Others
        # iChat
        # iChat
        # acrobat reader
        # Chess
        # iCal
        # Mail
        # Sherlock
        # Stickies
        # System Preferences
        # Console
        # Grapher
        return Array.typed(String).new([".txt", ".rtf", ".html", ".htm", ".xml", ".c", ".m", ".cp", ".cpp", ".c++", ".cc", ".cxx", ".mm", ".h", ".hpp", ".h++", ".hxx", ".java", ".jav", ".s", ".r", ".defs", ".mig", ".exp", ".js", ".jscript", ".javascript", ".sh", ".command", ".csh", ".pl", ".pm", ".py", ".rb", ".rbw", ".php", ".php3", ".php4", ".ph3", ".ph4", ".phtml", ".jnlp", ".applescript", ".scpt", ".o", ".exe", ".dll", ".class", ".jar", ".qtz", ".gtar", ".tar", ".gz", ".gzip", ".tgz", ".hqx", ".bin", ".vcf", ".vcard", ".jpg", ".jpeg", ".jp2", ".tif", ".tiff", ".pic", ".pct", ".pict", ".pntg", ".png", ".xbm", ".qif", ".qtif", ".icns", ".mov", ".qt", ".avi", ".vfw", ".mpg", ".mpeg", ".m75", ".m15", ".mp4", ".3gp", ".3gpp", ".3g2", ".3gp2", ".mp3", ".m4a", ".m4p", ".m4b", ".au", ".ulw", ".snd", ".aifc", ".aiff", ".aif", ".caf", ".bundle", ".app", ".plugin", ".mdimporter", ".wdgt", ".cpio", ".zip", ".framework", ".rtfd", ".dfont", ".otf", ".ttf", ".ttc", ".suit", ".pfb", ".pfa", ".icc", ".icm", ".pf", ".pdf", ".ps", ".eps", ".psd", ".ai", ".gif", ".bmp", ".ico", ".doc", ".xls", ".ppt", ".wav", ".wave", ".asf", ".wm", ".wmv", ".wmp", ".wma", ".asx", ".wmx", ".wvx", ".wax", ".key", ".kth", ".tga", ".sgi", ".exr", ".fpx", ".jfx", ".efx", ".sd2", ".rm", ".ram", ".ra", ".smil", ".sit", ".sitx", ".plist", ".nib", ".lproj", ".iPhoto", ".iChat", ".chat", ".rmf", ".xfdf", ".fdf", ".game", ".pgn", ".ics", ".vcs", ".aplmodel", ".icbu", ".icalevent", ".icaltodo", ".mailhold", ".mbox", ".imapmbox", ".emlx", ".mailextract", ".sherlock", ".tpl", ".prefPane", ".sliderSaver", ".saver", ".log", ".gcx", ])
      end
      
      typesig { [] }
      # Answers all available programs in the operating system.  Note
      # that a <code>Display</code> must already exist to guarantee
      # that this method returns an appropriate result.
      # 
      # @return an array of programs
      def get_programs
        bundles = Hashtable.new
        extensions = get_extensions
        fs_ref = Array.typed(::Java::Byte).new(80) { 0 }
        i = 0
        while i < extensions.attr_length
          extension = extensions[i]
          chars = CharArray.new(extension.length - 1)
          extension.get_chars(1, extension.length, chars, 0)
          ext = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
          if (!(ext).equal?(0))
            if ((OS._lsget_application_for_info(OS.attr_k_lsunknown_type, OS.attr_k_lsunknown_creator, ext, OS.attr_k_lsroles_all, fs_ref, nil)).equal?(OS.attr_no_err))
              program = get_program(fs_ref)
              if (!(program).nil? && (bundles.get(program.get_name)).nil?)
                bundles.put(program.get_name, program)
                fs_ref = Array.typed(::Java::Byte).new(80) { 0 }
              end
            end
            if (OS::VERSION >= 0x1040)
              utis = OS._uttype_create_all_identifiers_for_tag(OS.k_uttag_class_filename_extension, ext, 0)
              if (!(utis).equal?(0))
                uti_count = OS._cfarray_get_count(utis)
                j = 0
                while j < uti_count
                  uti = OS._cfarray_get_value_at_index(utis, j)
                  if (!(uti).equal?(0))
                    apps = OS._lscopy_all_role_handlers_for_content_type(uti, OS.attr_k_lsroles_all)
                    if (!(apps).equal?(0))
                      app_count = OS._cfarray_get_count(apps)
                      k = 0
                      while k < app_count
                        app = OS._cfarray_get_value_at_index(apps, k)
                        if (!(app).equal?(0))
                          if ((OS._lsfind_application_for_info(OS.attr_k_lsunknown_creator, app, 0, fs_ref, nil)).equal?(OS.attr_no_err))
                            program = get_program(fs_ref)
                            if (!(program).nil? && (bundles.get(program.get_name)).nil?)
                              bundles.put(program.get_name, program)
                              fs_ref = Array.typed(::Java::Byte).new(80) { 0 }
                            end
                          end
                        end
                        k += 1
                      end
                      OS._cfrelease(apps)
                    end
                  end
                  j += 1
                end
                OS._cfrelease(utis)
              end
            end
            OS._cfrelease(ext)
          end
          i += 1
        end
        count = 0
        programs = Array.typed(Program).new(bundles.size) { nil }
        values = bundles.elements
        while (values.has_more_elements)
          programs[((count += 1) - 1)] = values.next_element
        end
        return programs
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
        rc = -1
        unescaped_chars = Array.typed(::Java::Char).new([Character.new(?%.ord)])
        if ((file_name.index_of(Character.new(?:.ord))).equal?(-1))
          file_name = PREFIX_FILE + file_name
        else
          lowercase_name = file_name.to_lower_case
          if (lowercase_name.starts_with(PREFIX_HTTP) || lowercase_name.starts_with(PREFIX_HTTPS))
            unescaped_chars = Array.typed(::Java::Char).new([Character.new(?%.ord), Character.new(?#.ord)])
          end
        end
        chars = CharArray.new(file_name.length)
        file_name.get_chars(0, chars.attr_length, chars, 0)
        str = OS._cfstring_create_with_characters(0, chars, chars.attr_length)
        if (!(str).equal?(0))
          unescaped_str = OS._cfstring_create_with_characters(0, unescaped_chars, unescaped_chars.attr_length)
          escaped_str = OS._cfurlcreate_string_by_adding_percent_escapes(OS.attr_k_cfallocator_default, str, unescaped_str, 0, OS.attr_k_cfstring_encoding_utf8)
          if (!(escaped_str).equal?(0))
            url = OS._cfurlcreate_with_string(OS.attr_k_cfallocator_default, escaped_str, 0)
            if (!(url).equal?(0))
              rc = OS._lsopen_cfurlref(url, nil)
              OS._cfrelease(url)
            end
            OS._cfrelease(escaped_str)
          end
          if (!(unescaped_str).equal?(0))
            OS._cfrelease(unescaped_str)
          end
          OS._cfrelease(str)
        end
        return (rc).equal?(OS.attr_no_err)
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
      if (OS::VERSION < 0x1040)
        return launch(file_name)
      end
      rc = -1
      fs_ref_ptr = OS._new_ptr(@fs_ref.attr_length)
      if (!(fs_ref_ptr).equal?(0))
        OS.memmove(fs_ref_ptr, @fs_ref, @fs_ref.attr_length)
        params = LSApplicationParameters.new
        params.attr_version = 0
        params.attr_flags = 0
        params.attr_application = fs_ref_ptr
        if ((file_name.length).equal?(0))
          rc = OS._lsopen_application(params, nil)
        else
          unescaped_chars = Array.typed(::Java::Char).new([Character.new(?%.ord)])
          if ((file_name.index_of(Character.new(?:.ord))).equal?(-1))
            file_name = PREFIX_FILE + file_name
          else
            lowercase_name = file_name.to_lower_case
            if (lowercase_name.starts_with(PREFIX_HTTP) || lowercase_name.starts_with(PREFIX_HTTPS))
              unescaped_chars = Array.typed(::Java::Char).new([Character.new(?%.ord), Character.new(?#.ord)])
            end
          end
          chars = CharArray.new(file_name.length)
          file_name.get_chars(0, chars.attr_length, chars, 0)
          str = OS._cfstring_create_with_characters(0, chars, chars.attr_length)
          if (!(str).equal?(0))
            unescaped_str = OS._cfstring_create_with_characters(0, unescaped_chars, unescaped_chars.attr_length)
            escaped_str = OS._cfurlcreate_string_by_adding_percent_escapes(OS.attr_k_cfallocator_default, str, unescaped_str, 0, OS.attr_k_cfstring_encoding_utf8)
            if (!(escaped_str).equal?(0))
              urls = OS._cfarray_create_mutable(OS.attr_k_cfallocator_default, 1, 0)
              if (!(urls).equal?(0))
                url = OS._cfurlcreate_with_string(OS.attr_k_cfallocator_default, escaped_str, 0)
                if (!(url).equal?(0))
                  OS._cfarray_append_value(urls, url)
                  rc = OS._lsopen_urls_with_role(urls, OS.attr_k_lsroles_all, 0, params, nil, 0)
                end
                OS._cfrelease(urls)
              end
              OS._cfrelease(escaped_str)
            end
            if (!(unescaped_str).equal?(0))
              OS._cfrelease(unescaped_str)
            end
            OS._cfrelease(str)
          end
        end
        OS._dispose_ptr(fs_ref_ptr)
      end
      return (rc).equal?(OS.attr_no_err)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def create_image_from_family(family, type, mask_type, width, height)
      data_handle = OS._new_handle(0)
      result = OS._get_icon_family_data(family, type, data_handle)
      if (!(result).equal?(OS.attr_no_err))
        OS._dispose_handle(data_handle)
        return nil
      end
      mask_handle = OS._new_handle(0)
      result = OS._get_icon_family_data(family, mask_type, mask_handle)
      if (!(result).equal?(OS.attr_no_err))
        OS._dispose_handle(mask_handle)
        OS._dispose_handle(data_handle)
        return nil
      end
      data_size = OS._get_handle_size(data_handle)
      OS._hlock(data_handle)
      OS._hlock(mask_handle)
      icon_ptr = Array.typed(::Java::Int).new(1) { 0 }
      mask_ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(icon_ptr, data_handle, 4)
      OS.memmove(mask_ptr, mask_handle, 4)
      data = Array.typed(::Java::Byte).new(data_size) { 0 }
      OS.memmove(data, icon_ptr[0], data_size)
      alpha_data = Array.typed(::Java::Byte).new(width * height) { 0 }
      OS.memmove(alpha_data, mask_ptr[0], alpha_data.attr_length)
      OS._hunlock(mask_handle)
      OS._hunlock(data_handle)
      OS._dispose_handle(mask_handle)
      OS._dispose_handle(data_handle)
      image = ImageData.new(width, height, 32, PaletteData.new(0xff0000, 0xff00, 0xff), 4, data)
      image.attr_alpha_data = alpha_data
      return image
    end
    
    typesig { [] }
    # Returns the receiver's image data.  This is the icon
    # that is associated with the receiver in the operating
    # system.
    # 
    # @return the image data for the program, may be null
    def get_image_data
      icon_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_icon_ref_from_file_info(@fs_ref, 0, nil, 0, 0, 0, icon_ref, nil)
      family = Array.typed(::Java::Int).new(1) { 0 }
      rc = OS._icon_ref_to_icon_family(icon_ref[0], OS.attr_k_selector_al_lavailable_data, family)
      OS._release_icon_ref(icon_ref[0])
      if (!(rc).equal?(OS.attr_no_err))
        return nil
      end
      # ImageData result = createImageFromFamily(family[0], OS.kLarge32BitData, OS.kLarge8BitMask, 32, 32);
      result = create_image_from_family(family[0], OS.attr_k_small32bit_data, OS.attr_k_small8bit_mask, 16, 16)
      OS._dispose_handle(family[0])
      if ((result).nil?)
        rgbs = Array.typed(RGB).new([RGB.new(0xff, 0xff, 0xff), RGB.new(0x5f, 0x5f, 0x5f), RGB.new(0x80, 0x80, 0x80), RGB.new(0xc0, 0xc0, 0xc0), RGB.new(0xdf, 0xdf, 0xbf), RGB.new(0xff, 0xdf, 0x9f), RGB.new(0x0, 0x0, 0x0), ])
        result = ImageData.new(16, 16, 4, PaletteData.new(rgbs))
        result.attr_transparent_pixel = 6 # use black for transparency
        p = Array.typed(String).new(["CCCCCCCCGGG", "CFAAAAACBGG", "CAAAAAACFBG", "CAAAAAACBBB", "CAAAAAAAAEB", "CAAAAAAAAEB", "CAAAAAAAAEB", "CAAAAAAAAEB", "CAAAAAAAAEB", "CAAAAAAAAEB", "CAAAAAAAAEB", "CAAAAAAAAEB", "CDDDDDDDDDB", "CBBBBBBBBBB", ])
        y = 0
        while y < p.attr_length
          x = 0
          while x < 11
            result.set_pixel(x + 3, y + 1, p[y].char_at(x) - Character.new(?A.ord))
            x += 1
          end
          y += 1
        end
      end
      return result
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
    
    class_module.module_eval {
      typesig { [Array.typed(::Java::Byte)] }
      def get_program(fs_ref)
        name = ""
        name_ptr = Array.typed(::Java::Int).new(1) { 0 }
        OS._lscopy_display_name_for_ref(fs_ref, name_ptr)
        if (!(name_ptr[0]).equal?(0))
          length_ = OS._cfstring_get_length(name_ptr[0])
          if (!(length_).equal?(0))
            buffer = CharArray.new(length_)
            range = CFRange.new
            range.attr_length = length_
            OS._cfstring_get_characters(name_ptr[0], range, buffer)
            name = (String.new(buffer)).to_s
          end
          OS._cfrelease(name_ptr[0])
        end
        program = Program.new
        program.attr_fs_ref = fs_ref
        program.attr_name = name
        return program
      end
    }
    
    typesig { [Object] }
    # Compares the argument to the receiver, and returns true
    # if they represent the <em>same</em> object using a class
    # specific comparison.
    # 
    # @param other the object to compare with this object
    # @return <code>true</code> if the object is the same as this object and <code>false</code> otherwise
    # 
    # @see #hashCode()
    def equals(other)
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
