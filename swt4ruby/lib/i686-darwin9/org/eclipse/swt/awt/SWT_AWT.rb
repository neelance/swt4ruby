require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
# Scott Kovatch - interface to apple.awt.CHIViewEmbeddedFrame
module Org::Eclipse::Swt::Awt
  module SWT_AWTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Awt
      include_const ::Java::Awt, :Canvas
      include_const ::Java::Awt, :EventQueue
      include_const ::Java::Awt, :Frame
      include_const ::Java::Lang::Reflect, :Constructor
      include_const ::Org::Eclipse::Swt, :SWT
      include_const ::Org::Eclipse::Swt::Widgets, :Composite
      include_const ::Org::Eclipse::Swt::Widgets, :Display
      include_const ::Org::Eclipse::Swt::Widgets, :Event
      include_const ::Org::Eclipse::Swt::Widgets, :Listener
      include_const ::Org::Eclipse::Swt::Widgets, :Shell
    }
  end
  
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
      
      when_class_loaded do
        System.set_property("apple.awt.usingSWT", "true")
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
        handle = parent.attr_handle
        clazz = nil
        begin
          class_name = !(self.attr_embedded_frame_class).nil? ? self.attr_embedded_frame_class : "apple.awt.CHIViewEmbeddedFrame"
          if ((self.attr_embedded_frame_class).nil?)
            clazz = Class.for_name(class_name, true, ClassLoader.get_system_class_loader)
          else
            clazz = Class.for_name(class_name)
          end
        rescue ClassNotFoundException => cne
          SWT.error(SWT::ERROR_NOT_IMPLEMENTED, cne)
        rescue JavaThrowable => e
          SWT.error(SWT::ERROR_UNSPECIFIED, e, " [Error while starting AWT]")
        end
        value = nil
        constructor = nil
        begin
          constructor = clazz.get_constructor(Array.typed(Class).new([Array]))
          value = constructor.new_instance(Array.typed(Object).new([Long.new(handle)]))
        rescue JavaThrowable => e
          SWT.error(SWT::ERROR_NOT_IMPLEMENTED, e)
        end
        frame = value
        parent.set_data(self.attr_embedded_frame_key, frame)
        listener = Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members SWT_AWT
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |e|
            case (e.attr_type)
            when SWT::Dispose
              parent.set_visible(false)
              listener_class = self.class
              EventQueue.invoke_later(Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
                extend LocalClass
                include_class_members listener_class
                include class_self::Runnable if class_self::Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  frame.dispose
                end
                
                typesig { [Object] }
                define_method :initialize do |*args|
                  super(*args)
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self))
            end
          end
          
          typesig { [Object] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        parent.add_listener(SWT::Dispose, listener)
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
        SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
        return nil
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__swt_awt, :initialize
  end
  
end
