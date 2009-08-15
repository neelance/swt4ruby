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
  module DisplayImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRunLoopSourceContext
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :EventRecord
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :MenuTrackingData
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :GDevice
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HICommand
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :RGBColor
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    # Windows and Events
    attr_accessor :event_queue
    alias_method :attr_event_queue, :event_queue
    undef_method :event_queue
    alias_method :attr_event_queue=, :event_queue=
    undef_method :event_queue=
    
    attr_accessor :action_callback
    alias_method :attr_action_callback, :action_callback
    undef_method :action_callback
    alias_method :attr_action_callback=, :action_callback=
    undef_method :action_callback=
    
    attr_accessor :apple_event_callback
    alias_method :attr_apple_event_callback, :apple_event_callback
    undef_method :apple_event_callback
    alias_method :attr_apple_event_callback=, :apple_event_callback=
    undef_method :apple_event_callback=
    
    attr_accessor :clock_callback
    alias_method :attr_clock_callback, :clock_callback
    undef_method :clock_callback
    alias_method :attr_clock_callback=, :clock_callback=
    undef_method :clock_callback=
    
    attr_accessor :command_callback
    alias_method :attr_command_callback, :command_callback
    undef_method :command_callback
    alias_method :attr_command_callback=, :command_callback=
    undef_method :command_callback=
    
    attr_accessor :control_callback
    alias_method :attr_control_callback, :control_callback
    undef_method :control_callback
    alias_method :attr_control_callback=, :control_callback=
    undef_method :control_callback=
    
    attr_accessor :accessibility_callback
    alias_method :attr_accessibility_callback, :accessibility_callback
    undef_method :accessibility_callback
    alias_method :attr_accessibility_callback=, :accessibility_callback=
    undef_method :accessibility_callback=
    
    attr_accessor :appearance_callback
    alias_method :attr_appearance_callback, :appearance_callback
    undef_method :appearance_callback
    alias_method :attr_appearance_callback=, :appearance_callback=
    undef_method :appearance_callback=
    
    attr_accessor :draw_item_callback
    alias_method :attr_draw_item_callback, :draw_item_callback
    undef_method :draw_item_callback
    alias_method :attr_draw_item_callback=, :draw_item_callback=
    undef_method :draw_item_callback=
    
    attr_accessor :item_data_callback
    alias_method :attr_item_data_callback, :item_data_callback
    undef_method :item_data_callback
    alias_method :attr_item_data_callback=, :item_data_callback=
    undef_method :item_data_callback=
    
    attr_accessor :item_notification_callback
    alias_method :attr_item_notification_callback, :item_notification_callback
    undef_method :item_notification_callback
    alias_method :attr_item_notification_callback=, :item_notification_callback=
    undef_method :item_notification_callback=
    
    attr_accessor :item_compare_callback
    alias_method :attr_item_compare_callback, :item_compare_callback
    undef_method :item_compare_callback
    alias_method :attr_item_compare_callback=, :item_compare_callback=
    undef_method :item_compare_callback=
    
    attr_accessor :search_callback
    alias_method :attr_search_callback, :search_callback
    undef_method :search_callback
    alias_method :attr_search_callback=, :search_callback=
    undef_method :search_callback=
    
    attr_accessor :tray_item_callback
    alias_method :attr_tray_item_callback, :tray_item_callback
    undef_method :tray_item_callback
    alias_method :attr_tray_item_callback=, :tray_item_callback=
    undef_method :tray_item_callback=
    
    attr_accessor :hit_test_callback
    alias_method :attr_hit_test_callback, :hit_test_callback
    undef_method :hit_test_callback
    alias_method :attr_hit_test_callback=, :hit_test_callback=
    undef_method :hit_test_callback=
    
    attr_accessor :keyboard_callback
    alias_method :attr_keyboard_callback, :keyboard_callback
    undef_method :keyboard_callback
    alias_method :attr_keyboard_callback=, :keyboard_callback=
    undef_method :keyboard_callback=
    
    attr_accessor :menu_callback
    alias_method :attr_menu_callback, :menu_callback
    undef_method :menu_callback
    alias_method :attr_menu_callback=, :menu_callback=
    undef_method :menu_callback=
    
    attr_accessor :mouse_hover_callback
    alias_method :attr_mouse_hover_callback, :mouse_hover_callback
    undef_method :mouse_hover_callback
    alias_method :attr_mouse_hover_callback=, :mouse_hover_callback=
    undef_method :mouse_hover_callback=
    
    attr_accessor :help_callback
    alias_method :attr_help_callback, :help_callback
    undef_method :help_callback
    alias_method :attr_help_callback=, :help_callback=
    undef_method :help_callback=
    
    attr_accessor :observer_callback
    alias_method :attr_observer_callback, :observer_callback
    undef_method :observer_callback
    alias_method :attr_observer_callback=, :observer_callback=
    undef_method :observer_callback=
    
    attr_accessor :source_callback
    alias_method :attr_source_callback, :source_callback
    undef_method :source_callback
    alias_method :attr_source_callback=, :source_callback=
    undef_method :source_callback=
    
    attr_accessor :mouse_callback
    alias_method :attr_mouse_callback, :mouse_callback
    undef_method :mouse_callback
    alias_method :attr_mouse_callback=, :mouse_callback=
    undef_method :mouse_callback=
    
    attr_accessor :tracking_callback
    alias_method :attr_tracking_callback, :tracking_callback
    undef_method :tracking_callback
    alias_method :attr_tracking_callback=, :tracking_callback=
    undef_method :tracking_callback=
    
    attr_accessor :window_callback
    alias_method :attr_window_callback, :window_callback
    undef_method :window_callback
    alias_method :attr_window_callback=, :window_callback=
    undef_method :window_callback=
    
    attr_accessor :color_callback
    alias_method :attr_color_callback, :color_callback
    undef_method :color_callback
    alias_method :attr_color_callback=, :color_callback=
    undef_method :color_callback=
    
    attr_accessor :text_input_callback
    alias_method :attr_text_input_callback, :text_input_callback
    undef_method :text_input_callback
    alias_method :attr_text_input_callback=, :text_input_callback=
    undef_method :text_input_callback=
    
    attr_accessor :release_callback
    alias_method :attr_release_callback, :release_callback
    undef_method :release_callback
    alias_method :attr_release_callback=, :release_callback=
    undef_method :release_callback=
    
    attr_accessor :core_event_callback
    alias_method :attr_core_event_callback, :core_event_callback
    undef_method :core_event_callback
    alias_method :attr_core_event_callback=, :core_event_callback=
    undef_method :core_event_callback=
    
    attr_accessor :polling_callback
    alias_method :attr_polling_callback, :polling_callback
    undef_method :polling_callback
    alias_method :attr_polling_callback=, :polling_callback=
    undef_method :polling_callback=
    
    attr_accessor :action_proc
    alias_method :attr_action_proc, :action_proc
    undef_method :action_proc
    alias_method :attr_action_proc=, :action_proc=
    undef_method :action_proc=
    
    attr_accessor :apple_event_proc
    alias_method :attr_apple_event_proc, :apple_event_proc
    undef_method :apple_event_proc
    alias_method :attr_apple_event_proc=, :apple_event_proc=
    undef_method :apple_event_proc=
    
    attr_accessor :clock_proc
    alias_method :attr_clock_proc, :clock_proc
    undef_method :clock_proc
    alias_method :attr_clock_proc=, :clock_proc=
    undef_method :clock_proc=
    
    attr_accessor :command_proc
    alias_method :attr_command_proc, :command_proc
    undef_method :command_proc
    alias_method :attr_command_proc=, :command_proc=
    undef_method :command_proc=
    
    attr_accessor :control_proc
    alias_method :attr_control_proc, :control_proc
    undef_method :control_proc
    alias_method :attr_control_proc=, :control_proc=
    undef_method :control_proc=
    
    attr_accessor :appearance_proc
    alias_method :attr_appearance_proc, :appearance_proc
    undef_method :appearance_proc
    alias_method :attr_appearance_proc=, :appearance_proc=
    undef_method :appearance_proc=
    
    attr_accessor :accessibility_proc
    alias_method :attr_accessibility_proc, :accessibility_proc
    undef_method :accessibility_proc
    alias_method :attr_accessibility_proc=, :accessibility_proc=
    undef_method :accessibility_proc=
    
    attr_accessor :draw_item_proc
    alias_method :attr_draw_item_proc, :draw_item_proc
    undef_method :draw_item_proc
    alias_method :attr_draw_item_proc=, :draw_item_proc=
    undef_method :draw_item_proc=
    
    attr_accessor :item_data_proc
    alias_method :attr_item_data_proc, :item_data_proc
    undef_method :item_data_proc
    alias_method :attr_item_data_proc=, :item_data_proc=
    undef_method :item_data_proc=
    
    attr_accessor :item_notification_proc
    alias_method :attr_item_notification_proc, :item_notification_proc
    undef_method :item_notification_proc
    alias_method :attr_item_notification_proc=, :item_notification_proc=
    undef_method :item_notification_proc=
    
    attr_accessor :item_compare_proc
    alias_method :attr_item_compare_proc, :item_compare_proc
    undef_method :item_compare_proc
    alias_method :attr_item_compare_proc=, :item_compare_proc=
    undef_method :item_compare_proc=
    
    attr_accessor :help_proc
    alias_method :attr_help_proc, :help_proc
    undef_method :help_proc
    alias_method :attr_help_proc=, :help_proc=
    undef_method :help_proc=
    
    attr_accessor :search_proc
    alias_method :attr_search_proc, :search_proc
    undef_method :search_proc
    alias_method :attr_search_proc=, :search_proc=
    undef_method :search_proc=
    
    attr_accessor :tray_item_proc
    alias_method :attr_tray_item_proc, :tray_item_proc
    undef_method :tray_item_proc
    alias_method :attr_tray_item_proc=, :tray_item_proc=
    undef_method :tray_item_proc=
    
    attr_accessor :hit_test_proc
    alias_method :attr_hit_test_proc, :hit_test_proc
    undef_method :hit_test_proc
    alias_method :attr_hit_test_proc=, :hit_test_proc=
    undef_method :hit_test_proc=
    
    attr_accessor :keyboard_proc
    alias_method :attr_keyboard_proc, :keyboard_proc
    undef_method :keyboard_proc
    alias_method :attr_keyboard_proc=, :keyboard_proc=
    undef_method :keyboard_proc=
    
    attr_accessor :menu_proc
    alias_method :attr_menu_proc, :menu_proc
    undef_method :menu_proc
    alias_method :attr_menu_proc=, :menu_proc=
    undef_method :menu_proc=
    
    attr_accessor :mouse_hover_proc
    alias_method :attr_mouse_hover_proc, :mouse_hover_proc
    undef_method :mouse_hover_proc
    alias_method :attr_mouse_hover_proc=, :mouse_hover_proc=
    undef_method :mouse_hover_proc=
    
    attr_accessor :observer_proc
    alias_method :attr_observer_proc, :observer_proc
    undef_method :observer_proc
    alias_method :attr_observer_proc=, :observer_proc=
    undef_method :observer_proc=
    
    attr_accessor :source_proc
    alias_method :attr_source_proc, :source_proc
    undef_method :source_proc
    alias_method :attr_source_proc=, :source_proc=
    undef_method :source_proc=
    
    attr_accessor :mouse_proc
    alias_method :attr_mouse_proc, :mouse_proc
    undef_method :mouse_proc
    alias_method :attr_mouse_proc=, :mouse_proc=
    undef_method :mouse_proc=
    
    attr_accessor :tracking_proc
    alias_method :attr_tracking_proc, :tracking_proc
    undef_method :tracking_proc
    alias_method :attr_tracking_proc=, :tracking_proc=
    undef_method :tracking_proc=
    
    attr_accessor :window_proc
    alias_method :attr_window_proc, :window_proc
    undef_method :window_proc
    alias_method :attr_window_proc=, :window_proc=
    undef_method :window_proc=
    
    attr_accessor :color_proc
    alias_method :attr_color_proc, :color_proc
    undef_method :color_proc
    alias_method :attr_color_proc=, :color_proc=
    undef_method :color_proc=
    
    attr_accessor :text_input_proc
    alias_method :attr_text_input_proc, :text_input_proc
    undef_method :text_input_proc
    alias_method :attr_text_input_proc=, :text_input_proc=
    undef_method :text_input_proc=
    
    attr_accessor :release_proc
    alias_method :attr_release_proc, :release_proc
    undef_method :release_proc
    alias_method :attr_release_proc=, :release_proc=
    undef_method :release_proc=
    
    attr_accessor :core_event_proc
    alias_method :attr_core_event_proc, :core_event_proc
    undef_method :core_event_proc
    alias_method :attr_core_event_proc=, :core_event_proc=
    undef_method :core_event_proc=
    
    attr_accessor :polling_proc
    alias_method :attr_polling_proc, :polling_proc
    undef_method :polling_proc
    alias_method :attr_polling_proc=, :polling_proc=
    undef_method :polling_proc=
    
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
    
    attr_accessor :queue
    alias_method :attr_queue, :queue
    undef_method :queue
    alias_method :attr_queue=, :queue=
    undef_method :queue=
    
    attr_accessor :run_loop
    alias_method :attr_run_loop, :run_loop
    undef_method :run_loop
    alias_method :attr_run_loop=, :run_loop=
    undef_method :run_loop=
    
    attr_accessor :run_loop_source
    alias_method :attr_run_loop_source, :run_loop_source
    undef_method :run_loop_source
    alias_method :attr_run_loop_source=, :run_loop_source=
    undef_method :run_loop_source=
    
    attr_accessor :run_loop_observer
    alias_method :attr_run_loop_observer, :run_loop_observer
    undef_method :run_loop_observer
    alias_method :attr_run_loop_observer=, :run_loop_observer=
    undef_method :run_loop_observer=
    
    attr_accessor :last_modifiers
    alias_method :attr_last_modifiers, :last_modifiers
    undef_method :last_modifiers
    alias_method :attr_last_modifiers=, :last_modifiers=
    undef_method :last_modifiers=
    
    attr_accessor :last_state
    alias_method :attr_last_state, :last_state
    undef_method :last_state
    alias_method :attr_last_state=, :last_state=
    undef_method :last_state=
    
    attr_accessor :last_x
    alias_method :attr_last_x, :last_x
    undef_method :last_x
    alias_method :attr_last_x=, :last_x=
    undef_method :last_x=
    
    attr_accessor :last_y
    alias_method :attr_last_y, :last_y
    undef_method :last_y
    alias_method :attr_last_y=, :last_y=
    undef_method :last_y=
    
    attr_accessor :disposing
    alias_method :attr_disposing, :disposing
    undef_method :disposing
    alias_method :attr_disposing=, :disposing=
    undef_method :disposing=
    
    attr_accessor :in_paint
    alias_method :attr_in_paint, :in_paint
    undef_method :in_paint
    alias_method :attr_in_paint=, :in_paint=
    undef_method :in_paint=
    
    attr_accessor :needs_paint
    alias_method :attr_needs_paint, :needs_paint
    undef_method :needs_paint
    alias_method :attr_needs_paint=, :needs_paint=
    undef_method :needs_paint=
    
    # GC
    attr_accessor :gc_window
    alias_method :attr_gc_window, :gc_window
    undef_method :gc_window
    alias_method :attr_gc_window=, :gc_window=
    undef_method :gc_window=
    
    # Deferred dispose window
    attr_accessor :dispose_window
    alias_method :attr_dispose_window, :dispose_window
    undef_method :dispose_window
    alias_method :attr_dispose_window=, :dispose_window=
    undef_method :dispose_window=
    
    attr_accessor :dispose_window_list
    alias_method :attr_dispose_window_list, :dispose_window_list
    undef_method :dispose_window_list
    alias_method :attr_dispose_window_list=, :dispose_window_list=
    undef_method :dispose_window_list=
    
    # Sync/Async Widget Communication
    attr_accessor :synchronizer
    alias_method :attr_synchronizer, :synchronizer
    undef_method :synchronizer
    alias_method :attr_synchronizer=, :synchronizer=
    undef_method :synchronizer=
    
    attr_accessor :thread
    alias_method :attr_thread, :thread
    undef_method :thread
    alias_method :attr_thread=, :thread=
    undef_method :thread=
    
    attr_accessor :run_async_messages
    alias_method :attr_run_async_messages, :run_async_messages
    undef_method :run_async_messages
    alias_method :attr_run_async_messages=, :run_async_messages=
    undef_method :run_async_messages=
    
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
    
    attr_accessor :property
    alias_method :attr_property, :property
    undef_method :property
    alias_method :attr_property=, :property=
    undef_method :property=
    
    attr_accessor :widget_table
    alias_method :attr_widget_table, :widget_table
    undef_method :widget_table
    alias_method :attr_widget_table=, :widget_table=
    undef_method :widget_table=
    
    class_module.module_eval {
      const_set_lazy(:GROW_SIZE) { 1024 }
      const_attr_reader  :GROW_SIZE
      
      const_set_lazy(:SWT0) { (Character.new(?s.ord) << 24) + (Character.new(?w.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?0.ord) }
      const_attr_reader  :SWT0
    }
    
    # Focus and Activation
    attr_accessor :active_shell
    alias_method :attr_active_shell, :active_shell
    undef_method :active_shell
    alias_method :attr_active_shell=, :active_shell=
    undef_method :active_shell=
    
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
    
    attr_accessor :focus_combo
    alias_method :attr_focus_combo, :focus_combo
    undef_method :focus_combo
    alias_method :attr_focus_combo=, :focus_combo=
    undef_method :focus_combo=
    
    attr_accessor :ignore_focus
    alias_method :attr_ignore_focus, :ignore_focus
    undef_method :ignore_focus
    alias_method :attr_ignore_focus=, :ignore_focus=
    undef_method :ignore_focus=
    
    attr_accessor :delay_dispose
    alias_method :attr_delay_dispose, :delay_dispose
    undef_method :delay_dispose
    alias_method :attr_delay_dispose=, :delay_dispose=
    undef_method :delay_dispose=
    
    # Modality
    attr_accessor :modal_shells
    alias_method :attr_modal_shells, :modal_shells
    undef_method :modal_shells
    alias_method :attr_modal_shells=, :modal_shells=
    undef_method :modal_shells=
    
    # Menus
    attr_accessor :menu_bar
    alias_method :attr_menu_bar, :menu_bar
    undef_method :menu_bar
    alias_method :attr_menu_bar=, :menu_bar=
    undef_method :menu_bar=
    
    attr_accessor :menus
    alias_method :attr_menus, :menus
    undef_method :menus
    alias_method :attr_menus=, :menus=
    undef_method :menus=
    
    attr_accessor :popups
    alias_method :attr_popups, :popups
    undef_method :popups
    alias_method :attr_popups=, :popups=
    undef_method :popups=
    
    class_module.module_eval {
      const_set_lazy(:ID_TEMPORARY) { 1000 }
      const_attr_reader  :ID_TEMPORARY
      
      const_set_lazy(:ID_START) { 1001 }
      const_attr_reader  :ID_START
    }
    
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
    
    # Timers
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
    
    attr_accessor :timer_callback
    alias_method :attr_timer_callback, :timer_callback
    undef_method :timer_callback
    alias_method :attr_timer_callback=, :timer_callback=
    undef_method :timer_callback=
    
    attr_accessor :timer_proc
    alias_method :attr_timer_proc, :timer_proc
    undef_method :timer_proc
    alias_method :attr_timer_proc=, :timer_proc=
    undef_method :timer_proc=
    
    attr_accessor :allow_timers
    alias_method :attr_allow_timers, :allow_timers
    undef_method :allow_timers
    alias_method :attr_allow_timers=, :allow_timers=
    undef_method :allow_timers=
    
    attr_accessor :polling_timer
    alias_method :attr_polling_timer, :polling_timer
    undef_method :polling_timer
    alias_method :attr_polling_timer=, :polling_timer=
    undef_method :polling_timer=
    
    class_module.module_eval {
      const_set_lazy(:POLLING_TIMEOUT) { 10 }
      const_attr_reader  :POLLING_TIMEOUT
    }
    
    # Current caret
    attr_accessor :current_caret
    alias_method :attr_current_caret, :current_caret
    undef_method :current_caret
    alias_method :attr_current_caret=, :current_caret=
    undef_method :current_caret=
    
    attr_accessor :caret_callback
    alias_method :attr_caret_callback, :caret_callback
    undef_method :caret_callback
    alias_method :attr_caret_callback=, :caret_callback=
    undef_method :caret_callback=
    
    attr_accessor :caret_id
    alias_method :attr_caret_id, :caret_id
    undef_method :caret_id
    alias_method :attr_caret_id=, :caret_id=
    undef_method :caret_id=
    
    attr_accessor :caret_proc
    alias_method :attr_caret_proc, :caret_proc
    undef_method :caret_proc
    alias_method :attr_caret_proc=, :caret_proc=
    undef_method :caret_proc=
    
    # Grabs
    attr_accessor :grab_control
    alias_method :attr_grab_control, :grab_control
    undef_method :grab_control
    alias_method :attr_grab_control=, :grab_control=
    undef_method :grab_control=
    
    # Hover Help
    attr_accessor :help_string
    alias_method :attr_help_string, :help_string
    undef_method :help_string
    alias_method :attr_help_string=, :help_string=
    undef_method :help_string=
    
    attr_accessor :help_widget
    alias_method :attr_help_widget, :help_widget
    undef_method :help_widget
    alias_method :attr_help_widget=, :help_widget=
    undef_method :help_widget=
    
    attr_accessor :last_help_x
    alias_method :attr_last_help_x, :last_help_x
    undef_method :last_help_x
    alias_method :attr_last_help_x=, :last_help_x=
    undef_method :last_help_x=
    
    attr_accessor :last_help_y
    alias_method :attr_last_help_y, :last_help_y
    undef_method :last_help_y
    alias_method :attr_last_help_y=, :last_help_y=
    undef_method :last_help_y=
    
    # Mouse DoubleClick
    attr_accessor :click_count
    alias_method :attr_click_count, :click_count
    undef_method :click_count
    alias_method :attr_click_count=, :click_count=
    undef_method :click_count=
    
    attr_accessor :click_count_button
    alias_method :attr_click_count_button, :click_count_button
    undef_method :click_count_button
    alias_method :attr_click_count_button=, :click_count_button=
    undef_method :click_count_button=
    
    # Mouse Enter/Exit/Hover
    attr_accessor :current_control
    alias_method :attr_current_control, :current_control
    undef_method :current_control
    alias_method :attr_current_control=, :current_control=
    undef_method :current_control=
    
    attr_accessor :mouse_hover_id
    alias_method :attr_mouse_hover_id, :mouse_hover_id
    undef_method :mouse_hover_id
    alias_method :attr_mouse_hover_id=, :mouse_hover_id=
    undef_method :mouse_hover_id=
    
    attr_accessor :mouse_moved
    alias_method :attr_mouse_moved, :mouse_moved
    undef_method :mouse_moved
    alias_method :attr_mouse_moved=, :mouse_moved=
    undef_method :mouse_moved=
    
    # Drag Detect
    attr_accessor :drag_button
    alias_method :attr_drag_button, :drag_button
    undef_method :drag_button
    alias_method :attr_drag_button=, :drag_button=
    undef_method :drag_button=
    
    attr_accessor :drag_x
    alias_method :attr_drag_x, :drag_x
    undef_method :drag_x
    alias_method :attr_drag_x=, :drag_x=
    undef_method :drag_x=
    
    attr_accessor :drag_y
    alias_method :attr_drag_y, :drag_y
    undef_method :drag_y
    alias_method :attr_drag_y=, :drag_y=
    undef_method :drag_y=
    
    attr_accessor :drag_state
    alias_method :attr_drag_state, :drag_state
    undef_method :drag_state
    alias_method :attr_drag_state=, :drag_state=
    undef_method :drag_state=
    
    attr_accessor :drag_modifiers
    alias_method :attr_drag_modifiers, :drag_modifiers
    undef_method :drag_modifiers
    alias_method :attr_drag_modifiers=, :drag_modifiers=
    undef_method :drag_modifiers=
    
    attr_accessor :dragging
    alias_method :attr_dragging, :dragging
    undef_method :dragging
    alias_method :attr_dragging=, :dragging=
    undef_method :dragging=
    
    # Insets
    attr_accessor :button_inset
    alias_method :attr_button_inset, :button_inset
    undef_method :button_inset
    alias_method :attr_button_inset=, :button_inset=
    undef_method :button_inset=
    
    attr_accessor :tab_folder_north_inset
    alias_method :attr_tab_folder_north_inset, :tab_folder_north_inset
    undef_method :tab_folder_north_inset
    alias_method :attr_tab_folder_north_inset=, :tab_folder_north_inset=
    undef_method :tab_folder_north_inset=
    
    attr_accessor :tab_folder_south_inset
    alias_method :attr_tab_folder_south_inset, :tab_folder_south_inset
    undef_method :tab_folder_south_inset
    alias_method :attr_tab_folder_south_inset=, :tab_folder_south_inset=
    undef_method :tab_folder_south_inset=
    
    attr_accessor :combo_inset
    alias_method :attr_combo_inset, :combo_inset
    undef_method :combo_inset
    alias_method :attr_combo_inset=, :combo_inset=
    undef_method :combo_inset=
    
    attr_accessor :edit_text_inset
    alias_method :attr_edit_text_inset, :edit_text_inset
    undef_method :edit_text_inset
    alias_method :attr_edit_text_inset=, :edit_text_inset=
    undef_method :edit_text_inset=
    
    attr_accessor :search_text_inset
    alias_method :attr_search_text_inset, :search_text_inset
    undef_method :search_text_inset
    alias_method :attr_search_text_inset=, :search_text_inset=
    undef_method :search_text_inset=
    
    # Fonts
    attr_accessor :small_fonts
    alias_method :attr_small_fonts, :small_fonts
    undef_method :small_fonts
    alias_method :attr_small_fonts=, :small_fonts=
    undef_method :small_fonts=
    
    # Keyboard
    attr_accessor :kchr_ptr
    alias_method :attr_kchr_ptr, :kchr_ptr
    undef_method :kchr_ptr
    alias_method :attr_kchr_ptr=, :kchr_ptr=
    undef_method :kchr_ptr=
    
    attr_accessor :kchr_state
    alias_method :attr_kchr_state, :kchr_state
    undef_method :kchr_state
    alias_method :attr_kchr_state=, :kchr_state=
    undef_method :kchr_state=
    
    # System Resources
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
    
    attr_accessor :warning_image
    alias_method :attr_warning_image, :warning_image
    undef_method :warning_image
    alias_method :attr_warning_image=, :warning_image=
    undef_method :warning_image=
    
    attr_accessor :cursors
    alias_method :attr_cursors, :cursors
    undef_method :cursors
    alias_method :attr_cursors=, :cursors=
    undef_method :cursors=
    
    # System Settings
    attr_accessor :run_settings
    alias_method :attr_run_settings, :run_settings
    undef_method :run_settings
    alias_method :attr_run_settings=, :run_settings=
    undef_method :run_settings=
    
    attr_accessor :highlight_color
    alias_method :attr_highlight_color, :highlight_color
    undef_method :highlight_color
    alias_method :attr_highlight_color=, :highlight_color=
    undef_method :highlight_color=
    
    # Dock icon
    attr_accessor :dock_image
    alias_method :attr_dock_image, :dock_image
    undef_method :dock_image
    alias_method :attr_dock_image=, :dock_image=
    undef_method :dock_image=
    
    class_module.module_eval {
      # Key Mappings.
      # Keyboard and Mouse Masks
      # Non-Numeric Keypad Keys
      # {??,	SWT.INSERT},
      # Virtual and Ascii Keys
      # Functions Keys
      # Numeric Keypad Keys
      # Other keys
      # {??,	SWT.CAPS_LOCK},
      # {??,	SWT.SCROLL_LOCK},
      # {??,	SWT.PAUSE},
      # {??,	SWT.BREAK},
      # {??,	SWT.PRINT_SCREEN},
      
      def key_table
        defined?(@@key_table) ? @@key_table : @@key_table= Array.typed(Array.typed(::Java::Int)).new([Array.typed(::Java::Int).new([58, SWT::ALT]), Array.typed(::Java::Int).new([56, SWT::SHIFT]), Array.typed(::Java::Int).new([59, SWT::CONTROL]), Array.typed(::Java::Int).new([55, SWT::COMMAND]), Array.typed(::Java::Int).new([126, SWT::ARROW_UP]), Array.typed(::Java::Int).new([125, SWT::ARROW_DOWN]), Array.typed(::Java::Int).new([123, SWT::ARROW_LEFT]), Array.typed(::Java::Int).new([124, SWT::ARROW_RIGHT]), Array.typed(::Java::Int).new([116, SWT::PAGE_UP]), Array.typed(::Java::Int).new([121, SWT::PAGE_DOWN]), Array.typed(::Java::Int).new([115, SWT::HOME]), Array.typed(::Java::Int).new([119, SWT::END_]), Array.typed(::Java::Int).new([51, SWT::BS]), Array.typed(::Java::Int).new([36, SWT::CR]), Array.typed(::Java::Int).new([117, SWT::DEL]), Array.typed(::Java::Int).new([53, SWT::ESC]), Array.typed(::Java::Int).new([76, SWT::LF]), Array.typed(::Java::Int).new([48, SWT::TAB]), Array.typed(::Java::Int).new([122, SWT::F1]), Array.typed(::Java::Int).new([120, SWT::F2]), Array.typed(::Java::Int).new([99, SWT::F3]), Array.typed(::Java::Int).new([118, SWT::F4]), Array.typed(::Java::Int).new([96, SWT::F5]), Array.typed(::Java::Int).new([97, SWT::F6]), Array.typed(::Java::Int).new([98, SWT::F7]), Array.typed(::Java::Int).new([100, SWT::F8]), Array.typed(::Java::Int).new([101, SWT::F9]), Array.typed(::Java::Int).new([109, SWT::F10]), Array.typed(::Java::Int).new([103, SWT::F11]), Array.typed(::Java::Int).new([111, SWT::F12]), Array.typed(::Java::Int).new([105, SWT::F13]), Array.typed(::Java::Int).new([107, SWT::F14]), Array.typed(::Java::Int).new([113, SWT::F15]), Array.typed(::Java::Int).new([67, SWT::KEYPAD_MULTIPLY]), Array.typed(::Java::Int).new([69, SWT::KEYPAD_ADD]), Array.typed(::Java::Int).new([76, SWT::KEYPAD_CR]), Array.typed(::Java::Int).new([78, SWT::KEYPAD_SUBTRACT]), Array.typed(::Java::Int).new([65, SWT::KEYPAD_DECIMAL]), Array.typed(::Java::Int).new([75, SWT::KEYPAD_DIVIDE]), Array.typed(::Java::Int).new([82, SWT::KEYPAD_0]), Array.typed(::Java::Int).new([83, SWT::KEYPAD_1]), Array.typed(::Java::Int).new([84, SWT::KEYPAD_2]), Array.typed(::Java::Int).new([85, SWT::KEYPAD_3]), Array.typed(::Java::Int).new([86, SWT::KEYPAD_4]), Array.typed(::Java::Int).new([87, SWT::KEYPAD_5]), Array.typed(::Java::Int).new([88, SWT::KEYPAD_6]), Array.typed(::Java::Int).new([89, SWT::KEYPAD_7]), Array.typed(::Java::Int).new([91, SWT::KEYPAD_8]), Array.typed(::Java::Int).new([92, SWT::KEYPAD_9]), Array.typed(::Java::Int).new([81, SWT::KEYPAD_EQUAL]), Array.typed(::Java::Int).new([71, SWT::NUM_LOCK]), Array.typed(::Java::Int).new([114, SWT::HELP]), ])
      end
      alias_method :attr_key_table, :key_table
      
      def key_table=(value)
        @@key_table = value
      end
      alias_method :attr_key_table=, :key_table=
      
      
      def app_name
        defined?(@@app_name) ? @@app_name : @@app_name= "SWT"
      end
      alias_method :attr_app_name, :app_name
      
      def app_name=(value)
        @@app_name = value
      end
      alias_method :attr_app_name=, :app_name=
      
      # $NON-NLS-1$
      const_set_lazy(:ADD_WIDGET_KEY) { "org.eclipse.swt.internal.addWidget" }
      const_attr_reader  :ADD_WIDGET_KEY
      
      # $NON-NLS-1$
      # Multiple Displays.
      
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
      
      # Package Name
      const_set_lazy(:PACKAGE_PREFIX) { "org.eclipse.swt.widgets." }
      const_attr_reader  :PACKAGE_PREFIX
    }
    
    # $NON-NLS-1$
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
          
          typesig { [] }
          define_method :initialize do
            super()
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
      
      typesig { [String] }
      def ascii(name)
        length_ = name.length
        chars = CharArray.new(length_)
        name.get_chars(0, length_, chars, 0)
        buffer = Array.typed(::Java::Byte).new(length_ + 1) { 0 }
        i = 0
        while i < length_
          buffer[i] = chars[i]
          i += 1
        end
        return buffer
      end
      
      typesig { [::Java::Int] }
      def translate_key(key)
        i = 0
        while i < self.attr_key_table.attr_length
          if ((self.attr_key_table[i][0]).equal?(key))
            return self.attr_key_table[i][1]
          end
          i += 1
        end
        return 0
      end
      
      typesig { [::Java::Int] }
      def untranslate_key(key)
        i = 0
        while i < self.attr_key_table.attr_length
          if ((self.attr_key_table[i][1]).equal?(key))
            return self.attr_key_table[i][0]
          end
          i += 1
        end
        return 0
      end
    }
    
    typesig { [::Java::Int, ::Java::Int] }
    def action_proc(the_control, part_code)
      widget = get_widget(the_control)
      if (!(widget).nil?)
        return widget.action_proc(the_control, part_code)
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def appearance_proc(the_apple_event, reply, handler_refcon)
      @run_settings = true
      wake_thread
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def apple_event_proc(next_handler, the_event, user_data)
      event_class = OS._get_event_class(the_event)
      event_kind = OS._get_event_kind(the_event)
      case (event_class)
      when OS.attr_k_event_class_application
        case (event_kind)
        when OS.attr_k_event_app_available_window_bounds_changed
          # Reset the dock image in case the dock has been restarted
          if (!(@dock_image).equal?(0))
            reason = Array.typed(::Java::Int).new(1) { 0 }
            OS._get_event_parameter(the_event, OS.attr_k_event_param_reason, OS.attr_type_uint32, nil, 4, nil, reason)
            if ((reason[0]).equal?(OS.attr_k_avail_bounds_changed_for_dock))
              OS._set_application_dock_tile_image(@dock_image)
            end
          end
        end
      when OS.attr_k_event_class_apple_event
        event_record = EventRecord.new
        release = false
        if (OS._is_event_in_queue(@queue, the_event))
          OS._retain_event(the_event)
          release = true
          OS._remove_event_from_queue(@queue, the_event)
        end
        OS._convert_event_ref_to_event_record(the_event, event_record)
        OS._aeprocess_apple_event(event_record)
        if (release)
          OS._release_event(the_event)
        end
      end
      return OS.attr_event_not_handled_err
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
    
    typesig { [Menu] }
    def add_menu(menu)
      if ((@menus).nil?)
        @menus = Array.typed(Menu).new(12) { nil }
      end
      i = 0
      while i < @menus.attr_length
        if ((@menus[i]).nil?)
          menu.attr_id = RJava.cast_to_short((ID_START + i))
          @menus[i] = menu
          return
        end
        i += 1
      end
      new_menus = Array.typed(Menu).new(@menus.attr_length + 12) { nil }
      menu.attr_id = RJava.cast_to_short((ID_START + @menus.attr_length))
      new_menus[@menus.attr_length] = menu
      System.arraycopy(@menus, 0, new_menus, 0, @menus.attr_length)
      @menus = new_menus
    end
    
    typesig { [Menu] }
    def add_popup(menu)
      if ((@popups).nil?)
        @popups = Array.typed(Menu).new(4) { nil }
      end
      length_ = @popups.attr_length
      i = 0
      while i < length_
        if ((@popups[i]).equal?(menu))
          return
        end
        i += 1
      end
      index = 0
      while (index < length_)
        if ((@popups[index]).nil?)
          break
        end
        index += 1
      end
      if ((index).equal?(length_))
        new_popups = Array.typed(Menu).new(length_ + 4) { nil }
        System.arraycopy(@popups, 0, new_popups, 0, length_)
        @popups = new_popups
      end
      @popups[index] = menu
    end
    
    typesig { [::Java::Int] }
    def add_to_dispose_window(control)
      root = Array.typed(::Java::Int).new(1) { 0 }
      if ((@dispose_window).equal?(0))
        out_window = Array.typed(::Java::Int).new(1) { 0 }
        OS._create_new_window(OS.attr_k_overlay_window_class, 0, Rect.new, out_window)
        @dispose_window = out_window[0]
        OS._create_root_control(@dispose_window, root)
      else
        OS._get_root_control(@dispose_window, root)
      end
      OS._embed_control(control, root[0])
    end
    
    typesig { [::Java::Int, Widget] }
    def add_widget(handle, widget)
      if ((handle).equal?(0))
        return
      end
      if ((@free_slot).equal?(-1))
        length_ = (@free_slot = @index_table.attr_length) + GROW_SIZE
        new_index_table = Array.typed(::Java::Int).new(length_) { 0 }
        new_widget_table = Array.typed(Widget).new(length_) { nil }
        System.arraycopy(@index_table, 0, new_index_table, 0, @free_slot)
        System.arraycopy(@widget_table, 0, new_widget_table, 0, @free_slot)
        i = @free_slot
        while i < length_ - 1
          new_index_table[i] = i + 1
          i += 1
        end
        new_index_table[length_ - 1] = -1
        @index_table = new_index_table
        @widget_table = new_widget_table
      end
      @property[0] = @free_slot + 1
      OS._set_control_property(handle, SWT0, SWT0, 4, @property)
      old_slot = @free_slot
      @free_slot = @index_table[old_slot]
      @index_table[old_slot] = -2
      @widget_table[old_slot] = widget
    end
    
    typesig { [::Java::Int] }
    def add_dispose_window(window)
      if ((@dispose_window_list).nil?)
        @dispose_window_list = Array.typed(::Java::Int).new(4) { 0 }
      end
      length_ = @dispose_window_list.attr_length
      i = 0
      while i < length_
        if ((@dispose_window_list[i]).equal?(window))
          return
        end
        i += 1
      end
      index = 0
      while (index < length_)
        if ((@dispose_window_list[index]).equal?(0))
          break
        end
        index += 1
      end
      if ((index).equal?(length_))
        new_list = Array.typed(::Java::Int).new(length_ + 4) { 0 }
        System.arraycopy(@dispose_window_list, 0, new_list, 0, length_)
        @dispose_window_list = new_list
      end
      @dispose_window_list[index] = window
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
      OS._sys_beep(RJava.cast_to_short(100))
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def caret_proc(id, client_data)
      if ((@current_caret).nil? || @current_caret.is_disposed)
        return 0
      end
      if (@current_caret.blink_caret)
        blink_rate = @current_caret.attr_blink_rate
        if ((blink_rate).equal?(0))
          return 0
        end
        OS._set_event_loop_timer_next_fire_time(id, blink_rate / 1000.0)
      else
        @current_caret = nil
      end
      return 0
    end
    
    typesig { [] }
    def check_device
      if ((@thread).nil?)
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (!(@thread).equal?(JavaThread.current_thread))
        error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      if (is_disposed)
        error(SWT::ERROR_DEVICE_DISPOSED)
      end
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
      if (!Display.is_valid_class(get_class))
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [Shell] }
    def clear_modal(shell)
      if ((@modal_shells).nil?)
        return
      end
      index = 0
      length_ = @modal_shells.attr_length
      while (index < length_)
        if ((@modal_shells[index]).equal?(shell))
          break
        end
        if ((@modal_shells[index]).nil?)
          return
        end
        index += 1
      end
      if ((index).equal?(length_))
        return
      end
      System.arraycopy(@modal_shells, index + 1, @modal_shells, index, (length_ -= 1) - index)
      @modal_shells[length_] = nil
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
    def create_image(type)
      ref = Array.typed(::Java::Int).new(1) { 0 }
      result = OS._get_icon_ref(OS.attr_k_on_system_disk, OS.attr_k_system_icons_creator, type, ref)
      if (!(result).equal?(OS.attr_no_err))
        return nil
      end
      family = Array.typed(::Java::Int).new(1) { 0 }
      result = OS._icon_ref_to_icon_family(ref[0], OS.attr_k_selector_al_lavailable_data, family)
      OS._release_icon_ref(ref[0])
      if (!(result).equal?(OS.attr_no_err))
        return nil
      end
      image = create_image_from_family(family[0], OS.attr_k_large32bit_data, OS.attr_k_large8bit_mask, 32, 32)
      OS._dispose_handle(family[0])
      return image
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
      bpr = width * 4
      data_size = OS._get_handle_size(data_handle)
      data = OS._new_ptr_clear(data_size)
      if ((data).equal?(0))
        OS._dispose_handle(mask_handle)
        OS._dispose_handle(data_handle)
        return nil
      end
      OS._hlock(data_handle)
      OS._hlock(mask_handle)
      icon_ptr = Array.typed(::Java::Int).new(1) { 0 }
      mask_ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(icon_ptr, data_handle, 4)
      OS.memmove(mask_ptr, mask_handle, 4)
      OS.memmove(data, icon_ptr[0], data_size)
      pixel_count = data_size / 4
      i = 0
      while i < pixel_count
        OS.memmove(data + (i * 4), mask_ptr[0] + i, 1)
        i += 1
      end
      OS._hunlock(mask_handle)
      OS._hunlock(data_handle)
      OS._dispose_handle(mask_handle)
      OS._dispose_handle(data_handle)
      provider = OS._cgdata_provider_create_with_data(0, data, data_size, @release_proc)
      if ((provider).equal?(0))
        OS._dispose_ptr(data)
        return nil
      end
      colorspace = OS._cgcolor_space_create_device_rgb
      if ((colorspace).equal?(0))
        OS._cgdata_provider_release(provider)
        return nil
      end
      cg_image = OS._cgimage_create(width, height, 8, 32, bpr, colorspace, OS.attr_k_cgimage_alpha_first, provider, nil, true, 0)
      OS._cgcolor_space_release(colorspace)
      OS._cgdata_provider_release(provider)
      return Array.typed(::Java::Int).new([cg_image, data])
    end
    
    typesig { [] }
    def create_overlay_window
      gdevice = OS._get_main_device
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(ptr, gdevice, 4)
      device = GDevice.new
      OS.memmove(device, ptr[0], GDevice.attr_sizeof)
      rect = Rect.new
      OS._set_rect(rect, device.attr_left, device.attr_top, device.attr_right, device.attr_bottom)
      out_window = Array.typed(::Java::Int).new(1) { 0 }
      OS._create_new_window(OS.attr_k_overlay_window_class, 0, rect, out_window)
      if ((out_window[0]).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      return out_window[0]
    end
    
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
      @event_queue = nil
      @action_callback = nil
      @apple_event_callback = nil
      @clock_callback = nil
      @command_callback = nil
      @control_callback = nil
      @accessibility_callback = nil
      @appearance_callback = nil
      @draw_item_callback = nil
      @item_data_callback = nil
      @item_notification_callback = nil
      @item_compare_callback = nil
      @search_callback = nil
      @tray_item_callback = nil
      @hit_test_callback = nil
      @keyboard_callback = nil
      @menu_callback = nil
      @mouse_hover_callback = nil
      @help_callback = nil
      @observer_callback = nil
      @source_callback = nil
      @mouse_callback = nil
      @tracking_callback = nil
      @window_callback = nil
      @color_callback = nil
      @text_input_callback = nil
      @release_callback = nil
      @core_event_callback = nil
      @polling_callback = nil
      @action_proc = 0
      @apple_event_proc = 0
      @clock_proc = 0
      @command_proc = 0
      @control_proc = 0
      @appearance_proc = 0
      @accessibility_proc = 0
      @draw_item_proc = 0
      @item_data_proc = 0
      @item_notification_proc = 0
      @item_compare_proc = 0
      @help_proc = 0
      @search_proc = 0
      @tray_item_proc = 0
      @hit_test_proc = 0
      @keyboard_proc = 0
      @menu_proc = 0
      @mouse_hover_proc = 0
      @observer_proc = 0
      @source_proc = 0
      @mouse_proc = 0
      @tracking_proc = 0
      @window_proc = 0
      @color_proc = 0
      @text_input_proc = 0
      @release_proc = 0
      @core_event_proc = 0
      @polling_proc = 0
      @event_table = nil
      @filter_table = nil
      @queue = 0
      @run_loop = 0
      @run_loop_source = 0
      @run_loop_observer = 0
      @last_modifiers = 0
      @last_state = 0
      @last_x = 0
      @last_y = 0
      @disposing = false
      @in_paint = false
      @needs_paint = false
      @gc_window = 0
      @dispose_window = 0
      @dispose_window_list = nil
      @synchronizer = nil
      @thread = nil
      @run_async_messages = false
      @free_slot = 0
      @index_table = nil
      @property = nil
      @widget_table = nil
      @active_shell = nil
      @focus_event = 0
      @focus_control = nil
      @focus_combo = nil
      @ignore_focus = false
      @delay_dispose = false
      @modal_shells = nil
      @menu_bar = nil
      @menus = nil
      @popups = nil
      @dispose_list = nil
      @tray = nil
      @timer_ids = nil
      @timer_list = nil
      @timer_callback = nil
      @timer_proc = 0
      @allow_timers = false
      @polling_timer = 0
      @current_caret = nil
      @caret_callback = nil
      @caret_id = 0
      @caret_proc = 0
      @grab_control = nil
      @help_string = 0
      @help_widget = nil
      @last_help_x = 0
      @last_help_y = 0
      @click_count = 0
      @click_count_button = 0
      @current_control = nil
      @mouse_hover_id = 0
      @mouse_moved = false
      @drag_button = 0
      @drag_x = 0
      @drag_y = 0
      @drag_state = 0
      @drag_modifiers = 0
      @dragging = false
      @button_inset = nil
      @tab_folder_north_inset = nil
      @tab_folder_south_inset = nil
      @combo_inset = nil
      @edit_text_inset = nil
      @search_text_inset = nil
      @small_fonts = false
      @kchr_ptr = 0
      @kchr_state = nil
      @error_image = nil
      @info_image = nil
      @warning_image = nil
      @cursors = nil
      @run_settings = false
      @highlight_color = nil
      @dock_image = 0
      @data = nil
      @keys = nil
      @values = nil
      super(data)
      @synchronizer = Synchronizer.new(self)
      @run_async_messages = true
      @allow_timers = true
      @kchr_state = Array.typed(::Java::Int).new(1) { 0 }
      @cursors = Array.typed(Cursor).new(SWT::CURSOR_HAND + 1) { nil }
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def color_proc(in_control, in_message, in_draw_depth, in_draw_in_color)
      widget = get_widget(in_control)
      if (!(widget).nil?)
        return widget.color_proc(in_control, in_message, in_draw_depth, in_draw_in_color)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def command_proc(next_handler, the_event, user_data)
      event_kind = OS._get_event_kind(the_event)
      command = HICommand.new
      OS._get_event_parameter(the_event, OS.attr_k_event_param_direct_object, OS.attr_type_hicommand, nil, HICommand.attr_sizeof, nil, command)
      case (event_kind)
      when OS.attr_k_event_process_command
        if (!((command.attr_attributes & OS.attr_k_hicommand_from_menu)).equal?(0))
          if (!(user_data).equal?(0))
            widget = get_widget(user_data)
            if (!(widget).nil?)
              return widget.command_proc(next_handler, the_event, user_data)
            end
          else
            result = OS.attr_event_not_handled_err
            menu_ref = command.attr_menu_menu_ref
            menu_id = OS._get_menu_id(menu_ref)
            menu = get_menu(menu_id)
            if (!(menu).nil?)
              # Feature in the Macintosh.  When a menu item is selected by the
              # user, the Macintosh sends kEventMenuOpening, remembers the index
              # of the item the user selected, sends kEventMenuClosed and then
              # sends kEventProcessCommand.  If application code modifies the menu
              # inside of kEventMenuClosed by adding or removing items, the index
              # of the item that the user selected is invalid.  The fix is to detect
              # that a menu has been modified during kEventMenuClosed and use the
              # last target item remembered kEventMenuTargetItem.
              item = nil
              if (menu.attr_closed && menu.attr_modified)
                item = menu.attr_last_target
              else
                item = menu.get_item(command.attr_menu_menu_item_index - 1)
              end
              if (!(item).nil?)
                result = item.k_event_process_command(next_handler, the_event, user_data)
              end
            end
            OS._hilite_menu(RJava.cast_to_short(0))
            return result
          end
        end
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int] }
    def compute_inset(control)
      temp_rgn = OS._new_rgn
      rect = Rect.new
      OS._get_control_region(control, RJava.cast_to_short(OS.attr_k_control_structure_meta_part), temp_rgn)
      OS._get_control_bounds(control, rect)
      rgn_rect = Rect.new
      OS._get_region_bounds(temp_rgn, rgn_rect)
      OS._dispose_rgn(temp_rgn)
      rect.attr_left -= rgn_rect.attr_left
      rect.attr_top -= rgn_rect.attr_top
      rect.attr_right = RJava.cast_to_short((rgn_rect.attr_right - rect.attr_right))
      rect.attr_bottom = RJava.cast_to_short((rgn_rect.attr_bottom - rect.attr_bottom))
      return rect
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def clock_proc(next_handler, the_event, user_data)
      widget = get_widget(user_data)
      if (!(widget).nil?)
        return widget.clock_proc(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def control_proc(next_handler, the_event, user_data)
      widget = get_widget(user_data)
      if (!(widget).nil?)
        return widget.control_proc(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def core_event_proc(the_apple_event, reply, handler_refcon)
      if (!@disposing)
        event = Event.new
        send_event(SWT::Close, event)
        if (event.attr_doit)
          dispose
          # When the application is closing, no SWT program can continue
          # to run.  In order to avoid running code after the display has
          # been disposed, exit from Java.
          # 
          # This code is intentionally commented
          # System.exit (0);
        else
          return OS.attr_user_canceled_err
        end
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def accessibility_proc(next_handler, the_event, user_data)
      widget = get_widget(user_data)
      if (!(widget).nil?)
        return widget.accessibility_proc(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    class_module.module_eval {
      typesig { [String] }
      def convert_to_lf(text)
        cr = Character.new(?\r.ord)
        lf = Character.new(?\n.ord)
        length_ = text.length
        if ((length_).equal?(0))
          return text
        end
        # Check for an LF or CR/LF.  Assume the rest of the string
        # is formated that way.  This will not work if the string
        # contains mixed delimiters.
        i = text.index_of(lf, 0)
        if ((i).equal?(-1) || (i).equal?(0))
          return text
        end
        if (!(text.char_at(i - 1)).equal?(cr))
          return text
        end
        # The string is formatted with CR/LF.
        # Create a new string with the LF line delimiter.
        i = 0
        result = StringBuffer.new
        while (i < length_)
          j = text.index_of(cr, i)
          if ((j).equal?(-1))
            j = length_
          end
          s = text.substring(i, j)
          result.append(s)
          i = j + 2
          result.append(lf)
        end
        return result.to_s
      end
    }
    
    typesig { [] }
    def clear_menu_flags
      if ((@menus).nil?)
        return
      end
      i = 0
      while i < @menus.attr_length
        menu = @menus[i]
        if (!(menu).nil?)
          menu.attr_modified = menu.attr_closed = false
          menu.attr_last_target = nil
        end
        i += 1
      end
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
      check_display(@thread = JavaThread.current_thread, false)
      create_display(data)
      register(self)
      if ((self.attr_default).nil?)
        self.attr_default = self
      end
    end
    
    typesig { [DeviceData] }
    def create_display(data)
      if (OS::VERSION < 0x1030)
        System.out.println("***WARNING: SWT requires MacOS X version " + RJava.cast_to_string(10) + "." + RJava.cast_to_string(3) + " or greater") # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
        System.out.println("***WARNING: Detected: " + RJava.cast_to_string(JavaInteger.to_hex_string((OS::VERSION & 0xff00) >> 8)) + "." + RJava.cast_to_string(JavaInteger.to_hex_string((OS::VERSION & 0xf0) >> 4)) + "." + RJava.cast_to_string(JavaInteger.to_hex_string(OS::VERSION & 0xf))) # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
      end
      # Feature in the Macintosh.  On OS 10.2, it is necessary
      # to explicitly check in with the Process Manager and set
      # the current process to be the front process in order for
      # windows to come to the front by default.  The fix is call
      # both GetCurrentProcess() and SetFrontProcess().
      # 
      # NOTE: It is not actually necessary to use the process
      # serial number returned by GetCurrentProcess() in the
      # call to SetFrontProcess() (ie. kCurrentProcess can be
      # used) but both functions must be called in order for
      # windows to come to the front.
      psn = Array.typed(::Java::Int).new(2) { 0 }
      if ((OS._get_current_process(psn)).equal?(OS.attr_no_err))
        pid = OS.getpid
        buffer = nil
        ptr = OS.getenv(ascii("APP_NAME_" + RJava.cast_to_string(pid))) # $NON-NLS-1$
        if (!(ptr).equal?(0))
          buffer = Array.typed(::Java::Byte).new(OS.strlen(ptr) + 1) { 0 }
          OS.memmove(buffer, ptr, buffer.attr_length)
        else
          if (!(self.attr_app_name).nil?)
            chars = CharArray.new(self.attr_app_name.length)
            self.attr_app_name.get_chars(0, chars.attr_length, chars, 0)
            cfstring = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
            if (!(cfstring).equal?(0))
              range = CFRange.new
              range.attr_length = chars.attr_length
              encoding = OS._cfstring_get_system_encoding
              size = Array.typed(::Java::Int).new(1) { 0 }
              num_chars = OS._cfstring_get_bytes(cfstring, range, encoding, Character.new(??.ord), true, nil, 0, size)
              if (!(num_chars).equal?(0))
                buffer = Array.typed(::Java::Byte).new(size[0] + 1) { 0 }
                num_chars = OS._cfstring_get_bytes(cfstring, range, encoding, Character.new(??.ord), true, buffer, size[0], size)
              end
              OS._cfrelease(cfstring)
            end
          end
        end
        if (!(buffer).nil?)
          OS._cpsset_process_name(psn, buffer)
        end
        OS._cpsenable_foreground_operation(psn, 0x3, 0x3c, 0x2c, 0x1103)
        OS._set_front_process(psn)
        ptr = OS.getenv(ascii("APP_ICON_" + RJava.cast_to_string(pid))) # $NON-NLS-1$
        if (!(ptr).equal?(0))
          image = read_image_ref(ptr)
          if (!(image).equal?(0))
            @dock_image = image
            OS._set_application_dock_tile_image(@dock_image)
          end
        end
      end
      # Feature in the Macintosh.  In order to get the standard
      # application menu to appear on the menu bar, an application
      # must manipulate the menu bar.  If the application does not
      # install a menu bar, the application menu will not appear.
      # The fix is to use ClearMenuBar() to manipulate the menu
      # bar before any application has had a chance install a menu
      # bar.
      OS._clear_menu_bar
      @queue = OS._get_current_event_queue
      @run_loop = OS._get_cfrun_loop_from_event_loop(OS._get_current_event_loop)
      OS._txninit_textension(0, 0, 0)
      # Save the current highlight color
      OS._register_appearance_client
      @highlight_color = RGBColor.new
      OS._get_theme_brush_as_color(RJava.cast_to_short(OS.attr_k_theme_brush_primary_highlight_color), RJava.cast_to_short(get_depth), true, @highlight_color)
    end
    
    class_module.module_eval {
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_item_proc(browser, item, property, item_state, the_rect, gd_depth, color_device)
      widget = get_widget(browser)
      if (!(widget).nil?)
        return widget.draw_item_proc(browser, item, property, item_state, the_rect, gd_depth, color_device)
      end
      return OS.attr_no_err
    end
    
    typesig { [] }
    def dispose_windows
      if (!(@dispose_window).equal?(0))
        OS._dispose_window(@dispose_window)
        @dispose_window = 0
      end
      if (!(@dispose_window_list).nil?)
        i = 0
        while i < @dispose_window_list.attr_length
          if (!(@dispose_window_list[i]).equal?(0))
            OS._dispose_window(@dispose_window_list[i])
          end
          i += 1
        end
        @dispose_window_list = nil
      end
    end
    
    typesig { [::Java::Int] }
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
    def find_widget(handle)
      check_device
      return get_widget(handle)
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
    def find_widget(handle, id)
      check_device
      return nil
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
    def find_widget(widget, id)
      check_device
      return nil
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
      # Feature in the Macintosh.  When SetWindowActivationScope()
      # is used with kWindowActivationScopeNone to stop a window from
      # becoming active and taking focus when shown, for some reason,
      # when focus is lost to the desktop or another application,
      # the window becomes active.  Specifically, IsWindowActive()
      # starts to return true for the window, even though is has
      # never been made active.  The fix is to check that the current
      # and front process are the same before calling IsWindowActive().
      psn1 = Array.typed(::Java::Int).new(2) { 0 }
      if ((OS._get_current_process(psn1)).equal?(OS.attr_no_err))
        psn2 = Array.typed(::Java::Int).new(2) { 0 }
        if ((OS._get_front_process(psn2)).equal?(OS.attr_no_err))
          result = Array.typed(::Java::Boolean).new(1) { false }
          if ((OS._same_process(psn1, psn2, result)).equal?(OS.attr_no_err))
            if (!result[0])
              return nil
            end
          end
        end
      end
      if (!(@active_shell).nil? && !@active_shell.is_disposed)
        return @active_shell
      end
      i = 0
      while i < @widget_table.attr_length
        widget = @widget_table[i]
        if (!(widget).nil? && widget.is_a?(Shell))
          shell = widget
          if (OS._is_window_active(shell.attr_shell_handle))
            return shell
          end
        end
        i += 1
      end
      return nil
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
      gdevice = OS._get_device_list
      if ((gdevice).equal?(0) || (OS._get_next_device(gdevice)).equal?(0))
        return super
      end
      monitors = get_monitors
      rect = monitors[0].get_bounds
      i = 1
      while i < monitors.attr_length
        rect = rect.union(monitors[i].get_bounds)
        i += 1
      end
      return rect
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
    
    typesig { [] }
    def get_caret_blink_time
      # checkDevice ();
      return OS._get_caret_time * 1000 / 60
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
      gdevice = OS._get_device_list
      if ((gdevice).equal?(0) || (OS._get_next_device(gdevice)).equal?(0))
        return super
      end
      monitors = get_monitors
      rect = monitors[0].get_bounds
      i = 1
      while i < monitors.attr_length
        rect = rect.union(monitors[i].get_bounds)
        i += 1
      end
      return rect
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
      where = Org::Eclipse::Swt::Internal::Carbon::Point.new
      OS._get_global_mouse(where)
      the_window = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._find_window(where, the_window)).equal?(OS.attr_in_content))
        return nil
      end
      if ((the_window[0]).equal?(0))
        return nil
      end
      rect = Rect.new
      OS._get_window_bounds(the_window[0], RJava.cast_to_short(OS.attr_k_window_content_rgn), rect)
      in_point = CGPoint.new
      in_point.attr_x = where.attr_h - rect.attr_left
      in_point.attr_y = where.attr_v - rect.attr_top
      the_root = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_root_control(the_window[0], the_root)
      the_control = Array.typed(::Java::Int).new(1) { 0 }
      OS._hiview_get_subview_hit(the_root[0], in_point, true, the_control)
      while (!(the_control[0]).equal?(0) && !OS._is_control_enabled(the_control[0]))
        OS._get_super_control(the_control[0], the_control)
      end
      if (!(the_control[0]).equal?(0))
        begin
          widget = get_widget(the_control[0])
          if (!(widget).nil?)
            if (widget.is_a?(Control))
              control = widget
              if (control.is_enabled)
                return control.is_enabled_modal ? control : nil
              end
            end
          end
          OS._get_super_control(the_control[0], the_control)
        end while (!(the_control[0]).equal?(0))
      end
      widget = get_widget(the_root[0])
      if (!(widget).nil? && widget.is_a?(Control))
        return widget
      end
      return nil
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
      pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
      OS._get_global_mouse(pt)
      return Point.new(pt.attr_h, pt.attr_v)
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
      return Array.typed(Point).new([Point.new(16, 16)])
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
      return SWT::RIGHT
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
      return OS._get_dbl_time * 1000 / 60
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
      the_window = OS._get_user_focus_window
      if ((the_window).equal?(0))
        return nil
      end
      return get_focus_control(the_window, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def get_focus_control(window, disabled)
      the_control = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_keyboard_focus(window, the_control)
      if ((the_control[0]).equal?(0))
        return nil
      end
      begin
        widget = get_widget(the_control[0])
        if (!(widget).nil? && widget.is_a?(Control))
          control = widget
          if (disabled)
            return control
          end
          return control.is_enabled ? control : nil
        end
        OS._get_super_control(the_control[0], the_control)
      end while (!(the_control[0]).equal?(0))
      return nil
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
      return false
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
      return get_depth
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
      return Array.typed(Point).new([Point.new(16, 16), Point.new(32, 32), Point.new(64, 64), Point.new(128, 128)])
    end
    
    typesig { [] }
    def get_last_event_time
      # This code is intentionally commented.  Event time is
      # in seconds and we need an accurate time in milliseconds.
      # 
      # return (int) (OS.GetLastUserEventTime () * 1000.0);
      return RJava.cast_to_int(System.current_time_millis)
    end
    
    typesig { [Decorations] }
    def get_menus(shell)
      if ((@menus).nil?)
        return Array.typed(Menu).new(0) { nil }
      end
      count = 0
      i = 0
      while i < @menus.attr_length
        menu = @menus[i]
        if (!(menu).nil? && (menu.attr_parent).equal?(shell))
          count += 1
        end
        i += 1
      end
      index = 0
      result = Array.typed(Menu).new(count) { nil }
      i_ = 0
      while i_ < @menus.attr_length
        menu = @menus[i_]
        if (!(menu).nil? && (menu.attr_parent).equal?(shell))
          result[((index += 1) - 1)] = menu
        end
        i_ += 1
      end
      return result
    end
    
    typesig { [::Java::Int] }
    def get_menu(id)
      if ((@menus).nil?)
        return nil
      end
      index = id - ID_START
      if (0 <= index && index < @menus.attr_length)
        return @menus[index]
      end
      return nil
    end
    
    typesig { [] }
    def get_menu_bar
      return @menu_bar
    end
    
    typesig { [] }
    def get_message_count
      return @synchronizer.get_message_count
    end
    
    typesig { [] }
    # Returns an array of monitors attached to the device.
    # 
    # @return the array of monitors
    # 
    # @since 3.0
    def get_monitors
      check_device
      count = 0
      monitors = Array.typed(SwtMonitor).new(1) { nil }
      rect = Rect.new
      device = GDevice.new
      gdevice = OS._get_device_list
      while (!(gdevice).equal?(0))
        if (count >= monitors.attr_length)
          new_monitors = Array.typed(SwtMonitor).new(monitors.attr_length + 4) { nil }
          System.arraycopy(monitors, 0, new_monitors, 0, monitors.attr_length)
          monitors = new_monitors
        end
        monitor = SwtMonitor.new
        monitor.attr_handle = gdevice
        ptr = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(ptr, gdevice, 4)
        OS.memmove(device, ptr[0], GDevice.attr_sizeof)
        monitor.attr_x = device.attr_left
        monitor.attr_y = device.attr_top
        monitor.attr_width = device.attr_right - device.attr_left
        monitor.attr_height = device.attr_bottom - device.attr_top
        OS._get_available_window_positioning_bounds(gdevice, rect)
        monitor.attr_client_x = rect.attr_left
        monitor.attr_client_y = rect.attr_top
        monitor.attr_client_width = rect.attr_right - rect.attr_left
        monitor.attr_client_height = rect.attr_bottom - rect.attr_top
        monitors[((count += 1) - 1)] = monitor
        gdevice = OS._get_next_device(gdevice)
      end
      if (count < monitors.attr_length)
        new_monitors = Array.typed(SwtMonitor).new(count) { nil }
        System.arraycopy(monitors, 0, new_monitors, 0, count)
        monitors = new_monitors
      end
      return monitors
    end
    
    typesig { [] }
    # Returns the primary monitor for that device.
    # 
    # @return the primary monitor
    # 
    # @since 3.0
    def get_primary_monitor
      check_device
      gdevice = OS._get_main_device
      monitor = SwtMonitor.new
      monitor.attr_handle = gdevice
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(ptr, gdevice, 4)
      device = GDevice.new
      OS.memmove(device, ptr[0], GDevice.attr_sizeof)
      monitor.attr_x = device.attr_left
      monitor.attr_y = device.attr_top
      monitor.attr_width = device.attr_right - device.attr_left
      monitor.attr_height = device.attr_bottom - device.attr_top
      rect = Rect.new
      OS._get_available_window_positioning_bounds(gdevice, rect)
      monitor.attr_client_x = rect.attr_left
      monitor.attr_client_y = rect.attr_top
      monitor.attr_client_width = rect.attr_right - rect.attr_left
      monitor.attr_client_height = rect.attr_bottom - rect.attr_top
      return monitor
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
      while i < @widget_table.attr_length
        widget = @widget_table[i]
        if (!(widget).nil? && widget.is_a?(Shell))
          j = 0
          while (j < index)
            if ((result[j]).equal?(widget))
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
            result[((index += 1) - 1)] = widget
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
      rgb = RGBColor.new
      case (id)
      when SWT::COLOR_INFO_FOREGROUND
        return super(SWT::COLOR_BLACK)
      when SWT::COLOR_INFO_BACKGROUND
        return Color.carbon_new(self, Array.typed(::Java::Float).new([0xff / 255, 0xff / 255, 0xe1 / 255, 1]))
      when SWT::COLOR_TITLE_FOREGROUND
        OS._get_theme_text_color(RJava.cast_to_short(OS.attr_k_theme_text_color_document_window_title_active), RJava.cast_to_short(get_depth), true, rgb)
      when SWT::COLOR_TITLE_BACKGROUND
        # undocumented darker highlight color
        OS._get_theme_brush_as_color(RJava.cast_to_short(-5), RJava.cast_to_short(get_depth), true, rgb)
      when SWT::COLOR_TITLE_BACKGROUND_GRADIENT
        OS._get_theme_brush_as_color(RJava.cast_to_short(OS.attr_k_theme_brush_primary_highlight_color), RJava.cast_to_short(get_depth), true, rgb)
      when SWT::COLOR_TITLE_INACTIVE_FOREGROUND
        OS._get_theme_text_color(RJava.cast_to_short(OS.attr_k_theme_text_color_document_window_title_inactive), RJava.cast_to_short(get_depth), true, rgb)
      when SWT::COLOR_TITLE_INACTIVE_BACKGROUND
        OS._get_theme_brush_as_color(RJava.cast_to_short(OS.attr_k_theme_brush_secondary_highlight_color), RJava.cast_to_short(get_depth), true, rgb)
      when SWT::COLOR_TITLE_INACTIVE_BACKGROUND_GRADIENT
        OS._get_theme_brush_as_color(RJava.cast_to_short(OS.attr_k_theme_brush_secondary_highlight_color), RJava.cast_to_short(get_depth), true, rgb)
      when SWT::COLOR_WIDGET_DARK_SHADOW
        return Color.carbon_new(self, Array.typed(::Java::Float).new([0x33 / 255, 0x33 / 255, 0x33 / 255, 1]))
      when SWT::COLOR_WIDGET_NORMAL_SHADOW
        return Color.carbon_new(self, Array.typed(::Java::Float).new([0x66 / 255, 0x66 / 255, 0x66 / 255, 1]))
      when SWT::COLOR_WIDGET_LIGHT_SHADOW
        return Color.carbon_new(self, Array.typed(::Java::Float).new([0x99 / 255, 0x99 / 255, 0x99 / 255, 1]))
      when SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW
        return Color.carbon_new(self, Array.typed(::Java::Float).new([0xcc / 255, 0xcc / 255, 0xcc / 255, 1]))
      when SWT::COLOR_WIDGET_BACKGROUND
        OS._get_theme_brush_as_color(RJava.cast_to_short((OS::VERSION < 0x1050 ? OS.attr_k_theme_brush_button_face_active : OS.attr_k_theme_brush_button_inactive_dark_shadow)), RJava.cast_to_short(get_depth), true, rgb)
      when SWT::COLOR_WIDGET_FOREGROUND
        OS._get_theme_text_color(RJava.cast_to_short(OS.attr_k_theme_text_color_push_button_active), RJava.cast_to_short(get_depth), true, rgb)
      when SWT::COLOR_WIDGET_BORDER
        return super(SWT::COLOR_BLACK)
      when SWT::COLOR_LIST_FOREGROUND
        OS._get_theme_text_color(RJava.cast_to_short(OS.attr_k_theme_text_color_list_view), RJava.cast_to_short(get_depth), true, rgb)
      when SWT::COLOR_LIST_BACKGROUND
        OS._get_theme_brush_as_color(RJava.cast_to_short(OS.attr_k_theme_brush_list_view_background), RJava.cast_to_short(get_depth), true, rgb)
      when SWT::COLOR_LIST_SELECTION_TEXT
        OS._get_theme_text_color(RJava.cast_to_short(OS.attr_k_theme_text_color_list_view), RJava.cast_to_short(get_depth), true, rgb)
      when SWT::COLOR_LIST_SELECTION
        OS._get_theme_brush_as_color(RJava.cast_to_short(OS.attr_k_theme_brush_primary_highlight_color), RJava.cast_to_short(get_depth), true, rgb)
      else
        return super(id)
      end
      red = ((rgb.attr_red >> 8) & 0xff) / 255
      green = ((rgb.attr_green >> 8) & 0xff) / 255
      blue = ((rgb.attr_blue >> 8) & 0xff) / 255
      return Color.carbon_new(self, Array.typed(::Java::Float).new([red, green, blue, 1]))
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
      catch(:break_case) do
        case (id)
        when SWT::ICON_ERROR
          if (!(@error_image).nil?)
            return @error_image
          end
          image = create_image(OS.attr_k_alert_stop_icon)
          if ((image).nil?)
            throw :break_case, :thrown
          end
          return @error_image = Image.carbon_new(self, SWT::ICON, image[0], image[1])
        when SWT::ICON_INFORMATION, SWT::ICON_QUESTION, SWT::ICON_WORKING
          if (!(@info_image).nil?)
            return @info_image
          end
          image = create_image(OS.attr_k_alert_note_icon)
          if ((image).nil?)
            throw :break_case, :thrown
          end
          return @info_image = Image.carbon_new(self, SWT::ICON, image[0], image[1])
        when SWT::ICON_WARNING
          if (!(@warning_image).nil?)
            return @warning_image
          end
          image = create_image(OS.attr_k_alert_caution_icon)
          if ((image).nil?)
            throw :break_case, :thrown
          end
          return @warning_image = Image.carbon_new(self, SWT::ICON, image[0], image[1])
        end
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
      return @tray = Tray.new(self, SWT::NONE)
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
    
    typesig { [::Java::Int] }
    def get_widget(handle)
      if ((handle).equal?(0))
        return nil
      end
      @property[0] = 0
      OS._get_control_property(handle, SWT0, SWT0, 4, nil, @property)
      index = @property[0] - 1
      if (0 <= index && index < @widget_table.attr_length)
        return @widget_table[index]
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def help_proc(in_control, in_global_mouse, in_request, out_content_provided, io_help_content)
      widget = get_widget(in_control)
      if (!(widget).nil?)
        return widget.help_proc(in_control, in_global_mouse, in_request, out_content_provided, io_help_content)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def hit_test_proc(browser, item, property, the_rect, mouse_rect)
      widget = get_widget(browser)
      if (!(widget).nil?)
        return widget.hit_test_proc(browser, item, property, the_rect, mouse_rect)
      end
      return OS.attr_no_err
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
      initialize_callbacks
      initialize_insets
      initialize_widget_table
      initialize_fonts
    end
    
    typesig { [] }
    def initialize_callbacks
      # Create Callbacks
      @action_callback = Callback.new(self, "actionProc", 2) # $NON-NLS-1$
      @action_proc = @action_callback.get_address
      if ((@action_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @apple_event_callback = Callback.new(self, "appleEventProc", 3) # $NON-NLS-1$
      @apple_event_proc = @apple_event_callback.get_address
      if ((@apple_event_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @caret_callback = Callback.new(self, "caretProc", 2) # $NON-NLS-1$
      @caret_proc = @caret_callback.get_address
      if ((@caret_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @clock_callback = Callback.new(self, "clockProc", 3) # $NON-NLS-1$
      @clock_proc = @clock_callback.get_address
      if ((@clock_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @command_callback = Callback.new(self, "commandProc", 3) # $NON-NLS-1$
      @command_proc = @command_callback.get_address
      if ((@command_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @control_callback = Callback.new(self, "controlProc", 3) # $NON-NLS-1$
      @control_proc = @control_callback.get_address
      if ((@control_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @accessibility_callback = Callback.new(self, "accessibilityProc", 3) # $NON-NLS-1$
      @accessibility_proc = @accessibility_callback.get_address
      if ((@accessibility_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @draw_item_callback = Callback.new(self, "drawItemProc", 7) # $NON-NLS-1$
      @draw_item_proc = @draw_item_callback.get_address
      if ((@draw_item_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @item_compare_callback = Callback.new(self, "itemCompareProc", 4) # $NON-NLS-1$
      @item_compare_proc = @item_compare_callback.get_address
      if ((@item_compare_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @item_data_callback = Callback.new(self, "itemDataProc", 5) # $NON-NLS-1$
      @item_data_proc = @item_data_callback.get_address
      if ((@item_data_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @item_notification_callback = Callback.new(self, "itemNotificationProc", 3) # $NON-NLS-1$
      @item_notification_proc = @item_notification_callback.get_address
      if ((@item_notification_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @help_callback = Callback.new(self, "helpProc", 5) # $NON-NLS-1$
      @help_proc = @help_callback.get_address
      if ((@help_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @hit_test_callback = Callback.new(self, "hitTestProc", 5) # $NON-NLS-1$
      @hit_test_proc = @hit_test_callback.get_address
      if ((@hit_test_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @keyboard_callback = Callback.new(self, "keyboardProc", 3) # $NON-NLS-1$
      @keyboard_proc = @keyboard_callback.get_address
      if ((@keyboard_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @menu_callback = Callback.new(self, "menuProc", 3) # $NON-NLS-1$
      @menu_proc = @menu_callback.get_address
      if ((@menu_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @mouse_hover_callback = Callback.new(self, "mouseHoverProc", 2) # $NON-NLS-1$
      @mouse_hover_proc = @mouse_hover_callback.get_address
      if ((@mouse_hover_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @mouse_callback = Callback.new(self, "mouseProc", 3) # $NON-NLS-1$
      @mouse_proc = @mouse_callback.get_address
      if ((@mouse_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @timer_callback = Callback.new(self, "timerProc", 2) # $NON-NLS-1$
      @timer_proc = @timer_callback.get_address
      if ((@timer_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @tracking_callback = Callback.new(self, "trackingProc", 6) # $NON-NLS-1$
      @tracking_proc = @tracking_callback.get_address
      if ((@tracking_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @window_callback = Callback.new(self, "windowProc", 3) # $NON-NLS-1$
      @window_proc = @window_callback.get_address
      if ((@window_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @color_callback = Callback.new(self, "colorProc", 4) # $NON-NLS-1$
      @color_proc = @color_callback.get_address
      if ((@color_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @text_input_callback = Callback.new(self, "textInputProc", 3) # $NON-NLS-1$
      @text_input_proc = @text_input_callback.get_address
      if ((@text_input_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @appearance_callback = Callback.new(self, "appearanceProc", 3) # $NON-NLS-1$
      @appearance_proc = @appearance_callback.get_address
      if ((@appearance_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @tray_item_callback = Callback.new(self, "trayItemProc", 4) # $NON-NLS-1$
      @tray_item_proc = @tray_item_callback.get_address
      if ((@tray_item_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @observer_callback = Callback.new(self, "observerProc", 3) # $NON-NLS-1$
      @observer_proc = @observer_callback.get_address
      if ((@observer_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @source_callback = Callback.new(self, "sourceProc", 1) # $NON-NLS-1$
      @source_proc = @source_callback.get_address
      if ((@source_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @search_callback = Callback.new(self, "searchProc", 3) # $NON-NLS-1$
      @search_proc = @search_callback.get_address
      if ((@search_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @release_callback = Callback.new(self, "releaseDataProc", 3) # $NON-NLS-1$
      @release_proc = @release_callback.get_address
      if ((@release_proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @core_event_callback = Callback.new(self, "coreEventProc", 3) # $NON-NLS-1$
      @core_event_proc = @core_event_callback.get_address
      if ((@core_event_proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @polling_callback = Callback.new(self, "pollingProc", 2)
      @polling_proc = @polling_callback.get_address
      if ((@polling_proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      # Install Event Handlers
      mask1 = Array.typed(::Java::Int).new([OS.attr_k_event_class_command, OS.attr_k_event_process_command, ])
      app_target = OS._get_application_event_target
      OS._install_event_handler(app_target, @command_proc, mask1.attr_length / 2, mask1, 0, nil)
      # OS.kEventClassMouse, OS.kEventMouseEntered,
      # OS.kEventClassMouse, OS.kEventMouseExited,
      mask2 = Array.typed(::Java::Int).new([OS.attr_k_event_class_mouse, OS.attr_k_event_mouse_down, OS.attr_k_event_class_mouse, OS.attr_k_event_mouse_dragged, OS.attr_k_event_class_mouse, OS.attr_k_event_mouse_moved, OS.attr_k_event_class_mouse, OS.attr_k_event_mouse_up, OS.attr_k_event_class_mouse, OS.attr_k_event_mouse_wheel_moved, ])
      OS._install_event_handler(app_target, @mouse_proc, mask2.attr_length / 2, mask2, 0, nil)
      mask3 = Array.typed(::Java::Int).new([OS.attr_k_event_class_application, OS.attr_k_event_app_available_window_bounds_changed, OS.attr_k_event_class_apple_event, OS.attr_k_event_apple_event, ])
      OS._install_event_handler(app_target, @apple_event_proc, mask3.attr_length / 2, mask3, 0, nil)
      OS._aeinstall_event_handler(OS.attr_k_core_event_class, OS.attr_k_aequit_application, @core_event_proc, 0, false)
      mask4 = Array.typed(::Java::Int).new([OS.attr_k_event_class_keyboard, OS.attr_k_event_raw_key_down, OS.attr_k_event_class_keyboard, OS.attr_k_event_raw_key_modifiers_changed, OS.attr_k_event_class_keyboard, OS.attr_k_event_raw_key_repeat, OS.attr_k_event_class_keyboard, OS.attr_k_event_raw_key_up, ])
      focus_target = OS._get_user_focus_event_target
      OS._install_event_handler(focus_target, @keyboard_proc, mask4.attr_length / 2, mask4, 0, nil)
      mask5 = Array.typed(::Java::Int).new([OS.attr_k_event_class_text_input, OS.attr_k_event_text_input_unicode_for_key_event, OS.attr_k_event_class_text_input, OS.attr_k_event_text_input_update_active_input_area, OS.attr_k_event_class_text_input, OS.attr_k_event_text_input_offset_to_pos, OS.attr_k_event_class_text_input, OS.attr_k_event_text_input_pos_to_offset, OS.attr_k_event_class_text_input, OS.attr_k_event_text_input_get_selected_text, ])
      OS._install_event_handler(focus_target, @text_input_proc, mask5.attr_length / 2, mask5, 0, nil)
      OS._aeinstall_event_handler(OS.attr_k_appearance_event_class, OS.attr_k_aeappearance_changed, @appearance_proc, 0, false)
      OS._aeinstall_event_handler(OS.attr_k_appearance_event_class, OS.attr_k_aesmall_system_font_changed, @appearance_proc, 0, false)
      OS._aeinstall_event_handler(OS.attr_k_appearance_event_class, OS.attr_k_aesystem_font_changed, @appearance_proc, 0, false)
      OS._aeinstall_event_handler(OS.attr_k_appearance_event_class, OS.attr_k_aeviews_font_changed, @appearance_proc, 0, false)
      mode = OS.k_cfrun_loop_common_modes
      activities = OS.attr_k_cfrun_loop_before_waiting
      @run_loop_observer = OS._cfrun_loop_observer_create(OS.attr_k_cfallocator_default, activities, true, 0, @observer_proc, 0)
      if ((@run_loop_observer).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS._cfrun_loop_add_observer(@run_loop, @run_loop_observer, mode)
      context = CFRunLoopSourceContext.new
      context.attr_version = 0
      context.attr_perform = @source_proc
      @run_loop_source = OS._cfrun_loop_source_create(OS.attr_k_cfallocator_default, 0, context)
      if ((@run_loop_source).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS._cfrun_loop_add_source(@run_loop, @run_loop_source, mode)
    end
    
    typesig { [] }
    def initialize_fonts
      # TEMPORARY CODE
      @small_fonts = !(System.get_property("org.eclipse.swt.internal.carbon.smallFonts")).nil? # $NON-NLS-1$
    end
    
    typesig { [] }
    def initialize_insets
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      rect = Rect.new
      rect.attr_right = rect.attr_bottom = RJava.cast_to_short(200)
      OS._create_push_button_control(0, rect, 0, out_control)
      @button_inset = compute_inset(out_control[0])
      OS._dispose_control(out_control[0])
      OS._create_tabs_control(0, rect, RJava.cast_to_short(OS.attr_k_control_tab_size_large), RJava.cast_to_short(OS.attr_k_control_tab_direction_north), RJava.cast_to_short(0), 0, out_control)
      @tab_folder_north_inset = compute_inset(out_control[0])
      OS._dispose_control(out_control[0])
      OS._create_tabs_control(0, rect, RJava.cast_to_short(OS.attr_k_control_tab_size_large), RJava.cast_to_short(OS.attr_k_control_tab_direction_south), RJava.cast_to_short(0), 0, out_control)
      @tab_folder_south_inset = compute_inset(out_control[0])
      OS._dispose_control(out_control[0])
      OS._create_edit_unicode_text_control(0, rect, 0, false, nil, out_control)
      @edit_text_inset = compute_inset(out_control[0])
      OS._dispose_control(out_control[0])
      attributes = OS.attr_k_hisearch_field_attributes_search_icon | OS.attr_k_hisearch_field_attributes_cancel
      OS._hisearch_field_create(nil, attributes, 0, 0, out_control)
      if (@small_fonts)
        OS._set_control_data(out_control[0], OS.attr_k_control_entire_control, OS.attr_k_control_size_tag, 2, Array.typed(::Java::Short).new([OS.attr_k_control_size_small]))
      end
      @search_text_inset = compute_inset(out_control[0])
      # FIXME -
      @search_text_inset.attr_bottom = @search_text_inset.attr_top
      OS._dispose_control(out_control[0])
      cg_rect = CGRect.new
      cg_rect.attr_width = cg_rect.attr_height = 200
      in_attributes = OS.attr_k_hicombo_box_auto_completion_attribute | OS.attr_k_hicombo_box_auto_size_list_attribute
      OS._hicombo_box_create(cg_rect, 0, nil, 0, in_attributes, out_control)
      @combo_inset = compute_inset(out_control[0])
      # FIXME -
      @combo_inset.attr_bottom = @combo_inset.attr_top
      OS._dispose_control(out_control[0])
    end
    
    typesig { [] }
    def initialize_widget_table
      @property = Array.typed(::Java::Int).new(1) { 0 }
      @index_table = Array.typed(::Java::Int).new(GROW_SIZE) { 0 }
      @widget_table = Array.typed(Widget).new(GROW_SIZE) { nil }
      i = 0
      while i < GROW_SIZE - 1
        @index_table[i] = i + 1
        i += 1
      end
      @index_table[GROW_SIZE - 1] = -1
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
    def internal_new__gc(data)
      if (is_disposed)
        SWT.error(SWT::ERROR_DEVICE_DISPOSED)
      end
      # TODO - multiple monitors
      window = @gc_window
      if ((window).equal?(0))
        window = @gc_window = create_overlay_window
      else
        gdevice = OS._get_main_device
        ptr = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(ptr, gdevice, 4)
        device = GDevice.new
        OS.memmove(device, ptr[0], GDevice.attr_sizeof)
        rect = Rect.new
        OS._set_rect(rect, device.attr_left, device.attr_top, device.attr_right, device.attr_bottom)
        OS._set_window_bounds(window, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
      end
      port = OS._get_window_port(window)
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS._create_cgcontext_for_port(port, buffer)
      context = buffer[0]
      if ((context).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      port_rect = Rect.new
      OS._get_port_bounds(port, port_rect)
      OS._cgcontext_scale_ctm(context, 1, -1)
      OS._cgcontext_translate_ctm(context, 0, port_rect.attr_top - port_rect.attr_bottom)
      if (!(data).nil?)
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (((data.attr_style & mask)).equal?(0))
          data.attr_style |= SWT::LEFT_TO_RIGHT
        end
        data.attr_device = self
        data.attr_window = window
        data.attr_background = get_system_color(SWT::COLOR_WHITE).attr_handle
        data.attr_foreground = get_system_color(SWT::COLOR_BLACK).attr_handle
        data.attr_font = get_system_font
        data.attr_update_clip = true
        data.attr_port_rect = port_rect
      else
        OS._show_window(window)
      end
      return context
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
    def internal_dispose__gc(context, data)
      if (is_disposed)
        SWT.error(SWT::ERROR_DEVICE_DISPOSED)
      end
      if (!(data).nil?)
        window = data.attr_window
        if ((@gc_window).equal?(window))
          OS._hide_window(window)
        else
          OS._dispose_window(window)
        end
        data.attr_window = 0
      end
      # This code is intentionaly commented. Use CGContextSynchronize
      # instead of CGContextFlush to improve performance.
      # 
      # OS.CGContextFlush (context);
      OS._cgcontext_synchronize(context)
      OS._cgcontext_release(context)
    end
    
    class_module.module_eval {
      typesig { [Class] }
      def is_valid_class(clazz)
        name = clazz.get_name
        index = name.last_index_of(Character.new(?..ord))
        return (name.substring(0, index + 1) == PACKAGE_PREFIX)
      end
    }
    
    typesig { [] }
    def is_valid_thread
      return (@thread).equal?(JavaThread.current_thread)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def item_compare_proc(browser, item_one, item_two, sort_property)
      widget = get_widget(browser)
      if (!(widget).nil?)
        return widget.item_compare_proc(browser, item_one, item_two, sort_property)
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def item_data_proc(browser, item, property, item_data, set_value)
      widget = get_widget(browser)
      if (!(widget).nil?)
        return widget.item_data_proc(browser, item, property, item_data, set_value)
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def item_notification_proc(browser, item, message)
      widget = get_widget(browser)
      if (!(widget).nil?)
        return widget.item_notification_proc(browser, item, message)
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def keyboard_proc(next_handler, the_event, user_data)
      the_window = OS._get_user_focus_window
      if (!(the_window).equal?(0))
        the_control = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_keyboard_focus(the_window, the_control)
        widget = get_widget(the_control[0])
        if (!(widget).nil?)
          out_data = MenuTrackingData.new
          if (!(OS._get_menu_tracking_data(0, out_data)).equal?(OS.attr_no_err))
            return widget.keyboard_proc(next_handler, the_event, user_data)
          end
        end
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def polling_proc(in_timer, in_user_data)
      if ((@grab_control).nil? || @grab_control.is_disposed)
        return 0
      end
      @grab_control.send_track_events
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
          v_key = Display.untranslate_key(event.attr_key_code)
          if (!(v_key).equal?(0))
            return (OS._cgpost_keyboard_event(0, v_key, (type).equal?(SWT::KeyDown))).equal?(0)
          else
            kchr_ptr = OS._get_script_manager_variable(RJava.cast_to_short(OS.attr_sm_kchrcache))
            key = -1
            encoding = Array.typed(::Java::Int).new(1) { 0 }
            key_script = RJava.cast_to_short(OS._get_script_manager_variable(RJava.cast_to_short(OS.attr_sm_key_script)))
            region_code = RJava.cast_to_short(OS._get_script_manager_variable(RJava.cast_to_short(OS.attr_sm_region_code)))
            if ((OS._upgrade_script_info_to_text_encoding(key_script, RJava.cast_to_short(OS.attr_k_text_language_dont_care), region_code, nil, encoding)).equal?(OS.attr_param_err))
              if ((OS._upgrade_script_info_to_text_encoding(key_script, RJava.cast_to_short(OS.attr_k_text_language_dont_care), RJava.cast_to_short(OS.attr_k_text_region_dont_care), nil, encoding)).equal?(OS.attr_param_err))
                encoding[0] = OS.attr_k_text_encoding_mac_roman
              end
            end
            encoding_info = Array.typed(::Java::Int).new(1) { 0 }
            OS._create_unicode_to_text_info_by_encoding(encoding[0], encoding_info)
            if (!(encoding_info[0]).equal?(0))
              input = Array.typed(::Java::Char).new([event.attr_character])
              buffer = Array.typed(::Java::Byte).new(2) { 0 }
              OS._convert_from_unicode_to_pstring(encoding_info[0], 2, input, buffer)
              OS._dispose_unicode_to_text_info(encoding_info)
              key = buffer[1] & 0x7f
            end
            if ((key).equal?(-1))
              return false
            end
            state = Array.typed(::Java::Int).new(1) { 0 }
            v_key = -1
            i = 0
            while i <= 0x7f
              result = OS._key_translate(kchr_ptr, RJava.cast_to_short(i), state)
              if (((result & 0x7f)).equal?(key))
                v_key = i
                break
              end
              i += 1
            end
            if ((v_key).equal?(-1))
              i_ = 0
              while i_ <= 0x7f
                result = OS._key_translate(kchr_ptr, RJava.cast_to_short((i_ | OS.attr_shift_key)), state)
                if (((result & 0x7f)).equal?(key))
                  v_key = i_
                  break
                end
                i_ += 1
              end
            end
            if ((v_key).equal?(-1))
              return false
            end
            return (OS._cgpost_keyboard_event(key, v_key, (type).equal?(SWT::KeyDown))).equal?(0)
          end
        when SWT::MouseDown, SWT::MouseMove, SWT::MouseUp
          mouse_cursor_position = CGPoint.new
          chord = OS._get_current_event_button_state
          if ((type).equal?(SWT::MouseMove))
            mouse_cursor_position.attr_x = event.attr_x
            mouse_cursor_position.attr_y = event.attr_y
            return (OS._cgpost_mouse_event(mouse_cursor_position, true, 5, !((chord & 0x1)).equal?(0), !((chord & 0x2)).equal?(0), !((chord & 0x4)).equal?(0), !((chord & 0x8)).equal?(0), !((chord & 0x10)).equal?(0))).equal?(0)
          else
            button = event.attr_button
            if (button < 1 || button > 5)
              return false
            end
            button1 = false
            button2 = false
            button3 = false
            button4 = false
            button5 = false
            case (button)
            when 1
              button1 = (type).equal?(SWT::MouseDown)
              button2 = !((chord & 0x4)).equal?(0)
              button3 = !((chord & 0x2)).equal?(0)
              button4 = !((chord & 0x8)).equal?(0)
              button5 = !((chord & 0x10)).equal?(0)
            when 2
              button1 = !((chord & 0x1)).equal?(0)
              button2 = (type).equal?(SWT::MouseDown)
              button3 = !((chord & 0x2)).equal?(0)
              button4 = !((chord & 0x8)).equal?(0)
              button5 = !((chord & 0x10)).equal?(0)
            when 3
              button1 = !((chord & 0x1)).equal?(0)
              button2 = !((chord & 0x4)).equal?(0)
              button3 = (type).equal?(SWT::MouseDown)
              button4 = !((chord & 0x8)).equal?(0)
              button5 = !((chord & 0x10)).equal?(0)
            when 4
              button1 = !((chord & 0x1)).equal?(0)
              button2 = !((chord & 0x4)).equal?(0)
              button3 = !((chord & 0x2)).equal?(0)
              button4 = (type).equal?(SWT::MouseDown)
              button5 = !((chord & 0x10)).equal?(0)
            when 5
              button1 = !((chord & 0x1)).equal?(0)
              button2 = !((chord & 0x4)).equal?(0)
              button3 = !((chord & 0x2)).equal?(0)
              button4 = !((chord & 0x8)).equal?(0)
              button5 = (type).equal?(SWT::MouseDown)
            end
            pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
            OS._get_global_mouse(pt)
            mouse_cursor_position.attr_x = pt.attr_h
            mouse_cursor_position.attr_y = pt.attr_v
            return (OS._cgpost_mouse_event(mouse_cursor_position, true, 5, button1, button3, button2, button4, button5)).equal?(0)
          end
        when SWT::MouseWheel
          return (OS._cgpost_scroll_wheel_event(1, event.attr_count)).equal?(0)
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
      point = Point.new(x, y)
      if ((from).equal?(to))
        return point
      end
      rect = Rect.new
      if (!(from).nil?)
        window = OS._get_control_owner(from.attr_handle)
        pt = CGPoint.new
        OS._hiview_convert_point(pt, from.attr_handle, 0)
        point.attr_x += RJava.cast_to_int(pt.attr_x)
        point.attr_y += RJava.cast_to_int(pt.attr_y)
        OS._get_window_bounds(window, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
        point.attr_x += rect.attr_left
        point.attr_y += rect.attr_top
        inset = from.get_inset
        point.attr_x -= inset.attr_left
        point.attr_y -= inset.attr_top
      end
      if (!(to).nil?)
        window = OS._get_control_owner(to.attr_handle)
        pt = CGPoint.new
        OS._hiview_convert_point(pt, to.attr_handle, 0)
        point.attr_x -= RJava.cast_to_int(pt.attr_x)
        point.attr_y -= RJava.cast_to_int(pt.attr_y)
        OS._get_window_bounds(window, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
        point.attr_x -= rect.attr_left
        point.attr_y -= rect.attr_top
        inset = to.get_inset
        point.attr_x += inset.attr_left
        point.attr_y += inset.attr_top
      end
      return point
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
      rectangle = Rectangle.new(x, y, width, height)
      if ((from).equal?(to))
        return rectangle
      end
      rect = Rect.new
      if (!(from).nil?)
        window = OS._get_control_owner(from.attr_handle)
        pt = CGPoint.new
        OS._hiview_convert_point(pt, from.attr_handle, 0)
        rectangle.attr_x += RJava.cast_to_int(pt.attr_x)
        rectangle.attr_y += RJava.cast_to_int(pt.attr_y)
        OS._get_window_bounds(window, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
        rectangle.attr_x += rect.attr_left
        rectangle.attr_y += rect.attr_top
        inset = from.get_inset
        rectangle.attr_x -= inset.attr_left
        rectangle.attr_y -= inset.attr_top
      end
      if (!(to).nil?)
        window = OS._get_control_owner(to.attr_handle)
        pt = CGPoint.new
        OS._hiview_convert_point(pt, to.attr_handle, 0)
        rectangle.attr_x -= RJava.cast_to_int(pt.attr_x)
        rectangle.attr_y -= RJava.cast_to_int(pt.attr_y)
        OS._get_window_bounds(window, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
        rectangle.attr_x -= rect.attr_left
        rectangle.attr_y -= rect.attr_top
        inset = to.get_inset
        rectangle.attr_x += inset.attr_left
        rectangle.attr_y += inset.attr_top
      end
      return rectangle
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def menu_proc(next_handler, the_event, user_data)
      menu_id = 0
      if (!(user_data).equal?(0))
        menu_id = OS._get_menu_id(user_data)
      else
        the_menu = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_direct_object, OS.attr_type_menu_ref, nil, 4, nil, the_menu)
        menu_id = OS._get_menu_id(the_menu[0])
      end
      menu = get_menu(menu_id)
      if (!(menu).nil?)
        return menu.menu_proc(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def mouse_proc(next_handler, the_event, user_data)
      event_kind = OS._get_event_kind(the_event)
      case (event_kind)
      when OS.attr_k_event_mouse_down
        button_data = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_button, OS.attr_type_mouse_button, nil, 2, nil, button_data)
        click_count_data = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_click_count, OS.attr_type_uint32, nil, 4, nil, click_count_data)
        @click_count = (@click_count_button).equal?(button_data[0]) ? click_count_data[0] : 1
        @click_count_button = button_data[0]
      when OS.attr_k_event_mouse_dragged, OS.attr_k_event_mouse_moved
        @mouse_moved = true
        OS._cgdisplay_show_cursor(OS._cgmain_display_id)
      end
      sizeof = Org::Eclipse::Swt::Internal::Carbon::Point.attr_sizeof
      where = Org::Eclipse::Swt::Internal::Carbon::Point.new
      OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_location, OS.attr_type_qdpoint, nil, sizeof, nil, where)
      the_window = Array.typed(::Java::Int).new(1) { 0 }
      part = OS._find_window(where, the_window)
      case (part)
      when OS.attr_in_menu_bar
        if ((event_kind).equal?(OS.attr_k_event_mouse_down))
          clear_menu_flags
          if ((@menu_bar).nil? || @menu_bar.is_enabled)
            OS._menu_select(where)
          end
          clear_menu_flags
          return OS.attr_no_err
        end
      when OS.attr_in_content
        window_rect = Rect.new
        OS._get_window_bounds(the_window[0], RJava.cast_to_short(OS.attr_k_window_content_rgn), window_rect)
        in_point = CGPoint.new
        in_point.attr_x = where.attr_h - window_rect.attr_left
        in_point.attr_y = where.attr_v - window_rect.attr_top
        root = OS._hiview_get_root(the_window[0])
        buffer = Array.typed(::Java::Int).new(1) { 0 }
        OS._hiview_get_view_for_mouse_event(root, the_event, buffer)
        view = buffer[0]
        OS._hiview_find_by_id(root, OS.k_hiview_window_content_id, buffer)
        content_view = buffer[0]
        while (!(view).equal?(0) && !(view).equal?(content_view) && !OS._is_control_enabled(view))
          view = OS._hiview_get_superview(view)
        end
        widget = nil
        consume = false
        begin
          widget = get_widget(view)
          if (!(widget).nil?)
            if (widget.is_enabled)
              break
            end
            consume = true
          end
          view = OS._hiview_get_superview(view)
        end while (!(view).equal?(0) && !(view).equal?(content_view))
        if (!(widget).nil?)
          if (widget.contains(RJava.cast_to_int(in_point.attr_x), RJava.cast_to_int(in_point.attr_y)))
            result = !(user_data).equal?(0) ? widget.mouse_proc(next_handler, the_event, user_data) : OS.attr_event_not_handled_err
            return consume ? OS.attr_no_err : result
          end
        end
      end
      case (event_kind)
      when OS.attr_k_event_mouse_dragged, OS.attr_k_event_mouse_moved
        OS._init_cursor
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def mouse_hover_proc(id, handle)
      OS._remove_event_loop_timer(id)
      @mouse_hover_id = 0
      @mouse_moved = false
      if (!(@current_control).nil? && !@current_control.is_disposed)
        # OPTIMIZE - use OS calls
        chord = OS._get_current_event_button_state
        modifiers = OS._get_current_event_key_modifiers
        pt = @current_control.to_control(get_cursor_location)
        @current_control.send_mouse_event(SWT::MouseHover, RJava.cast_to_short(0), 0, true, chord, RJava.cast_to_short(pt.attr_x), RJava.cast_to_short(pt.attr_y), modifiers)
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def observer_proc(observer, activity, info)
      case (activity)
      when OS.attr_k_cfrun_loop_before_waiting
        if (@run_async_messages)
          if (run_async_messages(false))
            wake_thread
          end
        end
      end
      return 0
    end
    
    typesig { [::Java::Int] }
    def read_image_ref(path)
      image = 0
      url = OS._cfurlcreate_from_file_system_representation(OS.attr_k_cfallocator_default, path, OS.strlen(path), false)
      if (!(url).equal?(0))
        extention = OS._cfurlcopy_path_extension(url)
        if (!(extention).equal?(0))
          length_ = OS._cfstring_get_length(extention)
          buffer = CharArray.new(length_)
          range = CFRange.new
          range.attr_length = length_
          OS._cfstring_get_characters(extention, range, buffer)
          ext = String.new(buffer)
          if (ext.equals_ignore_case("png"))
            # $NON-NLS-1$
            provider = OS._cgdata_provider_create_with_url(url)
            if (!(provider).equal?(0))
              image = OS._cgimage_create_with_pngdata_provider(provider, nil, true, OS.attr_k_cgrendering_intent_default)
              OS._cgdata_provider_release(provider)
            end
          else
            if (ext.equals_ignore_case("jpeg") || (ext == "jpg"))
              # $NON-NLS-1$ //$NON-NLS-2$
              provider = OS._cgdata_provider_create_with_url(url)
              if (!(provider).equal?(0))
                image = OS._cgimage_create_with_jpegdata_provider(provider, nil, true, OS.attr_k_cgrendering_intent_default)
                OS._cgdata_provider_release(provider)
              end
            else
              if (ext.equals_ignore_case("icns"))
                # $NON-NLS-1$
                fs_ref = Array.typed(::Java::Byte).new(80) { 0 }
                if (OS._cfurlget_fsref(url, fs_ref))
                  fs_spec = Array.typed(::Java::Byte).new(70) { 0 }
                  if ((OS._fsget_catalog_info(fs_ref, 0, nil, nil, fs_spec, nil)).equal?(OS.attr_no_err))
                    icon_family = Array.typed(::Java::Int).new(1) { 0 }
                    OS._read_icon_file(fs_spec, icon_family)
                    if (!(icon_family[0]).equal?(0))
                      icon = create_image_from_family(icon_family[0], OS.attr_k_thumbnail32bit_data, OS.attr_k_thumbnail8bit_mask, 128, 128)
                      if ((icon).nil?)
                        icon = create_image_from_family(icon_family[0], OS.attr_k_huge32bit_data, OS.attr_k_huge8bit_mask, 64, 64)
                      end
                      if ((icon).nil?)
                        icon = create_image_from_family(icon_family[0], OS.attr_k_large32bit_data, OS.attr_k_large8bit_mask, 32, 32)
                      end
                      if (!(icon).nil?)
                        image = icon[0]
                      end
                      OS._dispose_handle(icon_family[0])
                    end
                  end
                end
              end
            end
          end
          OS._cfrelease(extention)
        end
        OS._cfrelease(url)
      end
      return image
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
      events = false
      events |= run_settings
      events |= run_timers
      events |= run_popups
      out_event = Array.typed(::Java::Int).new(1) { 0 }
      status = OS._receive_next_event(0, nil, OS.attr_k_event_duration_no_wait, true, out_event)
      if ((status).equal?(OS.attr_no_err))
        events = true
        OS._send_event_to_event_target(out_event[0], OS._get_event_dispatcher_target)
        OS._release_event(out_event[0])
        # Feature in the Macintosh.  HIComboBox does not send any
        # notification when the selection changes.  The fix is to
        # detect if the combo text has changed after every event
        # has been dispatched.  This is only necessary when the
        # combo has focus.
        if (!(@focus_combo).nil? && !@focus_combo.is_disposed)
          @focus_combo.check_selection
        end
      end
      events |= run_paint
      if (events)
        run_enter_exit
        run_deferred_events
        return true
      end
      return run_async_messages(false)
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
      @disposing = true
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
      dispose_windows
      if (!(@gc_window).equal?(0))
        OS._dispose_window(@gc_window)
      end
      @gc_window = 0
      # Release Timers
      if (!(@caret_id).equal?(0))
        OS._remove_event_loop_timer(@caret_id)
      end
      if (!(@mouse_hover_id).equal?(0))
        OS._remove_event_loop_timer(@mouse_hover_id)
      end
      @caret_id = @mouse_hover_id = 0
      if (!(@timer_ids).nil?)
        i = 0
        while i < @timer_ids.attr_length
          if (!(@timer_ids[i]).equal?(0) && !(@timer_ids[i]).equal?(-1))
            OS._remove_event_loop_timer(@timer_ids[i])
          end
          i += 1
        end
      end
      @timer_ids = nil
      # Release the System Images
      if (!(@error_image).nil?)
        @error_image.dispose
      end
      if (!(@info_image).nil?)
        @info_image.dispose
      end
      if (!(@warning_image).nil?)
        @warning_image.dispose
      end
      @error_image = @info_image = @warning_image = nil
      # Release the System Cursors
      i = 0
      while i < @cursors.attr_length
        if (!(@cursors[i]).nil?)
          @cursors[i].dispose
        end
        i += 1
      end
      @cursors = nil
      # Release Dock image
      if (!(@dock_image).equal?(0))
        OS._cgimage_release(@dock_image)
      end
      @dock_image = 0
      if (!(@run_loop_observer).equal?(0))
        OS._cfrun_loop_observer_invalidate(@run_loop_observer)
        OS._cfrelease(@run_loop_observer)
      end
      if (!(@run_loop_source).equal?(0))
        OS._cfrun_loop_source_invalidate(@run_loop_source)
        OS._cfrelease(@run_loop_source)
      end
      @run_loop = @run_loop_source = @run_loop_observer = 0
      @release_callback.dispose
      @action_callback.dispose
      @apple_event_callback.dispose
      @caret_callback.dispose
      @clock_callback.dispose
      @command_callback.dispose
      @control_callback.dispose
      @accessibility_callback.dispose
      @draw_item_callback.dispose
      @item_compare_callback.dispose
      @item_data_callback.dispose
      @item_notification_callback.dispose
      @help_callback.dispose
      @hit_test_callback.dispose
      @keyboard_callback.dispose
      @menu_callback.dispose
      @mouse_hover_callback.dispose
      @mouse_callback.dispose
      @tracking_callback.dispose
      @window_callback.dispose
      @color_callback.dispose
      @text_input_callback.dispose
      @appearance_callback.dispose
      @tray_item_callback.dispose
      @observer_callback.dispose
      @source_callback.dispose
      @search_callback.dispose
      @core_event_callback.dispose
      @polling_callback.dispose
      @action_callback = @apple_event_callback = @caret_callback = @command_callback = @appearance_callback = nil
      @accessibility_callback = @clock_callback = @control_callback = @draw_item_callback = @item_data_callback = @item_notification_callback = nil
      @help_callback = @hit_test_callback = @keyboard_callback = @menu_callback = @item_compare_callback = @search_callback = @tray_item_callback = nil
      @mouse_hover_callback = @mouse_callback = @tracking_callback = @window_callback = @color_callback = @observer_callback = @source_callback = nil
      @text_input_callback = @core_event_callback = @release_callback = @polling_callback = nil
      @action_proc = @apple_event_proc = @caret_proc = @command_proc = @appearance_proc = @search_proc = @tray_item_proc = 0
      @accessibility_proc = @clock_proc = @control_proc = @draw_item_proc = @item_data_proc = @item_notification_proc = @item_compare_proc = 0
      @help_proc = @hit_test_proc = @keyboard_proc = @menu_proc = @observer_proc = @source_proc = @release_proc = 0
      @mouse_hover_proc = @mouse_proc = @tracking_proc = @window_proc = @color_proc = @core_event_proc = 0
      @text_input_proc = @polling_proc = 0
      @timer_callback.dispose
      @timer_callback = nil
      @timer_list = nil
      @timer_proc = 0
      @current_control = @focus_control = @focus_combo = nil
      @active_shell = nil
      @help_widget = nil
      if (!(@help_string).equal?(0))
        OS._cfrelease(@help_string)
      end
      @help_string = 0
      @widget_table = @menus = @popups = nil
      @modal_shells = nil
      @menu_bar = nil
      @event_table = @filter_table = nil
      @thread = nil
      @index_table = @property = @kchr_state = nil
      @button_inset = @tab_folder_north_inset = @tab_folder_south_inset = @combo_inset = @edit_text_inset = @search_text_inset = nil
      @data = @highlight_color = nil
      @values = @keys = nil
      # NOT DONE - call terminate TXN if this is the last display
      # NOTE: - display create and dispose needs to be synchronized on all platforms
      # TXNTerminateTextension ();
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def release_data_proc(info, data, size)
      OS._dispose_ptr(data)
      return 0
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
    def remove_menu(menu)
      if ((@menus).nil?)
        return
      end
      @menus[menu.attr_id - ID_START] = nil
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
    
    typesig { [::Java::Int] }
    def remove_widget(handle)
      if ((handle).equal?(0))
        return nil
      end
      widget = nil
      @property[0] = 0
      OS._get_control_property(handle, SWT0, SWT0, 4, nil, @property)
      index = @property[0] - 1
      if (0 <= index && index < @widget_table.attr_length)
        widget = @widget_table[index]
        @widget_table[index] = nil
        @index_table[index] = @free_slot
        @free_slot = index
        OS._remove_control_property(handle, SWT0, SWT0)
      end
      return widget
    end
    
    typesig { [::Java::Boolean] }
    def run_async_messages(all)
      return @synchronizer.run_async_messages(all)
    end
    
    typesig { [] }
    def run_enter_exit
      # OPTIMIZE - no garbage, widget hit tested again in mouse move
      event_sent = false
      control = nil
      the_control = Array.typed(::Java::Int).new(1) { 0 }
      where = Org::Eclipse::Swt::Internal::Carbon::Point.new
      OS._get_global_mouse(where)
      the_window = Array.typed(::Java::Int).new(1) { 0 }
      if ((OS._find_window(where, the_window)).equal?(OS.attr_in_content))
        if (!(the_window[0]).equal?(0))
          rect = Rect.new
          OS._get_window_bounds(the_window[0], RJava.cast_to_short(OS.attr_k_window_content_rgn), rect)
          in_point = CGPoint.new
          in_point.attr_x = where.attr_h - rect.attr_left
          in_point.attr_y = where.attr_v - rect.attr_top
          the_root = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_root_control(the_window[0], the_root)
          OS._hiview_get_subview_hit(the_root[0], in_point, true, the_control)
          while (!(the_control[0]).equal?(0) && !OS._is_control_enabled(the_control[0]))
            OS._get_super_control(the_control[0], the_control)
          end
          propagate = true
          if (!(the_control[0]).equal?(0))
            begin
              widget = get_widget(the_control[0])
              if (!(widget).nil?)
                if (widget.is_a?(Control))
                  cursor_control = widget
                  if (cursor_control.is_enabled)
                    if (cursor_control.is_enabled_modal)
                      if (widget.is_trim_handle(the_control[0]))
                        propagate = false
                        break
                      end
                      control = cursor_control
                    end
                    break
                  end
                end
              end
              OS._get_super_control(the_control[0], the_control)
            end while (!(the_control[0]).equal?(0))
          end
          if ((control).nil? && propagate)
            the_control[0] = the_root[0]
            widget = get_widget(the_control[0])
            if (!(widget).nil? && widget.is_a?(Control))
              cursor_control = widget
              if (cursor_control.is_enabled)
                if (cursor_control.is_enabled_modal)
                  control = cursor_control
                  the_control[0] = control.attr_handle
                end
              end
            end
          end
          if (!(control).nil? && !control.contains(RJava.cast_to_int(in_point.attr_x), RJava.cast_to_int(in_point.attr_y)))
            control = nil
          end
        end
      end
      if (!(control).equal?(@current_control))
        if (!(@current_control).nil? && !@current_control.is_disposed)
          event_sent = true
          chord = OS._get_current_event_button_state
          modifiers = OS._get_current_event_key_modifiers
          pt = @current_control.to_control(where.attr_h, where.attr_v)
          @current_control.send_mouse_event(SWT::MouseExit, RJava.cast_to_short(0), 0, true, chord, RJava.cast_to_short(pt.attr_x), RJava.cast_to_short(pt.attr_y), modifiers)
          if (!(@mouse_hover_id).equal?(0))
            OS._remove_event_loop_timer(@mouse_hover_id)
          end
          @mouse_hover_id = 0
          @mouse_moved = false
        end
        # widget could be disposed at this point
        if (!(control).nil? && control.is_disposed)
          control = nil
        end
        if (!((@current_control = control)).nil?)
          event_sent = true
          chord = OS._get_current_event_button_state
          modifiers = OS._get_current_event_key_modifiers
          pt = @current_control.to_control(where.attr_h, where.attr_v)
          @current_control.send_mouse_event(SWT::MouseEnter, RJava.cast_to_short(0), 0, true, chord, RJava.cast_to_short(pt.attr_x), RJava.cast_to_short(pt.attr_y), modifiers)
        end
      end
      if (!(control).nil? && @mouse_moved)
        out_delay = Array.typed(::Java::Int).new(1) { 0 }
        OS._hmget_tag_delay(out_delay)
        if (!(@mouse_hover_id).equal?(0))
          OS._set_event_loop_timer_next_fire_time(@mouse_hover_id, out_delay[0] / 1000.0)
        else
          event_loop = OS._get_current_event_loop
          id = Array.typed(::Java::Int).new(1) { 0 }
          OS._install_event_loop_timer(event_loop, out_delay[0] / 1000.0, 0.0, @mouse_hover_proc, 0, id)
          @mouse_hover_id = id[0]
        end
        @mouse_moved = false
      end
      if (!OS._still_down && !(the_window[0]).equal?(0) && !(the_control[0]).equal?(0))
        rect = Rect.new
        OS._get_window_bounds(the_window[0], RJava.cast_to_short(OS.attr_k_window_content_rgn), rect)
        pt = CGPoint.new
        OS._hiview_convert_point(pt, the_control[0], 0)
        where.attr_h -= RJava.cast_to_int(pt.attr_x)
        where.attr_v -= RJava.cast_to_int(pt.attr_y)
        OS._get_window_bounds(the_window[0], RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
        where.attr_h -= rect.attr_left
        where.attr_v -= rect.attr_top
        modifiers = OS._get_current_event_key_modifiers
        cursor_was_set = Array.typed(::Java::Boolean).new(1) { false }
        OS._handle_control_set_cursor(the_control[0], where, RJava.cast_to_short(modifiers), cursor_was_set)
        if (!cursor_was_set[0])
          OS._set_theme_cursor(OS.attr_k_theme_arrow_cursor)
        end
      end
      return event_sent
    end
    
    typesig { [] }
    def run_deferred_events
      # Run deferred events.  This code is always
      # called  in the Display's thread so it must
      # be re-enterant need not be synchronized.
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
            widget.notify_listeners(event.attr_type, event)
          end
        end
      end
      # Clear the queue
      @event_queue = nil
      return true
    end
    
    typesig { [] }
    def run_event_loop_timers
      @allow_timers = false
      result = (OS._receive_next_event(0, nil, OS.attr_k_event_duration_no_wait, false, nil)).equal?(OS.attr_no_err)
      @allow_timers = true
      return result
    end
    
    typesig { [] }
    def run_paint
      if (!@needs_paint)
        return false
      end
      @needs_paint = false
      i = 0
      while i < @widget_table.attr_length
        widget = @widget_table[i]
        if (!(widget).nil? && widget.is_a?(Shell))
          shell = widget
          if (!(shell.attr_inval_rgn).equal?(0))
            inval_rgn = shell.attr_inval_rgn
            shell.attr_inval_rgn = 0
            shell.redraw_children(OS._hiview_get_root(shell.attr_shell_handle), inval_rgn)
            OS._dispose_rgn(inval_rgn)
          end
        end
        i += 1
      end
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
        clear_menu_flags
        run_deferred_events
        if (!menu.is_disposed)
          menu.__set_visible(true)
        end
        clear_menu_flags
        result = true
      end
      @popups = nil
      return result
    end
    
    typesig { [] }
    def run_settings
      if (!@run_settings)
        return false
      end
      @run_settings = false
      initialize_insets
      send_event(SWT::Settings, nil)
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!shell.is_disposed)
          shell.redraw(true)
          shell.layout(true, true)
        end
        i += 1
      end
      return true
    end
    
    typesig { [] }
    def run_timers
      if ((@timer_list).nil?)
        return false
      end
      result = false
      i = 0
      while i < @timer_list.attr_length
        if ((@timer_ids[i]).equal?(-1))
          runnable = @timer_list[i]
          @timer_list[i] = nil
          @timer_ids[i] = 0
          if (!(runnable).nil?)
            result = true
            runnable.run
          end
        end
        i += 1
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def search_proc(next_handler, the_event, user_data)
      widget = get_widget(user_data)
      if (!(widget).nil?)
        return widget.search_proc(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
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
    
    class_module.module_eval {
      typesig { [String] }
      # On platforms which support it, sets the application name
      # to be the argument. On Motif, for example, this can be used
      # to set the name used for resource lookup.  Specifying
      # <code>null</code> for the name clears it.
      # 
      # @param name the new app name or <code>null</code>
      def set_app_name(name)
        self.attr_app_name = name
      end
    }
    
    typesig { [Caret] }
    def set_current_caret(caret)
      if (!(@caret_id).equal?(0))
        OS._remove_event_loop_timer(@caret_id)
      end
      @caret_id = 0
      @current_caret = caret
      if (!(@current_caret).nil?)
        blink_rate = @current_caret.attr_blink_rate
        timer_id = Array.typed(::Java::Int).new(1) { 0 }
        time = blink_rate / 1000.0
        event_loop = OS._get_current_event_loop
        OS._install_event_loop_timer(event_loop, time, time, @caret_proc, 0, timer_id)
        @caret_id = timer_id[0]
      end
    end
    
    typesig { [::Java::Int] }
    def set_cursor(cursor)
      case (cursor)
      when OS.attr_k_theme_pointing_hand_cursor, OS.attr_k_theme_arrow_cursor, OS.attr_k_theme_spinning_cursor, OS.attr_k_theme_cross_cursor, OS.attr_k_theme_watch_cursor, OS.attr_k_theme_ibeam_cursor, OS.attr_k_theme_not_allowed_cursor, OS.attr_k_theme_resize_left_right_cursor, OS.attr_k_theme_resize_left_cursor, OS.attr_k_theme_resize_right_cursor, OS.attr_k_theme_resize_up_down_cursor, OS.attr_k_theme_resize_up_cursor, OS.attr_k_theme_resize_down_cursor
        OS._set_theme_cursor(cursor)
      else
        if (OS::VERSION >= 0x1040)
          Cocoa.objc_msg_send(cursor, Cocoa::S_set)
        else
          OS._set_cursor(cursor)
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
      pt = CGPoint.new
      pt.attr_x = x
      pt.attr_y = y
      OS._cgwarp_mouse_cursor_position(pt)
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
      if ((key == ADD_WIDGET_KEY))
        data = value
        handle = (data[0]).int_value
        widget = data[1]
        if ((widget).nil?)
          remove_widget(handle)
        else
          add_widget(handle, widget)
        end
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
    
    typesig { [Menu] }
    def set_menu_bar(menu)
      # Feature in the Macintosh.  SetRootMenu() does not
      # accept NULL to indicate that their should be no
      # menu bar. The fix is to create a temporary empty
      # menu, set that to be the menu bar, clear the menu
      # bar and then delete the temporary menu.
      if ((menu).equal?(@menu_bar))
        return
      end
      the_menu = 0
      if ((menu).nil?)
        out_menu_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS._create_new_menu(RJava.cast_to_short(ID_TEMPORARY), 0, out_menu_ref)
        the_menu = out_menu_ref[0]
      else
        the_menu = menu.attr_handle
      end
      OS._set_root_menu(the_menu)
      if ((menu).nil?)
        OS._clear_menu_bar
        OS._dispose_menu(the_menu)
      end
      @menu_bar = menu
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
      if (!(get_message_count).equal?(0))
        return true
      end
      dispose_windows
      # Feature in the Macintosh.  No kAppearanceEventClass event exists
      # for a change of the Highlight Color.  The fix is to poll for the
      # change while waiting for an event.
      if (!(@event_table).nil? && @event_table.hooks(SWT::Settings))
        color = RGBColor.new
        result = 0
        depth = get_depth
        begin
          @allow_timers = @run_async_messages = false
          result = OS._cfrun_loop_run_in_mode(OS.k_cfrun_loop_default_mode, 0.5, true)
          @allow_timers = @run_async_messages = true
          if ((result).equal?(OS.attr_k_cfrun_loop_run_timed_out))
            OS._get_theme_brush_as_color(RJava.cast_to_short(OS.attr_k_theme_brush_primary_highlight_color), RJava.cast_to_short(depth), true, color)
            if (!(@highlight_color.attr_red).equal?(color.attr_red) || !(@highlight_color.attr_green).equal?(color.attr_green) || !(@highlight_color.attr_blue).equal?(color.attr_blue))
              @highlight_color = color
              @run_settings = true
              return true
            end
          end
        end while ((result).equal?(OS.attr_k_cfrun_loop_run_timed_out))
        return (result).equal?(OS.attr_k_cfrun_loop_run_handled_source)
      end
      # Wait for an event and timeout after a day
      @allow_timers = @run_async_messages = false
      result = OS._cfrun_loop_run_in_mode(OS.k_cfrun_loop_default_mode, 60 * 60 * 24, true)
      @allow_timers = @run_async_messages = true
      return (result).equal?(OS.attr_k_cfrun_loop_run_handled_source)
    end
    
    typesig { [::Java::Int] }
    def source_proc(info)
      return 0
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def text_input_proc(next_handler, the_event, user_data)
      the_window = OS._get_user_focus_window
      if (!(the_window).equal?(0))
        the_control = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_keyboard_focus(the_window, the_control)
        widget = get_widget(the_control[0])
        if (!(widget).nil?)
          out_data = MenuTrackingData.new
          if (!(OS._get_menu_tracking_data(0, out_data)).equal?(OS.attr_no_err))
            # Stop the default event handler from activating the default button
            OS._get_window_default_button(the_window, the_control)
            OS._set_window_default_button(the_window, 0)
            result = widget.text_input_proc(next_handler, the_event, user_data)
            if ((result).equal?(OS.attr_event_not_handled_err))
              result = OS._call_next_event_handler(next_handler, the_event)
            end
            OS._set_window_default_button(the_window, the_control[0])
            return result
          end
        end
      end
      return OS.attr_event_not_handled_err
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
        @timer_ids = Array.typed(::Java::Int).new(4) { 0 }
      end
      index = 0
      while (index < @timer_list.attr_length)
        if ((@timer_list[index]).equal?(runnable))
          break
        end
        index += 1
      end
      if (!(index).equal?(@timer_list.attr_length))
        timer_id = @timer_ids[index]
        if (milliseconds < 0)
          OS._remove_event_loop_timer(timer_id)
          @timer_list[index] = nil
          @timer_ids[index] = 0
        else
          OS._set_event_loop_timer_next_fire_time(timer_id, milliseconds / 1000.0)
        end
        return
      end
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
      if ((index).equal?(@timer_list.attr_length))
        new_timer_list = Array.typed(Runnable).new(@timer_list.attr_length + 4) { nil }
        System.arraycopy(@timer_list, 0, new_timer_list, 0, @timer_list.attr_length)
        @timer_list = new_timer_list
        new_timer_ids = Array.typed(::Java::Int).new(@timer_ids.attr_length + 4) { 0 }
        System.arraycopy(@timer_ids, 0, new_timer_ids, 0, @timer_ids.attr_length)
        @timer_ids = new_timer_ids
      end
      timer_id = Array.typed(::Java::Int).new(1) { 0 }
      event_loop = OS._get_current_event_loop
      OS._install_event_loop_timer(event_loop, milliseconds / 1000.0, 0.0, @timer_proc, index, timer_id)
      if (!(timer_id[0]).equal?(0))
        @timer_ids[index] = timer_id[0]
        @timer_list[index] = runnable
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def timer_proc(id, index)
      OS._remove_event_loop_timer(id)
      if ((@timer_list).nil?)
        return 0
      end
      if (0 <= index && index < @timer_list.attr_length)
        if (@allow_timers)
          runnable = @timer_list[index]
          @timer_list[index] = nil
          @timer_ids[index] = 0
          if (!(runnable).nil?)
            runnable.run
          end
        else
          @timer_ids[index] = -1
          wake_thread
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def tracking_proc(browser, item_id, property, the_rect, start_pt, modifiers)
      widget = get_widget(browser)
      if (!(widget).nil?)
        return widget.tracking_proc(browser, item_id, property, the_rect, start_pt, modifiers)
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def tray_item_proc(target, user_data, selector, event)
      item = OS._jniget_object(user_data)
      if (!(item).nil?)
        return item.tray_item_proc(target, user_data, selector, event)
      end
      return 0
    end
    
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
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!shell.is_disposed)
          shell.update(true)
        end
        i += 1
      end
      # This code is intentionally commented.
      # 
      # int [] outEvent = new int [1];
      # int [] mask = new int [] {OS.kEventClassWindow, OS.kEventWindowUpdate};
      # while (OS.ReceiveNextEvent (mask.length / 2, mask, OS.kEventDurationNoWait, true, outEvent) == OS.noErr) {
      # /*
      # * Bug in the Macintosh.  For some reason, when a hierarchy of
      # * windows is disposed from kEventWindowClose, despite the fact
      # * that DisposeWindow() has been called, the window is not
      # * disposed and there are outstandings kEventWindowUpdate events
      # * in the event queue.  Dispatching these events will cause a
      # * segment fault.  The fix is to dispatch events to visible
      # * windows only.
      # */
      # int [] theWindow = new int [1];
      # OS.GetEventParameter (outEvent [0], OS.kEventParamDirectObject, OS.typeWindowRef, null, 4, null, theWindow);
      # if (OS.IsWindowVisible (theWindow [0])) OS.SendEventToEventTarget (outEvent [0], OS.GetEventDispatcherTarget ());
      # OS.ReleaseEvent (outEvent [0]);
      # }
    end
    
    typesig { [] }
    def update_quit_menu
      enabled = true
      shells = get_shells
      mask = SWT::PRIMARY_MODAL | SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!((shell.attr_style & mask)).equal?(0) && shell.is_visible)
          enabled = false
          break
        end
        i += 1
      end
      if (enabled)
        OS._enable_menu_command(0, OS.attr_k_hicommand_quit)
      else
        OS._disable_menu_command(0, OS.attr_k_hicommand_quit)
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
      OS._cfrun_loop_source_signal(@run_loop_source)
      OS._cfrun_loop_wake_up(@run_loop)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def window_proc(next_handler, the_event, user_data)
      widget = get_widget(user_data)
      if ((widget).nil?)
        the_window = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_direct_object, OS.attr_type_window_ref, nil, 4, nil, the_window)
        the_root = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_root_control(the_window[0], the_root)
        widget = get_widget(the_root[0])
      end
      if (!(widget).nil?)
        return widget.window_proc(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    private
    alias_method :initialize__display, :initialize
  end
  
end
