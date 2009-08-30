require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module DisplayImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class are responsible for managing the
  # connection between SWT and the underlying operating
  # system. Their most important function is to implement
  # the SWT event loop in terms of the platform event model.
  # They also provide various methods for accessing information
  # about the operating system, and have overall control over
  # the operating system resources which SWT allocates.
  # <p>
  # Applications which are built with SWT will <em>almost always</em>
  # require only a single display. In particular, some platforms
  # which SWT supports will not allow more than one <em>active</em>
  # display. In other words, some platforms do not support
  # creating a new display if one already exists that has not been
  # sent the <code>dispose()</code> message.
  # <p>
  # In SWT, the thread which creates a <code>Display</code>
  # instance is distinguished as the <em>user-interface thread</em>
  # for that display.
  # </p>
  # The user-interface thread for a particular display has the
  # following special attributes:
  # <ul>
  # <li>
  # The event loop for that display must be run from the thread.
  # </li>
  # <li>
  # Some SWT API methods (notably, most of the public methods in
  # <code>Widget</code> and its subclasses), may only be called
  # from the thread. (To support multi-threaded user-interface
  # applications, class <code>Display</code> provides inter-thread
  # communication methods which allow threads other than the
  # user-interface thread to request that it perform operations
  # on their behalf.)
  # </li>
  # <li>
  # The thread is not allowed to construct other
  # <code>Display</code>s until that display has been disposed.
  # (Note that, this is in addition to the restriction mentioned
  # above concerning platform support for multiple displays. Thus,
  # the only way to have multiple simultaneously active displays,
  # even on platforms which support it, is to have multiple threads.)
  # </li>
  # </ul>
  # Enforcing these attributes allows SWT to be implemented directly
  # on the underlying operating system's event model. This has
  # numerous benefits including smaller footprint, better use of
  # resources, safer memory management, clearer program logic,
  # better performance, and fewer overall operating system threads
  # required. The down side however, is that care must be taken
  # (only) when constructing multi-threaded applications to use the
  # inter-thread communication mechanisms which this class provides
  # when required.
  # </p><p>
  # All SWT API methods which may only be called from the user-interface
  # thread are distinguished in their documentation by indicating that
  # they throw the "<code>ERROR_THREAD_INVALID_ACCESS</code>"
  # SWT exception.
  # </p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Close, Dispose, Settings</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # @see #syncExec
  # @see #asyncExec
  # @see #wake
  # @see #readAndDispatch
  # @see #sleep
  # @see Device#dispose
  # @see <a href="http://www.eclipse.org/swt/snippets/#display">Display snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Display < DisplayImports.const_get :Device
    include_class_members DisplayImports
    
    # the handle to the OS message queue
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :msg
    alias_method :attr_msg, :msg
    undef_method :msg
    alias_method :attr_msg=, :msg=
    undef_method :msg=
    
    # Windows and Events
    attr_accessor :event_queue
    alias_method :attr_event_queue, :event_queue
    undef_method :event_queue
    alias_method :attr_event_queue=, :event_queue=
    undef_method :event_queue=
    
    attr_accessor :window_callback
    alias_method :attr_window_callback, :window_callback
    undef_method :window_callback
    alias_method :attr_window_callback=, :window_callback=
    undef_method :window_callback=
    
    # long
    attr_accessor :window_proc
    alias_method :attr_window_proc, :window_proc
    undef_method :window_proc
    alias_method :attr_window_proc=, :window_proc=
    undef_method :window_proc=
    
    attr_accessor :thread_id
    alias_method :attr_thread_id, :thread_id
    undef_method :thread_id
    alias_method :attr_thread_id=, :thread_id=
    undef_method :thread_id=
    
    attr_accessor :window_class
    alias_method :attr_window_class, :window_class
    undef_method :window_class
    alias_method :attr_window_class=, :window_class=
    undef_method :window_class=
    
    attr_accessor :window_shadow_class
    alias_method :attr_window_shadow_class, :window_shadow_class
    undef_method :window_shadow_class
    alias_method :attr_window_shadow_class=, :window_shadow_class=
    undef_method :window_shadow_class=
    
    class_module.module_eval {
      
      def window_class_count
        defined?(@@window_class_count) ? @@window_class_count : @@window_class_count= 0
      end
      alias_method :attr_window_class_count, :window_class_count
      
      def window_class_count=(value)
        @@window_class_count = value
      end
      alias_method :attr_window_class_count=, :window_class_count=
      
      const_set_lazy(:WindowName) { "SWT_Window" }
      const_attr_reader  :WindowName
      
      # $NON-NLS-1$
      const_set_lazy(:WindowShadowName) { "SWT_WindowShadow" }
      const_attr_reader  :WindowShadowName
    }
    
    # $NON-NLS-1$
    attr_accessor :event_table
    alias_method :attr_event_table, :event_table
    undef_method :event_table
    alias_method :attr_event_table=, :event_table=
    undef_method :event_table=
    
    attr_accessor :filter_table
    alias_method :attr_filter_table, :filter_table
    undef_method :filter_table
    alias_method :attr_filter_table=, :filter_table=
    undef_method :filter_table=
    
    # Widget Table
    attr_accessor :free_slot
    alias_method :attr_free_slot, :free_slot
    undef_method :free_slot
    alias_method :attr_free_slot=, :free_slot=
    undef_method :free_slot=
    
    attr_accessor :index_table
    alias_method :attr_index_table, :index_table
    undef_method :index_table
    alias_method :attr_index_table=, :index_table=
    undef_method :index_table=
    
    attr_accessor :last_control
    alias_method :attr_last_control, :last_control
    undef_method :last_control
    alias_method :attr_last_control=, :last_control=
    undef_method :last_control=
    
    attr_accessor :last_get_control
    alias_method :attr_last_get_control, :last_get_control
    undef_method :last_get_control
    alias_method :attr_last_get_control=, :last_get_control=
    undef_method :last_get_control=
    
    # long
    attr_accessor :last_hwnd
    alias_method :attr_last_hwnd, :last_hwnd
    undef_method :last_hwnd
    alias_method :attr_last_hwnd=, :last_hwnd=
    undef_method :last_hwnd=
    
    attr_accessor :last_get_hwnd
    alias_method :attr_last_get_hwnd, :last_get_hwnd
    undef_method :last_get_hwnd
    alias_method :attr_last_get_hwnd=, :last_get_hwnd=
    undef_method :last_get_hwnd=
    
    attr_accessor :control_table
    alias_method :attr_control_table, :control_table
    undef_method :control_table
    alias_method :attr_control_table=, :control_table=
    undef_method :control_table=
    
    class_module.module_eval {
      const_set_lazy(:GROW_SIZE) { 1024 }
      const_attr_reader  :GROW_SIZE
      
      const_set_lazy(:USE_PROPERTY) { !OS::IsWinCE }
      const_attr_reader  :USE_PROPERTY
      
      when_class_loaded do
        if (USE_PROPERTY)
          const_set :SWT_OBJECT_INDEX, OS._global_add_atom(TCHAR.new(0, "SWT_OBJECT_INDEX", true)) # $NON-NLS-1$
        else
          const_set :SWT_OBJECT_INDEX, 0
        end
      end
      
      # Startup info
      
      def lp_startup_info
        defined?(@@lp_startup_info) ? @@lp_startup_info : @@lp_startup_info= nil
      end
      alias_method :attr_lp_startup_info, :lp_startup_info
      
      def lp_startup_info=(value)
        @@lp_startup_info = value
      end
      alias_method :attr_lp_startup_info=, :lp_startup_info=
      
      when_class_loaded do
        if (!OS::IsWinCE)
          self.attr_lp_startup_info = STARTUPINFO.new
          self.attr_lp_startup_info.attr_cb = STARTUPINFO.attr_sizeof
          OS._get_startup_info(self.attr_lp_startup_info)
        end
      end
    }
    
    # XP Themes
    # long
    attr_accessor :h_button_theme
    alias_method :attr_h_button_theme, :h_button_theme
    undef_method :h_button_theme
    alias_method :attr_h_button_theme=, :h_button_theme=
    undef_method :h_button_theme=
    
    attr_accessor :h_edit_theme
    alias_method :attr_h_edit_theme, :h_edit_theme
    undef_method :h_edit_theme
    alias_method :attr_h_edit_theme=, :h_edit_theme=
    undef_method :h_edit_theme=
    
    attr_accessor :h_explorer_bar_theme
    alias_method :attr_h_explorer_bar_theme, :h_explorer_bar_theme
    undef_method :h_explorer_bar_theme
    alias_method :attr_h_explorer_bar_theme=, :h_explorer_bar_theme=
    undef_method :h_explorer_bar_theme=
    
    attr_accessor :h_scroll_bar_theme
    alias_method :attr_h_scroll_bar_theme, :h_scroll_bar_theme
    undef_method :h_scroll_bar_theme
    alias_method :attr_h_scroll_bar_theme=, :h_scroll_bar_theme=
    undef_method :h_scroll_bar_theme=
    
    attr_accessor :h_tab_theme
    alias_method :attr_h_tab_theme, :h_tab_theme
    undef_method :h_tab_theme
    alias_method :attr_h_tab_theme=, :h_tab_theme=
    undef_method :h_tab_theme=
    
    class_module.module_eval {
      const_set_lazy(:BUTTON) { Array.typed(::Java::Char).new([Character.new(?B.ord), Character.new(?U.ord), Character.new(?T.ord), Character.new(?T.ord), Character.new(?O.ord), Character.new(?N.ord), 0]) }
      const_attr_reader  :BUTTON
      
      const_set_lazy(:EDIT) { Array.typed(::Java::Char).new([Character.new(?E.ord), Character.new(?D.ord), Character.new(?I.ord), Character.new(?T.ord), 0]) }
      const_attr_reader  :EDIT
      
      const_set_lazy(:EXPLORER) { Array.typed(::Java::Char).new([Character.new(?E.ord), Character.new(?X.ord), Character.new(?P.ord), Character.new(?L.ord), Character.new(?O.ord), Character.new(?R.ord), Character.new(?E.ord), Character.new(?R.ord), 0]) }
      const_attr_reader  :EXPLORER
      
      const_set_lazy(:EXPLORERBAR) { Array.typed(::Java::Char).new([Character.new(?E.ord), Character.new(?X.ord), Character.new(?P.ord), Character.new(?L.ord), Character.new(?O.ord), Character.new(?R.ord), Character.new(?E.ord), Character.new(?R.ord), Character.new(?B.ord), Character.new(?A.ord), Character.new(?R.ord), 0]) }
      const_attr_reader  :EXPLORERBAR
      
      const_set_lazy(:SCROLLBAR) { Array.typed(::Java::Char).new([Character.new(?S.ord), Character.new(?C.ord), Character.new(?R.ord), Character.new(?O.ord), Character.new(?L.ord), Character.new(?L.ord), Character.new(?B.ord), Character.new(?A.ord), Character.new(?R.ord), 0]) }
      const_attr_reader  :SCROLLBAR
      
      const_set_lazy(:LISTVIEW) { Array.typed(::Java::Char).new([Character.new(?L.ord), Character.new(?I.ord), Character.new(?S.ord), Character.new(?T.ord), Character.new(?V.ord), Character.new(?I.ord), Character.new(?E.ord), Character.new(?W.ord), 0]) }
      const_attr_reader  :LISTVIEW
      
      const_set_lazy(:TAB) { Array.typed(::Java::Char).new([Character.new(?T.ord), Character.new(?A.ord), Character.new(?B.ord), 0]) }
      const_attr_reader  :TAB
      
      const_set_lazy(:TREEVIEW) { Array.typed(::Java::Char).new([Character.new(?T.ord), Character.new(?R.ord), Character.new(?E.ord), Character.new(?E.ord), Character.new(?V.ord), Character.new(?I.ord), Character.new(?E.ord), Character.new(?W.ord), 0]) }
      const_attr_reader  :TREEVIEW
    }
    
    # Focus
    attr_accessor :focus_event
    alias_method :attr_focus_event, :focus_event
    undef_method :focus_event
    alias_method :attr_focus_event=, :focus_event=
    undef_method :focus_event=
    
    attr_accessor :focus_control
    alias_method :attr_focus_control, :focus_control
    undef_method :focus_control
    alias_method :attr_focus_control=, :focus_control=
    undef_method :focus_control=
    
    # Menus
    attr_accessor :bars
    alias_method :attr_bars, :bars
    undef_method :bars
    alias_method :attr_bars=, :bars=
    undef_method :bars=
    
    attr_accessor :popups
    alias_method :attr_popups, :popups
    undef_method :popups
    alias_method :attr_popups=, :popups=
    undef_method :popups=
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    class_module.module_eval {
      # The start value for WM_COMMAND id's.
      # Windows reserves the values 0..100.
      # 
      # The SmartPhone SWT resource file reserves
      # the values 101..107.
      const_set_lazy(:ID_START) { 108 }
      const_attr_reader  :ID_START
    }
    
    # Filter Hook
    attr_accessor :msg_filter_callback
    alias_method :attr_msg_filter_callback, :msg_filter_callback
    undef_method :msg_filter_callback
    alias_method :attr_msg_filter_callback=, :msg_filter_callback=
    undef_method :msg_filter_callback=
    
    # long
    attr_accessor :msg_filter_proc
    alias_method :attr_msg_filter_proc, :msg_filter_proc
    undef_method :msg_filter_proc
    alias_method :attr_msg_filter_proc=, :msg_filter_proc=
    undef_method :msg_filter_proc=
    
    attr_accessor :filter_hook
    alias_method :attr_filter_hook, :filter_hook
    undef_method :filter_hook
    alias_method :attr_filter_hook=, :filter_hook=
    undef_method :filter_hook=
    
    attr_accessor :hook_msg
    alias_method :attr_hook_msg, :hook_msg
    undef_method :hook_msg
    alias_method :attr_hook_msg=, :hook_msg=
    undef_method :hook_msg=
    
    attr_accessor :run_drag_drop
    alias_method :attr_run_drag_drop, :run_drag_drop
    undef_method :run_drag_drop
    alias_method :attr_run_drag_drop=, :run_drag_drop=
    undef_method :run_drag_drop=
    
    attr_accessor :drag_cancelled
    alias_method :attr_drag_cancelled, :drag_cancelled
    undef_method :drag_cancelled
    alias_method :attr_drag_cancelled=, :drag_cancelled=
    undef_method :drag_cancelled=
    
    # Idle Hook
    attr_accessor :foreground_idle_callback
    alias_method :attr_foreground_idle_callback, :foreground_idle_callback
    undef_method :foreground_idle_callback
    alias_method :attr_foreground_idle_callback=, :foreground_idle_callback=
    undef_method :foreground_idle_callback=
    
    # long
    attr_accessor :foreground_idle_proc
    alias_method :attr_foreground_idle_proc, :foreground_idle_proc
    undef_method :foreground_idle_proc
    alias_method :attr_foreground_idle_proc=, :foreground_idle_proc=
    undef_method :foreground_idle_proc=
    
    attr_accessor :idle_hook
    alias_method :attr_idle_hook, :idle_hook
    undef_method :idle_hook
    alias_method :attr_idle_hook=, :idle_hook=
    undef_method :idle_hook=
    
    # Message Hook and Embedding
    attr_accessor :ignore_next_key
    alias_method :attr_ignore_next_key, :ignore_next_key
    undef_method :ignore_next_key
    alias_method :attr_ignore_next_key=, :ignore_next_key=
    undef_method :ignore_next_key=
    
    attr_accessor :get_msg_callback
    alias_method :attr_get_msg_callback, :get_msg_callback
    undef_method :get_msg_callback
    alias_method :attr_get_msg_callback=, :get_msg_callback=
    undef_method :get_msg_callback=
    
    attr_accessor :embedded_callback
    alias_method :attr_embedded_callback, :embedded_callback
    undef_method :embedded_callback
    alias_method :attr_embedded_callback=, :embedded_callback=
    undef_method :embedded_callback=
    
    # long
    attr_accessor :get_msg_proc
    alias_method :attr_get_msg_proc, :get_msg_proc
    undef_method :get_msg_proc
    alias_method :attr_get_msg_proc=, :get_msg_proc=
    undef_method :get_msg_proc=
    
    attr_accessor :msg_hook
    alias_method :attr_msg_hook, :msg_hook
    undef_method :msg_hook
    alias_method :attr_msg_hook=, :msg_hook=
    undef_method :msg_hook=
    
    attr_accessor :embedded_hwnd
    alias_method :attr_embedded_hwnd, :embedded_hwnd
    undef_method :embedded_hwnd
    alias_method :attr_embedded_hwnd=, :embedded_hwnd=
    undef_method :embedded_hwnd=
    
    attr_accessor :embedded_proc
    alias_method :attr_embedded_proc, :embedded_proc
    undef_method :embedded_proc
    alias_method :attr_embedded_proc=, :embedded_proc=
    undef_method :embedded_proc=
    
    class_module.module_eval {
      const_set_lazy(:AWT_WINDOW_CLASS) { "SunAwtWindow" }
      const_attr_reader  :AWT_WINDOW_CLASS
      
      # $NON-NLS-1$
      const_set_lazy(:ACCENTS) { Array.typed(::Java::Short).new([Character.new(?~.ord), Character.new(?`.ord), Character.new(?\'.ord), Character.new(?^.ord), Character.new(?".ord)]) }
      const_attr_reader  :ACCENTS
    }
    
    # Sync/Async Widget Communication
    attr_accessor :synchronizer
    alias_method :attr_synchronizer, :synchronizer
    undef_method :synchronizer
    alias_method :attr_synchronizer=, :synchronizer=
    undef_method :synchronizer=
    
    attr_accessor :run_messages
    alias_method :attr_run_messages, :run_messages
    undef_method :run_messages
    alias_method :attr_run_messages=, :run_messages=
    undef_method :run_messages=
    
    attr_accessor :run_messages_in_idle
    alias_method :attr_run_messages_in_idle, :run_messages_in_idle
    undef_method :run_messages_in_idle
    alias_method :attr_run_messages_in_idle=, :run_messages_in_idle=
    undef_method :run_messages_in_idle=
    
    attr_accessor :run_messages_in_message_proc
    alias_method :attr_run_messages_in_message_proc, :run_messages_in_message_proc
    undef_method :run_messages_in_message_proc
    alias_method :attr_run_messages_in_message_proc=, :run_messages_in_message_proc=
    undef_method :run_messages_in_message_proc=
    
    class_module.module_eval {
      const_set_lazy(:RUN_MESSAGES_IN_IDLE_KEY) { "org.eclipse.swt.internal.win32.runMessagesInIdle" }
      const_attr_reader  :RUN_MESSAGES_IN_IDLE_KEY
      
      # $NON-NLS-1$
      const_set_lazy(:RUN_MESSAGES_IN_MESSAGE_PROC_KEY) { "org.eclipse.swt.internal.win32.runMessagesInMessageProc" }
      const_attr_reader  :RUN_MESSAGES_IN_MESSAGE_PROC_KEY
    }
    
    # $NON-NLS-1$
    attr_accessor :thread
    alias_method :attr_thread, :thread
    undef_method :thread
    alias_method :attr_thread=, :thread=
    undef_method :thread=
    
    # Display Shutdown
    attr_accessor :dispose_list
    alias_method :attr_dispose_list, :dispose_list
    undef_method :dispose_list
    alias_method :attr_dispose_list=, :dispose_list=
    undef_method :dispose_list=
    
    # System Tray
    attr_accessor :tray
    alias_method :attr_tray, :tray
    undef_method :tray
    alias_method :attr_tray=, :tray=
    undef_method :tray=
    
    attr_accessor :next_tray_id
    alias_method :attr_next_tray_id, :next_tray_id
    undef_method :next_tray_id
    alias_method :attr_next_tray_id=, :next_tray_id=
    undef_method :next_tray_id=
    
    # Timers
    # long
    attr_accessor :timer_ids
    alias_method :attr_timer_ids, :timer_ids
    undef_method :timer_ids
    alias_method :attr_timer_ids=, :timer_ids=
    undef_method :timer_ids=
    
    attr_accessor :timer_list
    alias_method :attr_timer_list, :timer_list
    undef_method :timer_list
    alias_method :attr_timer_list=, :timer_list=
    undef_method :timer_list=
    
    # long
    attr_accessor :next_timer_id
    alias_method :attr_next_timer_id, :next_timer_id
    undef_method :next_timer_id
    alias_method :attr_next_timer_id=, :next_timer_id=
    undef_method :next_timer_id=
    
    class_module.module_eval {
      # long
      const_set_lazy(:SETTINGS_ID) { 100 }
      const_attr_reader  :SETTINGS_ID
      
      const_set_lazy(:SETTINGS_DELAY) { 2000 }
      const_attr_reader  :SETTINGS_DELAY
    }
    
    # Keyboard and Mouse
    attr_accessor :click_rect
    alias_method :attr_click_rect, :click_rect
    undef_method :click_rect
    alias_method :attr_click_rect=, :click_rect=
    undef_method :click_rect=
    
    attr_accessor :click_count
    alias_method :attr_click_count, :click_count
    undef_method :click_count
    alias_method :attr_click_count=, :click_count=
    undef_method :click_count=
    
    attr_accessor :last_time
    alias_method :attr_last_time, :last_time
    undef_method :last_time
    alias_method :attr_last_time=, :last_time=
    undef_method :last_time=
    
    attr_accessor :last_button
    alias_method :attr_last_button, :last_button
    undef_method :last_button
    alias_method :attr_last_button=, :last_button=
    undef_method :last_button=
    
    # long
    attr_accessor :last_click_hwnd
    alias_method :attr_last_click_hwnd, :last_click_hwnd
    undef_method :last_click_hwnd
    alias_method :attr_last_click_hwnd=, :last_click_hwnd=
    undef_method :last_click_hwnd=
    
    attr_accessor :scroll_remainder
    alias_method :attr_scroll_remainder, :scroll_remainder
    undef_method :scroll_remainder
    alias_method :attr_scroll_remainder=, :scroll_remainder=
    undef_method :scroll_remainder=
    
    attr_accessor :last_key
    alias_method :attr_last_key, :last_key
    undef_method :last_key
    alias_method :attr_last_key=, :last_key=
    undef_method :last_key=
    
    attr_accessor :last_ascii
    alias_method :attr_last_ascii, :last_ascii
    undef_method :last_ascii
    alias_method :attr_last_ascii=, :last_ascii=
    undef_method :last_ascii=
    
    attr_accessor :last_mouse
    alias_method :attr_last_mouse, :last_mouse
    undef_method :last_mouse
    alias_method :attr_last_mouse=, :last_mouse=
    undef_method :last_mouse=
    
    attr_accessor :last_virtual
    alias_method :attr_last_virtual, :last_virtual
    undef_method :last_virtual
    alias_method :attr_last_virtual=, :last_virtual=
    undef_method :last_virtual=
    
    attr_accessor :last_null
    alias_method :attr_last_null, :last_null
    undef_method :last_null
    alias_method :attr_last_null=, :last_null=
    undef_method :last_null=
    
    attr_accessor :last_dead
    alias_method :attr_last_dead, :last_dead
    undef_method :last_dead
    alias_method :attr_last_dead=, :last_dead=
    undef_method :last_dead=
    
    attr_accessor :keyboard
    alias_method :attr_keyboard, :keyboard
    undef_method :keyboard
    alias_method :attr_keyboard=, :keyboard=
    undef_method :keyboard=
    
    attr_accessor :accel_key_hit
    alias_method :attr_accel_key_hit, :accel_key_hit
    undef_method :accel_key_hit
    alias_method :attr_accel_key_hit=, :accel_key_hit=
    undef_method :accel_key_hit=
    
    attr_accessor :mnemonic_key_hit
    alias_method :attr_mnemonic_key_hit, :mnemonic_key_hit
    undef_method :mnemonic_key_hit
    alias_method :attr_mnemonic_key_hit=, :mnemonic_key_hit=
    undef_method :mnemonic_key_hit=
    
    attr_accessor :lock_active_window
    alias_method :attr_lock_active_window, :lock_active_window
    undef_method :lock_active_window
    alias_method :attr_lock_active_window=, :lock_active_window=
    undef_method :lock_active_window=
    
    attr_accessor :capture_changed
    alias_method :attr_capture_changed, :capture_changed
    undef_method :capture_changed
    alias_method :attr_capture_changed=, :capture_changed=
    undef_method :capture_changed=
    
    attr_accessor :x_mouse
    alias_method :attr_x_mouse, :x_mouse
    undef_method :x_mouse
    alias_method :attr_x_mouse=, :x_mouse=
    undef_method :x_mouse=
    
    # Tool Tips
    attr_accessor :next_tool_tip_id
    alias_method :attr_next_tool_tip_id, :next_tool_tip_id
    undef_method :next_tool_tip_id
    alias_method :attr_next_tool_tip_id=, :next_tool_tip_id=
    undef_method :next_tool_tip_id=
    
    # MDI
    attr_accessor :ignore_restore_focus
    alias_method :attr_ignore_restore_focus, :ignore_restore_focus
    undef_method :ignore_restore_focus
    alias_method :attr_ignore_restore_focus=, :ignore_restore_focus=
    undef_method :ignore_restore_focus=
    
    attr_accessor :last_hittest_control
    alias_method :attr_last_hittest_control, :last_hittest_control
    undef_method :last_hittest_control
    alias_method :attr_last_hittest_control=, :last_hittest_control=
    undef_method :last_hittest_control=
    
    attr_accessor :last_hittest
    alias_method :attr_last_hittest, :last_hittest
    undef_method :last_hittest
    alias_method :attr_last_hittest=, :last_hittest=
    undef_method :last_hittest=
    
    # Message Only Window
    attr_accessor :message_callback
    alias_method :attr_message_callback, :message_callback
    undef_method :message_callback
    alias_method :attr_message_callback=, :message_callback=
    undef_method :message_callback=
    
    # long
    attr_accessor :hwnd_message
    alias_method :attr_hwnd_message, :hwnd_message
    undef_method :hwnd_message
    alias_method :attr_hwnd_message=, :hwnd_message=
    undef_method :hwnd_message=
    
    attr_accessor :message_proc
    alias_method :attr_message_proc, :message_proc
    undef_method :message_proc
    alias_method :attr_message_proc=, :message_proc=
    undef_method :message_proc=
    
    # System Resources
    attr_accessor :lf_system_font
    alias_method :attr_lf_system_font, :lf_system_font
    undef_method :lf_system_font
    alias_method :attr_lf_system_font=, :lf_system_font=
    undef_method :lf_system_font=
    
    attr_accessor :system_font
    alias_method :attr_system_font, :system_font
    undef_method :system_font
    alias_method :attr_system_font=, :system_font=
    undef_method :system_font=
    
    attr_accessor :error_image
    alias_method :attr_error_image, :error_image
    undef_method :error_image
    alias_method :attr_error_image=, :error_image=
    undef_method :error_image=
    
    attr_accessor :info_image
    alias_method :attr_info_image, :info_image
    undef_method :info_image
    alias_method :attr_info_image=, :info_image=
    undef_method :info_image=
    
    attr_accessor :question_image
    alias_method :attr_question_image, :question_image
    undef_method :question_image
    alias_method :attr_question_image=, :question_image=
    undef_method :question_image=
    
    attr_accessor :warning_icon
    alias_method :attr_warning_icon, :warning_icon
    undef_method :warning_icon
    alias_method :attr_warning_icon=, :warning_icon=
    undef_method :warning_icon=
    
    attr_accessor :cursors
    alias_method :attr_cursors, :cursors
    undef_method :cursors
    alias_method :attr_cursors=, :cursors=
    undef_method :cursors=
    
    attr_accessor :resources
    alias_method :attr_resources, :resources
    undef_method :resources
    alias_method :attr_resources=, :resources=
    undef_method :resources=
    
    class_module.module_eval {
      const_set_lazy(:RESOURCE_SIZE) { 1 + 4 + SWT::CURSOR_HAND + 1 }
      const_attr_reader  :RESOURCE_SIZE
    }
    
    # ImageList Cache
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
    attr_accessor :tool_image_list
    alias_method :attr_tool_image_list, :tool_image_list
    undef_method :tool_image_list
    alias_method :attr_tool_image_list=, :tool_image_list=
    undef_method :tool_image_list=
    
    attr_accessor :tool_hot_image_list
    alias_method :attr_tool_hot_image_list, :tool_hot_image_list
    undef_method :tool_hot_image_list
    alias_method :attr_tool_hot_image_list=, :tool_hot_image_list=
    undef_method :tool_hot_image_list=
    
    attr_accessor :tool_disabled_image_list
    alias_method :attr_tool_disabled_image_list, :tool_disabled_image_list
    undef_method :tool_disabled_image_list
    alias_method :attr_tool_disabled_image_list=, :tool_disabled_image_list=
    undef_method :tool_disabled_image_list=
    
    # Custom Colors for ChooseColor
    # long
    attr_accessor :lp_cust_colors
    alias_method :attr_lp_cust_colors, :lp_cust_colors
    undef_method :lp_cust_colors
    alias_method :attr_lp_cust_colors=, :lp_cust_colors=
    undef_method :lp_cust_colors=
    
    # Sort Indicators
    attr_accessor :up_arrow
    alias_method :attr_up_arrow, :up_arrow
    undef_method :up_arrow
    alias_method :attr_up_arrow=, :up_arrow=
    undef_method :up_arrow=
    
    attr_accessor :down_arrow
    alias_method :attr_down_arrow, :down_arrow
    undef_method :down_arrow
    alias_method :attr_down_arrow=, :down_arrow=
    undef_method :down_arrow=
    
    # Table
    attr_accessor :table_buffer
    alias_method :attr_table_buffer, :table_buffer
    undef_method :table_buffer
    alias_method :attr_table_buffer=, :table_buffer=
    undef_method :table_buffer=
    
    attr_accessor :hdr
    alias_method :attr_hdr, :hdr
    undef_method :hdr
    alias_method :attr_hdr=, :hdr=
    undef_method :hdr=
    
    attr_accessor :plvfi
    alias_method :attr_plvfi, :plvfi
    undef_method :plvfi
    alias_method :attr_plvfi=, :plvfi=
    undef_method :plvfi=
    
    # long
    attr_accessor :hwnd_parent
    alias_method :attr_hwnd_parent, :hwnd_parent
    undef_method :hwnd_parent
    alias_method :attr_hwnd_parent=, :hwnd_parent=
    undef_method :hwnd_parent=
    
    attr_accessor :column_count
    alias_method :attr_column_count, :column_count
    undef_method :column_count
    alias_method :attr_column_count=, :column_count=
    undef_method :column_count=
    
    attr_accessor :column_visible
    alias_method :attr_column_visible, :column_visible
    undef_method :column_visible
    alias_method :attr_column_visible=, :column_visible=
    undef_method :column_visible=
    
    # Resize and move recursion
    attr_accessor :resize_count
    alias_method :attr_resize_count, :resize_count
    undef_method :resize_count
    alias_method :attr_resize_count=, :resize_count=
    undef_method :resize_count=
    
    class_module.module_eval {
      const_set_lazy(:RESIZE_LIMIT) { 4 }
      const_attr_reader  :RESIZE_LIMIT
    }
    
    # Display Data
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    attr_accessor :keys
    alias_method :attr_keys, :keys
    undef_method :keys
    alias_method :attr_keys=, :keys=
    undef_method :keys=
    
    attr_accessor :values
    alias_method :attr_values, :values
    undef_method :values
    alias_method :attr_values=, :values=
    undef_method :values=
    
    class_module.module_eval {
      # Key Mappings
      # Keyboard and Mouse Masks
      # {OS.VK_????,	SWT.COMMAND},
      # NOT CURRENTLY USED
      # {OS.VK_LBUTTON, SWT.BUTTON1},
      # {OS.VK_MBUTTON, SWT.BUTTON3},
      # {OS.VK_RBUTTON, SWT.BUTTON2},
      # Non-Numeric Keypad Keys
      # Virtual and Ascii Keys
      # Functions Keys
      # Numeric Keypad Keys
      # {OS.VK_????,		SWT.KEYPAD_EQUAL},
      # Other keys
      # {OS.VK_????,		SWT.HELP},
      const_set_lazy(:KeyTable) { Array.typed(Array.typed(::Java::Int)).new([Array.typed(::Java::Int).new([OS::VK_MENU, SWT::ALT]), Array.typed(::Java::Int).new([OS::VK_SHIFT, SWT::SHIFT]), Array.typed(::Java::Int).new([OS::VK_CONTROL, SWT::CONTROL]), Array.typed(::Java::Int).new([OS::VK_UP, SWT::ARROW_UP]), Array.typed(::Java::Int).new([OS::VK_DOWN, SWT::ARROW_DOWN]), Array.typed(::Java::Int).new([OS::VK_LEFT, SWT::ARROW_LEFT]), Array.typed(::Java::Int).new([OS::VK_RIGHT, SWT::ARROW_RIGHT]), Array.typed(::Java::Int).new([OS::VK_PRIOR, SWT::PAGE_UP]), Array.typed(::Java::Int).new([OS::VK_NEXT, SWT::PAGE_DOWN]), Array.typed(::Java::Int).new([OS::VK_HOME, SWT::HOME]), Array.typed(::Java::Int).new([OS::VK_END, SWT::END_]), Array.typed(::Java::Int).new([OS::VK_INSERT, SWT::INSERT]), Array.typed(::Java::Int).new([OS::VK_BACK, SWT::BS]), Array.typed(::Java::Int).new([OS::VK_RETURN, SWT::CR]), Array.typed(::Java::Int).new([OS::VK_DELETE, SWT::DEL]), Array.typed(::Java::Int).new([OS::VK_ESCAPE, SWT::ESC]), Array.typed(::Java::Int).new([OS::VK_RETURN, SWT::LF]), Array.typed(::Java::Int).new([OS::VK_TAB, SWT::TAB]), Array.typed(::Java::Int).new([OS::VK_F1, SWT::F1]), Array.typed(::Java::Int).new([OS::VK_F2, SWT::F2]), Array.typed(::Java::Int).new([OS::VK_F3, SWT::F3]), Array.typed(::Java::Int).new([OS::VK_F4, SWT::F4]), Array.typed(::Java::Int).new([OS::VK_F5, SWT::F5]), Array.typed(::Java::Int).new([OS::VK_F6, SWT::F6]), Array.typed(::Java::Int).new([OS::VK_F7, SWT::F7]), Array.typed(::Java::Int).new([OS::VK_F8, SWT::F8]), Array.typed(::Java::Int).new([OS::VK_F9, SWT::F9]), Array.typed(::Java::Int).new([OS::VK_F10, SWT::F10]), Array.typed(::Java::Int).new([OS::VK_F11, SWT::F11]), Array.typed(::Java::Int).new([OS::VK_F12, SWT::F12]), Array.typed(::Java::Int).new([OS::VK_F13, SWT::F13]), Array.typed(::Java::Int).new([OS::VK_F14, SWT::F14]), Array.typed(::Java::Int).new([OS::VK_F15, SWT::F15]), Array.typed(::Java::Int).new([OS::VK_MULTIPLY, SWT::KEYPAD_MULTIPLY]), Array.typed(::Java::Int).new([OS::VK_ADD, SWT::KEYPAD_ADD]), Array.typed(::Java::Int).new([OS::VK_RETURN, SWT::KEYPAD_CR]), Array.typed(::Java::Int).new([OS::VK_SUBTRACT, SWT::KEYPAD_SUBTRACT]), Array.typed(::Java::Int).new([OS::VK_DECIMAL, SWT::KEYPAD_DECIMAL]), Array.typed(::Java::Int).new([OS::VK_DIVIDE, SWT::KEYPAD_DIVIDE]), Array.typed(::Java::Int).new([OS::VK_NUMPAD0, SWT::KEYPAD_0]), Array.typed(::Java::Int).new([OS::VK_NUMPAD1, SWT::KEYPAD_1]), Array.typed(::Java::Int).new([OS::VK_NUMPAD2, SWT::KEYPAD_2]), Array.typed(::Java::Int).new([OS::VK_NUMPAD3, SWT::KEYPAD_3]), Array.typed(::Java::Int).new([OS::VK_NUMPAD4, SWT::KEYPAD_4]), Array.typed(::Java::Int).new([OS::VK_NUMPAD5, SWT::KEYPAD_5]), Array.typed(::Java::Int).new([OS::VK_NUMPAD6, SWT::KEYPAD_6]), Array.typed(::Java::Int).new([OS::VK_NUMPAD7, SWT::KEYPAD_7]), Array.typed(::Java::Int).new([OS::VK_NUMPAD8, SWT::KEYPAD_8]), Array.typed(::Java::Int).new([OS::VK_NUMPAD9, SWT::KEYPAD_9]), Array.typed(::Java::Int).new([OS::VK_CAPITAL, SWT::CAPS_LOCK]), Array.typed(::Java::Int).new([OS::VK_NUMLOCK, SWT::NUM_LOCK]), Array.typed(::Java::Int).new([OS::VK_SCROLL, SWT::SCROLL_LOCK]), Array.typed(::Java::Int).new([OS::VK_PAUSE, SWT::PAUSE]), Array.typed(::Java::Int).new([OS::VK_CANCEL, SWT::BREAK]), Array.typed(::Java::Int).new([OS::VK_SNAPSHOT, SWT::PRINT_SCREEN]), ]) }
      const_attr_reader  :KeyTable
      
      # Multiple Displays
      
      def default
        defined?(@@default) ? @@default : @@default= nil
      end
      alias_method :attr_default, :default
      
      def default=(value)
        @@default = value
      end
      alias_method :attr_default=, :default=
      
      
      def displays
        defined?(@@displays) ? @@displays : @@displays= Array.typed(Display).new(4) { nil }
      end
      alias_method :attr_displays, :displays
      
      def displays=(value)
        @@displays = value
      end
      alias_method :attr_displays=, :displays=
    }
    
    # Multiple Monitors
    attr_accessor :monitors
    alias_method :attr_monitors, :monitors
    undef_method :monitors
    alias_method :attr_monitors=, :monitors=
    undef_method :monitors=
    
    attr_accessor :monitor_count
    alias_method :attr_monitor_count, :monitor_count
    undef_method :monitor_count
    alias_method :attr_monitor_count=, :monitor_count=
    undef_method :monitor_count=
    
    # Modality
    attr_accessor :modal_shells
    alias_method :attr_modal_shells, :modal_shells
    undef_method :modal_shells
    alias_method :attr_modal_shells=, :modal_shells=
    undef_method :modal_shells=
    
    attr_accessor :modal_dialog
    alias_method :attr_modal_dialog, :modal_dialog
    undef_method :modal_dialog
    alias_method :attr_modal_dialog=, :modal_dialog=
    undef_method :modal_dialog=
    
    class_module.module_eval {
      
      def trim_enabled
        defined?(@@trim_enabled) ? @@trim_enabled : @@trim_enabled= false
      end
      alias_method :attr_trim_enabled, :trim_enabled
      
      def trim_enabled=(value)
        @@trim_enabled = value
      end
      alias_method :attr_trim_enabled=, :trim_enabled=
      
      # Private SWT Window Messages
      const_set_lazy(:SWT_GETACCELCOUNT) { OS::WM_APP }
      const_attr_reader  :SWT_GETACCELCOUNT
      
      const_set_lazy(:SWT_GETACCEL) { OS::WM_APP + 1 }
      const_attr_reader  :SWT_GETACCEL
      
      const_set_lazy(:SWT_KEYMSG) { OS::WM_APP + 2 }
      const_attr_reader  :SWT_KEYMSG
      
      const_set_lazy(:SWT_DESTROY) { OS::WM_APP + 3 }
      const_attr_reader  :SWT_DESTROY
      
      const_set_lazy(:SWT_TRAYICONMSG) { OS::WM_APP + 4 }
      const_attr_reader  :SWT_TRAYICONMSG
      
      const_set_lazy(:SWT_NULL) { OS::WM_APP + 5 }
      const_attr_reader  :SWT_NULL
      
      const_set_lazy(:SWT_RUNASYNC) { OS::WM_APP + 6 }
      const_attr_reader  :SWT_RUNASYNC
      
      
      def swt_taskbarcreated
        defined?(@@swt_taskbarcreated) ? @@swt_taskbarcreated : @@swt_taskbarcreated= 0
      end
      alias_method :attr_swt_taskbarcreated, :swt_taskbarcreated
      
      def swt_taskbarcreated=(value)
        @@swt_taskbarcreated = value
      end
      alias_method :attr_swt_taskbarcreated=, :swt_taskbarcreated=
      
      
      def swt_restorecaret
        defined?(@@swt_restorecaret) ? @@swt_restorecaret : @@swt_restorecaret= 0
      end
      alias_method :attr_swt_restorecaret, :swt_restorecaret
      
      def swt_restorecaret=(value)
        @@swt_restorecaret = value
      end
      alias_method :attr_swt_restorecaret=, :swt_restorecaret=
      
      
      def di_getdragimage
        defined?(@@di_getdragimage) ? @@di_getdragimage : @@di_getdragimage= 0
      end
      alias_method :attr_di_getdragimage, :di_getdragimage
      
      def di_getdragimage=(value)
        @@di_getdragimage = value
      end
      alias_method :attr_di_getdragimage=, :di_getdragimage=
    }
    
    # Workaround for Adobe Reader 7.0
    attr_accessor :hit_count
    alias_method :attr_hit_count, :hit_count
    undef_method :hit_count
    alias_method :attr_hit_count=, :hit_count=
    undef_method :hit_count=
    
    class_module.module_eval {
      # Package Name
      const_set_lazy(:PACKAGE_PREFIX) { "org.eclipse.swt.widgets." }
      const_attr_reader  :PACKAGE_PREFIX
      
      # $NON-NLS-1$
      # 
      # This code is intentionally commented.  In order
      # to support CLDC, .class cannot be used because
      # it does not compile on some Java compilers when
      # they are targeted for CLDC.
      # 
      # static {
      # String name = Display.class.getName ();
      # int index = name.lastIndexOf ('.');
      # PACKAGE_PREFIX = name.substring (0, index + 1);
      # }
      # 
      # TEMPORARY CODE.  Install the runnable that
      # gets the current display. This code will
      # be removed in the future.
      when_class_loaded do
        self.attr_device_finder = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members Display
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            device = get_current
            if ((device).nil?)
              device = get_default
            end
            set_device(device)
          end
          
          typesig { [Object] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
      end
      
      typesig { [Device] }
      # TEMPORARY CODE.
      def set_device(device)
        self.attr_current_device = device
      end
    }
    
    typesig { [] }
    # Constructs a new instance of this class.
    # <p>
    # Note: The resulting display is marked as the <em>current</em>
    # display. If this is the first display which has been
    # constructed since the application started, it is also
    # marked as the <em>default</em> display.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if called from a thread that already created an existing display</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see #getCurrent
    # @see #getDefault
    # @see Widget#checkSubclass
    # @see Shell
    def initialize
      initialize__display(nil)
    end
    
    typesig { [DeviceData] }
    # Constructs a new instance of this class using the parameter.
    # 
    # @param data the device data
    def initialize(data)
      @msg = nil
      @event_queue = nil
      @window_callback = nil
      @window_proc = 0
      @thread_id = 0
      @window_class = nil
      @window_shadow_class = nil
      @event_table = nil
      @filter_table = nil
      @free_slot = 0
      @index_table = nil
      @last_control = nil
      @last_get_control = nil
      @last_hwnd = 0
      @last_get_hwnd = 0
      @control_table = nil
      @h_button_theme = 0
      @h_edit_theme = 0
      @h_explorer_bar_theme = 0
      @h_scroll_bar_theme = 0
      @h_tab_theme = 0
      @focus_event = 0
      @focus_control = nil
      @bars = nil
      @popups = nil
      @items = nil
      @msg_filter_callback = nil
      @msg_filter_proc = 0
      @filter_hook = 0
      @hook_msg = nil
      @run_drag_drop = false
      @drag_cancelled = false
      @foreground_idle_callback = nil
      @foreground_idle_proc = 0
      @idle_hook = 0
      @ignore_next_key = false
      @get_msg_callback = nil
      @embedded_callback = nil
      @get_msg_proc = 0
      @msg_hook = 0
      @embedded_hwnd = 0
      @embedded_proc = 0
      @synchronizer = nil
      @run_messages = false
      @run_messages_in_idle = false
      @run_messages_in_message_proc = false
      @thread = nil
      @dispose_list = nil
      @tray = nil
      @next_tray_id = 0
      @timer_ids = nil
      @timer_list = nil
      @next_timer_id = 0
      @click_rect = nil
      @click_count = 0
      @last_time = 0
      @last_button = 0
      @last_click_hwnd = 0
      @scroll_remainder = 0
      @last_key = 0
      @last_ascii = 0
      @last_mouse = 0
      @last_virtual = false
      @last_null = false
      @last_dead = false
      @keyboard = nil
      @accel_key_hit = false
      @mnemonic_key_hit = false
      @lock_active_window = false
      @capture_changed = false
      @x_mouse = false
      @next_tool_tip_id = 0
      @ignore_restore_focus = false
      @last_hittest_control = nil
      @last_hittest = 0
      @message_callback = nil
      @hwnd_message = 0
      @message_proc = 0
      @lf_system_font = nil
      @system_font = nil
      @error_image = nil
      @info_image = nil
      @question_image = nil
      @warning_icon = nil
      @cursors = nil
      @resources = nil
      @image_list = nil
      @tool_image_list = nil
      @tool_hot_image_list = nil
      @tool_disabled_image_list = nil
      @lp_cust_colors = 0
      @up_arrow = nil
      @down_arrow = nil
      @table_buffer = nil
      @hdr = nil
      @plvfi = nil
      @hwnd_parent = 0
      @column_count = 0
      @column_visible = nil
      @resize_count = 0
      @data = nil
      @keys = nil
      @values = nil
      @monitors = nil
      @monitor_count = 0
      @modal_shells = nil
      @modal_dialog = nil
      @hit_count = 0
      super(data)
      @msg = MSG.new
      @hook_msg = MSG.new
      @run_drag_drop = true
      @drag_cancelled = false
      @synchronizer = Synchronizer.new(self)
      @run_messages = true
      @run_messages_in_idle = false
      @run_messages_in_message_proc = true
      @next_timer_id = SETTINGS_ID + 1
      @keyboard = Array.typed(::Java::Byte).new(256) { 0 }
      @cursors = Array.typed(Cursor).new(SWT::CURSOR_HAND + 1) { nil }
      @hdr = NMHDR.new
      @plvfi = NMLVDISPINFO.new
      @monitors = nil
      @monitor_count = 0
    end
    
    typesig { [] }
    def __get_focus_control
      return find_control(OS._get_focus)
    end
    
    typesig { [Menu] }
    def add_bar(menu)
      if ((@bars).nil?)
        @bars = Array.typed(Menu).new(4) { nil }
      end
      length = @bars.attr_length
      i = 0
      while i < length
        if ((@bars[i]).equal?(menu))
          return
        end
        i += 1
      end
      index = 0
      while (index < length)
        if ((@bars[index]).nil?)
          break
        end
        index += 1
      end
      if ((index).equal?(length))
        new_bars = Array.typed(Menu).new(length + 4) { nil }
        System.arraycopy(@bars, 0, new_bars, 0, length)
        @bars = new_bars
      end
      @bars[index] = menu
    end
    
    typesig { [::Java::Int, Control] }
    # long
    def add_control(handle, control)
      if ((handle).equal?(0))
        return
      end
      if ((@free_slot).equal?(-1))
        length = (@free_slot = @index_table.attr_length) + GROW_SIZE
        new_index_table = Array.typed(::Java::Int).new(length) { 0 }
        new_control_table = Array.typed(Control).new(length) { nil }
        System.arraycopy(@index_table, 0, new_index_table, 0, @free_slot)
        System.arraycopy(@control_table, 0, new_control_table, 0, @free_slot)
        i = @free_slot
        while i < length - 1
          new_index_table[i] = i + 1
          i += 1
        end
        new_index_table[length - 1] = -1
        @index_table = new_index_table
        @control_table = new_control_table
      end
      if (USE_PROPERTY)
        OS._set_prop(handle, SWT_OBJECT_INDEX, @free_slot + 1)
      else
        OS._set_window_long_ptr(handle, OS::GWLP_USERDATA, @free_slot + 1)
      end
      old_slot = @free_slot
      @free_slot = @index_table[old_slot]
      @index_table[old_slot] = -2
      @control_table[old_slot] = control
    end
    
    typesig { [::Java::Int, Listener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an event of the given type occurs anywhere
    # in a widget. The event type is one of the event constants
    # defined in class <code>SWT</code>. When the event does occur,
    # the listener is notified by sending it the <code>handleEvent()</code>
    # message.
    # <p>
    # Setting the type of an event to <code>SWT.None</code> from
    # within the <code>handleEvent()</code> method can be used to
    # change the event type and stop subsequent Java listeners
    # from running. Because event filters run before other listeners,
    # event filters can both block other listeners and set arbitrary
    # fields within an event. For this reason, event filters are both
    # powerful and dangerous. They should generally be avoided for
    # performance, debugging and code maintenance reasons.
    # </p>
    # 
    # @param eventType the type of event to listen for
    # @param listener the listener which should be notified when the event occurs
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Listener
    # @see SWT
    # @see #removeFilter
    # @see #removeListener
    # 
    # @since 3.0
    def add_filter(event_type, listener)
      check_device
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@filter_table).nil?)
        @filter_table = EventTable.new
      end
      @filter_table.hook(event_type, listener)
    end
    
    typesig { [::Java::Int, Listener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an event of the given type occurs. The event
    # type is one of the event constants defined in class <code>SWT</code>.
    # When the event does occur in the display, the listener is notified by
    # sending it the <code>handleEvent()</code> message.
    # 
    # @param eventType the type of event to listen for
    # @param listener the listener which should be notified when the event occurs
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Listener
    # @see SWT
    # @see #removeListener
    # 
    # @since 2.0
    def add_listener(event_type, listener)
      check_device
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        @event_table = EventTable.new
      end
      @event_table.hook(event_type, listener)
    end
    
    typesig { [MenuItem] }
    def add_menu_item(item)
      if ((@items).nil?)
        @items = Array.typed(MenuItem).new(64) { nil }
      end
      i = 0
      while i < @items.attr_length
        if ((@items[i]).nil?)
          item.attr_id = i + ID_START
          @items[i] = item
          return
        end
        i += 1
      end
      item.attr_id = @items.attr_length + ID_START
      new_items = Array.typed(MenuItem).new(@items.attr_length + 64) { nil }
      new_items[@items.attr_length] = item
      System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
      @items = new_items
    end
    
    typesig { [Menu] }
    def add_popup(menu)
      if ((@popups).nil?)
        @popups = Array.typed(Menu).new(4) { nil }
      end
      length = @popups.attr_length
      i = 0
      while i < length
        if ((@popups[i]).equal?(menu))
          return
        end
        i += 1
      end
      index = 0
      while (index < length)
        if ((@popups[index]).nil?)
          break
        end
        index += 1
      end
      if ((index).equal?(length))
        new_popups = Array.typed(Menu).new(length + 4) { nil }
        System.arraycopy(@popups, 0, new_popups, 0, length)
        @popups = new_popups
      end
      @popups[index] = menu
    end
    
    typesig { [::Java::Int] }
    def ascii_key(key)
      if (OS::IsWinCE)
        return 0
      end
      # Get the current keyboard.
      i = 0
      while i < @keyboard.attr_length
        @keyboard[i] = 0
        i += 1
      end
      if (!OS._get_keyboard_state(@keyboard))
        return 0
      end
      # Translate the key to ASCII or UNICODE using the virtual keyboard
      if (OS::IsUnicode)
        result = CharArray.new(1)
        if ((OS._to_unicode(key, key, @keyboard, result, 1, 0)).equal?(1))
          return result[0]
        end
      else
        result = Array.typed(::Java::Short).new(1) { 0 }
        if ((OS._to_ascii(key, key, @keyboard, result, 0)).equal?(1))
          return result[0]
        end
      end
      return 0
    end
    
    typesig { [Runnable] }
    # Causes the <code>run()</code> method of the runnable to
    # be invoked by the user-interface thread at the next
    # reasonable opportunity. The caller of this method continues
    # to run in parallel, and is not notified when the
    # runnable has completed.  Specifying <code>null</code> as the
    # runnable simply wakes the user-interface thread when run.
    # <p>
    # Note that at the time the runnable is invoked, widgets
    # that have the receiver as their display may have been
    # disposed. Therefore, it is necessary to check for this
    # case inside the runnable before accessing the widget.
    # </p>
    # 
    # @param runnable code to run on the user-interface thread or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #syncExec
    def async_exec(runnable)
      synchronized((Device)) do
        if (is_disposed)
          error(SWT::ERROR_DEVICE_DISPOSED)
        end
        @synchronizer.async_exec(runnable)
      end
    end
    
    typesig { [] }
    # Causes the system hardware to emit a short sound
    # (if it supports this capability).
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def beep
      check_device
      OS._message_beep(OS::MB_OK)
    end
    
    typesig { [] }
    # Checks that this class can be subclassed.
    # <p>
    # IMPORTANT: See the comment in <code>Widget.checkSubclass()</code>.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see Widget#checkSubclass
    def check_subclass
      if (!is_valid_class(get_class))
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    def check_device
      if ((@thread).nil?)
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (!(@thread).equal?(JavaThread.current_thread))
        # Bug in IBM JVM 1.6.  For some reason, under
        # conditions that are yet to be full understood,
        # Thread.currentThread() is either returning null
        # or a different instance from the one that was
        # saved when the Display was created.  This is
        # possibly a JIT problem because modifying this
        # method to print logging information when the
        # error happens seems to fix the problem.  The
        # fix is to use operating system calls to verify
        # that the current thread is not the Display thread.
        # 
        # NOTE: Despite the fact that Thread.currentThread()
        # is used in other places, the failure has not been
        # observed in all places where it is called.
        if (!(@thread_id).equal?(OS._get_current_thread_id))
          error(SWT::ERROR_THREAD_INVALID_ACCESS)
        end
      end
      if (is_disposed)
        error(SWT::ERROR_DEVICE_DISPOSED)
      end
    end
    
    class_module.module_eval {
      typesig { [JavaThread, ::Java::Boolean] }
      def check_display(thread, multiple)
        synchronized((Device)) do
          i = 0
          while i < self.attr_displays.attr_length
            if (!(self.attr_displays[i]).nil?)
              if (!multiple)
                SWT.error(SWT::ERROR_NOT_IMPLEMENTED, nil, " [multiple displays]")
              end # $NON-NLS-1$
              if ((self.attr_displays[i].attr_thread).equal?(thread))
                SWT.error(SWT::ERROR_THREAD_INVALID_ACCESS)
              end
            end
            i += 1
          end
        end
      end
    }
    
    typesig { [Shell] }
    def clear_modal(shell)
      if ((@modal_shells).nil?)
        return
      end
      index = 0
      length = @modal_shells.attr_length
      while (index < length)
        if ((@modal_shells[index]).equal?(shell))
          break
        end
        if ((@modal_shells[index]).nil?)
          return
        end
        index += 1
      end
      if ((index).equal?(length))
        return
      end
      System.arraycopy(@modal_shells, index + 1, @modal_shells, index, (length -= 1) - index)
      @modal_shells[length] = nil
      if ((index).equal?(0) && (@modal_shells[0]).nil?)
        @modal_shells = nil
      end
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shells[i].update_modal
        i += 1
      end
    end
    
    typesig { [::Java::Int] }
    def control_key(key)
      # 64
      upper = RJava.cast_to_int(OS._char_upper(RJava.cast_to_short(key)))
      if (64 <= upper && upper <= 95)
        return upper & 0xbf
      end
      return key
    end
    
    typesig { [] }
    # Requests that the connection between SWT and the underlying
    # operating system be closed.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Device#dispose
    # 
    # @since 2.0
    def close
      check_device
      event = Event.new
      send_event(SWT::Close, event)
      if (event.attr_doit)
        dispose
      end
    end
    
    typesig { [DeviceData] }
    # Creates the device in the operating system.  If the device
    # does not have a handle, this method may do nothing depending
    # on the device.
    # <p>
    # This method is called before <code>init</code>.
    # </p>
    # 
    # @param data the DeviceData which describes the receiver
    # 
    # @see #init
    def create(data)
      check_subclass
      check_display(@thread = JavaThread.current_thread, true)
      create_display(data)
      register(self)
      if ((self.attr_default).nil?)
        self.attr_default = self
      end
    end
    
    typesig { [DeviceData] }
    def create_display(data)
    end
    
    class_module.module_eval {
      typesig { [Image] }
      # long
      def create32bit_dib(image)
        transparent_pixel = -1
        alpha = -1
        # long
        h_mask = 0
        h_bitmap = 0
        alpha_data = nil
        case (image.attr_type)
        when SWT::ICON
          info = ICONINFO.new
          OS._get_icon_info(image.attr_handle, info)
          h_bitmap = info.attr_hbm_color
          h_mask = info.attr_hbm_mask
        when SWT::BITMAP
          data = image.get_image_data
          h_bitmap = image.attr_handle
          alpha = data.attr_alpha
          alpha_data = data.attr_alpha_data
          transparent_pixel = data.attr_transparent_pixel
        end
        bm = BITMAP.new
        OS._get_object(h_bitmap, BITMAP.attr_sizeof, bm)
        img_width = bm.attr_bm_width
        img_height = bm.attr_bm_height
        # long
        h_dc = OS._get_dc(0)
        # long
        src_hdc = OS._create_compatible_dc(h_dc)
        # long
        old_src_bitmap = OS._select_object(src_hdc, h_bitmap)
        # long
        mem_hdc = OS._create_compatible_dc(h_dc)
        bmi_header = BITMAPINFOHEADER.new
        bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
        bmi_header.attr_bi_width = img_width
        bmi_header.attr_bi_height = -img_height
        bmi_header.attr_bi_planes = 1
        bmi_header.attr_bi_bit_count = RJava.cast_to_short(32)
        bmi_header.attr_bi_compression = OS::BI_RGB
        bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof) { 0 }
        OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
        # long
        # long
        p_bits = Array.typed(::Java::Int).new(1) { 0 }
        # long
        mem_dib = OS._create_dibsection(0, bmi, OS::DIB_RGB_COLORS, p_bits, 0, 0)
        if ((mem_dib).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # long
        old_mem_bitmap = OS._select_object(mem_hdc, mem_dib)
        dib_bm = BITMAP.new
        OS._get_object(mem_dib, BITMAP.attr_sizeof, dib_bm)
        size_in_bytes = dib_bm.attr_bm_width_bytes * dib_bm.attr_bm_height
        OS._bit_blt(mem_hdc, 0, 0, img_width, img_height, src_hdc, 0, 0, OS::SRCCOPY)
        red = 0
        green = 0
        blue = 0
        if (!(transparent_pixel).equal?(-1))
          if (bm.attr_bm_bits_pixel <= 8)
            color = Array.typed(::Java::Byte).new(4) { 0 }
            OS._get_dibcolor_table(src_hdc, transparent_pixel, 1, color)
            blue = color[0]
            green = color[1]
            red = color[2]
          else
            case (bm.attr_bm_bits_pixel)
            when 16
              blue = ((transparent_pixel & 0x1f) << 3)
              green = ((transparent_pixel & 0x3e0) >> 2)
              red = ((transparent_pixel & 0x7c00) >> 7)
            when 24
              blue = ((transparent_pixel & 0xff0000) >> 16)
              green = ((transparent_pixel & 0xff00) >> 8)
              red = (transparent_pixel & 0xff)
            when 32
              blue = ((transparent_pixel & -0x1000000) >> 24)
              green = ((transparent_pixel & 0xff0000) >> 16)
              red = ((transparent_pixel & 0xff00) >> 8)
            end
          end
        end
        src_data = Array.typed(::Java::Byte).new(size_in_bytes) { 0 }
        OS._move_memory(src_data, p_bits[0], size_in_bytes)
        if (!(h_mask).equal?(0))
          OS._select_object(src_hdc, h_mask)
          y = 0
          dp = 0
          while y < img_height
            x = 0
            while x < img_width
              if (!(OS._get_pixel(src_hdc, x, y)).equal?(0))
                src_data[dp + 0] = src_data[dp + 1] = src_data[dp + 2] = src_data[dp + 3] = 0
              else
                src_data[dp + 3] = 0xff
              end
              dp += 4
              (x += 1)
            end
            (y += 1)
          end
        else
          if (!(alpha).equal?(-1))
            y = 0
            dp = 0
            while y < img_height
              x = 0
              while x < img_width
                src_data[dp + 3] = alpha
                if ((src_data[dp + 3]).equal?(0))
                  src_data[dp + 0] = src_data[dp + 1] = src_data[dp + 2] = 0
                end
                dp += 4
                (x += 1)
              end
              (y += 1)
            end
          else
            if (!(alpha_data).nil?)
              y = 0
              dp = 0
              ap = 0
              while y < img_height
                x = 0
                while x < img_width
                  src_data[dp + 3] = alpha_data[((ap += 1) - 1)]
                  if ((src_data[dp + 3]).equal?(0))
                    src_data[dp + 0] = src_data[dp + 1] = src_data[dp + 2] = 0
                  end
                  dp += 4
                  (x += 1)
                end
                (y += 1)
              end
            else
              if (!(transparent_pixel).equal?(-1))
                y = 0
                dp = 0
                while y < img_height
                  x = 0
                  while x < img_width
                    if ((src_data[dp]).equal?(blue) && (src_data[dp + 1]).equal?(green) && (src_data[dp + 2]).equal?(red))
                      src_data[dp + 0] = src_data[dp + 1] = src_data[dp + 2] = src_data[dp + 3] = 0
                    else
                      src_data[dp + 3] = 0xff
                    end
                    dp += 4
                    (x += 1)
                  end
                  (y += 1)
                end
              else
                y = 0
                dp = 0
                while y < img_height
                  x = 0
                  while x < img_width
                    src_data[dp + 3] = 0xff
                    dp += 4
                    (x += 1)
                  end
                  (y += 1)
                end
              end
            end
          end
        end
        OS._move_memory(p_bits[0], src_data, size_in_bytes)
        OS._select_object(src_hdc, old_src_bitmap)
        OS._select_object(mem_hdc, old_mem_bitmap)
        OS._delete_object(src_hdc)
        OS._delete_object(mem_hdc)
        OS._release_dc(0, h_dc)
        if (!(h_bitmap).equal?(image.attr_handle) && !(h_bitmap).equal?(0))
          OS._delete_object(h_bitmap)
        end
        if (!(h_mask).equal?(0))
          OS._delete_object(h_mask)
        end
        return mem_dib
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def create32bit_dib(h_bitmap, alpha, alpha_data, transparent_pixel)
        bm = BITMAP.new
        OS._get_object(h_bitmap, BITMAP.attr_sizeof, bm)
        img_width = bm.attr_bm_width
        img_height = bm.attr_bm_height
        # long
        h_dc = OS._get_dc(0)
        # long
        src_hdc = OS._create_compatible_dc(h_dc)
        # long
        old_src_bitmap = OS._select_object(src_hdc, h_bitmap)
        # long
        mem_hdc = OS._create_compatible_dc(h_dc)
        bmi_header = BITMAPINFOHEADER.new
        bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
        bmi_header.attr_bi_width = img_width
        bmi_header.attr_bi_height = -img_height
        bmi_header.attr_bi_planes = 1
        bmi_header.attr_bi_bit_count = RJava.cast_to_short(32)
        bmi_header.attr_bi_compression = OS::BI_RGB
        bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof) { 0 }
        OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
        # long
        # long
        p_bits = Array.typed(::Java::Int).new(1) { 0 }
        # long
        mem_dib = OS._create_dibsection(0, bmi, OS::DIB_RGB_COLORS, p_bits, 0, 0)
        if ((mem_dib).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # long
        old_mem_bitmap = OS._select_object(mem_hdc, mem_dib)
        dib_bm = BITMAP.new
        OS._get_object(mem_dib, BITMAP.attr_sizeof, dib_bm)
        size_in_bytes = dib_bm.attr_bm_width_bytes * dib_bm.attr_bm_height
        OS._bit_blt(mem_hdc, 0, 0, img_width, img_height, src_hdc, 0, 0, OS::SRCCOPY)
        red = 0
        green = 0
        blue = 0
        if (!(transparent_pixel).equal?(-1))
          if (bm.attr_bm_bits_pixel <= 8)
            color = Array.typed(::Java::Byte).new(4) { 0 }
            OS._get_dibcolor_table(src_hdc, transparent_pixel, 1, color)
            blue = color[0]
            green = color[1]
            red = color[2]
          else
            case (bm.attr_bm_bits_pixel)
            when 16
              blue = ((transparent_pixel & 0x1f) << 3)
              green = ((transparent_pixel & 0x3e0) >> 2)
              red = ((transparent_pixel & 0x7c00) >> 7)
            when 24
              blue = ((transparent_pixel & 0xff0000) >> 16)
              green = ((transparent_pixel & 0xff00) >> 8)
              red = (transparent_pixel & 0xff)
            when 32
              blue = ((transparent_pixel & -0x1000000) >> 24)
              green = ((transparent_pixel & 0xff0000) >> 16)
              red = ((transparent_pixel & 0xff00) >> 8)
            end
          end
        end
        OS._select_object(src_hdc, old_src_bitmap)
        OS._select_object(mem_hdc, old_mem_bitmap)
        OS._delete_object(src_hdc)
        OS._delete_object(mem_hdc)
        OS._release_dc(0, h_dc)
        src_data = Array.typed(::Java::Byte).new(size_in_bytes) { 0 }
        OS._move_memory(src_data, p_bits[0], size_in_bytes)
        if (!(alpha).equal?(-1))
          y = 0
          dp = 0
          while y < img_height
            x = 0
            while x < img_width
              src_data[dp + 3] = alpha
              dp += 4
              (x += 1)
            end
            (y += 1)
          end
        else
          if (!(alpha_data).nil?)
            y = 0
            dp = 0
            ap = 0
            while y < img_height
              x = 0
              while x < img_width
                src_data[dp + 3] = alpha_data[((ap += 1) - 1)]
                dp += 4
                (x += 1)
              end
              (y += 1)
            end
          else
            if (!(transparent_pixel).equal?(-1))
              y = 0
              dp = 0
              while y < img_height
                x = 0
                while x < img_width
                  if ((src_data[dp]).equal?(blue) && (src_data[dp + 1]).equal?(green) && (src_data[dp + 2]).equal?(red))
                    src_data[dp + 3] = 0
                  else
                    src_data[dp + 3] = 0xff
                  end
                  dp += 4
                  (x += 1)
                end
                (y += 1)
              end
            end
          end
        end
        OS._move_memory(p_bits[0], src_data, size_in_bytes)
        return mem_dib
      end
      
      typesig { [Image] }
      def create_icon(image)
        device = image.get_device
        data = image.get_image_data
        if ((data.attr_alpha).equal?(-1) && (data.attr_alpha_data).nil?)
          mask = data.get_transparency_mask
          return Image.new(device, data, mask)
        end
        width = data.attr_width
        height = data.attr_height
        # long
        h_mask = 0
        h_bitmap = 0
        # long
        h_dc = device.internal_new__gc(nil)
        # long
        dst_hdc = OS._create_compatible_dc(h_dc)
        old_dst_bitmap = 0
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1))
          h_bitmap = Display.create32bit_dib(image.attr_handle, data.attr_alpha, data.attr_alpha_data, data.attr_transparent_pixel)
          h_mask = OS._create_bitmap(width, height, 1, 1, nil)
          old_dst_bitmap = OS._select_object(dst_hdc, h_mask)
          OS._pat_blt(dst_hdc, 0, 0, width, height, OS::BLACKNESS)
        else
          h_mask = Display.create_mask_from_alpha(data, width, height)
          # Icons need black pixels where the mask is transparent
          h_bitmap = OS._create_compatible_bitmap(h_dc, width, height)
          old_dst_bitmap = OS._select_object(dst_hdc, h_bitmap)
          # long
          src_hdc = OS._create_compatible_dc(h_dc)
          # long
          old_src_bitmap = OS._select_object(src_hdc, image.attr_handle)
          OS._pat_blt(dst_hdc, 0, 0, width, height, OS::BLACKNESS)
          OS._bit_blt(dst_hdc, 0, 0, width, height, src_hdc, 0, 0, OS::SRCINVERT)
          OS._select_object(src_hdc, h_mask)
          OS._bit_blt(dst_hdc, 0, 0, width, height, src_hdc, 0, 0, OS::SRCAND)
          OS._select_object(src_hdc, image.attr_handle)
          OS._bit_blt(dst_hdc, 0, 0, width, height, src_hdc, 0, 0, OS::SRCINVERT)
          OS._select_object(src_hdc, old_src_bitmap)
          OS._delete_dc(src_hdc)
        end
        OS._select_object(dst_hdc, old_dst_bitmap)
        OS._delete_dc(dst_hdc)
        device.internal_dispose__gc(h_dc, nil)
        info = ICONINFO.new
        info.attr_f_icon = true
        info.attr_hbm_color = h_bitmap
        info.attr_hbm_mask = h_mask
        # long
        h_icon = OS._create_icon_indirect(info)
        if ((h_icon).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        OS._delete_object(h_bitmap)
        OS._delete_object(h_mask)
        return Image.win32_new(device, SWT::ICON, h_icon)
      end
      
      typesig { [ImageData, ::Java::Int, ::Java::Int] }
      # long
      def create_mask_from_alpha(data, dest_width, dest_height)
        src_width = data.attr_width
        src_height = data.attr_height
        mask = ImageData.internal_new(src_width, src_height, 1, PaletteData.new(Array.typed(RGB).new([RGB.new(0, 0, 0), RGB.new(0xff, 0xff, 0xff)])), 2, nil, 1, nil, nil, -1, -1, -1, 0, 0, 0, 0)
        ap = 0
        y = 0
        while y < mask.attr_height
          x = 0
          while x < mask.attr_width
            mask.set_pixel(x, y, (data.attr_alpha_data[((ap += 1) - 1)] & 0xff) <= 127 ? 1 : 0)
            x += 1
          end
          y += 1
        end
        # long
        h_mask = OS._create_bitmap(src_width, src_height, 1, 1, mask.attr_data)
        if (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height))
          # long
          hdc = OS._get_dc(0)
          # long
          hdc1 = OS._create_compatible_dc(hdc)
          OS._select_object(hdc1, h_mask)
          # long
          hdc2 = OS._create_compatible_dc(hdc)
          # long
          h_mask2 = OS._create_bitmap(dest_width, dest_height, 1, 1, nil)
          OS._select_object(hdc2, h_mask2)
          if (!OS::IsWinCE)
            OS._set_stretch_blt_mode(hdc2, OS::COLORONCOLOR)
          end
          OS._stretch_blt(hdc2, 0, 0, dest_width, dest_height, hdc1, 0, 0, src_width, src_height, OS::SRCCOPY)
          OS._delete_dc(hdc1)
          OS._delete_dc(hdc2)
          OS._release_dc(0, hdc)
          OS._delete_object(h_mask)
          h_mask = h_mask2
        end
        return h_mask
      end
      
      typesig { [Display] }
      def deregister(display)
        synchronized((Device)) do
          i = 0
          while i < self.attr_displays.attr_length
            if ((display).equal?(self.attr_displays[i]))
              self.attr_displays[i] = nil
            end
            i += 1
          end
        end
      end
    }
    
    typesig { [] }
    # Destroys the device in the operating system and releases
    # the device's handle.  If the device does not have a handle,
    # this method may do nothing depending on the device.
    # <p>
    # This method is called after <code>release</code>.
    # </p>
    # @see Device#dispose
    # @see #release
    def destroy
      if ((self).equal?(self.attr_default))
        self.attr_default = nil
      end
      deregister(self)
      destroy_display
    end
    
    typesig { [] }
    def destroy_display
    end
    
    typesig { [Runnable] }
    # Causes the <code>run()</code> method of the runnable to
    # be invoked by the user-interface thread just before the
    # receiver is disposed.  Specifying a <code>null</code> runnable
    # is ignored.
    # 
    # @param runnable code to run at dispose time.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def dispose_exec(runnable)
      check_device
      if ((@dispose_list).nil?)
        @dispose_list = Array.typed(Runnable).new(4) { nil }
      end
      i = 0
      while i < @dispose_list.attr_length
        if ((@dispose_list[i]).nil?)
          @dispose_list[i] = runnable
          return
        end
        i += 1
      end
      new_dispose_list = Array.typed(Runnable).new(@dispose_list.attr_length + 4) { nil }
      System.arraycopy(@dispose_list, 0, new_dispose_list, 0, @dispose_list.attr_length)
      new_dispose_list[@dispose_list.attr_length] = runnable
      @dispose_list = new_dispose_list
    end
    
    typesig { [] }
    def draw_menu_bars
      if ((@bars).nil?)
        return
      end
      i = 0
      while i < @bars.attr_length
        menu = @bars[i]
        if (!(menu).nil? && !menu.is_disposed)
          menu.update
        end
        i += 1
      end
      @bars = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def embedded_proc(hwnd, msg, w_param, l_param)
      # 64
      case (RJava.cast_to_int(msg))
      when SWT_KEYMSG
        key_msg = MSG.new
        OS._move_memory(key_msg, l_param, MSG.attr_sizeof)
        OS._translate_message(key_msg)
        OS._dispatch_message(key_msg)
        # long
        h_heap = OS._get_process_heap
        OS._heap_free(h_heap, 0, l_param)
      when SWT_DESTROY
        OS._destroy_window(hwnd)
        if (!(@embedded_callback).nil?)
          @embedded_callback.dispose
        end
        if (!(@get_msg_callback).nil?)
          @get_msg_callback.dispose
        end
        @embedded_callback = @get_msg_callback = nil
        @embedded_proc = @get_msg_proc = 0
      end
      # 64
      return OS._def_window_proc(hwnd, RJava.cast_to_int(msg), w_param, l_param)
    end
    
    typesig { [::Java::Int] }
    # Does whatever display specific cleanup is required, and then
    # uses the code in <code>SWTError.error</code> to handle the error.
    # 
    # @param code the descriptive error code
    # 
    # @see SWT#error(int)
    def error(code)
      SWT.error(code)
    end
    
    typesig { [Event] }
    def filter_event(event)
      if (!(@filter_table).nil?)
        @filter_table.send_event(event)
      end
      return false
    end
    
    typesig { [::Java::Int] }
    def filters(event_type)
      if ((@filter_table).nil?)
        return false
      end
      return @filter_table.hooks(event_type)
    end
    
    typesig { [MSG] }
    def filter_message(msg)
      message = msg.attr_message
      if (OS::WM_KEYFIRST <= message && message <= OS::WM_KEYLAST)
        control = find_control(msg.attr_hwnd)
        if (!(control).nil?)
          if (translate_accelerator(msg, control) || translate_mnemonic(msg, control) || translate_traversal(msg, control))
            @last_ascii = @last_key = 0
            @last_virtual = @last_null = @last_dead = false
            return true
          end
        end
      end
      return false
    end
    
    typesig { [::Java::Int] }
    # long
    def find_control(handle)
      if ((handle).equal?(0))
        return nil
      end
      # long
      hwnd_owner = 0
      begin
        control = get_control(handle)
        if (!(control).nil?)
          return control
        end
        hwnd_owner = OS._get_window(handle, OS::GW_OWNER)
        handle = OS._get_parent(handle)
      end while (!(handle).equal?(0) && !(handle).equal?(hwnd_owner))
      return nil
    end
    
    typesig { [::Java::Int] }
    # Given the operating system handle for a widget, returns
    # the instance of the <code>Widget</code> subclass which
    # represents it in the currently running application, if
    # such exists, or null if no matching widget can be found.
    # <p>
    # <b>IMPORTANT:</b> This method should not be called from
    # application code. The arguments are platform-specific.
    # </p>
    # 
    # @param handle the handle for the widget
    # @return the SWT widget that the handle represents
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # long
    def find_widget(handle)
      check_device
      return get_control(handle)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Given the operating system handle for a widget,
    # and widget-specific id, returns the instance of
    # the <code>Widget</code> subclass which represents
    # the handle/id pair in the currently running application,
    # if such exists, or null if no matching widget can be found.
    # <p>
    # <b>IMPORTANT:</b> This method should not be called from
    # application code. The arguments are platform-specific.
    # </p>
    # 
    # @param handle the handle for the widget
    # @param id the id for the subwidget (usually an item)
    # @return the SWT widget that the handle/id pair represents
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    # 
    # long
    # long
    def find_widget(handle, id)
      check_device
      # TODO - should ids be long
      control = get_control(handle)
      return !(control).nil? ? control.find_item(id) : nil
    end
    
    typesig { [Widget, ::Java::Int] }
    # Given a widget and a widget-specific id, returns the
    # instance of the <code>Widget</code> subclass which represents
    # the widget/id pair in the currently running application,
    # if such exists, or null if no matching widget can be found.
    # 
    # @param widget the widget
    # @param id the id for the subwidget (usually an item)
    # @return the SWT subwidget (usually an item) that the widget/id pair represents
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.3
    # 
    # long
    def find_widget(widget, id)
      check_device
      # TODO - should ids be long
      if (widget.is_a?(Control))
        return find_widget((widget).attr_handle, id)
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def foreground_idle_proc(code, w_param, l_param)
      if (code >= 0)
        if (@run_messages && !(get_message_count).equal?(0))
          if (@run_messages_in_idle)
            if (@run_messages_in_message_proc)
              OS._post_message(@hwnd_message, SWT_RUNASYNC, 0, 0)
            else
              run_async_messages(false)
            end
          end
          wake_thread
        end
      end
      # 64
      return OS._call_next_hook_ex(@idle_hook, RJava.cast_to_int(code), w_param, l_param)
    end
    
    class_module.module_eval {
      typesig { [JavaThread] }
      # Returns the display which the given thread is the
      # user-interface thread for, or null if the given thread
      # is not a user-interface thread for any display.  Specifying
      # <code>null</code> as the thread will return <code>null</code>
      # for the display.
      # 
      # @param thread the user-interface thread
      # @return the display for the given thread
      def find_display(thread)
        synchronized((Device)) do
          i = 0
          while i < self.attr_displays.attr_length
            display = self.attr_displays[i]
            if (!(display).nil? && (display.attr_thread).equal?(thread))
              return display
            end
            i += 1
          end
          return nil
        end
      end
    }
    
    typesig { [] }
    # Returns the currently active <code>Shell</code>, or null
    # if no shell belonging to the currently running application
    # is active.
    # 
    # @return the active shell or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_active_shell
      check_device
      control = find_control(OS._get_active_window)
      return !(control).nil? ? control.get_shell : nil
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location. Note that
    # on multi-monitor systems the origin can be negative.
    # 
    # @return the bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_bounds
      check_device
      if (OS._get_system_metrics(OS::SM_CMONITORS) < 2)
        width = OS._get_system_metrics(OS::SM_CXSCREEN)
        height = OS._get_system_metrics(OS::SM_CYSCREEN)
        return Rectangle.new(0, 0, width, height)
      end
      x = OS._get_system_metrics(OS::SM_XVIRTUALSCREEN)
      y = OS._get_system_metrics(OS::SM_YVIRTUALSCREEN)
      width = OS._get_system_metrics(OS::SM_CXVIRTUALSCREEN)
      height = OS._get_system_metrics(OS::SM_CYVIRTUALSCREEN)
      return Rectangle.new(x, y, width, height)
    end
    
    class_module.module_eval {
      typesig { [] }
      # Returns the display which the currently running thread is
      # the user-interface thread for, or null if the currently
      # running thread is not a user-interface thread for any display.
      # 
      # @return the current display
      def get_current
        return find_display(JavaThread.current_thread)
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def get_click_count(type, button, hwnd, l_param)
      case (type)
      # FALL THROUGH
      # FALL THROUGH
      when SWT::MouseDown
        double_click = OS._get_double_click_time
        if ((@click_rect).nil?)
          @click_rect = RECT.new
        end
        delta_time = Math.abs(@last_time - get_last_event_time)
        pt = POINT.new
        OS._pointstopoint(pt, l_param)
        if ((@last_click_hwnd).equal?(hwnd) && (@last_button).equal?(button) && (delta_time <= double_click) && OS._pt_in_rect(@click_rect, pt))
          @click_count += 1
        else
          @click_count = 1
        end
        @last_button = button
        @last_click_hwnd = hwnd
        @last_time = get_last_event_time
        x_inset = OS._get_system_metrics(OS::SM_CXDOUBLECLK) / 2
        y_inset = OS._get_system_metrics(OS::SM_CYDOUBLECLK) / 2
        x = OS._get_x_lparam(l_param)
        y = OS._get_y_lparam(l_param)
        OS._set_rect(@click_rect, x - x_inset, y - y_inset, x + x_inset, y + y_inset)
        return @click_count
      when SWT::MouseDoubleClick
        @last_button = button
        @last_click_hwnd = hwnd
        @last_time = get_last_event_time
        x_inset = OS._get_system_metrics(OS::SM_CXDOUBLECLK) / 2
        y_inset = OS._get_system_metrics(OS::SM_CYDOUBLECLK) / 2
        x = OS._get_x_lparam(l_param)
        y = OS._get_y_lparam(l_param)
        OS._set_rect(@click_rect, x - x_inset, y - y_inset, x + x_inset, y + y_inset)
        return @click_count
      when SWT::MouseUp
        return @click_count
      end
      return 0
    end
    
    typesig { [] }
    # Returns a rectangle which describes the area of the
    # receiver which is capable of displaying data.
    # 
    # @return the client area
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getBounds
    def get_client_area
      check_device
      if (OS._get_system_metrics(OS::SM_CMONITORS) < 2)
        rect = RECT.new
        OS._system_parameters_info(OS::SPI_GETWORKAREA, 0, rect, 0)
        width = rect.attr_right - rect.attr_left
        height = rect.attr_bottom - rect.attr_top
        return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
      end
      x = OS._get_system_metrics(OS::SM_XVIRTUALSCREEN)
      y = OS._get_system_metrics(OS::SM_YVIRTUALSCREEN)
      width = OS._get_system_metrics(OS::SM_CXVIRTUALSCREEN)
      height = OS._get_system_metrics(OS::SM_CYVIRTUALSCREEN)
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [::Java::Int] }
    # long
    def get_control(handle)
      if ((handle).equal?(0))
        return nil
      end
      if (!(@last_control).nil? && (@last_hwnd).equal?(handle))
        return @last_control
      end
      if (!(@last_get_control).nil? && (@last_get_hwnd).equal?(handle))
        return @last_get_control
      end
      index = 0
      if (USE_PROPERTY)
        # 64
        index = RJava.cast_to_int(OS._get_prop(handle, SWT_OBJECT_INDEX)) - 1
      else
        # 64
        index = RJava.cast_to_int(OS._get_window_long_ptr(handle, OS::GWLP_USERDATA)) - 1
      end
      if (0 <= index && index < @control_table.attr_length)
        control = @control_table[index]
        # Because GWL_USERDATA can be used by native widgets that
        # do not belong to SWT, it is possible that GWL_USERDATA
        # could return an index that is in the range of the table,
        # but was not put there by SWT.  Therefore, it is necessary
        # to check the handle of the control that is in the table
        # against the handle that provided the GWL_USERDATA.
        if (!(control).nil? && control.check_handle(handle))
          @last_get_hwnd = handle
          @last_get_control = control
          return control
        end
      end
      return nil
    end
    
    typesig { [] }
    # Returns the control which the on-screen pointer is currently
    # over top of, or null if it is not currently over one of the
    # controls built by the currently running application.
    # 
    # @return the control under the cursor
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_cursor_control
      check_device
      pt = POINT.new
      if (!OS._get_cursor_pos(pt))
        return nil
      end
      return find_control(OS._window_from_point(pt))
    end
    
    typesig { [] }
    # Returns the location of the on-screen pointer relative
    # to the top left corner of the screen.
    # 
    # @return the cursor location
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_cursor_location
      check_device
      pt = POINT.new
      OS._get_cursor_pos(pt)
      return Point.new(pt.attr_x, pt.attr_y)
    end
    
    typesig { [] }
    # Returns an array containing the recommended cursor sizes.
    # 
    # @return the array of cursor sizes
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def get_cursor_sizes
      check_device
      return Array.typed(Point).new([Point.new(OS._get_system_metrics(OS::SM_CXCURSOR), OS._get_system_metrics(OS::SM_CYCURSOR))])
    end
    
    class_module.module_eval {
      typesig { [] }
      # Returns the default display. One is created (making the
      # thread that invokes this method its user-interface thread)
      # if it did not already exist.
      # 
      # @return the default display
      def get_default
        synchronized((Device)) do
          if ((self.attr_default).nil?)
            self.attr_default = Display.new
          end
          return self.attr_default
        end
      end
      
      typesig { [Class] }
      def is_valid_class(clazz)
        name = clazz.get_name
        index = name.last_index_of(Character.new(?..ord))
        return (name.substring(0, index + 1) == PACKAGE_PREFIX)
      end
    }
    
    typesig { [String] }
    # Returns the application defined property of the receiver
    # with the specified name, or null if it has not been set.
    # <p>
    # Applications may have associated arbitrary objects with the
    # receiver in this fashion. If the objects stored in the
    # properties need to be notified when the display is disposed
    # of, it is the application's responsibility to provide a
    # <code>disposeExec()</code> handler which does so.
    # </p>
    # 
    # @param key the name of the property
    # @return the value of the property or null if it has not been set
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the key is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #setData(String, Object)
    # @see #disposeExec(Runnable)
    def get_data(key)
      check_device
      if ((key).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((key == RUN_MESSAGES_IN_IDLE_KEY))
        return Boolean.new(@run_messages_in_idle)
      end
      if ((key == RUN_MESSAGES_IN_MESSAGE_PROC_KEY))
        return Boolean.new(@run_messages_in_message_proc)
      end
      if ((@keys).nil?)
        return nil
      end
      i = 0
      while i < @keys.attr_length
        if ((@keys[i] == key))
          return @values[i]
        end
        i += 1
      end
      return nil
    end
    
    typesig { [] }
    # Returns the application defined, display specific data
    # associated with the receiver, or null if it has not been
    # set. The <em>display specific data</em> is a single,
    # unnamed field that is stored with every display.
    # <p>
    # Applications may put arbitrary objects in this field. If
    # the object stored in the display specific data needs to
    # be notified when the display is disposed of, it is the
    # application's responsibility to provide a
    # <code>disposeExec()</code> handler which does so.
    # </p>
    # 
    # @return the display specific data
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #setData(Object)
    # @see #disposeExec(Runnable)
    def get_data
      check_device
      return @data
    end
    
    typesig { [] }
    # Returns the button dismissal alignment, one of <code>LEFT</code> or <code>RIGHT</code>.
    # The button dismissal alignment is the ordering that should be used when positioning the
    # default dismissal button for a dialog.  For example, in a dialog that contains an OK and
    # CANCEL button, on platforms where the button dismissal alignment is <code>LEFT</code>, the
    # button ordering should be OK/CANCEL.  When button dismissal alignment is <code>RIGHT</code>,
    # the button ordering should be CANCEL/OK.
    # 
    # @return the button dismissal order
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1
    def get_dismissal_alignment
      check_device
      return SWT::LEFT
    end
    
    typesig { [] }
    # Returns the longest duration, in milliseconds, between
    # two mouse button clicks that will be considered a
    # <em>double click</em> by the underlying operating system.
    # 
    # @return the double click time
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_double_click_time
      check_device
      return OS._get_double_click_time
    end
    
    typesig { [] }
    # Returns the control which currently has keyboard focus,
    # or null if keyboard events are not currently going to
    # any of the controls built by the currently running
    # application.
    # 
    # @return the control under the cursor
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_focus_control
      check_device
      if (!(@focus_control).nil? && !@focus_control.is_disposed)
        return @focus_control
      end
      return __get_focus_control
    end
    
    typesig { [LOGFONT] }
    def get_font_name(log_font)
      chars = nil
      if (OS::IsUnicode)
        chars = (log_font).attr_lf_face_name
      else
        chars = CharArray.new(OS::LF_FACESIZE)
        bytes = (log_font).attr_lf_face_name
        OS._multi_byte_to_wide_char(OS::CP_ACP, OS::MB_PRECOMPOSED, bytes, bytes.attr_length, chars, chars.attr_length)
      end
      index = 0
      while (index < chars.attr_length)
        if ((chars[index]).equal?(0))
          break
        end
        index += 1
      end
      return String.new(chars, 0, index)
    end
    
    typesig { [] }
    # Returns true when the high contrast mode is enabled.
    # Otherwise, false is returned.
    # <p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept.
    # </p>
    # 
    # @return the high contrast mode
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def get_high_contrast
      check_device
      if (OS::IsWinCE)
        return false
      end
      pv_param = HIGHCONTRAST.new
      pv_param.attr_cb_size = HIGHCONTRAST.attr_sizeof
      OS._system_parameters_info(OS::SPI_GETHIGHCONTRAST, 0, pv_param, 0)
      return !((pv_param.attr_dw_flags & OS::HCF_HIGHCONTRASTON)).equal?(0)
    end
    
    typesig { [] }
    # Returns the maximum allowed depth of icons on this display, in bits per pixel.
    # On some platforms, this may be different than the actual depth of the display.
    # 
    # @return the maximum icon depth
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Device#getDepth
    def get_icon_depth
      check_device
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1))
        if (get_depth >= 24)
          return 32
        end
      end
      # Use the character encoding for the default locale
      buffer1 = TCHAR.new(0, "Control Panel\\Desktop\\WindowMetrics", true) # $NON-NLS-1$
      # long
      # long
      phk_result = Array.typed(::Java::Int).new(1) { 0 }
      result = OS._reg_open_key_ex(OS::HKEY_CURRENT_USER, buffer1, 0, OS::KEY_READ, phk_result)
      if (!(result).equal?(0))
        return 4
      end
      depth = 4
      lpcb_data = Array.typed(::Java::Int).new(1) { 0 }
      # Use the character encoding for the default locale
      buffer2 = TCHAR.new(0, "Shell Icon BPP", true) # $NON-NLS-1$
      result = OS._reg_query_value_ex(phk_result[0], buffer2, 0, nil, nil, lpcb_data)
      if ((result).equal?(0))
        lp_data = TCHAR.new(0, lpcb_data[0] / TCHAR.attr_sizeof)
        result = OS._reg_query_value_ex(phk_result[0], buffer2, 0, nil, lp_data, lpcb_data)
        if ((result).equal?(0))
          begin
            depth = JavaInteger.parse_int(lp_data.to_s(0, lp_data.strlen))
          rescue NumberFormatException => e
          end
        end
      end
      OS._reg_close_key(phk_result[0])
      return depth
    end
    
    typesig { [] }
    # Returns an array containing the recommended icon sizes.
    # 
    # @return the array of icon sizes
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Decorations#setImages(Image[])
    # 
    # @since 3.0
    def get_icon_sizes
      check_device
      return Array.typed(Point).new([Point.new(OS._get_system_metrics(OS::SM_CXSMICON), OS._get_system_metrics(OS::SM_CYSMICON)), Point.new(OS._get_system_metrics(OS::SM_CXICON), OS._get_system_metrics(OS::SM_CYICON)), ])
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_image_list(style, width, height)
      if ((@image_list).nil?)
        @image_list = Array.typed(ImageList).new(4) { nil }
      end
      i = 0
      length = @image_list.attr_length
      while (i < length)
        list = @image_list[i]
        if ((list).nil?)
          break
        end
        size = list.get_image_size
        if ((size.attr_x).equal?(width) && (size.attr_y).equal?(height))
          if ((list.get_style).equal?(style))
            list.add_ref
            return list
          end
        end
        i += 1
      end
      if ((i).equal?(length))
        new_list = Array.typed(ImageList).new(length + 4) { nil }
        System.arraycopy(@image_list, 0, new_list, 0, length)
        @image_list = new_list
      end
      list = ImageList.new(style)
      @image_list[i] = list
      list.add_ref
      return list
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_image_list_tool_bar(style, width, height)
      if ((@tool_image_list).nil?)
        @tool_image_list = Array.typed(ImageList).new(4) { nil }
      end
      i = 0
      length = @tool_image_list.attr_length
      while (i < length)
        list = @tool_image_list[i]
        if ((list).nil?)
          break
        end
        size = list.get_image_size
        if ((size.attr_x).equal?(width) && (size.attr_y).equal?(height))
          if ((list.get_style).equal?(style))
            list.add_ref
            return list
          end
        end
        i += 1
      end
      if ((i).equal?(length))
        new_list = Array.typed(ImageList).new(length + 4) { nil }
        System.arraycopy(@tool_image_list, 0, new_list, 0, length)
        @tool_image_list = new_list
      end
      list = ImageList.new(style)
      @tool_image_list[i] = list
      list.add_ref
      return list
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_image_list_tool_bar_disabled(style, width, height)
      if ((@tool_disabled_image_list).nil?)
        @tool_disabled_image_list = Array.typed(ImageList).new(4) { nil }
      end
      i = 0
      length = @tool_disabled_image_list.attr_length
      while (i < length)
        list = @tool_disabled_image_list[i]
        if ((list).nil?)
          break
        end
        size = list.get_image_size
        if ((size.attr_x).equal?(width) && (size.attr_y).equal?(height))
          if ((list.get_style).equal?(style))
            list.add_ref
            return list
          end
        end
        i += 1
      end
      if ((i).equal?(length))
        new_list = Array.typed(ImageList).new(length + 4) { nil }
        System.arraycopy(@tool_disabled_image_list, 0, new_list, 0, length)
        @tool_disabled_image_list = new_list
      end
      list = ImageList.new(style)
      @tool_disabled_image_list[i] = list
      list.add_ref
      return list
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_image_list_tool_bar_hot(style, width, height)
      if ((@tool_hot_image_list).nil?)
        @tool_hot_image_list = Array.typed(ImageList).new(4) { nil }
      end
      i = 0
      length = @tool_hot_image_list.attr_length
      while (i < length)
        list = @tool_hot_image_list[i]
        if ((list).nil?)
          break
        end
        size = list.get_image_size
        if ((size.attr_x).equal?(width) && (size.attr_y).equal?(height))
          if ((list.get_style).equal?(style))
            list.add_ref
            return list
          end
        end
        i += 1
      end
      if ((i).equal?(length))
        new_list = Array.typed(ImageList).new(length + 4) { nil }
        System.arraycopy(@tool_hot_image_list, 0, new_list, 0, length)
        @tool_hot_image_list = new_list
      end
      list = ImageList.new(style)
      @tool_hot_image_list[i] = list
      list.add_ref
      return list
    end
    
    typesig { [] }
    def get_last_event_time
      return OS::IsWinCE ? OS._get_tick_count : OS._get_message_time
    end
    
    typesig { [::Java::Int] }
    def get_menu_item(id)
      if ((@items).nil?)
        return nil
      end
      id = id - ID_START
      if (0 <= id && id < @items.attr_length)
        return @items[id]
      end
      return nil
    end
    
    typesig { [] }
    def get_message_count
      return @synchronizer.get_message_count
    end
    
    typesig { [] }
    def get_modal_shell
      if ((@modal_shells).nil?)
        return nil
      end
      index = @modal_shells.attr_length
      while ((index -= 1) >= 0)
        shell = @modal_shells[index]
        if (!(shell).nil?)
          return shell
        end
      end
      return nil
    end
    
    typesig { [] }
    def get_modal_dialog
      return @modal_dialog
    end
    
    typesig { [] }
    # Returns an array of monitors attached to the device.
    # 
    # @return the array of monitors
    # 
    # @since 3.0
    def get_monitors
      check_device
      if (OS::IsWinCE || OS::WIN32_VERSION < OS._version(4, 10))
        return Array.typed(SwtMonitor).new([get_primary_monitor])
      end
      @monitors = Array.typed(SwtMonitor).new(4) { nil }
      callback = Callback.new(self, "monitorEnumProc", 4) # $NON-NLS-1$
      # long
      lpfn_enum = callback.get_address
      if ((lpfn_enum).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      OS._enum_display_monitors(0, nil, lpfn_enum, 0)
      callback.dispose
      result = Array.typed(SwtMonitor).new(@monitor_count) { nil }
      System.arraycopy(@monitors, 0, result, 0, @monitor_count)
      @monitors = nil
      @monitor_count = 0
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def get_msg_proc(code, w_param, l_param)
      if ((@embedded_hwnd).equal?(0))
        # long
        h_instance = OS._get_module_handle(nil)
        @embedded_hwnd = OS._create_window_ex(0, @window_class, nil, OS::WS_OVERLAPPED, 0, 0, 0, 0, 0, 0, h_instance, nil)
        @embedded_callback = Callback.new(self, "embeddedProc", 4) # $NON-NLS-1$
        @embedded_proc = @embedded_callback.get_address
        if ((@embedded_proc).equal?(0))
          error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        OS._set_window_long_ptr(@embedded_hwnd, OS::GWLP_WNDPROC, @embedded_proc)
      end
      if (code >= 0 && !((w_param & OS::PM_REMOVE)).equal?(0))
        msg = MSG.new
        OS._move_memory(msg, l_param, MSG.attr_sizeof)
        case (msg.attr_message)
        when OS::WM_KEYDOWN, OS::WM_KEYUP, OS::WM_SYSKEYDOWN, OS::WM_SYSKEYUP
          control = find_control(msg.attr_hwnd)
          if (!(control).nil?)
            # long
            h_heap = OS._get_process_heap
            # long
            key_msg = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, MSG.attr_sizeof)
            OS._move_memory(key_msg, msg, MSG.attr_sizeof)
            OS._post_message(@hwnd_message, SWT_KEYMSG, w_param, key_msg)
            # 64
            case (RJava.cast_to_int(msg.attr_w_param))
            when OS::VK_SHIFT, OS::VK_MENU, OS::VK_CONTROL, OS::VK_CAPITAL, OS::VK_NUMLOCK, OS::VK_SCROLL
            else
              msg.attr_message = OS::WM_NULL
              OS._move_memory(l_param, msg, MSG.attr_sizeof)
            end
          end
        end
      end
      # 64
      return OS._call_next_hook_ex(@msg_hook, RJava.cast_to_int(code), w_param, l_param)
    end
    
    typesig { [] }
    # Returns the primary monitor for that device.
    # 
    # @return the primary monitor
    # 
    # @since 3.0
    def get_primary_monitor
      check_device
      if (OS::IsWinCE || OS::WIN32_VERSION < OS._version(4, 10))
        monitor = SwtMonitor.new
        width = OS._get_system_metrics(OS::SM_CXSCREEN)
        height = OS._get_system_metrics(OS::SM_CYSCREEN)
        monitor.attr_width = width
        monitor.attr_height = height
        rect = RECT.new
        OS._system_parameters_info(OS::SPI_GETWORKAREA, 0, rect, 0)
        monitor.attr_client_x = rect.attr_left
        monitor.attr_client_y = rect.attr_top
        monitor.attr_client_width = rect.attr_right - rect.attr_left
        monitor.attr_client_height = rect.attr_bottom - rect.attr_top
        return monitor
      end
      @monitors = Array.typed(SwtMonitor).new(4) { nil }
      callback = Callback.new(self, "monitorEnumProc", 4) # $NON-NLS-1$
      # long
      lpfn_enum = callback.get_address
      if ((lpfn_enum).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      OS._enum_display_monitors(0, nil, lpfn_enum, 0)
      callback.dispose
      result = nil
      lpmi = MONITORINFO.new
      lpmi.attr_cb_size = MONITORINFO.attr_sizeof
      i = 0
      while i < @monitor_count
        monitor = @monitors[i]
        OS._get_monitor_info(@monitors[i].attr_handle, lpmi)
        if (!((lpmi.attr_dw_flags & OS::MONITORINFOF_PRIMARY)).equal?(0))
          result = monitor
          break
        end
        i += 1
      end
      @monitors = nil
      @monitor_count = 0
      return result
    end
    
    typesig { [] }
    # Returns a (possibly empty) array containing all shells which have
    # not been disposed and have the receiver as their display.
    # 
    # @return the receiver's shells
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_shells
      check_device
      index = 0
      result = Array.typed(Shell).new(16) { nil }
      i = 0
      while i < @control_table.attr_length
        control = @control_table[i]
        if (!(control).nil? && control.is_a?(Shell))
          j = 0
          while (j < index)
            if ((result[j]).equal?(control))
              break
            end
            j += 1
          end
          if ((j).equal?(index))
            if ((index).equal?(result.attr_length))
              new_result = Array.typed(Shell).new(index + 16) { nil }
              System.arraycopy(result, 0, new_result, 0, index)
              result = new_result
            end
            result[((index += 1) - 1)] = control
          end
        end
        i += 1
      end
      if ((index).equal?(result.attr_length))
        return result
      end
      new_result = Array.typed(Shell).new(index) { nil }
      System.arraycopy(result, 0, new_result, 0, index)
      return new_result
    end
    
    typesig { [::Java::Int] }
    def get_sort_image(direction)
      case (direction)
      when SWT::UP
        if (!(@up_arrow).nil?)
          return @up_arrow
        end
        c1 = get_system_color(SWT::COLOR_WIDGET_NORMAL_SHADOW)
        c2 = get_system_color(SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW)
        c3 = get_system_color(SWT::COLOR_WIDGET_BACKGROUND)
        palette = PaletteData.new(Array.typed(RGB).new([c1.get_rgb, c2.get_rgb, c3.get_rgb]))
        image_data = ImageData.new(8, 8, 4, palette)
        image_data.attr_transparent_pixel = 2
        @up_arrow = Image.new(self, image_data)
        gc = SwtGC.new(@up_arrow)
        gc.set_background(c3)
        gc.fill_rectangle(0, 0, 8, 8)
        gc.set_foreground(c1)
        line1 = Array.typed(::Java::Int).new([0, 6, 1, 6, 1, 4, 2, 4, 2, 2, 3, 2, 3, 1])
        gc.draw_polyline(line1)
        gc.set_foreground(c2)
        line2 = Array.typed(::Java::Int).new([0, 7, 7, 7, 7, 6, 6, 6, 6, 4, 5, 4, 5, 2, 4, 2, 4, 1])
        gc.draw_polyline(line2)
        gc.dispose
        return @up_arrow
      when SWT::DOWN
        if (!(@down_arrow).nil?)
          return @down_arrow
        end
        c1 = get_system_color(SWT::COLOR_WIDGET_NORMAL_SHADOW)
        c2 = get_system_color(SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW)
        c3 = get_system_color(SWT::COLOR_WIDGET_BACKGROUND)
        palette = PaletteData.new(Array.typed(RGB).new([c1.get_rgb, c2.get_rgb, c3.get_rgb]))
        image_data = ImageData.new(8, 8, 4, palette)
        image_data.attr_transparent_pixel = 2
        @down_arrow = Image.new(self, image_data)
        gc = SwtGC.new(@down_arrow)
        gc.set_background(c3)
        gc.fill_rectangle(0, 0, 8, 8)
        gc.set_foreground(c1)
        line1 = Array.typed(::Java::Int).new([7, 0, 0, 0, 0, 1, 1, 1, 1, 3, 2, 3, 2, 5, 3, 5, 3, 6])
        gc.draw_polyline(line1)
        gc.set_foreground(c2)
        line2 = Array.typed(::Java::Int).new([4, 6, 4, 5, 5, 5, 5, 3, 6, 3, 6, 1, 7, 1])
        gc.draw_polyline(line2)
        gc.dispose
        return @down_arrow
      end
      return nil
    end
    
    typesig { [] }
    # Gets the synchronizer used by the display.
    # 
    # @return the receiver's synchronizer
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.4
    def get_synchronizer
      check_device
      return @synchronizer
    end
    
    typesig { [] }
    # Returns the thread that has invoked <code>syncExec</code>
    # or null if no such runnable is currently being invoked by
    # the user-interface thread.
    # <p>
    # Note: If a runnable invoked by asyncExec is currently
    # running, this method will return null.
    # </p>
    # 
    # @return the receiver's sync-interface thread
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_sync_thread
      synchronized((Device)) do
        if (is_disposed)
          error(SWT::ERROR_DEVICE_DISPOSED)
        end
        return @synchronizer.attr_sync_thread
      end
    end
    
    typesig { [::Java::Int] }
    # Returns the matching standard color for the given
    # constant, which should be one of the color constants
    # specified in class <code>SWT</code>. Any value other
    # than one of the SWT color constants which is passed
    # in will result in the color black. This color should
    # not be free'd because it was allocated by the system,
    # not the application.
    # 
    # @param id the color constant
    # @return the matching color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see SWT
    def get_system_color(id)
      check_device
      pixel = 0x0
      case (id)
      when SWT::COLOR_WIDGET_DARK_SHADOW
        pixel = OS._get_sys_color(OS::COLOR_3DDKSHADOW)
      when SWT::COLOR_WIDGET_NORMAL_SHADOW
        pixel = OS._get_sys_color(OS::COLOR_3DSHADOW)
      when SWT::COLOR_WIDGET_LIGHT_SHADOW
        pixel = OS._get_sys_color(OS::COLOR_3DLIGHT)
      when SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW
        pixel = OS._get_sys_color(OS::COLOR_3DHIGHLIGHT)
      when SWT::COLOR_WIDGET_BACKGROUND
        pixel = OS._get_sys_color(OS::COLOR_3DFACE)
      when SWT::COLOR_WIDGET_BORDER
        pixel = OS._get_sys_color(OS::COLOR_WINDOWFRAME)
      when SWT::COLOR_WIDGET_FOREGROUND, SWT::COLOR_LIST_FOREGROUND
        pixel = OS._get_sys_color(OS::COLOR_WINDOWTEXT)
      when SWT::COLOR_LIST_BACKGROUND
        pixel = OS._get_sys_color(OS::COLOR_WINDOW)
      when SWT::COLOR_LIST_SELECTION
        pixel = OS._get_sys_color(OS::COLOR_HIGHLIGHT)
      when SWT::COLOR_LIST_SELECTION_TEXT
        pixel = OS._get_sys_color(OS::COLOR_HIGHLIGHTTEXT)
      when SWT::COLOR_INFO_FOREGROUND
        pixel = OS._get_sys_color(OS::COLOR_INFOTEXT)
      when SWT::COLOR_INFO_BACKGROUND
        pixel = OS._get_sys_color(OS::COLOR_INFOBK)
      when SWT::COLOR_TITLE_FOREGROUND
        pixel = OS._get_sys_color(OS::COLOR_CAPTIONTEXT)
      when SWT::COLOR_TITLE_BACKGROUND
        pixel = OS._get_sys_color(OS::COLOR_ACTIVECAPTION)
      when SWT::COLOR_TITLE_BACKGROUND_GRADIENT
        pixel = OS._get_sys_color(OS::COLOR_GRADIENTACTIVECAPTION)
        if ((pixel).equal?(0))
          pixel = OS._get_sys_color(OS::COLOR_ACTIVECAPTION)
        end
      when SWT::COLOR_TITLE_INACTIVE_FOREGROUND
        pixel = OS._get_sys_color(OS::COLOR_INACTIVECAPTIONTEXT)
      when SWT::COLOR_TITLE_INACTIVE_BACKGROUND
        pixel = OS._get_sys_color(OS::COLOR_INACTIVECAPTION)
      when SWT::COLOR_TITLE_INACTIVE_BACKGROUND_GRADIENT
        pixel = OS._get_sys_color(OS::COLOR_GRADIENTINACTIVECAPTION)
        if ((pixel).equal?(0))
          pixel = OS._get_sys_color(OS::COLOR_INACTIVECAPTION)
        end
      else
        return super(id)
      end
      return Color.win32_new(self, pixel)
    end
    
    typesig { [::Java::Int] }
    # Returns the matching standard platform cursor for the given
    # constant, which should be one of the cursor constants
    # specified in class <code>SWT</code>. This cursor should
    # not be free'd because it was allocated by the system,
    # not the application.  A value of <code>null</code> will
    # be returned if the supplied constant is not an SWT cursor
    # constant.
    # 
    # @param id the SWT cursor constant
    # @return the corresponding cursor or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see SWT#CURSOR_ARROW
    # @see SWT#CURSOR_WAIT
    # @see SWT#CURSOR_CROSS
    # @see SWT#CURSOR_APPSTARTING
    # @see SWT#CURSOR_HELP
    # @see SWT#CURSOR_SIZEALL
    # @see SWT#CURSOR_SIZENESW
    # @see SWT#CURSOR_SIZENS
    # @see SWT#CURSOR_SIZENWSE
    # @see SWT#CURSOR_SIZEWE
    # @see SWT#CURSOR_SIZEN
    # @see SWT#CURSOR_SIZES
    # @see SWT#CURSOR_SIZEE
    # @see SWT#CURSOR_SIZEW
    # @see SWT#CURSOR_SIZENE
    # @see SWT#CURSOR_SIZESE
    # @see SWT#CURSOR_SIZESW
    # @see SWT#CURSOR_SIZENW
    # @see SWT#CURSOR_UPARROW
    # @see SWT#CURSOR_IBEAM
    # @see SWT#CURSOR_NO
    # @see SWT#CURSOR_HAND
    # 
    # @since 3.0
    def get_system_cursor(id)
      check_device
      if (!(0 <= id && id < @cursors.attr_length))
        return nil
      end
      if ((@cursors[id]).nil?)
        @cursors[id] = Cursor.new(self, id)
      end
      return @cursors[id]
    end
    
    typesig { [] }
    # Returns a reasonable font for applications to use.
    # On some platforms, this will match the "default font"
    # or "system font" if such can be found.  This font
    # should not be free'd because it was allocated by the
    # system, not the application.
    # <p>
    # Typically, applications which want the default look
    # should simply not set the font on the widgets they
    # create. Widgets are always created with the correct
    # default font for the class of user-interface component
    # they represent.
    # </p>
    # 
    # @return a font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_system_font
      check_device
      if (!(@system_font).nil?)
        return @system_font
      end
      # long
      h_font = 0
      if (!OS::IsWinCE)
        info = OS::IsUnicode ? NONCLIENTMETRICSW.new : NONCLIENTMETRICSA.new
        info.attr_cb_size = NONCLIENTMETRICS.attr_sizeof
        if (OS._system_parameters_info(OS::SPI_GETNONCLIENTMETRICS, 0, info, 0))
          log_font = OS::IsUnicode ? (info).attr_lf_message_font : (info).attr_lf_message_font
          h_font = OS._create_font_indirect(log_font)
          @lf_system_font = !(h_font).equal?(0) ? log_font : nil
        end
      end
      if ((h_font).equal?(0))
        h_font = OS._get_stock_object(OS::DEFAULT_GUI_FONT)
      end
      if ((h_font).equal?(0))
        h_font = OS._get_stock_object(OS::SYSTEM_FONT)
      end
      return @system_font = Font.win32_new(self, h_font)
    end
    
    typesig { [::Java::Int] }
    # Returns the matching standard platform image for the given
    # constant, which should be one of the icon constants
    # specified in class <code>SWT</code>. This image should
    # not be free'd because it was allocated by the system,
    # not the application.  A value of <code>null</code> will
    # be returned either if the supplied constant is not an
    # SWT icon constant or if the platform does not define an
    # image that corresponds to the constant.
    # 
    # @param id the SWT icon constant
    # @return the corresponding image or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see SWT#ICON_ERROR
    # @see SWT#ICON_INFORMATION
    # @see SWT#ICON_QUESTION
    # @see SWT#ICON_WARNING
    # @see SWT#ICON_WORKING
    # 
    # @since 3.0
    def get_system_image(id)
      check_device
      case (id)
      when SWT::ICON_ERROR
        if (!(@error_image).nil?)
          return @error_image
        end
        # long
        h_icon = OS._load_image(0, OS::OIC_HAND, OS::IMAGE_ICON, 0, 0, OS::LR_SHARED)
        return @error_image = Image.win32_new(self, SWT::ICON, h_icon)
      when SWT::ICON_WORKING, SWT::ICON_INFORMATION
        if (!(@info_image).nil?)
          return @info_image
        end
        # long
        h_icon = OS._load_image(0, OS::OIC_INFORMATION, OS::IMAGE_ICON, 0, 0, OS::LR_SHARED)
        return @info_image = Image.win32_new(self, SWT::ICON, h_icon)
      when SWT::ICON_QUESTION
        if (!(@question_image).nil?)
          return @question_image
        end
        # long
        h_icon = OS._load_image(0, OS::OIC_QUES, OS::IMAGE_ICON, 0, 0, OS::LR_SHARED)
        return @question_image = Image.win32_new(self, SWT::ICON, h_icon)
      when SWT::ICON_WARNING
        if (!(@warning_icon).nil?)
          return @warning_icon
        end
        # long
        h_icon = OS._load_image(0, OS::OIC_BANG, OS::IMAGE_ICON, 0, 0, OS::LR_SHARED)
        return @warning_icon = Image.win32_new(self, SWT::ICON, h_icon)
      end
      return nil
    end
    
    typesig { [] }
    # Returns the single instance of the system tray or null
    # when there is no system tray available for the platform.
    # 
    # @return the system tray or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def get_system_tray
      check_device
      if (!(@tray).nil?)
        return @tray
      end
      if (!OS::IsWinCE)
        @tray = Tray.new(self, SWT::NONE)
      end
      return @tray
    end
    
    typesig { [] }
    # Returns the user-interface thread for the receiver.
    # 
    # @return the receiver's user-interface thread
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_thread
      synchronized((Device)) do
        if (is_disposed)
          error(SWT::ERROR_DEVICE_DISPOSED)
        end
        return @thread
      end
    end
    
    typesig { [] }
    # long
    def h_button_theme
      if (!(@h_button_theme).equal?(0))
        return @h_button_theme
      end
      return @h_button_theme = OS._open_theme_data(@hwnd_message, BUTTON)
    end
    
    typesig { [] }
    # long
    def h_edit_theme
      if (!(@h_edit_theme).equal?(0))
        return @h_edit_theme
      end
      return @h_edit_theme = OS._open_theme_data(@hwnd_message, EDIT)
    end
    
    typesig { [] }
    # long
    def h_explorer_bar_theme
      if (!(@h_explorer_bar_theme).equal?(0))
        return @h_explorer_bar_theme
      end
      return @h_explorer_bar_theme = OS._open_theme_data(@hwnd_message, EXPLORERBAR)
    end
    
    typesig { [] }
    # long
    def h_scroll_bar_theme
      if (!(@h_scroll_bar_theme).equal?(0))
        return @h_scroll_bar_theme
      end
      return @h_scroll_bar_theme = OS._open_theme_data(@hwnd_message, SCROLLBAR)
    end
    
    typesig { [] }
    # long
    def h_tab_theme
      if (!(@h_tab_theme).equal?(0))
        return @h_tab_theme
      end
      return @h_tab_theme = OS._open_theme_data(@hwnd_message, TAB)
    end
    
    typesig { [SwtGCData] }
    # Invokes platform specific functionality to allocate a new GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Display</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param data the platform specific GC data
    # @return the platform specific GC handle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for gc creation</li>
    # </ul>
    # 
    # long
    def internal_new__gc(data)
      if (is_disposed)
        SWT.error(SWT::ERROR_DEVICE_DISPOSED)
      end
      # long
      h_dc = OS._get_dc(0)
      if ((h_dc).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      if (!(data).nil?)
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (!((data.attr_style & mask)).equal?(0))
          data.attr_layout = !((data.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0) ? OS::LAYOUT_RTL : 0
        else
          data.attr_style |= SWT::LEFT_TO_RIGHT
        end
        data.attr_device = self
        data.attr_font = get_system_font
      end
      return h_dc
    end
    
    typesig { [] }
    # Initializes any internal resources needed by the
    # device.
    # <p>
    # This method is called after <code>create</code>.
    # </p>
    # 
    # @see #create
    def init
      super
      # Create the callbacks
      @window_callback = Callback.new(self, "windowProc", 4) # $NON-NLS-1$
      @window_proc = @window_callback.get_address
      if ((@window_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      # Remember the current thread id
      @thread_id = OS._get_current_thread_id
      # Use the character encoding for the default locale
      @window_class = TCHAR.new(0, WindowName + RJava.cast_to_string(self.attr_window_class_count), true)
      @window_shadow_class = TCHAR.new(0, WindowShadowName + RJava.cast_to_string(self.attr_window_class_count), true)
      self.attr_window_class_count += 1
      # Register the SWT window class
      # long
      h_heap = OS._get_process_heap
      # long
      h_instance = OS._get_module_handle(nil)
      lp_wnd_class = WNDCLASS.new
      lp_wnd_class.attr_h_instance = h_instance
      lp_wnd_class.attr_lpfn_wnd_proc = @window_proc
      lp_wnd_class.attr_style = OS::CS_BYTEALIGNWINDOW | OS::CS_DBLCLKS
      lp_wnd_class.attr_h_cursor = OS._load_cursor(0, OS::IDC_ARROW)
      # Set the default icon for the window class to IDI_APPLICATION.
      # This is not necessary for native Windows applications but
      # versions of Java starting at JDK 1.6 set the icon in the
      # executable instead of leaving the default.
      if (!OS::IsWinCE && Library::JAVA_VERSION >= Library._java_version(1, 6, 0))
        lpsz_file = TCHAR.new(0, OS::MAX_PATH)
        while ((OS._get_module_file_name(0, lpsz_file, lpsz_file.length)).equal?(lpsz_file.length))
          lpsz_file = TCHAR.new(0, lpsz_file.length + OS::MAX_PATH)
        end
        if (!(OS._extract_icon_ex(lpsz_file, -1, nil, nil, 1)).equal?(0))
          file_name = lpsz_file.to_s(0, lpsz_file.strlen)
          if (file_name.ends_with("java.exe") || file_name.ends_with("javaw.exe"))
            # $NON-NLS-1$ //$NON-NLS-2$
            lp_wnd_class.attr_h_icon = OS._load_icon(0, OS::IDI_APPLICATION)
          end
        end
      end
      byte_count = @window_class.length * TCHAR.attr_sizeof
      lp_wnd_class.attr_lpsz_class_name = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
      OS._move_memory(lp_wnd_class.attr_lpsz_class_name, @window_class, byte_count)
      OS._register_class(lp_wnd_class)
      OS._heap_free(h_heap, 0, lp_wnd_class.attr_lpsz_class_name)
      # Register the SWT drop shadow window class
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1))
        lp_wnd_class.attr_style |= OS::CS_DROPSHADOW
      end
      byte_count = @window_shadow_class.length * TCHAR.attr_sizeof
      lp_wnd_class.attr_lpsz_class_name = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
      OS._move_memory(lp_wnd_class.attr_lpsz_class_name, @window_shadow_class, byte_count)
      OS._register_class(lp_wnd_class)
      OS._heap_free(h_heap, 0, lp_wnd_class.attr_lpsz_class_name)
      # Create the message only HWND
      @hwnd_message = OS._create_window_ex(0, @window_class, nil, OS::WS_OVERLAPPED, 0, 0, 0, 0, 0, 0, h_instance, nil)
      @message_callback = Callback.new(self, "messageProc", 4) # $NON-NLS-1$
      @message_proc = @message_callback.get_address
      if ((@message_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      OS._set_window_long_ptr(@hwnd_message, OS::GWLP_WNDPROC, @message_proc)
      # Create the filter hook
      if (!OS::IsWinCE)
        @msg_filter_callback = Callback.new(self, "msgFilterProc", 3) # $NON-NLS-1$
        @msg_filter_proc = @msg_filter_callback.get_address
        if ((@msg_filter_proc).equal?(0))
          error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        @filter_hook = OS._set_windows_hook_ex(OS::WH_MSGFILTER, @msg_filter_proc, 0, @thread_id)
      end
      # Create the idle hook
      if (!OS::IsWinCE)
        @foreground_idle_callback = Callback.new(self, "foregroundIdleProc", 3) # $NON-NLS-1$
        @foreground_idle_proc = @foreground_idle_callback.get_address
        if ((@foreground_idle_proc).equal?(0))
          error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        @idle_hook = OS._set_windows_hook_ex(OS::WH_FOREGROUNDIDLE, @foreground_idle_proc, 0, @thread_id)
      end
      # Register custom messages message
      self.attr_swt_taskbarcreated = OS._register_window_message(TCHAR.new(0, "TaskbarCreated", true)) # $NON-NLS-1$
      self.attr_swt_restorecaret = OS._register_window_message(TCHAR.new(0, "SWT_RESTORECARET", true)) # $NON-NLS-1$
      self.attr_di_getdragimage = OS._register_window_message(TCHAR.new(0, "ShellGetDragImage", true)) # $NON-NLS-1$
      # Initialize OLE
      if (!OS::IsWinCE)
        OS._ole_initialize(0)
      end
      # Initialize buffered painting
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        OS._buffered_paint_init
      end
      # Initialize the Widget Table
      @index_table = Array.typed(::Java::Int).new(GROW_SIZE) { 0 }
      @control_table = Array.typed(Control).new(GROW_SIZE) { nil }
      i = 0
      while i < GROW_SIZE - 1
        @index_table[i] = i + 1
        i += 1
      end
      @index_table[GROW_SIZE - 1] = -1
    end
    
    typesig { [::Java::Int, SwtGCData] }
    # Invokes platform specific functionality to dispose a GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Display</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param hDC the platform specific GC handle
    # @param data the platform specific GC data
    # 
    # long
    def internal_dispose__gc(h_dc, data)
      OS._release_dc(0, h_dc)
    end
    
    typesig { [] }
    def is_xmouse_active
      # NOTE: X-Mouse is active when bit 1 of the UserPreferencesMask is set.
      x_mouse_active = false
      key = TCHAR.new(0, "Control Panel\\Desktop", true) # $NON-NLS-1$
      # long
      # long
      ph_key = Array.typed(::Java::Int).new(1) { 0 }
      result = OS._reg_open_key_ex(OS::HKEY_CURRENT_USER, key, 0, OS::KEY_READ, ph_key)
      if ((result).equal?(0))
        lp_value_name = TCHAR.new(0, "UserPreferencesMask", true) # $NON-NLS-1$
        lpcb_data = Array.typed(::Java::Int).new([4])
        lp_data = Array.typed(::Java::Int).new(1) { 0 }
        result = OS._reg_query_value_ex(ph_key[0], lp_value_name, 0, nil, lp_data, lpcb_data)
        if ((result).equal?(0))
          x_mouse_active = !((lp_data[0] & 0x1)).equal?(0)
        end
        OS._reg_close_key(ph_key[0])
      end
      return x_mouse_active
    end
    
    typesig { [] }
    def is_valid_thread
      return (@thread).equal?(JavaThread.current_thread)
    end
    
    typesig { [Control, Control, Point] }
    # Maps a point from one coordinate system to another.
    # When the control is null, coordinates are mapped to
    # the display.
    # <p>
    # NOTE: On right-to-left platforms where the coordinate
    # systems are mirrored, special care needs to be taken
    # when mapping coordinates from one control to another
    # to ensure the result is correctly mirrored.
    # 
    # Mapping a point that is the origin of a rectangle and
    # then adding the width and height is not equivalent to
    # mapping the rectangle.  When one control is mirrored
    # and the other is not, adding the width and height to a
    # point that was mapped causes the rectangle to extend
    # in the wrong direction.  Mapping the entire rectangle
    # instead of just one point causes both the origin and
    # the corner of the rectangle to be mapped.
    # </p>
    # 
    # @param from the source <code>Control</code> or <code>null</code>
    # @param to the destination <code>Control</code> or <code>null</code>
    # @param point to be mapped
    # @return point with mapped coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the Control from or the Control to have been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1.2
    def map(from, to, point)
      check_device
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return map(from, to, point.attr_x, point.attr_y)
    end
    
    typesig { [Control, Control, ::Java::Int, ::Java::Int] }
    # Maps a point from one coordinate system to another.
    # When the control is null, coordinates are mapped to
    # the display.
    # <p>
    # NOTE: On right-to-left platforms where the coordinate
    # systems are mirrored, special care needs to be taken
    # when mapping coordinates from one control to another
    # to ensure the result is correctly mirrored.
    # 
    # Mapping a point that is the origin of a rectangle and
    # then adding the width and height is not equivalent to
    # mapping the rectangle.  When one control is mirrored
    # and the other is not, adding the width and height to a
    # point that was mapped causes the rectangle to extend
    # in the wrong direction.  Mapping the entire rectangle
    # instead of just one point causes both the origin and
    # the corner of the rectangle to be mapped.
    # </p>
    # 
    # @param from the source <code>Control</code> or <code>null</code>
    # @param to the destination <code>Control</code> or <code>null</code>
    # @param x coordinates to be mapped
    # @param y coordinates to be mapped
    # @return point with mapped coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the Control from or the Control to have been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1.2
    def map(from, to, x, y)
      check_device
      if (!(from).nil? && from.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(to).nil? && to.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((from).equal?(to))
        return Point.new(x, y)
      end
      # long
      hwnd_from = !(from).nil? ? from.attr_handle : 0
      # long
      hwnd_to = !(to).nil? ? to.attr_handle : 0
      point = POINT.new
      point.attr_x = x
      point.attr_y = y
      OS._map_window_points(hwnd_from, hwnd_to, point, 1)
      return Point.new(point.attr_x, point.attr_y)
    end
    
    typesig { [Control, Control, Rectangle] }
    # Maps a point from one coordinate system to another.
    # When the control is null, coordinates are mapped to
    # the display.
    # <p>
    # NOTE: On right-to-left platforms where the coordinate
    # systems are mirrored, special care needs to be taken
    # when mapping coordinates from one control to another
    # to ensure the result is correctly mirrored.
    # 
    # Mapping a point that is the origin of a rectangle and
    # then adding the width and height is not equivalent to
    # mapping the rectangle.  When one control is mirrored
    # and the other is not, adding the width and height to a
    # point that was mapped causes the rectangle to extend
    # in the wrong direction.  Mapping the entire rectangle
    # instead of just one point causes both the origin and
    # the corner of the rectangle to be mapped.
    # </p>
    # 
    # @param from the source <code>Control</code> or <code>null</code>
    # @param to the destination <code>Control</code> or <code>null</code>
    # @param rectangle to be mapped
    # @return rectangle with mapped coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the rectangle is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the Control from or the Control to have been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1.2
    def map(from, to, rectangle)
      check_device
      if ((rectangle).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return map(from, to, rectangle.attr_x, rectangle.attr_y, rectangle.attr_width, rectangle.attr_height)
    end
    
    typesig { [Control, Control, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Maps a point from one coordinate system to another.
    # When the control is null, coordinates are mapped to
    # the display.
    # <p>
    # NOTE: On right-to-left platforms where the coordinate
    # systems are mirrored, special care needs to be taken
    # when mapping coordinates from one control to another
    # to ensure the result is correctly mirrored.
    # 
    # Mapping a point that is the origin of a rectangle and
    # then adding the width and height is not equivalent to
    # mapping the rectangle.  When one control is mirrored
    # and the other is not, adding the width and height to a
    # point that was mapped causes the rectangle to extend
    # in the wrong direction.  Mapping the entire rectangle
    # instead of just one point causes both the origin and
    # the corner of the rectangle to be mapped.
    # </p>
    # 
    # @param from the source <code>Control</code> or <code>null</code>
    # @param to the destination <code>Control</code> or <code>null</code>
    # @param x coordinates to be mapped
    # @param y coordinates to be mapped
    # @param width coordinates to be mapped
    # @param height coordinates to be mapped
    # @return rectangle with mapped coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the Control from or the Control to have been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1.2
    def map(from, to, x, y, width, height)
      check_device
      if (!(from).nil? && from.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(to).nil? && to.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((from).equal?(to))
        return Rectangle.new(x, y, width, height)
      end
      # long
      hwnd_from = !(from).nil? ? from.attr_handle : 0
      # long
      hwnd_to = !(to).nil? ? to.attr_handle : 0
      rect = RECT.new
      rect.attr_left = x
      rect.attr_top = y
      rect.attr_right = x + width
      rect.attr_bottom = y + height
      OS._map_window_points(hwnd_from, hwnd_to, rect, 2)
      return Rectangle.new(rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      # Returns a single character, converted from the default
      # multi-byte character set (MBCS) used by the operating
      # system widgets to a wide character set (WCS) used by Java.
      # 
      # @param ch the MBCS character
      # @return the WCS character
      def mbcs_to_wcs(ch)
        return mbcs_to_wcs(ch, 0)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # Returns a single character, converted from the specified
      # multi-byte character set (MBCS) used by the operating
      # system widgets to a wide character set (WCS) used by Java.
      # 
      # @param ch the MBCS character
      # @param codePage the code page used to convert the character
      # @return the WCS character
      def mbcs_to_wcs(ch, code_page)
        if (OS::IsUnicode)
          return RJava.cast_to_char(ch)
        end
        key = ch & 0xffff
        if (key <= 0x7f)
          return RJava.cast_to_char(ch)
        end
        buffer = nil
        if (key <= 0xff)
          buffer = Array.typed(::Java::Byte).new(1) { 0 }
          buffer[0] = key
        else
          buffer = Array.typed(::Java::Byte).new(2) { 0 }
          buffer[0] = ((key >> 8) & 0xff)
          buffer[1] = (key & 0xff)
        end
        unicode = CharArray.new(1)
        cp = !(code_page).equal?(0) ? code_page : OS::CP_ACP
        count = OS._multi_byte_to_wide_char(cp, OS::MB_PRECOMPOSED, buffer, buffer.attr_length, unicode, 1)
        if ((count).equal?(0))
          return 0
        end
        return unicode[0]
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def message_proc(hwnd, msg, w_param, l_param)
      catch(:break_case) do
        # 64
        case (RJava.cast_to_int(msg))
        when SWT_RUNASYNC
          if (@run_messages_in_idle)
            run_async_messages(false)
          end
        when SWT_KEYMSG
          consumed = false
          key_msg = MSG.new
          OS._move_memory(key_msg, l_param, MSG.attr_sizeof)
          control = find_control(key_msg.attr_hwnd)
          if (!(control).nil?)
            # Feature in Windows.  When the user types an accent key such
            # as ^ in order to get an accented character on a German keyboard,
            # calling TranslateMessage(), ToUnicode() or ToAscii() consumes
            # the key.  This means that a subsequent call to TranslateMessage()
            # will see a regular key rather than the accented key.  The fix
            # is to use MapVirtualKey() and VkKeyScan () to detect an accent
            # and avoid calls to TranslateMessage().
            accent_key = false
            case (key_msg.attr_message)
            when OS::WM_KEYDOWN, OS::WM_SYSKEYDOWN
              if (!OS::IsWinCE)
                # 64
                case (RJava.cast_to_int(key_msg.attr_w_param))
                when OS::VK_SHIFT, OS::VK_MENU, OS::VK_CONTROL, OS::VK_CAPITAL, OS::VK_NUMLOCK, OS::VK_SCROLL
                else
                  # Bug in Windows. The high bit in the result of MapVirtualKey() on
                  # Windows NT is bit 32 while the high bit on Windows 95 is bit 16.
                  # They should both be bit 32.  The fix is to test the right bit.
                  # 
                  # 64
                  map_key = OS._map_virtual_key(RJava.cast_to_int(key_msg.attr_w_param), 2)
                  if (!(map_key).equal?(0))
                    accent_key = !((map_key & (OS::IsWinNT ? -0x80000000 : 0x8000))).equal?(0)
                    if (!accent_key)
                      i = 0
                      while i < ACCENTS.attr_length
                        value = OS._vk_key_scan(ACCENTS[i])
                        if (!(value).equal?(-1) && ((value & 0xff)).equal?(key_msg.attr_w_param))
                          state = value >> 8
                          if (((OS._get_key_state(OS::VK_SHIFT) < 0)).equal?((!((state & 0x1)).equal?(0))) && ((OS._get_key_state(OS::VK_CONTROL) < 0)).equal?((!((state & 0x2)).equal?(0))) && ((OS._get_key_state(OS::VK_MENU) < 0)).equal?((!((state & 0x4)).equal?(0))))
                            if (!((state & 0x7)).equal?(0))
                              accent_key = true
                            end
                            break
                          end
                        end
                        i += 1
                      end
                    end
                  end
                end
              end
            end
            if (!accent_key && !@ignore_next_key)
              key_msg.attr_hwnd = control.attr_handle
              flags = OS::PM_REMOVE | OS::PM_NOYIELD | OS::PM_QS_INPUT | OS::PM_QS_POSTMESSAGE
              begin
                if (!(consumed |= filter_message(key_msg)))
                  OS._translate_message(key_msg)
                  consumed |= (OS._dispatch_message(key_msg)).equal?(1)
                end
              end while (OS._peek_message(key_msg, key_msg.attr_hwnd, OS::WM_KEYFIRST, OS::WM_KEYLAST, flags))
            end
            case (key_msg.attr_message)
            when OS::WM_KEYDOWN, OS::WM_SYSKEYDOWN
              # 64
              case (RJava.cast_to_int(key_msg.attr_w_param))
              when OS::VK_SHIFT, OS::VK_MENU, OS::VK_CONTROL, OS::VK_CAPITAL, OS::VK_NUMLOCK, OS::VK_SCROLL
              else
                @ignore_next_key = accent_key
              end
            end
          end
          # 64
          case (RJava.cast_to_int(key_msg.attr_w_param))
          when OS::VK_SHIFT, OS::VK_MENU, OS::VK_CONTROL, OS::VK_CAPITAL, OS::VK_NUMLOCK, OS::VK_SCROLL
            consumed = true
          end
          if (consumed)
            # long
            h_heap = OS._get_process_heap
            OS._heap_free(h_heap, 0, l_param)
          else
            OS._post_message(@embedded_hwnd, SWT_KEYMSG, w_param, l_param)
          end
          return 0
        when SWT_TRAYICONMSG
          if (!(@tray).nil?)
            items = @tray.attr_items
            i = 0
            while i < items.attr_length
              item = items[i]
              if (!(item).nil? && (item.attr_id).equal?(w_param))
                # 64
                return item.message_proc(hwnd, RJava.cast_to_int(msg), w_param, l_param)
              end
              i += 1
            end
          end
          return 0
        when OS::WM_ACTIVATEAPP
          # Feature in Windows.  When multiple shells are
          # disabled and one of the shells has an enabled
          # dialog child and the user selects a disabled
          # shell that does not have the enabled dialog
          # child using the Task bar, Windows brings the
          # disabled shell to the front.  As soon as the
          # user clicks on the disabled shell, the enabled
          # dialog child comes to the front.  This behavior
          # is unspecified and seems strange.  Normally, a
          # disabled shell is frozen on the screen and the
          # user cannot change the z-order by clicking with
          # the mouse.  The fix is to look for WM_ACTIVATEAPP
          # and force the enabled dialog child to the front.
          # This is typically what the user is expecting.
          # 
          # NOTE: If the modal shell is disabled for any
          # reason, it should not be brought to the front.
          if (!(w_param).equal?(0))
            if (!is_xmouse_active)
              # long
              hwnd_active = OS._get_active_window
              if (!(hwnd_active).equal?(0) && OS._is_window_enabled(hwnd_active))
                throw :break_case, :thrown
              end
              modal = !(@modal_dialog).nil? ? @modal_dialog.attr_parent : get_modal_shell
              if (!(modal).nil? && !modal.is_disposed)
                # long
                hwnd_modal = modal.attr_handle
                if (OS._is_window_enabled(hwnd_modal))
                  modal.bring_to_top
                  if (modal.is_disposed)
                    throw :break_case, :thrown
                  end
                end
                # long
                hwnd_popup = OS._get_last_active_popup(hwnd_modal)
                if (!(hwnd_popup).equal?(0) && !(hwnd_popup).equal?(modal.attr_handle))
                  if ((get_control(hwnd_popup)).nil?)
                    if (OS._is_window_enabled(hwnd_popup))
                      OS._set_active_window(hwnd_popup)
                    end
                  end
                end
              end
            end
          end
        when OS::WM_ENDSESSION
          if (!(w_param).equal?(0))
            dispose
            # When the session is ending, no SWT program can continue
            # to run.  In order to avoid running code after the display
            # has been disposed, exit from Java.
            # 
            # This code is intentionally commented
            # System.exit (0);
          end
        when OS::WM_QUERYENDSESSION
          event = Event.new
          send_event(SWT::Close, event)
          if (!event.attr_doit)
            return 0
          end
        when OS::WM_DWMCOLORIZATIONCOLORCHANGED
          OS._set_timer(@hwnd_message, SETTINGS_ID, SETTINGS_DELAY, 0)
        when OS::WM_SETTINGCHANGE
          if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
            OS._set_timer(@hwnd_message, SETTINGS_ID, SETTINGS_DELAY, 0)
            throw :break_case, :thrown
          end
          # 64
          case (RJava.cast_to_int(w_param))
          when 0, 1, OS::SPI_SETHIGHCONTRAST
            OS._set_timer(@hwnd_message, SETTINGS_ID, SETTINGS_DELAY, 0)
          end
        when OS::WM_THEMECHANGED
          if (OS::COMCTL32_MAJOR >= 6)
            if (!(@h_button_theme).equal?(0))
              OS._close_theme_data(@h_button_theme)
            end
            if (!(@h_edit_theme).equal?(0))
              OS._close_theme_data(@h_edit_theme)
            end
            if (!(@h_explorer_bar_theme).equal?(0))
              OS._close_theme_data(@h_explorer_bar_theme)
            end
            if (!(@h_scroll_bar_theme).equal?(0))
              OS._close_theme_data(@h_scroll_bar_theme)
            end
            if (!(@h_tab_theme).equal?(0))
              OS._close_theme_data(@h_tab_theme)
            end
            @h_button_theme = @h_edit_theme = @h_explorer_bar_theme = @h_scroll_bar_theme = @h_tab_theme = 0
          end
        when OS::WM_TIMER
          if ((w_param).equal?(SETTINGS_ID))
            OS._kill_timer(@hwnd_message, SETTINGS_ID)
            run_settings
          else
            run_timer(w_param)
          end
        else
          # 64
          if ((RJava.cast_to_int(msg)).equal?(self.attr_swt_taskbarcreated))
            if (!(@tray).nil?)
              items = @tray.attr_items
              i = 0
              while i < items.attr_length
                item = items[i]
                if (!(item).nil?)
                  item.recreate
                end
                i += 1
              end
            end
          end
        end
      end
      # 64
      return OS._def_window_proc(hwnd, RJava.cast_to_int(msg), w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def monitor_enum_proc(hmonitor, hdc, lprc_monitor, dw_data)
      if (@monitor_count >= @monitors.attr_length)
        new_monitors = Array.typed(SwtMonitor).new(@monitors.attr_length + 4) { nil }
        System.arraycopy(@monitors, 0, new_monitors, 0, @monitors.attr_length)
        @monitors = new_monitors
      end
      lpmi = MONITORINFO.new
      lpmi.attr_cb_size = MONITORINFO.attr_sizeof
      OS._get_monitor_info(hmonitor, lpmi)
      monitor = SwtMonitor.new
      monitor.attr_handle = hmonitor
      monitor.attr_x = lpmi.attr_rc_monitor_left
      monitor.attr_y = lpmi.attr_rc_monitor_top
      monitor.attr_width = lpmi.attr_rc_monitor_right - lpmi.attr_rc_monitor_left
      monitor.attr_height = lpmi.attr_rc_monitor_bottom - lpmi.attr_rc_monitor_top
      monitor.attr_client_x = lpmi.attr_rc_work_left
      monitor.attr_client_y = lpmi.attr_rc_work_top
      monitor.attr_client_width = lpmi.attr_rc_work_right - lpmi.attr_rc_work_left
      monitor.attr_client_height = lpmi.attr_rc_work_bottom - lpmi.attr_rc_work_top
      @monitors[((@monitor_count += 1) - 1)] = monitor
      return 1
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def msg_filter_proc(code, w_param, l_param)
      # 64
      case (RJava.cast_to_int(code))
      # Feature in Windows.  For some reason, when the user clicks
      # a table or tree, the Windows hook WH_MSGFILTER is sent when
      # an input event from a dialog box, message box, menu, or scroll
      # bar did not occur, causing async messages to run at the wrong
      # time.  The fix is to check the message filter code.
      when OS::MSGF_COMMCTRL_BEGINDRAG
        if (!@run_drag_drop && !@drag_cancelled)
          OS._move_memory(@hook_msg, l_param, MSG.attr_sizeof)
          if ((@hook_msg.attr_message).equal?(OS::WM_MOUSEMOVE))
            @drag_cancelled = true
            OS._send_message(@hook_msg.attr_hwnd, OS::WM_CANCELMODE, 0, 0)
          end
        end
      when OS::MSGF_DIALOGBOX, OS::MSGF_MAINLOOP, OS::MSGF_MENU, OS::MSGF_MOVE, OS::MSGF_MESSAGEBOX, OS::MSGF_NEXTWINDOW, OS::MSGF_SCROLLBAR, OS::MSGF_SIZE
        if (@run_messages)
          OS._move_memory(@hook_msg, l_param, MSG.attr_sizeof)
          if ((@hook_msg.attr_message).equal?(OS::WM_NULL))
            msg = MSG.new
            flags = OS::PM_NOREMOVE | OS::PM_NOYIELD | OS::PM_QS_INPUT | OS::PM_QS_POSTMESSAGE
            if (!OS._peek_message(msg, 0, 0, 0, flags))
              if (run_async_messages(false))
                wake_thread
              end
            end
          end
        end
      end
      # 64
      return OS._call_next_hook_ex(@filter_hook, RJava.cast_to_int(code), w_param, l_param)
    end
    
    typesig { [::Java::Int] }
    def numpad_key(key)
      case (key)
      when OS::VK_NUMPAD0
        return Character.new(?0.ord)
      when OS::VK_NUMPAD1
        return Character.new(?1.ord)
      when OS::VK_NUMPAD2
        return Character.new(?2.ord)
      when OS::VK_NUMPAD3
        return Character.new(?3.ord)
      when OS::VK_NUMPAD4
        return Character.new(?4.ord)
      when OS::VK_NUMPAD5
        return Character.new(?5.ord)
      when OS::VK_NUMPAD6
        return Character.new(?6.ord)
      when OS::VK_NUMPAD7
        return Character.new(?7.ord)
      when OS::VK_NUMPAD8
        return Character.new(?8.ord)
      when OS::VK_NUMPAD9
        return Character.new(?9.ord)
      when OS::VK_MULTIPLY
        return Character.new(?*.ord)
      when OS::VK_ADD
        return Character.new(?+.ord)
      when OS::VK_SEPARATOR
        return Character.new(?\0.ord)
      when OS::VK_SUBTRACT
        return Character.new(?-.ord)
      when OS::VK_DECIMAL
        return Character.new(?..ord)
      when OS::VK_DIVIDE
        return Character.new(?/.ord)
      end
      return 0
    end
    
    typesig { [Event] }
    # Generate a low level system event.
    # 
    # <code>post</code> is used to generate low level keyboard
    # and mouse events. The intent is to enable automated UI
    # testing by simulating the input from the user.  Most
    # SWT applications should never need to call this method.
    # <p>
    # Note that this operation can fail when the operating system
    # fails to generate the event for any reason.  For example,
    # this can happen when there is no such key or mouse button
    # or when the system event queue is full.
    # </p>
    # <p>
    # <b>Event Types:</b>
    # <p>KeyDown, KeyUp
    # <p>The following fields in the <code>Event</code> apply:
    # <ul>
    # <li>(in) type KeyDown or KeyUp</li>
    # <p> Either one of:
    # <li>(in) character a character that corresponds to a keyboard key</li>
    # <li>(in) keyCode the key code of the key that was typed,
    # as defined by the key code constants in class <code>SWT</code></li>
    # </ul>
    # <p>MouseDown, MouseUp</p>
    # <p>The following fields in the <code>Event</code> apply:
    # <ul>
    # <li>(in) type MouseDown or MouseUp
    # <li>(in) button the button that is pressed or released
    # </ul>
    # <p>MouseMove</p>
    # <p>The following fields in the <code>Event</code> apply:
    # <ul>
    # <li>(in) type MouseMove
    # <li>(in) x the x coordinate to move the mouse pointer to in screen coordinates
    # <li>(in) y the y coordinate to move the mouse pointer to in screen coordinates
    # </ul>
    # </dl>
    # 
    # @param event the event to be generated
    # 
    # @return true if the event was generated or false otherwise
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the event is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def post(event)
      synchronized((Device)) do
        if (is_disposed)
          error(SWT::ERROR_DEVICE_DISPOSED)
        end
        if ((event).nil?)
          error(SWT::ERROR_NULL_ARGUMENT)
        end
        type = event.attr_type
        case (type)
        when SWT::KeyDown, SWT::KeyUp
          inputs = KEYBDINPUT.new
          inputs.attr_w_vk = RJava.cast_to_short(untranslate_key(event.attr_key_code))
          if ((inputs.attr_w_vk).equal?(0))
            key = event.attr_character
            case (key)
            # Since there is no LF key on the keyboard, do not attempt
            # to map LF to CR or attempt to post an LF key.
            # 
            # case SWT.LF: inputs.wVk = (short) OS.VK_RETURN; break;
            when SWT::BS
              inputs.attr_w_vk = RJava.cast_to_short(OS::VK_BACK)
            when SWT::CR
              inputs.attr_w_vk = RJava.cast_to_short(OS::VK_RETURN)
            when SWT::DEL
              inputs.attr_w_vk = RJava.cast_to_short(OS::VK_DELETE)
            when SWT::ESC
              inputs.attr_w_vk = RJava.cast_to_short(OS::VK_ESCAPE)
            when SWT::TAB
              inputs.attr_w_vk = RJava.cast_to_short(OS::VK_TAB)
            when SWT::LF
              return false
            else
              if (OS::IsWinCE)
                # 64
                inputs.attr_w_vk = RJava.cast_to_short(OS._char_upper(RJava.cast_to_short(key)))
              else
                inputs.attr_w_vk = OS._vk_key_scan(RJava.cast_to_short(wcs_to_mbcs(key, 0)))
                if ((inputs.attr_w_vk).equal?(-1))
                  return false
                end
                inputs.attr_w_vk &= 0xff
              end
            end
          end
          inputs.attr_dw_flags = (type).equal?(SWT::KeyUp) ? OS::KEYEVENTF_KEYUP : 0
          # long
          h_heap = OS._get_process_heap
          # long
          p_inputs = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, INPUT.attr_sizeof)
          OS._move_memory(p_inputs, Array.typed(::Java::Int).new([OS::INPUT_KEYBOARD]), 4)
          # TODO - DWORD type of INPUT structure aligned to 8 bytes on 64 bit
          OS._move_memory(p_inputs + OS::PTR_SIZEOF, inputs, KEYBDINPUT.attr_sizeof)
          result = !(OS._send_input(1, p_inputs, INPUT.attr_sizeof)).equal?(0)
          OS._heap_free(h_heap, 0, p_inputs)
          return result
        when SWT::MouseDown, SWT::MouseMove, SWT::MouseUp, SWT::MouseWheel
          inputs = MOUSEINPUT.new
          if ((type).equal?(SWT::MouseMove))
            inputs.attr_dw_flags = OS::MOUSEEVENTF_MOVE | OS::MOUSEEVENTF_ABSOLUTE
            x = 0
            y = 0
            width = 0
            height = 0
            if (OS::WIN32_VERSION >= OS._version(5, 0))
              inputs.attr_dw_flags |= OS::MOUSEEVENTF_VIRTUALDESK
              x = OS._get_system_metrics(OS::SM_XVIRTUALSCREEN)
              y = OS._get_system_metrics(OS::SM_YVIRTUALSCREEN)
              width = OS._get_system_metrics(OS::SM_CXVIRTUALSCREEN)
              height = OS._get_system_metrics(OS::SM_CYVIRTUALSCREEN)
            else
              width = OS._get_system_metrics(OS::SM_CXSCREEN)
              height = OS._get_system_metrics(OS::SM_CYSCREEN)
            end
            inputs.attr_dx = ((event.attr_x - x) * 65535 + width - 2) / (width - 1)
            inputs.attr_dy = ((event.attr_y - y) * 65535 + height - 2) / (height - 1)
          else
            if ((type).equal?(SWT::MouseWheel))
              if (OS::WIN32_VERSION < OS._version(5, 0))
                return false
              end
              inputs.attr_dw_flags = OS::MOUSEEVENTF_WHEEL
              case (event.attr_detail)
              when SWT::SCROLL_PAGE
                inputs.attr_mouse_data = event.attr_count * OS::WHEEL_DELTA
              when SWT::SCROLL_LINE
                value = Array.typed(::Java::Int).new(1) { 0 }
                OS._system_parameters_info(OS::SPI_GETWHEELSCROLLLINES, 0, value, 0)
                inputs.attr_mouse_data = event.attr_count * OS::WHEEL_DELTA / value[0]
              else
                return false
              end
            else
              case (event.attr_button)
              when 1
                inputs.attr_dw_flags = (type).equal?(SWT::MouseDown) ? OS::MOUSEEVENTF_LEFTDOWN : OS::MOUSEEVENTF_LEFTUP
              when 2
                inputs.attr_dw_flags = (type).equal?(SWT::MouseDown) ? OS::MOUSEEVENTF_MIDDLEDOWN : OS::MOUSEEVENTF_MIDDLEUP
              when 3
                inputs.attr_dw_flags = (type).equal?(SWT::MouseDown) ? OS::MOUSEEVENTF_RIGHTDOWN : OS::MOUSEEVENTF_RIGHTUP
              when 4
                if (OS::WIN32_VERSION < OS._version(5, 0))
                  return false
                end
                inputs.attr_dw_flags = (type).equal?(SWT::MouseDown) ? OS::MOUSEEVENTF_XDOWN : OS::MOUSEEVENTF_XUP
                inputs.attr_mouse_data = OS::XBUTTON1
              when 5
                if (OS::WIN32_VERSION < OS._version(5, 0))
                  return false
                end
                inputs.attr_dw_flags = (type).equal?(SWT::MouseDown) ? OS::MOUSEEVENTF_XDOWN : OS::MOUSEEVENTF_XUP
                inputs.attr_mouse_data = OS::XBUTTON2
              else
                return false
              end
            end
          end
          # long
          h_heap = OS._get_process_heap
          # long
          p_inputs = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, INPUT.attr_sizeof)
          OS._move_memory(p_inputs, Array.typed(::Java::Int).new([OS::INPUT_MOUSE]), 4)
          # TODO - DWORD type of INPUT structure aligned to 8 bytes on 64 bit
          OS._move_memory(p_inputs + OS::PTR_SIZEOF, inputs, MOUSEINPUT.attr_sizeof)
          result = !(OS._send_input(1, p_inputs, INPUT.attr_sizeof)).equal?(0)
          OS._heap_free(h_heap, 0, p_inputs)
          return result
        end
        return false
      end
    end
    
    typesig { [Event] }
    def post_event(event)
      # Place the event at the end of the event queue.
      # This code is always called in the Display's
      # thread so it must be re-enterant but does not
      # need to be synchronized.
      if ((@event_queue).nil?)
        @event_queue = Array.typed(Event).new(4) { nil }
      end
      index = 0
      length_ = @event_queue.attr_length
      while (index < length_)
        if ((@event_queue[index]).nil?)
          break
        end
        index += 1
      end
      if ((index).equal?(length_))
        new_queue = Array.typed(Event).new(length_ + 4) { nil }
        System.arraycopy(@event_queue, 0, new_queue, 0, length_)
        @event_queue = new_queue
      end
      @event_queue[index] = event
    end
    
    typesig { [] }
    # Reads an event from the operating system's event queue,
    # dispatches it appropriately, and returns <code>true</code>
    # if there is potentially more work to do, or <code>false</code>
    # if the caller can sleep until another event is placed on
    # the event queue.
    # <p>
    # In addition to checking the system event queue, this method also
    # checks if any inter-thread messages (created by <code>syncExec()</code>
    # or <code>asyncExec()</code>) are waiting to be processed, and if
    # so handles them before returning.
    # </p>
    # 
    # @return <code>false</code> if the caller can sleep upon return from this method
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_FAILED_EXEC - if an exception occurred while running an inter-thread message</li>
    # </ul>
    # 
    # @see #sleep
    # @see #wake
    def read_and_dispatch
      check_device
      self.attr_lp_startup_info = nil
      draw_menu_bars
      run_popups
      if (OS._peek_message(@msg, 0, 0, 0, OS::PM_REMOVE))
        if (!filter_message(@msg))
          OS._translate_message(@msg)
          OS._dispatch_message(@msg)
        end
        run_deferred_events
        return true
      end
      return @run_messages && run_async_messages(false)
    end
    
    class_module.module_eval {
      typesig { [Display] }
      def register(display)
        synchronized((Device)) do
          i = 0
          while i < self.attr_displays.attr_length
            if ((self.attr_displays[i]).nil?)
              self.attr_displays[i] = display
              return
            end
            i += 1
          end
          new_displays = Array.typed(Display).new(self.attr_displays.attr_length + 4) { nil }
          System.arraycopy(self.attr_displays, 0, new_displays, 0, self.attr_displays.attr_length)
          new_displays[self.attr_displays.attr_length] = display
          self.attr_displays = new_displays
        end
      end
    }
    
    typesig { [] }
    # Releases any internal resources back to the operating
    # system and clears all fields except the device handle.
    # <p>
    # Disposes all shells which are currently open on the display.
    # After this method has been invoked, all related related shells
    # will answer <code>true</code> when sent the message
    # <code>isDisposed()</code>.
    # </p><p>
    # When a device is destroyed, resources that were acquired
    # on behalf of the programmer need to be returned to the
    # operating system.  For example, if the device allocated a
    # font to be used as the system font, this font would be
    # freed in <code>release</code>.  Also,to assist the garbage
    # collector and minimize the amount of memory that is not
    # reclaimed when the programmer keeps a reference to a
    # disposed device, all fields except the handle are zero'd.
    # The handle is needed by <code>destroy</code>.
    # </p>
    # This method is called before <code>destroy</code>.
    # 
    # @see Device#dispose
    # @see #destroy
    def release
      send_event(SWT::Dispose, Event.new)
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!shell.is_disposed)
          shell.dispose
        end
        i += 1
      end
      if (!(@tray).nil?)
        @tray.dispose
      end
      @tray = nil
      while (read_and_dispatch)
      end
      if (!(@dispose_list).nil?)
        i_ = 0
        while i_ < @dispose_list.attr_length
          if (!(@dispose_list[i_]).nil?)
            @dispose_list[i_].run
          end
          i_ += 1
        end
      end
      @dispose_list = nil
      @synchronizer.release_synchronizer
      @synchronizer = nil
      release_display
      super
    end
    
    typesig { [] }
    def release_display
      if (!(@embedded_hwnd).equal?(0))
        OS._post_message(@embedded_hwnd, SWT_DESTROY, 0, 0)
      end
      # Release XP Themes
      if (OS::COMCTL32_MAJOR >= 6)
        if (!(@h_button_theme).equal?(0))
          OS._close_theme_data(@h_button_theme)
        end
        if (!(@h_edit_theme).equal?(0))
          OS._close_theme_data(@h_edit_theme)
        end
        if (!(@h_explorer_bar_theme).equal?(0))
          OS._close_theme_data(@h_explorer_bar_theme)
        end
        if (!(@h_scroll_bar_theme).equal?(0))
          OS._close_theme_data(@h_scroll_bar_theme)
        end
        if (!(@h_tab_theme).equal?(0))
          OS._close_theme_data(@h_tab_theme)
        end
        @h_button_theme = @h_edit_theme = @h_explorer_bar_theme = @h_scroll_bar_theme = @h_tab_theme = 0
      end
      # Unhook the message hook
      if (!OS::IsWinCE)
        if (!(@msg_hook).equal?(0))
          OS._unhook_windows_hook_ex(@msg_hook)
        end
        @msg_hook = 0
      end
      # Unhook the filter hook
      if (!OS::IsWinCE)
        if (!(@filter_hook).equal?(0))
          OS._unhook_windows_hook_ex(@filter_hook)
        end
        @filter_hook = 0
        @msg_filter_callback.dispose
        @msg_filter_callback = nil
        @msg_filter_proc = 0
      end
      # Unhook the idle hook
      if (!OS::IsWinCE)
        if (!(@idle_hook).equal?(0))
          OS._unhook_windows_hook_ex(@idle_hook)
        end
        @idle_hook = 0
        @foreground_idle_callback.dispose
        @foreground_idle_callback = nil
        @foreground_idle_proc = 0
      end
      # Destroy the message only HWND
      if (!(@hwnd_message).equal?(0))
        OS._destroy_window(@hwnd_message)
      end
      @hwnd_message = 0
      @message_callback.dispose
      @message_callback = nil
      @message_proc = 0
      # Unregister the SWT window class
      # long
      h_heap = OS._get_process_heap
      # long
      h_instance = OS._get_module_handle(nil)
      OS._unregister_class(@window_class, h_instance)
      # Unregister the SWT drop shadow window class
      OS._unregister_class(@window_shadow_class, h_instance)
      @window_class = @window_shadow_class = nil
      @window_callback.dispose
      @window_callback = nil
      @window_proc = 0
      # Release the System fonts
      if (!(@system_font).nil?)
        @system_font.dispose
      end
      @system_font = nil
      @lf_system_font = nil
      # Release the System Images
      if (!(@error_image).nil?)
        @error_image.dispose
      end
      if (!(@info_image).nil?)
        @info_image.dispose
      end
      if (!(@question_image).nil?)
        @question_image.dispose
      end
      if (!(@warning_icon).nil?)
        @warning_icon.dispose
      end
      @error_image = @info_image = @question_image = @warning_icon = nil
      # Release Sort Indicators
      if (!(@up_arrow).nil?)
        @up_arrow.dispose
      end
      if (!(@down_arrow).nil?)
        @down_arrow.dispose
      end
      @up_arrow = @down_arrow = nil
      # Release the System Cursors
      i = 0
      while i < @cursors.attr_length
        if (!(@cursors[i]).nil?)
          @cursors[i].dispose
        end
        i += 1
      end
      @cursors = nil
      # Release Acquired Resources
      if (!(@resources).nil?)
        i_ = 0
        while i_ < @resources.attr_length
          if (!(@resources[i_]).nil?)
            @resources[i_].dispose
          end
          i_ += 1
        end
        @resources = nil
      end
      # Release Custom Colors for ChooseColor
      if (!(@lp_cust_colors).equal?(0))
        OS._heap_free(h_heap, 0, @lp_cust_colors)
      end
      @lp_cust_colors = 0
      # Uninitialize OLE
      if (!OS::IsWinCE)
        OS._ole_uninitialize
      end
      # Uninitialize buffered painting
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        OS._buffered_paint_un_init
      end
      # Release references
      @thread = nil
      @msg = @hook_msg = nil
      @keyboard = nil
      @modal_dialog = nil
      @modal_shells = nil
      @data = nil
      @keys = nil
      @values = nil
      @bars = @popups = nil
      @index_table = nil
      @timer_ids = nil
      @control_table = nil
      @last_control = @last_get_control = @last_hittest_control = nil
      @image_list = @tool_image_list = @tool_hot_image_list = @tool_disabled_image_list = nil
      @timer_list = nil
      @table_buffer = nil
      @column_visible = nil
      @event_table = @filter_table = nil
      @items = nil
      @click_rect = nil
      @hdr = nil
      @plvfi = nil
      # Release handles
      @thread_id = 0
    end
    
    typesig { [ImageList] }
    def release_image_list(list)
      i = 0
      length_ = @image_list.attr_length
      while (i < length_)
        if ((@image_list[i]).equal?(list))
          if (list.remove_ref > 0)
            return
          end
          list.dispose
          System.arraycopy(@image_list, i + 1, @image_list, i, (length_ -= 1) - i)
          @image_list[length_] = nil
          j = 0
          while j < length_
            if (!(@image_list[j]).nil?)
              return
            end
            j += 1
          end
          @image_list = nil
          return
        end
        i += 1
      end
    end
    
    typesig { [ImageList] }
    def release_tool_image_list(list)
      i = 0
      length_ = @tool_image_list.attr_length
      while (i < length_)
        if ((@tool_image_list[i]).equal?(list))
          if (list.remove_ref > 0)
            return
          end
          list.dispose
          System.arraycopy(@tool_image_list, i + 1, @tool_image_list, i, (length_ -= 1) - i)
          @tool_image_list[length_] = nil
          j = 0
          while j < length_
            if (!(@tool_image_list[j]).nil?)
              return
            end
            j += 1
          end
          @tool_image_list = nil
          return
        end
        i += 1
      end
    end
    
    typesig { [ImageList] }
    def release_tool_hot_image_list(list)
      i = 0
      length_ = @tool_hot_image_list.attr_length
      while (i < length_)
        if ((@tool_hot_image_list[i]).equal?(list))
          if (list.remove_ref > 0)
            return
          end
          list.dispose
          System.arraycopy(@tool_hot_image_list, i + 1, @tool_hot_image_list, i, (length_ -= 1) - i)
          @tool_hot_image_list[length_] = nil
          j = 0
          while j < length_
            if (!(@tool_hot_image_list[j]).nil?)
              return
            end
            j += 1
          end
          @tool_hot_image_list = nil
          return
        end
        i += 1
      end
    end
    
    typesig { [ImageList] }
    def release_tool_disabled_image_list(list)
      i = 0
      length_ = @tool_disabled_image_list.attr_length
      while (i < length_)
        if ((@tool_disabled_image_list[i]).equal?(list))
          if (list.remove_ref > 0)
            return
          end
          list.dispose
          System.arraycopy(@tool_disabled_image_list, i + 1, @tool_disabled_image_list, i, (length_ -= 1) - i)
          @tool_disabled_image_list[length_] = nil
          j = 0
          while j < length_
            if (!(@tool_disabled_image_list[j]).nil?)
              return
            end
            j += 1
          end
          @tool_disabled_image_list = nil
          return
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, Listener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an event of the given type occurs anywhere in
    # a widget. The event type is one of the event constants defined
    # in class <code>SWT</code>.
    # 
    # @param eventType the type of event to listen for
    # @param listener the listener which should no longer be notified when the event occurs
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Listener
    # @see SWT
    # @see #addFilter
    # @see #addListener
    # 
    # @since 3.0
    def remove_filter(event_type, listener)
      check_device
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@filter_table).nil?)
        return
      end
      @filter_table.unhook(event_type, listener)
      if ((@filter_table.size).equal?(0))
        @filter_table = nil
      end
    end
    
    typesig { [::Java::Int, Listener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an event of the given type occurs. The event type
    # is one of the event constants defined in class <code>SWT</code>.
    # 
    # @param eventType the type of event to listen for
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Listener
    # @see SWT
    # @see #addListener
    # 
    # @since 2.0
    def remove_listener(event_type, listener)
      check_device
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        return
      end
      @event_table.unhook(event_type, listener)
    end
    
    typesig { [Menu] }
    def remove_bar(menu)
      if ((@bars).nil?)
        return
      end
      i = 0
      while i < @bars.attr_length
        if ((@bars[i]).equal?(menu))
          @bars[i] = nil
          return
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def remove_control(handle)
      if ((handle).equal?(0))
        return nil
      end
      @last_control = @last_get_control = nil
      control = nil
      index = 0
      if (USE_PROPERTY)
        # 64
        index = RJava.cast_to_int(OS._remove_prop(handle, SWT_OBJECT_INDEX)) - 1
      else
        # 64
        index = RJava.cast_to_int(OS._get_window_long_ptr(handle, OS::GWLP_USERDATA)) - 1
        OS._set_window_long_ptr(handle, OS::GWLP_USERDATA, 0)
      end
      if (0 <= index && index < @control_table.attr_length)
        control = @control_table[index]
        @control_table[index] = nil
        @index_table[index] = @free_slot
        @free_slot = index
      end
      return control
    end
    
    typesig { [MenuItem] }
    def remove_menu_item(item)
      if ((@items).nil?)
        return
      end
      @items[item.attr_id - ID_START] = nil
    end
    
    typesig { [Menu] }
    def remove_popup(menu)
      if ((@popups).nil?)
        return
      end
      i = 0
      while i < @popups.attr_length
        if ((@popups[i]).equal?(menu))
          @popups[i] = nil
          return
        end
        i += 1
      end
    end
    
    typesig { [::Java::Boolean] }
    def run_async_messages(all)
      return @synchronizer.run_async_messages(all)
    end
    
    typesig { [] }
    def run_deferred_events
      # Run deferred events.  This code is always
      # called in the Display's thread so it must
      # be re-enterant but need not be synchronized.
      while (!(@event_queue).nil?)
        # Take an event off the queue
        event = @event_queue[0]
        if ((event).nil?)
          break
        end
        length_ = @event_queue.attr_length
        System.arraycopy(@event_queue, 1, @event_queue, 0, (length_ -= 1))
        @event_queue[length_] = nil
        # Run the event
        widget = event.attr_widget
        if (!(widget).nil? && !widget.is_disposed)
          item = event.attr_item
          if ((item).nil? || !item.is_disposed)
            widget.send_event(event)
          end
        end
      end
      # Clear the queue
      @event_queue = nil
      return true
    end
    
    typesig { [] }
    def run_popups
      if ((@popups).nil?)
        return false
      end
      result = false
      while (!(@popups).nil?)
        menu = @popups[0]
        if ((menu).nil?)
          break
        end
        length_ = @popups.attr_length
        System.arraycopy(@popups, 1, @popups, 0, (length_ -= 1))
        @popups[length_] = nil
        run_deferred_events
        if (!menu.is_disposed)
          menu.__set_visible(true)
        end
        result = true
      end
      @popups = nil
      return result
    end
    
    typesig { [] }
    def run_settings
      old_font = get_system_font
      save_resources
      update_images
      send_event(SWT::Settings, nil)
      new_font = get_system_font
      same_font = (old_font == new_font)
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!shell.is_disposed)
          if (!same_font)
            shell.update_font(old_font, new_font)
          end
          # This code is intentionally commented
          # shell.redraw (true);
          shell.layout(true, true)
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def run_timer(id)
      if (!(@timer_list).nil? && !(@timer_ids).nil?)
        index = 0
        while (index < @timer_ids.attr_length)
          if ((@timer_ids[index]).equal?(id))
            OS._kill_timer(@hwnd_message, @timer_ids[index])
            @timer_ids[index] = 0
            runnable = @timer_list[index]
            @timer_list[index] = nil
            if (!(runnable).nil?)
              runnable.run
            end
            return true
          end
          index += 1
        end
      end
      return false
    end
    
    typesig { [] }
    def save_resources
      resource_count = 0
      if ((@resources).nil?)
        @resources = Array.typed(Resource).new(RESOURCE_SIZE) { nil }
      else
        resource_count = @resources.attr_length
        new_resources = Array.typed(Resource).new(resource_count + RESOURCE_SIZE) { nil }
        System.arraycopy(@resources, 0, new_resources, 0, resource_count)
        @resources = new_resources
      end
      if (!(@system_font).nil?)
        if (!OS::IsWinCE)
          info = OS::IsUnicode ? NONCLIENTMETRICSW.new : NONCLIENTMETRICSA.new
          info.attr_cb_size = NONCLIENTMETRICS.attr_sizeof
          if (OS._system_parameters_info(OS::SPI_GETNONCLIENTMETRICS, 0, info, 0))
            log_font = OS::IsUnicode ? (info).attr_lf_message_font : (info).attr_lf_message_font
            if ((@lf_system_font).nil? || !(log_font.attr_lf_char_set).equal?(@lf_system_font.attr_lf_char_set) || !(log_font.attr_lf_height).equal?(@lf_system_font.attr_lf_height) || !(log_font.attr_lf_width).equal?(@lf_system_font.attr_lf_width) || !(log_font.attr_lf_escapement).equal?(@lf_system_font.attr_lf_escapement) || !(log_font.attr_lf_orientation).equal?(@lf_system_font.attr_lf_orientation) || !(log_font.attr_lf_weight).equal?(@lf_system_font.attr_lf_weight) || !(log_font.attr_lf_italic).equal?(@lf_system_font.attr_lf_italic) || !(log_font.attr_lf_underline).equal?(@lf_system_font.attr_lf_underline) || !(log_font.attr_lf_strike_out).equal?(@lf_system_font.attr_lf_strike_out) || !(log_font.attr_lf_char_set).equal?(@lf_system_font.attr_lf_char_set) || !(log_font.attr_lf_out_precision).equal?(@lf_system_font.attr_lf_out_precision) || !(log_font.attr_lf_clip_precision).equal?(@lf_system_font.attr_lf_clip_precision) || !(log_font.attr_lf_quality).equal?(@lf_system_font.attr_lf_quality) || !(log_font.attr_lf_pitch_and_family).equal?(@lf_system_font.attr_lf_pitch_and_family) || !(get_font_name(log_font) == get_font_name(@lf_system_font)))
              @resources[((resource_count += 1) - 1)] = @system_font
              @lf_system_font = log_font
              @system_font = nil
            end
          end
        end
      end
      if (!(@error_image).nil?)
        @resources[((resource_count += 1) - 1)] = @error_image
      end
      if (!(@info_image).nil?)
        @resources[((resource_count += 1) - 1)] = @info_image
      end
      if (!(@question_image).nil?)
        @resources[((resource_count += 1) - 1)] = @question_image
      end
      if (!(@warning_icon).nil?)
        @resources[((resource_count += 1) - 1)] = @warning_icon
      end
      @error_image = @info_image = @question_image = @warning_icon = nil
      i = 0
      while i < @cursors.attr_length
        if (!(@cursors[i]).nil?)
          @resources[((resource_count += 1) - 1)] = @cursors[i]
        end
        @cursors[i] = nil
        i += 1
      end
      if (resource_count < RESOURCE_SIZE)
        new_resources = Array.typed(Resource).new(resource_count) { nil }
        System.arraycopy(@resources, 0, new_resources, 0, resource_count)
        @resources = new_resources
      end
    end
    
    typesig { [::Java::Int, Event] }
    def send_event(event_type, event)
      if ((@event_table).nil? && (@filter_table).nil?)
        return
      end
      if ((event).nil?)
        event = Event.new
      end
      event.attr_display = self
      event.attr_type = event_type
      if ((event.attr_time).equal?(0))
        event.attr_time = get_last_event_time
      end
      if (!filter_event(event))
        if (!(@event_table).nil?)
          @event_table.send_event(event)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the location of the on-screen pointer relative to the top left corner
    # of the screen.  <b>Note: It is typically considered bad practice for a
    # program to move the on-screen pointer location.</b>
    # 
    # @param x the new x coordinate for the cursor
    # @param y the new y coordinate for the cursor
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1
    def set_cursor_location(x, y)
      check_device
      OS._set_cursor_pos(x, y)
    end
    
    typesig { [Point] }
    # Sets the location of the on-screen pointer relative to the top left corner
    # of the screen.  <b>Note: It is typically considered bad practice for a
    # program to move the on-screen pointer location.</b>
    # 
    # @param point new position
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_NULL_ARGUMENT - if the point is null
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.0
    def set_cursor_location(point)
      check_device
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_cursor_location(point.attr_x, point.attr_y)
    end
    
    typesig { [String, Object] }
    # Sets the application defined property of the receiver
    # with the specified name to the given argument.
    # <p>
    # Applications may have associated arbitrary objects with the
    # receiver in this fashion. If the objects stored in the
    # properties need to be notified when the display is disposed
    # of, it is the application's responsibility provide a
    # <code>disposeExec()</code> handler which does so.
    # </p>
    # 
    # @param key the name of the property
    # @param value the new value for the property
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the key is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getData(String)
    # @see #disposeExec(Runnable)
    def set_data(key, value)
      check_device
      if ((key).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((key == RUN_MESSAGES_IN_IDLE_KEY))
        data = value
        @run_messages_in_idle = !(data).nil? && data.boolean_value
        return
      end
      if ((key == RUN_MESSAGES_IN_MESSAGE_PROC_KEY))
        data = value
        @run_messages_in_message_proc = !(data).nil? && data.boolean_value
        return
      end
      # Remove the key/value pair
      if ((value).nil?)
        if ((@keys).nil?)
          return
        end
        index = 0
        while (index < @keys.attr_length && !(@keys[index] == key))
          index += 1
        end
        if ((index).equal?(@keys.attr_length))
          return
        end
        if ((@keys.attr_length).equal?(1))
          @keys = nil
          @values = nil
        else
          new_keys = Array.typed(String).new(@keys.attr_length - 1) { nil }
          new_values = Array.typed(Object).new(@values.attr_length - 1) { nil }
          System.arraycopy(@keys, 0, new_keys, 0, index)
          System.arraycopy(@keys, index + 1, new_keys, index, new_keys.attr_length - index)
          System.arraycopy(@values, 0, new_values, 0, index)
          System.arraycopy(@values, index + 1, new_values, index, new_values.attr_length - index)
          @keys = new_keys
          @values = new_values
        end
        return
      end
      # Add the key/value pair
      if ((@keys).nil?)
        @keys = Array.typed(String).new([key])
        @values = Array.typed(Object).new([value])
        return
      end
      i = 0
      while i < @keys.attr_length
        if ((@keys[i] == key))
          @values[i] = value
          return
        end
        i += 1
      end
      new_keys = Array.typed(String).new(@keys.attr_length + 1) { nil }
      new_values = Array.typed(Object).new(@values.attr_length + 1) { nil }
      System.arraycopy(@keys, 0, new_keys, 0, @keys.attr_length)
      System.arraycopy(@values, 0, new_values, 0, @values.attr_length)
      new_keys[@keys.attr_length] = key
      new_values[@values.attr_length] = value
      @keys = new_keys
      @values = new_values
    end
    
    typesig { [Object] }
    # Sets the application defined, display specific data
    # associated with the receiver, to the argument.
    # The <em>display specific data</em> is a single,
    # unnamed field that is stored with every display.
    # <p>
    # Applications may put arbitrary objects in this field. If
    # the object stored in the display specific data needs to
    # be notified when the display is disposed of, it is the
    # application's responsibility provide a
    # <code>disposeExec()</code> handler which does so.
    # </p>
    # 
    # @param data the new display specific data
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getData()
    # @see #disposeExec(Runnable)
    def set_data(data)
      check_device
      @data = data
    end
    
    class_module.module_eval {
      typesig { [String] }
      # On platforms which support it, sets the application name
      # to be the argument. On Motif, for example, this can be used
      # to set the name used for resource lookup.  Specifying
      # <code>null</code> for the name clears it.
      # 
      # @param name the new app name or <code>null</code>
      def set_app_name(name)
        # Do nothing
      end
    }
    
    typesig { [Dialog] }
    def set_modal_dialog(modal_dailog)
      @modal_dialog = modal_dailog
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shells[i].update_modal
        i += 1
      end
    end
    
    typesig { [Shell] }
    def set_modal_shell(shell)
      if ((@modal_shells).nil?)
        @modal_shells = Array.typed(Shell).new(4) { nil }
      end
      index = 0
      length_ = @modal_shells.attr_length
      while (index < length_)
        if ((@modal_shells[index]).equal?(shell))
          return
        end
        if ((@modal_shells[index]).nil?)
          break
        end
        index += 1
      end
      if ((index).equal?(length_))
        new_modal_shells = Array.typed(Shell).new(length_ + 4) { nil }
        System.arraycopy(@modal_shells, 0, new_modal_shells, 0, length_)
        @modal_shells = new_modal_shells
      end
      @modal_shells[index] = shell
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shells[i].update_modal
        i += 1
      end
    end
    
    typesig { [Synchronizer] }
    # Sets the synchronizer used by the display to be
    # the argument, which can not be null.
    # 
    # @param synchronizer the new synchronizer for the display (must not be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the synchronizer is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_FAILED_EXEC - if an exception occurred while running an inter-thread message</li>
    # </ul>
    def set_synchronizer(synchronizer)
      check_device
      if ((synchronizer).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((synchronizer).equal?(@synchronizer))
        return
      end
      old_synchronizer = nil
      synchronized((Device)) do
        old_synchronizer = @synchronizer
        @synchronizer = synchronizer
      end
      if (!(old_synchronizer).nil?)
        old_synchronizer.run_async_messages(true)
      end
    end
    
    typesig { [::Java::Int] }
    def shifted_key(key)
      if (OS::IsWinCE)
        return 0
      end
      # Clear the virtual keyboard and press the shift key
      i = 0
      while i < @keyboard.attr_length
        @keyboard[i] = 0
        i += 1
      end
      @keyboard[OS::VK_SHIFT] |= 0x80
      # Translate the key to ASCII or UNICODE using the virtual keyboard
      if (OS::IsUnicode)
        result = CharArray.new(1)
        if ((OS._to_unicode(key, key, @keyboard, result, 1, 0)).equal?(1))
          return result[0]
        end
      else
        result = Array.typed(::Java::Short).new(1) { 0 }
        if ((OS._to_ascii(key, key, @keyboard, result, 0)).equal?(1))
          return result[0]
        end
      end
      return 0
    end
    
    typesig { [] }
    # Causes the user-interface thread to <em>sleep</em> (that is,
    # to be put in a state where it does not consume CPU cycles)
    # until an event is received or it is otherwise awakened.
    # 
    # @return <code>true</code> if an event requiring dispatching was placed on the queue.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #wake
    def sleep
      check_device
      if (@run_messages && !(get_message_count).equal?(0))
        return true
      end
      if (OS::IsWinCE)
        OS._msg_wait_for_multiple_objects_ex(0, 0, OS::INFINITE, OS::QS_ALLINPUT, OS::MWMO_INPUTAVAILABLE)
        return true
      end
      return OS._wait_message
    end
    
    typesig { [Runnable] }
    # Causes the <code>run()</code> method of the runnable to
    # be invoked by the user-interface thread at the next
    # reasonable opportunity. The thread which calls this method
    # is suspended until the runnable completes.  Specifying <code>null</code>
    # as the runnable simply wakes the user-interface thread.
    # <p>
    # Note that at the time the runnable is invoked, widgets
    # that have the receiver as their display may have been
    # disposed. Therefore, it is necessary to check for this
    # case inside the runnable before accessing the widget.
    # </p>
    # 
    # @param runnable code to run on the user-interface thread or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_FAILED_EXEC - if an exception occurred when executing the runnable</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #asyncExec
    def sync_exec(runnable)
      synchronizer = nil
      synchronized((Device)) do
        if (is_disposed)
          error(SWT::ERROR_DEVICE_DISPOSED)
        end
        synchronizer = @synchronizer
      end
      synchronizer.sync_exec(runnable)
    end
    
    typesig { [::Java::Int, Runnable] }
    # Causes the <code>run()</code> method of the runnable to
    # be invoked by the user-interface thread after the specified
    # number of milliseconds have elapsed. If milliseconds is less
    # than zero, the runnable is not executed.
    # <p>
    # Note that at the time the runnable is invoked, widgets
    # that have the receiver as their display may have been
    # disposed. Therefore, it is necessary to check for this
    # case inside the runnable before accessing the widget.
    # </p>
    # 
    # @param milliseconds the delay before running the runnable
    # @param runnable code to run on the user-interface thread
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the runnable is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #asyncExec
    def timer_exec(milliseconds, runnable)
      check_device
      if ((runnable).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@timer_list).nil?)
        @timer_list = Array.typed(Runnable).new(4) { nil }
      end
      if ((@timer_ids).nil?)
        # long
        @timer_ids = Array.typed(::Java::Int).new(4) { 0 }
      end
      index = 0
      while (index < @timer_list.attr_length)
        if ((@timer_list[index]).equal?(runnable))
          break
        end
        index += 1
      end
      # long
      timer_id = 0
      if (!(index).equal?(@timer_list.attr_length))
        timer_id = @timer_ids[index]
        if (milliseconds < 0)
          OS._kill_timer(@hwnd_message, timer_id)
          @timer_list[index] = nil
          @timer_ids[index] = 0
          return
        end
      else
        if (milliseconds < 0)
          return
        end
        index = 0
        while (index < @timer_list.attr_length)
          if ((@timer_list[index]).nil?)
            break
          end
          index += 1
        end
        timer_id = ((@next_timer_id += 1) - 1)
        if ((index).equal?(@timer_list.attr_length))
          new_timer_list = Array.typed(Runnable).new(@timer_list.attr_length + 4) { nil }
          System.arraycopy(@timer_list, 0, new_timer_list, 0, @timer_list.attr_length)
          @timer_list = new_timer_list
          # long
          # long
          new_timer_ids = Array.typed(::Java::Int).new(@timer_ids.attr_length + 4) { 0 }
          System.arraycopy(@timer_ids, 0, new_timer_ids, 0, @timer_ids.attr_length)
          @timer_ids = new_timer_ids
        end
      end
      # long
      new_timer_id = OS._set_timer(@hwnd_message, timer_id, milliseconds, 0)
      if (!(new_timer_id).equal?(0))
        @timer_list[index] = runnable
        @timer_ids[index] = new_timer_id
      end
    end
    
    typesig { [MSG, Control] }
    def translate_accelerator(msg, control)
      @accel_key_hit = true
      result = control.translate_accelerator(msg)
      @accel_key_hit = false
      return result
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def translate_key(key)
        i = 0
        while i < KeyTable.attr_length
          if ((KeyTable[i][0]).equal?(key))
            return KeyTable[i][1]
          end
          i += 1
        end
        return 0
      end
    }
    
    typesig { [MSG, Control] }
    def translate_mnemonic(msg, control)
      case (msg.attr_message)
      when OS::WM_CHAR, OS::WM_SYSCHAR
        return control.translate_mnemonic(msg)
      end
      return false
    end
    
    typesig { [MSG, Control] }
    def translate_traversal(msg, control)
      case (msg.attr_message)
      when OS::WM_KEYDOWN
        # 64
        case (RJava.cast_to_int(msg.attr_w_param))
        when OS::VK_RETURN, OS::VK_ESCAPE, OS::VK_TAB, OS::VK_UP, OS::VK_DOWN, OS::VK_LEFT, OS::VK_RIGHT, OS::VK_PRIOR, OS::VK_NEXT
          return control.translate_traversal(msg)
        end
      when OS::WM_SYSKEYDOWN
        # 64
        case (RJava.cast_to_int(msg.attr_w_param))
        when OS::VK_MENU
          return control.translate_traversal(msg)
        end
      end
      return false
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def untranslate_key(key)
        i = 0
        while i < KeyTable.attr_length
          if ((KeyTable[i][1]).equal?(key))
            return KeyTable[i][0]
          end
          i += 1
        end
        return 0
      end
    }
    
    typesig { [] }
    # Forces all outstanding paint requests for the display
    # to be processed before this method returns.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Control#update()
    def update
      check_device
      # Feature in Windows.  When an application does not remove
      # events from the event queue for some time, Windows assumes
      # the application is not responding and no longer sends paint
      # events to the application.  The fix is to detect that the
      # application is not responding and call PeekMessage() with
      # PM_REMOVE to tell Windows that the application is ready
      # to dispatch events.  Note that the message does not have
      # to be found or dispatched in order to wake Windows up.
      # 
      # NOTE: This allows other cross thread messages to be delivered,
      # most notably WM_ACTIVATE.
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
        if (OS._is_hung_app_window(@hwnd_message))
          msg = MSG.new
          flags = OS::PM_REMOVE | OS::PM_NOYIELD
          OS._peek_message(msg, @hwnd_message, SWT_NULL, SWT_NULL, flags)
        end
      end
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!shell.is_disposed)
          shell.update(true)
        end
        i += 1
      end
    end
    
    typesig { [] }
    def update_images
      if (!(@up_arrow).nil?)
        @up_arrow.dispose
      end
      if (!(@down_arrow).nil?)
        @down_arrow.dispose
      end
      @up_arrow = @down_arrow = nil
      i = 0
      while i < @control_table.attr_length
        control = @control_table[i]
        if (!(control).nil?)
          control.update_images
        end
        i += 1
      end
    end
    
    typesig { [] }
    # If the receiver's user-interface thread was <code>sleep</code>ing,
    # causes it to be awakened and start running again. Note that this
    # method may be called from any thread.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #sleep
    def wake
      synchronized((Device)) do
        if (is_disposed)
          error(SWT::ERROR_DEVICE_DISPOSED)
        end
        if ((@thread).equal?(JavaThread.current_thread))
          return
        end
        wake_thread
      end
    end
    
    typesig { [] }
    def wake_thread
      if (OS::IsWinCE)
        OS._post_message(@hwnd_message, OS::WM_NULL, 0, 0)
      else
        OS._post_thread_message(@thread_id, OS::WM_NULL, 0, 0)
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Char, ::Java::Int] }
      # Returns a single character, converted from the wide
      # character set (WCS) used by Java to the specified
      # multi-byte character set used by the operating system
      # widgets.
      # 
      # @param ch the WCS character
      # @param codePage the code page used to convert the character
      # @return the MBCS character
      def wcs_to_mbcs(ch, code_page)
        if (OS::IsUnicode)
          return ch
        end
        if (ch <= 0x7f)
          return ch
        end
        buffer = TCHAR.new(code_page, ch, false)
        return buffer.tchar_at(0)
      end
      
      typesig { [::Java::Char] }
      # Returns a single character, converted from the wide
      # character set (WCS) used by Java to the default
      # multi-byte character set used by the operating system
      # widgets.
      # 
      # @param ch the WCS character
      # @return the MBCS character
      def wcs_to_mbcs(ch)
        return wcs_to_mbcs(ch, 0)
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def window_proc(hwnd, msg, w_param, l_param)
      # Feature in Windows.  On Vista only, it is faster to
      # compute and answer the data for the visible columns
      # of a table when scrolling, rather than just return
      # the data for each column when asked.
      if (!(@column_visible).nil?)
        if ((msg).equal?(OS::WM_NOTIFY) && (@hwnd_parent).equal?(hwnd))
          OS._move_memory(@hdr, l_param, NMHDR.attr_sizeof)
          case (@hdr.attr_code)
          when OS::LVN_GETDISPINFOA, OS::LVN_GETDISPINFOW
            OS._move_memory(@plvfi, l_param, NMLVDISPINFO.attr_sizeof)
            if (0 <= @plvfi.attr_i_sub_item && @plvfi.attr_i_sub_item < @column_count)
              if (!@column_visible[@plvfi.attr_i_sub_item])
                return 0
              end
            end
          end
        end
      end
      # Bug in Adobe Reader 7.0.  For some reason, when Adobe
      # Reader 7.0 is deactivated from within Internet Explorer,
      # it sends thousands of consecutive WM_NCHITTEST messages
      # to the control that is under the cursor.  It seems that
      # if the control takes some time to respond to the message,
      # Adobe stops sending them.  The fix is to detect this case
      # and sleep.
      # 
      # NOTE: Under normal circumstances, Windows will never send
      # consecutive WM_NCHITTEST messages to the same control without
      # another message (normally WM_SETCURSOR) in between.
      # 
      # 64
      if ((RJava.cast_to_int(msg)).equal?(OS::WM_NCHITTEST))
        if (((@hit_count += 1) - 1) >= 1024)
          begin
            JavaThread.sleep(1)
          rescue JavaThrowable => t
          end
        end
      else
        @hit_count = 0
      end
      if (!(@last_control).nil? && (@last_hwnd).equal?(hwnd))
        # 64
        return @last_control.window_proc(hwnd, RJava.cast_to_int(msg), w_param, l_param)
      end
      index = 0
      if (USE_PROPERTY)
        # 64
        index = RJava.cast_to_int(OS._get_prop(hwnd, SWT_OBJECT_INDEX)) - 1
      else
        # 64
        index = RJava.cast_to_int(OS._get_window_long_ptr(hwnd, OS::GWLP_USERDATA)) - 1
      end
      if (0 <= index && index < @control_table.attr_length)
        control = @control_table[index]
        if (!(control).nil?)
          @last_hwnd = hwnd
          @last_control = control
          # 64
          return control.window_proc(hwnd, RJava.cast_to_int(msg), w_param, l_param)
        end
      end
      # 64
      return OS._def_window_proc(hwnd, RJava.cast_to_int(msg), w_param, l_param)
    end
    
    class_module.module_eval {
      typesig { [String] }
      def with_cr_lf(string)
        # If the string is empty, return the string.
        length_ = string.length
        if ((length_).equal?(0))
          return string
        end
        # Check for an LF or CR/LF and assume the rest of
        # the string is formated that way.  This will not
        # work if the string contains mixed delimiters.
        i = string.index_of(Character.new(?\n.ord), 0)
        if ((i).equal?(-1))
          return string
        end
        if (i > 0 && (string.char_at(i - 1)).equal?(Character.new(?\r.ord)))
          return string
        end
        # The string is formatted with LF.  Compute the
        # number of lines and the size of the buffer
        # needed to hold the result
        i += 1
        count = 1
        while (i < length_)
          if (((i = string.index_of(Character.new(?\n.ord), i))).equal?(-1))
            break
          end
          count += 1
          i += 1
        end
        count += length_
        # Create a new string with the CR/LF line terminator.
        i = 0
        result = StringBuffer.new(count)
        while (i < length_)
          j = string.index_of(Character.new(?\n.ord), i)
          if ((j).equal?(-1))
            j = length_
          end
          result.append(string.substring(i, j))
          if ((i = j) < length_)
            result.append("\r\n") # $NON-NLS-1$
            i += 1
          end
        end
        return result.to_s
      end
    }
    
    private
    alias_method :initialize__display, :initialize
  end
  
end
