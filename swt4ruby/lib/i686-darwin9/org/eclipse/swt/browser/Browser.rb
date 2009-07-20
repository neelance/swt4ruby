require "rjava"

# Copyright (c) 2003, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module BrowserImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Instances of this class implement the browser user interface
  # metaphor.  It allows the user to visualize and navigate through
  # HTML documents.
  # <p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to set a layout on it.
  # </p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>MOZILLA</dd>
  # <dt><b>Events:</b></dt>
  # <dd>CloseWindowListener, LocationListener, OpenWindowListener, ProgressListener, StatusTextListener, TitleListener, VisibilityWindowListener</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#browser">Browser snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Examples: ControlExample, BrowserExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class Browser < BrowserImports.const_get :Composite
    include_class_members BrowserImports
    
    attr_accessor :web_browser
    alias_method :attr_web_browser, :web_browser
    undef_method :web_browser
    alias_method :attr_web_browser=, :web_browser=
    undef_method :web_browser=
    
    attr_accessor :user_style
    alias_method :attr_user_style, :user_style
    undef_method :user_style
    alias_method :attr_user_style=, :user_style=
    undef_method :user_style=
    
    class_module.module_eval {
      const_set_lazy(:PACKAGE_PREFIX) { "org.eclipse.swt.browser." }
      const_attr_reader  :PACKAGE_PREFIX
      
      # $NON-NLS-1$
      const_set_lazy(:NO_INPUT_METHOD) { "org.eclipse.swt.internal.gtk.noInputMethod" }
      const_attr_reader  :NO_INPUT_METHOD
    }
    
    typesig { [Composite, ::Java::Int] }
    # $NON-NLS-1$
    # 
    # Constructs a new instance of this class given its parent
    # and a style value describing its behavior and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p>
    # 
    # @param parent a widget which will be the parent of the new instance (cannot be null)
    # @param style the style of widget to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for browser creation</li>
    # </ul>
    # 
    # @see Widget#getStyle
    # 
    # @since 3.0
    def initialize(parent, style)
      @web_browser = nil
      @user_style = 0
      super(check_parent(parent), check_style(style))
      @user_style = style
      platform = SWT.get_platform
      display = parent.get_display
      if (("gtk" == platform))
        display.set_data(NO_INPUT_METHOD, nil)
      end # $NON-NLS-1$
      class_name = nil
      if (!((style & SWT::MOZILLA)).equal?(0))
        class_name = "org.eclipse.swt.browser.Mozilla" # $NON-NLS-1$
      else
        if (("win32" == platform) || ("wpf" == platform))
          # $NON-NLS-1$ $NON-NLS-2$
          class_name = "org.eclipse.swt.browser.IE" # $NON-NLS-1$
        else
          if (("motif" == platform))
            # $NON-NLS-1$
            class_name = "org.eclipse.swt.browser.Mozilla" # $NON-NLS-1$
          else
            if (("gtk" == platform))
              # $NON-NLS-1$
              class_name = "org.eclipse.swt.browser.Mozilla" # $NON-NLS-1$
            else
              if (("carbon" == platform) || ("cocoa" == platform))
                # $NON-NLS-1$
                class_name = "org.eclipse.swt.browser.Safari" # $NON-NLS-1$
              else
                if (("photon" == platform))
                  # $NON-NLS-1$
                  class_name = "org.eclipse.swt.browser.Voyager" # $NON-NLS-1$
                else
                  dispose
                  SWT.error(SWT::ERROR_NO_HANDLES)
                end
              end
            end
          end
        end
      end
      begin
        clazz = Class.for_name(class_name)
        @web_browser = clazz.new_instance
      rescue ClassNotFoundException => e
      rescue IllegalAccessException => e
      rescue InstantiationException => e
      end
      if ((@web_browser).nil?)
        dispose
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @web_browser.set_browser(self)
      @web_browser.create(parent, style)
    end
    
    class_module.module_eval {
      typesig { [Composite] }
      def check_parent(parent)
        platform = SWT.get_platform
        if (!("gtk" == platform))
          return parent
        end # $NON-NLS-1$
        # Note.  Mozilla provides all IM support needed for text input in web pages.
        # If SWT creates another input method context for the widget it will cause
        # indeterminate results to happen (hangs and crashes). The fix is to prevent
        # SWT from creating an input method context for the  Browser widget.
        if (!(parent).nil? && !parent.is_disposed)
          display = parent.get_display
          if (!(display).nil?)
            if ((display.get_thread).equal?(JavaThread.current_thread))
              display.set_data(NO_INPUT_METHOD, "true") # $NON-NLS-1$
            end
          end
        end
        return parent
      end
      
      typesig { [::Java::Int] }
      def check_style(style)
        platform = SWT.get_platform
        if (!((style & SWT::MOZILLA)).equal?(0))
          if (("carbon" == platform))
            return style | SWT::EMBEDDED
          end # $NON-NLS-1$
          if (("motif" == platform))
            return style | SWT::EMBEDDED
          end # $NON-NLS-1$
          return style
        end
        if (("win32" == platform))
          # $NON-NLS-1$
          # 
          # For IE on win32 the border is supplied by the embedded browser, so remove
          # the style so that the parent Composite will not draw a second border.
          return style & ~SWT::BORDER
        else
          if (("motif" == platform))
            # $NON-NLS-1$
            return style | SWT::EMBEDDED
          end
        end
        return style
      end
      
      typesig { [] }
      # Clears all session cookies from all current Browser instances.
      # 
      # @since 3.2
      def clear_sessions
        WebBrowser.clear_sessions
      end
    }
    
    typesig { [CloseWindowListener] }
    # Adds the listener to the collection of listeners who will be
    # notified when the window hosting the receiver should be closed.
    # <p>
    # This notification occurs when a javascript command such as
    # <code>window.close</code> gets executed by a <code>Browser</code>.
    # </p>
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def add_close_window_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.add_close_window_listener(listener)
    end
    
    typesig { [LocationListener] }
    # Adds the listener to the collection of listeners who will be
    # notified when the current location has changed or is about to change.
    # <p>
    # This notification typically occurs when the application navigates
    # to a new location with {@link #setUrl(String)} or when the user
    # activates a hyperlink.
    # </p>
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def add_location_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.add_location_listener(listener)
    end
    
    typesig { [OpenWindowListener] }
    # Adds the listener to the collection of listeners who will be
    # notified when a new window needs to be created.
    # <p>
    # This notification occurs when a javascript command such as
    # <code>window.open</code> gets executed by a <code>Browser</code>.
    # </p>
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def add_open_window_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.add_open_window_listener(listener)
    end
    
    typesig { [ProgressListener] }
    # Adds the listener to the collection of listeners who will be
    # notified when a progress is made during the loading of the current
    # URL or when the loading of the current URL has been completed.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def add_progress_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.add_progress_listener(listener)
    end
    
    typesig { [StatusTextListener] }
    # Adds the listener to the collection of listeners who will be
    # notified when the status text is changed.
    # <p>
    # The status text is typically displayed in the status bar of
    # a browser application.
    # </p>
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def add_status_text_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.add_status_text_listener(listener)
    end
    
    typesig { [TitleListener] }
    # Adds the listener to the collection of listeners who will be
    # notified when the title of the current document is available
    # or has changed.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def add_title_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.add_title_listener(listener)
    end
    
    typesig { [VisibilityWindowListener] }
    # Adds the listener to the collection of listeners who will be
    # notified when a window hosting the receiver needs to be displayed
    # or hidden.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def add_visibility_window_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.add_visibility_window_listener(listener)
    end
    
    typesig { [] }
    # Navigate to the previous session history item.
    # 
    # @return <code>true</code> if the operation was successful and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @see #forward
    # 
    # @since 3.0
    def back
      check_widget
      return @web_browser.back
    end
    
    typesig { [] }
    def check_subclass
      name = get_class.get_name
      index = name.last_index_of(Character.new(?..ord))
      if (!(name.substring(0, index + 1) == PACKAGE_PREFIX))
        SWT.error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [String] }
    # Execute the specified script.
    # 
    # <p>
    # Execute a script containing javascript commands in the context of the current document.
    # 
    # @param script the script with javascript commands
    # 
    # @return <code>true</code> if the operation was successful and <code>false</code> otherwise
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the script is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def execute(script)
      check_widget
      if ((script).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return @web_browser.execute(script)
    end
    
    typesig { [] }
    # Navigate to the next session history item.
    # 
    # @return <code>true</code> if the operation was successful and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @see #back
    # 
    # @since 3.0
    def forward
      check_widget
      return @web_browser.forward
    end
    
    typesig { [] }
    def get_style
      # If SWT.BORDER was specified at creation time then getStyle() should answer
      # it even though it is removed for IE on win32 in checkStyle().
      return super | (@user_style & SWT::BORDER)
    end
    
    typesig { [] }
    # Returns a string with HTML that represents the content of the current page.
    # 
    # @return HTML representing the current page or an empty <code>String</code>
    # if this is empty
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.4
    def get_text
      check_widget
      return @web_browser.get_text
    end
    
    typesig { [] }
    # Returns the current URL.
    # 
    # @return the current URL or an empty <code>String</code> if there is no current URL
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @see #setUrl
    # 
    # @since 3.0
    def get_url
      check_widget
      return @web_browser.get_url
    end
    
    typesig { [] }
    # Returns the JavaXPCOM <code>nsIWebBrowser</code> for the receiver, or <code>null</code>
    # if it is not available.  In order for an <code>nsIWebBrowser</code> to be returned all
    # of the following must be true: <ul>
    # <li>the receiver's style must be <code>SWT.MOZILLA</code></li>
    # <li>the classes from JavaXPCOM &gt;= 1.8.1.2 must be resolvable at runtime</li>
    # <li>the version of the underlying XULRunner must be &gt;= 1.8.1.2</li>
    # </ul>
    # 
    # @return the receiver's JavaXPCOM <code>nsIWebBrowser</code> or <code>null</code>
    # 
    # @since 3.3
    def get_web_browser
      check_widget
      return @web_browser.get_web_browser
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver can navigate to the
    # previous session history item, and <code>false</code> otherwise.
    # 
    # @return the receiver's back command enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #back
    def is_back_enabled
      check_widget
      return @web_browser.is_back_enabled
    end
    
    typesig { [] }
    def is_focus_control
      check_widget
      if (@web_browser.is_focus_control)
        return true
      end
      return super
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver can navigate to the
    # next session history item, and <code>false</code> otherwise.
    # 
    # @return the receiver's forward command enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #forward
    def is_forward_enabled
      check_widget
      return @web_browser.is_forward_enabled
    end
    
    typesig { [] }
    # Refresh the current page.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def refresh
      check_widget
      @web_browser.refresh
    end
    
    typesig { [CloseWindowListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the window hosting the receiver should be closed.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def remove_close_window_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.remove_close_window_listener(listener)
    end
    
    typesig { [LocationListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the current location is changed or about to be changed.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def remove_location_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.remove_location_listener(listener)
    end
    
    typesig { [OpenWindowListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when a new window needs to be created.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def remove_open_window_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.remove_open_window_listener(listener)
    end
    
    typesig { [ProgressListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when a progress is made during the loading of the current
    # URL or when the loading of the current URL has been completed.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def remove_progress_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.remove_progress_listener(listener)
    end
    
    typesig { [StatusTextListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the status text is changed.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def remove_status_text_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.remove_status_text_listener(listener)
    end
    
    typesig { [TitleListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the title of the current document is available
    # or has changed.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def remove_title_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.remove_title_listener(listener)
    end
    
    typesig { [VisibilityWindowListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when a window hosting the receiver needs to be displayed
    # or hidden.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def remove_visibility_window_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @web_browser.remove_visibility_window_listener(listener)
    end
    
    typesig { [String] }
    # Renders HTML.
    # 
    # <p>
    # The html parameter is Unicode encoded since it is a java <code>String</code>.
    # As a result, the HTML meta tag charset should not be set. The charset is implied
    # by the <code>String</code> itself.
    # 
    # @param html the HTML content to be rendered
    # 
    # @return true if the operation was successful and false otherwise.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the html is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @see #setUrl
    # 
    # @since 3.0
    def set_text(html)
      check_widget
      if ((html).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return @web_browser.set_text(html)
    end
    
    typesig { [String] }
    # Loads a URL.
    # 
    # @param url the URL to be loaded
    # 
    # @return true if the operation was successful and false otherwise.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the url is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @see #getUrl
    # 
    # @since 3.0
    def set_url(url)
      check_widget
      if ((url).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return @web_browser.set_url(url)
    end
    
    typesig { [] }
    # Stop any loading and rendering activity.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def stop
      check_widget
      @web_browser.stop
    end
    
    private
    alias_method :initialize__browser, :initialize
  end
  
end
