require "rjava"

# Copyright (c) 2003, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module WindowEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # A <code>WindowEvent</code> is sent by a {@link Browser} when
  # a new window needs to be created or when an existing window needs to be
  # closed. This notification occurs when a javascript command such as
  # <code>window.open</code> or <code>window.close</code> gets executed by
  # a <code>Browser</code>.
  # 
  # <p>
  # The following example shows how <code>WindowEvent</code>'s are typically
  # handled.
  # 
  # <code><pre>
  # public static void main(String[] args) {
  # Display display = new Display();
  # Shell shell = new Shell(display);
  # shell.setText("Main Window");
  # shell.setLayout(new FillLayout());
  # Browser browser = new Browser(shell, SWT.NONE);
  # initialize(display, browser);
  # shell.open();
  # browser.setUrl("http://www.eclipse.org");
  # while (!shell.isDisposed()) {
  # if (!display.readAndDispatch())
  # display.sleep();
  # }
  # display.dispose();
  # }
  # 
  # static void initialize(final Display display, Browser browser) {
  # browser.addOpenWindowListener(new OpenWindowListener() {
  # public void open(WindowEvent event) {
  # // Certain platforms can provide a default full browser.
  # // simply return in that case if the application prefers
  # // the default full browser to the embedded one set below.
  # if (!event.required) return;
  # 
  # // Embed the new window
  # Shell shell = new Shell(display);
  # shell.setText("New Window");
  # shell.setLayout(new FillLayout());
  # Browser browser = new Browser(shell, SWT.NONE);
  # initialize(display, browser);
  # event.browser = browser;
  # }
  # });
  # browser.addVisibilityWindowListener(new VisibilityWindowListener() {
  # public void hide(WindowEvent event) {
  # Browser browser = (Browser)event.widget;
  # Shell shell = browser.getShell();
  # shell.setVisible(false);
  # }
  # public void show(WindowEvent event) {
  # Browser browser = (Browser)event.widget;
  # Shell shell = browser.getShell();
  # if (event.location != null) shell.setLocation(event.location);
  # if (event.size != null) {
  # Point size = event.size;
  # shell.setSize(shell.computeSize(size.x, size.y));
  # }
  # if (event.addressBar || event.menuBar || event.statusBar || event.toolBar) {
  # // Create widgets for the address bar, menu bar, status bar and/or tool bar
  # // leave enough space in the Shell to accommodate a Browser of the size
  # // given by event.size
  # }
  # shell.open();
  # }
  # });
  # browser.addCloseWindowListener(new CloseWindowListener() {
  # public void close(WindowEvent event) {
  # Browser browser = (Browser)event.widget;
  # Shell shell = browser.getShell();
  # shell.close();
  # }
  # });
  # }
  # </pre></code>
  # 
  # The following notifications are emitted when the user selects a hyperlink that targets a new window
  # or as the result of a javascript that executes window.open.
  # 
  # <p>Main Browser
  # <ul>
  # <li>User selects a link that opens in a new window or javascript requests a new window</li>
  # <li>OpenWindowListener.open() notified</li>
  # <ul>
  # <li>Application creates a new Shell and a second Browser inside that Shell</li>
  # <li>Application registers WindowListener's on that second Browser, such as VisibilityWindowListener</li>
  # <li>Application returns the second Browser as the host for the new window content</li>
  # </ul>
  # </ul>
  # 
  # <p>Second Browser
  # <ul>
  # <li>VisibilityWindowListener.show() notified</li>
  # <ul>
  # <li>Application sets navigation tool bar, status bar, menu bar and Shell size
  # <li>Application makes the Shell hosting the second Browser visible
  # <li>User now sees the new window
  # </ul>
  # </ul>
  # 
  # @see CloseWindowListener
  # @see OpenWindowListener
  # @see VisibilityWindowListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class WindowEvent < WindowEventImports.const_get :TypedEvent
    include_class_members WindowEventImports
    
    # Specifies whether the platform requires the user to provide a
    # <code>Browser</code> to handle the new window.
    # 
    # @since 3.1
    attr_accessor :required
    alias_method :attr_required, :required
    undef_method :required
    alias_method :attr_required=, :required=
    undef_method :required=
    
    # <code>Browser</code> provided by the application.
    attr_accessor :browser
    alias_method :attr_browser, :browser
    undef_method :browser
    alias_method :attr_browser=, :browser=
    undef_method :browser=
    
    # Requested location for the <code>Shell</code> hosting the <code>Browser</code>.
    # It is <code>null</code> if no location has been requested.
    attr_accessor :location
    alias_method :attr_location, :location
    undef_method :location
    alias_method :attr_location=, :location=
    undef_method :location=
    
    # Requested <code>Browser</code> size. The client area of the <code>Shell</code>
    # hosting the <code>Browser</code> should be large enough to accommodate that size.
    # It is <code>null</code> if no size has been requested.
    attr_accessor :size
    alias_method :attr_size, :size
    undef_method :size
    alias_method :attr_size=, :size=
    undef_method :size=
    
    # Specifies whether the <code>Shell</code> hosting the <code>Browser</code> should
    # display an address bar.
    # 
    # @since 3.1
    attr_accessor :address_bar
    alias_method :attr_address_bar, :address_bar
    undef_method :address_bar
    alias_method :attr_address_bar=, :address_bar=
    undef_method :address_bar=
    
    # Specifies whether the <code>Shell</code> hosting the <code>Browser</code> should
    # display a menu bar.
    # 
    # @since 3.1
    attr_accessor :menu_bar
    alias_method :attr_menu_bar, :menu_bar
    undef_method :menu_bar
    alias_method :attr_menu_bar=, :menu_bar=
    undef_method :menu_bar=
    
    # Specifies whether the <code>Shell</code> hosting the <code>Browser</code> should
    # display a status bar.
    # 
    # @since 3.1
    attr_accessor :status_bar
    alias_method :attr_status_bar, :status_bar
    undef_method :status_bar
    alias_method :attr_status_bar=, :status_bar=
    undef_method :status_bar=
    
    # Specifies whether the <code>Shell</code> hosting the <code>Browser</code> should
    # display a tool bar.
    # 
    # @since 3.1
    attr_accessor :tool_bar
    alias_method :attr_tool_bar, :tool_bar
    undef_method :tool_bar
    alias_method :attr_tool_bar=, :tool_bar=
    undef_method :tool_bar=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3617851997387174969 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Widget] }
    # Constructs a new instance of this class.
    # 
    # @param widget the widget that fired the event
    # 
    # @since 3.5
    def initialize(widget)
      @required = false
      @browser = nil
      @location = nil
      @size = nil
      @address_bar = false
      @menu_bar = false
      @status_bar = false
      @tool_bar = false
      super(widget)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      string = super
      # remove trailing '}'
      return RJava.cast_to_string(string.substring(0, string.length - 1)) + " required=" + RJava.cast_to_string(@required) + " browser=" + RJava.cast_to_string(@browser) + " location=" + RJava.cast_to_string(@location) + " size=" + RJava.cast_to_string(@size) + " addressBar=" + RJava.cast_to_string(@address_bar) + " menuBar=" + RJava.cast_to_string(@menu_bar) + " statusBar=" + RJava.cast_to_string(@status_bar) + " toolBar=" + RJava.cast_to_string(@tool_bar) + "}"
    end
    
    private
    alias_method :initialize__window_event, :initialize
  end
  
end
