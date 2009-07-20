require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module ClipboardProxyImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include_const ::Org::Eclipse::Swt, :SWT
      include_const ::Org::Eclipse::Swt::Internal, :Callback
      include_const ::Org::Eclipse::Swt::Internal, :Converter
      include_const ::Org::Eclipse::Swt::Internal::Gtk, :GtkSelectionData
      include_const ::Org::Eclipse::Swt::Internal::Gtk, :GtkTargetEntry
      include_const ::Org::Eclipse::Swt::Internal::Gtk, :OS
      include_const ::Org::Eclipse::Swt::Widgets, :Display
      include_const ::Org::Eclipse::Swt::Widgets, :Event
      include_const ::Org::Eclipse::Swt::Widgets, :Listener
    }
  end
  
  class ClipboardProxy 
    include_class_members ClipboardProxyImports
    
    # Data is not flushed to the clipboard immediately.
    # This class will remember the data and provide it when requested.
    attr_accessor :clipboard_data
    alias_method :attr_clipboard_data, :clipboard_data
    undef_method :clipboard_data
    alias_method :attr_clipboard_data=, :clipboard_data=
    undef_method :clipboard_data=
    
    attr_accessor :clipboard_data_types
    alias_method :attr_clipboard_data_types, :clipboard_data_types
    undef_method :clipboard_data_types
    alias_method :attr_clipboard_data_types=, :clipboard_data_types=
    undef_method :clipboard_data_types=
    
    attr_accessor :primary_clipboard_data
    alias_method :attr_primary_clipboard_data, :primary_clipboard_data
    undef_method :primary_clipboard_data
    alias_method :attr_primary_clipboard_data=, :primary_clipboard_data=
    undef_method :primary_clipboard_data=
    
    attr_accessor :primary_clipboard_data_types
    alias_method :attr_primary_clipboard_data_types, :primary_clipboard_data_types
    undef_method :primary_clipboard_data_types
    alias_method :attr_primary_clipboard_data_types=, :primary_clipboard_data_types=
    undef_method :primary_clipboard_data_types=
    
    attr_accessor :display
    alias_method :attr_display, :display
    undef_method :display
    alias_method :attr_display=, :display=
    undef_method :display=
    
    attr_accessor :active_clipboard
    alias_method :attr_active_clipboard, :active_clipboard
    undef_method :active_clipboard
    alias_method :attr_active_clipboard=, :active_clipboard=
    undef_method :active_clipboard=
    
    attr_accessor :active_primary_clipboard
    alias_method :attr_active_primary_clipboard, :active_primary_clipboard
    undef_method :active_primary_clipboard
    alias_method :attr_active_primary_clipboard=, :active_primary_clipboard=
    undef_method :active_primary_clipboard=
    
    attr_accessor :get_func
    alias_method :attr_get_func, :get_func
    undef_method :get_func
    alias_method :attr_get_func=, :get_func=
    undef_method :get_func=
    
    attr_accessor :clear_func
    alias_method :attr_clear_func, :clear_func
    undef_method :clear_func
    alias_method :attr_clear_func=, :clear_func=
    undef_method :clear_func=
    
    class_module.module_eval {
      
      def id
        defined?(@@id) ? @@id : @@id= "CLIPBOARD PROXY OBJECT"
      end
      alias_method :attr_id, :id
      
      def id=(value)
        @@id = value
      end
      alias_method :attr_id=, :id=
      
      typesig { [Display] }
      # $NON-NLS-1$
      def __get_instance(display)
        proxy = display.get_data(self.attr_id)
        if (!(proxy).nil?)
          return proxy
        end
        proxy = ClipboardProxy.new(display)
        display.set_data(self.attr_id, proxy)
        display.add_listener(SWT::Dispose, Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members ClipboardProxy
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            clipbord_proxy = display.get_data(self.attr_id)
            if ((clipbord_proxy).nil?)
              return
            end
            display.set_data(self.attr_id, nil)
            clipbord_proxy.dispose
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
        return proxy
      end
    }
    
    typesig { [Display] }
    def initialize(display)
      @clipboard_data = nil
      @clipboard_data_types = nil
      @primary_clipboard_data = nil
      @primary_clipboard_data_types = nil
      @display = nil
      @active_clipboard = nil
      @active_primary_clipboard = nil
      @get_func = nil
      @clear_func = nil
      @display = display
      @get_func = Callback.new(self, "getFunc", 4) # $NON-NLS-1$
      if ((@get_func.get_address).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @clear_func = Callback.new(self, "clearFunc", 2) # $NON-NLS-1$
      if ((@clear_func.get_address).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
    end
    
    typesig { [Clipboard, ::Java::Int] }
    def clear(owner, clipboards)
      if (!((clipboards & DND::CLIPBOARD)).equal?(0) && (@active_clipboard).equal?(owner))
        OS.gtk_clipboard_clear(Clipboard::GTKCLIPBOARD)
      end
      if (!((clipboards & DND::SELECTION_CLIPBOARD)).equal?(0) && (@active_primary_clipboard).equal?(owner))
        OS.gtk_clipboard_clear(Clipboard::GTKPRIMARYCLIPBOARD)
      end
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def clear_func(clipboard, user_data_or_owner)
      if ((clipboard).equal?(Clipboard::GTKCLIPBOARD))
        @active_clipboard = nil
        @clipboard_data = nil
        @clipboard_data_types = nil
      end
      if ((clipboard).equal?(Clipboard::GTKPRIMARYCLIPBOARD))
        @active_primary_clipboard = nil
        @primary_clipboard_data = nil
        @primary_clipboard_data_types = nil
      end
      return 1
    end
    
    typesig { [] }
    def dispose
      if ((@display).nil?)
        return
      end
      if (!(@active_clipboard).nil?)
        OS.gtk_clipboard_clear(Clipboard::GTKCLIPBOARD)
      end
      if (!(@active_primary_clipboard).nil?)
        OS.gtk_clipboard_clear(Clipboard::GTKPRIMARYCLIPBOARD)
      end
      @display = nil
      if (!(@get_func).nil?)
        @get_func.dispose
      end
      @get_func = nil
      if (!(@clear_func).nil?)
        @clear_func.dispose
      end
      @clear_func = nil
      @clipboard_data = nil
      @clipboard_data_types = nil
      @primary_clipboard_data = nil
      @primary_clipboard_data_types = nil
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # This function provides the data to the clipboard on request.
    # When this clipboard is disposed, the data will no longer be available.
    # 
    # int
    # int
    # int
    # int
    # int
    def get_func(clipboard, selection_data, info, user_data_or_owner)
      if ((selection_data).equal?(0))
        return 0
      end
      selection_data_ = GtkSelectionData.new
      OS.memmove(selection_data_, selection_data, GtkSelectionData.attr_sizeof)
      tdata = TransferData.new
      tdata.attr_type = selection_data_.attr_target
      types = ((clipboard).equal?(Clipboard::GTKCLIPBOARD)) ? @clipboard_data_types : @primary_clipboard_data_types
      index = -1
      i = 0
      while i < types.attr_length
        if (types[i].is_supported_type(tdata))
          index = i
          break
        end
        i += 1
      end
      if ((index).equal?(-1))
        return 0
      end
      data = ((clipboard).equal?(Clipboard::GTKCLIPBOARD)) ? @clipboard_data : @primary_clipboard_data
      types[index].java_to_native(data[index], tdata)
      if (tdata.attr_format < 8 || !(tdata.attr_format % 8).equal?(0))
        return 0
      end
      OS.gtk_selection_data_set(selection_data, tdata.attr_type, tdata.attr_format, tdata.attr_p_value, tdata.attr_length)
      OS.g_free(tdata.attr_p_value)
      return 1
    end
    
    typesig { [Clipboard, Array.typed(Object), Array.typed(Transfer), ::Java::Int] }
    def set_data(owner, data, data_types, clipboards)
      entries = Array.typed(GtkTargetEntry).new(0) { nil }
      # int
      p_targets_list = 0
      begin
        i = 0
        while i < data_types.attr_length
          transfer = data_types[i]
          type_ids = transfer.get_type_ids
          type_names = transfer.get_type_names
          j = 0
          while j < type_ids.attr_length
            entry = GtkTargetEntry.new
            entry.attr_info = type_ids[j]
            buffer = Converter.wcs_to_mbcs(nil, type_names[j], true)
            # int
            p_name = OS.g_malloc(buffer.attr_length)
            OS.memmove(p_name, buffer, buffer.attr_length)
            entry.attr_target = p_name
            tmp = Array.typed(GtkTargetEntry).new(entries.attr_length + 1) { nil }
            System.arraycopy(entries, 0, tmp, 0, entries.attr_length)
            tmp[entries.attr_length] = entry
            entries = tmp
            j += 1
          end
          i += 1
        end
        p_targets_list = OS.g_malloc(GtkTargetEntry.attr_sizeof * entries.attr_length)
        offset = 0
        i_ = 0
        while i_ < entries.attr_length
          OS.memmove(p_targets_list + offset, entries[i_], GtkTargetEntry.attr_sizeof)
          offset += GtkTargetEntry.attr_sizeof
          i_ += 1
        end
        if (!((clipboards & DND::CLIPBOARD)).equal?(0))
          if (!(@active_clipboard).nil?)
            OS.gtk_clipboard_clear(Clipboard::GTKCLIPBOARD)
          end
          @clipboard_data = data
          @clipboard_data_types = data_types
          # int
          get_func_proc = @get_func.get_address
          # int
          clear_func_proc = @clear_func.get_address
          if (!OS.gtk_clipboard_set_with_data(Clipboard::GTKCLIPBOARD, p_targets_list, entries.attr_length, get_func_proc, clear_func_proc, 0))
            return false
          end
          @active_clipboard = owner
        end
        if (!((clipboards & DND::SELECTION_CLIPBOARD)).equal?(0))
          if (!(@active_primary_clipboard).nil?)
            OS.gtk_clipboard_clear(Clipboard::GTKPRIMARYCLIPBOARD)
          end
          @primary_clipboard_data = data
          @primary_clipboard_data_types = data_types
          # int
          get_func_proc = @get_func.get_address
          # int
          clear_func_proc = @clear_func.get_address
          if (!OS.gtk_clipboard_set_with_data(Clipboard::GTKPRIMARYCLIPBOARD, p_targets_list, entries.attr_length, get_func_proc, clear_func_proc, 0))
            return false
          end
          @active_primary_clipboard = owner
        end
        return true
      ensure
        i__ = 0
        while i__ < entries.attr_length
          entry = entries[i__]
          if (!(entry.attr_target).equal?(0))
            OS.g_free(entry.attr_target)
          end
          i__ += 1
        end
        if (!(p_targets_list).equal?(0))
          OS.g_free(p_targets_list)
        end
      end
    end
    
    private
    alias_method :initialize__clipboard_proxy, :initialize
  end
  
end
