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
  module LinkImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # int traversalCode (int key, int theEvent) {
  # if (offsets.length == 0) return 0;
  # int bits = super.traversalCode (key, theEvent);
  # if (key == 48 /* Tab */ && theEvent != 0) {
  # int [] modifiers = new int [1];
  # OS.GetEventParameter (theEvent, OS.kEventParamKeyModifiers, OS.typeUInt32, null, 4, null, modifiers);
  # boolean next = (modifiers [0] & OS.shiftKey) == 0;
  # if (next && focusIndex < offsets.length - 1) {
  # return bits & ~ SWT.TRAVERSE_TAB_NEXT;
  # }
  # if (!next && focusIndex > 0) {
  # return bits & ~ SWT.TRAVERSE_TAB_PREVIOUS;
  # }
  # }
  # return bits;
  # }
  # 
  # Instances of this class represent a selectable
  # user interface object that displays a text with
  # links.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#link">Link snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.1
  # @noextend This class is not intended to be subclassed by clients.
  class Link < LinkImports.const_get :Control
    include_class_members LinkImports
    
    attr_accessor :scroll_view
    alias_method :attr_scroll_view, :scroll_view
    undef_method :scroll_view
    alias_method :attr_scroll_view=, :scroll_view=
    undef_method :scroll_view=
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :offsets
    alias_method :attr_offsets, :offsets
    undef_method :offsets
    alias_method :attr_offsets=, :offsets=
    undef_method :offsets=
    
    attr_accessor :selection
    alias_method :attr_selection, :selection
    undef_method :selection
    alias_method :attr_selection=, :selection=
    undef_method :selection=
    
    attr_accessor :ids
    alias_method :attr_ids, :ids
    undef_method :ids
    alias_method :attr_ids=, :ids=
    undef_method :ids=
    
    attr_accessor :mnemonics
    alias_method :attr_mnemonics, :mnemonics
    undef_method :mnemonics
    alias_method :attr_mnemonics=, :mnemonics=
    undef_method :mnemonics=
    
    attr_accessor :link_color
    alias_method :attr_link_color, :link_color
    undef_method :link_color
    alias_method :attr_link_color=, :link_color=
    undef_method :link_color=
    
    typesig { [Composite, ::Java::Int] }
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
    # @param parent a composite control which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @scroll_view = nil
      @text = nil
      @offsets = nil
      @selection = nil
      @ids = nil
      @mnemonics = nil
      @link_color = nil
      super(parent, style)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the control is selected by the user.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #removeSelectionListener
    # @see SelectionEvent
    def add_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Selection, typed_listener)
      add_listener(SWT::DefaultSelection, typed_listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def text_view_click_on_link_at_index(id, sel, text_view, link, char_index)
      str = NSString.new(link)
      event = Event.new
      event.attr_text = str.get_string
      send_event___org_eclipse_swt_widgets_link_1(SWT::Selection, event)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      width = 0
      height = 0
      # TODO wrapping, wHint
      border_style = has_border ? OS::NSBezelBorder : OS::NSNoBorder
      border_size = NSScrollView.frame_size_for_content_size(NSSize.new, false, false, border_style)
      widget = self.attr_view
      size = widget.text_storage.size
      width = RJava.cast_to_int((size.attr_width + border_size.attr_width))
      height = RJava.cast_to_int((size.attr_height + border_size.attr_height))
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      border = get_border_width
      width += border * 2
      height += border * 2
      # TODO is this true?  if so, can this rounding be turned off?
      # 
      # Bug in Cocoa.  NSTextStorage.size() seems to return a width
      # value that is rounded down, because its result is never
      # fractional.  The workaround is to increment width by 1
      # to ensure that it is wide enough to show the full text.
      width += 1
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      self.attr_state |= THEME_BACKGROUND
      scroll_widget = SWTScrollView.new.alloc
      scroll_widget.init
      scroll_widget.set_draws_background(false)
      scroll_widget.set_border_type(has_border ? OS::NSBezelBorder : OS::NSNoBorder)
      widget = SWTTextView.new.alloc
      widget.init
      widget.set_editable(false)
      widget.set_draws_background(false)
      widget.set_delegate(widget)
      widget.set_autoresizing_mask(OS::NSViewWidthSizable | OS::NSViewHeightSizable)
      widget.text_container.set_line_fragment_padding(0)
      @scroll_view = scroll_widget
      self.attr_view = widget
    end
    
    typesig { [] }
    def create_widget
      super
      @text = ""
      dict = (self.attr_view).link_text_attributes
      @link_color = NSColor.new(dict.value_for_key(OS::NSForegroundColorAttributeName))
    end
    
    typesig { [] }
    def default_nsfont
      return self.attr_display.attr_text_view_font
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@scroll_view).nil?)
        self.attr_display.remove_widget(@scroll_view)
      end
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      ns_color = nil
      if (enabled)
        if ((self.attr_foreground).nil?)
          ns_color = NSColor.text_color
        else
          ns_color = NSColor.color_with_device_red(self.attr_foreground[0], self.attr_foreground[1], self.attr_foreground[2], self.attr_foreground[3])
        end
      else
        ns_color = NSColor.disabled_control_text_color
      end
      widget = self.attr_view
      widget.set_text_color(ns_color)
      link_text_attributes_ = widget.link_text_attributes
      # 64
      count_ = RJava.cast_to_int(link_text_attributes_.count)
      dict = NSMutableDictionary.dictionary_with_capacity(count_)
      dict.set_dictionary(link_text_attributes_)
      dict.set_value(enabled ? @link_color : ns_color, OS::NSForegroundColorAttributeName)
      widget.set_link_text_attributes(dict)
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [] }
    # Returns the receiver's text, which will be an empty
    # string if it has never been set.
    # 
    # @return the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      return @text
    end
    
    typesig { [] }
    def register
      super
      if (!(@scroll_view).nil?)
        self.attr_display.add_widget(@scroll_view, self)
      end
    end
    
    typesig { [] }
    def release_widget
      super
      @offsets = nil
      @ids = nil
      @mnemonics = nil
      @text = RJava.cast_to_string(nil)
      @link_color = nil
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is selected by the user.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #addSelectionListener
    def remove_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Selection, listener)
      self.attr_event_table.unhook(SWT::DefaultSelection, listener)
    end
    
    typesig { [String] }
    def parse(string)
      length_ = string.length
      @offsets = Array.typed(Point).new(length_ / 4) { nil }
      @ids = Array.typed(String).new(length_ / 4) { nil }
      @mnemonics = Array.typed(::Java::Int).new(length_ / 4 + 1) { 0 }
      result = StringBuffer.new
      buffer = CharArray.new(length_)
      string.get_chars(0, string.length, buffer, 0)
      index = 0
      state = 0
      link_index = 0
      start = 0
      tag_start = 0
      link_start = 0
      endtag_start = 0
      ref_start = 0
      while (index < length_)
        c = Character.to_lower_case(buffer[index])
        case (state)
        when 0
          if ((c).equal?(Character.new(?<.ord)))
            tag_start = index
            state += 1
          end
        when 1
          if ((c).equal?(Character.new(?a.ord)))
            state += 1
          end
        when 2
          case (c)
          when Character.new(?h.ord)
            state = 7
          when Character.new(?>.ord)
            link_start = index + 1
            state += 1
          else
            if (Character.is_whitespace(c))
            else
              state = 13
            end
          end
        when 3
          if ((c).equal?(Character.new(?<.ord)))
            endtag_start = index
            state += 1
          end
        when 4
          state = (c).equal?(Character.new(?/.ord)) ? state + 1 : 3
        when 5
          state = (c).equal?(Character.new(?a.ord)) ? state + 1 : 3
        when 6
          if ((c).equal?(Character.new(?>.ord)))
            @mnemonics[link_index] = parse_mnemonics(buffer, start, tag_start, result)
            offset = result.length
            parse_mnemonics(buffer, link_start, endtag_start, result)
            @offsets[link_index] = Point.new(offset, result.length - 1)
            if ((@ids[link_index]).nil?)
              @ids[link_index] = String.new(buffer, link_start, endtag_start - link_start)
            end
            link_index += 1
            start = tag_start = link_start = endtag_start = ref_start = index + 1
            state = 0
          else
            state = 3
          end
        when 7
          state = (c).equal?(Character.new(?r.ord)) ? state + 1 : 0
        when 8
          state = (c).equal?(Character.new(?e.ord)) ? state + 1 : 0
        when 9
          state = (c).equal?(Character.new(?f.ord)) ? state + 1 : 0
        when 10
          state = (c).equal?(Character.new(?=.ord)) ? state + 1 : 0
        when 11
          if ((c).equal?(Character.new(?".ord)))
            state += 1
            ref_start = index + 1
          else
            state = 0
          end
        when 12
          if ((c).equal?(Character.new(?".ord)))
            @ids[link_index] = String.new(buffer, ref_start, index - ref_start)
            state = 2
          end
        when 13
          if (Character.is_whitespace(c))
            state = 0
          else
            if ((c).equal?(Character.new(?=.ord)))
              state += 1
            end
          end
        when 14
          state = (c).equal?(Character.new(?".ord)) ? state + 1 : 0
        when 15
          if ((c).equal?(Character.new(?".ord)))
            state = 2
          end
        else
          state = 0
        end
        index += 1
      end
      if (start < length_)
        tmp = parse_mnemonics(buffer, start, tag_start, result)
        mnemonic = parse_mnemonics(buffer, Math.max(tag_start, link_start), length_, result)
        if ((mnemonic).equal?(-1))
          mnemonic = tmp
        end
        @mnemonics[link_index] = mnemonic
      else
        @mnemonics[link_index] = -1
      end
      if (!(@offsets.attr_length).equal?(link_index))
        new_offsets = Array.typed(Point).new(link_index) { nil }
        System.arraycopy(@offsets, 0, new_offsets, 0, link_index)
        @offsets = new_offsets
        new_ids = Array.typed(String).new(link_index) { nil }
        System.arraycopy(@ids, 0, new_ids, 0, link_index)
        @ids = new_ids
        new_mnemonics = Array.typed(::Java::Int).new(link_index + 1) { 0 }
        System.arraycopy(@mnemonics, 0, new_mnemonics, 0, link_index + 1)
        @mnemonics = new_mnemonics
      end
      return result.to_s
    end
    
    typesig { [Array.typed(::Java::Char), ::Java::Int, ::Java::Int, StringBuffer] }
    def parse_mnemonics(buffer, start, end_, result)
      mnemonic = -1
      index = start
      while (index < end_)
        if ((buffer[index]).equal?(Character.new(?&.ord)))
          if (index + 1 < end_ && (buffer[index + 1]).equal?(Character.new(?&.ord)))
            result.append(buffer[index])
            index += 1
          else
            mnemonic = result.length
          end
        else
          result.append(buffer[index])
        end
        index += 1
      end
      return mnemonic
    end
    
    typesig { [] }
    def update_background
      ns_color = nil
      if (!(self.attr_background_image).nil?)
        ns_color = NSColor.color_with_pattern_image(self.attr_background_image.attr_handle)
      else
        if (!(self.attr_background).nil?)
          ns_color = NSColor.color_with_device_red(self.attr_background[0], self.attr_background[1], self.attr_background[2], self.attr_background[3])
        end
      end
      set_background(ns_color)
    end
    
    typesig { [NSColor] }
    def set_background(ns_color)
      widget = self.attr_view
      if ((ns_color).nil?)
        widget.set_draws_background(false)
      else
        widget.set_draws_background(true)
        widget.set_background_color(ns_color)
      end
    end
    
    typesig { [NSFont] }
    def set_font(font)
      (self.attr_view).set_font(font)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # double
    def set_foreground(color)
      if (!get_enabled)
        return
      end
      ns_color = nil
      if ((color).nil?)
        ns_color = NSColor.text_color
      else
        ns_color = NSColor.color_with_device_red(color[0], color[1], color[2], 1)
      end
      (self.attr_view).set_text_color(ns_color)
    end
    
    typesig { [String] }
    # Sets the receiver's text.
    # <p>
    # The string can contain both regular text and hyperlinks.  A hyperlink
    # is delimited by an anchor tag, &lt;A&gt; and &lt;/A&gt;.  Within an
    # anchor, a single HREF attribute is supported.  When a hyperlink is
    # selected, the text field of the selection event contains either the
    # text of the hyperlink or the value of its HREF, if one was specified.
    # In the rare case of identical hyperlinks within the same string, the
    # HREF attribute can be used to distinguish between them.  The string may
    # include the mnemonic character and line delimiters. The only delimiter
    # the HREF attribute supports is the quotation mark (").
    # </p>
    # 
    # @param string the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((string == @text))
        return
      end
      @text = string
      widget = self.attr_view
      widget.set_string(NSString.string_with(parse(string)))
      text_storage_ = widget.text_storage
      range = NSRange.new
      i = 0
      while i < @offsets.attr_length
        range.attr_location = @offsets[i].attr_x
        range.attr_length = @offsets[i].attr_y - @offsets[i].attr_x + 1
        text_storage_.add_attribute(OS::NSLinkAttributeName, NSString.string_with(@ids[i]), range)
        i += 1
      end
    end
    
    typesig { [] }
    def set_zorder
      super
      if (!(@scroll_view).nil?)
        @scroll_view.set_document_view(self.attr_view)
      end
    end
    
    typesig { [] }
    def top_view
      return @scroll_view
    end
    
    typesig { [::Java::Boolean] }
    def update_cursor_rects(enabled)
      super(enabled)
      if ((@scroll_view).nil?)
        return
      end
      update_cursor_rects(enabled, @scroll_view)
      content_view_ = @scroll_view.content_view
      update_cursor_rects(enabled, content_view_)
      content_view_.set_document_cursor(enabled ? NSCursor._ibeam_cursor : nil)
    end
    
    private
    alias_method :initialize__link, :initialize
  end
  
end
