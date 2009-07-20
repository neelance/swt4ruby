require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Accessibility
  module AccessibleImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Accessibility
      include ::Java::Util
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Instances of this class provide a bridge between application
  # code and assistive technology clients. Many platforms provide
  # default accessible behavior for most widgets, and this class
  # allows that default behavior to be overridden. Applications
  # can get the default Accessible object for a control by sending
  # it <code>getAccessible</code>, and then add an accessible listener
  # to override simple items like the name and help string, or they
  # can add an accessible control listener to override complex items.
  # As a rule of thumb, an application would only want to use the
  # accessible control listener to implement accessibility for a
  # custom control.
  # 
  # @see Control#getAccessible
  # @see AccessibleListener
  # @see AccessibleEvent
  # @see AccessibleControlListener
  # @see AccessibleControlEvent
  # @see <a href="http://www.eclipse.org/swt/snippets/#accessibility">Accessibility snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 2.0
  class Accessible 
    include_class_members AccessibleImports
    
    attr_accessor :accessible_listeners
    alias_method :attr_accessible_listeners, :accessible_listeners
    undef_method :accessible_listeners
    alias_method :attr_accessible_listeners=, :accessible_listeners=
    undef_method :accessible_listeners=
    
    attr_accessor :control_listeners
    alias_method :attr_control_listeners, :control_listeners
    undef_method :control_listeners
    alias_method :attr_control_listeners=, :control_listeners=
    undef_method :control_listeners=
    
    attr_accessor :text_listeners
    alias_method :attr_text_listeners, :text_listeners
    undef_method :text_listeners
    alias_method :attr_text_listeners=, :text_listeners=
    undef_method :text_listeners=
    
    attr_accessor :accessible_object
    alias_method :attr_accessible_object, :accessible_object
    undef_method :accessible_object
    alias_method :attr_accessible_object=, :accessible_object=
    undef_method :accessible_object=
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    typesig { [Control] }
    def initialize(control)
      @accessible_listeners = Vector.new
      @control_listeners = Vector.new
      @text_listeners = Vector.new
      @accessible_object = nil
      @control = nil
      @control = control
      AccessibleFactory.register_accessible(self)
      control.add_dispose_listener(Class.new(DisposeListener.class == Class ? DisposeListener : Object) do
        extend LocalClass
        include_class_members Accessible
        include DisposeListener if DisposeListener.class == Module
        
        typesig { [DisposeEvent] }
        define_method :widget_disposed do |e|
          release
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
    end
    
    typesig { [AccessibleListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an accessible client asks for certain strings,
    # such as name, description, help, or keyboard shortcut. The
    # listener is notified by sending it one of the messages defined
    # in the <code>AccessibleListener</code> interface.
    # 
    # @param listener the listener that should be notified when the receiver
    # is asked for a name, description, help, or keyboard shortcut string
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleListener
    # @see #removeAccessibleListener
    def add_accessible_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @accessible_listeners.add_element(listener)
    end
    
    typesig { [AccessibleControlListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an accessible client asks for custom control
    # specific information. The listener is notified by sending it
    # one of the messages defined in the <code>AccessibleControlListener</code>
    # interface.
    # 
    # @param listener the listener that should be notified when the receiver
    # is asked for custom control specific information
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleControlListener
    # @see #removeAccessibleControlListener
    def add_accessible_control_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @control_listeners.add_element(listener)
    end
    
    typesig { [AccessibleTextListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an accessible client asks for custom text control
    # specific information. The listener is notified by sending it
    # one of the messages defined in the <code>AccessibleTextListener</code>
    # interface.
    # 
    # @param listener the listener that should be notified when the receiver
    # is asked for custom text control specific information
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleTextListener
    # @see #removeAccessibleTextListener
    # 
    # @since 3.0
    def add_accessible_text_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @text_listeners.add_element(listener)
    end
    
    typesig { [] }
    # Returns the control for this Accessible object.
    # 
    # @return the receiver's control
    # @since 3.0
    def get_control
      return @control
    end
    
    typesig { [] }
    # checkWidget was copied from Widget, and rewritten to work in this package
    def check_widget
      if (!is_valid_thread)
        SWT.error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      if (@control.is_disposed)
        SWT.error(SWT::ERROR_WIDGET_DISPOSED)
      end
    end
    
    typesig { [] }
    def get_accessible_listeners
      if ((@accessible_listeners).nil?)
        return nil
      end
      result = Array.typed(AccessibleListener).new(@accessible_listeners.size) { nil }
      @accessible_listeners.copy_into(result)
      return result
    end
    
    typesig { [] }
    # long
    def get_control_handle
      return @control.attr_handle
    end
    
    typesig { [] }
    def get_control_listeners
      if ((@control_listeners).nil?)
        return nil
      end
      result = Array.typed(AccessibleControlListener).new(@control_listeners.size) { nil }
      @control_listeners.copy_into(result)
      return result
    end
    
    typesig { [] }
    def get_text_listeners
      if ((@text_listeners).nil?)
        return nil
      end
      result = Array.typed(AccessibleTextListener).new(@text_listeners.size) { nil }
      @text_listeners.copy_into(result)
      return result
    end
    
    class_module.module_eval {
      typesig { [Control] }
      # Invokes platform specific functionality to allocate a new accessible object.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>Accessible</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param control the control to get the accessible object for
      # @return the platform specific accessible object
      def internal_new__accessible(control)
        return Accessible.new(control)
      end
    }
    
    typesig { [] }
    # isValidThread was copied from Widget, and rewritten to work in this package
    def is_valid_thread
      return (@control.get_display.get_thread).equal?(JavaThread.current_thread)
    end
    
    typesig { [] }
    def release
      AccessibleFactory.unregister_accessible(self)
      if (!(@accessible_object).nil?)
        @accessible_object.release
        @accessible_object = nil
      end
      @accessible_listeners = nil
      @control_listeners = nil
      @text_listeners = nil
    end
    
    typesig { [AccessibleControlListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an accessible client asks for custom control
    # specific information.
    # 
    # @param listener the listener that should no longer be notified when the receiver
    # is asked for custom control specific information
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleControlListener
    # @see #addAccessibleControlListener
    def remove_accessible_control_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @control_listeners.remove_element(listener)
    end
    
    typesig { [AccessibleListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an accessible client asks for certain strings,
    # such as name, description, help, or keyboard shortcut.
    # 
    # @param listener the listener that should no longer be notified when the receiver
    # is asked for a name, description, help, or keyboard shortcut string
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleListener
    # @see #addAccessibleListener
    def remove_accessible_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @accessible_listeners.remove_element(listener)
    end
    
    typesig { [AccessibleTextListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an accessible client asks for custom text control
    # specific information.
    # 
    # @param listener the listener that should no longer be notified when the receiver
    # is asked for custom text control specific information
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleTextListener
    # @see #addAccessibleTextListener
    # 
    # @since 3.0
    def remove_accessible_text_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @text_listeners.remove_element(listener)
    end
    
    typesig { [] }
    # Sends a message to accessible clients that the child selection
    # within a custom container control has changed.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @since 3.0
    def selection_changed
      check_widget
      if (!(@accessible_object).nil?)
        @accessible_object.selection_changed
      end
    end
    
    typesig { [::Java::Int] }
    # Sends a message to accessible clients indicating that the focus
    # has changed within a custom control.
    # 
    # @param childID an identifier specifying a child of the control
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    def set_focus(child_id)
      check_widget
      if (!(@accessible_object).nil?)
        @accessible_object.set_focus(child_id)
      end
    end
    
    typesig { [::Java::Int] }
    # Sends a message to accessible clients that the text
    # caret has moved within a custom control.
    # 
    # @param index the new caret index within the control
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @since 3.0
    def text_caret_moved(index)
      check_widget
      if (!(@accessible_object).nil?)
        @accessible_object.text_caret_moved(index)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Sends a message to accessible clients that the text
    # within a custom control has changed.
    # 
    # @param type the type of change, one of <code>ACC.NOTIFY_TEXT_INSERT</code>
    # or <code>ACC.NOTIFY_TEXT_DELETE</code>
    # @param startIndex the text index within the control where the insertion or deletion begins
    # @param length the non-negative length in characters of the insertion or deletion
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see ACC#TEXT_INSERT
    # @see ACC#TEXT_DELETE
    # 
    # @since 3.0
    def text_changed(type, start_index, length)
      check_widget
      if (!(@accessible_object).nil?)
        @accessible_object.text_changed(type, start_index, length)
      end
    end
    
    typesig { [] }
    # Sends a message to accessible clients that the text
    # selection has changed within a custom control.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @since 3.0
    def text_selection_changed
      check_widget
      if (!(@accessible_object).nil?)
        @accessible_object.text_selection_changed
      end
    end
    
    private
    alias_method :initialize__accessible, :initialize
  end
  
end
