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
  module SWT_AWTImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Awt
      include_const ::Java::Lang::Reflect, :Constructor
      include_const ::Java::Lang::Reflect, :Method
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include_const ::Org::Eclipse::Swt::Graphics, :Device
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
      include_const ::Java::Awt::Event, :ComponentAdapter
      include_const ::Java::Awt::Event, :ComponentEvent
      include_const ::Java::Awt::Event, :WindowEvent
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
      
      JNI.native_method :Java_org_eclipse_swt_awt_SWT_AWT_getAWTHandle, [:pointer, :long, :long], :int32
      typesig { [Canvas] }
      # long
      def get_awthandle(canvas)
        JNI.__send__(:Java_org_eclipse_swt_awt_SWT_AWT_getAWTHandle, JNI.env, self.jni_id, canvas.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_awt_SWT_AWT_setDebug, [:pointer, :long, :long, :int8], :void
      typesig { [Frame, ::Java::Boolean] }
      def set_debug(canvas, debug)
        JNI.__send__(:Java_org_eclipse_swt_awt_SWT_AWT_setDebug, JNI.env, self.jni_id, canvas.jni_id, debug ? 1 : 0)
      end
      
      typesig { [] }
      def load_library
        synchronized(self) do
          if (self.attr_loaded)
            return
          end
          self.attr_loaded = true
          # Note that the jawt library is loaded explicitly
          # because it cannot be found by the library loader.
          # All exceptions are caught because the library may
          # have been loaded already.
          begin
            System.load_library("jawt")
          rescue Exception => e
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
          # Feature in GTK.  The default X error handler
          # for GTK calls exit() after printing the X error.
          # Normally, this isn't that big a problem for SWT
          # applications because they don't cause X errors.
          # However, sometimes X errors are generated by AWT
          # that make SWT exit.  The fix is to hide all X
          # errors when AWT is running.
          OS.gdk_error_trap_push
          begin
            # Initialize the default focus traversal policy
            empty_class = Array.typed(Class).new(0) { nil }
            empty_object = Array.typed(Object).new(0) { nil }
            clazz = Class.for_name("javax.swing.UIManager")
            method = clazz.get_method("getDefaults", empty_class)
            if (!(method).nil?)
              method.invoke(clazz, empty_object)
            end
          rescue Exception => e
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
        handle = parent.attr_embedded_handle
        # Some JREs have implemented the embedded frame constructor to take an integer
        # and other JREs take a long.  To handle this binary incompatibility, use
        # reflection to create the embedded frame.
        clazz = nil
        begin
          class_name = !(self.attr_embedded_frame_class).nil? ? self.attr_embedded_frame_class : "sun.awt.X11.XEmbeddedFrame"
          clazz = Class.for_name(class_name)
        rescue Exception => e
          SWT.error(SWT::ERROR_NOT_IMPLEMENTED, e, " [need JDK 1.5 or greater]")
        end
        initialize_swing
        value = nil
        constructor = nil
        begin
          constructor = clazz.get_constructor(Array.typed(Class).new([Array, Array]))
          # 64
          value = constructor.new_instance(Array.typed(Object).new([RJava.cast_to_int(handle), Boolean::TRUE]))
        rescue Exception => e1
          begin
            constructor = clazz.get_constructor(Array.typed(Class).new([Array, Array]))
            value = constructor.new_instance(Array.typed(Object).new([Long.new(handle), Boolean::TRUE]))
          rescue Exception => e2
            SWT.error(SWT::ERROR_NOT_IMPLEMENTED, e2)
          end
        end
        frame = value
        parent.set_data(self.attr_embedded_frame_key, frame)
        if (Device.attr_debug)
          load_library
          set_debug(frame, true)
        end
        begin
          # Call registerListeners() to make XEmbed focus traversal work
          method = clazz.get_method("registerListeners", nil)
          if (!(method).nil?)
            method.invoke(value, nil)
          end
        rescue Exception => e
        end
        shell_listener = Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members SWT_AWT
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |e|
            case (e.attr_type)
            when SWT::Deiconify
              listener_class = self.class
              EventQueue.invoke_later(Class.new(Runnable.class == Class ? Runnable : Object) do
                extend LocalClass
                include_class_members listener_class
                include Runnable if Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  frame.dispatch_event(WindowEvent.new(frame, WindowEvent::WINDOW_DEICONIFIED))
                end
                
                typesig { [] }
                define_method :initialize do
                  super()
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self))
            when SWT::Iconify
              listener_class = self.class
              EventQueue.invoke_later(Class.new(Runnable.class == Class ? Runnable : Object) do
                extend LocalClass
                include_class_members listener_class
                include Runnable if Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  frame.dispatch_event(WindowEvent.new(frame, WindowEvent::WINDOW_ICONIFIED))
                end
                
                typesig { [] }
                define_method :initialize do
                  super()
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self))
            end
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        shell = parent.get_shell
        shell.add_listener(SWT::Deiconify, shell_listener)
        shell.add_listener(SWT::Iconify, shell_listener)
        listener = Class.new(Listener.class == Class ? Listener : Object) do
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
              EventQueue.invoke_later(Class.new(Runnable.class == Class ? Runnable : Object) do
                extend LocalClass
                include_class_members listener_class
                include Runnable if Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  frame.dispose
                end
                
                typesig { [] }
                define_method :initialize do
                  super()
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self))
            when SWT::Resize
              if (Library::JAVA_VERSION >= Library._java_version(1, 6, 0))
                client_area = parent.get_client_area
                listener_class = self.class
                EventQueue.invoke_later(Class.new(Runnable.class == Class ? Runnable : Object) do
                  extend LocalClass
                  include_class_members listener_class
                  include Runnable if Runnable.class == Module
                  
                  typesig { [] }
                  define_method :run do
                    frame.set_size(client_area.attr_width, client_area.attr_height)
                  end
                  
                  typesig { [] }
                  define_method :initialize do
                    super()
                  end
                  
                  private
                  alias_method :initialize_anonymous, :initialize
                end.new_local(self))
              end
            end
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        parent.add_listener(SWT::Dispose, listener)
        parent.add_listener(SWT::Resize, listener)
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
            EventQueue.invoke_later(Class.new(Runnable.class == Class ? Runnable : Object) do
              extend LocalClass
              include_class_members runnable_class
              include Runnable if Runnable.class == Module
              
              typesig { [] }
              define_method :run do
                frame.set_size(client_area.attr_width, client_area.attr_height)
                frame.validate
              end
              
              typesig { [] }
              define_method :initialize do
                super()
              end
              
              private
              alias_method :initialize_anonymous, :initialize
            end.new_local(self))
          end
          
          typesig { [] }
          define_method :initialize do
            super()
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
        rescue Exception => e
          SWT.error(SWT::ERROR_NOT_IMPLEMENTED, e)
        end
        if ((handle).equal?(0))
          SWT.error(SWT::ERROR_INVALID_ARGUMENT, nil, " [peer not created]")
        end
        shell = Shell.gtk_new(display, handle)
        parent.add_component_listener(Class.new(ComponentAdapter.class == Class ? ComponentAdapter : Object) do
          extend LocalClass
          include_class_members SWT_AWT
          include ComponentAdapter if ComponentAdapter.class == Module
          
          typesig { [ComponentEvent] }
          define_method :component_resized do |e|
            component_adapter_class = self.class
            display.sync_exec(Class.new(Runnable.class == Class ? Runnable : Object) do
              extend LocalClass
              include_class_members component_adapter_class
              include Runnable if Runnable.class == Module
              
              typesig { [] }
              define_method :run do
                dim = parent.get_size
                shell.set_size(dim.attr_width, dim.attr_height)
              end
              
              typesig { [] }
              define_method :initialize do
                super()
              end
              
              private
              alias_method :initialize_anonymous, :initialize
            end.new_local(self))
          end
          
          typesig { [] }
          define_method :initialize do
            super()
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
