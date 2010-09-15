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
  module WebBrowserImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Java::Util
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class WebBrowser 
    include_class_members WebBrowserImports
    
    attr_accessor :browser
    alias_method :attr_browser, :browser
    undef_method :browser
    alias_method :attr_browser=, :browser=
    undef_method :browser=
    
    attr_accessor :functions
    alias_method :attr_functions, :functions
    undef_method :functions
    alias_method :attr_functions=, :functions=
    undef_method :functions=
    
    attr_accessor :authentication_listeners
    alias_method :attr_authentication_listeners, :authentication_listeners
    undef_method :authentication_listeners
    alias_method :attr_authentication_listeners=, :authentication_listeners=
    undef_method :authentication_listeners=
    
    attr_accessor :close_window_listeners
    alias_method :attr_close_window_listeners, :close_window_listeners
    undef_method :close_window_listeners
    alias_method :attr_close_window_listeners=, :close_window_listeners=
    undef_method :close_window_listeners=
    
    attr_accessor :location_listeners
    alias_method :attr_location_listeners, :location_listeners
    undef_method :location_listeners
    alias_method :attr_location_listeners=, :location_listeners=
    undef_method :location_listeners=
    
    attr_accessor :open_window_listeners
    alias_method :attr_open_window_listeners, :open_window_listeners
    undef_method :open_window_listeners
    alias_method :attr_open_window_listeners=, :open_window_listeners=
    undef_method :open_window_listeners=
    
    attr_accessor :progress_listeners
    alias_method :attr_progress_listeners, :progress_listeners
    undef_method :progress_listeners
    alias_method :attr_progress_listeners=, :progress_listeners=
    undef_method :progress_listeners=
    
    attr_accessor :status_text_listeners
    alias_method :attr_status_text_listeners, :status_text_listeners
    undef_method :status_text_listeners
    alias_method :attr_status_text_listeners=, :status_text_listeners=
    undef_method :status_text_listeners=
    
    attr_accessor :title_listeners
    alias_method :attr_title_listeners, :title_listeners
    undef_method :title_listeners
    alias_method :attr_title_listeners=, :title_listeners=
    undef_method :title_listeners=
    
    attr_accessor :visibility_window_listeners
    alias_method :attr_visibility_window_listeners, :visibility_window_listeners
    undef_method :visibility_window_listeners
    alias_method :attr_visibility_window_listeners=, :visibility_window_listeners=
    undef_method :visibility_window_listeners=
    
    attr_accessor :js_enabled
    alias_method :attr_js_enabled, :js_enabled
    undef_method :js_enabled
    alias_method :attr_js_enabled=, :js_enabled=
    undef_method :js_enabled=
    
    attr_accessor :js_enabled_changed
    alias_method :attr_js_enabled_changed, :js_enabled_changed
    undef_method :js_enabled_changed
    alias_method :attr_js_enabled_changed=, :js_enabled_changed=
    undef_method :js_enabled_changed=
    
    attr_accessor :next_function_index
    alias_method :attr_next_function_index, :next_function_index
    undef_method :next_function_index
    alias_method :attr_next_function_index=, :next_function_index=
    undef_method :next_function_index=
    
    attr_accessor :evaluate_result
    alias_method :attr_evaluate_result, :evaluate_result
    undef_method :evaluate_result
    alias_method :attr_evaluate_result=, :evaluate_result=
    undef_method :evaluate_result=
    
    class_module.module_eval {
      const_set_lazy(:ERROR_ID) { "org.eclipse.swt.browser.error" }
      const_attr_reader  :ERROR_ID
      
      # $NON-NLS-1$
      const_set_lazy(:EXECUTE_ID) { "SWTExecuteTemporaryFunction" }
      const_attr_reader  :EXECUTE_ID
      
      # $NON-NLS-1$
      
      def cookie_name
        defined?(@@cookie_name) ? @@cookie_name : @@cookie_name= nil
      end
      alias_method :attr_cookie_name, :cookie_name
      
      def cookie_name=(value)
        @@cookie_name = value
      end
      alias_method :attr_cookie_name=, :cookie_name=
      
      
      def cookie_value
        defined?(@@cookie_value) ? @@cookie_value : @@cookie_value= nil
      end
      alias_method :attr_cookie_value, :cookie_value
      
      def cookie_value=(value)
        @@cookie_value = value
      end
      alias_method :attr_cookie_value=, :cookie_value=
      
      
      def cookie_url
        defined?(@@cookie_url) ? @@cookie_url : @@cookie_url= nil
      end
      alias_method :attr_cookie_url, :cookie_url
      
      def cookie_url=(value)
        @@cookie_url = value
      end
      alias_method :attr_cookie_url=, :cookie_url=
      
      
      def cookie_result
        defined?(@@cookie_result) ? @@cookie_result : @@cookie_result= false
      end
      alias_method :attr_cookie_result, :cookie_result
      
      def cookie_result=(value)
        @@cookie_result = value
      end
      alias_method :attr_cookie_result=, :cookie_result=
      
      
      def mozilla_clear_sessions
        defined?(@@mozilla_clear_sessions) ? @@mozilla_clear_sessions : @@mozilla_clear_sessions= nil
      end
      alias_method :attr_mozilla_clear_sessions, :mozilla_clear_sessions
      
      def mozilla_clear_sessions=(value)
        @@mozilla_clear_sessions = value
      end
      alias_method :attr_mozilla_clear_sessions=, :mozilla_clear_sessions=
      
      
      def native_clear_sessions
        defined?(@@native_clear_sessions) ? @@native_clear_sessions : @@native_clear_sessions= nil
      end
      alias_method :attr_native_clear_sessions, :native_clear_sessions
      
      def native_clear_sessions=(value)
        @@native_clear_sessions = value
      end
      alias_method :attr_native_clear_sessions=, :native_clear_sessions=
      
      
      def mozilla_get_cookie
        defined?(@@mozilla_get_cookie) ? @@mozilla_get_cookie : @@mozilla_get_cookie= nil
      end
      alias_method :attr_mozilla_get_cookie, :mozilla_get_cookie
      
      def mozilla_get_cookie=(value)
        @@mozilla_get_cookie = value
      end
      alias_method :attr_mozilla_get_cookie=, :mozilla_get_cookie=
      
      
      def native_get_cookie
        defined?(@@native_get_cookie) ? @@native_get_cookie : @@native_get_cookie= nil
      end
      alias_method :attr_native_get_cookie, :native_get_cookie
      
      def native_get_cookie=(value)
        @@native_get_cookie = value
      end
      alias_method :attr_native_get_cookie=, :native_get_cookie=
      
      
      def mozilla_set_cookie
        defined?(@@mozilla_set_cookie) ? @@mozilla_set_cookie : @@mozilla_set_cookie= nil
      end
      alias_method :attr_mozilla_set_cookie, :mozilla_set_cookie
      
      def mozilla_set_cookie=(value)
        @@mozilla_set_cookie = value
      end
      alias_method :attr_mozilla_set_cookie=, :mozilla_set_cookie=
      
      
      def native_set_cookie
        defined?(@@native_set_cookie) ? @@native_set_cookie : @@native_set_cookie= nil
      end
      alias_method :attr_native_set_cookie, :native_set_cookie
      
      def native_set_cookie=(value)
        @@native_set_cookie = value
      end
      alias_method :attr_native_set_cookie=, :native_set_cookie=
      
      # Key Mappings
      # Keyboard and Mouse Masks
      # Literal Keys
      # Non-Numeric Keypad Keys
      # Virtual and Ascii Keys
      # Functions Keys
      # Numeric Keypad Keys
      # Other keys
      # Safari-specific
      const_set_lazy(:KeyTable) { Array.typed(Array.typed(::Java::Int)).new([Array.typed(::Java::Int).new([18, SWT::ALT]), Array.typed(::Java::Int).new([16, SWT::SHIFT]), Array.typed(::Java::Int).new([17, SWT::CONTROL]), Array.typed(::Java::Int).new([224, SWT::COMMAND]), Array.typed(::Java::Int).new([65, Character.new(?a.ord)]), Array.typed(::Java::Int).new([66, Character.new(?b.ord)]), Array.typed(::Java::Int).new([67, Character.new(?c.ord)]), Array.typed(::Java::Int).new([68, Character.new(?d.ord)]), Array.typed(::Java::Int).new([69, Character.new(?e.ord)]), Array.typed(::Java::Int).new([70, Character.new(?f.ord)]), Array.typed(::Java::Int).new([71, Character.new(?g.ord)]), Array.typed(::Java::Int).new([72, Character.new(?h.ord)]), Array.typed(::Java::Int).new([73, Character.new(?i.ord)]), Array.typed(::Java::Int).new([74, Character.new(?j.ord)]), Array.typed(::Java::Int).new([75, Character.new(?k.ord)]), Array.typed(::Java::Int).new([76, Character.new(?l.ord)]), Array.typed(::Java::Int).new([77, Character.new(?m.ord)]), Array.typed(::Java::Int).new([78, Character.new(?n.ord)]), Array.typed(::Java::Int).new([79, Character.new(?o.ord)]), Array.typed(::Java::Int).new([80, Character.new(?p.ord)]), Array.typed(::Java::Int).new([81, Character.new(?q.ord)]), Array.typed(::Java::Int).new([82, Character.new(?r.ord)]), Array.typed(::Java::Int).new([83, Character.new(?s.ord)]), Array.typed(::Java::Int).new([84, Character.new(?t.ord)]), Array.typed(::Java::Int).new([85, Character.new(?u.ord)]), Array.typed(::Java::Int).new([86, Character.new(?v.ord)]), Array.typed(::Java::Int).new([87, Character.new(?w.ord)]), Array.typed(::Java::Int).new([88, Character.new(?x.ord)]), Array.typed(::Java::Int).new([89, Character.new(?y.ord)]), Array.typed(::Java::Int).new([90, Character.new(?z.ord)]), Array.typed(::Java::Int).new([48, Character.new(?0.ord)]), Array.typed(::Java::Int).new([49, Character.new(?1.ord)]), Array.typed(::Java::Int).new([50, Character.new(?2.ord)]), Array.typed(::Java::Int).new([51, Character.new(?3.ord)]), Array.typed(::Java::Int).new([52, Character.new(?4.ord)]), Array.typed(::Java::Int).new([53, Character.new(?5.ord)]), Array.typed(::Java::Int).new([54, Character.new(?6.ord)]), Array.typed(::Java::Int).new([55, Character.new(?7.ord)]), Array.typed(::Java::Int).new([56, Character.new(?8.ord)]), Array.typed(::Java::Int).new([57, Character.new(?9.ord)]), Array.typed(::Java::Int).new([32, Character.new(?\s.ord)]), Array.typed(::Java::Int).new([59, Character.new(?;.ord)]), Array.typed(::Java::Int).new([61, Character.new(?=.ord)]), Array.typed(::Java::Int).new([188, Character.new(?,.ord)]), Array.typed(::Java::Int).new([190, Character.new(?..ord)]), Array.typed(::Java::Int).new([191, Character.new(?/.ord)]), Array.typed(::Java::Int).new([219, Character.new(?[.ord)]), Array.typed(::Java::Int).new([221, Character.new(?].ord)]), Array.typed(::Java::Int).new([222, Character.new(?\'.ord)]), Array.typed(::Java::Int).new([192, Character.new(?`.ord)]), Array.typed(::Java::Int).new([220, Character.new(?\\.ord)]), Array.typed(::Java::Int).new([108, Character.new(?|.ord)]), Array.typed(::Java::Int).new([37, SWT::ARROW_LEFT]), Array.typed(::Java::Int).new([39, SWT::ARROW_RIGHT]), Array.typed(::Java::Int).new([38, SWT::ARROW_UP]), Array.typed(::Java::Int).new([40, SWT::ARROW_DOWN]), Array.typed(::Java::Int).new([45, SWT::INSERT]), Array.typed(::Java::Int).new([36, SWT::HOME]), Array.typed(::Java::Int).new([35, SWT::END_]), Array.typed(::Java::Int).new([46, SWT::DEL]), Array.typed(::Java::Int).new([33, SWT::PAGE_UP]), Array.typed(::Java::Int).new([34, SWT::PAGE_DOWN]), Array.typed(::Java::Int).new([8, SWT::BS]), Array.typed(::Java::Int).new([13, SWT::CR]), Array.typed(::Java::Int).new([9, SWT::TAB]), Array.typed(::Java::Int).new([27, SWT::ESC]), Array.typed(::Java::Int).new([12, SWT::DEL]), Array.typed(::Java::Int).new([112, SWT::F1]), Array.typed(::Java::Int).new([113, SWT::F2]), Array.typed(::Java::Int).new([114, SWT::F3]), Array.typed(::Java::Int).new([115, SWT::F4]), Array.typed(::Java::Int).new([116, SWT::F5]), Array.typed(::Java::Int).new([117, SWT::F6]), Array.typed(::Java::Int).new([118, SWT::F7]), Array.typed(::Java::Int).new([119, SWT::F8]), Array.typed(::Java::Int).new([120, SWT::F9]), Array.typed(::Java::Int).new([121, SWT::F10]), Array.typed(::Java::Int).new([122, SWT::F11]), Array.typed(::Java::Int).new([123, SWT::F12]), Array.typed(::Java::Int).new([124, SWT::F13]), Array.typed(::Java::Int).new([125, SWT::F14]), Array.typed(::Java::Int).new([126, SWT::F15]), Array.typed(::Java::Int).new([127, 0]), Array.typed(::Java::Int).new([128, 0]), Array.typed(::Java::Int).new([129, 0]), Array.typed(::Java::Int).new([130, 0]), Array.typed(::Java::Int).new([131, 0]), Array.typed(::Java::Int).new([132, 0]), Array.typed(::Java::Int).new([133, 0]), Array.typed(::Java::Int).new([134, 0]), Array.typed(::Java::Int).new([135, 0]), Array.typed(::Java::Int).new([96, SWT::KEYPAD_0]), Array.typed(::Java::Int).new([97, SWT::KEYPAD_1]), Array.typed(::Java::Int).new([98, SWT::KEYPAD_2]), Array.typed(::Java::Int).new([99, SWT::KEYPAD_3]), Array.typed(::Java::Int).new([100, SWT::KEYPAD_4]), Array.typed(::Java::Int).new([101, SWT::KEYPAD_5]), Array.typed(::Java::Int).new([102, SWT::KEYPAD_6]), Array.typed(::Java::Int).new([103, SWT::KEYPAD_7]), Array.typed(::Java::Int).new([104, SWT::KEYPAD_8]), Array.typed(::Java::Int).new([105, SWT::KEYPAD_9]), Array.typed(::Java::Int).new([14, SWT::KEYPAD_CR]), Array.typed(::Java::Int).new([107, SWT::KEYPAD_ADD]), Array.typed(::Java::Int).new([109, SWT::KEYPAD_SUBTRACT]), Array.typed(::Java::Int).new([106, SWT::KEYPAD_MULTIPLY]), Array.typed(::Java::Int).new([111, SWT::KEYPAD_DIVIDE]), Array.typed(::Java::Int).new([110, SWT::KEYPAD_DECIMAL]), Array.typed(::Java::Int).new([20, SWT::CAPS_LOCK]), Array.typed(::Java::Int).new([144, SWT::NUM_LOCK]), Array.typed(::Java::Int).new([145, SWT::SCROLL_LOCK]), Array.typed(::Java::Int).new([44, SWT::PRINT_SCREEN]), Array.typed(::Java::Int).new([6, SWT::HELP]), Array.typed(::Java::Int).new([19, SWT::PAUSE]), Array.typed(::Java::Int).new([3, SWT::BREAK]), Array.typed(::Java::Int).new([186, Character.new(?;.ord)]), Array.typed(::Java::Int).new([187, Character.new(?=.ord)]), Array.typed(::Java::Int).new([189, Character.new(?-.ord)]), ]) }
      const_attr_reader  :KeyTable
      
      const_set_lazy(:EvaluateFunction) { Class.new(BrowserFunction) do
        local_class_in WebBrowser
        include_class_members WebBrowser
        
        typesig { [class_self::Browser, String] }
        def initialize(browser, name)
          super(browser, name, false)
        end
        
        typesig { [Array.typed(Object)] }
        def function(arguments)
          if (arguments[0].is_a?(String))
            string = arguments[0]
            if (string.starts_with(ERROR_ID))
              error_string = _extract_error(string)
              if (error_string.length > 0)
                self.attr_evaluate_result = self.class::SWTException.new(SWT::ERROR_FAILED_EVALUATE, error_string)
              else
                self.attr_evaluate_result = self.class::SWTException.new(SWT::ERROR_FAILED_EVALUATE)
              end
              return nil
            end
          end
          self.attr_evaluate_result = arguments[0]
          return nil
        end
        
        private
        alias_method :initialize__evaluate_function, :initialize
      end }
    }
    
    typesig { [AuthenticationListener] }
    def add_authentication_listener(listener)
      new_authentication_listeners = Array.typed(AuthenticationListener).new(@authentication_listeners.attr_length + 1) { nil }
      System.arraycopy(@authentication_listeners, 0, new_authentication_listeners, 0, @authentication_listeners.attr_length)
      @authentication_listeners = new_authentication_listeners
      @authentication_listeners[@authentication_listeners.attr_length - 1] = listener
    end
    
    typesig { [CloseWindowListener] }
    def add_close_window_listener(listener)
      new_close_window_listeners = Array.typed(CloseWindowListener).new(@close_window_listeners.attr_length + 1) { nil }
      System.arraycopy(@close_window_listeners, 0, new_close_window_listeners, 0, @close_window_listeners.attr_length)
      @close_window_listeners = new_close_window_listeners
      @close_window_listeners[@close_window_listeners.attr_length - 1] = listener
    end
    
    typesig { [LocationListener] }
    def add_location_listener(listener)
      new_location_listeners = Array.typed(LocationListener).new(@location_listeners.attr_length + 1) { nil }
      System.arraycopy(@location_listeners, 0, new_location_listeners, 0, @location_listeners.attr_length)
      @location_listeners = new_location_listeners
      @location_listeners[@location_listeners.attr_length - 1] = listener
    end
    
    typesig { [OpenWindowListener] }
    def add_open_window_listener(listener)
      new_open_window_listeners = Array.typed(OpenWindowListener).new(@open_window_listeners.attr_length + 1) { nil }
      System.arraycopy(@open_window_listeners, 0, new_open_window_listeners, 0, @open_window_listeners.attr_length)
      @open_window_listeners = new_open_window_listeners
      @open_window_listeners[@open_window_listeners.attr_length - 1] = listener
    end
    
    typesig { [ProgressListener] }
    def add_progress_listener(listener)
      new_progress_listeners = Array.typed(ProgressListener).new(@progress_listeners.attr_length + 1) { nil }
      System.arraycopy(@progress_listeners, 0, new_progress_listeners, 0, @progress_listeners.attr_length)
      @progress_listeners = new_progress_listeners
      @progress_listeners[@progress_listeners.attr_length - 1] = listener
    end
    
    typesig { [StatusTextListener] }
    def add_status_text_listener(listener)
      new_status_text_listeners = Array.typed(StatusTextListener).new(@status_text_listeners.attr_length + 1) { nil }
      System.arraycopy(@status_text_listeners, 0, new_status_text_listeners, 0, @status_text_listeners.attr_length)
      @status_text_listeners = new_status_text_listeners
      @status_text_listeners[@status_text_listeners.attr_length - 1] = listener
    end
    
    typesig { [TitleListener] }
    def add_title_listener(listener)
      new_title_listeners = Array.typed(TitleListener).new(@title_listeners.attr_length + 1) { nil }
      System.arraycopy(@title_listeners, 0, new_title_listeners, 0, @title_listeners.attr_length)
      @title_listeners = new_title_listeners
      @title_listeners[@title_listeners.attr_length - 1] = listener
    end
    
    typesig { [VisibilityWindowListener] }
    def add_visibility_window_listener(listener)
      new_visibility_window_listeners = Array.typed(VisibilityWindowListener).new(@visibility_window_listeners.attr_length + 1) { nil }
      System.arraycopy(@visibility_window_listeners, 0, new_visibility_window_listeners, 0, @visibility_window_listeners.attr_length)
      @visibility_window_listeners = new_visibility_window_listeners
      @visibility_window_listeners[@visibility_window_listeners.attr_length - 1] = listener
    end
    
    typesig { [] }
    def back
      raise NotImplementedError
    end
    
    class_module.module_eval {
      typesig { [] }
      def clear_sessions
        if (!(self.attr_native_clear_sessions).nil?)
          self.attr_native_clear_sessions.run
        end
        if (!(self.attr_mozilla_clear_sessions).nil?)
          self.attr_mozilla_clear_sessions.run
        end
      end
      
      typesig { [String, String] }
      def _get_cookie(name, url)
        self.attr_cookie_name = name
        self.attr_cookie_url = url
        if (!(self.attr_native_get_cookie).nil?)
          self.attr_native_get_cookie.run
        end
        if (!(self.attr_mozilla_get_cookie).nil?)
          self.attr_mozilla_get_cookie.run
        end
        result = self.attr_cookie_value
        self.attr_cookie_name = RJava.cast_to_string(self.attr_cookie_value = RJava.cast_to_string(self.attr_cookie_url = RJava.cast_to_string(nil)))
        return result
      end
      
      typesig { [String, String] }
      def _set_cookie(value, url)
        self.attr_cookie_value = value
        self.attr_cookie_url = url
        self.attr_cookie_result = false
        if (!(self.attr_native_set_cookie).nil?)
          self.attr_native_set_cookie.run
        end
        if (!(self.attr_mozilla_set_cookie).nil?)
          self.attr_mozilla_set_cookie.run
        end
        self.attr_cookie_value = RJava.cast_to_string(self.attr_cookie_url = RJava.cast_to_string(nil))
        return self.attr_cookie_result
      end
    }
    
    typesig { [Composite, ::Java::Int] }
    def create(parent, style)
      raise NotImplementedError
    end
    
    class_module.module_eval {
      typesig { [String] }
      def _create_error_string(error)
        return ERROR_ID + error
      end
      
      typesig { [String] }
      def _extract_error(error)
        return error.substring(ERROR_ID.length)
      end
    }
    
    typesig { [BrowserFunction] }
    def create_function(function)
      # If an existing function with the same name is found then
      # remove it so that it is not recreated on subsequent pages
      # (the new function overwrites the old one).
      keys_ = @functions.keys
      while (keys_.has_more_elements)
        key = keys_.next_element
        current = @functions.get(key)
        if ((current.attr_name == function.attr_name))
          @functions.remove(key)
          break
        end
      end
      function.attr_index = get_next_function_index
      register_function(function)
      buffer = StringBuffer.new("window.") # $NON-NLS-1$
      buffer.append(function.attr_name)
      buffer.append(" = function ") # $NON-NLS-1$
      buffer.append(function.attr_name)
      buffer.append("() {var result = window.external.callJava(") # $NON-NLS-1$
      buffer.append(function.attr_index)
      buffer.append(",Array.prototype.slice.call(arguments)); if (typeof result == 'string' && result.indexOf('") # $NON-NLS-1$
      buffer.append(ERROR_ID)
      buffer.append("') == 0) {var error = new Error(result.substring(") # $NON-NLS-1$
      buffer.append(ERROR_ID.length)
      buffer.append(")); throw error;} return result;};") # $NON-NLS-1$
      buffer.append("for (var i = 0; i < frames.length; i++) {try { frames[i].") # $NON-NLS-1$
      buffer.append(function.attr_name)
      buffer.append(" = window.") # $NON-NLS-1$
      buffer.append(function.attr_name)
      buffer.append(";} catch (e) {} };") # $NON-NLS-1$
      function.attr_function_string = buffer.to_s
      execute(function.attr_function_string)
    end
    
    typesig { [BrowserFunction] }
    def deregister_function(function)
      @functions.remove(function.attr_index)
    end
    
    typesig { [BrowserFunction] }
    def destroy_function(function)
      delete_string = get_delete_function_string(function.attr_name)
      buffer = StringBuffer.new("for (var i = 0; i < frames.length; i++) {try {frames[i].eval(\"") # $NON-NLS-1$
      buffer.append(delete_string)
      buffer.append("\");} catch (e) {}}") # $NON-NLS-1$
      execute(buffer.to_s)
      execute(delete_string)
      deregister_function(function)
    end
    
    typesig { [String] }
    def execute(script)
      raise NotImplementedError
    end
    
    typesig { [String] }
    def evaluate(script)
      function = EvaluateFunction.new_local(self, @browser, "") # $NON-NLS-1$
      index = get_next_function_index
      function.attr_index = index
      function.attr_is_evaluate = true
      register_function(function)
      function_name = EXECUTE_ID + RJava.cast_to_string(index)
      buffer = StringBuffer.new("window.") # $NON-NLS-1$
      buffer.append(function_name)
      buffer.append(" = function ") # $NON-NLS-1$
      buffer.append(function_name)
      buffer.append("() {\n") # $NON-NLS-1$
      buffer.append(script)
      buffer.append("\n};") # $NON-NLS-1$
      execute(buffer.to_s)
      buffer = StringBuffer.new("if (window.") # $NON-NLS-1$
      buffer.append(function_name)
      buffer.append(" == undefined) {window.external.callJava(") # $NON-NLS-1$
      buffer.append(index)
      buffer.append(", ['") # $NON-NLS-1$
      buffer.append(ERROR_ID)
      buffer.append("']);} else {try {var result = ") # $NON-NLS-1$
      buffer.append(function_name)
      buffer.append("(); window.external.callJava(") # $NON-NLS-1$
      buffer.append(index)
      buffer.append(", [result]);} catch (e) {window.external.callJava(") # $NON-NLS-1$
      buffer.append(index)
      buffer.append(", ['") # $NON-NLS-1$
      buffer.append(ERROR_ID)
      buffer.append("' + e.message]);}}") # $NON-NLS-1$
      execute(buffer.to_s)
      execute(get_delete_function_string(function_name))
      deregister_function(function)
      result = @evaluate_result
      @evaluate_result = nil
      if (result.is_a?(SWTException))
        raise result
      end
      return result
    end
    
    typesig { [] }
    def forward
      raise NotImplementedError
    end
    
    typesig { [] }
    def get_browser_type
      raise NotImplementedError
    end
    
    typesig { [String] }
    def get_delete_function_string(function_name)
      return "delete window." + function_name # $NON-NLS-1$
    end
    
    typesig { [] }
    def get_next_function_index
      return ((@next_function_index += 1) - 1)
    end
    
    typesig { [] }
    def get_text
      raise NotImplementedError
    end
    
    typesig { [] }
    def get_url
      raise NotImplementedError
    end
    
    typesig { [] }
    def get_web_browser
      return nil
    end
    
    typesig { [] }
    def is_back_enabled
      raise NotImplementedError
    end
    
    typesig { [] }
    def is_focus_control
      return false
    end
    
    typesig { [] }
    def is_forward_enabled
      raise NotImplementedError
    end
    
    typesig { [] }
    def refresh
      raise NotImplementedError
    end
    
    typesig { [BrowserFunction] }
    def register_function(function)
      @functions.put(function.attr_index, function)
    end
    
    typesig { [AuthenticationListener] }
    def remove_authentication_listener(listener)
      if ((@authentication_listeners.attr_length).equal?(0))
        return
      end
      index = -1
      i = 0
      while i < @authentication_listeners.attr_length
        if ((listener).equal?(@authentication_listeners[i]))
          index = i
          break
        end
        i += 1
      end
      if ((index).equal?(-1))
        return
      end
      if ((@authentication_listeners.attr_length).equal?(1))
        @authentication_listeners = Array.typed(AuthenticationListener).new(0) { nil }
        return
      end
      new_authentication_listeners = Array.typed(AuthenticationListener).new(@authentication_listeners.attr_length - 1) { nil }
      System.arraycopy(@authentication_listeners, 0, new_authentication_listeners, 0, index)
      System.arraycopy(@authentication_listeners, index + 1, new_authentication_listeners, index, @authentication_listeners.attr_length - index - 1)
      @authentication_listeners = new_authentication_listeners
    end
    
    typesig { [CloseWindowListener] }
    def remove_close_window_listener(listener)
      if ((@close_window_listeners.attr_length).equal?(0))
        return
      end
      index = -1
      i = 0
      while i < @close_window_listeners.attr_length
        if ((listener).equal?(@close_window_listeners[i]))
          index = i
          break
        end
        i += 1
      end
      if ((index).equal?(-1))
        return
      end
      if ((@close_window_listeners.attr_length).equal?(1))
        @close_window_listeners = Array.typed(CloseWindowListener).new(0) { nil }
        return
      end
      new_close_window_listeners = Array.typed(CloseWindowListener).new(@close_window_listeners.attr_length - 1) { nil }
      System.arraycopy(@close_window_listeners, 0, new_close_window_listeners, 0, index)
      System.arraycopy(@close_window_listeners, index + 1, new_close_window_listeners, index, @close_window_listeners.attr_length - index - 1)
      @close_window_listeners = new_close_window_listeners
    end
    
    typesig { [LocationListener] }
    def remove_location_listener(listener)
      if ((@location_listeners.attr_length).equal?(0))
        return
      end
      index = -1
      i = 0
      while i < @location_listeners.attr_length
        if ((listener).equal?(@location_listeners[i]))
          index = i
          break
        end
        i += 1
      end
      if ((index).equal?(-1))
        return
      end
      if ((@location_listeners.attr_length).equal?(1))
        @location_listeners = Array.typed(LocationListener).new(0) { nil }
        return
      end
      new_location_listeners = Array.typed(LocationListener).new(@location_listeners.attr_length - 1) { nil }
      System.arraycopy(@location_listeners, 0, new_location_listeners, 0, index)
      System.arraycopy(@location_listeners, index + 1, new_location_listeners, index, @location_listeners.attr_length - index - 1)
      @location_listeners = new_location_listeners
    end
    
    typesig { [OpenWindowListener] }
    def remove_open_window_listener(listener)
      if ((@open_window_listeners.attr_length).equal?(0))
        return
      end
      index = -1
      i = 0
      while i < @open_window_listeners.attr_length
        if ((listener).equal?(@open_window_listeners[i]))
          index = i
          break
        end
        i += 1
      end
      if ((index).equal?(-1))
        return
      end
      if ((@open_window_listeners.attr_length).equal?(1))
        @open_window_listeners = Array.typed(OpenWindowListener).new(0) { nil }
        return
      end
      new_open_window_listeners = Array.typed(OpenWindowListener).new(@open_window_listeners.attr_length - 1) { nil }
      System.arraycopy(@open_window_listeners, 0, new_open_window_listeners, 0, index)
      System.arraycopy(@open_window_listeners, index + 1, new_open_window_listeners, index, @open_window_listeners.attr_length - index - 1)
      @open_window_listeners = new_open_window_listeners
    end
    
    typesig { [ProgressListener] }
    def remove_progress_listener(listener)
      if ((@progress_listeners.attr_length).equal?(0))
        return
      end
      index = -1
      i = 0
      while i < @progress_listeners.attr_length
        if ((listener).equal?(@progress_listeners[i]))
          index = i
          break
        end
        i += 1
      end
      if ((index).equal?(-1))
        return
      end
      if ((@progress_listeners.attr_length).equal?(1))
        @progress_listeners = Array.typed(ProgressListener).new(0) { nil }
        return
      end
      new_progress_listeners = Array.typed(ProgressListener).new(@progress_listeners.attr_length - 1) { nil }
      System.arraycopy(@progress_listeners, 0, new_progress_listeners, 0, index)
      System.arraycopy(@progress_listeners, index + 1, new_progress_listeners, index, @progress_listeners.attr_length - index - 1)
      @progress_listeners = new_progress_listeners
    end
    
    typesig { [StatusTextListener] }
    def remove_status_text_listener(listener)
      if ((@status_text_listeners.attr_length).equal?(0))
        return
      end
      index = -1
      i = 0
      while i < @status_text_listeners.attr_length
        if ((listener).equal?(@status_text_listeners[i]))
          index = i
          break
        end
        i += 1
      end
      if ((index).equal?(-1))
        return
      end
      if ((@status_text_listeners.attr_length).equal?(1))
        @status_text_listeners = Array.typed(StatusTextListener).new(0) { nil }
        return
      end
      new_status_text_listeners = Array.typed(StatusTextListener).new(@status_text_listeners.attr_length - 1) { nil }
      System.arraycopy(@status_text_listeners, 0, new_status_text_listeners, 0, index)
      System.arraycopy(@status_text_listeners, index + 1, new_status_text_listeners, index, @status_text_listeners.attr_length - index - 1)
      @status_text_listeners = new_status_text_listeners
    end
    
    typesig { [TitleListener] }
    def remove_title_listener(listener)
      if ((@title_listeners.attr_length).equal?(0))
        return
      end
      index = -1
      i = 0
      while i < @title_listeners.attr_length
        if ((listener).equal?(@title_listeners[i]))
          index = i
          break
        end
        i += 1
      end
      if ((index).equal?(-1))
        return
      end
      if ((@title_listeners.attr_length).equal?(1))
        @title_listeners = Array.typed(TitleListener).new(0) { nil }
        return
      end
      new_title_listeners = Array.typed(TitleListener).new(@title_listeners.attr_length - 1) { nil }
      System.arraycopy(@title_listeners, 0, new_title_listeners, 0, index)
      System.arraycopy(@title_listeners, index + 1, new_title_listeners, index, @title_listeners.attr_length - index - 1)
      @title_listeners = new_title_listeners
    end
    
    typesig { [VisibilityWindowListener] }
    def remove_visibility_window_listener(listener)
      if ((@visibility_window_listeners.attr_length).equal?(0))
        return
      end
      index = -1
      i = 0
      while i < @visibility_window_listeners.attr_length
        if ((listener).equal?(@visibility_window_listeners[i]))
          index = i
          break
        end
        i += 1
      end
      if ((index).equal?(-1))
        return
      end
      if ((@visibility_window_listeners.attr_length).equal?(1))
        @visibility_window_listeners = Array.typed(VisibilityWindowListener).new(0) { nil }
        return
      end
      new_visibility_window_listeners = Array.typed(VisibilityWindowListener).new(@visibility_window_listeners.attr_length - 1) { nil }
      System.arraycopy(@visibility_window_listeners, 0, new_visibility_window_listeners, 0, index)
      System.arraycopy(@visibility_window_listeners, index + 1, new_visibility_window_listeners, index, @visibility_window_listeners.attr_length - index - 1)
      @visibility_window_listeners = new_visibility_window_listeners
    end
    
    typesig { [Browser] }
    def set_browser(browser)
      @browser = browser
    end
    
    typesig { [String] }
    def set_text(html)
      raise NotImplementedError
    end
    
    typesig { [String] }
    def set_url(url)
      raise NotImplementedError
    end
    
    typesig { [] }
    def stop
      raise NotImplementedError
    end
    
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
    
    typesig { [] }
    def initialize
      @browser = nil
      @functions = Hashtable.new
      @authentication_listeners = Array.typed(AuthenticationListener).new(0) { nil }
      @close_window_listeners = Array.typed(CloseWindowListener).new(0) { nil }
      @location_listeners = Array.typed(LocationListener).new(0) { nil }
      @open_window_listeners = Array.typed(OpenWindowListener).new(0) { nil }
      @progress_listeners = Array.typed(ProgressListener).new(0) { nil }
      @status_text_listeners = Array.typed(StatusTextListener).new(0) { nil }
      @title_listeners = Array.typed(TitleListener).new(0) { nil }
      @visibility_window_listeners = Array.typed(VisibilityWindowListener).new(0) { nil }
      @js_enabled = true
      @js_enabled_changed = false
      @next_function_index = 1
      @evaluate_result = nil
    end
    
    private
    alias_method :initialize__web_browser, :initialize
  end
  
end
