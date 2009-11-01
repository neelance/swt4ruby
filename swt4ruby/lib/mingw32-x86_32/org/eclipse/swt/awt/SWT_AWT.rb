require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Awt
  module SWT_AWTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Awt
      include_const ::Java::Lang::Reflect, :Constructor
      include_const ::Java::Lang::Reflect, :Field
      include_const ::Java::Lang::Reflect, :Method
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include_const ::Org::Eclipse::Swt::Graphics, :Rectangle
      include_const ::Org::Eclipse::Swt::Widgets, :Shell
      include_const ::Org::Eclipse::Swt::Widgets, :Composite
      include_const ::Org::Eclipse::Swt::Widgets, :Display
      include_const ::Org::Eclipse::Swt::Widgets, :Listener
      include_const ::Org::Eclipse::Swt::Widgets, :Event
      include_const ::Java::Awt, :Dimension
      include_const ::Java::Awt, :EventQueue
      include_const ::Java::Awt, :Canvas
      include_const ::Java::Awt, :Frame
      include_const ::Java::Awt, :Toolkit
      include_const ::Java::Awt::Event, :ComponentAdapter
      include_const ::Java::Awt::Event, :ComponentEvent
      include_const ::Java::Awt::Event, :ComponentListener
      include_const ::Java::Awt::Event, :WindowEvent
      include_const ::Java::Awt::Event, :FocusEvent
    }
  end
  
  # SWT Imports
  # AWT Imports
  # 
  # This class provides a bridge between SWT and AWT, so that it
  # is possible to embed AWT components in SWT and vice versa.
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#awt">Swing/AWT snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class SWT_AWT 
    include_class_members SWT_AWTImports
    
    class_module.module_eval {
      # The name of the embedded Frame class. The default class name
      # for the platform will be used if <code>null</code>.
      
      def embedded_frame_class
        defined?(@@embedded_frame_class) ? @@embedded_frame_class : @@embedded_frame_class= nil
      end
      alias_method :attr_embedded_frame_class, :embedded_frame_class
      
      def embedded_frame_class=(value)
        @@embedded_frame_class = value
      end
      alias_method :attr_embedded_frame_class=, :embedded_frame_class=
      
      # Key for looking up the embedded frame for a Composite using
      # getData().
      
      def embedded_frame_key
        defined?(@@embedded_frame_key) ? @@embedded_frame_key : @@embedded_frame_key= "org.eclipse.swt.awt.SWT_AWT.embeddedFrame"
      end
      alias_method :attr_embedded_frame_key, :embedded_frame_key
      
      def embedded_frame_key=(value)
        @@embedded_frame_key = value
      end
      alias_method :attr_embedded_frame_key=, :embedded_frame_key=
      
      
      def loaded
        defined?(@@loaded) ? @@loaded : @@loaded= false
      end
      alias_method :attr_loaded, :loaded
      
      def loaded=(value)
        @@loaded = value
      end
      alias_method :attr_loaded=, :loaded=
      
      
      def swing_initialized
        defined?(@@swing_initialized) ? @@swing_initialized : @@swing_initialized= false
      end
      alias_method :attr_swing_initialized, :swing_initialized
      
      def swing_initialized=(value)
        @@swing_initialized = value
      end
      alias_method :attr_swing_initialized=, :swing_initialized=
      
      JNI.load_native_method :Java_org_eclipse_swt_awt_SWT_AWT_getAWTHandle, [:pointer, :long, :long], :int32
      typesig { [Canvas] }
      # long
      def get_awthandle(canvas)
        JNI.call_native_method(:Java_org_eclipse_swt_awt_SWT_AWT_getAWTHandle, JNI.env, self.jni_id, canvas.jni_id)
      end
      
      typesig { [] }
      def load_library
        synchronized(self) do
          if (self.attr_loaded)
            return
          end
          self.attr_loaded = true
          Toolkit.get_default_toolkit
          # Note that the jawt library is loaded explicitly
          # because it cannot be found by the library loader.
          # All exceptions are caught because the library may
          # have been loaded already.
          begin
            System.load_library("jawt")
          rescue JavaThrowable => e
          end
          Library.load_library("swt-awt")
        end
      end
      
      typesig { [] }
      def initialize_swing
        synchronized(self) do
          if (self.attr_swing_initialized)
            return
          end
          self.attr_swing_initialized = true
          begin
            # Initialize the default focus traversal policy
            empty_class = Array.typed(Class).new(0) { nil }
            empty_object = Array.typed(Object).new(0) { nil }
            clazz = Class.for_name("javax.swing.UIManager")
            method = clazz.get_method("getDefaults", empty_class)
            if (!(method).nil?)
              method.invoke(clazz, empty_object)
            end
          rescue JavaThrowable => e
          end
        end
      end
      
      typesig { [Composite] }
      # Returns a <code>java.awt.Frame</code> which is the embedded frame
      # associated with the specified composite.
      # 
      # @param parent the parent <code>Composite</code> of the <code>java.awt.Frame</code>
      # @return a <code>java.awt.Frame</code> the embedded frame or <code>null</code>.
      # 
      # @exception IllegalArgumentException <ul>
      # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
      # </ul>
      # 
      # @since 3.2
      def get_frame(parent)
        if ((parent).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if (((parent.get_style & SWT::EMBEDDED)).equal?(0))
          return nil
        end
        return parent.get_data(self.attr_embedded_frame_key)
      end
      
      typesig { [Composite] }
      # Creates a new <code>java.awt.Frame</code>. This frame is the root for
      # the AWT components that will be embedded within the composite. In order
      # for the embedding to succeed, the composite must have been created
      # with the SWT.EMBEDDED style.
      # <p>
      # IMPORTANT: As of JDK1.5, the embedded frame does not receive mouse events.
      # When a lightweight component is added as a child of the embedded frame,
      # the cursor does not change. In order to work around both these problems, it is
      # strongly recommended that a heavyweight component such as <code>java.awt.Panel</code>
      # be added to the frame as the root of all components.
      # </p>
      # 
      # @param parent the parent <code>Composite</code> of the new <code>java.awt.Frame</code>
      # @return a <code>java.awt.Frame</code> to be the parent of the embedded AWT components
      # 
      # @exception IllegalArgumentException <ul>
      # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
      # <li>ERROR_INVALID_ARGUMENT - if the parent Composite does not have the SWT.EMBEDDED style</li>
      # </ul>
      # 
      # @since 3.0
      def new__frame(parent)
        if ((parent).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if (((parent.get_style & SWT::EMBEDDED)).equal?(0))
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        # long
        handle = parent.attr_handle
        result = Array.typed(Frame).new(1) { nil }
        exception = Array.typed(JavaThrowable).new(1) { nil }
        runnable = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members SWT_AWT
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            begin
              # Some JREs have implemented the embedded frame constructor to take an integer
              # and other JREs take a long.  To handle this binary incompatibility, use
              # reflection to create the embedded frame.
              clazz = nil
              begin
                class_name = !(self.attr_embedded_frame_class).nil? ? self.attr_embedded_frame_class : "sun.awt.windows.WEmbeddedFrame"
                clazz = Class.for_name(class_name)
              rescue self.class::JavaThrowable => e
                exception[0] = e
                return
              end
              initialize_swing
              value = nil
              constructor = nil
              begin
                constructor = clazz.get_constructor(Array.typed(self.class::Class).new([Array]))
                # 64
                value = constructor.new_instance(Array.typed(Object).new([RJava.cast_to_int(handle)]))
              rescue self.class::JavaThrowable => e1
                begin
                  constructor = clazz.get_constructor(Array.typed(self.class::Class).new([Array]))
                  value = constructor.new_instance(Array.typed(Object).new([self.class::Long.new(handle)]))
                rescue self.class::JavaThrowable => e2
                  exception[0] = e2
                  return
                end
              end
              frame = value
              # This is necessary to make lightweight components
              # directly added to the frame receive mouse events
              # properly.
              frame.add_notify
              # TEMPORARY CODE
              # 
              # For some reason, the graphics configuration of the embedded
              # frame is not initialized properly. This causes an exception
              # when the depth of the screen is changed.
              begin
                clazz = Class.for_name("sun.awt.windows.WComponentPeer")
                field = clazz.get_declared_field("winGraphicsConfig")
                field.set_accessible(true)
                field.set(frame.get_peer, frame.get_graphics_configuration)
              rescue self.class::JavaThrowable => e
              end
              result[0] = frame
            ensure
              synchronized((result)) do
                result.notify
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
        if (EventQueue.is_dispatch_thread || !(parent.get_display.get_sync_thread).nil?)
          runnable.run
        else
          EventQueue.invoke_later(runnable)
          OS._reply_message(0)
          interrupted = false
          msg = MSG.new
          flags = OS::PM_NOREMOVE | OS::PM_NOYIELD | OS::PM_QS_SENDMESSAGE
          while ((result[0]).nil? && (exception[0]).nil?)
            OS._peek_message(msg, 0, 0, 0, flags)
            begin
              synchronized((result)) do
                result.wait(50)
              end
            rescue InterruptedException => e
              interrupted = true
            end
          end
          if (interrupted)
            Compatibility.interrupt
          end
        end
        if (!(exception[0]).nil?)
          SWT.error(SWT::ERROR_NOT_IMPLEMENTED, exception[0])
        end
        frame = result[0]
        parent.set_data(self.attr_embedded_frame_key, frame)
        shell_listener = # Forward the iconify and deiconify events
        Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members SWT_AWT
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |e|
            case (e.attr_type)
            when SWT::Deiconify
              listener_class = self.class
              EventQueue.invoke_later(Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
                extend LocalClass
                include_class_members listener_class
                include class_self::Runnable if class_self::Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  frame.dispatch_event(self.class::WindowEvent.new(frame, WindowEvent::WINDOW_DEICONIFIED))
                end
                
                typesig { [Vararg.new(Object)] }
                define_method :initialize do |*args|
                  super(*args)
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self))
            when SWT::Iconify
              listener_class = self.class
              EventQueue.invoke_later(Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
                extend LocalClass
                include_class_members listener_class
                include class_self::Runnable if class_self::Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  frame.dispatch_event(self.class::WindowEvent.new(frame, WindowEvent::WINDOW_ICONIFIED))
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
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        shell = parent.get_shell
        shell.add_listener(SWT::Deiconify, shell_listener)
        shell.add_listener(SWT::Iconify, shell_listener)
        listener = # Generate the appropriate events to activate and deactivate
        # the embedded frame. This is needed in order to make keyboard
        # focus work properly for lightweights.
        Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members SWT_AWT
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |e|
            case (e.attr_type)
            when SWT::Dispose
              shell_ = parent.get_shell
              shell_.remove_listener(SWT::Deiconify, shell_listener)
              shell_.remove_listener(SWT::Iconify, shell_listener)
              parent.set_visible(false)
              listener_class = self.class
              EventQueue.invoke_later(Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
                extend LocalClass
                include_class_members listener_class
                include class_self::Runnable if class_self::Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  begin
                    frame.dispose
                  rescue self.class::JavaThrowable => e_
                  end
                end
                
                typesig { [Vararg.new(Object)] }
                define_method :initialize do |*args|
                  super(*args)
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self))
            when SWT::FocusIn, SWT::Activate
              listener_class = self.class
              EventQueue.invoke_later(Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
                extend LocalClass
                include_class_members listener_class
                include class_self::Runnable if class_self::Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  if (Library::JAVA_VERSION < Library._java_version(1, 4, 0))
                    frame.dispatch_event(self.class::WindowEvent.new(frame, WindowEvent::WINDOW_ACTIVATED))
                    frame.dispatch_event(self.class::FocusEvent.new(frame, FocusEvent::FOCUS_GAINED))
                  else
                    if (Library::JAVA_VERSION < Library._java_version(1, 5, 0))
                      frame.dispatch_event(self.class::WindowEvent.new(frame, WindowEvent::WINDOW_ACTIVATED))
                      # WindowEvent.WINDOW_GAINED_FOCUS
                      frame.dispatch_event(self.class::WindowEvent.new(frame, 207))
                    else
                      if (frame.is_active)
                        return
                      end
                      begin
                        clazz = frame.get_class
                        method = clazz.get_method("synthesizeWindowActivation", Array.typed(self.class::Class).new([Array]))
                        if (!(method).nil?)
                          method.invoke(frame, Array.typed(Object).new([Boolean.new(true)]))
                        end
                      rescue self.class::JavaThrowable => e_
                      end
                    end
                  end
                end
                
                typesig { [Vararg.new(Object)] }
                define_method :initialize do |*args|
                  super(*args)
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self))
            when SWT::Deactivate
              listener_class = self.class
              EventQueue.invoke_later(Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
                extend LocalClass
                include_class_members listener_class
                include class_self::Runnable if class_self::Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  if (Library::JAVA_VERSION < Library._java_version(1, 4, 0))
                    frame.dispatch_event(self.class::WindowEvent.new(frame, WindowEvent::WINDOW_DEACTIVATED))
                    frame.dispatch_event(self.class::FocusEvent.new(frame, FocusEvent::FOCUS_LOST))
                  else
                    if (Library::JAVA_VERSION < Library._java_version(1, 5, 0))
                      # WindowEvent.WINDOW_LOST_FOCUS
                      frame.dispatch_event(self.class::WindowEvent.new(frame, 208))
                      frame.dispatch_event(self.class::WindowEvent.new(frame, WindowEvent::WINDOW_DEACTIVATED))
                    else
                      if (!frame.is_active)
                        return
                      end
                      begin
                        clazz = frame.get_class
                        method = clazz.get_method("synthesizeWindowActivation", Array.typed(self.class::Class).new([Array]))
                        if (!(method).nil?)
                          method.invoke(frame, Array.typed(Object).new([Boolean.new(false)]))
                        end
                      rescue self.class::JavaThrowable => e_
                      end
                    end
                  end
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
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        if (Library::JAVA_VERSION < Library._java_version(1, 5, 0))
          parent.add_listener(SWT::Activate, listener)
        else
          parent.add_listener(SWT::FocusIn, listener)
        end
        parent.add_listener(SWT::Deactivate, listener)
        parent.add_listener(SWT::Dispose, listener)
        parent.get_display.async_exec(Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members SWT_AWT
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if (parent.is_disposed)
              return
            end
            client_area = parent.get_client_area
            runnable_class = self.class
            EventQueue.invoke_later(Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
              extend LocalClass
              include_class_members runnable_class
              include class_self::Runnable if class_self::Runnable.class == Module
              
              typesig { [] }
              define_method :run do
                frame.set_size(client_area.attr_width, client_area.attr_height)
                frame.validate
              end
              
              typesig { [Vararg.new(Object)] }
              define_method :initialize do |*args|
                super(*args)
              end
              
              private
              alias_method :initialize_anonymous, :initialize
            end.new_local(self))
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
        return frame
      end
      
      typesig { [Display, Canvas] }
      # Creates a new <code>Shell</code>. This Shell is the root for
      # the SWT widgets that will be embedded within the AWT canvas.
      # 
      # @param display the display for the new Shell
      # @param parent the parent <code>java.awt.Canvas</code> of the new Shell
      # @return a <code>Shell</code> to be the parent of the embedded SWT widgets
      # 
      # @exception IllegalArgumentException <ul>
      # <li>ERROR_NULL_ARGUMENT - if the display is null</li>
      # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
      # <li>ERROR_INVALID_ARGUMENT - if the parent's peer is not created</li>
      # </ul>
      # 
      # @since 3.0
      def new__shell(display, parent)
        if ((display).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if ((parent).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        # long
        handle = 0
        begin
          load_library
          handle = get_awthandle(parent)
        rescue JavaThrowable => e
          SWT.error(SWT::ERROR_NOT_IMPLEMENTED, e)
        end
        if ((handle).equal?(0))
          SWT.error(SWT::ERROR_INVALID_ARGUMENT, nil, " [peer not created]")
        end
        shell = Shell.win32_new(display, handle)
        listener = Class.new(ComponentAdapter.class == Class ? ComponentAdapter : Object) do
          extend LocalClass
          include_class_members SWT_AWT
          include ComponentAdapter if ComponentAdapter.class == Module
          
          typesig { [ComponentEvent] }
          define_method :component_resized do |e|
            component_adapter_class = self.class
            display.sync_exec(Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
              extend LocalClass
              include_class_members component_adapter_class
              include class_self::Runnable if class_self::Runnable.class == Module
              
              typesig { [] }
              define_method :run do
                if (shell.is_disposed)
                  return
                end
                dim = parent.get_size
                shell.set_size(dim.attr_width, dim.attr_height)
              end
              
              typesig { [Vararg.new(Object)] }
              define_method :initialize do |*args|
                super(*args)
              end
              
              private
              alias_method :initialize_anonymous, :initialize
            end.new_local(self))
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        parent.add_component_listener(listener)
        shell.add_listener(SWT::Dispose, Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members SWT_AWT
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            parent.remove_component_listener(listener)
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
        shell.set_visible(true)
        return shell
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__swt_awt, :initialize
  end
  
end
