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
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
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
    
    attr_accessor :command
    alias_method :attr_command, :command
    undef_method :command
    alias_method :attr_command=, :command=
    undef_method :command=
    
    attr_accessor :icon_name
    alias_method :attr_icon_name, :icon_name
    undef_method :icon_name
    alias_method :attr_icon_name=, :icon_name=
    undef_method :icon_name=
    
    attr_accessor :extension
    alias_method :attr_extension, :extension
    undef_method :extension
    alias_method :attr_extension=, :extension=
    undef_method :extension=
    
    class_module.module_eval {
      const_set_lazy(:ARGUMENTS) { Array.typed(String).new(["%1", "%l", "%L"]) }
      const_attr_reader  :ARGUMENTS
    }
    
    typesig { [] }
    # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
    # 
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @name = nil
      @command = nil
      @icon_name = nil
      @extension = nil
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, TCHAR, ::Java::Boolean] }
      def assoc_query_string(assoc_str, key, expand)
        psz_out = TCHAR.new(0, 1024)
        pcch_out = Array.typed(::Java::Int).new(1) { 0 }
        pcch_out[0] = psz_out.length
        flags = OS::ASSOCF_NOTRUNCATE | OS::ASSOCF_INIT_IGNOREUNKNOWN
        result = OS._assoc_query_string(flags, assoc_str, key, nil, psz_out, pcch_out)
        if ((result).equal?(OS::E_POINTER))
          psz_out = TCHAR.new(0, pcch_out[0])
          result = OS._assoc_query_string(flags, assoc_str, key, nil, psz_out, pcch_out)
        end
        if ((result).equal?(0))
          if (!OS::IsWinCE && expand)
            length_ = OS._expand_environment_strings(psz_out, nil, 0)
            if (!(length_).equal?(0))
              lp_dst = TCHAR.new(0, length_)
              OS._expand_environment_strings(psz_out, lp_dst, length_)
              return lp_dst.to_s(0, Math.max(0, length_ - 1))
            else
              return ""
            end
          else
            return psz_out.to_s(0, Math.max(0, pcch_out[0] - 1))
          end
        end
        return nil
      end
      
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
        end # $NON-NLS-1$
        # Use the character encoding for the default locale
        key = TCHAR.new(0, extension, true)
        program = nil
        if (OS::IsWinCE)
          # long
          # long
          phk_result = Array.typed(::Java::Int).new(1) { 0 }
          if (!(OS._reg_open_key_ex(OS::HKEY_CLASSES_ROOT, key, 0, OS::KEY_READ, phk_result)).equal?(0))
            return nil
          end
          lpcb_data = Array.typed(::Java::Int).new(1) { 0 }
          result = OS._reg_query_value_ex(phk_result[0], nil, 0, nil, nil, lpcb_data)
          if ((result).equal?(0))
            lp_data = TCHAR.new(0, lpcb_data[0] / TCHAR.attr_sizeof)
            result = OS._reg_query_value_ex(phk_result[0], nil, 0, nil, lp_data, lpcb_data)
            if ((result).equal?(0))
              program = get_program(lp_data.to_s(0, lp_data.strlen), extension)
            end
          end
          OS._reg_close_key(phk_result[0])
        else
          command = assoc_query_string(OS::ASSOCSTR_COMMAND, key, true)
          if (!(command).nil?)
            name = nil
            if ((name).nil?)
              name = RJava.cast_to_string(assoc_query_string(OS::ASSOCSTR_FRIENDLYDOCNAME, key, false))
            end
            if ((name).nil?)
              name = RJava.cast_to_string(assoc_query_string(OS::ASSOCSTR_FRIENDLYAPPNAME, key, false))
            end
            if ((name).nil?)
              name = ""
            end
            icon_name = assoc_query_string(OS::ASSOCSTR_DEFAULTICON, key, true)
            if ((icon_name).nil?)
              icon_name = ""
            end
            program = Program.new
            program.attr_name = name
            program.attr_command = command
            program.attr_icon_name = icon_name
            program.attr_extension = extension
          end
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
        extensions = Array.typed(String).new(1024) { nil }
        # Use the character encoding for the default locale
        lp_name = TCHAR.new(0, 1024)
        lpc_name = Array.typed(::Java::Int).new([lp_name.length])
        ft = FILETIME.new
        dw_index = 0
        count = 0
        while (!(OS._reg_enum_key_ex(OS::HKEY_CLASSES_ROOT, dw_index, lp_name, lpc_name, nil, nil, nil, ft)).equal?(OS::ERROR_NO_MORE_ITEMS))
          extension = lp_name.to_s(0, lpc_name[0])
          lpc_name[0] = lp_name.length
          if (extension.length > 0 && (extension.char_at(0)).equal?(Character.new(?..ord)))
            if ((count).equal?(extensions.attr_length))
              new_extensions = Array.typed(String).new(extensions.attr_length + 1024) { nil }
              System.arraycopy(extensions, 0, new_extensions, 0, extensions.attr_length)
              extensions = new_extensions
            end
            extensions[((count += 1) - 1)] = extension
          end
          dw_index += 1
        end
        if (!(count).equal?(extensions.attr_length))
          new_extension = Array.typed(String).new(count) { nil }
          System.arraycopy(extensions, 0, new_extension, 0, count)
          extensions = new_extension
        end
        return extensions
      end
      
      typesig { [String, ::Java::Boolean] }
      def get_key_value(string, expand)
        # Use the character encoding for the default locale
        key = TCHAR.new(0, string, true)
        # long
        # long
        phk_result = Array.typed(::Java::Int).new(1) { 0 }
        if (!(OS._reg_open_key_ex(OS::HKEY_CLASSES_ROOT, key, 0, OS::KEY_READ, phk_result)).equal?(0))
          return nil
        end
        result = nil
        lpcb_data = Array.typed(::Java::Int).new(1) { 0 }
        if ((OS._reg_query_value_ex(phk_result[0], nil, 0, nil, nil, lpcb_data)).equal?(0))
          result = ""
          length_ = lpcb_data[0] / TCHAR.attr_sizeof
          if (!(length_).equal?(0))
            # Use the character encoding for the default locale
            lp_data = TCHAR.new(0, length_)
            if ((OS._reg_query_value_ex(phk_result[0], nil, 0, nil, lp_data, lpcb_data)).equal?(0))
              if (!OS::IsWinCE && expand)
                length_ = OS._expand_environment_strings(lp_data, nil, 0)
                if (!(length_).equal?(0))
                  lp_dst = TCHAR.new(0, length_)
                  OS._expand_environment_strings(lp_data, lp_dst, length_)
                  result = RJava.cast_to_string(lp_dst.to_s(0, Math.max(0, length_ - 1)))
                end
              else
                length_ = Math.max(0, lp_data.length - 1)
                result = RJava.cast_to_string(lp_data.to_s(0, length_))
              end
            end
          end
        end
        if (!(phk_result[0]).equal?(0))
          OS._reg_close_key(phk_result[0])
        end
        return result
      end
      
      typesig { [String, String] }
      def get_program(key, extension)
        # Name
        name = get_key_value(key, false)
        if ((name).nil? || (name.length).equal?(0))
          name = key
        end
        # Command
        default_command = "\\shell" # $NON-NLS-1$
        default_command_ = get_key_value(key + default_command, true)
        if ((default_command_).nil? || (default_command_.length).equal?(0))
          default_command_ = "open"
        end # $NON-NLS-1$
        command = "\\shell\\" + default_command_ + "\\command" # $NON-NLS-1$
        command_ = get_key_value(key + command, true)
        if ((command_).nil? || (command_.length).equal?(0))
          return nil
        end
        # Icon
        default_icon = "\\DefaultIcon" # $NON-NLS-1$
        icon_name = get_key_value(key + default_icon, true)
        if ((icon_name).nil?)
          icon_name = ""
        end # $NON-NLS-1$
        # Program
        program = Program.new
        program.attr_name = name
        program.attr_command = command_
        program.attr_icon_name = icon_name
        program.attr_extension = extension
        return program
      end
      
      typesig { [] }
      # Answers all available programs in the operating system.  Note
      # that a <code>Display</code> must already exist to guarantee
      # that this method returns an appropriate result.
      # 
      # @return an array of programs
      def get_programs
        programs = Array.typed(Program).new(1024) { nil }
        # Use the character encoding for the default locale
        lp_name = TCHAR.new(0, 1024)
        lpc_name = Array.typed(::Java::Int).new([lp_name.length])
        ft = FILETIME.new
        dw_index = 0
        count = 0
        while (!(OS._reg_enum_key_ex(OS::HKEY_CLASSES_ROOT, dw_index, lp_name, lpc_name, nil, nil, nil, ft)).equal?(OS::ERROR_NO_MORE_ITEMS))
          path = lp_name.to_s(0, lpc_name[0])
          lpc_name[0] = lp_name.length
          program = get_program(path, nil)
          if (!(program).nil?)
            if ((count).equal?(programs.attr_length))
              new_programs = Array.typed(Program).new(programs.attr_length + 1024) { nil }
              System.arraycopy(programs, 0, new_programs, 0, programs.attr_length)
              programs = new_programs
            end
            programs[((count += 1) - 1)] = program
          end
          dw_index += 1
        end
        if (!(count).equal?(programs.attr_length))
          new_programs = Array.typed(Program).new(count) { nil }
          System.arraycopy(programs, 0, new_programs, 0, count)
          programs = new_programs
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
        # Use the character encoding for the default locale
        # long
        h_heap = OS._get_process_heap
        buffer = TCHAR.new(0, file_name, true)
        byte_count = buffer.length * TCHAR.attr_sizeof
        # long
        lp_file = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(lp_file, buffer, byte_count)
        info = SHELLEXECUTEINFO.new
        info.attr_cb_size = SHELLEXECUTEINFO.attr_sizeof
        info.attr_lp_file = lp_file
        info.attr_n_show = OS::SW_SHOW
        result = OS._shell_execute_ex(info)
        if (!(lp_file).equal?(0))
          OS._heap_free(h_heap, 0, lp_file)
        end
        return result
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
      index = 0
      append = true
      prefix = @command
      suffix = "" # $NON-NLS-1$
      while (index < ARGUMENTS.attr_length)
        i = @command.index_of(ARGUMENTS[index])
        if (!(i).equal?(-1))
          append = false
          prefix = RJava.cast_to_string(@command.substring(0, i))
          suffix = RJava.cast_to_string(@command.substring(i + ARGUMENTS[index].length, @command.length))
          break
        end
        index += 1
      end
      if (append)
        file_name = " \"" + file_name + "\""
      end
      command_line = prefix + file_name + suffix
      # long
      h_heap = OS._get_process_heap
      # Use the character encoding for the default locale
      buffer = TCHAR.new(0, command_line, true)
      byte_count = buffer.length * TCHAR.attr_sizeof
      # long
      lp_command_line = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
      OS._move_memory(lp_command_line, buffer, byte_count)
      lp_startup_info = STARTUPINFO.new
      lp_startup_info.attr_cb = STARTUPINFO.attr_sizeof
      lp_process_information = PROCESS_INFORMATION.new
      success = OS._create_process(0, lp_command_line, 0, 0, false, 0, 0, 0, lp_startup_info, lp_process_information)
      if (!(lp_command_line).equal?(0))
        OS._heap_free(h_heap, 0, lp_command_line)
      end
      if (!(lp_process_information.attr_h_process).equal?(0))
        OS._close_handle(lp_process_information.attr_h_process)
      end
      if (!(lp_process_information.attr_h_thread).equal?(0))
        OS._close_handle(lp_process_information.attr_h_thread)
      end
      return success
    end
    
    typesig { [] }
    # Returns the receiver's image data.  This is the icon
    # that is associated with the receiver in the operating
    # system.
    # 
    # @return the image data for the program, may be null
    def get_image_data
      if (!(@extension).nil?)
        shfi = OS::IsUnicode ? SHFILEINFOW.new : SHFILEINFOA.new
        flags = OS::SHGFI_ICON | OS::SHGFI_SMALLICON | OS::SHGFI_USEFILEATTRIBUTES
        psz_path = TCHAR.new(0, @extension, true)
        OS._shget_file_info(psz_path, OS::FILE_ATTRIBUTE_NORMAL, shfi, SHFILEINFO.attr_sizeof, flags)
        if (!(shfi.attr_h_icon).equal?(0))
          image = Image.win32_new(nil, SWT::ICON, shfi.attr_h_icon)
          image_data = image.get_image_data
          image.dispose
          return image_data
        end
      end
      n_icon_index = 0
      file_name = @icon_name
      index = @icon_name.index_of(Character.new(?,.ord))
      if (!(index).equal?(-1))
        file_name = RJava.cast_to_string(@icon_name.substring(0, index))
        icon_index = @icon_name.substring(index + 1, @icon_name.length).trim
        begin
          n_icon_index = JavaInteger.parse_int(icon_index)
        rescue NumberFormatException => e
        end
      end
      length_ = file_name.length
      if (!(length_).equal?(0) && (file_name.char_at(0)).equal?(Character.new(?\".ord)))
        if ((file_name.char_at(length_ - 1)).equal?(Character.new(?\".ord)))
          file_name = RJava.cast_to_string(file_name.substring(1, length_ - 1))
        end
      end
      # Use the character encoding for the default locale
      lpsz_file = TCHAR.new(0, file_name, true)
      # long
      # long
      phicon_small = Array.typed(::Java::Int).new(1) { 0 }
      phicon_large = nil
      OS._extract_icon_ex(lpsz_file, n_icon_index, phicon_large, phicon_small, 1)
      if ((phicon_small[0]).equal?(0))
        return nil
      end
      image = Image.win32_new(nil, SWT::ICON, phicon_small[0])
      image_data = image.get_image_data
      image.dispose
      return image_data
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
        return (@name == program.attr_name) && (@command == program.attr_command) && (@icon_name == program.attr_icon_name)
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
      return @name.hash_code ^ @command.hash_code ^ @icon_name.hash_code
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the program
    def to_s
      return "Program {" + @name + "}" # $NON-NLS-1$ //$NON-NLS-2$
    end
    
    private
    alias_method :initialize__program, :initialize
  end
  
end
