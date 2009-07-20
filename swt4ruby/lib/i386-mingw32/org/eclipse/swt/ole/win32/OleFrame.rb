require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Ole::Win32
  module OleFrameImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Internal
      include_const ::Java::Util, :Vector
    }
  end
  
  # OleFrame is an OLE Container's top level frame.
  # 
  # <p>This object implements the OLE Interfaces IUnknown and IOleInPlaceFrame
  # 
  # <p>OleFrame allows the container to do the following: <ul>
  # <li>position and size the ActiveX Control or OLE Document within the application
  # <li>insert menu items from the application into the OLE Document's menu
  # <li>activate and deactivate the OLE Document's menus
  # <li>position the OLE Document's menu in the application
  # <li>translate accelerator keystrokes intended for the container's frame</ul>
  # 
  # <dl>
  # <dt><b>Styles</b> <dd>BORDER
  # <dt><b>Events</b> <dd>Dispose, Move, Resize
  # </dl>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#ole">OLE and ActiveX snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Examples: OLEExample, OleWebBrowser</a>
  class OleFrame < OleFrameImports.const_get :Composite
    include_class_members OleFrameImports
    
    # Interfaces for this Ole Client Container
    attr_accessor :i_unknown
    alias_method :attr_i_unknown, :i_unknown
    undef_method :i_unknown
    alias_method :attr_i_unknown=, :i_unknown=
    undef_method :i_unknown=
    
    attr_accessor :i_ole_in_place_frame
    alias_method :attr_i_ole_in_place_frame, :i_ole_in_place_frame
    undef_method :i_ole_in_place_frame
    alias_method :attr_i_ole_in_place_frame=, :i_ole_in_place_frame=
    undef_method :i_ole_in_place_frame=
    
    # Access to the embedded/linked Ole Object
    attr_accessor :obj_iole_in_place_active_object
    alias_method :attr_obj_iole_in_place_active_object, :obj_iole_in_place_active_object
    undef_method :obj_iole_in_place_active_object
    alias_method :attr_obj_iole_in_place_active_object=, :obj_iole_in_place_active_object=
    undef_method :obj_iole_in_place_active_object=
    
    attr_accessor :currentdoc
    alias_method :attr_currentdoc, :currentdoc
    undef_method :currentdoc
    alias_method :attr_currentdoc=, :currentdoc=
    undef_method :currentdoc=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :file_menu_items
    alias_method :attr_file_menu_items, :file_menu_items
    undef_method :file_menu_items
    alias_method :attr_file_menu_items=, :file_menu_items=
    undef_method :file_menu_items=
    
    attr_accessor :container_menu_items
    alias_method :attr_container_menu_items, :container_menu_items
    undef_method :container_menu_items
    alias_method :attr_container_menu_items=, :container_menu_items=
    undef_method :container_menu_items=
    
    attr_accessor :window_menu_items
    alias_method :attr_window_menu_items, :window_menu_items
    undef_method :window_menu_items
    alias_method :attr_window_menu_items=, :window_menu_items=
    undef_method :window_menu_items=
    
    attr_accessor :listener
    alias_method :attr_listener, :listener
    undef_method :listener
    alias_method :attr_listener=, :listener=
    undef_method :listener=
    
    class_module.module_eval {
      
      def check_focus
        defined?(@@check_focus) ? @@check_focus : @@check_focus= "OLE_CHECK_FOCUS"
      end
      alias_method :attr_check_focus, :check_focus
      
      def check_focus=(value)
        @@check_focus = value
      end
      alias_method :attr_check_focus=, :check_focus=
      
      # $NON-NLS-1$
      
      def hhook
        defined?(@@hhook) ? @@hhook : @@hhook= "OLE_HHOOK"
      end
      alias_method :attr_hhook, :hhook
      
      def hhook=(value)
        @@hhook = value
      end
      alias_method :attr_hhook=, :hhook=
      
      # $NON-NLS-1$
      
      def hhookmsg
        defined?(@@hhookmsg) ? @@hhookmsg : @@hhookmsg= "OLE_HHOOK_MSG"
      end
      alias_method :attr_hhookmsg, :hhookmsg
      
      def hhookmsg=(value)
        @@hhookmsg = value
      end
      alias_method :attr_hhookmsg=, :hhookmsg=
      
      # $NON-NLS-1$
      
      def ignore_next_key
        defined?(@@ignore_next_key) ? @@ignore_next_key : @@ignore_next_key= false
      end
      alias_method :attr_ignore_next_key, :ignore_next_key
      
      def ignore_next_key=(value)
        @@ignore_next_key = value
      end
      alias_method :attr_ignore_next_key=, :ignore_next_key=
      
      const_set_lazy(:ACCENTS) { Array.typed(::Java::Short).new([Character.new(?~.ord), Character.new(?`.ord), Character.new(?\'.ord), Character.new(?^.ord), Character.new(?".ord)]) }
      const_attr_reader  :ACCENTS
      
      const_set_lazy(:CONSUME_KEY) { "org.eclipse.swt.OleFrame.ConsumeKey" }
      const_attr_reader  :CONSUME_KEY
    }
    
    typesig { [Composite, ::Java::Int] }
    # $NON-NLS-1$
    # 
    # Create an OleFrame child widget using style bits
    # to select a particular look or set of properties.
    # 
    # @param parent a composite widget (cannot be null)
    # @param style the bitwise OR'ing of widget styles
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when the parent is null
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread
    # </ul>
    def initialize(parent, style)
      @i_unknown = nil
      @i_ole_in_place_frame = nil
      @obj_iole_in_place_active_object = nil
      @currentdoc = nil
      @ref_count = 0
      @file_menu_items = nil
      @container_menu_items = nil
      @window_menu_items = nil
      @listener = nil
      super(parent, style)
      @ref_count = 0
      create_cominterfaces
      @listener = # setup cleanup proc
      Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members OleFrame
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          case (e.attr_type)
          when SWT::Activate
            on_activate(e)
          when SWT::Deactivate
            on_deactivate(e)
          when SWT::Dispose
            on_dispose(e)
          when SWT::Resize, SWT::Move
            on_resize(e)
          else
            OLE.error(SWT::ERROR_NOT_IMPLEMENTED)
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      add_listener(SWT::Activate, @listener)
      add_listener(SWT::Deactivate, @listener)
      add_listener(SWT::Dispose, @listener)
      # inform inplaceactiveobject whenever frame resizes
      add_listener(SWT::Resize, @listener)
      # inform inplaceactiveobject whenever frame moves
      add_listener(SWT::Move, @listener)
      # Maintain a reference to yourself so that when
      # ClientSites close, they don't take the frame away
      # with them.
      self._add_ref
      # Check for focus change
      display = get_display
      init_check_focus(display)
      init_msg_hook(display)
    end
    
    class_module.module_eval {
      typesig { [Display] }
      def init_check_focus(display)
        if (!(display.get_data(self.attr_check_focus)).nil?)
          return
        end
        display.set_data(self.attr_check_focus, self.attr_check_focus)
        time = 50
        timer = Array.typed(Runnable).new(1) { nil }
        last_focus = Array.typed(Control).new(1) { nil }
        timer[0] = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members OleFrame
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if (last_focus[0].is_a?(OleClientSite) && !last_focus[0].is_disposed)
              # ignore popup menus and dialogs
              # long
              hwnd = OS._get_focus
              while (!(hwnd).equal?(0))
                # long
                owner_hwnd = OS._get_window(hwnd, OS::GW_OWNER)
                if (!(owner_hwnd).equal?(0))
                  display.timer_exec(time, timer[0])
                  return
                end
                hwnd = OS._get_parent(hwnd)
              end
            end
            if ((last_focus[0]).nil? || last_focus[0].is_disposed || !last_focus[0].is_focus_control)
              current_focus = display.get_focus_control
              if (current_focus.is_a?(OleFrame))
                frame = current_focus
                current_focus = frame.get_current_document
              end
              if (!(last_focus[0]).equal?(current_focus))
                event = Event.new
                if (last_focus[0].is_a?(OleClientSite) && !last_focus[0].is_disposed)
                  last_focus[0].notify_listeners(SWT::FocusOut, event)
                end
                if (current_focus.is_a?(OleClientSite) && !current_focus.is_disposed)
                  current_focus.notify_listeners(SWT::FocusIn, event)
                end
              end
              last_focus[0] = current_focus
            end
            display.timer_exec(time, timer[0])
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        display.timer_exec(time, timer[0])
      end
      
      typesig { [Display] }
      def init_msg_hook(display)
        if (!(display.get_data(self.attr_hhook)).nil?)
          return
        end
        callback = Callback.new(OleFrame.class, "getMsgProc", 3) # $NON-NLS-1$
        # long
        address = callback.get_address
        if ((address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        thread_id = OS._get_current_thread_id
        # long
        h_hook = OS._set_windows_hook_ex(OS::WH_GETMESSAGE, address, 0, thread_id)
        if ((h_hook).equal?(0))
          callback.dispose
          return
        end
        display.set_data(self.attr_hhook, SwtLONG.new(h_hook))
        display.set_data(self.attr_hhookmsg, MSG.new)
        display.dispose_exec(Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members OleFrame
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if (!(h_hook).equal?(0))
              OS._unhook_windows_hook_ex(h_hook)
            end
            if (!(callback).nil?)
              callback.dispose
            end
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def get_msg_proc(code, w_param, l_param)
        display = Display.get_current
        if ((display).nil?)
          return 0
        end
        h_hook = display.get_data(self.attr_hhook)
        if ((h_hook).nil?)
          return 0
        end
        if (code < 0 || ((w_param & OS::PM_REMOVE)).equal?(0))
          # 64
          return OS._call_next_hook_ex(h_hook.attr_value, RJava.cast_to_int(code), w_param, l_param)
        end
        msg = display.get_data(self.attr_hhookmsg)
        OS._move_memory(msg, l_param, MSG.attr_sizeof)
        message = msg.attr_message
        if (OS::WM_KEYFIRST <= message && message <= OS::WM_KEYLAST)
          if (!(display).nil?)
            widget = nil
            # long
            hwnd = msg.attr_hwnd
            while (!(hwnd).equal?(0))
              widget = display.find_widget(hwnd)
              if (!(widget).nil?)
                break
              end
              hwnd = OS._get_parent(hwnd)
            end
            if (!(widget).nil? && widget.is_a?(OleClientSite))
              site = widget
              if ((site.attr_handle).equal?(hwnd))
                consumed = false
                # Allow activeX control to translate accelerators except when a menu is active.
                thread = OS._get_window_thread_process_id(msg.attr_hwnd, nil)
                lpgui = GUITHREADINFO.new
                lpgui.attr_cb_size = GUITHREADINFO.attr_sizeof
                rc = OS._get_guithread_info(thread, lpgui)
                mask = OS::GUI_INMENUMODE | OS::GUI_INMOVESIZE | OS::GUI_POPUPMENUMODE | OS::GUI_SYSTEMMENUMODE
                if (!rc || ((lpgui.attr_flags & mask)).equal?(0))
                  frame = site.attr_frame
                  frame.set_data(CONSUME_KEY, nil)
                  consumed = frame.translate_ole_accelerator(msg)
                  value = frame.get_data(CONSUME_KEY)
                  if (!(value).nil?)
                    consumed = (value == "true")
                  end # $NON-NLS-1$
                  frame.set_data(CONSUME_KEY, nil)
                end
                accent_key = false
                case (msg.attr_message)
                when OS::WM_KEYDOWN, OS::WM_SYSKEYDOWN
                  if (!OS::IsWinCE)
                    # 64
                    case (RJava.cast_to_int(msg.attr_w_param))
                    when OS::VK_SHIFT, OS::VK_MENU, OS::VK_CONTROL, OS::VK_CAPITAL, OS::VK_NUMLOCK, OS::VK_SCROLL
                    else
                      # Bug in Windows. The high bit in the result of MapVirtualKey() on
                      # Windows NT is bit 32 while the high bit on Windows 95 is bit 16.
                      # They should both be bit 32.  The fix is to test the right bit.
                      # 
                      # 64
                      map_key = OS._map_virtual_key(RJava.cast_to_int(msg.attr_w_param), 2)
                      if (!(map_key).equal?(0))
                        accent_key = !((map_key & (OS::IsWinNT ? -0x80000000 : 0x8000))).equal?(0)
                        if (!accent_key)
                          i = 0
                          while i < ACCENTS.attr_length
                            value = OS._vk_key_scan(ACCENTS[i])
                            if (!(value).equal?(-1) && ((value & 0xff)).equal?(msg.attr_w_param))
                              state = value >> 8
                              if (((OS._get_key_state(OS::VK_SHIFT) < 0)).equal?((!((state & 0x1)).equal?(0))) && ((OS._get_key_state(OS::VK_CONTROL) < 0)).equal?((!((state & 0x2)).equal?(0))) && ((OS._get_key_state(OS::VK_MENU) < 0)).equal?((!((state & 0x4)).equal?(0))))
                                if (!((state & 0x7)).equal?(0))
                                  accent_key = true
                                end
                                break
                              end
                            end
                            ((i += 1) - 1)
                          end
                        end
                      end
                    end
                  end
                end
                # Allow OleClientSite to process key events before activeX control
                if (!consumed && !accent_key && !self.attr_ignore_next_key)
                  # long
                  hwnd_old = msg.attr_hwnd
                  msg.attr_hwnd = site.attr_handle
                  consumed = (OS._dispatch_message(msg)).equal?(1)
                  msg.attr_hwnd = hwnd_old
                end
                case (msg.attr_message)
                when OS::WM_KEYDOWN, OS::WM_SYSKEYDOWN
                  # 64
                  case (RJava.cast_to_int(msg.attr_w_param))
                  when OS::VK_SHIFT, OS::VK_MENU, OS::VK_CONTROL, OS::VK_CAPITAL, OS::VK_NUMLOCK, OS::VK_SCROLL
                  else
                    self.attr_ignore_next_key = accent_key
                  end
                end
                if (consumed)
                  # In order to prevent this message from also being processed
                  # by the application, zero out message, wParam and lParam
                  msg.attr_message = OS::WM_NULL
                  msg.attr_w_param = msg.attr_l_param = 0
                  OS._move_memory(l_param, msg, MSG.attr_sizeof)
                  return 0
                end
              end
            end
          end
        end
        # 64
        return OS._call_next_hook_ex(h_hook.attr_value, RJava.cast_to_int(code), w_param, l_param)
      end
    }
    
    typesig { [] }
    # Increment the count of references to this instance
    # 
    # @return the current reference count
    def _add_ref
      ((@ref_count += 1) - 1)
      return @ref_count
    end
    
    typesig { [::Java::Int] }
    def _context_sensitive_help(f_enter_mode)
      return COM::S_OK
    end
    
    typesig { [] }
    def create_cominterfaces
      @i_unknown = # Create each of the interfaces that this object implements
      Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleFrame
        include COMObject if COMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
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
      @i_ole_in_place_frame = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleFrame
        include COMObject if COMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          return _get_window(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          return _context_sensitive_help(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _get_border(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          return _request_border_space(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          return _set_border_space(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          return _set_active_object(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          return _insert_menus(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          return _set_menu(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method11 do |args|
          return _remove_menus(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # method12 SetStatusText - not implemented
        # method13 EnableModeless - not implemented
        # long
        # long
        define_method :method14 do |args|
          # 64
          return _translate_accelerator(args[0], RJava.cast_to_int(args[1]))
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1, 1, 1, 1, 1, 2, 2, 3, 1, 1, 1, 2]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@i_unknown).nil?)
        @i_unknown.dispose
      end
      @i_unknown = nil
      if (!(@i_ole_in_place_frame).nil?)
        @i_ole_in_place_frame.dispose
      end
      @i_ole_in_place_frame = nil
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_border(lprect_border)
      # The IOleInPlaceUIWindow::GetBorder function, when called on a document or frame window
      # object, returns the outer rectangle (relative to the window) where the object can put
      # toolbars or similar controls.
      if ((lprect_border).equal?(0))
        return COM::E_INVALIDARG
      end
      rect_border = RECT.new
      # Coordinates must be relative to the window
      OS._get_client_rect(self.attr_handle, rect_border)
      OS._move_memory(lprect_border, rect_border, RECT.attr_sizeof)
      return COM::S_OK
    end
    
    typesig { [] }
    # Returns the application menu items that will appear in the Container location when an OLE Document
    # is in-place activated.
    # 
    # <p>When an OLE Document is in-place active, the Document provides its own menus but the application
    # is given the opportunity to merge some of its menus into the menubar.  The application
    # is allowed to insert its menus in three locations: File (far left), Container(middle) and Window
    # (far right just before Help).  The OLE Document retains control of the Edit, Object and Help
    # menu locations.  Note that an application can insert more than one menu into a single location.
    # 
    # @return the application menu items that will appear in the Container location when an OLE Document
    # is in-place activated.
    def get_container_menus
      return @container_menu_items
    end
    
    typesig { [] }
    # Returns the application menu items that will appear in the File location when an OLE Document
    # is in-place activated.
    # 
    # <p>When an OLE Document is in-place active, the Document provides its own menus but the application
    # is given the opportunity to merge some of its menus into the menubar.  The application
    # is allowed to insert its menus in three locations: File (far left), Container(middle) and Window
    # (far right just before Help).  The OLE Document retains control of the Edit, Object and Help
    # menu locations.  Note that an application can insert more than one menu into a single location.
    # 
    # @return the application menu items that will appear in the File location when an OLE Document
    # is in-place activated.
    def get_file_menus
      return @file_menu_items
    end
    
    typesig { [] }
    # long
    def get_iole_in_place_frame
      return @i_ole_in_place_frame.get_address
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_menu_item_id(h_menu, index)
      # long
      id = 0
      lpmii = MENUITEMINFO.new
      lpmii.attr_cb_size = MENUITEMINFO.attr_sizeof
      lpmii.attr_f_mask = OS::MIIM_STATE | OS::MIIM_SUBMENU | OS::MIIM_ID
      OS._get_menu_item_info(h_menu, index, true, lpmii)
      if (((lpmii.attr_f_state & OS::MF_POPUP)).equal?(OS::MF_POPUP))
        id = lpmii.attr_h_sub_menu
      else
        id = lpmii.attr_w_id
      end
      return id
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_window(phwnd)
      if (!(phwnd).equal?(0))
        # long
        COM._move_memory(phwnd, Array.typed(::Java::Int).new([self.attr_handle]), OS::PTR_SIZEOF)
      end
      return COM::S_OK
    end
    
    typesig { [] }
    # Returns the application menu items that will appear in the Window location when an OLE Document
    # is in-place activated.
    # 
    # <p>When an OLE Document is in-place active, the Document provides its own menus but the application
    # is given the opportunity to merge some of its menus into the menubar.  The application
    # is allowed to insert its menus in three locations: File (far left), Container(middle) and Window
    # (far right just before Help).  The OLE Document retains control of the Edit, Object and Help
    # menu locations.  Note that an application can insert more than one menu into a single location.
    # 
    # @return the application menu items that will appear in the Window location when an OLE Document
    # is in-place activated.
    def get_window_menus
      return @window_menu_items
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _insert_menus(hmenu_shared, lp_menu_widths)
      # locate menu bar
      menubar = get_shell.get_menu_bar
      if ((menubar).nil? || menubar.is_disposed)
        COM._move_memory(lp_menu_widths, Array.typed(::Java::Int).new([0]), 4)
        return COM::S_OK
      end
      # long
      h_menu = menubar.attr_handle
      # Create a holder for menu information.  This will be passed down to
      # the OS and the OS will fill in the requested information for each menu.
      lpmii = MENUITEMINFO.new
      # long
      h_heap = OS._get_process_heap
      cch = 128
      byte_count = cch * TCHAR.attr_sizeof
      # long
      psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
      lpmii.attr_cb_size = MENUITEMINFO.attr_sizeof
      lpmii.attr_f_mask = OS::MIIM_STATE | OS::MIIM_ID | OS::MIIM_TYPE | OS::MIIM_SUBMENU | OS::MIIM_DATA
      lpmii.attr_dw_type_data = psz_text
      lpmii.attr_cch = cch
      # Loop over all "File-like" menus in the menubar and get information about the
      # item from the OS.
      file_menu_count = 0
      newindex = 0
      if (!(@file_menu_items).nil?)
        i = 0
        while i < @file_menu_items.attr_length
          item = @file_menu_items[i]
          if (!(item).nil?)
            index = item.get_parent.index_of(item)
            lpmii.attr_cch = cch # lpmii.cch gets updated by GetMenuItemInfo to indicate the
            # exact number of characters in name.  Reset it to our max size
            # before each call.
            if (OS._get_menu_item_info(h_menu, index, true, lpmii))
              if (OS._insert_menu_item(hmenu_shared, newindex, true, lpmii))
                # keep track of the number of items
                ((file_menu_count += 1) - 1)
                ((newindex += 1) - 1)
              end
            end
          end
          ((i += 1) - 1)
        end
      end
      # copy the menu item count information to the pointer
      COM._move_memory(lp_menu_widths, Array.typed(::Java::Int).new([file_menu_count]), 4)
      # Loop over all "Container-like" menus in the menubar and get information about the
      # item from the OS.
      container_menu_count = 0
      if (!(@container_menu_items).nil?)
        i = 0
        while i < @container_menu_items.attr_length
          item = @container_menu_items[i]
          if (!(item).nil?)
            index = item.get_parent.index_of(item)
            lpmii.attr_cch = cch # lpmii.cch gets updated by GetMenuItemInfo to indicate the
            # exact number of characters in name.  Reset it to a large number
            # before each call.
            if (OS._get_menu_item_info(h_menu, index, true, lpmii))
              if (OS._insert_menu_item(hmenu_shared, newindex, true, lpmii))
                # keep track of the number of items
                ((container_menu_count += 1) - 1)
                ((newindex += 1) - 1)
              end
            end
          end
          ((i += 1) - 1)
        end
      end
      # copy the menu item count information to the pointer
      COM._move_memory(lp_menu_widths + 8, Array.typed(::Java::Int).new([container_menu_count]), 4)
      # Loop over all "Window-like" menus in the menubar and get information about the
      # item from the OS.
      window_menu_count = 0
      if (!(@window_menu_items).nil?)
        i = 0
        while i < @window_menu_items.attr_length
          item = @window_menu_items[i]
          if (!(item).nil?)
            index = item.get_parent.index_of(item)
            lpmii.attr_cch = cch # lpmii.cch gets updated by GetMenuItemInfo to indicate the
            # exact number of characters in name.  Reset it to a large number
            # before each call.
            if (OS._get_menu_item_info(h_menu, index, true, lpmii))
              if (OS._insert_menu_item(hmenu_shared, newindex, true, lpmii))
                # keep track of the number of items
                ((window_menu_count += 1) - 1)
                ((newindex += 1) - 1)
              end
            end
          end
          ((i += 1) - 1)
        end
      end
      # copy the menu item count information to the pointer
      COM._move_memory(lp_menu_widths + 16, Array.typed(::Java::Int).new([window_menu_count]), 4)
      # free resources used in querying the OS
      if (!(psz_text).equal?(0))
        OS._heap_free(h_heap, 0, psz_text)
      end
      return COM::S_OK
    end
    
    typesig { [Event] }
    def on_activate(e)
      if (!(@obj_iole_in_place_active_object).nil?)
        @obj_iole_in_place_active_object._on_frame_window_activate(true)
      end
    end
    
    typesig { [Event] }
    def on_deactivate(e)
      if (!(@obj_iole_in_place_active_object).nil?)
        @obj_iole_in_place_active_object._on_frame_window_activate(false)
      end
    end
    
    typesig { [Event] }
    def on_dispose(e)
      release_object_interfaces
      @currentdoc = nil
      self._release
      remove_listener(SWT::Activate, @listener)
      remove_listener(SWT::Deactivate, @listener)
      remove_listener(SWT::Dispose, @listener)
      remove_listener(SWT::Resize, @listener)
      remove_listener(SWT::Move, @listener)
    end
    
    typesig { [Event] }
    def on_resize(e)
      if (!(@obj_iole_in_place_active_object).nil?)
        lp_rect = RECT.new
        OS._get_client_rect(self.attr_handle, lp_rect)
        @obj_iole_in_place_active_object._resize_border(lp_rect, @i_ole_in_place_frame.get_address, true)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _query_interface(riid, ppv_object)
      # implements IUnknown, IOleInPlaceFrame, IOleContainer, IOleInPlaceUIWindow
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return COM::E_INVALIDARG
      end
      guid = GUID.new
      COM._move_memory(guid, riid, GUID.attr_sizeof)
      if (COM._is_equal_guid(guid, COM::IIDIUnknown) || COM._is_equal_guid(guid, COM::IIDIOleInPlaceFrame))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_ole_in_place_frame.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      # long
      COM._move_memory(ppv_object, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
      return COM::E_NOINTERFACE
    end
    
    typesig { [] }
    # Decrement the count of references to this instance
    # 
    # @return the current reference count
    def _release
      ((@ref_count -= 1) + 1)
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
        COM._co_free_unused_libraries
      end
      return @ref_count
    end
    
    typesig { [] }
    def release_object_interfaces
      if (!(@obj_iole_in_place_active_object).nil?)
        @obj_iole_in_place_active_object._release
      end
      @obj_iole_in_place_active_object = nil
    end
    
    typesig { [::Java::Int] }
    # long
    def _remove_menus(hmenu_shared)
      menubar = get_shell.get_menu_bar
      if ((menubar).nil? || menubar.is_disposed)
        return COM::S_FALSE
      end
      # long
      h_menu = menubar.attr_handle
      ids = Vector.new
      if (!(@file_menu_items).nil?)
        i = 0
        while i < @file_menu_items.attr_length
          item = @file_menu_items[i]
          if (!(item).nil? && !item.is_disposed)
            index = item.get_parent.index_of(item)
            # get Id from original menubar
            # long
            id = get_menu_item_id(h_menu, index)
            ids.add_element(SwtLONG.new(id))
          end
          ((i += 1) - 1)
        end
      end
      if (!(@container_menu_items).nil?)
        i = 0
        while i < @container_menu_items.attr_length
          item = @container_menu_items[i]
          if (!(item).nil? && !item.is_disposed)
            index = item.get_parent.index_of(item)
            # long
            id = get_menu_item_id(h_menu, index)
            ids.add_element(SwtLONG.new(id))
          end
          ((i += 1) - 1)
        end
      end
      if (!(@window_menu_items).nil?)
        i = 0
        while i < @window_menu_items.attr_length
          item = @window_menu_items[i]
          if (!(item).nil? && !item.is_disposed)
            index = item.get_parent.index_of(item)
            # long
            id = get_menu_item_id(h_menu, index)
            ids.add_element(SwtLONG.new(id))
          end
          ((i += 1) - 1)
        end
      end
      index = OS._get_menu_item_count(hmenu_shared) - 1
      i = index
      while i >= 0
        # long
        id = get_menu_item_id(hmenu_shared, i)
        if (ids.contains(SwtLONG.new(id)))
          OS._remove_menu(hmenu_shared, i, OS::MF_BYPOSITION)
        end
        ((i -= 1) + 1)
      end
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _request_border_space(pborderwidths)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _set_active_object(p_active_object, psz_obj_name)
      if (!(@obj_iole_in_place_active_object).nil?)
        @obj_iole_in_place_active_object._release
        @obj_iole_in_place_active_object = nil
      end
      if (!(p_active_object).equal?(0))
        @obj_iole_in_place_active_object = IOleInPlaceActiveObject.new(p_active_object)
        @obj_iole_in_place_active_object._add_ref
      end
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_border_space(pborderwidths)
      # A Control/Document can :
      # Use its own toolbars, requesting border space of a specific size, or,
      # Use no toolbars, but force the container to remove its toolbars by passing a
      # valid BORDERWIDTHS structure containing nothing but zeros in the pborderwidths parameter, or,
      # Use no toolbars but allow the in-place container to leave its toolbars up by
      # passing NULL as the pborderwidths parameter.
      if ((@obj_iole_in_place_active_object).nil?)
        return COM::S_OK
      end
      borderwidth = RECT.new
      if ((pborderwidths).equal?(0) || (@currentdoc).nil?)
        return COM::S_OK
      end
      COM._move_memory(borderwidth, pborderwidths, RECT.attr_sizeof)
      @currentdoc.set_border_space(borderwidth)
      return COM::S_OK
    end
    
    typesig { [Array.typed(MenuItem)] }
    # Specify the menu items that should appear in the Container location when an OLE Document
    # is in-place activated.
    # 
    # <p>When an OLE Document is in-place active, the Document provides its own menus but the application
    # is given the opportunity to merge some of its menus into the menubar.  The application
    # is allowed to insert its menus in three locations: File (far left), Container(middle) and Window
    # (far right just before Help).  The OLE Document retains control of the Edit, Object and Help
    # menu locations.  Note that an application can insert more than one menu into a single location.
    # 
    # <p>This method must be called before in place activation of the OLE Document.  After the Document
    # is activated, the menu bar will not be modified until a subsequent activation.
    # 
    # @param containerMenus an array of top level MenuItems to be inserted into the Container location of
    # the menubar
    def set_container_menus(container_menus)
      @container_menu_items = container_menus
    end
    
    typesig { [] }
    def get_current_document
      return @currentdoc
    end
    
    typesig { [OleClientSite] }
    def set_current_document(doc)
      @currentdoc = doc
      if (!(@currentdoc).nil? && !(@obj_iole_in_place_active_object).nil?)
        lp_rect = RECT.new
        OS._get_client_rect(self.attr_handle, lp_rect)
        @obj_iole_in_place_active_object._resize_border(lp_rect, @i_ole_in_place_frame.get_address, true)
      end
    end
    
    typesig { [Array.typed(MenuItem)] }
    # Specify the menu items that should appear in the File location when an OLE Document
    # is in-place activated.
    # 
    # <p>When an OLE Document is in-place active, the Document provides its own menus but the application
    # is given the opportunity to merge some of its menus into the menubar.  The application
    # is allowed to insert its menus in three locations: File (far left), Container(middle) and Window
    # (far right just before Help).  The OLE Document retains control of the Edit, Object and Help
    # menu locations.  Note that an application can insert more than one menu into a single location.
    # 
    # <p>This method must be called before in place activation of the OLE Document.  After the Document
    # is activated, the menu bar will not be modified until a subsequent activation.
    # 
    # @param fileMenus an array of top level MenuItems to be inserted into the File location of
    # the menubar
    def set_file_menus(file_menus)
      @file_menu_items = file_menus
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _set_menu(hmenu_shared, holemenu, hwnd_active_object)
      # long
      in_place_active_object = 0
      if (!(@obj_iole_in_place_active_object).nil?)
        in_place_active_object = @obj_iole_in_place_active_object.get_address
      end
      menubar = get_shell.get_menu_bar
      if ((menubar).nil? || menubar.is_disposed)
        return COM._ole_set_menu_descriptor(0, get_shell.attr_handle, hwnd_active_object, @i_ole_in_place_frame.get_address, in_place_active_object)
      end
      # long
      handle = menubar.get_shell.attr_handle
      if ((hmenu_shared).equal?(0) && (holemenu).equal?(0))
        # re-instate the original menu - this occurs on deactivation
        hmenu_shared = menubar.attr_handle
      end
      if ((hmenu_shared).equal?(0))
        return COM::E_FAIL
      end
      OS._set_menu(handle, hmenu_shared)
      OS._draw_menu_bar(handle)
      return COM._ole_set_menu_descriptor(holemenu, handle, hwnd_active_object, @i_ole_in_place_frame.get_address, in_place_active_object)
    end
    
    typesig { [Array.typed(MenuItem)] }
    # Set the menu items that should appear in the Window location when an OLE Document
    # is in-place activated.
    # 
    # <p>When an OLE Document is in-place active, the Document provides its own menus but the application
    # is given the opportunity to merge some of its menus into the menubar.  The application
    # is allowed to insert its menus in three locations: File (far left), Container(middle) and Window
    # (far right just before Help).  The OLE Document retains control of the Edit, Object and Help
    # menu locations.  Note that an application can insert more than one menu into a single location.
    # 
    # <p>This method must be called before in place activation of the OLE Document.  After the Document
    # is activated, the menu bar will not be modified until a subsequent activation.
    # 
    # @param windowMenus an array of top level MenuItems to be inserted into the Window location of
    # the menubar
    def set_window_menus(window_menus)
      @window_menu_items = window_menus
    end
    
    typesig { [MSG] }
    def translate_ole_accelerator(msg)
      if ((@obj_iole_in_place_active_object).nil?)
        return false
      end
      result = @obj_iole_in_place_active_object._translate_accelerator(msg)
      return (!(result).equal?(COM::S_FALSE) && !(result).equal?(COM::E_NOTIMPL))
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def _translate_accelerator(lpmsg, w_id)
      menubar = get_shell.get_menu_bar
      if ((menubar).nil? || menubar.is_disposed || !menubar.is_enabled)
        return COM::S_FALSE
      end
      if (w_id < 0)
        return COM::S_FALSE
      end
      shell = menubar.get_shell
      # long
      hwnd = shell.attr_handle
      # long
      h_accel = OS._send_message(hwnd, OS::WM_APP + 1, 0, 0)
      if ((h_accel).equal?(0))
        return COM::S_FALSE
      end
      msg = MSG.new
      OS._move_memory(msg, lpmsg, MSG.attr_sizeof)
      result = OS._translate_accelerator(hwnd, h_accel, msg)
      return (result).equal?(0) ? COM::S_FALSE : COM::S_OK
    end
    
    private
    alias_method :initialize__ole_frame, :initialize
  end
  
end
