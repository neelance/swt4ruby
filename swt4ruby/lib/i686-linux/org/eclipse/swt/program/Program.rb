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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gnome
      include ::Org::Eclipse::Swt::Internal::Cde
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Widgets
      include ::Java::Io
      include ::Java::Util
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
    
    attr_accessor :icon_path
    alias_method :attr_icon_path, :icon_path
    undef_method :icon_path
    alias_method :attr_icon_path=, :icon_path=
    undef_method :icon_path=
    
    attr_accessor :display
    alias_method :attr_display, :display
    undef_method :display
    alias_method :attr_display=, :display=
    undef_method :display=
    
    # Gnome specific
    # true if command expects a URI
    # false if expects a path
    attr_accessor :gnome_expect_uri
    alias_method :attr_gnome_expect_uri, :gnome_expect_uri
    undef_method :gnome_expect_uri
    alias_method :attr_gnome_expect_uri=, :gnome_expect_uri=
    undef_method :gnome_expect_uri=
    
    class_module.module_eval {
      # long
      
      def cde_shell
        defined?(@@cde_shell) ? @@cde_shell : @@cde_shell= 0
      end
      alias_method :attr_cde_shell, :cde_shell
      
      def cde_shell=(value)
        @@cde_shell = value
      end
      alias_method :attr_cde_shell=, :cde_shell=
      
      const_set_lazy(:CDE_ICON_EXT) { Array.typed(String).new([".m.pm", ".l.pm", ".s.pm", ".t.pm"]) }
      const_attr_reader  :CDE_ICON_EXT
      
      # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
      const_set_lazy(:CDE_MASK_EXT) { Array.typed(String).new([".m_m.bm", ".l_m.bm", ".s_m.bm", ".t_m.bm"]) }
      const_attr_reader  :CDE_MASK_EXT
      
      # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
      const_set_lazy(:DESKTOP_DATA) { "Program_DESKTOP" }
      const_attr_reader  :DESKTOP_DATA
      
      # $NON-NLS-1$
      const_set_lazy(:ICON_THEME_DATA) { "Program_GNOME_ICON_THEME" }
      const_attr_reader  :ICON_THEME_DATA
      
      # $NON-NLS-1$
      const_set_lazy(:PREFIX_HTTP) { "http://" }
      const_attr_reader  :PREFIX_HTTP
      
      # $NON-NLS-1$
      const_set_lazy(:PREFIX_HTTPS) { "https://" }
      const_attr_reader  :PREFIX_HTTPS
      
      # $NON-NLS-1$
      const_set_lazy(:DESKTOP_UNKNOWN) { 0 }
      const_attr_reader  :DESKTOP_UNKNOWN
      
      const_set_lazy(:DESKTOP_GNOME) { 1 }
      const_attr_reader  :DESKTOP_GNOME
      
      const_set_lazy(:DESKTOP_GNOME_24) { 2 }
      const_attr_reader  :DESKTOP_GNOME_24
      
      const_set_lazy(:DESKTOP_CDE) { 3 }
      const_attr_reader  :DESKTOP_CDE
      
      const_set_lazy(:PREFERRED_ICON_SIZE) { 16 }
      const_attr_reader  :PREFERRED_ICON_SIZE
    }
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @name = nil
      @command = nil
      @icon_path = nil
      @display = nil
      @gnome_expect_uri = false
    end
    
    class_module.module_eval {
      typesig { [Display] }
      # Determine the desktop for the given display.
      def get_desktop(display)
        if ((display).nil?)
          return DESKTOP_UNKNOWN
        end
        desktop_value = display.get_data(DESKTOP_DATA)
        if (!(desktop_value).nil?)
          return desktop_value.int_value
        end
        desktop = DESKTOP_UNKNOWN
        # Get the list of properties on the root window.
        # long
        x_display = OS._gdk_display
        # long
        root_window = OS._xdefault_root_window(x_display)
        num_prop = Array.typed(::Java::Int).new(1) { 0 }
        # long
        prop_list = OS._xlist_properties(x_display, root_window, num_prop)
        # long
        # long
        property = Array.typed(::Java::Int).new(num_prop[0]) { 0 }
        if (!(prop_list).equal?(0))
          OS.memmove(property, prop_list, (property.attr_length * OS::PTR_SIZEOF))
          OS._xfree(prop_list)
        end
        # Feature in Linux Desktop. There is currently no official way to
        # determine whether the Gnome window manager or gnome-vfs is
        # available. Earlier versions including Red Hat 9 and Suse 9 provide
        # a documented Gnome specific property on the root window
        # WIN_SUPPORTING_WM_CHECK. This property is no longer supported in newer
        # versions such as Fedora Core 2.
        # The workaround is to simply check that the window manager is a
        # compliant one (property _NET_SUPPORTING_WM_CHECK) and to attempt to load
        # our native library that depends on gnome-vfs.
        if ((desktop).equal?(DESKTOP_UNKNOWN))
          gnome_name = Converter.wcs_to_mbcs(nil, "_NET_SUPPORTING_WM_CHECK", true)
          # long
          gnome = OS._xintern_atom(x_display, gnome_name, true)
          if (!(gnome).equal?(OS::None) && gnome_init)
            desktop = DESKTOP_GNOME
            # long
            icon_theme = GNOME.gnome_icon_theme_new
            display.set_data(ICON_THEME_DATA, SwtLONG.new(icon_theme))
            display.add_listener(SWT::Dispose, Class.new(Listener.class == Class ? Listener : Object) do
              extend LocalClass
              include_class_members Program
              include Listener if Listener.class == Module
              
              typesig { [Event] }
              define_method :handle_event do |event|
                gnome_icon_theme = display.get_data(ICON_THEME_DATA)
                if ((gnome_icon_theme).nil?)
                  return
                end
                display.set_data(ICON_THEME_DATA, nil)
                # Note.  gnome_icon_theme_new uses g_object_new to allocate the
                # data it returns. Use g_object_unref to free the pointer it returns.
                if (!(gnome_icon_theme.attr_value).equal?(0))
                  GNOME.g_object_unref(gnome_icon_theme.attr_value)
                end
              end
              
              typesig { [] }
              define_method :initialize do
                super()
              end
              
              private
              alias_method :initialize_anonymous, :initialize
            end.new_local(self))
            # Check for libgnomevfs-2 version 2.4
            buffer = Converter.wcs_to_mbcs(nil, "libgnomevfs-2.so.0", true)
            # long
            libgnomevfs = OS.dlopen(buffer, OS::RTLD_LAZY)
            if (!(libgnomevfs).equal?(0))
              buffer = Converter.wcs_to_mbcs(nil, "gnome_vfs_url_show", true)
              # long
              gnome_vfs_url_show = OS.dlsym(libgnomevfs, buffer)
              if (!(gnome_vfs_url_show).equal?(0))
                desktop = DESKTOP_GNOME_24
              end
              OS.dlclose(libgnomevfs)
            end
          end
        end
        # On CDE, the atom below may exist without DTWM running. If the atom
        # below is defined, the CDE database exists and the available
        # applications can be queried.
        if ((desktop).equal?(DESKTOP_UNKNOWN))
          cde_name = Converter.wcs_to_mbcs(nil, "_DT_SM_PREFERENCES", true)
          # long
          cde = OS._xintern_atom(x_display, cde_name, true)
          index = 0
          while (desktop).equal?(DESKTOP_UNKNOWN) && index < property.attr_length
            if ((property[index]).equal?(OS::None))
              ((index += 1) - 1)
              next
            end
            # do not match atoms that do not exist
            if ((property[index]).equal?(cde) && cde_init(display))
              desktop = DESKTOP_CDE
            end
            ((index += 1) - 1)
          end
        end
        display.set_data(DESKTOP_DATA, desktop)
        return desktop
      end
    }
    
    typesig { [String] }
    def cde_execute(file_name)
      # Use the character encoding for the default locale
      action = Converter.wcs_to_mbcs(nil, @command, true)
      file_arg = Converter.wcs_to_mbcs(nil, file_name, true)
      # long
      ptr = OS.g_malloc(file_arg.attr_length)
      OS.memmove(ptr, file_arg, file_arg.attr_length)
      args = DtActionArg.new
      args.attr_arg_class = CDE::DtACTION_FILE
      args.attr_name = ptr
      action_id = CDE._dt_action_invoke(self.attr_cde_shell, action, args, 1, nil, nil, nil, 1, 0, 0)
      OS.g_free(ptr)
      return !(action_id).equal?(0)
    end
    
    class_module.module_eval {
      typesig { [String] }
      def cde_get_action(data_type)
        action = nil
        actions = cde_get_attribute(data_type, CDE::DtDTS_DA_ACTION_LIST)
        if (!(actions).nil?)
          index = actions.index_of("Open")
          if (!(index).equal?(-1))
            action = (actions.substring(index, index + 4)).to_s
          else
            index = actions.index_of(",")
            action = (!(index).equal?(-1) ? actions.substring(0, index) : actions).to_s
          end
        end
        return action
      end
      
      typesig { [String, String] }
      def cde_get_attribute(data_type, attr_name)
        # Use the character encoding for the default locale
        data_type_buf = Converter.wcs_to_mbcs(nil, data_type, true)
        attr_name_buf = Converter.wcs_to_mbcs(nil, attr_name, true)
        opt_name_buf = nil
        # long
        attr_value = CDE._dt_dts_data_type_to_attribute_value(data_type_buf, attr_name_buf, opt_name_buf)
        if ((attr_value).equal?(0))
          return nil
        end
        length = OS.strlen(attr_value)
        attr_value_buf = Array.typed(::Java::Byte).new(length) { 0 }
        OS.memmove(attr_value_buf, attr_value, length)
        CDE._dt_dts_free_attribute_value(attr_value)
        # Use the character encoding for the default locale
        return String.new(Converter.mbcs_to_wcs(nil, attr_value_buf))
      end
      
      typesig { [] }
      def cde_get_data_type_info
        data_type_info = Hashtable.new
        index = 0
        # long
        data_type_list = CDE._dt_dts_data_type_names
        if (!(data_type_list).equal?(0))
          # For each data type name in the list
          index = 0
          # long
          # long
          data_type = Array.typed(::Java::Int).new(1) { 0 }
          OS.memmove(data_type, data_type_list + (((index += 1) - 1) * 4), 4)
          while (!(data_type[0]).equal?(0))
            length = OS.strlen(data_type[0])
            data_type_buf = Array.typed(::Java::Byte).new(length) { 0 }
            OS.memmove(data_type_buf, data_type[0], length)
            # Use the character encoding for the default locale
            data_type_name = String.new(Converter.mbcs_to_wcs(nil, data_type_buf))
            # The data type is valid if it is not an action, and it has an extension and an action.
            extension = cde_get_extension(data_type_name)
            if (!CDE._dt_dts_data_type_is_action(data_type_buf) && !(extension).nil? && !(cde_get_action(data_type_name)).nil?)
              exts = Vector.new
              exts.add_element(extension)
              data_type_info.put(data_type_name, exts)
            end
            OS.memmove(data_type, data_type_list + (((index += 1) - 1) * 4), 4)
          end
          CDE._dt_dts_free_data_type_names(data_type_list)
        end
        return data_type_info
      end
      
      typesig { [String] }
      def cde_get_extension(data_type)
        file_ext = cde_get_attribute(data_type, CDE::DtDTS_DA_NAME_TEMPLATE)
        if ((file_ext).nil? || (file_ext.index_of("%s.")).equal?(-1))
          return nil
        end
        dot = file_ext.index_of(".")
        return file_ext.substring(dot)
      end
    }
    
    typesig { [] }
    # CDE - Get Image Data
    # 
    # This method returns the image data of the icon associated with
    # the data type. Since CDE supports multiple sizes of icons, several
    # attempts are made to locate an icon of the desired size and format.
    # CDE supports the sizes: tiny, small, medium and large. The best
    # search order is medium, large, small and then tiny. Althoug CDE supports
    # colour and monochrome bitmaps, only colour icons are tried. (The order is
    # defined by the  cdeIconExt and cdeMaskExt arrays above.)
    def cde_get_image_data
      # TODO
      return nil
    end
    
    class_module.module_eval {
      typesig { [String] }
      def cde_get_mime_type(extension)
        mime_type = nil
        mime_info = cde_get_data_type_info
        if ((mime_info).nil?)
          return nil
        end
        keys_ = mime_info.keys
        while ((mime_type).nil? && keys_.has_more_elements)
          type = keys_.next_element
          mime_exts = mime_info.get(type)
          index = 0
          while index < mime_exts.size
            if ((extension == mime_exts.element_at(index)))
              mime_type = type
              break
            end
            ((index += 1) - 1)
          end
        end
        return mime_type
      end
      
      typesig { [Display, String] }
      def cde_get_program(display, mime_type)
        program = Program.new
        program.attr_display = display
        program.attr_name = mime_type
        program.attr_command = cde_get_action(mime_type)
        program.attr_icon_path = cde_get_attribute(program.attr_name, CDE::DtDTS_DA_ICON)
        return program
      end
      
      typesig { [Display] }
      def cde_init(display)
        begin
          Library.load_library("swt-cde")
        rescue Exception => e
          return false
        end
        # Use the character encoding for the default locale
        CDE._xt_toolkit_initialize
        # long
        xt_context = CDE._xt_create_application_context
        # long
        x_display = OS._gdk_display
        app_name = Converter.wcs_to_mbcs(nil, "CDE", true)
        app_class = Converter.wcs_to_mbcs(nil, "CDE", true)
        # long
        # long
        argc = Array.typed(::Java::Int).new([0])
        CDE._xt_display_initialize(xt_context, x_display, app_name, app_class, 0, 0, argc, 0)
        # long
        widget_class = CDE.top_level_shell_widget_class
        self.attr_cde_shell = CDE._xt_app_create_shell(app_name, app_class, widget_class, x_display, nil, 0)
        CDE._xt_set_mapped_when_managed(self.attr_cde_shell, false)
        CDE._xt_resize_widget(self.attr_cde_shell, 10, 10, 0)
        CDE._xt_realize_widget(self.attr_cde_shell)
        init_ok = CDE._dt_app_initialize(xt_context, x_display, self.attr_cde_shell, app_name, app_name)
        if (init_ok)
          CDE._dt_db_load
        end
        return init_ok
      end
      
      typesig { [String] }
      def parse_command(cmd)
        args = Vector.new
        s_index = 0
        e_index = 0
        while (s_index < cmd.length)
          # Trim initial white space of argument.
          while (s_index < cmd.length && Compatibility.is_whitespace(cmd.char_at(s_index)))
            ((s_index += 1) - 1)
          end
          if (s_index < cmd.length)
            # If the command is a quoted string
            if ((cmd.char_at(s_index)).equal?(Character.new(?".ord)) || (cmd.char_at(s_index)).equal?(Character.new(?\'.ord)))
              # Find the terminating quote (or end of line).
              # This code currently does not handle escaped characters (e.g., " a\"b").
              e_index = s_index + 1
              while (e_index < cmd.length && !(cmd.char_at(e_index)).equal?(cmd.char_at(s_index)))
                ((e_index += 1) - 1)
              end
              if (e_index >= cmd.length)
                # The terminating quote was not found
                # Add the argument as is with only one initial quote.
                args.add_element(cmd.substring(s_index, e_index))
              else
                # Add the argument, trimming off the quotes.
                args.add_element(cmd.substring(s_index + 1, e_index))
              end
              s_index = e_index + 1
            else
              # Use white space for the delimiters.
              e_index = s_index
              while (e_index < cmd.length && !Compatibility.is_whitespace(cmd.char_at(e_index)))
                ((e_index += 1) - 1)
              end
              args.add_element(cmd.substring(s_index, e_index))
              s_index = e_index + 1
            end
          end
        end
        strings = Array.typed(String).new(args.size) { nil }
        index = 0
        while index < args.size
          strings[index] = args.element_at(index)
          ((index += 1) - 1)
        end
        return strings
      end
    }
    
    typesig { [String] }
    # GNOME 2.4 - Execute the program for the given file.
    def gnome_24_execute(file_name)
      mime_type_buffer = Converter.wcs_to_mbcs(nil, @name, true)
      # long
      ptr = GNOME.gnome_vfs_mime_get_default_application(mime_type_buffer)
      file_name_buffer = Converter.wcs_to_mbcs(nil, file_name, true)
      # long
      uri = GNOME.gnome_vfs_make_uri_from_input_with_dirs(file_name_buffer, GNOME::GNOME_VFS_MAKE_URI_DIR_CURRENT)
      # long
      list = GNOME.g_list_append(0, uri)
      result = GNOME.gnome_vfs_mime_application_launch(ptr, list)
      GNOME.gnome_vfs_mime_application_free(ptr)
      GNOME.g_free(uri)
      GNOME.g_list_free(list)
      return (result).equal?(GNOME::GNOME_VFS_OK)
    end
    
    class_module.module_eval {
      typesig { [String] }
      # GNOME 2.4 - Launch the default program for the given file.
      def gnome_24_launch(file_name)
        file_name_buffer = Converter.wcs_to_mbcs(nil, file_name, true)
        # long
        uri = GNOME.gnome_vfs_make_uri_from_input_with_dirs(file_name_buffer, GNOME::GNOME_VFS_MAKE_URI_DIR_CURRENT)
        result = GNOME.gnome_vfs_url_show(uri)
        GNOME.g_free(uri)
        return ((result).equal?(GNOME::GNOME_VFS_OK))
      end
    }
    
    typesig { [String] }
    # GNOME 2.2 - Execute the program for the given file.
    def gnome_execute(file_name)
      if (@gnome_expect_uri)
        # Convert the given path into a URL
        file_name_buffer = Converter.wcs_to_mbcs(nil, file_name, true)
        # long
        uri = GNOME.gnome_vfs_make_uri_from_input(file_name_buffer)
        if (!(uri).equal?(0))
          length_ = OS.strlen(uri)
          if (length_ > 0)
            buffer = Array.typed(::Java::Byte).new(length_) { 0 }
            OS.memmove(buffer, uri, length_)
            file_name = (String.new(Converter.mbcs_to_wcs(nil, buffer))).to_s
          end
          GNOME.g_free(uri)
        end
      end
      # Parse the command into its individual arguments.
      args = parse_command(@command)
      file_arg = -1
      index = 0
      index = 0
      while index < args.attr_length
        j = args[index].index_of("%f")
        if (!(j).equal?(-1))
          value = args[index]
          file_arg = index
          args[index] = (value.substring(0, j)).to_s + file_name + (value.substring(j + 2)).to_s
        end
        ((index += 1) - 1)
      end
      # If a file name was given but the command did not have "%f"
      if ((file_name.length > 0) && (file_arg < 0))
        new_args = Array.typed(String).new(args.attr_length + 1) { nil }
        index = 0
        while index < args.attr_length
          new_args[index] = args[index]
          ((index += 1) - 1)
        end
        new_args[args.attr_length] = file_name
        args = new_args
      end
      # Execute the command.
      begin
        Compatibility.exec(args)
      rescue IOException => e
        return false
      end
      return true
    end
    
    typesig { [] }
    # GNOME - Get Image Data
    def gnome_get_image_data
      if ((@icon_path).nil?)
        return nil
      end
      begin
        return ImageData.new(@icon_path)
      rescue Exception => e
      end
      return nil
    end
    
    class_module.module_eval {
      typesig { [] }
      # GNOME - Get mime types
      # 
      # Obtain the registered mime type information and
      # return it in a map. The key of each entry
      # in the map is the mime type name. The value is
      # a vector of the associated file extensions.
      def gnome_get_mime_info
        mime_info = Hashtable.new
        # long
        # long
        mime_data = Array.typed(::Java::Int).new(1) { 0 }
        # long
        # long
        extension_data = Array.typed(::Java::Int).new(1) { 0 }
        # long
        mime_list = GNOME.gnome_vfs_get_registered_mime_types
        # long
        mime_element = mime_list
        while (!(mime_element).equal?(0))
          OS.memmove(mime_data, mime_element, OS::PTR_SIZEOF)
          # long
          mime_ptr = mime_data[0]
          mime_length = OS.strlen(mime_ptr)
          mime_type_buffer = Array.typed(::Java::Byte).new(mime_length) { 0 }
          OS.memmove(mime_type_buffer, mime_ptr, mime_length)
          mime_type = String.new(Converter.mbcs_to_wcs(nil, mime_type_buffer))
          # long
          extension_list = GNOME.gnome_vfs_mime_get_extensions_list(mime_ptr)
          if (!(extension_list).equal?(0))
            extensions = Vector.new
            # long
            extension_element = extension_list
            while (!(extension_element).equal?(0))
              OS.memmove(extension_data, extension_element, OS::PTR_SIZEOF)
              # long
              extension_ptr = extension_data[0]
              extension_length = OS.strlen(extension_ptr)
              extension_buffer = Array.typed(::Java::Byte).new(extension_length) { 0 }
              OS.memmove(extension_buffer, extension_ptr, extension_length)
              extension = String.new(Converter.mbcs_to_wcs(nil, extension_buffer))
              extension = (Character.new(?..ord)).to_s + extension
              extensions.add_element(extension)
              extension_element = GNOME.g_list_next(extension_element)
            end
            GNOME.gnome_vfs_mime_extensions_list_free(extension_list)
            if (extensions.size > 0)
              mime_info.put(mime_type, extensions)
            end
          end
          mime_element = GNOME.g_list_next(mime_element)
        end
        if (!(mime_list).equal?(0))
          GNOME.gnome_vfs_mime_registered_mime_type_list_free(mime_list)
        end
        return mime_info
      end
      
      typesig { [String] }
      def gnome_get_mime_type(extension)
        mime_type = nil
        file_name = "swt" + extension
        extension_buffer = Converter.wcs_to_mbcs(nil, file_name, true)
        # long
        type_name = GNOME.gnome_vfs_mime_type_from_name(extension_buffer)
        if (!(type_name).equal?(0))
          length_ = OS.strlen(type_name)
          if (length_ > 0)
            buffer = Array.typed(::Java::Byte).new(length_) { 0 }
            OS.memmove(buffer, type_name, length_)
            mime_type = (String.new(Converter.mbcs_to_wcs(nil, buffer))).to_s
          end
        end
        return mime_type
      end
      
      typesig { [Display, String] }
      def gnome_get_program(display, mime_type)
        program = nil
        mime_type_buffer = Converter.wcs_to_mbcs(nil, mime_type, true)
        # long
        ptr = GNOME.gnome_vfs_mime_get_default_application(mime_type_buffer)
        if (!(ptr).equal?(0))
          program = Program.new
          program.attr_display = display
          program.attr_name = mime_type
          application = GnomeVFSMimeApplication.new
          GNOME.memmove(application, ptr, GnomeVFSMimeApplication.attr_sizeof)
          length_ = OS.strlen(application.attr_command)
          buffer = Array.typed(::Java::Byte).new(length_) { 0 }
          OS.memmove(buffer, application.attr_command, length_)
          program.attr_command = String.new(Converter.mbcs_to_wcs(nil, buffer))
          program.attr_gnome_expect_uri = (application.attr_expects_uris).equal?(GNOME::GNOME_VFS_MIME_APPLICATION_ARGUMENT_TYPE_URIS)
          length_ = OS.strlen(application.attr_id)
          buffer = Array.typed(::Java::Byte).new(length_ + 1) { 0 }
          OS.memmove(buffer, application.attr_id, length_)
          gnome_icon_theme = display.get_data(ICON_THEME_DATA)
          # long
          icon_name = GNOME.gnome_icon_lookup(gnome_icon_theme.attr_value, 0, nil, buffer, 0, mime_type_buffer, GNOME::GNOME_ICON_LOOKUP_FLAGS_NONE, nil)
          # long
          path = 0
          if (!(icon_name).equal?(0))
            path = GNOME.gnome_icon_theme_lookup_icon(gnome_icon_theme.attr_value, icon_name, PREFERRED_ICON_SIZE, nil, nil)
          end
          if (!(path).equal?(0))
            length_ = OS.strlen(path)
            if (length_ > 0)
              buffer = Array.typed(::Java::Byte).new(length_) { 0 }
              OS.memmove(buffer, path, length_)
              program.attr_icon_path = String.new(Converter.mbcs_to_wcs(nil, buffer))
            end
            GNOME.g_free(path)
          end
          if (!(icon_name).equal?(0))
            GNOME.g_free(icon_name)
          end
          GNOME.gnome_vfs_mime_application_free(ptr)
        end
        return program
      end
      
      typesig { [] }
      def gnome_init
        begin
          return GNOME.gnome_vfs_init
        rescue Exception => e
          return false
        end
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
        return find_program(Display.get_current, extension)
      end
      
      typesig { [Display, String] }
      # API: When support for multiple displays is added, this method will
      # become public and the original method above can be deprecated.
      def find_program(display, extension)
        if ((extension).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if ((extension.length).equal?(0))
          return nil
        end
        if (!(extension.char_at(0)).equal?(Character.new(?..ord)))
          extension = "." + extension
        end
        desktop = get_desktop(display)
        mime_type = nil
        case (desktop)
        when DESKTOP_GNOME_24, DESKTOP_GNOME
          mime_type = (gnome_get_mime_type(extension)).to_s
        when DESKTOP_CDE
          mime_type = (cde_get_mime_type(extension)).to_s
        end
        if ((mime_type).nil?)
          return nil
        end
        program = nil
        case (desktop)
        when DESKTOP_GNOME_24, DESKTOP_GNOME
          program = gnome_get_program(display, mime_type)
        when DESKTOP_CDE
          program = cde_get_program(display, mime_type)
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
        return get_extensions(Display.get_current)
      end
      
      typesig { [Display] }
      # API: When support for multiple displays is added, this method will
      # become public and the original method above can be deprecated.
      def get_extensions(display)
        desktop = get_desktop(display)
        mime_info = nil
        case (desktop)
        when DESKTOP_GNOME_24
        when DESKTOP_GNOME
          mime_info = gnome_get_mime_info
        when DESKTOP_CDE
          mime_info = cde_get_data_type_info
        end
        if ((mime_info).nil?)
          return Array.typed(String).new(0) { nil }
        end
        # Create a unique set of the file extensions.
        extensions = Vector.new
        keys_ = mime_info.keys
        while (keys_.has_more_elements)
          mime_type = keys_.next_element
          mime_exts = mime_info.get(mime_type)
          index = 0
          while index < mime_exts.size
            if (!extensions.contains(mime_exts.element_at(index)))
              extensions.add_element(mime_exts.element_at(index))
            end
            ((index += 1) - 1)
          end
        end
        # Return the list of extensions.
        ext_strings = Array.typed(String).new(extensions.size) { nil }
        index = 0
        while index < extensions.size
          ext_strings[index] = extensions.element_at(index)
          ((index += 1) - 1)
        end
        return ext_strings
      end
      
      typesig { [] }
      # Answers all available programs in the operating system.  Note
      # that a <code>Display</code> must already exist to guarantee
      # that this method returns an appropriate result.
      # 
      # @return an array of programs
      def get_programs
        return get_programs(Display.get_current)
      end
      
      typesig { [Display] }
      # API: When support for multiple displays is added, this method will
      # become public and the original method above can be deprecated.
      def get_programs(display)
        desktop = get_desktop(display)
        mime_info = nil
        case (desktop)
        when DESKTOP_GNOME_24
        when DESKTOP_GNOME
          mime_info = gnome_get_mime_info
        when DESKTOP_CDE
          mime_info = cde_get_data_type_info
        end
        if ((mime_info).nil?)
          return Array.typed(Program).new(0) { nil }
        end
        programs = Vector.new
        keys_ = mime_info.keys
        while (keys_.has_more_elements)
          mime_type = keys_.next_element
          program = nil
          case (desktop)
          when DESKTOP_GNOME
            program = gnome_get_program(display, mime_type)
          when DESKTOP_CDE
            program = cde_get_program(display, mime_type)
          end
          if (!(program).nil?)
            programs.add_element(program)
          end
        end
        program_list = Array.typed(Program).new(programs.size) { nil }
        index = 0
        while index < program_list.attr_length
          program_list[index] = programs.element_at(index)
          ((index += 1) - 1)
        end
        return program_list
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
        return launch(Display.get_current, file_name)
      end
      
      typesig { [Display, String] }
      # API: When support for multiple displays is added, this method will
      # become public and the original method above can be deprecated.
      def launch(display, file_name)
        if ((file_name).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        case (get_desktop(display))
        when DESKTOP_GNOME_24
          if (gnome_24_launch(file_name))
            return true
          end
        else
          index = file_name.last_index_of(Character.new(?..ord))
          if (!(index).equal?(-1))
            extension = file_name.substring(index)
            program = Program.find_program(display, extension)
            if (!(program).nil? && program.execute(file_name))
              return true
            end
          end
          lowercase_name = file_name.to_lower_case
          if (lowercase_name.starts_with(PREFIX_HTTP) || lowercase_name.starts_with(PREFIX_HTTPS))
            program = Program.find_program(display, ".html") # $NON-NLS-1$
            if ((program).nil?)
              program = Program.find_program(display, ".htm") # $NON-NLS-1$
            end
            if (!(program).nil? && program.execute(file_name))
              return true
            end
          end
        end
        begin
          Compatibility.exec(file_name)
          return true
        rescue IOException => e
          return false
        end
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
      if (!(other.is_a?(Program)))
        return false
      end
      program = other
      return (@display).equal?(program.attr_display) && (@name == program.attr_name) && (@command == program.attr_command)
    end
    
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
      desktop = get_desktop(@display)
      case (desktop)
      when DESKTOP_GNOME_24
        return gnome_24_execute(file_name)
      when DESKTOP_GNOME
        return gnome_execute(file_name)
      when DESKTOP_CDE
        return cde_execute(file_name)
      end
      return false
    end
    
    typesig { [] }
    # Returns the receiver's image data.  This is the icon
    # that is associated with the receiver in the operating
    # system.
    # 
    # @return the image data for the program, may be null
    def get_image_data
      case (get_desktop(@display))
      when DESKTOP_GNOME_24, DESKTOP_GNOME
        return gnome_get_image_data
      when DESKTOP_CDE
        return cde_get_image_data
      end
      return nil
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
      return @name.hash_code ^ @command.hash_code ^ @display.hash_code
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
