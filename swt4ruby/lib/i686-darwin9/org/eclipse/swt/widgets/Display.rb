require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # @noextend This class is not intended to be subclassed by clients.
  class Display < DisplayImports.const_get :Device
    include_class_members DisplayImports
    
    # Windows and Events
    attr_accessor :event_queue
    alias_method :attr_event_queue, :event_queue
    undef_method :event_queue
    alias_method :attr_event_queue=, :event_queue=
    undef_method :event_queue=
    
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
    
    attr_accessor :disposing
    alias_method :attr_disposing, :disposing
    undef_method :disposing
    alias_method :attr_disposing=, :disposing=
    undef_method :disposing=
    
    attr_accessor :send_event_count
    alias_method :attr_send_event_count, :send_event_count
    undef_method :send_event_count
    alias_method :attr_send_event_count=, :send_event_count=
    undef_method :send_event_count=
    
    # Key event management
    attr_accessor :dead_key_state
    alias_method :attr_dead_key_state, :dead_key_state
    undef_method :dead_key_state
    alias_method :attr_dead_key_state=, :dead_key_state=
    undef_method :dead_key_state=
    
    attr_accessor :current_keyboard_uchrdata
    alias_method :attr_current_keyboard_uchrdata, :current_keyboard_uchrdata
    undef_method :current_keyboard_uchrdata
    alias_method :attr_current_keyboard_uchrdata=, :current_keyboard_uchrdata=
    undef_method :current_keyboard_uchrdata=
    
    attr_accessor :event_source_delay_set
    alias_method :attr_event_source_delay_set, :event_source_delay_set
    undef_method :event_source_delay_set
    alias_method :attr_event_source_delay_set=, :event_source_delay_set=
    undef_method :event_source_delay_set=
    
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
    
    attr_accessor :allow_timers
    alias_method :attr_allow_timers, :allow_timers
    undef_method :allow_timers
    alias_method :attr_allow_timers=, :allow_timers=
    undef_method :allow_timers=
    
    attr_accessor :run_async_messages
    alias_method :attr_run_async_messages, :run_async_messages
    undef_method :run_async_messages
    alias_method :attr_run_async_messages=, :run_async_messages=
    undef_method :run_async_messages=
    
    attr_accessor :contexts
    alias_method :attr_contexts, :contexts
    undef_method :contexts
    alias_method :attr_contexts=, :contexts=
    undef_method :contexts=
    
    attr_accessor :current_caret
    alias_method :attr_current_caret, :current_caret
    undef_method :current_caret
    alias_method :attr_current_caret=, :current_caret=
    undef_method :current_caret=
    
    attr_accessor :send_event
    alias_method :attr_send_event, :send_event
    undef_method :send_event
    alias_method :attr_send_event=, :send_event=
    undef_method :send_event=
    
    attr_accessor :current_control
    alias_method :attr_current_control, :current_control
    undef_method :current_control
    alias_method :attr_current_control=, :current_control=
    undef_method :current_control=
    
    attr_accessor :tracking_control
    alias_method :attr_tracking_control, :tracking_control
    undef_method :tracking_control
    alias_method :attr_tracking_control=, :tracking_control=
    undef_method :tracking_control=
    
    attr_accessor :tooltip_control
    alias_method :attr_tooltip_control, :tooltip_control
    undef_method :tooltip_control
    alias_method :attr_tooltip_control=, :tooltip_control=
    undef_method :tooltip_control=
    
    attr_accessor :tooltip_target
    alias_method :attr_tooltip_target, :tooltip_target
    undef_method :tooltip_target
    alias_method :attr_tooltip_target=, :tooltip_target=
    undef_method :tooltip_target=
    
    attr_accessor :is_painting
    alias_method :attr_is_painting, :is_painting
    undef_method :is_painting
    alias_method :attr_is_painting=, :is_painting=
    undef_method :is_painting=
    
    attr_accessor :needs_display
    alias_method :attr_needs_display, :needs_display
    undef_method :needs_display
    alias_method :attr_needs_display=, :needs_display=
    undef_method :needs_display=
    
    attr_accessor :needs_display_in_rect
    alias_method :attr_needs_display_in_rect, :needs_display_in_rect
    undef_method :needs_display_in_rect
    alias_method :attr_needs_display_in_rect=, :needs_display_in_rect=
    undef_method :needs_display_in_rect=
    
    attr_accessor :marked_attributes
    alias_method :attr_marked_attributes, :marked_attributes
    undef_method :marked_attributes
    alias_method :attr_marked_attributes=, :marked_attributes=
    undef_method :marked_attributes=
    
    # Fonts
    attr_accessor :small_fonts
    alias_method :attr_small_fonts, :small_fonts
    undef_method :small_fonts
    alias_method :attr_small_fonts=, :small_fonts=
    undef_method :small_fonts=
    
    attr_accessor :button_font
    alias_method :attr_button_font, :button_font
    undef_method :button_font
    alias_method :attr_button_font=, :button_font=
    undef_method :button_font=
    
    attr_accessor :pop_up_button_font
    alias_method :attr_pop_up_button_font, :pop_up_button_font
    undef_method :pop_up_button_font
    alias_method :attr_pop_up_button_font=, :pop_up_button_font=
    undef_method :pop_up_button_font=
    
    attr_accessor :text_field_font
    alias_method :attr_text_field_font, :text_field_font
    undef_method :text_field_font
    alias_method :attr_text_field_font=, :text_field_font=
    undef_method :text_field_font=
    
    attr_accessor :secure_text_field_font
    alias_method :attr_secure_text_field_font, :secure_text_field_font
    undef_method :secure_text_field_font
    alias_method :attr_secure_text_field_font=, :secure_text_field_font=
    undef_method :secure_text_field_font=
    
    attr_accessor :search_field_font
    alias_method :attr_search_field_font, :search_field_font
    undef_method :search_field_font
    alias_method :attr_search_field_font=, :search_field_font=
    undef_method :search_field_font=
    
    attr_accessor :combo_box_font
    alias_method :attr_combo_box_font, :combo_box_font
    undef_method :combo_box_font
    alias_method :attr_combo_box_font=, :combo_box_font=
    undef_method :combo_box_font=
    
    attr_accessor :slider_font
    alias_method :attr_slider_font, :slider_font
    undef_method :slider_font
    alias_method :attr_slider_font=, :slider_font=
    undef_method :slider_font=
    
    attr_accessor :scroller_font
    alias_method :attr_scroller_font, :scroller_font
    undef_method :scroller_font
    alias_method :attr_scroller_font=, :scroller_font=
    undef_method :scroller_font=
    
    attr_accessor :text_view_font
    alias_method :attr_text_view_font, :text_view_font
    undef_method :text_view_font
    alias_method :attr_text_view_font=, :text_view_font=
    undef_method :text_view_font=
    
    attr_accessor :table_view_font
    alias_method :attr_table_view_font, :table_view_font
    undef_method :table_view_font
    alias_method :attr_table_view_font=, :table_view_font=
    undef_method :table_view_font=
    
    attr_accessor :outline_view_font
    alias_method :attr_outline_view_font, :outline_view_font
    undef_method :outline_view_font
    alias_method :attr_outline_view_font=, :outline_view_font=
    undef_method :outline_view_font=
    
    attr_accessor :date_picker_font
    alias_method :attr_date_picker_font, :date_picker_font
    undef_method :date_picker_font
    alias_method :attr_date_picker_font=, :date_picker_font=
    undef_method :date_picker_font=
    
    attr_accessor :box_font
    alias_method :attr_box_font, :box_font
    undef_method :box_font
    alias_method :attr_box_font=, :box_font=
    undef_method :box_font=
    
    attr_accessor :tab_view_font
    alias_method :attr_tab_view_font, :tab_view_font
    undef_method :tab_view_font
    alias_method :attr_tab_view_font=, :tab_view_font=
    undef_method :tab_view_font=
    
    attr_accessor :progress_indicator_font
    alias_method :attr_progress_indicator_font, :progress_indicator_font
    undef_method :progress_indicator_font
    alias_method :attr_progress_indicator_font=, :progress_indicator_font=
    undef_method :progress_indicator_font=
    
    attr_accessor :modal_shells
    alias_method :attr_modal_shells, :modal_shells
    undef_method :modal_shells
    alias_method :attr_modal_shells=, :modal_shells=
    undef_method :modal_shells=
    
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
    
    attr_accessor :application
    alias_method :attr_application, :application
    undef_method :application
    alias_method :attr_application=, :application=
    undef_method :application=
    
    # long
    attr_accessor :application_class
    alias_method :attr_application_class, :application_class
    undef_method :application_class
    alias_method :attr_application_class=, :application_class=
    undef_method :application_class=
    
    attr_accessor :dock_image
    alias_method :attr_dock_image, :dock_image
    undef_method :dock_image
    alias_method :attr_dock_image=, :dock_image=
    undef_method :dock_image=
    
    attr_accessor :is_embedded
    alias_method :attr_is_embedded, :is_embedded
    undef_method :is_embedded
    alias_method :attr_is_embedded=, :is_embedded=
    undef_method :is_embedded=
    
    class_module.module_eval {
      
      def launched
        defined?(@@launched) ? @@launched : @@launched= false
      end
      alias_method :attr_launched, :launched
      
      def launched=(value)
        @@launched = value
      end
      alias_method :attr_launched=, :launched=
    }
    
    # Focus
    attr_accessor :focus_control
    alias_method :attr_focus_control, :focus_control
    undef_method :focus_control
    alias_method :attr_focus_control=, :focus_control=
    undef_method :focus_control=
    
    attr_accessor :current_focus_control
    alias_method :attr_current_focus_control, :current_focus_control
    undef_method :current_focus_control
    alias_method :attr_current_focus_control=, :current_focus_control=
    undef_method :current_focus_control=
    
    attr_accessor :focus_event
    alias_method :attr_focus_event, :focus_event
    undef_method :focus_event
    alias_method :attr_focus_event=, :focus_event=
    undef_method :focus_event=
    
    attr_accessor :screen_window
    alias_method :attr_screen_window, :screen_window
    undef_method :screen_window
    alias_method :attr_screen_window=, :screen_window=
    undef_method :screen_window=
    
    attr_accessor :key_window
    alias_method :attr_key_window, :key_window
    undef_method :key_window
    alias_method :attr_key_window=, :key_window=
    undef_method :key_window=
    
    attr_accessor :pools
    alias_method :attr_pools, :pools
    undef_method :pools
    alias_method :attr_pools=, :pools=
    undef_method :pools=
    
    attr_accessor :pool_count
    alias_method :attr_pool_count, :pool_count
    undef_method :pool_count
    alias_method :attr_pool_count=, :pool_count=
    undef_method :pool_count=
    
    attr_accessor :loop_count
    alias_method :attr_loop_count, :loop_count
    undef_method :loop_count
    alias_method :attr_loop_count=, :loop_count=
    undef_method :loop_count=
    
    attr_accessor :screen_id
    alias_method :attr_screen_id, :screen_id
    undef_method :screen_id
    alias_method :attr_screen_id=, :screen_id=
    undef_method :screen_id=
    
    attr_accessor :screen_cascade
    alias_method :attr_screen_cascade, :screen_cascade
    undef_method :screen_cascade
    alias_method :attr_screen_cascade=, :screen_cascade=
    undef_method :screen_cascade=
    
    # long
    attr_accessor :run_loop_observer
    alias_method :attr_run_loop_observer, :run_loop_observer
    undef_method :run_loop_observer
    alias_method :attr_run_loop_observer=, :run_loop_observer=
    undef_method :run_loop_observer=
    
    attr_accessor :observer_callback
    alias_method :attr_observer_callback, :observer_callback
    undef_method :observer_callback
    alias_method :attr_observer_callback=, :observer_callback=
    undef_method :observer_callback=
    
    attr_accessor :lock_cursor
    alias_method :attr_lock_cursor, :lock_cursor
    undef_method :lock_cursor
    alias_method :attr_lock_cursor=, :lock_cursor=
    undef_method :lock_cursor=
    
    # long
    attr_accessor :old_cursor_set_proc
    alias_method :attr_old_cursor_set_proc, :old_cursor_set_proc
    undef_method :old_cursor_set_proc
    alias_method :attr_old_cursor_set_proc=, :old_cursor_set_proc=
    undef_method :old_cursor_set_proc=
    
    attr_accessor :cursor_set_callback
    alias_method :attr_cursor_set_callback, :cursor_set_callback
    undef_method :cursor_set_callback
    alias_method :attr_cursor_set_callback=, :cursor_set_callback=
    undef_method :cursor_set_callback=
    
    class_module.module_eval {
      # the following Callbacks are never freed
      
      def window_callback2
        defined?(@@window_callback2) ? @@window_callback2 : @@window_callback2= nil
      end
      alias_method :attr_window_callback2, :window_callback2
      
      def window_callback2=(value)
        @@window_callback2 = value
      end
      alias_method :attr_window_callback2=, :window_callback2=
      
      
      def window_callback3
        defined?(@@window_callback3) ? @@window_callback3 : @@window_callback3= nil
      end
      alias_method :attr_window_callback3, :window_callback3
      
      def window_callback3=(value)
        @@window_callback3 = value
      end
      alias_method :attr_window_callback3=, :window_callback3=
      
      
      def window_callback4
        defined?(@@window_callback4) ? @@window_callback4 : @@window_callback4= nil
      end
      alias_method :attr_window_callback4, :window_callback4
      
      def window_callback4=(value)
        @@window_callback4 = value
      end
      alias_method :attr_window_callback4=, :window_callback4=
      
      
      def window_callback5
        defined?(@@window_callback5) ? @@window_callback5 : @@window_callback5= nil
      end
      alias_method :attr_window_callback5, :window_callback5
      
      def window_callback5=(value)
        @@window_callback5 = value
      end
      alias_method :attr_window_callback5=, :window_callback5=
      
      
      def window_callback6
        defined?(@@window_callback6) ? @@window_callback6 : @@window_callback6= nil
      end
      alias_method :attr_window_callback6, :window_callback6
      
      def window_callback6=(value)
        @@window_callback6 = value
      end
      alias_method :attr_window_callback6=, :window_callback6=
      
      
      def dialog_callback3
        defined?(@@dialog_callback3) ? @@dialog_callback3 : @@dialog_callback3= nil
      end
      alias_method :attr_dialog_callback3, :dialog_callback3
      
      def dialog_callback3=(value)
        @@dialog_callback3 = value
      end
      alias_method :attr_dialog_callback3=, :dialog_callback3=
      
      
      def dialog_callback4
        defined?(@@dialog_callback4) ? @@dialog_callback4 : @@dialog_callback4= nil
      end
      alias_method :attr_dialog_callback4, :dialog_callback4
      
      def dialog_callback4=(value)
        @@dialog_callback4 = value
      end
      alias_method :attr_dialog_callback4=, :dialog_callback4=
      
      
      def dialog_callback5
        defined?(@@dialog_callback5) ? @@dialog_callback5 : @@dialog_callback5= nil
      end
      alias_method :attr_dialog_callback5, :dialog_callback5
      
      def dialog_callback5=(value)
        @@dialog_callback5 = value
      end
      alias_method :attr_dialog_callback5=, :dialog_callback5=
      
      
      def application_callback2
        defined?(@@application_callback2) ? @@application_callback2 : @@application_callback2= nil
      end
      alias_method :attr_application_callback2, :application_callback2
      
      def application_callback2=(value)
        @@application_callback2 = value
      end
      alias_method :attr_application_callback2=, :application_callback2=
      
      
      def application_callback3
        defined?(@@application_callback3) ? @@application_callback3 : @@application_callback3= nil
      end
      alias_method :attr_application_callback3, :application_callback3
      
      def application_callback3=(value)
        @@application_callback3 = value
      end
      alias_method :attr_application_callback3=, :application_callback3=
      
      
      def application_callback6
        defined?(@@application_callback6) ? @@application_callback6 : @@application_callback6= nil
      end
      alias_method :attr_application_callback6, :application_callback6
      
      def application_callback6=(value)
        @@application_callback6 = value
      end
      alias_method :attr_application_callback6=, :application_callback6=
      
      
      def field_editor_callback3
        defined?(@@field_editor_callback3) ? @@field_editor_callback3 : @@field_editor_callback3= nil
      end
      alias_method :attr_field_editor_callback3, :field_editor_callback3
      
      def field_editor_callback3=(value)
        @@field_editor_callback3 = value
      end
      alias_method :attr_field_editor_callback3=, :field_editor_callback3=
      
      
      def field_editor_callback4
        defined?(@@field_editor_callback4) ? @@field_editor_callback4 : @@field_editor_callback4= nil
      end
      alias_method :attr_field_editor_callback4, :field_editor_callback4
      
      def field_editor_callback4=(value)
        @@field_editor_callback4 = value
      end
      alias_method :attr_field_editor_callback4=, :field_editor_callback4=
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
    
    attr_accessor :current_tray_item
    alias_method :attr_current_tray_item, :current_tray_item
    undef_method :current_tray_item
    alias_method :attr_current_tray_item=, :current_tray_item=
    undef_method :current_tray_item=
    
    attr_accessor :tray_item_menu
    alias_method :attr_tray_item_menu, :tray_item_menu
    undef_method :tray_item_menu
    alias_method :attr_tray_item_menu=, :tray_item_menu=
    undef_method :tray_item_menu=
    
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
    
    # System Colors
    # double
    attr_accessor :colors
    alias_method :attr_colors, :colors
    undef_method :colors
    alias_method :attr_colors=, :colors=
    undef_method :colors=
    
    # double
    attr_accessor :alternate_selected_control_text_color
    alias_method :attr_alternate_selected_control_text_color, :alternate_selected_control_text_color
    undef_method :alternate_selected_control_text_color
    alias_method :attr_alternate_selected_control_text_color=, :alternate_selected_control_text_color=
    undef_method :alternate_selected_control_text_color=
    
    attr_accessor :selected_control_text_color
    alias_method :attr_selected_control_text_color, :selected_control_text_color
    undef_method :selected_control_text_color
    alias_method :attr_selected_control_text_color=, :selected_control_text_color=
    undef_method :selected_control_text_color=
    
    # double
    attr_accessor :alternate_selected_control_color
    alias_method :attr_alternate_selected_control_color, :alternate_selected_control_color
    undef_method :alternate_selected_control_color
    alias_method :attr_alternate_selected_control_color=, :alternate_selected_control_color=
    undef_method :alternate_selected_control_color=
    
    attr_accessor :secondary_selected_control_color
    alias_method :attr_secondary_selected_control_color, :secondary_selected_control_color
    undef_method :secondary_selected_control_color
    alias_method :attr_secondary_selected_control_color=, :secondary_selected_control_color=
    undef_method :secondary_selected_control_color=
    
    class_module.module_eval {
      # Key Mappings.
      # Keyboard and Mouse Masks
      # Non-Numeric Keypad Keys
      # {??,	SWT.INSERT},
      # Virtual and Ascii Keys
      # Functions Keys
      # Numeric Keypad Keys
      # Other keys
      # {??,	SWT.SCROLL_LOCK},
      # {??,	SWT.PAUSE},
      # {??,	SWT.BREAK},
      # {??,	SWT.PRINT_SCREEN},
      
      def key_table
        defined?(@@key_table) ? @@key_table : @@key_table= Array.typed(Array.typed(::Java::Int)).new([Array.typed(::Java::Int).new([58, SWT::ALT]), Array.typed(::Java::Int).new([56, SWT::SHIFT]), Array.typed(::Java::Int).new([59, SWT::CONTROL]), Array.typed(::Java::Int).new([55, SWT::COMMAND]), Array.typed(::Java::Int).new([61, SWT::ALT]), Array.typed(::Java::Int).new([62, SWT::CONTROL]), Array.typed(::Java::Int).new([60, SWT::SHIFT]), Array.typed(::Java::Int).new([54, SWT::COMMAND]), Array.typed(::Java::Int).new([126, SWT::ARROW_UP]), Array.typed(::Java::Int).new([125, SWT::ARROW_DOWN]), Array.typed(::Java::Int).new([123, SWT::ARROW_LEFT]), Array.typed(::Java::Int).new([124, SWT::ARROW_RIGHT]), Array.typed(::Java::Int).new([116, SWT::PAGE_UP]), Array.typed(::Java::Int).new([121, SWT::PAGE_DOWN]), Array.typed(::Java::Int).new([115, SWT::HOME]), Array.typed(::Java::Int).new([119, SWT::END_]), Array.typed(::Java::Int).new([51, SWT::BS]), Array.typed(::Java::Int).new([36, SWT::CR]), Array.typed(::Java::Int).new([117, SWT::DEL]), Array.typed(::Java::Int).new([53, SWT::ESC]), Array.typed(::Java::Int).new([76, SWT::LF]), Array.typed(::Java::Int).new([48, SWT::TAB]), Array.typed(::Java::Int).new([122, SWT::F1]), Array.typed(::Java::Int).new([120, SWT::F2]), Array.typed(::Java::Int).new([99, SWT::F3]), Array.typed(::Java::Int).new([118, SWT::F4]), Array.typed(::Java::Int).new([96, SWT::F5]), Array.typed(::Java::Int).new([97, SWT::F6]), Array.typed(::Java::Int).new([98, SWT::F7]), Array.typed(::Java::Int).new([100, SWT::F8]), Array.typed(::Java::Int).new([101, SWT::F9]), Array.typed(::Java::Int).new([109, SWT::F10]), Array.typed(::Java::Int).new([103, SWT::F11]), Array.typed(::Java::Int).new([111, SWT::F12]), Array.typed(::Java::Int).new([105, SWT::F13]), Array.typed(::Java::Int).new([107, SWT::F14]), Array.typed(::Java::Int).new([113, SWT::F15]), Array.typed(::Java::Int).new([67, SWT::KEYPAD_MULTIPLY]), Array.typed(::Java::Int).new([69, SWT::KEYPAD_ADD]), Array.typed(::Java::Int).new([76, SWT::KEYPAD_CR]), Array.typed(::Java::Int).new([78, SWT::KEYPAD_SUBTRACT]), Array.typed(::Java::Int).new([65, SWT::KEYPAD_DECIMAL]), Array.typed(::Java::Int).new([75, SWT::KEYPAD_DIVIDE]), Array.typed(::Java::Int).new([82, SWT::KEYPAD_0]), Array.typed(::Java::Int).new([83, SWT::KEYPAD_1]), Array.typed(::Java::Int).new([84, SWT::KEYPAD_2]), Array.typed(::Java::Int).new([85, SWT::KEYPAD_3]), Array.typed(::Java::Int).new([86, SWT::KEYPAD_4]), Array.typed(::Java::Int).new([87, SWT::KEYPAD_5]), Array.typed(::Java::Int).new([88, SWT::KEYPAD_6]), Array.typed(::Java::Int).new([89, SWT::KEYPAD_7]), Array.typed(::Java::Int).new([91, SWT::KEYPAD_8]), Array.typed(::Java::Int).new([92, SWT::KEYPAD_9]), Array.typed(::Java::Int).new([81, SWT::KEYPAD_EQUAL]), Array.typed(::Java::Int).new([57, SWT::CAPS_LOCK]), Array.typed(::Java::Int).new([71, SWT::NUM_LOCK]), Array.typed(::Java::Int).new([114, SWT::HELP]), ])
      end
      alias_method :attr_key_table, :key_table
      
      def key_table=(value)
        @@key_table = value
      end
      alias_method :attr_key_table=, :key_table=
      
      
      def app_name
        defined?(@@app_name) ? @@app_name : @@app_name= nil
      end
      alias_method :attr_app_name, :app_name
      
      def app_name=(value)
        @@app_name = value
      end
      alias_method :attr_app_name=, :app_name=
      
      const_set_lazy(:ADD_WIDGET_KEY) { "org.eclipse.swt.internal.addWidget" }
      const_attr_reader  :ADD_WIDGET_KEY
      
      # $NON-NLS-1$
      const_set_lazy(:SWT_OBJECT) { Array.typed(::Java::Byte).new([Character.new(?S.ord), Character.new(?W.ord), Character.new(?T.ord), Character.new(?_.ord), Character.new(?O.ord), Character.new(?B.ord), Character.new(?J.ord), Character.new(?E.ord), Character.new(?C.ord), Character.new(?T.ord), Character.new(?\0.ord)]) }
      const_attr_reader  :SWT_OBJECT
      
      const_set_lazy(:SWT_IMAGE) { Array.typed(::Java::Byte).new([Character.new(?S.ord), Character.new(?W.ord), Character.new(?T.ord), Character.new(?_.ord), Character.new(?I.ord), Character.new(?M.ord), Character.new(?A.ord), Character.new(?G.ord), Character.new(?E.ord), Character.new(?\0.ord)]) }
      const_attr_reader  :SWT_IMAGE
      
      const_set_lazy(:SWT_ROW) { Array.typed(::Java::Byte).new([Character.new(?S.ord), Character.new(?W.ord), Character.new(?T.ord), Character.new(?_.ord), Character.new(?R.ord), Character.new(?O.ord), Character.new(?W.ord), Character.new(?\0.ord)]) }
      const_attr_reader  :SWT_ROW
      
      const_set_lazy(:SWT_COLUMN) { Array.typed(::Java::Byte).new([Character.new(?S.ord), Character.new(?W.ord), Character.new(?T.ord), Character.new(?_.ord), Character.new(?C.ord), Character.new(?O.ord), Character.new(?L.ord), Character.new(?U.ord), Character.new(?M.ord), Character.new(?N.ord), Character.new(?\0.ord)]) }
      const_attr_reader  :SWT_COLUMN
      
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
    
    # Timer
    attr_accessor :timer_list
    alias_method :attr_timer_list, :timer_list
    undef_method :timer_list
    alias_method :attr_timer_list=, :timer_list=
    undef_method :timer_list=
    
    attr_accessor :ns_timers
    alias_method :attr_ns_timers, :ns_timers
    undef_method :ns_timers
    alias_method :attr_ns_timers=, :ns_timers=
    undef_method :ns_timers=
    
    attr_accessor :timer_delegate
    alias_method :attr_timer_delegate, :timer_delegate
    undef_method :timer_delegate
    alias_method :attr_timer_delegate=, :timer_delegate=
    undef_method :timer_delegate=
    
    class_module.module_eval {
      
      def application_delegate
        defined?(@@application_delegate) ? @@application_delegate : @@application_delegate= nil
      end
      alias_method :attr_application_delegate, :application_delegate
      
      def application_delegate=(value)
        @@application_delegate = value
      end
      alias_method :attr_application_delegate=, :application_delegate=
    }
    
    # Settings
    attr_accessor :run_settings
    alias_method :attr_run_settings, :run_settings
    undef_method :run_settings
    alias_method :attr_run_settings=, :run_settings=
    undef_method :run_settings=
    
    attr_accessor :settings_delegate
    alias_method :attr_settings_delegate, :settings_delegate
    undef_method :settings_delegate
    alias_method :attr_settings_delegate=, :settings_delegate=
    undef_method :settings_delegate=
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_BUTTON_INTERVAL) { 30 }
      const_attr_reader  :DEFAULT_BUTTON_INTERVAL
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
          
          typesig { [Vararg.new(Object)] }
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
    
    typesig { [SwtGCData] }
    def add_context(context)
      if ((@contexts).nil?)
        @contexts = Array.typed(SwtGCData).new(12) { nil }
      end
      i = 0
      while i < @contexts.attr_length
        if (!(@contexts[i]).nil? && (@contexts[i]).equal?(context))
          @contexts[i] = context
          return
        end
        i += 1
      end
      new_contexts = Array.typed(SwtGCData).new(@contexts.attr_length + 12) { nil }
      new_contexts[@contexts.attr_length] = context
      System.arraycopy(@contexts, 0, new_contexts, 0, @contexts.attr_length)
      @contexts = new_contexts
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
          @menus[i] = menu
          return
        end
        i += 1
      end
      new_menus = Array.typed(Menu).new(@menus.attr_length + 12) { nil }
      new_menus[@menus.attr_length] = menu
      System.arraycopy(@menus, 0, new_menus, 0, @menus.attr_length)
      @menus = new_menus
    end
    
    typesig { [] }
    def add_pool
      add_pool(NSAutoreleasePool.new.alloc.init)
    end
    
    typesig { [NSAutoreleasePool] }
    def add_pool(pool)
      if ((@pools).nil?)
        @pools = Array.typed(NSAutoreleasePool).new(4) { nil }
      end
      if ((@pool_count).equal?(@pools.attr_length))
        temp = Array.typed(NSAutoreleasePool).new(@pool_count + 4) { nil }
        System.arraycopy(@pools, 0, temp, 0, @pool_count)
        @pools = temp
      end
      if ((@pool_count).equal?(0))
        dictionary = NSThread.current_thread.thread_dictionary
        dictionary.set_object(NSNumber.number_with_integer(pool.attr_id), NSString.string_with("SWT_NSAutoreleasePool"))
      end
      @pools[((@pool_count += 1) - 1)] = pool
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
    
    typesig { [NSObject, Widget] }
    def add_widget(view, widget)
      if ((view).nil?)
        return
      end
      OS.object_set_instance_variable(view.attr_id, SWT_OBJECT, widget.attr_jni_ref)
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
      OS._nsbeep
    end
    
    typesig { [NSWindow, NSScreen] }
    def cascade_window(window, screen)
      dictionary = screen.device_description
      screen_number = NSNumber.new(dictionary.object_for_key(NSString.string_with("NSScreenNumber")).attr_id).int_value
      index = 0
      while (!(@screen_id[index]).equal?(0) && !(@screen_id[index]).equal?(screen_number))
        index += 1
      end
      @screen_id[index] = screen_number
      cascade = @screen_cascade[index]
      if ((cascade).nil?)
        frame_ = screen.frame
        cascade = NSPoint.new
        cascade.attr_x = frame_.attr_x
        cascade.attr_y = frame_.attr_y + frame_.attr_height
      end
      @screen_cascade[index] = window.cascade_top_left_from_point(cascade)
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
    
    typesig { [Control, NSEvent, ::Java::Boolean] }
    def check_enter_exit(control, ns_event, send)
      if (!(control).equal?(@current_control))
        if (!(@current_control).nil? && !@current_control.is_disposed)
          @current_control.send_mouse_event___org_eclipse_swt_widgets_display_1(ns_event, SWT::MouseExit, send)
        end
        if (!(control).nil? && control.is_disposed)
          control = nil
        end
        @current_control = control
        if (!(control).nil?)
          control.send_mouse_event___org_eclipse_swt_widgets_display_3(ns_event, SWT::MouseEnter, send)
        end
        set_cursor(control)
      end
      timer_exec(!(control).nil? && !control.is_disposed ? get_tool_tip_time : -1, @hover_timer)
    end
    
    typesig { [] }
    def check_focus
      old_control = @current_focus_control
      new_control = get_focus_control
      if (!(old_control).equal?(new_control))
        if (!(old_control).nil? && !old_control.is_disposed)
          old_control.send_focus_event(SWT::FocusOut)
        end
        @current_focus_control = new_control
        if (!(new_control).nil? && !new_control.is_disposed)
          new_control.send_focus_event(SWT::FocusIn)
        end
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
      @event_table = nil
      @filter_table = nil
      @disposing = false
      @send_event_count = 0
      @dead_key_state = nil
      @current_keyboard_uchrdata = 0
      @event_source_delay_set = false
      @synchronizer = nil
      @thread = nil
      @allow_timers = false
      @run_async_messages = false
      @contexts = nil
      @current_caret = nil
      @send_event = false
      @current_control = nil
      @tracking_control = nil
      @tooltip_control = nil
      @tooltip_target = nil
      @is_painting = nil
      @needs_display = nil
      @needs_display_in_rect = nil
      @marked_attributes = nil
      @small_fonts = false
      @button_font = nil
      @pop_up_button_font = nil
      @text_field_font = nil
      @secure_text_field_font = nil
      @search_field_font = nil
      @combo_box_font = nil
      @slider_font = nil
      @scroller_font = nil
      @text_view_font = nil
      @table_view_font = nil
      @outline_view_font = nil
      @date_picker_font = nil
      @box_font = nil
      @tab_view_font = nil
      @progress_indicator_font = nil
      @modal_shells = nil
      @menu_bar = nil
      @menus = nil
      @popups = nil
      @application = nil
      @application_class = 0
      @dock_image = nil
      @is_embedded = false
      @focus_control = nil
      @current_focus_control = nil
      @focus_event = 0
      @screen_window = nil
      @key_window = nil
      @pools = nil
      @pool_count = 0
      @loop_count = 0
      @screen_id = nil
      @screen_cascade = nil
      @run_loop_observer = 0
      @observer_callback = nil
      @lock_cursor = false
      @old_cursor_set_proc = 0
      @cursor_set_callback = nil
      @dispose_list = nil
      @tray = nil
      @current_tray_item = nil
      @tray_item_menu = nil
      @error_image = nil
      @info_image = nil
      @warning_image = nil
      @cursors = nil
      @colors = nil
      @alternate_selected_control_text_color = nil
      @selected_control_text_color = nil
      @alternate_selected_control_color = nil
      @secondary_selected_control_color = nil
      @timer_list = nil
      @ns_timers = nil
      @timer_delegate = nil
      @run_settings = false
      @settings_delegate = nil
      @data = nil
      @keys = nil
      @values = nil
      @hover_timer = nil
      @caret_timer = nil
      @default_button_timer = nil
      super(data)
      @dead_key_state = Array.typed(::Java::Int).new(1) { 0 }
      @screen_id = Array.typed(::Java::Int).new(32) { 0 }
      @screen_cascade = Array.typed(NSPoint).new(32) { nil }
      @lock_cursor = true
      @cursors = Array.typed(Cursor).new(SWT::CURSOR_HAND + 1) { nil }
      @hover_timer = Class.new(Runnable.class == Class ? Runnable : Object) do
        extend LocalClass
        include_class_members Display
        include Runnable if Runnable.class == Module
        
        typesig { [] }
        define_method :run do
          if (!(self.attr_current_control).nil? && !self.attr_current_control.is_disposed)
            self.attr_current_control.send_mouse_event___org_eclipse_swt_widgets_display_5(NSApplication.shared_application.current_event, SWT::MouseHover, !(self.attr_tracking_control).nil? && !self.attr_tracking_control.is_disposed)
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @caret_timer = Class.new(Runnable.class == Class ? Runnable : Object) do
        extend LocalClass
        include_class_members Display
        include Runnable if Runnable.class == Module
        
        typesig { [] }
        define_method :run do
          if (!(self.attr_current_caret).nil?)
            if ((self.attr_current_caret).nil? || self.attr_current_caret.is_disposed)
              return
            end
            if (self.attr_current_caret.blink_caret)
              blink_rate = self.attr_current_caret.attr_blink_rate
              if (!(blink_rate).equal?(0))
                timer_exec(blink_rate, self)
              end
            else
              self.attr_current_caret = nil
            end
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @default_button_timer = Class.new(Runnable.class == Class ? Runnable : Object) do
        extend LocalClass
        include_class_members Display
        include Runnable if Runnable.class == Module
        
        typesig { [] }
        define_method :run do
          if (is_disposed)
            return
          end
          shell = get_active_shell
          if (!(shell).nil? && !shell.is_disposed)
            default_button = shell.attr_default_button
            if (!(default_button).nil? && !default_button.is_disposed)
              view = default_button.attr_view
              view.display
            end
          end
          if (is_disposed)
            return
          end
          if (has_default_button)
            timer_exec(DEFAULT_BUTTON_INTERVAL, self)
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
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
              end
              if ((self.attr_displays[i].attr_thread).equal?(thread))
                SWT.error(SWT::ERROR_THREAD_INVALID_ACCESS)
              end
            end
            i += 1
          end
        end
      end
      
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
    
    typesig { [] }
    def clear_pool
      if ((@send_event_count).equal?(0) && (@loop_count).equal?(@pool_count - 1) && (Callback.get_entry_count).equal?(0))
        remove_pool
        add_pool
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
      @synchronizer = Synchronizer.new(self)
      if ((self.attr_default).nil?)
        self.attr_default = self
      end
    end
    
    typesig { [DeviceData] }
    def create_display(data)
      if (OS::VERSION < 0x1050)
        System.out.println("***WARNING: SWT requires MacOS X version " + RJava.cast_to_string(10) + "." + RJava.cast_to_string(5) + " or greater") # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
        System.out.println("***WARNING: Detected: " + RJava.cast_to_string(JavaInteger.to_hex_string((OS::VERSION & 0xff00) >> 8)) + "." + RJava.cast_to_string(JavaInteger.to_hex_string((OS::VERSION & 0xf0) >> 4)) + "." + RJava.cast_to_string(JavaInteger.to_hex_string(OS::VERSION & 0xf))) # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
        error(SWT::ERROR_NOT_IMPLEMENTED)
      end
      nsthread = NSThread.current_thread
      dictionary = nsthread.thread_dictionary
      key = NSString.string_with("SWT_NSAutoreleasePool")
      id = NSNumber.new(dictionary.object_for_key(key))
      add_pool(NSAutoreleasePool.new(id.integer_value))
      @application = NSApplication.shared_application
      # TODO: If an NSApplication is already running we don't want to create another NSApplication.
      # But if we don't we won't get mouse events, since we currently need to subclass NSApplication and intercept sendEvent to
      # deliver mouse events correctly to widgets.
      if (!@application.is_running)
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
          # long
          ptr = get_app_name._utf8string
          if (!(ptr).equal?(0))
            OS._cpsset_process_name(psn, ptr)
          end
          OS._transform_process_type(psn, OS.attr_k_process_transform_to_foreground_application)
          OS._set_front_process(psn)
          ptr = OS.getenv(ascii("APP_ICON_" + RJava.cast_to_string(pid)))
          if (!(ptr).equal?(0))
            path = NSString.string_with_utf8string(ptr)
            image = NSImage.new.alloc
            image = image.init_by_referencing_file(path)
            @dock_image = image
            @application.set_application_icon_image(image)
          end
        end
        class_name = "SWTApplication"
        # long
        cls = 0
        if (((cls = OS.objc_look_up_class(class_name))).equal?(0))
          clazz = get_class
          self.attr_application_callback2 = Callback.new(clazz, "applicationProc", 2)
          # long
          proc2 = self.attr_application_callback2.get_address
          if ((proc2).equal?(0))
            error(SWT::ERROR_NO_MORE_CALLBACKS)
          end
          self.attr_application_callback3 = Callback.new(clazz, "applicationProc", 3)
          # long
          proc3 = self.attr_application_callback3.get_address
          if ((proc3).equal?(0))
            error(SWT::ERROR_NO_MORE_CALLBACKS)
          end
          self.attr_application_callback6 = Callback.new(clazz, "applicationProc", 6)
          # long
          proc6 = self.attr_application_callback6.get_address
          if ((proc6).equal?(0))
            error(SWT::ERROR_NO_MORE_CALLBACKS)
          end
          cls = OS.objc_allocate_class_pair(OS.attr_class_nsapplication, class_name, 0)
          OS.class_add_method(cls, OS.attr_sel_send_event_, proc3, "@:@")
          OS.class_add_method(cls, OS.attr_sel_next_event_matching_mask_until_date_in_mode_dequeue_, proc6, "@:i@@B")
          OS.class_add_method(cls, OS.attr_sel_is_running, proc2, "@:")
          OS.class_add_method(cls, OS.attr_sel_finish_launching, proc2, "@:")
          OS.objc_register_class_pair(cls)
        end
        @application_class = OS.object_set_class(@application.attr_id, cls)
        class_name = "SWTApplicationDelegate"
        if ((OS.objc_look_up_class(class_name)).equal?(0))
          # long
          app_proc3 = self.attr_application_callback3.get_address
          if ((app_proc3).equal?(0))
            error(SWT::ERROR_NO_MORE_CALLBACKS)
          end
          cls = OS.objc_allocate_class_pair(OS.attr_class_nsobject, class_name, 0)
          OS.class_add_method(cls, OS.attr_sel_application_will_finish_launching_, app_proc3, "@:@")
          OS.class_add_method(cls, OS.attr_sel_terminate_, app_proc3, "@:@")
          OS.class_add_method(cls, OS.attr_sel_quit_requested_, app_proc3, "@:@")
          OS.class_add_method(cls, OS.attr_sel_order_front_standard_about_panel_, app_proc3, "@:@")
          OS.class_add_method(cls, OS.attr_sel_hide_other_applications_, app_proc3, "@:@")
          OS.class_add_method(cls, OS.attr_sel_hide_, app_proc3, "@:@")
          OS.class_add_method(cls, OS.attr_sel_unhide_all_applications_, app_proc3, "@:@")
          OS.class_add_method(cls, OS.attr_sel_application_did_become_active_, app_proc3, "@:@")
          OS.class_add_method(cls, OS.attr_sel_application_did_resign_active_, app_proc3, "@:@")
          OS.objc_register_class_pair(cls)
        end
        if ((self.attr_application_delegate).nil?)
          self.attr_application_delegate = SWTApplicationDelegate.new.alloc.init
          @application.set_delegate(self.attr_application_delegate)
        end
      else
        @is_embedded = true
      end
    end
    
    typesig { [] }
    def create_main_menu
      app_name = get_app_name
      empty_str = NSString.string_with("")
      main_menu = NSMenu.new.alloc
      main_menu.init_with_title(empty_str)
      menu_item = nil
      apple_menu = nil
      format = NSString.string_with("%@ %@")
      title = nil
      app_item = menu_item = main_menu.add_item_with_title(empty_str, 0, empty_str)
      apple_menu = NSMenu.new.alloc
      apple_menu.init_with_title(empty_str)
      OS.objc_msg_send(@application.attr_id, OS.sel_register_name("setAppleMenu:"), apple_menu.attr_id)
      title = NSString.new(OS.objc_msg_send(OS.attr_class_nsstring, OS.attr_sel_string_with_format_, format.attr_id, NSString.string_with(SWT.get_message("About")).attr_id, app_name.attr_id))
      menu_item = apple_menu.add_item_with_title(title, OS.attr_sel_order_front_standard_about_panel_, empty_str)
      menu_item.set_target(self.attr_application_delegate)
      apple_menu.add_item(NSMenuItem.separator_item)
      title = NSString.string_with(SWT.get_message("Preferences..."))
      menu_item = apple_menu.add_item_with_title(title, 0, NSString.string_with(","))
      apple_menu.add_item(NSMenuItem.separator_item)
      title = NSString.string_with(SWT.get_message("Services"))
      menu_item = apple_menu.add_item_with_title(title, 0, empty_str)
      services_menu = NSMenu.new.alloc
      services_menu.init_with_title(empty_str)
      apple_menu.set_submenu(services_menu, menu_item)
      services_menu.release
      @application.set_services_menu(services_menu)
      apple_menu.add_item(NSMenuItem.separator_item)
      title = NSString.new(OS.objc_msg_send(OS.attr_class_nsstring, OS.attr_sel_string_with_format_, format.attr_id, NSString.string_with(SWT.get_message("Hide")).attr_id, app_name.attr_id))
      menu_item = apple_menu.add_item_with_title(title, OS.attr_sel_hide_, NSString.string_with("h"))
      menu_item.set_target(self.attr_application_delegate)
      title = NSString.string_with(SWT.get_message("Hide Others"))
      menu_item = apple_menu.add_item_with_title(title, OS.attr_sel_hide_other_applications_, NSString.string_with("h"))
      menu_item.set_key_equivalent_modifier_mask(OS::NSCommandKeyMask | OS::NSAlternateKeyMask)
      menu_item.set_target(self.attr_application_delegate)
      title = NSString.string_with(SWT.get_message("Show All"))
      menu_item = apple_menu.add_item_with_title(title, OS.attr_sel_unhide_all_applications_, empty_str)
      menu_item.set_target(self.attr_application_delegate)
      apple_menu.add_item(NSMenuItem.separator_item)
      title = NSString.new(OS.objc_msg_send(OS.attr_class_nsstring, OS.attr_sel_string_with_format_, format.attr_id, NSString.string_with(SWT.get_message("Quit")).attr_id, app_name.attr_id))
      menu_item = apple_menu.add_item_with_title(title, OS.attr_sel_quit_requested_, NSString.string_with("q"))
      menu_item.set_target(self.attr_application_delegate)
      main_menu.set_submenu(apple_menu, app_item)
      apple_menu.release
      @application.set_main_menu(main_menu)
      main_menu.release
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def cursor_set_proc(id, sel)
      if (@lock_cursor)
        if (!(@current_control).nil?)
          cursor = @current_control.find_cursor
          if (!(cursor).nil? && !(cursor.attr_handle.attr_id).equal?(id))
            return 0
          end
        end
      end
      OS.call(@old_cursor_set_proc, id, sel)
      return 0
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
      @application = nil
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
    # 
    # long
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
    # 
    # long
    def find_widget(handle, id)
      check_device
      return get_widget(handle)
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
      window = !(@key_window).nil? ? @key_window : @application.key_window
      if (!(window).nil?)
        widget = get_widget(window.content_view)
        if (widget.is_a?(Shell))
          return widget
        end
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
      screens_ = NSScreen.screens
      return get_bounds(screens_)
    end
    
    typesig { [NSArray] }
    def get_bounds(screens_)
      primary_frame = NSScreen.new(screens_.object_at_index(0)).frame
      # double
      min_x = Float::MAX_VALUE
      max_x = Float::MIN_VALUE
      # double
      min_y = Float::MAX_VALUE
      max_y = Float::MIN_VALUE
      # long
      count_ = screens_.count
      i = 0
      while i < count_
        screen = NSScreen.new(screens_.object_at_index(i))
        frame_ = screen.frame
        # double
        x1 = frame_.attr_x
        x2 = frame_.attr_x + frame_.attr_width
        # double
        y1 = primary_frame.attr_height - frame_.attr_y
        y2 = primary_frame.attr_height - (frame_.attr_y + frame_.attr_height)
        if (x1 < min_x)
          min_x = x1
        end
        if (x2 < min_x)
          min_x = x2
        end
        if (x1 > max_x)
          max_x = x1
        end
        if (x2 > max_x)
          max_x = x2
        end
        if (y1 < min_y)
          min_y = y1
        end
        if (y2 < min_y)
          min_y = y2
        end
        if (y1 > max_y)
          max_y = y1
        end
        if (y2 > max_y)
          max_y = y2
        end
        i += 1
      end
      return Rectangle.new(RJava.cast_to_int(min_x), RJava.cast_to_int(min_y), RJava.cast_to_int((max_x - min_x)), RJava.cast_to_int((max_y - min_y)))
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
      return 560
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
      screens_ = NSScreen.screens
      if (!(screens_.count).equal?(1))
        return get_bounds(screens_)
      end
      screen = NSScreen.new(screens_.object_at_index(0))
      frame_ = screen.frame
      visible_frame_ = screen.visible_frame
      # double
      y = frame_.attr_height - (visible_frame_.attr_y + visible_frame_.attr_height)
      return Rectangle.new(RJava.cast_to_int(visible_frame_.attr_x), RJava.cast_to_int(y), RJava.cast_to_int(visible_frame_.attr_width), RJava.cast_to_int(visible_frame_.attr_height))
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
      return find_control(false)
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
      location = NSEvent.mouse_location
      primary_frame = get_primary_frame
      return Point.new(RJava.cast_to_int(location.attr_x), RJava.cast_to_int((primary_frame.attr_height - location.attr_y)))
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
      window = !(@key_window).nil? ? @key_window : @application.key_window
      return __get_focus_control(window)
    end
    
    typesig { [NSWindow] }
    def __get_focus_control(window)
      if (!(window).nil?)
        responder = window.first_responder
        if (!(responder).nil? && !responder.responds_to_selector(OS.attr_sel_superview))
          return nil
        end
        view = NSView.new(responder.attr_id)
        if (!(view).nil?)
          begin
            widget = _get_widget(view.attr_id)
            if (widget.is_a?(Control))
              return widget
            end
            view = view.superview
          end while (!(view).nil?)
        end
      end
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
      event = @application.current_event
      return !(event).nil? ? RJava.cast_to_int((event.timestamp * 1000)) : 0
    end
    
    typesig { [Decorations] }
    def get_menus(shell)
      if ((@menus).nil?)
        return Array.typed(Menu).new(0) { nil }
      end
      count_ = 0
      i = 0
      while i < @menus.attr_length
        menu = @menus[i]
        if (!(menu).nil? && (menu.attr_parent).equal?(shell))
          count_ += 1
        end
        i += 1
      end
      index = 0
      result = Array.typed(Menu).new(count_) { nil }
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
      screens_ = NSScreen.screens
      primary_frame = NSScreen.new(screens_.object_at_index(0)).frame
      # 64
      count_ = RJava.cast_to_int(screens_.count)
      monitors = Array.typed(SwtMonitor).new(count_) { nil }
      i = 0
      while i < count_
        monitor = SwtMonitor.new
        screen = NSScreen.new(screens_.object_at_index(i))
        frame_ = screen.frame
        monitor.attr_x = RJava.cast_to_int(frame_.attr_x)
        monitor.attr_y = RJava.cast_to_int((primary_frame.attr_height - (frame_.attr_y + frame_.attr_height)))
        monitor.attr_width = RJava.cast_to_int(frame_.attr_width)
        monitor.attr_height = RJava.cast_to_int(frame_.attr_height)
        visible_frame_ = screen.visible_frame
        monitor.attr_client_x = RJava.cast_to_int(visible_frame_.attr_x)
        monitor.attr_client_y = RJava.cast_to_int((primary_frame.attr_height - (visible_frame_.attr_y + visible_frame_.attr_height)))
        monitor.attr_client_width = RJava.cast_to_int(visible_frame_.attr_width)
        monitor.attr_client_height = RJava.cast_to_int(visible_frame_.attr_height)
        monitors[i] = monitor
        i += 1
      end
      return monitors
    end
    
    typesig { [] }
    def get_primary_frame
      screens_ = NSScreen.screens
      return NSScreen.new(screens_.object_at_index(0)).frame
    end
    
    typesig { [] }
    # Returns the primary monitor for that device.
    # 
    # @return the primary monitor
    # 
    # @since 3.0
    def get_primary_monitor
      check_device
      monitor = SwtMonitor.new
      screens_ = NSScreen.screens
      screen = NSScreen.new(screens_.object_at_index(0))
      frame_ = screen.frame
      monitor.attr_x = RJava.cast_to_int(frame_.attr_x)
      monitor.attr_y = RJava.cast_to_int((frame_.attr_height - (frame_.attr_y + frame_.attr_height)))
      monitor.attr_width = RJava.cast_to_int(frame_.attr_width)
      monitor.attr_height = RJava.cast_to_int(frame_.attr_height)
      visible_frame_ = screen.visible_frame
      monitor.attr_client_x = RJava.cast_to_int(visible_frame_.attr_x)
      monitor.attr_client_y = RJava.cast_to_int((frame_.attr_height - (visible_frame_.attr_y + visible_frame_.attr_height)))
      monitor.attr_client_width = RJava.cast_to_int(visible_frame_.attr_width)
      monitor.attr_client_height = RJava.cast_to_int(visible_frame_.attr_height)
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
      windows_ = @application.windows
      index = 0
      # 64
      result = Array.typed(Shell).new(RJava.cast_to_int(windows_.count)) { nil }
      i = 0
      while i < result.attr_length
        window = NSWindow.new(windows_.object_at_index(i))
        widget = get_widget(window.content_view)
        if (widget.is_a?(Shell))
          result[((index += 1) - 1)] = widget
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
    
    class_module.module_eval {
      typesig { [] }
      def get_sheet_enabled
        return !("false" == System.get_property("org.eclipse.swt.sheet"))
      end
    }
    
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
      color = get_widget_color(id)
      if (!(color).nil?)
        return color
      end
      return super(id)
    end
    
    typesig { [::Java::Int] }
    def get_widget_color(id)
      if (0 <= id && id < @colors.attr_length && !(@colors[id]).nil?)
        return Color.cocoa_new(self, @colors[id])
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    # double
    def get_widget_color_rgb(id)
      color = nil
      case (id)
      when SWT::COLOR_INFO_FOREGROUND
        color = NSColor.black_color
      when SWT::COLOR_INFO_BACKGROUND
        # double
        return Array.typed(::Java::Float).new([0xff / 255, 0xff / 255, 0xe1 / 255, 1])
      when SWT::COLOR_TITLE_FOREGROUND
        color = NSColor.window_frame_text_color
      when SWT::COLOR_TITLE_BACKGROUND
        color = NSColor.alternate_selected_control_color
      when SWT::COLOR_TITLE_BACKGROUND_GRADIENT
        color = NSColor.selected_control_color
      when SWT::COLOR_TITLE_INACTIVE_FOREGROUND
        color = NSColor.disabled_control_text_color
      when SWT::COLOR_TITLE_INACTIVE_BACKGROUND
        color = NSColor.secondary_selected_control_color
      when SWT::COLOR_TITLE_INACTIVE_BACKGROUND_GRADIENT
        color = NSColor.secondary_selected_control_color
      when SWT::COLOR_WIDGET_DARK_SHADOW
        color = NSColor.control_dark_shadow_color
      when SWT::COLOR_WIDGET_NORMAL_SHADOW
        color = NSColor.control_shadow_color
      when SWT::COLOR_WIDGET_LIGHT_SHADOW
        color = NSColor.control_highlight_color
      when SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW
        color = NSColor.control_light_highlight_color
      when SWT::COLOR_WIDGET_BACKGROUND
        color = NSColor.control_highlight_color
      when SWT::COLOR_WIDGET_FOREGROUND
        color = NSColor.control_text_color
      when SWT::COLOR_WIDGET_BORDER
        color = NSColor.black_color
      when SWT::COLOR_LIST_FOREGROUND
        color = NSColor.text_color
      when SWT::COLOR_LIST_BACKGROUND
        color = NSColor.text_background_color
      when SWT::COLOR_LIST_SELECTION_TEXT
        color = NSColor.selected_text_color
      when SWT::COLOR_LIST_SELECTION
        color = NSColor.selected_text_background_color
      end
      return get_widget_color_rgb(color)
    end
    
    typesig { [NSColor] }
    # double
    def get_widget_color_rgb(color)
      if ((color).nil?)
        return nil
      end
      color = color.color_using_color_space(NSColorSpace.device_rgbcolor_space)
      if ((color).nil?)
        return nil
      end
      # double
      # double
      # 64
      components = Array.typed(::Java::Float).new(RJava.cast_to_int(color.number_of_components)) { 0.0 }
      color.get_components(components)
      # double
      return Array.typed(::Java::Float).new([components[0], components[1], components[2], components[3]])
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
      case (id)
      when SWT::ICON_ERROR
        if (!(@error_image).nil?)
          return @error_image
        end
        ns_image = NSWorkspace.shared_workspace.icon_for_file_type(NSString.new(OS._nsfile_type_for_hfstype_code(OS.attr_k_alert_stop_icon)))
        if ((ns_image).nil?)
          return nil
        end
        ns_image.retain
        return @error_image = Image.cocoa_new(self, SWT::ICON, ns_image)
      when SWT::ICON_INFORMATION, SWT::ICON_QUESTION, SWT::ICON_WORKING
        if (!(@info_image).nil?)
          return @info_image
        end
        ns_image = NSWorkspace.shared_workspace.icon_for_file_type(NSString.new(OS._nsfile_type_for_hfstype_code(OS.attr_k_alert_note_icon)))
        if ((ns_image).nil?)
          return nil
        end
        ns_image.retain
        return @info_image = Image.cocoa_new(self, SWT::ICON, ns_image)
      when SWT::ICON_WARNING
        if (!(@warning_image).nil?)
          return @warning_image
        end
        ns_image = NSWorkspace.shared_workspace.icon_for_file_type(NSString.new(OS._nsfile_type_for_hfstype_code(OS.attr_k_alert_caution_icon)))
        if ((ns_image).nil?)
          return nil
        end
        ns_image.retain
        return @warning_image = Image.cocoa_new(self, SWT::ICON, ns_image)
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
    
    typesig { [] }
    def get_tool_tip_time
      check_device
      # TODO get OS value (NSTooltipManager?)
      return 560
    end
    
    typesig { [::Java::Int] }
    # long
    def get_widget(id)
      return _get_widget(id)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      # long
      def _get_widget(id)
        if ((id).equal?(0))
          return nil
        end
        # long
        # long
        jni_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS.object_get_instance_variable(id, SWT_OBJECT, jni_ref)
        if ((jni_ref[0]).equal?(0))
          return nil
        end
        return OS._jniget_object(jni_ref[0])
      end
    }
    
    typesig { [NSView] }
    def get_widget(view)
      if ((view).nil?)
        return nil
      end
      return get_widget(view.attr_id)
    end
    
    typesig { [] }
    def has_default_button
      windows_ = @application.windows
      # long
      count_ = windows_.count
      i = 0
      while i < count_
        window = NSWindow.new(windows_.object_at_index(i))
        if (!(window.default_button_cell).nil?)
          return true
        end
        i += 1
      end
      return false
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
      init_classes
      init_colors
      init_fonts
      if (!@is_embedded)
        # Feature in Cocoa:  NSApplication.finishLaunching() adds an apple menu to the menu bar that isn't accessible via NSMenu.
        # If Display objects are created and disposed of multiple times in a single process, another apple menu is added to the menu bar.
        # It must be called or the dock icon will continue to bounce. So, it should only be called once per process, not just once per
        # creation of a Display.  Use a static so creation of additional Display objects won't affect the menu bar.
        if (!self.attr_launched)
          @application.finish_launching
          self.attr_launched = true
          Runtime.get_runtime.add_shutdown_hook(# only add the shutdown hook once
          Class.new(JavaThread.class == Class ? JavaThread : Object) do
            extend LocalClass
            include_class_members Display
            include JavaThread if JavaThread.class == Module
            
            typesig { [] }
            define_method :run do
              NSApplication.shared_application.terminate(nil)
            end
            
            typesig { [Vararg.new(Object)] }
            define_method :initialize do |*args|
              super(*args)
            end
            
            private
            alias_method :initialize_anonymous, :initialize
          end.new_local(self))
        end
      end
      @observer_callback = Callback.new(self, "observerProc", 3) # $NON-NLS-1$
      # long
      observer_proc = @observer_callback.get_address
      if ((observer_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      activities = OS.attr_k_cfrun_loop_before_waiting
      @run_loop_observer = OS._cfrun_loop_observer_create(0, activities, true, 0, observer_proc, 0)
      if ((@run_loop_observer).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS._cfrun_loop_add_observer(OS._cfrun_loop_get_current, @run_loop_observer, OS.k_cfrun_loop_common_modes)
      @cursor_set_callback = Callback.new(self, "cursorSetProc", 2)
      # long
      cursor_set_proc = @cursor_set_callback.get_address
      if ((cursor_set_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      # long
      method = OS.class_get_instance_method(OS.attr_class_nscursor, OS.attr_sel_set)
      if (!(method).equal?(0))
        @old_cursor_set_proc = OS.method_set_implementation(method, cursor_set_proc)
      end
      @timer_delegate = SWTWindowDelegate.new.alloc.init
      @settings_delegate = SWTWindowDelegate.new.alloc.init
      default_center_ = NSNotificationCenter.default_center
      default_center_.add_observer(@settings_delegate, OS.attr_sel_system_settings_changed_, OS::NSSystemColorsDidChangeNotification, nil)
      default_center_.add_observer(@settings_delegate, OS.attr_sel_system_settings_changed_, OS::NSApplicationDidChangeScreenParametersNotification, nil)
      text_view = NSTextView.new.alloc
      text_view.init
      @marked_attributes = text_view.marked_text_attributes
      @marked_attributes.retain
      text_view.release
      @is_painting = NSMutableArray.new.alloc
      @is_painting = @is_painting.init_with_capacity(12)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, needs_display_in_rect_proc)
      if (!(proc3).equal?(0))
        OS.class_add_method(cls, OS.attr_sel_mouse_down_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_mouse_up_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_scroll_wheel_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_right_mouse_down_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_right_mouse_up_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_right_mouse_dragged_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_other_mouse_down_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_other_mouse_up_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_other_mouse_dragged_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_mouse_dragged_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_mouse_moved_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_mouse_entered_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_mouse_exited_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_menu_for_event_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_key_down_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_key_up_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_flags_changed_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_cursor_update_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_set_needs_display_, proc3, "@:B")
        OS.class_add_method(cls, OS.attr_sel_should_delay_window_ordering_for_event_, proc3, "@:@")
        OS.class_add_method(cls, OS.attr_sel_accepts_first_mouse_, proc3, "@:@")
      end
      if (!(proc2).equal?(0))
        OS.class_add_method(cls, OS.attr_sel_resign_first_responder, proc2, "@:")
        OS.class_add_method(cls, OS.attr_sel_become_first_responder, proc2, "@:")
        OS.class_add_method(cls, OS.attr_sel_reset_cursor_rects, proc2, "@:")
        OS.class_add_method(cls, OS.attr_sel_update_tracking_areas, proc2, "@:")
      end
      if (!(needs_display_in_rect_proc).equal?(0))
        OS.class_add_method(cls, OS.attr_sel_set_needs_display_in_rect_, needs_display_in_rect_proc, "@:{NSRect}")
      end
      if (!(draw_rect_proc).equal?(0))
        OS.class_add_method(cls, OS.attr_sel_draw_rect_, draw_rect_proc, "@:{NSRect}")
      end
      if (!(hit_test_proc).equal?(0))
        OS.class_add_method(cls, OS.attr_sel_hit_test_, hit_test_proc, "@:{NSPoint}")
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      OS.class_add_method(cls, OS.attr_sel_set_frame_origin_, set_frame_origin_proc, "@:{NSPoint}")
      OS.class_add_method(cls, OS.attr_sel_set_frame_size_, set_frame_size_proc, "@:{NSSize}")
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.class_add_method(cls, OS.attr_sel_accessibility_action_names, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_accessibility_attribute_names, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_accessibility_parameterized_attribute_names, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_accessibility_focused_uielement, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_accessibility_is_ignored, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_accessibility_attribute_value_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_accessibility_hit_test_, accessibility_hit_test_proc, "@:{NSPoint}")
      OS.class_add_method(cls, OS.attr_sel_accessibility_attribute_value_for_parameter_, proc4, "@:@@")
      OS.class_add_method(cls, OS.attr_sel_accessibility_perform_action_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_accessibility_action_description_, proc3, "@:@")
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
    # long
    # long
    def register_cell_subclass(cell_class, size, align, types)
      cell_class_name = OS.class_get_name(cell_class)
      # long
      cls = OS.objc_allocate_class_pair(cell_class, "SWTAccessible" + cell_class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.objc_register_class_pair(cls)
      return cls
    end
    
    typesig { [] }
    def init_classes
      if (!(OS.objc_look_up_class("SWTView")).equal?(0))
        return
      end
      clazz = get_class
      self.attr_dialog_callback3 = Callback.new(clazz, "dialogProc", 3)
      # long
      dialog_proc3 = self.attr_dialog_callback3.get_address
      if ((dialog_proc3).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      self.attr_dialog_callback4 = Callback.new(clazz, "dialogProc", 4)
      # long
      dialog_proc4 = self.attr_dialog_callback4.get_address
      if ((dialog_proc4).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      self.attr_dialog_callback5 = Callback.new(clazz, "dialogProc", 5)
      # long
      dialog_proc5 = self.attr_dialog_callback5.get_address
      if ((dialog_proc5).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      self.attr_window_callback3 = Callback.new(clazz, "windowProc", 3)
      # long
      proc3 = self.attr_window_callback3.get_address
      if ((proc3).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      self.attr_window_callback2 = Callback.new(clazz, "windowProc", 2)
      # long
      proc2 = self.attr_window_callback2.get_address
      if ((proc2).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      self.attr_window_callback4 = Callback.new(clazz, "windowProc", 4)
      # long
      proc4 = self.attr_window_callback4.get_address
      if ((proc4).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      self.attr_window_callback5 = Callback.new(clazz, "windowProc", 5)
      # long
      proc5 = self.attr_window_callback5.get_address
      if ((proc5).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      self.attr_window_callback6 = Callback.new(clazz, "windowProc", 6)
      # long
      proc6 = self.attr_window_callback6.get_address
      if ((proc6).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      self.attr_field_editor_callback3 = Callback.new(clazz, "fieldEditorProc", 3)
      # long
      field_editor_proc3 = self.attr_field_editor_callback3.get_address
      if ((field_editor_proc3).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      self.attr_field_editor_callback4 = Callback.new(clazz, "fieldEditorProc", 4)
      # long
      field_editor_proc4 = self.attr_field_editor_callback4.get_address
      if ((field_editor_proc4).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      # long
      is_flipped_proc = OS.is_flipped_callback
      # long
      draw_rect_proc = OS._callback_draw_rect_(proc3)
      # long
      draw_interior_with_frame_in_view_proc = OS._callback_draw_interior_with_frame_in_view_(proc4)
      # long
      draw_with_expansion_frame_proc = OS._callback_draw_with_expansion_frame_in_view_(proc4)
      # long
      image_rect_for_bounds_proc = OS._callback_image_rect_for_bounds_(proc3)
      # long
      title_rect_for_bounds_proc = OS._callback_title_rect_for_bounds_(proc3)
      # long
      hit_test_for_event_in_rect_of_view_proc = OS._callback_hit_test_for_event_in_rect_of_view_(proc5)
      # long
      cell_size_proc = OS._callback_cell_size(proc2)
      # long
      draw_image_with_frame_in_view_proc = OS._callback_draw_image_with_frame_in_view_(proc5)
      # long
      set_frame_origin_proc = OS._callback_set_frame_origin_(proc3)
      # long
      set_frame_size_proc = OS._callback_set_frame_size_(proc3)
      # long
      hit_test_proc = OS._callback_hit_test_(proc3)
      # long
      marked_range_proc = OS._callback_marked_range(proc2)
      # long
      selected_range_proc = OS._callback_selected_range(proc2)
      # long
      highlight_selection_in_clip_rect_proc = OS._callback_highlight_selection_in_clip_rect_(proc3)
      # long
      set_marked_text_selected_range_proc = OS._callback_set_marked_text_selected_range_(proc4)
      # long
      attributed_substring_from_range_proc = OS._callback_attributed_substring_from_range_(proc3)
      # long
      character_index_for_point_proc = OS._callback_character_index_for_point_(proc3)
      # long
      first_rect_for_character_range_proc = OS._callback_first_rect_for_character_range_(proc3)
      # long
      text_will_change_selection_proc = OS._callback_text_view_will_change_selection_from_character_range_to_character_range_(proc5)
      # long
      accessibility_hit_test_proc = OS._callback_accessibility_hit_test_(proc3)
      # long
      should_change_text_in_range_replacement_string_proc = OS._callback_should_change_text_in_range_replacement_string_(field_editor_proc4)
      # long
      should_change_text_in_range_replacement_string_field_editor_proc = should_change_text_in_range_replacement_string_proc
      # long
      view_string_for_tool_tip_point_user_data_proc = OS._callback_view_string_for_tool_tip_point_user_data_(proc6)
      # long
      can_drag_rows_with_indexes_at_point_proc = OS._callback_can_drag_rows_with_indexes_at_point_(proc4)
      # long
      set_needs_display_in_rect_proc = OS._callback_set_needs_display_in_rect_(proc3)
      # long
      expansion_frame_with_frame_proc = OS._callback_expansion_frame_with_frame_in_view_(proc4)
      types = Array.typed(::Java::Byte).new([Character.new(?*.ord), Character.new(?\0.ord)])
      size = C::PTR_SIZEOF
      align = (C::PTR_SIZEOF).equal?(4) ? 2 : 3
      class_name = nil
      # long
      cls = 0
      class_name = "SWTBox"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsbox, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      class_name = "SWTButton"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsbutton, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_send_selection, proc2, "@:")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      OS.objc_register_class_pair(cls)
      cls = register_cell_subclass(NSButton.cell_class, size, align, types)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.class_add_method(cls, OS.attr_sel_next_state, proc2, "@:")
      NSButton.set_cell_class(cls)
      class_name = "SWTButtonCell"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsbutton_cell, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.class_add_method(cls, OS.attr_sel_draw_image_with_frame_in_view_, draw_image_with_frame_in_view_proc, "@:@{NSFrame}@")
      OS.class_add_method(cls, OS.attr_sel_cell_size, cell_size_proc, "@:")
      OS.class_add_method(cls, OS.attr_sel_draw_interior_with_frame_in_view_, draw_interior_with_frame_in_view_proc, "@:{NSRect}@")
      OS.class_add_method(cls, OS.attr_sel_title_rect_for_bounds_, title_rect_for_bounds_proc, "@:{NSRect}")
      OS.objc_register_class_pair(cls)
      class_name = "SWTCanvasView"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsview, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      # NSTextInput protocol
      OS.class_add_protocol(cls, OS.objc_get_protocol("NSTextInput"))
      OS.class_add_method(cls, OS.attr_sel_has_marked_text, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_marked_range, marked_range_proc, "@:")
      OS.class_add_method(cls, OS.attr_sel_selected_range, selected_range_proc, "@:")
      OS.class_add_method(cls, OS.attr_sel_set_marked_text_selected_range_, set_marked_text_selected_range_proc, "@:@{NSRange}")
      OS.class_add_method(cls, OS.attr_sel_unmark_text, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_valid_attributes_for_marked_text, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_attributed_substring_from_range_, attributed_substring_from_range_proc, "@:{NSRange}")
      OS.class_add_method(cls, OS.attr_sel_insert_text_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_character_index_for_point_, character_index_for_point_proc, "@:{NSPoint}")
      OS.class_add_method(cls, OS.attr_sel_first_rect_for_character_range_, first_rect_for_character_range_proc, "@:{NSRange}")
      OS.class_add_method(cls, OS.attr_sel_do_command_by_selector_, proc3, "@::")
      # NSTextInput protocol end
      OS.class_add_method(cls, OS.attr_sel_can_become_key_view, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_is_flipped, is_flipped_proc, "@:")
      OS.class_add_method(cls, OS.attr_sel_accepts_first_responder, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_is_opaque, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_update_open_glcontext_, proc3, "@:@")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      class_name = "SWTComboBox"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nscombo_box, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_send_selection, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_text_did_change_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_text_view_did_change_selection_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_text_view_will_change_selection_from_character_range_to_character_range_, text_will_change_selection_proc, "@:@{NSRange}{NSRange}")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      cls = register_cell_subclass(NSComboBox.cell_class, size, align, types)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      NSComboBox.set_cell_class(cls)
      class_name = "SWTDatePicker"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsdate_picker, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_is_flipped, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_send_selection, proc2, "@:")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      class_name = "SWTEditorView"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nstext_view, class_name, 0)
      # TODO hitTestProc and drawRectProc should be set Control.setRegion()?
      add_event_methods(cls, 0, field_editor_proc3, 0, 0, 0)
      OS.class_add_method(cls, OS.attr_sel_insert_text_, field_editor_proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_do_command_by_selector_, field_editor_proc3, "@::")
      OS.class_add_method(cls, OS.attr_sel_should_change_text_in_range_replacement_string_, should_change_text_in_range_replacement_string_field_editor_proc, "@:{NSRange}@")
      OS.objc_register_class_pair(cls)
      class_name = "SWTImageView"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsimage_view, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_is_flipped, is_flipped_proc, "@:")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      cls = register_cell_subclass(NSImageView.cell_class, size, align, types)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      NSImageView.set_cell_class(cls)
      class_name = "SWTImageTextCell"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nstext_field_cell, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_ivar(cls, SWT_IMAGE, size, align, types)
      OS.class_add_ivar(cls, SWT_ROW, size, align, types)
      OS.class_add_ivar(cls, SWT_COLUMN, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_draw_interior_with_frame_in_view_, draw_interior_with_frame_in_view_proc, "@:{NSRect}@")
      OS.class_add_method(cls, OS.attr_sel_draw_with_expansion_frame_in_view_, draw_with_expansion_frame_proc, "@:{NSRect}@")
      OS.class_add_method(cls, OS.attr_sel_image_rect_for_bounds_, image_rect_for_bounds_proc, "@:{NSRect}")
      OS.class_add_method(cls, OS.attr_sel_title_rect_for_bounds_, title_rect_for_bounds_proc, "@:{NSRect}")
      OS.class_add_method(cls, OS.attr_sel_hit_test_for_event_in_rect_of_view_, hit_test_for_event_in_rect_of_view_proc, "@:@{NSRect}@")
      OS.class_add_method(cls, OS.attr_sel_cell_size, cell_size_proc, "@:")
      OS.class_add_method(cls, OS.attr_sel_image, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_set_image_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_expansion_frame_with_frame_in_view_, expansion_frame_with_frame_proc, "@:{NSRect}@")
      OS.objc_register_class_pair(cls)
      class_name = "SWTMenu"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsmenu, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_menu_will_open_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_menu_did_close_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_menu_will_highlight_item_, proc4, "@:@@")
      OS.class_add_method(cls, OS.attr_sel_menu_needs_update_, proc3, "@:@")
      OS.objc_register_class_pair(cls)
      class_name = "SWTMenuItem"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsmenu_item, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_send_selection, proc2, "@:")
      OS.objc_register_class_pair(cls)
      class_name = "SWTOutlineView"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsoutline_view, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_highlight_selection_in_clip_rect_, highlight_selection_in_clip_rect_proc, "@:{NSRect}")
      OS.class_add_method(cls, OS.attr_sel_send_double_selection, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_outline_view_selection_did_change_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_outline_view_child_of_item_, proc5, "@:@i@")
      OS.class_add_method(cls, OS.attr_sel_outline_view_is_item_expandable_, proc4, "@:@@")
      OS.class_add_method(cls, OS.attr_sel_outline_view_number_of_children_of_item_, proc4, "@:@@")
      OS.class_add_method(cls, OS.attr_sel_outline_view_object_value_for_table_column_by_item_, proc5, "@:@@@")
      OS.class_add_method(cls, OS.attr_sel_outline_view_will_display_cell_for_table_column_item_, proc6, "@:@@@@")
      OS.class_add_method(cls, OS.attr_sel_outline_view_set_object_value_for_table_column_by_item_, proc6, "@:@@@@")
      OS.class_add_method(cls, OS.attr_sel_outline_view_column_did_move_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_outline_view_column_did_resize_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_outline_view_did_click_table_column_, proc4, "@:@@")
      OS.class_add_method(cls, OS.attr_sel_can_drag_rows_with_indexes_at_point_, can_drag_rows_with_indexes_at_point_proc, "@:@{NSPoint=ff}")
      OS.class_add_method(cls, OS.attr_sel_outline_view_write_items_to_pasteboard_, proc5, "@:@@@")
      OS.class_add_method(cls, OS.attr_sel_expand_item_expand_children_, proc4, "@:@Z")
      OS.class_add_method(cls, OS.attr_sel_collapse_item_collapse_children_, proc4, "@:@Z")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      class_name = "SWTPanelDelegate"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsobject, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_window_will_close_, dialog_proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_change_color_, dialog_proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_change_font_, dialog_proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_send_selection_, dialog_proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_panel_should_show_filename_, dialog_proc4, "@:@@")
      OS.class_add_method(cls, OS.attr_sel_panel_did_end_return_code_context_info_, dialog_proc5, "@:@i@")
      OS.objc_register_class_pair(cls)
      class_name = "SWTPopUpButton"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nspop_up_button, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_send_selection, proc2, "@:")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      cls = register_cell_subclass(NSPopUpButton.cell_class, size, align, types)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      NSPopUpButton.set_cell_class(cls)
      class_name = "SWTProgressIndicator"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsprogress_indicator, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_view_did_move_to_window, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel__draw_theme_progress_area_, proc3, "@:c")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      class_name = "SWTScroller"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsscroller, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_send_selection, proc2, "@:")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      class_name = "SWTScrollView"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsscroll_view, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_send_vertical_selection, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_send_horizontal_selection, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_page_down_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_page_up_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_reflect_scrolled_clip_view_, proc3, "@:@")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      class_name = "SWTSearchField"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nssearch_field, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.class_add_method(cls, OS.attr_sel_text_did_change_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_text_view_did_change_selection_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_text_view_will_change_selection_from_character_range_to_character_range_, text_will_change_selection_proc, "@:@{NSRange}{NSRange}")
      OS.class_add_method(cls, OS.attr_sel_send_search_selection, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_send_cancel_selection, proc2, "@:")
      OS.objc_register_class_pair(cls)
      cls = register_cell_subclass(NSSearchField.cell_class, size, align, types)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      NSSearchField.set_cell_class(cls)
      # Don't subclass NSSecureTextFieldCell -- you'll get an NSException from [NSSecureTextField setCellClass:]!
      class_name = "SWTSecureTextField"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nssecure_text_field, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.class_add_method(cls, OS.attr_sel_text_did_change_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_text_view_did_change_selection_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_text_view_will_change_selection_from_character_range_to_character_range_, text_will_change_selection_proc, "@:@{NSRange}{NSRange}")
      OS.objc_register_class_pair(cls)
      class_name = "SWTSlider"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsslider, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_send_selection, proc2, "@:")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      cls = register_cell_subclass(NSSlider.cell_class, size, align, types)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      NSSlider.set_cell_class(cls)
      class_name = "SWTStepper"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsstepper, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_send_selection, proc2, "@:")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      cls = register_cell_subclass(NSStepper.cell_class, size, align, types)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      NSStepper.set_cell_class(cls)
      class_name = "SWTTableHeaderCell"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nstable_header_cell, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_draw_interior_with_frame_in_view_, draw_interior_with_frame_in_view_proc, "@:{NSRect}@")
      OS.objc_register_class_pair(cls)
      class_name = "SWTTableHeaderView"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nstable_header_view, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_mouse_down_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_reset_cursor_rects, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_update_tracking_areas, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_menu_for_event_, proc3, "@:@")
      # TODO hitTestProc and drawRectProc should be set Control.setRegion()?
      OS.objc_register_class_pair(cls)
      class_name = "SWTTableView"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nstable_view, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_highlight_selection_in_clip_rect_, highlight_selection_in_clip_rect_proc, "@:{NSRect}")
      OS.class_add_method(cls, OS.attr_sel_send_double_selection, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_number_of_rows_in_table_view_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_table_view_object_value_for_table_column_row_, proc5, "@:@:@:@")
      OS.class_add_method(cls, OS.attr_sel_table_view_should_edit_table_column_row_, proc5, "@:@:@:@")
      OS.class_add_method(cls, OS.attr_sel_table_view_selection_did_change_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_table_view_will_display_cell_for_table_column_row_, proc6, "@:@@@i")
      OS.class_add_method(cls, OS.attr_sel_table_view_set_object_value_for_table_column_row_, proc6, "@:@@@i")
      OS.class_add_method(cls, OS.attr_sel_table_view_column_did_move_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_table_view_column_did_resize_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_table_view_did_click_table_column_, proc4, "@:@")
      OS.class_add_method(cls, OS.attr_sel_can_drag_rows_with_indexes_at_point_, can_drag_rows_with_indexes_at_point_proc, "@:@{NSPoint=ff}")
      OS.class_add_method(cls, OS.attr_sel_table_view_write_rows_with_indexes_to_pasteboard_, proc5, "@:@@@")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      class_name = "SWTTabView"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nstab_view, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_tab_view_will_select_tab_view_item_, proc4, "@:@@")
      OS.class_add_method(cls, OS.attr_sel_tab_view_did_select_tab_view_item_, proc4, "@:@@")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      class_name = "SWTTextView"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nstext_view, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.class_add_method(cls, OS.attr_sel_insert_text_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_do_command_by_selector_, proc3, "@::")
      OS.class_add_method(cls, OS.attr_sel_text_did_change_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_text_view_clicked_on_link_at_index_, proc5, "@:@@@")
      OS.class_add_method(cls, OS.attr_sel_drag_selection_with_event_offset_slide_back_, proc5, "@:@@@")
      OS.class_add_method(cls, OS.attr_sel_should_change_text_in_range_replacement_string_, should_change_text_in_range_replacement_string_proc, "@:{NSRange}@")
      OS.objc_register_class_pair(cls)
      class_name = "SWTTextField"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nstext_field, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.class_add_method(cls, OS.attr_sel_accepts_first_responder, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_text_did_change_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_text_did_end_editing_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_text_view_did_change_selection_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_text_view_will_change_selection_from_character_range_to_character_range_, text_will_change_selection_proc, "@:@{NSRange}{NSRange}")
      OS.objc_register_class_pair(cls)
      cls = register_cell_subclass(NSTextField.cell_class, size, align, types)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      NSTextField.set_cell_class(cls)
      class_name = "SWTTreeItem"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsobject, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.objc_register_class_pair(cls)
      class_name = "SWTView"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsview, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_can_become_key_view, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_is_flipped, is_flipped_proc, "@:")
      OS.class_add_method(cls, OS.attr_sel_accepts_first_responder, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_is_opaque, proc2, "@:")
      add_event_methods(cls, proc2, proc3, draw_rect_proc, hit_test_proc, set_needs_display_in_rect_proc)
      add_frame_methods(cls, set_frame_origin_proc, set_frame_size_proc)
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      class_name = "SWTWindow"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nswindow, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_send_event_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_help_requested_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_can_become_key_window, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_become_key_window, proc2, "@:")
      OS.class_add_method(cls, OS.attr_sel_make_first_responder_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_no_responder_for_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_view_string_for_tool_tip_point_user_data_, view_string_for_tool_tip_point_user_data_proc, "@:@i{NSPoint}@")
      add_accessibility_methods(cls, proc2, proc3, proc4, accessibility_hit_test_proc)
      OS.objc_register_class_pair(cls)
      class_name = "SWTWindowDelegate"
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsobject, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_window_did_resize_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_window_did_move_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_window_should_close_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_window_will_close_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_window_did_resign_key_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_window_did_become_key_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_timer_proc_, proc3, "@:@")
      OS.class_add_method(cls, OS.attr_sel_system_settings_changed_, proc3, "@:@")
      OS.objc_register_class_pair(cls)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_font(cls, sel)
      # long
      widget = OS.objc_msg_send(OS.objc_msg_send(cls, OS.attr_sel_alloc), OS.attr_sel_init_with_frame_, NSRect.new)
      # long
      font = 0
      if (OS.objc_msg_send_bool(widget, OS.attr_sel_responds_to_selector_, sel))
        font = OS.objc_msg_send(widget, sel)
      end
      result = nil
      if (!(font).equal?(0))
        result = NSFont.new(font)
      else
        result = NSFont.system_font_of_size(NSFont.system_font_size_for_control_size(OS::NSRegularControlSize))
      end
      result.retain
      OS.objc_msg_send(widget, OS.attr_sel_release)
      return result
    end
    
    typesig { [] }
    def init_colors
      # double
      @colors = Array.typed(Array.typed(::Java::Float)).new(SWT::COLOR_TITLE_INACTIVE_BACKGROUND_GRADIENT + 1) { nil }
      @colors[SWT::COLOR_INFO_FOREGROUND] = get_widget_color_rgb(SWT::COLOR_INFO_FOREGROUND)
      @colors[SWT::COLOR_INFO_BACKGROUND] = get_widget_color_rgb(SWT::COLOR_INFO_BACKGROUND)
      @colors[SWT::COLOR_TITLE_FOREGROUND] = get_widget_color_rgb(SWT::COLOR_TITLE_FOREGROUND)
      @colors[SWT::COLOR_TITLE_BACKGROUND] = get_widget_color_rgb(SWT::COLOR_TITLE_BACKGROUND)
      @colors[SWT::COLOR_TITLE_BACKGROUND_GRADIENT] = get_widget_color_rgb(SWT::COLOR_TITLE_BACKGROUND_GRADIENT)
      @colors[SWT::COLOR_TITLE_INACTIVE_FOREGROUND] = get_widget_color_rgb(SWT::COLOR_TITLE_INACTIVE_FOREGROUND)
      @colors[SWT::COLOR_TITLE_INACTIVE_BACKGROUND] = get_widget_color_rgb(SWT::COLOR_TITLE_INACTIVE_BACKGROUND)
      @colors[SWT::COLOR_TITLE_INACTIVE_BACKGROUND_GRADIENT] = get_widget_color_rgb(SWT::COLOR_TITLE_INACTIVE_BACKGROUND_GRADIENT)
      @colors[SWT::COLOR_WIDGET_DARK_SHADOW] = get_widget_color_rgb(SWT::COLOR_WIDGET_DARK_SHADOW)
      @colors[SWT::COLOR_WIDGET_NORMAL_SHADOW] = get_widget_color_rgb(SWT::COLOR_WIDGET_NORMAL_SHADOW)
      @colors[SWT::COLOR_WIDGET_LIGHT_SHADOW] = get_widget_color_rgb(SWT::COLOR_WIDGET_LIGHT_SHADOW)
      @colors[SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW] = get_widget_color_rgb(SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW)
      @colors[SWT::COLOR_WIDGET_BACKGROUND] = get_widget_color_rgb(SWT::COLOR_WIDGET_BACKGROUND)
      @colors[SWT::COLOR_WIDGET_FOREGROUND] = get_widget_color_rgb(SWT::COLOR_WIDGET_FOREGROUND)
      @colors[SWT::COLOR_WIDGET_BORDER] = get_widget_color_rgb(SWT::COLOR_WIDGET_BORDER)
      @colors[SWT::COLOR_LIST_FOREGROUND] = get_widget_color_rgb(SWT::COLOR_LIST_FOREGROUND)
      @colors[SWT::COLOR_LIST_BACKGROUND] = get_widget_color_rgb(SWT::COLOR_LIST_BACKGROUND)
      @colors[SWT::COLOR_LIST_SELECTION_TEXT] = get_widget_color_rgb(SWT::COLOR_LIST_SELECTION_TEXT)
      @colors[SWT::COLOR_LIST_SELECTION] = get_widget_color_rgb(SWT::COLOR_LIST_SELECTION)
      @alternate_selected_control_color = get_widget_color_rgb(NSColor.alternate_selected_control_color)
      @alternate_selected_control_text_color = get_widget_color_rgb(NSColor.alternate_selected_control_text_color)
      @secondary_selected_control_color = get_widget_color_rgb(NSColor.secondary_selected_control_color)
      @selected_control_text_color = get_widget_color_rgb(NSColor.selected_control_text_color)
    end
    
    typesig { [] }
    def init_fonts
      @small_fonts = !(System.get_property("org.eclipse.swt.internal.carbon.smallFonts")).nil?
      @button_font = get_font(OS.attr_class_nsbutton, OS.attr_sel_font)
      @pop_up_button_font = get_font(OS.attr_class_nspop_up_button, OS.attr_sel_font)
      @text_field_font = get_font(OS.attr_class_nstext_field, OS.attr_sel_font)
      @secure_text_field_font = get_font(OS.attr_class_nssecure_text_field, OS.attr_sel_font)
      @search_field_font = get_font(OS.attr_class_nssearch_field, OS.attr_sel_font)
      @combo_box_font = get_font(OS.attr_class_nscombo_box, OS.attr_sel_font)
      @slider_font = get_font(OS.attr_class_nsslider, OS.attr_sel_font)
      @scroller_font = get_font(OS.attr_class_nsscroller, OS.attr_sel_font)
      @text_view_font = get_font(OS.attr_class_nstext_view, OS.attr_sel_font)
      @table_view_font = get_font(OS.attr_class_nstable_view, OS.attr_sel_font)
      @outline_view_font = get_font(OS.attr_class_nsoutline_view, OS.attr_sel_font)
      @date_picker_font = get_font(OS.attr_class_nsdate_picker, OS.attr_sel_font)
      @box_font = get_font(OS.attr_class_nsbox, OS.attr_sel_title_font)
      @tab_view_font = get_font(OS.attr_class_nstab_view, OS.attr_sel_font)
      @progress_indicator_font = get_font(OS.attr_class_nsprogress_indicator, OS.attr_sel_font)
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
      if ((@screen_window).nil?)
        window = NSWindow.new.alloc
        rect = NSRect.new
        window = window.init_with_content_rect(rect, OS::NSBorderlessWindowMask, OS::NSBackingStoreBuffered, false)
        window.set_released_when_closed(false)
        @screen_window = window
      end
      context = @screen_window.graphics_context
      # NSAffineTransform transform = NSAffineTransform.transform();
      # NSSize size = handle.size();
      # transform.translateXBy(0, size.height);
      # transform.scaleXBy(1, -1);
      # transform.set();
      if (!(data).nil?)
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (((data.attr_style & mask)).equal?(0))
          data.attr_style |= SWT::LEFT_TO_RIGHT
        end
        data.attr_device = self
        data.attr_background = get_system_color(SWT::COLOR_WHITE).attr_handle
        data.attr_foreground = get_system_color(SWT::COLOR_BLACK).attr_handle
        data.attr_font = get_system_font
      end
      return context.attr_id
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
    def internal_dispose__gc(context, data)
      if (is_disposed)
        SWT.error(SWT::ERROR_DEVICE_DISPOSED)
      end
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
    # <p>MouseWheel</p>
    # <p>The following fields in the <code>Event</code> apply:
    # <ul>
    # <li>(in) type MouseWheel
    # <li>(in) detail either SWT.SCROLL_LINE or SWT.SCROLL_PAGE
    # <li>(in) count the number of lines or pages to scroll
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
        # TODO: Not sure if these calls have any effect on event posting.
        if (!@event_source_delay_set)
          OS._cgset_local_events_suppression_interval(0.0)
          OS._cgenable_event_state_combining(1)
          OS._cgset_local_events_filter_during_suppression_state(OS.attr_k_cgevent_filter_mask_permit_local_keyboard_events | OS.attr_k_cgevent_filter_mask_permit_local_mouse_events | OS.attr_k_cgevent_filter_mask_permit_system_defined_events, OS.attr_k_cgevent_suppression_state_suppression_interval)
          OS._cgset_local_events_filter_during_suppression_state(OS.attr_k_cgevent_filter_mask_permit_local_keyboard_events | OS.attr_k_cgevent_filter_mask_permit_local_mouse_events | OS.attr_k_cgevent_filter_mask_permit_system_defined_events, OS.attr_k_cgevent_suppression_state_remote_mouse_drag)
          @event_source_delay_set = true
        end
        type = event.attr_type
        case (type)
        when SWT::KeyDown, SWT::KeyUp
          v_key = RJava.cast_to_short(Display.untranslate_key(event.attr_key_code))
          if ((v_key).equal?(0))
            # long
            uchr_ptr = 0
            # long
            current_kbd = OS._tiscopy_current_keyboard_input_source
            # long
            uchr_cfdata = OS._tisget_input_source_property(current_kbd, OS.k_tisproperty_unicode_key_layout_data)
            if ((uchr_cfdata).equal?(0))
              return false
            end
            uchr_ptr = OS._cfdata_get_byte_ptr(uchr_cfdata)
            if ((uchr_ptr).equal?(0))
              return false
            end
            if ((OS._cfdata_get_length(uchr_cfdata)).equal?(0))
              return false
            end
            max_string_length = 256
            v_key = -1
            output = CharArray.new(max_string_length)
            actual_string_length = Array.typed(::Java::Int).new(1) { 0 }
            i = 0
            while i <= 0x7f
              OS._uckey_translate(uchr_ptr, i, RJava.cast_to_short(((type).equal?(SWT::KeyDown) ? OS.attr_k_uckey_action_down : OS.attr_k_uckey_action_up)), 0, OS._lmget_kbd_type, 0, @dead_key_state, max_string_length, actual_string_length, output)
              if ((output[0]).equal?(event.attr_character))
                v_key = i
                break
              end
              i += 1
            end
            if ((v_key).equal?(-1))
              i_ = 0
              while i_ <= 0x7f
                OS._uckey_translate(uchr_ptr, i_, RJava.cast_to_short(((type).equal?(SWT::KeyDown) ? OS.attr_k_uckey_action_down : OS.attr_k_uckey_action_up)), OS.attr_shift_key, OS._lmget_kbd_type, 0, @dead_key_state, max_string_length, actual_string_length, output)
                if ((output[0]).equal?(event.attr_character))
                  v_key = i_
                  break
                end
                i_ += 1
              end
            end
          end
          # Bug(?) in UCKeyTranslate:  If event.keyCode doesn't map to a valid SWT constant and event.characer is 0 we still need to post an event.
          # In Carbon, KeyTranslate eventually found a key that generated 0 but UCKeyTranslate never generates 0.
          # When that happens, post an event from key 127, which does nothing.
          if ((v_key).equal?(-1) && (event.attr_character).equal?(0))
            v_key = 127
          end
          if ((v_key).equal?(-1))
            return false
          end
          return (OS._cgpost_keyboard_event(RJava.cast_to_short(0), v_key, (type).equal?(SWT::KeyDown))).equal?(0)
        when SWT::MouseDown, SWT::MouseMove, SWT::MouseUp
          mouse_cursor_position = CGPoint.new
          chord = OS._get_current_button_state
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
            ns_cursor_position = NSEvent.mouse_location
            primary_frame = get_primary_frame
            mouse_cursor_position.attr_x = ns_cursor_position.attr_x
            mouse_cursor_position.attr_y = RJava.cast_to_int((primary_frame.attr_height - ns_cursor_position.attr_y))
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
      pt = NSPoint.new
      pt.attr_x = x
      pt.attr_y = y
      from_window = !(from).nil? ? from.attr_view.window___org_eclipse_swt_widgets_display_7 : nil
      to_window = !(to).nil? ? to.attr_view.window___org_eclipse_swt_widgets_display_9 : nil
      if (!(to_window).nil? && !(from_window).nil? && (to_window.attr_id).equal?(from_window.attr_id))
        if (!from.attr_view.is_flipped)
          pt.attr_y = from.attr_view.bounds.attr_height - pt.attr_y
        end
        pt = from.attr_view.convert_point_to_view_(pt, to.attr_view)
        if (!to.attr_view.is_flipped)
          pt.attr_y = to.attr_view.bounds.attr_height - pt.attr_y
        end
      else
        primary_frame = get_primary_frame
        if (!(from).nil?)
          view = from.event_view
          if (!view.is_flipped)
            pt.attr_y = view.bounds.attr_height - pt.attr_y
          end
          pt = view.convert_point_to_view_(pt, nil)
          pt = from_window.convert_base_to_screen(pt)
          pt.attr_y = primary_frame.attr_height - pt.attr_y
        end
        if (!(to).nil?)
          view = to.event_view
          pt.attr_y = primary_frame.attr_height - pt.attr_y
          pt = to_window.convert_screen_to_base(pt)
          pt = view.convert_point_from_view_(pt, nil)
          if (!view.is_flipped)
            pt.attr_y = view.bounds.attr_height - pt.attr_y
          end
        end
      end
      point.attr_x = RJava.cast_to_int(pt.attr_x)
      point.attr_y = RJava.cast_to_int(pt.attr_y)
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
      pt = NSPoint.new
      pt.attr_x = x
      pt.attr_y = y
      from_window = !(from).nil? ? from.attr_view.window___org_eclipse_swt_widgets_display_11 : nil
      to_window = !(to).nil? ? to.attr_view.window___org_eclipse_swt_widgets_display_13 : nil
      if (!(to_window).nil? && !(from_window).nil? && (to_window.attr_id).equal?(from_window.attr_id))
        if (!from.attr_view.is_flipped)
          pt.attr_y = from.attr_view.bounds.attr_height - pt.attr_y
        end
        pt = from.attr_view.convert_point_to_view_(pt, to.attr_view)
        if (!to.attr_view.is_flipped)
          pt.attr_y = to.attr_view.bounds.attr_height - pt.attr_y
        end
      else
        primary_frame = get_primary_frame
        if (!(from).nil?)
          view = from.event_view
          if (!view.is_flipped)
            pt.attr_y = view.bounds.attr_height - pt.attr_y
          end
          pt = view.convert_point_to_view_(pt, nil)
          pt = from_window.convert_base_to_screen(pt)
          pt.attr_y = primary_frame.attr_height - pt.attr_y
        end
        if (!(to).nil?)
          view = to.event_view
          pt.attr_y = primary_frame.attr_height - pt.attr_y
          pt = to_window.convert_screen_to_base(pt)
          pt = view.convert_point_from_view_(pt, nil)
          if (!view.is_flipped)
            pt.attr_y = view.bounds.attr_height - pt.attr_y
          end
        end
      end
      rectangle.attr_x = RJava.cast_to_int(pt.attr_x)
      rectangle.attr_y = RJava.cast_to_int(pt.attr_y)
      return rectangle
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def observer_proc(observer, activity, info)
      # 64
      case (RJava.cast_to_int(activity))
      when OS.attr_k_cfrun_loop_before_waiting
        if (@run_async_messages)
          if (run_async_messages(false))
            wake_thread
          end
        end
      end
      return 0
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
      if ((@send_event_count).equal?(0) && (@loop_count).equal?(@pool_count - 1) && (Callback.get_entry_count).equal?(0))
        remove_pool
      end
      add_pool
      @loop_count += 1
      events = false
      begin
        events |= run_settings
        events |= run_timers
        events |= run_contexts
        events |= run_popups
        event = @application.next_event_matching_mask(0, nil, OS::NSDefaultRunLoopMode, true)
        if (!(event).nil?)
          events = true
          @application.send_event(event)
        end
        events |= run_paint
        events |= run_deferred_events
        if (!events)
          events = is_disposed || run_async_messages(false)
        end
      ensure
        remove_pool
        @loop_count -= 1
        if ((@send_event_count).equal?(0) && (@loop_count).equal?(@pool_count) && (Callback.get_entry_count).equal?(0))
          add_pool
        end
      end
      return events
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
      @current_caret = nil
      # Release Timers
      if (!(@hover_timer).nil?)
        timer_exec(-1, @hover_timer)
      end
      @hover_timer = nil
      if (!(@caret_timer).nil?)
        timer_exec(-1, @caret_timer)
      end
      @caret_timer = nil
      if (!(@ns_timers).nil?)
        i = 0
        while i < @ns_timers.attr_length
          if (!(@ns_timers[i]).nil?)
            @ns_timers[i].invalidate
            @ns_timers[i].release
          end
          i += 1
        end
      end
      @ns_timers = nil
      if (!(@timer_delegate).nil?)
        @timer_delegate.release
      end
      @timer_delegate = nil
      # Release the System Cursors
      i = 0
      while i < @cursors.attr_length
        if (!(@cursors[i]).nil?)
          @cursors[i].dispose
        end
        i += 1
      end
      @cursors = nil
      # Release default fonts
      if (!(@button_font).nil?)
        @button_font.release
      end
      if (!(@pop_up_button_font).nil?)
        @pop_up_button_font.release
      end
      if (!(@text_field_font).nil?)
        @text_field_font.release
      end
      if (!(@secure_text_field_font).nil?)
        @secure_text_field_font.release
      end
      if (!(@search_field_font).nil?)
        @search_field_font.release
      end
      if (!(@combo_box_font).nil?)
        @combo_box_font.release
      end
      if (!(@slider_font).nil?)
        @slider_font.release
      end
      if (!(@scroller_font).nil?)
        @scroller_font.release
      end
      if (!(@text_view_font).nil?)
        @text_view_font.release
      end
      if (!(@table_view_font).nil?)
        @table_view_font.release
      end
      if (!(@outline_view_font).nil?)
        @outline_view_font.release
      end
      if (!(@date_picker_font).nil?)
        @date_picker_font.release
      end
      if (!(@box_font).nil?)
        @box_font.release
      end
      if (!(@tab_view_font).nil?)
        @tab_view_font.release
      end
      if (!(@progress_indicator_font).nil?)
        @progress_indicator_font.release
      end
      @button_font = @pop_up_button_font = @text_field_font = @secure_text_field_font = nil
      @search_field_font = @combo_box_font = @slider_font = @scroller_font
      @text_view_font = @table_view_font = @outline_view_font = @date_picker_font = nil
      @box_font = @tab_view_font = @progress_indicator_font = nil
      # Release Dock image
      if (!(@dock_image).nil?)
        @dock_image.release
      end
      @dock_image = nil
      if (!(@screen_window).nil?)
        @screen_window.release
      end
      @screen_window = nil
      if (!(@needs_display).nil?)
        @needs_display.release
      end
      if (!(@needs_display_in_rect).nil?)
        @needs_display_in_rect.release
      end
      if (!(@is_painting).nil?)
        @is_painting.release
      end
      @needs_display = @needs_display_in_rect = @is_painting = nil
      @modal_shells = nil
      @menu_bar = nil
      @menus = nil
      if (!(@marked_attributes).nil?)
        @marked_attributes.release
      end
      @marked_attributes = nil
      if (!(@old_cursor_set_proc).equal?(0))
        # long
        method = OS.class_get_instance_method(OS.attr_class_nscursor, OS.attr_sel_set)
        OS.method_set_implementation(method, @old_cursor_set_proc)
      end
      if (!(@cursor_set_callback).nil?)
        @cursor_set_callback.dispose
      end
      @cursor_set_callback = nil
      @dead_key_state = nil
      if (!(@settings_delegate).nil?)
        NSNotificationCenter.default_center.remove_observer(@settings_delegate)
        @settings_delegate.release
      end
      @settings_delegate = nil
      # Clear the menu bar if we created it.
      if (!@is_embedded)
        # remove all existing menu items except the application menu
        menubar = @application.main_menu
        # long
        count_ = menubar.number_of_items
        while (count_ > 1)
          menubar.remove_item_at_index(count_ - 1)
          count_ -= 1
        end
      end
      # The autorelease pool is cleaned up when we call NSApplication.terminate().
      if (!(@application).nil? && !(@application_class).equal?(0))
        OS.object_set_class(@application.attr_id, @application_class)
      end
      @application = nil
      @application_class = 0
      if (!(@run_loop_observer).equal?(0))
        OS._cfrun_loop_observer_invalidate(@run_loop_observer)
        OS._cfrelease(@run_loop_observer)
      end
      @run_loop_observer = 0
      if (!(@observer_callback).nil?)
        @observer_callback.dispose
      end
      @observer_callback = nil
    end
    
    typesig { [SwtGCData] }
    def remove_context(context)
      if ((@contexts).nil?)
        return
      end
      count_ = 0
      i = 0
      while i < @contexts.attr_length
        if (!(@contexts[i]).nil?)
          if ((@contexts[i]).equal?(context))
            @contexts[i] = nil
          else
            count_ += 1
          end
        end
        i += 1
      end
      if ((count_).equal?(0))
        @contexts = nil
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
    
    typesig { [NSObject] }
    def remove_widget(view)
      if ((view).nil?)
        return nil
      end
      # long
      # long
      jni_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS.object_get_instance_variable(view.attr_id, SWT_OBJECT, jni_ref)
      if ((jni_ref[0]).equal?(0))
        return nil
      end
      widget = OS._jniget_object(jni_ref[0])
      OS.object_set_instance_variable(view.attr_id, SWT_OBJECT, 0)
      return widget
    end
    
    typesig { [Menu] }
    def remove_menu(menu)
      if ((@menus).nil?)
        return
      end
      i = 0
      while i < @menus.attr_length
        if ((@menus[i]).equal?(menu))
          @menus[i] = nil
          break
        end
        i += 1
      end
    end
    
    typesig { [] }
    def remove_pool
      pool = @pools[@pool_count - 1]
      @pools[(@pool_count -= 1)] = nil
      if ((@pool_count).equal?(0))
        dictionary = NSThread.current_thread.thread_dictionary
        dictionary.remove_object_for_key(NSString.string_with("SWT_NSAutoreleasePool"))
      end
      pool.release
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
    def run_contexts
      if (!(@contexts).nil?)
        i = 0
        while i < @contexts.attr_length
          if (!(@contexts[i]).nil? && !(@contexts[i].attr_flipped_context).nil?)
            @contexts[i].attr_flipped_context.flush_graphics
          end
          i += 1
        end
      end
      return false
    end
    
    typesig { [] }
    def run_deferred_events
      run = false
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
            run = true
            widget.notify_listeners(event.attr_type, event)
          end
        end
      end
      # Clear the queue
      @event_queue = nil
      return run
    end
    
    typesig { [] }
    def run_paint
      if ((@needs_display).nil? && (@needs_display_in_rect).nil?)
        return false
      end
      if (!(@needs_display).nil?)
        # long
        count_ = @needs_display.count
        i = 0
        while i < count_
          OS.objc_msg_send(@needs_display.object_at_index(i).attr_id, OS.attr_sel_set_needs_display_, true)
          i += 1
        end
        @needs_display.release
        @needs_display = nil
      end
      if (!(@needs_display_in_rect).nil?)
        # long
        count_ = @needs_display_in_rect.count
        i = 0
        while i < count_
          value = NSValue.new(@needs_display_in_rect.object_at_index(i + 1))
          OS.objc_msg_send(@needs_display_in_rect.object_at_index(i).attr_id, OS.attr_sel_set_needs_display_in_rect_, value.rect_value)
          i += 2
        end
        @needs_display_in_rect.release
        @needs_display_in_rect = nil
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
        run_deferred_events
        length_ = @popups.attr_length
        System.arraycopy(@popups, 1, @popups, 0, (length_ -= 1))
        @popups[length_] = nil
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
      if (!@run_settings)
        return false
      end
      @run_settings = false
      init_colors
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
        if ((@ns_timers[i]).nil? && !(@timer_list[i]).nil?)
          runnable = @timer_list[i]
          @timer_list[i] = nil
          if (!(runnable).nil?)
            result = true
            runnable.run
          end
        end
        i += 1
      end
      return result
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
      send_event(@event_table, event)
    end
    
    typesig { [EventTable, Event] }
    def send_event(table, event)
      begin
        @send_event_count += 1
        if (!filter_event(event))
          if (!(table).nil?)
            table.send_event(event)
          end
        end
      ensure
        @send_event_count -= 1
      end
    end
    
    class_module.module_eval {
      typesig { [] }
      def get_app_name
        name = nil
        pid = OS.getpid
        # long
        ptr = OS.getenv(ascii("APP_NAME_" + RJava.cast_to_string(pid)))
        if (!(ptr).equal?(0))
          name = NSString.string_with_utf8string(ptr)
        end
        if ((name).nil? && !(self.attr_app_name).nil?)
          name = NSString.string_with(self.attr_app_name)
        end
        if ((name).nil?)
          value = NSBundle.main_bundle.object_for_info_dictionary_key(NSString.string_with("CFBundleName"))
          if (!(value).nil?)
            name = NSString.new(value)
          end
        end
        if ((name).nil?)
          name = NSString.string_with("SWT")
        end
        return name
      end
      
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
    
    # TODO use custom timer instead of timerExec
    attr_accessor :hover_timer
    alias_method :attr_hover_timer, :hover_timer
    undef_method :hover_timer
    alias_method :attr_hover_timer=, :hover_timer=
    undef_method :hover_timer=
    
    # TODO - use custom timer instead of timerExec
    attr_accessor :caret_timer
    alias_method :attr_caret_timer, :caret_timer
    undef_method :caret_timer
    alias_method :attr_caret_timer=, :caret_timer=
    undef_method :caret_timer=
    
    # TODO - use custom timer instead of timerExec
    attr_accessor :default_button_timer
    alias_method :attr_default_button_timer, :default_button_timer
    undef_method :default_button_timer
    alias_method :attr_default_button_timer=, :default_button_timer=
    undef_method :default_button_timer=
    
    typesig { [Caret] }
    def set_current_caret(caret)
      @current_caret = caret
      blink_rate = !(@current_caret).nil? ? @current_caret.attr_blink_rate : -1
      timer_exec(blink_rate, @caret_timer)
    end
    
    typesig { [Control] }
    def set_cursor(control)
      cursor = nil
      if (!(control).nil? && !control.is_disposed)
        cursor = control.find_cursor
      end
      if ((cursor).nil?)
        window = @application.key_window
        if (!(window).nil?)
          if (window.are_cursor_rects_enabled)
            window.disable_cursor_rects
            window.enable_cursor_rects
          end
          return
        end
        cursor = get_system_cursor(SWT::CURSOR_ARROW)
      end
      @lock_cursor = false
      cursor.attr_handle.set
      @lock_cursor = true
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
        object = data[0]
        widget = data[1]
        if ((widget).nil?)
          remove_widget(object)
        else
          add_widget(object, widget)
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
    
    typesig { [Menu] }
    def set_menu_bar(menu)
      if ((menu).equal?(@menu_bar))
        return
      end
      @menu_bar = menu
      # remove all existing menu items except the application menu
      menubar = @application.main_menu
      # For some reason, NSMenu.cancelTracking() does not dismisses
      # the menu right away when the menu bar is set in a stacked
      # event loop. The fix is to use CancelMenuTracking() instead.
      # 
      # menubar.cancelTracking();
      OS._cancel_menu_tracking(OS._acquire_root_menu, true, 0)
      # long
      count_ = menubar.number_of_items
      while (count_ > 1)
        menubar.remove_item_at_index(count_ - 1)
        count_ -= 1
      end
      # set parent of each item to NULL and add them to menubar
      if (!(menu).nil?)
        items = menu.get_items
        i = 0
        while i < items.attr_length
          item = items[i]
          ns_item = item.attr_ns_item
          ns_item.set_menu(nil)
          menubar.add_item(ns_item)
          # Bug in Cocoa: Calling NSMenuItem.setEnabled() for menu item of a menu bar only
          # works when the menu bar is the current menu bar.  The underline OS menu does get
          # enabled/disable when that menu is set later on.  The fix is to toggle the
          # item enabled state to force the underline menu to be updated.
          enabled = menu.get_enabled && item.get_enabled
          ns_item.set_enabled(!enabled)
          ns_item.set_enabled(enabled)
          i += 1
        end
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
      begin
        add_pool
        @allow_timers = @run_async_messages = false
        NSRunLoop.current_run_loop.run_mode(OS::NSDefaultRunLoopMode, NSDate.distant_future)
        @allow_timers = @run_async_messages = true
      ensure
        remove_pool
      end
      return true
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
      # TODO - remove a timer, reschedule a timer not tested
      if ((runnable).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@timer_list).nil?)
        @timer_list = Array.typed(Runnable).new(4) { nil }
      end
      if ((@ns_timers).nil?)
        @ns_timers = Array.typed(NSTimer).new(4) { nil }
      end
      index = 0
      while (index < @timer_list.attr_length)
        if ((@timer_list[index]).equal?(runnable))
          break
        end
        index += 1
      end
      if (!(index).equal?(@timer_list.attr_length))
        timer = @ns_timers[index]
        if ((timer).nil?)
          @timer_list[index] = nil
        else
          if (milliseconds < 0)
            timer.invalidate
            timer.release
            @timer_list[index] = nil
            @ns_timers[index] = nil
          else
            timer.set_fire_date(NSDate.date_with_time_interval_since_now(milliseconds / 1000.0))
          end
          return
        end
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
        new_timer_ids = Array.typed(NSTimer).new(@ns_timers.attr_length + 4) { nil }
        System.arraycopy(@ns_timers, 0, new_timer_ids, 0, @ns_timers.attr_length)
        @ns_timers = new_timer_ids
      end
      user_info = NSNumber.number_with_int(index)
      timer = NSTimer.scheduled_timer_with_time_interval(milliseconds / 1000.0, @timer_delegate, OS.attr_sel_timer_proc_, user_info, false)
      NSRunLoop.current_run_loop.add_timer(timer, OS::NSEventTrackingRunLoopMode)
      timer.retain
      if (!(timer).nil?)
        @ns_timers[index] = timer
        @timer_list[index] = runnable
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def timer_proc(id, sel, timer_id)
      timer = NSTimer.new(timer_id)
      number = NSNumber.new(timer.user_info)
      index = number.int_value
      if ((@timer_list).nil?)
        return 0
      end
      if (0 <= index && index < @timer_list.attr_length)
        if (@allow_timers)
          runnable = @timer_list[index]
          @timer_list[index] = nil
          @ns_timers[index] = nil
          if (!(runnable).nil?)
            runnable.run
          end
        else
          @ns_timers[index] = nil
          wake_thread
        end
      end
      timer.invalidate
      timer.release
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
    end
    
    typesig { [] }
    def update_default_button
      timer_exec(has_default_button ? DEFAULT_BUTTON_INTERVAL : -1, @default_button_timer)
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
      mainmenu = @application.main_menu
      appitem = mainmenu.item_at_index(0)
      if (!(appitem).nil?)
        sm = appitem.submenu
        # Normally this would be sel_terminate_ but we changed it so terminate: doesn't kill the app.
        # long
        quit_index = sm.index_of_item_with_target(self.attr_application_delegate, OS.attr_sel_quit_requested_)
        if (!(quit_index).equal?(-1))
          quit_item = sm.item_at_index(quit_index)
          quit_item.set_enabled(enabled)
        end
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
      # new pool?
      object = NSObject.new.alloc.init
      object.perform_selector_on_main_thread(OS.attr_sel_release, nil, false)
    end
    
    typesig { [::Java::Boolean] }
    def find_control(check_trim)
      return find_control(check_trim, nil)
    end
    
    typesig { [::Java::Boolean, Array.typed(NSView)] }
    def find_control(check_trim, hit_view)
      view = nil
      screen_location = NSEvent.mouse_location
      windows_ = @application.ordered_windows
      i = 0
      # 64
      count_ = RJava.cast_to_int(windows_.count)
      while i < count_ && (view).nil?
        window = NSWindow.new(windows_.object_at_index(i))
        content_view_ = window.content_view
        if (!(content_view_).nil? && OS._nspoint_in_rect(screen_location, window.frame))
          location = window.convert_screen_to_base(screen_location)
          view = content_view_.hit_test(location)
          if ((view).nil? && !check_trim)
            view = content_view_
          end
          break
        end
        i += 1
      end
      control = nil
      if (!(view).nil?)
        begin
          widget = get_widget(view)
          if (widget.is_a?(Control))
            control = widget
            break
          end
          view = view.superview
        end while (!(view).nil?)
      end
      if (check_trim)
        if (!(control).nil? && control.is_trim(view))
          control = nil
        end
      end
      if (!(control).nil? && !(hit_view).nil?)
        hit_view[0] = view
      end
      return control
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def finish_launching(id, sel)
      # [NSApplication finishLaunching] cannot run multiple times otherwise
      # multiple main menus are added.
      if (self.attr_launched)
        return
      end
      self.attr_launched = true
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def application_did_become_active(id, sel, notification)
      check_focus
      check_enter_exit(find_control(true), nil, false)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def application_did_resign_active(id, sel, notification)
      check_focus
      check_enter_exit(nil, nil, false)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def application_next_event_matching_mask(id, sel, mask, expiration, mode, dequeue)
      if (!(dequeue).equal?(0) && !(@tracking_control).nil? && !@tracking_control.is_disposed)
        run_deferred_events
      end
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      # long
      result = OS.objc_msg_send_super(super_struct, sel, mask, expiration, mode, !(dequeue).equal?(0))
      if (!(result).equal?(0))
        if (!(dequeue).equal?(0) && !(@tracking_control).nil? && !@tracking_control.is_disposed)
          application_send_tracking_event(NSEvent.new(result), @tracking_control)
        end
      end
      return result
    end
    
    typesig { [NSEvent, Control] }
    def application_send_tracking_event(ns_event, tracking_control)
      # 64
      type_ = RJava.cast_to_int(ns_event.type)
      case (type_)
      # FALL THROUGH
      when OS::NSLeftMouseDown, OS::NSRightMouseDown, OS::NSOtherMouseDown
        tracking_control.send_mouse_event___org_eclipse_swt_widgets_display_15(ns_event, SWT::MouseDown, true)
      when OS::NSLeftMouseUp, OS::NSRightMouseUp, OS::NSOtherMouseUp
        check_enter_exit(find_control(true), ns_event, true)
        if (tracking_control.is_disposed)
          return
        end
        tracking_control.send_mouse_event___org_eclipse_swt_widgets_display_17(ns_event, SWT::MouseUp, true)
      when OS::NSLeftMouseDragged, OS::NSRightMouseDragged, OS::NSOtherMouseDragged
        check_enter_exit(tracking_control, ns_event, true)
        if (tracking_control.is_disposed)
          return
        end
      when OS::NSMouseMoved
        tracking_control.send_mouse_event___org_eclipse_swt_widgets_display_19(ns_event, SWT::MouseMove, true)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def application_send_event(id, sel, event)
      ns_event = NSEvent.new(event)
      window = ns_event.window___org_eclipse_swt_widgets_display_21
      # 64
      type_ = RJava.cast_to_int(ns_event.type)
      down = false
      case (type_)
      when OS::NSLeftMouseDown, OS::NSRightMouseDown, OS::NSOtherMouseDown
        down = true
        if (!(window).nil?)
          shell = get_widget(window.attr_id)
          if (!(shell).nil?)
            modal_shell = shell.get_modal_shell
            if (!(modal_shell).nil?)
              if (down)
                if (!@application.is_active)
                  @application.activate_ignoring_other_apps(true)
                end
                rect = window.content_rect_for_frame_rect(window.frame)
                pt = window.convert_base_to_screen(ns_event.location_in_window)
                if (OS._nspoint_in_rect(pt, rect))
                  beep
                end
              end
              return
            end
          end
        end
      when OS::NSLeftMouseUp, OS::NSRightMouseUp, OS::NSOtherMouseUp, OS::NSLeftMouseDragged, OS::NSRightMouseDragged, OS::NSOtherMouseDragged, OS::NSMouseMoved, OS::NSMouseEntered, OS::NSMouseExited, OS::NSKeyDown, OS::NSKeyUp, OS::NSScrollWheel
        if (!(window).nil?)
          shell = get_widget(window.attr_id)
          if (!(shell).nil?)
            modal_shell = shell.get_modal_shell
            if (!(modal_shell).nil?)
              if (down)
                if (!@application.is_active)
                  @application.activate_ignoring_other_apps(true)
                end
                rect = window.content_rect_for_frame_rect(window.frame)
                pt = window.convert_base_to_screen(ns_event.location_in_window)
                if (OS._nspoint_in_rect(pt, rect))
                  beep
                end
              end
              return
            end
          end
        end
      end
      @send_event = true
      # Feature in Cocoa. The help key triggers context-sensitive help but doesn't get forwarded to the window as a key event.
      # If the event is destined for the key window, is the help key, and is an NSKeyDown, send it directly to the window first.
      if (!(window).nil? && window.is_key_window && (ns_event.type).equal?(OS::NSKeyDown) && !((ns_event.modifier_flags & OS::NSHelpKeyMask)).equal?(0))
        window.send_event(ns_event)
      end
      # Feature in Cocoa. NSKeyUp events are not delivered to the window if the command key is down.
      # If the event is destined for the key window, and it's a key up and the command key is down, send it directly to the window.
      if (!(window).nil? && window.is_key_window && (ns_event.type).equal?(OS::NSKeyUp) && !((ns_event.modifier_flags & OS::NSCommandKeyMask)).equal?(0))
        window.send_event(ns_event)
      else
        super_struct = Objc_super.new
        super_struct.attr_receiver = id
        super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
        OS.objc_msg_send_super(super_struct, sel, event)
      end
      @send_event = false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def application_will_finish_launching(id, sel, notification)
      loaded = false
      bundle = NSBundle.bundle_with_identifier(NSString.string_with("com.apple.JavaVM"))
      dict = NSDictionary.dictionary_with_object(self.attr_application_delegate, NSString.string_with("NSOwner"))
      path = bundle.path_for_resource(NSString.string_with("DefaultApp"), NSString.string_with("nib"))
      if (!loaded)
        loaded = !(path).nil? && NSBundle.load_nib_file(path, dict, 0)
      end
      if (!loaded)
        resource_path_ = bundle.resource_path
        path = !(resource_path_).nil? ? resource_path_.string_by_appending_string(NSString.string_with("/English.lproj/DefaultApp.nib")) : nil
        loaded = !(path).nil? && NSBundle.load_nib_file(path, dict, 0)
      end
      if (!loaded)
        path = NSString.string_with(RJava.cast_to_string(System.get_property("java.home")) + "/../Resources/English.lproj/DefaultApp.nib")
        loaded = !(path).nil? && NSBundle.load_nib_file(path, dict, 0)
      end
      if (!loaded)
        create_main_menu
      end
      # replace %@ with application name
      mainmenu = @application.main_menu
      appitem = mainmenu.item_at_index(0)
      if (!(appitem).nil?)
        name = get_app_name
        match = NSString.string_with("%@")
        appitem.set_title(name)
        sm = appitem.submenu
        ia = sm.item_array
        i = 0
        while i < ia.count
          ni = NSMenuItem.new(ia.object_at_index(i))
          title_ = ni.title.string_by_replacing_occurrences_of_string(match, name)
          ni.set_title(title_)
          i += 1
        end
        # long
        quit_index = sm.index_of_item_with_target(self.attr_application_delegate, OS.attr_sel_terminate_)
        if (!(quit_index).equal?(-1))
          quit_item = sm.item_at_index(quit_index)
          quit_item.set_action(OS.attr_sel_quit_requested_)
        end
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def application_proc(id, sel)
        # TODO optimize getting the display
        display = get_current
        if ((display).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_is_running))
          # #245724: [NSApplication isRunning] must return true to allow the AWT to load correctly.
          return display.is_disposed ? 0 : 1
        end
        if ((sel).equal?(OS.attr_sel_finish_launching))
          display.finish_launching(id, sel)
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def application_proc(id, sel, arg0)
        # TODO optimize getting the display
        display = get_current
        if ((display).nil?)
          return 0
        end
        application = display.attr_application
        if ((sel).equal?(OS.attr_sel_send_event_))
          display.application_send_event(id, sel, arg0)
        else
          if ((sel).equal?(OS.attr_sel_application_will_finish_launching_))
            display.application_will_finish_launching(id, sel, arg0)
          else
            if ((sel).equal?(OS.attr_sel_terminate_))
              # Do nothing here -- without a definition of sel_terminate we get a warning dumped to the console.
            else
              if ((sel).equal?(OS.attr_sel_order_front_standard_about_panel_))
                # application.orderFrontStandardAboutPanel(application);
              else
                if ((sel).equal?(OS.attr_sel_hide_other_applications_))
                  application.hide_other_applications(application)
                else
                  if ((sel).equal?(OS.attr_sel_hide_))
                    application.hide(application)
                  else
                    if ((sel).equal?(OS.attr_sel_unhide_all_applications_))
                      application.unhide_all_applications(application)
                    else
                      if ((sel).equal?(OS.attr_sel_quit_requested_))
                        if (!display.attr_disposing)
                          event = Event.new
                          display.send_event(SWT::Close, event)
                          if (event.attr_doit)
                            display.dispose
                          end
                        end
                      else
                        if ((sel).equal?(OS.attr_sel_application_did_become_active_))
                          display.application_did_become_active(id, sel, arg0)
                        else
                          if ((sel).equal?(OS.attr_sel_application_did_resign_active_))
                            display.application_did_resign_active(id, sel, arg0)
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def application_proc(id, sel, arg0, arg1, arg2, arg3)
        # TODO optimize getting the display
        display = get_current
        if ((display).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_next_event_matching_mask_until_date_in_mode_dequeue_))
          return display.application_next_event_matching_mask(id, sel, arg0, arg1, arg2, arg3)
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def dialog_proc(id, sel, arg0)
        # long
        # long
        jni_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS.object_get_instance_variable(id, SWT_OBJECT, jni_ref)
        if ((jni_ref[0]).equal?(0))
          return 0
        end
        if ((sel).equal?(OS.attr_sel_change_color_))
          dialog = OS._jniget_object(jni_ref[0])
          if ((dialog).nil?)
            return 0
          end
          dialog.change_color(id, sel, arg0)
        else
          if ((sel).equal?(OS.attr_sel_change_font_))
            dialog = OS._jniget_object(jni_ref[0])
            if ((dialog).nil?)
              return 0
            end
            dialog.change_font(id, sel, arg0)
          else
            if ((sel).equal?(OS.attr_sel_send_selection_))
              dialog = OS._jniget_object(jni_ref[0])
              if ((dialog).nil?)
                return 0
              end
              dialog.send_selection(id, sel, arg0)
            else
              if ((sel).equal?(OS.attr_sel_window_will_close_))
                object = OS._jniget_object(jni_ref[0])
                if (object.is_a?(FontDialog))
                  (object).window_will_close(id, sel, arg0)
                else
                  if (object.is_a?(ColorDialog))
                    (object).window_will_close(id, sel, arg0)
                  end
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def dialog_proc(id, sel, arg0, arg1)
        # long
        # long
        jni_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS.object_get_instance_variable(id, SWT_OBJECT, jni_ref)
        if ((jni_ref[0]).equal?(0))
          return 0
        end
        if ((sel).equal?(OS.attr_sel_panel_should_show_filename_))
          dialog = OS._jniget_object(jni_ref[0])
          if ((dialog).nil?)
            return 0
          end
          return dialog.panel_should_show_filename(id, sel, arg0, arg1)
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      def dialog_proc(id, sel, arg0, arg1, arg2)
        # long
        # long
        jni_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS.object_get_instance_variable(id, SWT_OBJECT, jni_ref)
        if ((jni_ref[0]).equal?(0))
          return 0
        end
        if ((sel).equal?(OS.attr_sel_panel_did_end_return_code_context_info_))
          dialog = OS._jniget_object(jni_ref[0])
          if ((dialog).nil?)
            return 0
          end
          dialog.panel_did_end_return_code_context_info(id, sel, arg0, arg1, arg2)
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def field_editor_proc(id, sel, arg0)
        widget = nil
        view = NSView.new(id)
        begin
          widget = _get_widget(view.attr_id)
          if (!(widget).nil?)
            break
          end
          view = view.superview
        end while (!(view).nil?)
        if ((widget).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_key_down_))
          widget.key_down(id, sel, arg0)
        else
          if ((sel).equal?(OS.attr_sel_key_up_))
            widget.key_up(id, sel, arg0)
          else
            if ((sel).equal?(OS.attr_sel_flags_changed_))
              widget.flags_changed(id, sel, arg0)
            else
              if ((sel).equal?(OS.attr_sel_insert_text_))
                return widget.insert_text(id, sel, arg0) ? 1 : 0
              else
                if ((sel).equal?(OS.attr_sel_do_command_by_selector_))
                  widget.do_command_by_selector(id, sel, arg0)
                else
                  if ((sel).equal?(OS.attr_sel_menu_for_event_))
                    return widget.menu_for_event(id, sel, arg0)
                  else
                    if ((sel).equal?(OS.attr_sel_mouse_down_))
                      widget.mouse_down(id, sel, arg0)
                    else
                      if ((sel).equal?(OS.attr_sel_mouse_up_))
                        widget.mouse_up(id, sel, arg0)
                      else
                        if ((sel).equal?(OS.attr_sel_mouse_moved_))
                          widget.mouse_moved(id, sel, arg0)
                        else
                          if ((sel).equal?(OS.attr_sel_mouse_dragged_))
                            widget.mouse_dragged(id, sel, arg0)
                          else
                            if ((sel).equal?(OS.attr_sel_mouse_entered_))
                              widget.mouse_entered(id, sel, arg0)
                            else
                              if ((sel).equal?(OS.attr_sel_mouse_exited_))
                                widget.mouse_exited(id, sel, arg0)
                              else
                                if ((sel).equal?(OS.attr_sel_cursor_update_))
                                  widget.cursor_update(id, sel, arg0)
                                else
                                  if ((sel).equal?(OS.attr_sel_right_mouse_down_))
                                    widget.right_mouse_down(id, sel, arg0)
                                  else
                                    if ((sel).equal?(OS.attr_sel_right_mouse_dragged_))
                                      widget.right_mouse_dragged(id, sel, arg0)
                                    else
                                      if ((sel).equal?(OS.attr_sel_right_mouse_up_))
                                        widget.right_mouse_up(id, sel, arg0)
                                      else
                                        if ((sel).equal?(OS.attr_sel_other_mouse_down_))
                                          widget.other_mouse_down(id, sel, arg0)
                                        else
                                          if ((sel).equal?(OS.attr_sel_other_mouse_up_))
                                            widget.other_mouse_up(id, sel, arg0)
                                          else
                                            if ((sel).equal?(OS.attr_sel_other_mouse_dragged_))
                                              widget.other_mouse_dragged(id, sel, arg0)
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def field_editor_proc(id, sel, arg0, arg1)
        widget = nil
        view = NSView.new(id)
        begin
          widget = _get_widget(view.attr_id)
          if (!(widget).nil?)
            break
          end
          view = view.superview
        end while (!(view).nil?)
        if ((sel).equal?(OS.attr_sel_should_change_text_in_range_replacement_string_))
          return widget.should_change_text_in_range_replacement_string(id, sel, arg0, arg1) ? 1 : 0
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def window_proc(id, sel)
        # Feature in Cocoa.  In Cocoa, the default button animation is done
        # in a separate thread that calls drawRect() and isOpaque() from
        # outside the UI thread.  This means that those methods, and application
        # code that runs as a result of those methods, must be thread safe.
        # In SWT, paint events must happen in the UI thread.  The fix is
        # to detect a non-UI thread and avoid the drawing. Instead, the
        # default button is animated by a timer.
        if (!NSThread.is_main_thread)
          if ((sel).equal?(OS.attr_sel_is_opaque))
            return 1
          end
        end
        widget = _get_widget(id)
        if ((widget).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_send_selection))
          widget.send_selection
        else
          if ((sel).equal?(OS.attr_sel_send_double_selection))
            widget.send_double_selection
          else
            if ((sel).equal?(OS.attr_sel_send_vertical_selection))
              widget.send_vertical_selection
            else
              if ((sel).equal?(OS.attr_sel_send_horizontal_selection))
                widget.send_horizontal_selection
              else
                if ((sel).equal?(OS.attr_sel_send_search_selection))
                  widget.send_search_selection
                else
                  if ((sel).equal?(OS.attr_sel_send_cancel_selection))
                    widget.send_cancel_selection
                  else
                    if ((sel).equal?(OS.attr_sel_accepts_first_responder))
                      return widget.accepts_first_responder(id, sel) ? 1 : 0
                    else
                      if ((sel).equal?(OS.attr_sel_become_first_responder))
                        return widget.become_first_responder(id, sel) ? 1 : 0
                      else
                        if ((sel).equal?(OS.attr_sel_resign_first_responder))
                          return widget.resign_first_responder(id, sel) ? 1 : 0
                        else
                          if ((sel).equal?(OS.attr_sel_is_opaque))
                            return widget.is_opaque(id, sel) ? 1 : 0
                          else
                            if ((sel).equal?(OS.attr_sel_is_flipped))
                              return widget.is_flipped(id, sel) ? 1 : 0
                            else
                              if ((sel).equal?(OS.attr_sel_can_become_key_view))
                                return widget.can_become_key_view(id, sel) ? 1 : 0
                              else
                                if ((sel).equal?(OS.attr_sel_become_key_window))
                                  widget.become_key_window(id, sel)
                                else
                                  if ((sel).equal?(OS.attr_sel_unmark_text))
                                    # TODO not called?
                                  else
                                    if ((sel).equal?(OS.attr_sel_valid_attributes_for_marked_text))
                                      return widget.valid_attributes_for_marked_text(id, sel)
                                    else
                                      if ((sel).equal?(OS.attr_sel_marked_range))
                                        range = widget.marked_range(id, sel)
                                        # NOTE that this is freed in C
                                        # long
                                        result = OS.malloc(NSRange.attr_sizeof)
                                        OS.memmove___org_eclipse_swt_widgets_display_23(result, range, NSRange.attr_sizeof)
                                        return result
                                      else
                                        if ((sel).equal?(OS.attr_sel_selected_range))
                                          range = widget.selected_range(id, sel)
                                          # NOTE that this is freed in C
                                          # long
                                          result = OS.malloc(NSRange.attr_sizeof)
                                          OS.memmove___org_eclipse_swt_widgets_display_25(result, range, NSRange.attr_sizeof)
                                          return result
                                        else
                                          if ((sel).equal?(OS.attr_sel_cell_size))
                                            size_ = widget.cell_size(id, sel)
                                            # NOTE that this is freed in C
                                            # long
                                            result = OS.malloc(NSSize.attr_sizeof)
                                            OS.memmove___org_eclipse_swt_widgets_display_27(result, size_, NSSize.attr_sizeof)
                                            return result
                                          else
                                            if ((sel).equal?(OS.attr_sel_has_marked_text))
                                              return widget.has_marked_text(id, sel) ? 1 : 0
                                            else
                                              if ((sel).equal?(OS.attr_sel_can_become_key_window))
                                                return widget.can_become_key_window(id, sel) ? 1 : 0
                                              else
                                                if ((sel).equal?(OS.attr_sel_accessibility_action_names))
                                                  return widget.accessibility_action_names(id, sel)
                                                else
                                                  if ((sel).equal?(OS.attr_sel_accessibility_attribute_names))
                                                    return widget.accessibility_attribute_names(id, sel)
                                                  else
                                                    if ((sel).equal?(OS.attr_sel_accessibility_parameterized_attribute_names))
                                                      return widget.accessibility_parameterized_attribute_names(id, sel)
                                                    else
                                                      if ((sel).equal?(OS.attr_sel_accessibility_focused_uielement))
                                                        return widget.accessibility_focused_uielement(id, sel)
                                                      else
                                                        if ((sel).equal?(OS.attr_sel_accessibility_is_ignored))
                                                          return (widget.accessibility_is_ignored(id, sel) ? 1 : 0)
                                                        else
                                                          if ((sel).equal?(OS.attr_sel_next_state))
                                                            return widget.next_state(id, sel)
                                                          else
                                                            if ((sel).equal?(OS.attr_sel_reset_cursor_rects))
                                                              widget.reset_cursor_rects(id, sel)
                                                            else
                                                              if ((sel).equal?(OS.attr_sel_update_tracking_areas))
                                                                widget.update_tracking_areas(id, sel)
                                                              else
                                                                if ((sel).equal?(OS.attr_sel_view_did_move_to_window))
                                                                  widget.view_did_move_to_window(id, sel)
                                                                else
                                                                  if ((sel).equal?(OS.attr_sel_image))
                                                                    return widget.image(id, sel)
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def window_proc(id, sel, arg0)
        # Feature in Cocoa.  In Cocoa, the default button animation is done
        # in a separate thread that calls drawRect() and isOpaque() from
        # outside the UI thread.  This means that those methods, and application
        # code that runs as a result of those methods, must be thread safe.
        # In SWT, paint events must happen in the UI thread.  The fix is
        # to detect a non-UI thread and avoid the drawing. Instead, the
        # default button is animated by a timer.
        if (!NSThread.is_main_thread)
          if ((sel).equal?(OS.attr_sel_draw_rect_))
            return 0
          end
        end
        if ((sel).equal?(OS.attr_sel_timer_proc_))
          # TODO optimize getting the display
          display = get_current
          if ((display).nil?)
            return 0
          end
          return display.timer_proc(id, sel, arg0)
        end
        if ((sel).equal?(OS.attr_sel_system_settings_changed_))
          # TODO optimize getting the display
          display = get_current
          if ((display).nil?)
            return 0
          end
          display.attr_run_settings = true
          return 0
        end
        widget = _get_widget(id)
        if ((widget).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_window_will_close_))
          widget.window_will_close(id, sel, arg0)
        else
          if ((sel).equal?(OS.attr_sel_draw_rect_))
            rect = NSRect.new
            OS.memmove___org_eclipse_swt_widgets_display_29(rect, arg0, NSRect.attr_sizeof)
            widget.draw_rect(id, sel, rect)
          else
            if ((sel).equal?(OS.attr_sel__draw_theme_progress_area_))
              widget.__draw_theme_progress_area(id, sel, arg0)
            else
              if ((sel).equal?(OS.attr_sel_set_frame_origin_))
                point = NSPoint.new
                OS.memmove___org_eclipse_swt_widgets_display_31(point, arg0, NSPoint.attr_sizeof)
                widget.set_frame_origin(id, sel, point)
              else
                if ((sel).equal?(OS.attr_sel_set_frame_size_))
                  size_ = NSSize.new
                  OS.memmove___org_eclipse_swt_widgets_display_33(size_, arg0, NSSize.attr_sizeof)
                  widget.set_frame_size(id, sel, size_)
                else
                  if ((sel).equal?(OS.attr_sel_hit_test_))
                    point = NSPoint.new
                    OS.memmove___org_eclipse_swt_widgets_display_35(point, arg0, NSPoint.attr_sizeof)
                    return widget.hit_test(id, sel, point)
                  else
                    if ((sel).equal?(OS.attr_sel_window_should_close_))
                      return widget.window_should_close(id, sel, arg0) ? 1 : 0
                    else
                      if ((sel).equal?(OS.attr_sel_mouse_down_))
                        widget.mouse_down(id, sel, arg0)
                      else
                        if ((sel).equal?(OS.attr_sel_key_down_))
                          widget.key_down(id, sel, arg0)
                        else
                          if ((sel).equal?(OS.attr_sel_key_up_))
                            widget.key_up(id, sel, arg0)
                          else
                            if ((sel).equal?(OS.attr_sel_flags_changed_))
                              widget.flags_changed(id, sel, arg0)
                            else
                              if ((sel).equal?(OS.attr_sel_mouse_up_))
                                widget.mouse_up(id, sel, arg0)
                              else
                                if ((sel).equal?(OS.attr_sel_right_mouse_down_))
                                  widget.right_mouse_down(id, sel, arg0)
                                else
                                  if ((sel).equal?(OS.attr_sel_right_mouse_dragged_))
                                    widget.right_mouse_dragged(id, sel, arg0)
                                  else
                                    if ((sel).equal?(OS.attr_sel_right_mouse_up_))
                                      widget.right_mouse_up(id, sel, arg0)
                                    else
                                      if ((sel).equal?(OS.attr_sel_other_mouse_down_))
                                        widget.other_mouse_down(id, sel, arg0)
                                      else
                                        if ((sel).equal?(OS.attr_sel_other_mouse_up_))
                                          widget.other_mouse_up(id, sel, arg0)
                                        else
                                          if ((sel).equal?(OS.attr_sel_other_mouse_dragged_))
                                            widget.other_mouse_dragged(id, sel, arg0)
                                          else
                                            if ((sel).equal?(OS.attr_sel_mouse_moved_))
                                              widget.mouse_moved(id, sel, arg0)
                                            else
                                              if ((sel).equal?(OS.attr_sel_mouse_dragged_))
                                                widget.mouse_dragged(id, sel, arg0)
                                              else
                                                if ((sel).equal?(OS.attr_sel_mouse_entered_))
                                                  widget.mouse_entered(id, sel, arg0)
                                                else
                                                  if ((sel).equal?(OS.attr_sel_mouse_exited_))
                                                    widget.mouse_exited(id, sel, arg0)
                                                  else
                                                    if ((sel).equal?(OS.attr_sel_cursor_update_))
                                                      widget.cursor_update(id, sel, arg0)
                                                    else
                                                      if ((sel).equal?(OS.attr_sel_menu_for_event_))
                                                        return widget.menu_for_event(id, sel, arg0)
                                                      else
                                                        if ((sel).equal?(OS.attr_sel_no_responder_for_))
                                                          widget.no_responder_for(id, sel, arg0)
                                                        else
                                                          if ((sel).equal?(OS.attr_sel_should_delay_window_ordering_for_event_))
                                                            return widget.should_delay_window_ordering_for_event(id, sel, arg0) ? 1 : 0
                                                          else
                                                            if ((sel).equal?(OS.attr_sel_accepts_first_mouse_))
                                                              return widget.accepts_first_mouse(id, sel, arg0) ? 1 : 0
                                                            else
                                                              if ((sel).equal?(OS.attr_sel_number_of_rows_in_table_view_))
                                                                return widget.number_of_rows_in_table_view(id, sel, arg0)
                                                              else
                                                                if ((sel).equal?(OS.attr_sel_table_view_selection_did_change_))
                                                                  widget.table_view_selection_did_change(id, sel, arg0)
                                                                else
                                                                  if ((sel).equal?(OS.attr_sel_window_did_resign_key_))
                                                                    widget.window_did_resign_key(id, sel, arg0)
                                                                  else
                                                                    if ((sel).equal?(OS.attr_sel_window_did_become_key_))
                                                                      widget.window_did_become_key(id, sel, arg0)
                                                                    else
                                                                      if ((sel).equal?(OS.attr_sel_window_did_resize_))
                                                                        widget.window_did_resize(id, sel, arg0)
                                                                      else
                                                                        if ((sel).equal?(OS.attr_sel_window_did_move_))
                                                                          widget.window_did_move(id, sel, arg0)
                                                                        else
                                                                          if ((sel).equal?(OS.attr_sel_menu_will_open_))
                                                                            widget.menu_will_open(id, sel, arg0)
                                                                          else
                                                                            if ((sel).equal?(OS.attr_sel_menu_did_close_))
                                                                              widget.menu_did_close(id, sel, arg0)
                                                                            else
                                                                              if ((sel).equal?(OS.attr_sel_menu_needs_update_))
                                                                                widget.menu_needs_update(id, sel, arg0)
                                                                              else
                                                                                if ((sel).equal?(OS.attr_sel_outline_view_selection_did_change_))
                                                                                  widget.outline_view_selection_did_change(id, sel, arg0)
                                                                                else
                                                                                  if ((sel).equal?(OS.attr_sel_send_event_))
                                                                                    widget.window_send_event(id, sel, arg0)
                                                                                  else
                                                                                    if ((sel).equal?(OS.attr_sel_help_requested_))
                                                                                      widget.help_requested(id, sel, arg0)
                                                                                    else
                                                                                      if ((sel).equal?(OS.attr_sel_scroll_wheel_))
                                                                                        widget.scroll_wheel(id, sel, arg0)
                                                                                      else
                                                                                        if ((sel).equal?(OS.attr_sel_page_down_))
                                                                                          widget.page_down(id, sel, arg0)
                                                                                        else
                                                                                          if ((sel).equal?(OS.attr_sel_page_up_))
                                                                                            widget.page_up(id, sel, arg0)
                                                                                          else
                                                                                            if ((sel).equal?(OS.attr_sel_text_view_did_change_selection_))
                                                                                              widget.text_view_did_change_selection(id, sel, arg0)
                                                                                            else
                                                                                              if ((sel).equal?(OS.attr_sel_text_did_change_))
                                                                                                widget.text_did_change(id, sel, arg0)
                                                                                              else
                                                                                                if ((sel).equal?(OS.attr_sel_text_did_end_editing_))
                                                                                                  widget.text_did_end_editing(id, sel, arg0)
                                                                                                else
                                                                                                  if ((sel).equal?(OS.attr_sel_attributed_substring_from_range_))
                                                                                                    return widget.attributed_substring_from_range(id, sel, arg0)
                                                                                                  else
                                                                                                    if ((sel).equal?(OS.attr_sel_character_index_for_point_))
                                                                                                      return widget.character_index_for_point(id, sel, arg0)
                                                                                                    else
                                                                                                      if ((sel).equal?(OS.attr_sel_first_rect_for_character_range_))
                                                                                                        rect = widget.first_rect_for_character_range(id, sel, arg0)
                                                                                                        # NOTE that this is freed in C
                                                                                                        # long
                                                                                                        result = OS.malloc(NSRect.attr_sizeof)
                                                                                                        OS.memmove___org_eclipse_swt_widgets_display_37(result, rect, NSRect.attr_sizeof)
                                                                                                        return result
                                                                                                      else
                                                                                                        if ((sel).equal?(OS.attr_sel_insert_text_))
                                                                                                          return widget.insert_text(id, sel, arg0) ? 1 : 0
                                                                                                        else
                                                                                                          if ((sel).equal?(OS.attr_sel_do_command_by_selector_))
                                                                                                            widget.do_command_by_selector(id, sel, arg0)
                                                                                                          else
                                                                                                            if ((sel).equal?(OS.attr_sel_highlight_selection_in_clip_rect_))
                                                                                                              widget.highlight_selection_in_clip_rect(id, sel, arg0)
                                                                                                            else
                                                                                                              if ((sel).equal?(OS.attr_sel_reflect_scrolled_clip_view_))
                                                                                                                widget.reflect_scrolled_clip_view(id, sel, arg0)
                                                                                                              else
                                                                                                                if ((sel).equal?(OS.attr_sel_accessibility_hit_test_))
                                                                                                                  point = NSPoint.new
                                                                                                                  OS.memmove___org_eclipse_swt_widgets_display_39(point, arg0, NSPoint.attr_sizeof)
                                                                                                                  return widget.accessibility_hit_test(id, sel, point)
                                                                                                                else
                                                                                                                  if ((sel).equal?(OS.attr_sel_accessibility_attribute_value_))
                                                                                                                    return widget.accessibility_attribute_value(id, sel, arg0)
                                                                                                                  else
                                                                                                                    if ((sel).equal?(OS.attr_sel_accessibility_perform_action_))
                                                                                                                      widget.accessibility_perform_action(id, sel, arg0)
                                                                                                                    else
                                                                                                                      if ((sel).equal?(OS.attr_sel_accessibility_action_description_))
                                                                                                                        widget.accessibility_action_description(id, sel, arg0)
                                                                                                                      else
                                                                                                                        if ((sel).equal?(OS.attr_sel_make_first_responder_))
                                                                                                                          return widget.make_first_responder(id, sel, arg0) ? 1 : 0
                                                                                                                        else
                                                                                                                          if ((sel).equal?(OS.attr_sel_table_view_column_did_move_))
                                                                                                                            widget.table_view_column_did_move(id, sel, arg0)
                                                                                                                          else
                                                                                                                            if ((sel).equal?(OS.attr_sel_table_view_column_did_resize_))
                                                                                                                              widget.table_view_column_did_resize(id, sel, arg0)
                                                                                                                            else
                                                                                                                              if ((sel).equal?(OS.attr_sel_outline_view_column_did_move_))
                                                                                                                                widget.outline_view_column_did_move(id, sel, arg0)
                                                                                                                              else
                                                                                                                                if ((sel).equal?(OS.attr_sel_outline_view_column_did_resize_))
                                                                                                                                  widget.outline_view_column_did_resize(id, sel, arg0)
                                                                                                                                else
                                                                                                                                  if ((sel).equal?(OS.attr_sel_set_needs_display_))
                                                                                                                                    widget.set_needs_display(id, sel, !(arg0).equal?(0))
                                                                                                                                  else
                                                                                                                                    if ((sel).equal?(OS.attr_sel_set_needs_display_in_rect_))
                                                                                                                                      widget.set_needs_display_in_rect(id, sel, arg0)
                                                                                                                                    else
                                                                                                                                      if ((sel).equal?(OS.attr_sel_set_image_))
                                                                                                                                        widget.set_image(id, sel, arg0)
                                                                                                                                      else
                                                                                                                                        if ((sel).equal?(OS.attr_sel_image_rect_for_bounds_))
                                                                                                                                          rect = NSRect.new
                                                                                                                                          OS.memmove___org_eclipse_swt_widgets_display_41(rect, arg0, NSRect.attr_sizeof)
                                                                                                                                          rect = widget.image_rect_for_bounds(id, sel, rect)
                                                                                                                                          # NOTE that this is freed in C
                                                                                                                                          # long
                                                                                                                                          result = OS.malloc(NSRect.attr_sizeof)
                                                                                                                                          OS.memmove___org_eclipse_swt_widgets_display_43(result, rect, NSRect.attr_sizeof)
                                                                                                                                          return result
                                                                                                                                        else
                                                                                                                                          if ((sel).equal?(OS.attr_sel_title_rect_for_bounds_))
                                                                                                                                            rect = NSRect.new
                                                                                                                                            OS.memmove___org_eclipse_swt_widgets_display_45(rect, arg0, NSRect.attr_sizeof)
                                                                                                                                            rect = widget.title_rect_for_bounds(id, sel, rect)
                                                                                                                                            # NOTE that this is freed in C
                                                                                                                                            # long
                                                                                                                                            result = OS.malloc(NSRect.attr_sizeof)
                                                                                                                                            OS.memmove___org_eclipse_swt_widgets_display_47(result, rect, NSRect.attr_sizeof)
                                                                                                                                            return result
                                                                                                                                          else
                                                                                                                                            if ((sel).equal?(OS.attr_sel_set_object_value_))
                                                                                                                                              widget.set_object_value(id, sel, arg0)
                                                                                                                                            else
                                                                                                                                              if ((sel).equal?(OS.attr_sel_update_open_glcontext_))
                                                                                                                                                widget.update_open_glcontext(id, sel, arg0)
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def window_proc(id, sel, arg0, arg1)
        widget = _get_widget(id)
        if ((widget).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_tab_view_will_select_tab_view_item_))
          widget.tab_view_will_select_tab_view_item(id, sel, arg0, arg1)
        else
          if ((sel).equal?(OS.attr_sel_tab_view_did_select_tab_view_item_))
            widget.tab_view_did_select_tab_view_item(id, sel, arg0, arg1)
          else
            if ((sel).equal?(OS.attr_sel_outline_view_is_item_expandable_))
              return widget.outline_view_is_item_expandable(id, sel, arg0, arg1) ? 1 : 0
            else
              if ((sel).equal?(OS.attr_sel_outline_view_number_of_children_of_item_))
                return widget.outline_view_number_of_children_of_item(id, sel, arg0, arg1)
              else
                if ((sel).equal?(OS.attr_sel_menu_will_highlight_item_))
                  widget.menu_will_highlight_item(id, sel, arg0, arg1)
                else
                  if ((sel).equal?(OS.attr_sel_set_marked_text_selected_range_))
                    widget.set_marked_text_selected_range(id, sel, arg0, arg1)
                  else
                    if ((sel).equal?(OS.attr_sel_draw_interior_with_frame_in_view_))
                      rect = NSRect.new
                      OS.memmove___org_eclipse_swt_widgets_display_49(rect, arg0, NSRect.attr_sizeof)
                      widget.draw_interior_with_frame_in_view(id, sel, rect, arg1)
                    else
                      if ((sel).equal?(OS.attr_sel_draw_with_expansion_frame_in_view_))
                        rect = NSRect.new
                        OS.memmove___org_eclipse_swt_widgets_display_51(rect, arg0, NSRect.attr_sizeof)
                        widget.draw_with_expansion_frame_in_view(id, sel, rect, arg1)
                      else
                        if ((sel).equal?(OS.attr_sel_accessibility_attribute_value_for_parameter_))
                          return widget.accessibility_attribute_value_for_parameter(id, sel, arg0, arg1)
                        else
                          if ((sel).equal?(OS.attr_sel_table_view_did_click_table_column_))
                            widget.table_view_did_click_table_column(id, sel, arg0, arg1)
                          else
                            if ((sel).equal?(OS.attr_sel_outline_view_did_click_table_column_))
                              widget.outline_view_did_click_table_column(id, sel, arg0, arg1)
                            else
                              if ((sel).equal?(OS.attr_sel_should_change_text_in_range_replacement_string_))
                                return widget.should_change_text_in_range_replacement_string(id, sel, arg0, arg1) ? 1 : 0
                              else
                                if ((sel).equal?(OS.attr_sel_can_drag_rows_with_indexes_at_point_))
                                  return widget.can_drag_rows_with_indexes_at_point(id, sel, arg0, arg1) ? 1 : 0
                                else
                                  if ((sel).equal?(OS.attr_sel_expand_item_expand_children_))
                                    widget.expand_item_expand_children(id, sel, arg0, !(arg1).equal?(0))
                                  else
                                    if ((sel).equal?(OS.attr_sel_collapse_item_collapse_children_))
                                      widget.collapse_item_collapse_children(id, sel, arg0, !(arg1).equal?(0))
                                    else
                                      if ((sel).equal?(OS.attr_sel_expansion_frame_with_frame_in_view_))
                                        rect = NSRect.new
                                        OS.memmove___org_eclipse_swt_widgets_display_53(rect, arg0, NSRect.attr_sizeof)
                                        rect = widget.expansion_frame_with_frame_in_view(id, sel, rect, arg1)
                                        # NOTE that this is freed in C
                                        # long
                                        result = OS.malloc(NSRect.attr_sizeof)
                                        OS.memmove___org_eclipse_swt_widgets_display_55(result, rect, NSRect.attr_sizeof)
                                        return result
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      def window_proc(id, sel, arg0, arg1, arg2)
        widget = _get_widget(id)
        if ((widget).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_table_view_object_value_for_table_column_row_))
          return widget.table_view_object_value_for_table_column_row(id, sel, arg0, arg1, arg2)
        else
          if ((sel).equal?(OS.attr_sel_table_view_should_edit_table_column_row_))
            return widget.table_view_should_edit_table_column_row(id, sel, arg0, arg1, arg2) ? 1 : 0
          else
            if ((sel).equal?(OS.attr_sel_text_view_clicked_on_link_at_index_))
              return widget.text_view_click_on_link_at_index(id, sel, arg0, arg1, arg2) ? 1 : 0
            else
              if ((sel).equal?(OS.attr_sel_outline_view_child_of_item_))
                return widget.outline_view_child_of_item(id, sel, arg0, arg1, arg2)
              else
                if ((sel).equal?(OS.attr_sel_outline_view_object_value_for_table_column_by_item_))
                  return widget.outline_view_object_value_for_table_column_by_item(id, sel, arg0, arg1, arg2)
                else
                  if ((sel).equal?(OS.attr_sel_text_view_will_change_selection_from_character_range_to_character_range_))
                    range = widget.text_view_will_change_selection_from_character_range_to_character_range(id, sel, arg0, arg1, arg2)
                    # NOTE that this is freed in C
                    # long
                    result = OS.malloc(NSRange.attr_sizeof)
                    OS.memmove___org_eclipse_swt_widgets_display_57(result, range, NSRange.attr_sizeof)
                    return result
                  else
                    if ((sel).equal?(OS.attr_sel_drag_selection_with_event_offset_slide_back_))
                      offset = NSSize.new
                      OS.memmove___org_eclipse_swt_widgets_display_59(offset, arg0, NSSize.attr_sizeof)
                      return (widget.drag_selection_with_event(id, sel, arg0, arg1, arg2) ? 1 : 0)
                    else
                      if ((sel).equal?(OS.attr_sel_draw_image_with_frame_in_view_))
                        rect = NSRect.new
                        OS.memmove___org_eclipse_swt_widgets_display_61(rect, arg1, NSRect.attr_sizeof)
                        widget.draw_image_with_frame_in_view(id, sel, arg0, rect, arg2)
                      else
                        if ((sel).equal?(OS.attr_sel_hit_test_for_event_in_rect_of_view_))
                          rect = NSRect.new
                          OS.memmove___org_eclipse_swt_widgets_display_63(rect, arg1, NSRect.attr_sizeof)
                          return widget.hit_test_for_event(id, sel, arg0, rect, arg2)
                        else
                          if ((sel).equal?(OS.attr_sel_table_view_write_rows_with_indexes_to_pasteboard_))
                            return (widget.table_view_write_rows_with_indexes_to_pasteboard(id, sel, arg0, arg1, arg2) ? 1 : 0)
                          else
                            if ((sel).equal?(OS.attr_sel_outline_view_write_items_to_pasteboard_))
                              return (widget.outline_view_write_items_to_pasteboard(id, sel, arg0, arg1, arg2) ? 1 : 0)
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def window_proc(id, sel, arg0, arg1, arg2, arg3)
        widget = _get_widget(id)
        if ((widget).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_table_view_will_display_cell_for_table_column_row_))
          widget.table_view_will_display_cell_for_table_column_row(id, sel, arg0, arg1, arg2, arg3)
        else
          if ((sel).equal?(OS.attr_sel_outline_view_will_display_cell_for_table_column_item_))
            widget.outline_view_will_display_cell_for_table_column_item(id, sel, arg0, arg1, arg2, arg3)
          else
            if ((sel).equal?(OS.attr_sel_outline_view_set_object_value_for_table_column_by_item_))
              widget.outline_view_set_object_value_for_table_column_by_item(id, sel, arg0, arg1, arg2, arg3)
            else
              if ((sel).equal?(OS.attr_sel_table_view_set_object_value_for_table_column_row_))
                widget.table_view_set_object_value_for_table_column_row(id, sel, arg0, arg1, arg2, arg3)
              else
                if ((sel).equal?(OS.attr_sel_view_string_for_tool_tip_point_user_data_))
                  return widget.view_string_for_tool_tip_point_user_data(id, sel, arg0, arg1, arg2, arg3)
                end
              end
            end
          end
        end
        return 0
      end
    }
    
    private
    alias_method :initialize__display, :initialize
  end
  
end
