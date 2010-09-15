require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module StyledTextImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Java::Util
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Accessibility
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Printing
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # A StyledText is an editable user interface object that displays lines
  # of text.  The following style attributes can be defined for the text:
  # <ul>
  # <li>foreground color
  # <li>background color
  # <li>font style (bold, italic, bold-italic, regular)
  # <li>underline
  # <li>strikeout
  # </ul>
  # <p>
  # In addition to text style attributes, the background color of a line may
  # be specified.
  # </p><p>
  # There are two ways to use this widget when specifying text style information.
  # You may use the API that is defined for StyledText or you may define your own
  # LineStyleListener.  If you define your own listener, you will be responsible
  # for maintaining the text style information for the widget.  IMPORTANT: You may
  # not define your own listener and use the StyledText API.  The following
  # StyledText API is not supported if you have defined a LineStyleListener:
  # <ul>
  # <li>getStyleRangeAtOffset(int)
  # <li>getStyleRanges()
  # <li>replaceStyleRanges(int,int,StyleRange[])
  # <li>setStyleRange(StyleRange)
  # <li>setStyleRanges(StyleRange[])
  # </ul>
  # </p><p>
  # There are two ways to use this widget when specifying line background colors.
  # You may use the API that is defined for StyledText or you may define your own
  # LineBackgroundListener.  If you define your own listener, you will be responsible
  # for maintaining the line background color information for the widget.
  # IMPORTANT: You may not define your own listener and use the StyledText API.
  # The following StyledText API is not supported if you have defined a
  # LineBackgroundListener:
  # <ul>
  # <li>getLineBackground(int)
  # <li>setLineBackground(int,int,Color)
  # </ul>
  # </p><p>
  # The content implementation for this widget may also be user-defined.  To do so,
  # you must implement the StyledTextContent interface and use the StyledText API
  # setContent(StyledTextContent) to initialize the widget.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b><dd>FULL_SELECTION, MULTI, READ_ONLY, SINGLE, WRAP
  # <dt><b>Events:</b><dd>ExtendedModify, LineGetBackground, LineGetSegments, LineGetStyle, Modify, Selection, Verify, VerifyKey
  # </dl>
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#styledtext">StyledText snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Examples: CustomControlExample, TextEditor</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class StyledText < StyledTextImports.const_get :Canvas
    include_class_members StyledTextImports
    
    class_module.module_eval {
      const_set_lazy(:TAB) { Character.new(?\t.ord) }
      const_attr_reader  :TAB
      
      const_set_lazy(:PlatformLineDelimiter) { System.get_property("line.separator") }
      const_attr_reader  :PlatformLineDelimiter
      
      const_set_lazy(:BIDI_CARET_WIDTH) { 3 }
      const_attr_reader  :BIDI_CARET_WIDTH
      
      const_set_lazy(:DEFAULT_WIDTH) { 64 }
      const_attr_reader  :DEFAULT_WIDTH
      
      const_set_lazy(:DEFAULT_HEIGHT) { 64 }
      const_attr_reader  :DEFAULT_HEIGHT
      
      const_set_lazy(:V_SCROLL_RATE) { 50 }
      const_attr_reader  :V_SCROLL_RATE
      
      const_set_lazy(:H_SCROLL_RATE) { 10 }
      const_attr_reader  :H_SCROLL_RATE
      
      const_set_lazy(:ExtendedModify) { 3000 }
      const_attr_reader  :ExtendedModify
      
      const_set_lazy(:LineGetBackground) { 3001 }
      const_attr_reader  :LineGetBackground
      
      const_set_lazy(:LineGetStyle) { 3002 }
      const_attr_reader  :LineGetStyle
      
      const_set_lazy(:TextChanging) { 3003 }
      const_attr_reader  :TextChanging
      
      const_set_lazy(:TextSet) { 3004 }
      const_attr_reader  :TextSet
      
      const_set_lazy(:VerifyKey) { 3005 }
      const_attr_reader  :VerifyKey
      
      const_set_lazy(:TextChanged) { 3006 }
      const_attr_reader  :TextChanged
      
      const_set_lazy(:LineGetSegments) { 3007 }
      const_attr_reader  :LineGetSegments
      
      const_set_lazy(:PaintObject) { 3008 }
      const_attr_reader  :PaintObject
      
      const_set_lazy(:WordNext) { 3009 }
      const_attr_reader  :WordNext
      
      const_set_lazy(:WordPrevious) { 3010 }
      const_attr_reader  :WordPrevious
      
      const_set_lazy(:CaretMoved) { 3011 }
      const_attr_reader  :CaretMoved
      
      const_set_lazy(:PREVIOUS_OFFSET_TRAILING) { 0 }
      const_attr_reader  :PREVIOUS_OFFSET_TRAILING
      
      const_set_lazy(:OFFSET_LEADING) { 1 }
      const_attr_reader  :OFFSET_LEADING
    }
    
    attr_accessor :selection_background
    alias_method :attr_selection_background, :selection_background
    undef_method :selection_background
    alias_method :attr_selection_background=, :selection_background=
    undef_method :selection_background=
    
    # selection background color
    attr_accessor :selection_foreground
    alias_method :attr_selection_foreground, :selection_foreground
    undef_method :selection_foreground
    alias_method :attr_selection_foreground=, :selection_foreground=
    undef_method :selection_foreground=
    
    # selection foreground color
    attr_accessor :content
    alias_method :attr_content, :content
    undef_method :content
    alias_method :attr_content=, :content=
    undef_method :content=
    
    # native content (default or user specified)
    attr_accessor :renderer
    alias_method :attr_renderer, :renderer
    undef_method :renderer
    alias_method :attr_renderer=, :renderer=
    undef_method :renderer=
    
    attr_accessor :listener
    alias_method :attr_listener, :listener
    undef_method :listener
    alias_method :attr_listener=, :listener=
    undef_method :listener=
    
    attr_accessor :text_change_listener
    alias_method :attr_text_change_listener, :text_change_listener
    undef_method :text_change_listener
    alias_method :attr_text_change_listener=, :text_change_listener=
    undef_method :text_change_listener=
    
    # listener for TextChanging, TextChanged and TextSet events from StyledTextContent
    attr_accessor :vertical_scroll_offset
    alias_method :attr_vertical_scroll_offset, :vertical_scroll_offset
    undef_method :vertical_scroll_offset
    alias_method :attr_vertical_scroll_offset=, :vertical_scroll_offset=
    undef_method :vertical_scroll_offset=
    
    # pixel based
    attr_accessor :horizontal_scroll_offset
    alias_method :attr_horizontal_scroll_offset, :horizontal_scroll_offset
    undef_method :horizontal_scroll_offset
    alias_method :attr_horizontal_scroll_offset=, :horizontal_scroll_offset=
    undef_method :horizontal_scroll_offset=
    
    # pixel based
    attr_accessor :top_index
    alias_method :attr_top_index, :top_index
    undef_method :top_index
    alias_method :attr_top_index=, :top_index=
    undef_method :top_index=
    
    # top visible line
    attr_accessor :top_index_y
    alias_method :attr_top_index_y, :top_index_y
    undef_method :top_index_y
    alias_method :attr_top_index_y=, :top_index_y=
    undef_method :top_index_y=
    
    attr_accessor :client_area_height
    alias_method :attr_client_area_height, :client_area_height
    undef_method :client_area_height
    alias_method :attr_client_area_height=, :client_area_height=
    undef_method :client_area_height=
    
    # the client area height. Needed to calculate content width for new visible lines during Resize callback
    attr_accessor :client_area_width
    alias_method :attr_client_area_width, :client_area_width
    undef_method :client_area_width
    alias_method :attr_client_area_width=, :client_area_width=
    undef_method :client_area_width=
    
    # the client area width. Needed during Resize callback to determine if line wrap needs to be recalculated
    attr_accessor :tab_length
    alias_method :attr_tab_length, :tab_length
    undef_method :tab_length
    alias_method :attr_tab_length=, :tab_length=
    undef_method :tab_length=
    
    # number of characters in a tab
    attr_accessor :left_margin
    alias_method :attr_left_margin, :left_margin
    undef_method :left_margin
    alias_method :attr_left_margin=, :left_margin=
    undef_method :left_margin=
    
    attr_accessor :top_margin
    alias_method :attr_top_margin, :top_margin
    undef_method :top_margin
    alias_method :attr_top_margin=, :top_margin=
    undef_method :top_margin=
    
    attr_accessor :right_margin
    alias_method :attr_right_margin, :right_margin
    undef_method :right_margin
    alias_method :attr_right_margin=, :right_margin=
    undef_method :right_margin=
    
    attr_accessor :bottom_margin
    alias_method :attr_bottom_margin, :bottom_margin
    undef_method :bottom_margin
    alias_method :attr_bottom_margin=, :bottom_margin=
    undef_method :bottom_margin=
    
    attr_accessor :margin_color
    alias_method :attr_margin_color, :margin_color
    undef_method :margin_color
    alias_method :attr_margin_color=, :margin_color=
    undef_method :margin_color=
    
    attr_accessor :column_x
    alias_method :attr_column_x, :column_x
    undef_method :column_x
    alias_method :attr_column_x=, :column_x=
    undef_method :column_x=
    
    # keep track of the horizontal caret position when changing lines/pages. Fixes bug 5935
    attr_accessor :caret_offset
    alias_method :attr_caret_offset, :caret_offset
    undef_method :caret_offset
    alias_method :attr_caret_offset=, :caret_offset=
    undef_method :caret_offset=
    
    attr_accessor :caret_alignment
    alias_method :attr_caret_alignment, :caret_alignment
    undef_method :caret_alignment
    alias_method :attr_caret_alignment=, :caret_alignment=
    undef_method :caret_alignment=
    
    attr_accessor :selection
    alias_method :attr_selection, :selection
    undef_method :selection
    alias_method :attr_selection=, :selection=
    undef_method :selection=
    
    # x and y are start and end caret offsets of selection
    attr_accessor :clipboard_selection
    alias_method :attr_clipboard_selection, :clipboard_selection
    undef_method :clipboard_selection
    alias_method :attr_clipboard_selection=, :clipboard_selection=
    undef_method :clipboard_selection=
    
    # x and y are start and end caret offsets of previous selection
    attr_accessor :selection_anchor
    alias_method :attr_selection_anchor, :selection_anchor
    undef_method :selection_anchor
    alias_method :attr_selection_anchor=, :selection_anchor=
    undef_method :selection_anchor=
    
    # position of selection anchor. 0 based offset from beginning of text
    attr_accessor :double_click_selection
    alias_method :attr_double_click_selection, :double_click_selection
    undef_method :double_click_selection
    alias_method :attr_double_click_selection=, :double_click_selection=
    undef_method :double_click_selection=
    
    # selection after last mouse double click
    attr_accessor :editable
    alias_method :attr_editable, :editable
    undef_method :editable
    alias_method :attr_editable=, :editable=
    undef_method :editable=
    
    attr_accessor :word_wrap
    alias_method :attr_word_wrap, :word_wrap
    undef_method :word_wrap
    alias_method :attr_word_wrap=, :word_wrap=
    undef_method :word_wrap=
    
    attr_accessor :double_click_enabled
    alias_method :attr_double_click_enabled, :double_click_enabled
    undef_method :double_click_enabled
    alias_method :attr_double_click_enabled=, :double_click_enabled=
    undef_method :double_click_enabled=
    
    # see getDoubleClickEnabled
    attr_accessor :overwrite
    alias_method :attr_overwrite, :overwrite
    undef_method :overwrite
    alias_method :attr_overwrite=, :overwrite=
    undef_method :overwrite=
    
    # insert/overwrite edit mode
    attr_accessor :text_limit
    alias_method :attr_text_limit, :text_limit
    undef_method :text_limit
    alias_method :attr_text_limit=, :text_limit=
    undef_method :text_limit=
    
    # limits the number of characters the user can type in the widget. Unlimited by default.
    attr_accessor :key_action_map
    alias_method :attr_key_action_map, :key_action_map
    undef_method :key_action_map
    alias_method :attr_key_action_map=, :key_action_map=
    undef_method :key_action_map=
    
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    # workaround for bug 4791
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    attr_accessor :clipboard
    alias_method :attr_clipboard, :clipboard
    undef_method :clipboard
    alias_method :attr_clipboard=, :clipboard=
    undef_method :clipboard=
    
    attr_accessor :click_count
    alias_method :attr_click_count, :click_count
    undef_method :click_count
    alias_method :attr_click_count=, :click_count=
    undef_method :click_count=
    
    attr_accessor :auto_scroll_direction
    alias_method :attr_auto_scroll_direction, :auto_scroll_direction
    undef_method :auto_scroll_direction
    alias_method :attr_auto_scroll_direction=, :auto_scroll_direction=
    undef_method :auto_scroll_direction=
    
    # the direction of autoscrolling (up, down, right, left)
    attr_accessor :auto_scroll_distance
    alias_method :attr_auto_scroll_distance, :auto_scroll_distance
    undef_method :auto_scroll_distance
    alias_method :attr_auto_scroll_distance=, :auto_scroll_distance=
    undef_method :auto_scroll_distance=
    
    attr_accessor :last_text_change_start
    alias_method :attr_last_text_change_start, :last_text_change_start
    undef_method :last_text_change_start
    alias_method :attr_last_text_change_start=, :last_text_change_start=
    undef_method :last_text_change_start=
    
    # cache data of the
    attr_accessor :last_text_change_new_line_count
    alias_method :attr_last_text_change_new_line_count, :last_text_change_new_line_count
    undef_method :last_text_change_new_line_count
    alias_method :attr_last_text_change_new_line_count=, :last_text_change_new_line_count=
    undef_method :last_text_change_new_line_count=
    
    # last text changing
    attr_accessor :last_text_change_new_char_count
    alias_method :attr_last_text_change_new_char_count, :last_text_change_new_char_count
    undef_method :last_text_change_new_char_count
    alias_method :attr_last_text_change_new_char_count=, :last_text_change_new_char_count=
    undef_method :last_text_change_new_char_count=
    
    # event for use in the
    attr_accessor :last_text_change_replace_line_count
    alias_method :attr_last_text_change_replace_line_count, :last_text_change_replace_line_count
    undef_method :last_text_change_replace_line_count
    alias_method :attr_last_text_change_replace_line_count=, :last_text_change_replace_line_count=
    undef_method :last_text_change_replace_line_count=
    
    # text changed handler
    attr_accessor :last_text_change_replace_char_count
    alias_method :attr_last_text_change_replace_char_count, :last_text_change_replace_char_count
    undef_method :last_text_change_replace_char_count
    alias_method :attr_last_text_change_replace_char_count=, :last_text_change_replace_char_count=
    undef_method :last_text_change_replace_char_count=
    
    attr_accessor :last_char_count
    alias_method :attr_last_char_count, :last_char_count
    undef_method :last_char_count
    alias_method :attr_last_char_count=, :last_char_count=
    undef_method :last_char_count=
    
    attr_accessor :last_line_bottom
    alias_method :attr_last_line_bottom, :last_line_bottom
    undef_method :last_line_bottom
    alias_method :attr_last_line_bottom=, :last_line_bottom=
    undef_method :last_line_bottom=
    
    # the bottom pixel of the last line been replaced
    attr_accessor :is_mirrored
    alias_method :attr_is_mirrored, :is_mirrored
    undef_method :is_mirrored
    alias_method :attr_is_mirrored=, :is_mirrored=
    undef_method :is_mirrored=
    
    attr_accessor :bidi_coloring
    alias_method :attr_bidi_coloring, :bidi_coloring
    undef_method :bidi_coloring
    alias_method :attr_bidi_coloring=, :bidi_coloring=
    undef_method :bidi_coloring=
    
    # apply the BIDI algorithm on text segments of the same color
    attr_accessor :left_caret_bitmap
    alias_method :attr_left_caret_bitmap, :left_caret_bitmap
    undef_method :left_caret_bitmap
    alias_method :attr_left_caret_bitmap=, :left_caret_bitmap=
    undef_method :left_caret_bitmap=
    
    attr_accessor :right_caret_bitmap
    alias_method :attr_right_caret_bitmap, :right_caret_bitmap
    undef_method :right_caret_bitmap
    alias_method :attr_right_caret_bitmap=, :right_caret_bitmap=
    undef_method :right_caret_bitmap=
    
    attr_accessor :caret_direction
    alias_method :attr_caret_direction, :caret_direction
    undef_method :caret_direction
    alias_method :attr_caret_direction=, :caret_direction=
    undef_method :caret_direction=
    
    attr_accessor :caret_width
    alias_method :attr_caret_width, :caret_width
    undef_method :caret_width
    alias_method :attr_caret_width=, :caret_width=
    undef_method :caret_width=
    
    attr_accessor :default_caret
    alias_method :attr_default_caret, :default_caret
    undef_method :default_caret
    alias_method :attr_default_caret=, :default_caret=
    undef_method :default_caret=
    
    attr_accessor :update_caret_direction
    alias_method :attr_update_caret_direction, :update_caret_direction
    undef_method :update_caret_direction
    alias_method :attr_update_caret_direction=, :update_caret_direction=
    undef_method :update_caret_direction=
    
    attr_accessor :fixed_line_height
    alias_method :attr_fixed_line_height, :fixed_line_height
    undef_method :fixed_line_height
    alias_method :attr_fixed_line_height=, :fixed_line_height=
    undef_method :fixed_line_height=
    
    attr_accessor :drag_detect
    alias_method :attr_drag_detect, :drag_detect
    undef_method :drag_detect
    alias_method :attr_drag_detect=, :drag_detect=
    undef_method :drag_detect=
    
    attr_accessor :ime
    alias_method :attr_ime, :ime
    undef_method :ime
    alias_method :attr_ime=, :ime=
    undef_method :ime=
    
    attr_accessor :cursor
    alias_method :attr_cursor, :cursor
    undef_method :cursor
    alias_method :attr_cursor=, :cursor=
    undef_method :cursor=
    
    attr_accessor :alignment
    alias_method :attr_alignment, :alignment
    undef_method :alignment
    alias_method :attr_alignment=, :alignment=
    undef_method :alignment=
    
    attr_accessor :justify
    alias_method :attr_justify, :justify
    undef_method :justify
    alias_method :attr_justify=, :justify=
    undef_method :justify=
    
    attr_accessor :indent
    alias_method :attr_indent, :indent
    undef_method :indent
    alias_method :attr_indent=, :indent=
    undef_method :indent=
    
    attr_accessor :line_spacing
    alias_method :attr_line_spacing, :line_spacing
    undef_method :line_spacing
    alias_method :attr_line_spacing=, :line_spacing=
    undef_method :line_spacing=
    
    attr_accessor :alignment_margin
    alias_method :attr_alignment_margin, :alignment_margin
    undef_method :alignment_margin
    alias_method :attr_alignment_margin=, :alignment_margin=
    undef_method :alignment_margin=
    
    # block selection
    attr_accessor :block_selection
    alias_method :attr_block_selection, :block_selection
    undef_method :block_selection
    alias_method :attr_block_selection=, :block_selection=
    undef_method :block_selection=
    
    attr_accessor :block_xanchor
    alias_method :attr_block_xanchor, :block_xanchor
    undef_method :block_xanchor
    alias_method :attr_block_xanchor=, :block_xanchor=
    undef_method :block_xanchor=
    
    attr_accessor :block_yanchor
    alias_method :attr_block_yanchor, :block_yanchor
    undef_method :block_yanchor
    alias_method :attr_block_yanchor=, :block_yanchor=
    undef_method :block_yanchor=
    
    attr_accessor :block_xlocation
    alias_method :attr_block_xlocation, :block_xlocation
    undef_method :block_xlocation
    alias_method :attr_block_xlocation=, :block_xlocation=
    undef_method :block_xlocation=
    
    attr_accessor :block_ylocation
    alias_method :attr_block_ylocation, :block_ylocation
    undef_method :block_ylocation
    alias_method :attr_block_ylocation=, :block_ylocation=
    undef_method :block_ylocation=
    
    class_module.module_eval {
      when_class_loaded do
        platform = SWT.get_platform
        const_set :IS_MAC, ("carbon" == platform) || ("cocoa" == platform)
        const_set :IS_GTK, ("gtk" == platform)
        const_set :IS_MOTIF, ("motif" == platform)
      end
      
      # The Printing class implements printing of a range of text.
      # An instance of <code>Printing</code> is returned in the
      # StyledText#print(Printer) API. The run() method may be
      # invoked from any thread.
      const_set_lazy(:Printing) { Class.new do
        include_class_members StyledText
        include Runnable
        
        class_module.module_eval {
          const_set_lazy(:LEFT) { 0 }
          const_attr_reader  :LEFT
          
          # left aligned header/footer segment
          const_set_lazy(:CENTER) { 1 }
          const_attr_reader  :CENTER
          
          # centered header/footer segment
          const_set_lazy(:RIGHT) { 2 }
          const_attr_reader  :RIGHT
        }
        
        # right aligned header/footer segment
        attr_accessor :printer
        alias_method :attr_printer, :printer
        undef_method :printer
        alias_method :attr_printer=, :printer=
        undef_method :printer=
        
        attr_accessor :printer_renderer
        alias_method :attr_printer_renderer, :printer_renderer
        undef_method :printer_renderer
        alias_method :attr_printer_renderer=, :printer_renderer=
        undef_method :printer_renderer=
        
        attr_accessor :print_options
        alias_method :attr_print_options, :print_options
        undef_method :print_options
        alias_method :attr_print_options=, :print_options=
        undef_method :print_options=
        
        attr_accessor :client_area
        alias_method :attr_client_area, :client_area
        undef_method :client_area
        alias_method :attr_client_area=, :client_area=
        undef_method :client_area=
        
        attr_accessor :font_data
        alias_method :attr_font_data, :font_data
        undef_method :font_data
        alias_method :attr_font_data=, :font_data=
        undef_method :font_data=
        
        attr_accessor :printer_font
        alias_method :attr_printer_font, :printer_font
        undef_method :printer_font
        alias_method :attr_printer_font=, :printer_font=
        undef_method :printer_font=
        
        attr_accessor :resources
        alias_method :attr_resources, :resources
        undef_method :resources
        alias_method :attr_resources=, :resources=
        undef_method :resources=
        
        attr_accessor :tab_length
        alias_method :attr_tab_length, :tab_length
        undef_method :tab_length
        alias_method :attr_tab_length=, :tab_length=
        undef_method :tab_length=
        
        attr_accessor :gc
        alias_method :attr_gc, :gc
        undef_method :gc
        alias_method :attr_gc=, :gc=
        undef_method :gc=
        
        # printer GC
        attr_accessor :page_width
        alias_method :attr_page_width, :page_width
        undef_method :page_width
        alias_method :attr_page_width=, :page_width=
        undef_method :page_width=
        
        # width of a printer page in pixels
        attr_accessor :start_page
        alias_method :attr_start_page, :start_page
        undef_method :start_page
        alias_method :attr_start_page=, :start_page=
        undef_method :start_page=
        
        # first page to print
        attr_accessor :end_page
        alias_method :attr_end_page, :end_page
        undef_method :end_page
        alias_method :attr_end_page=, :end_page=
        undef_method :end_page=
        
        # last page to print
        attr_accessor :start_line
        alias_method :attr_start_line, :start_line
        undef_method :start_line
        alias_method :attr_start_line=, :start_line=
        undef_method :start_line=
        
        # first (wrapped) line to print
        attr_accessor :end_line
        alias_method :attr_end_line, :end_line
        undef_method :end_line
        alias_method :attr_end_line=, :end_line=
        undef_method :end_line=
        
        # last (wrapped) line to print
        attr_accessor :single_line
        alias_method :attr_single_line, :single_line
        undef_method :single_line
        alias_method :attr_single_line=, :single_line=
        undef_method :single_line=
        
        # widget single line mode
        attr_accessor :selection
        alias_method :attr_selection, :selection
        undef_method :selection
        alias_method :attr_selection=, :selection=
        undef_method :selection=
        
        # selected text
        attr_accessor :mirrored
        alias_method :attr_mirrored, :mirrored
        undef_method :mirrored
        alias_method :attr_mirrored=, :mirrored=
        undef_method :mirrored=
        
        # indicates the printing gc should be mirrored
        attr_accessor :line_spacing
        alias_method :attr_line_spacing, :line_spacing
        undef_method :line_spacing
        alias_method :attr_line_spacing=, :line_spacing=
        undef_method :line_spacing=
        
        attr_accessor :print_margin
        alias_method :attr_print_margin, :print_margin
        undef_method :print_margin
        alias_method :attr_print_margin=, :print_margin=
        undef_method :print_margin=
        
        typesig { [class_self::StyledText, class_self::Printer, class_self::StyledTextPrintOptions] }
        # Creates an instance of <code>Printing</code>.
        # Copies the widget content and rendering data that needs
        # to be requested from listeners.
        # </p>
        # @param parent StyledText widget to print.
        # @param printer printer device to print on.
        # @param printOptions print options
        def initialize(styled_text, printer, print_options)
          @printer = nil
          @printer_renderer = nil
          @print_options = nil
          @client_area = nil
          @font_data = nil
          @printer_font = nil
          @resources = nil
          @tab_length = 0
          @gc = nil
          @page_width = 0
          @start_page = 0
          @end_page = 0
          @start_line = 0
          @end_line = 0
          @single_line = false
          @selection = nil
          @mirrored = false
          @line_spacing = 0
          @print_margin = 0
          @printer = printer
          @print_options = print_options
          @mirrored = !((styled_text.get_style & SWT::MIRRORED)).equal?(0)
          @single_line = styled_text.is_single_line
          @start_page = 1
          @end_page = JavaInteger::MAX_VALUE
          data = printer.get_printer_data
          if ((data.attr_scope).equal?(PrinterData::PAGE_RANGE))
            @start_page = data.attr_start_page
            @end_page = data.attr_end_page
            if (@end_page < @start_page)
              temp = @end_page
              @end_page = @start_page
              @start_page = temp
            end
          else
            if ((data.attr_scope).equal?(PrinterData::SELECTION))
              @selection = styled_text.get_selection_range
            end
          end
          @printer_renderer = self.class::StyledTextRenderer.new(printer, nil)
          @printer_renderer.set_content(copy_content(styled_text.get_content))
          cache_line_data(styled_text)
        end
        
        typesig { [class_self::StyledText] }
        # Caches all line data that needs to be requested from a listener.
        # </p>
        # @param printerContent <code>StyledTextContent</code> to request
        # line data for.
        def cache_line_data(styled_text)
          renderer = styled_text.attr_renderer
          renderer.copy_into(@printer_renderer)
          @font_data = styled_text.get_font.get_font_data[0]
          @tab_length = styled_text.attr_tab_length
          line_count = @printer_renderer.attr_line_count
          if (styled_text.is_listening(LineGetBackground) || (styled_text.is_bidi && styled_text.is_listening(LineGetSegments)) || styled_text.is_listening(LineGetStyle))
            content = @printer_renderer.attr_content
            i = 0
            while i < line_count
              line = content.get_line(i)
              line_offset = content.get_offset_at_line(i)
              event = styled_text.get_line_background_data(line_offset, line)
              if (!(event).nil? && !(event.attr_line_background).nil?)
                @printer_renderer.set_line_background(i, 1, event.attr_line_background)
              end
              if (styled_text.is_bidi)
                segments = styled_text.get_bidi_segments(line_offset, line)
                @printer_renderer.set_line_segments(i, 1, segments)
              end
              event = styled_text.get_line_style_data(line_offset, line)
              if (!(event).nil?)
                @printer_renderer.set_line_indent(i, 1, event.attr_indent)
                @printer_renderer.set_line_alignment(i, 1, event.attr_alignment)
                @printer_renderer.set_line_justify(i, 1, event.attr_justify)
                @printer_renderer.set_line_bullet(i, 1, event.attr_bullet)
                styles = event.attr_styles
                if (!(styles).nil? && styles.attr_length > 0)
                  @printer_renderer.set_style_ranges(event.attr_ranges, styles)
                end
              end
              i += 1
            end
          end
          screen_dpi = styled_text.get_display.get_dpi
          printer_dpi = @printer.get_dpi
          @resources = self.class::Hashtable.new
          i = 0
          while i < line_count
            color = @printer_renderer.get_line_background(i, nil)
            if (!(color).nil?)
              if (@print_options.attr_print_line_background)
                printer_color = @resources.get(color)
                if ((printer_color).nil?)
                  printer_color = self.class::Color.new(@printer, color.get_rgb)
                  @resources.put(color, printer_color)
                end
                @printer_renderer.set_line_background(i, 1, printer_color)
              else
                @printer_renderer.set_line_background(i, 1, nil)
              end
            end
            indent = @printer_renderer.get_line_indent(i, 0)
            if (!(indent).equal?(0))
              @printer_renderer.set_line_indent(i, 1, indent * printer_dpi.attr_x / screen_dpi.attr_x)
            end
            i += 1
          end
          styles = @printer_renderer.attr_styles
          i_ = 0
          while i_ < @printer_renderer.attr_style_count
            style = styles[i_]
            font = style.attr_font
            if (!(style.attr_font).nil?)
              printer_font = @resources.get(font)
              if ((printer_font).nil?)
                printer_font = self.class::Font.new(@printer, font.get_font_data)
                @resources.put(font, printer_font)
              end
              style.attr_font = printer_font
            end
            color = style.attr_foreground
            if (!(color).nil?)
              printer_color = @resources.get(color)
              if (@print_options.attr_print_text_foreground)
                if ((printer_color).nil?)
                  printer_color = self.class::Color.new(@printer, color.get_rgb)
                  @resources.put(color, printer_color)
                end
                style.attr_foreground = printer_color
              else
                style.attr_foreground = nil
              end
            end
            color = style.attr_background
            if (!(color).nil?)
              printer_color = @resources.get(color)
              if (@print_options.attr_print_text_background)
                if ((printer_color).nil?)
                  printer_color = self.class::Color.new(@printer, color.get_rgb)
                  @resources.put(color, printer_color)
                end
                style.attr_background = printer_color
              else
                style.attr_background = nil
              end
            end
            if (!@print_options.attr_print_text_font_style)
              style.attr_font_style = SWT::NORMAL
            end
            style.attr_rise = style.attr_rise * printer_dpi.attr_y / screen_dpi.attr_y
            metrics = style.attr_metrics
            if (!(metrics).nil?)
              metrics.attr_ascent = metrics.attr_ascent * printer_dpi.attr_y / screen_dpi.attr_y
              metrics.attr_descent = metrics.attr_descent * printer_dpi.attr_y / screen_dpi.attr_y
              metrics.attr_width = metrics.attr_width * printer_dpi.attr_x / screen_dpi.attr_x
            end
            i_ += 1
          end
          @line_spacing = styled_text.attr_line_spacing * printer_dpi.attr_y / screen_dpi.attr_y
          if (@print_options.attr_print_line_numbers)
            @print_margin = 3 * printer_dpi.attr_x / screen_dpi.attr_x
          end
        end
        
        typesig { [class_self::StyledTextContent] }
        # Copies the text of the specified <code>StyledTextContent</code>.
        # </p>
        # @param original the <code>StyledTextContent</code> to copy.
        def copy_content(original)
          printer_content = self.class::DefaultContent.new
          insert_offset = 0
          i = 0
          while i < original.get_line_count
            insert_end_offset = 0
            if (i < original.get_line_count - 1)
              insert_end_offset = original.get_offset_at_line(i + 1)
            else
              insert_end_offset = original.get_char_count
            end
            printer_content.replace_text_range(insert_offset, 0, original.get_text_range(insert_offset, insert_end_offset - insert_offset))
            insert_offset = insert_end_offset
            i += 1
          end
          return printer_content
        end
        
        typesig { [] }
        # Disposes of the resources and the <code>PrintRenderer</code>.
        def dispose
          if (!(@gc).nil?)
            @gc.dispose
            @gc = nil
          end
          if (!(@resources).nil?)
            enumeration = @resources.elements
            while (enumeration.has_more_elements)
              resource = enumeration.next_element
              resource.dispose
            end
            @resources = nil
          end
          if (!(@printer_font).nil?)
            @printer_font.dispose
            @printer_font = nil
          end
          if (!(@printer_renderer).nil?)
            @printer_renderer.dispose
            @printer_renderer = nil
          end
        end
        
        typesig { [] }
        def init
          trim = @printer.compute_trim(0, 0, 0, 0)
          dpi = @printer.get_dpi
          @printer_font = self.class::Font.new(@printer, @font_data.get_name, @font_data.get_height, SWT::NORMAL)
          @client_area = @printer.get_client_area
          @page_width = @client_area.attr_width
          # one inch margin around text
          @client_area.attr_x = dpi.attr_x + trim.attr_x
          @client_area.attr_y = dpi.attr_y + trim.attr_y
          @client_area.attr_width -= (@client_area.attr_x + trim.attr_width)
          @client_area.attr_height -= (@client_area.attr_y + trim.attr_height)
          style = @mirrored ? SWT::RIGHT_TO_LEFT : SWT::LEFT_TO_RIGHT
          @gc = SwtGC.new(@printer, style)
          @gc.set_font(@printer_font)
          @printer_renderer.set_font(@printer_font, @tab_length)
          line_height = @printer_renderer.get_line_height
          if (!(@print_options.attr_header).nil?)
            @client_area.attr_y += line_height * 2
            @client_area.attr_height -= line_height * 2
          end
          if (!(@print_options.attr_footer).nil?)
            @client_area.attr_height -= line_height * 2
          end
          # TODO not wrapped
          content = @printer_renderer.attr_content
          @start_line = 0
          @end_line = @single_line ? 0 : content.get_line_count - 1
          data = @printer.get_printer_data
          if ((data.attr_scope).equal?(PrinterData::PAGE_RANGE))
            page_size = @client_area.attr_height / line_height # WRONG
            @start_line = (@start_page - 1) * page_size
          else
            if ((data.attr_scope).equal?(PrinterData::SELECTION))
              @start_line = content.get_line_at_offset(@selection.attr_x)
              if (@selection.attr_y > 0)
                @end_line = content.get_line_at_offset(@selection.attr_x + @selection.attr_y - 1)
              else
                @end_line = @start_line - 1
              end
            end
          end
        end
        
        typesig { [] }
        # Prints the lines in the specified page range.
        def print
          background = @gc.get_background
          foreground = @gc.get_foreground
          paint_y = @client_area.attr_y
          paint_x = @client_area.attr_x
          width = @client_area.attr_width
          page = @start_page
          page_bottom = @client_area.attr_y + @client_area.attr_height
          orientation = @gc.get_style & (SWT::RIGHT_TO_LEFT | SWT::LEFT_TO_RIGHT)
          print_layout = nil
          if (@print_options.attr_print_line_numbers || !(@print_options.attr_header).nil? || !(@print_options.attr_footer).nil?)
            print_layout = self.class::TextLayout.new(@printer)
            print_layout.set_font(@printer_font)
          end
          if (@print_options.attr_print_line_numbers)
            numbering_width = 0
            count = @end_line - @start_line + 1
            line_labels = @print_options.attr_line_labels
            if (!(line_labels).nil?)
              i = @start_line
              while i < Math.min(count, line_labels.attr_length)
                if (!(line_labels[i]).nil?)
                  print_layout.set_text(line_labels[i])
                  line_width = print_layout.get_bounds.attr_width
                  numbering_width = Math.max(numbering_width, line_width)
                end
                i += 1
              end
            else
              buffer = self.class::StringBuffer.new("0")
              while ((count /= 10) > 0)
                buffer.append("0")
              end
              print_layout.set_text(buffer.to_s)
              numbering_width = print_layout.get_bounds.attr_width
            end
            numbering_width += @print_margin
            if (numbering_width > width)
              numbering_width = width
            end
            paint_x += numbering_width
            width -= numbering_width
          end
          i = @start_line
          while i <= @end_line && page <= @end_page
            if ((paint_y).equal?(@client_area.attr_y))
              @printer.start_page
              print_decoration(page, true, print_layout)
            end
            layout = @printer_renderer.get_text_layout(i, orientation, width, @line_spacing)
            line_background = @printer_renderer.get_line_background(i, background)
            paragraph_bottom = paint_y + layout.get_bounds.attr_height
            if (paragraph_bottom <= page_bottom)
              # normal case, the whole paragraph fits in the current page
              print_line(paint_x, paint_y, @gc, foreground, line_background, layout, print_layout, i)
              paint_y = paragraph_bottom
            else
              line_count = layout.get_line_count
              while (paragraph_bottom > page_bottom && line_count > 0)
                line_count -= 1
                paragraph_bottom -= layout.get_line_bounds(line_count).attr_height + layout.get_spacing
              end
              if ((line_count).equal?(0))
                # the whole paragraph goes to the next page
                print_decoration(page, false, print_layout)
                @printer.end_page
                page += 1
                if (page <= @end_page)
                  @printer.start_page
                  print_decoration(page, true, print_layout)
                  paint_y = @client_area.attr_y
                  print_line(paint_x, paint_y, @gc, foreground, line_background, layout, print_layout, i)
                  paint_y += layout.get_bounds.attr_height
                end
              else
                # draw paragraph top in the current page and paragraph bottom in the next
                height = paragraph_bottom - paint_y
                @gc.set_clipping(@client_area.attr_x, paint_y, @client_area.attr_width, height)
                print_line(paint_x, paint_y, @gc, foreground, line_background, layout, print_layout, i)
                @gc.set_clipping(nil)
                print_decoration(page, false, print_layout)
                @printer.end_page
                page += 1
                if (page <= @end_page)
                  @printer.start_page
                  print_decoration(page, true, print_layout)
                  paint_y = @client_area.attr_y - height
                  layout_height = layout.get_bounds.attr_height
                  @gc.set_clipping(@client_area.attr_x, @client_area.attr_y, @client_area.attr_width, layout_height - height)
                  print_line(paint_x, paint_y, @gc, foreground, line_background, layout, print_layout, i)
                  @gc.set_clipping(nil)
                  paint_y += layout_height
                end
              end
            end
            @printer_renderer.dispose_text_layout(layout)
            i += 1
          end
          if (page <= @end_page && paint_y > @client_area.attr_y)
            # close partial page
            print_decoration(page, false, print_layout)
            @printer.end_page
          end
          if (!(print_layout).nil?)
            print_layout.dispose
          end
        end
        
        typesig { [::Java::Int, ::Java::Boolean, class_self::TextLayout] }
        # Print header or footer decorations.
        # 
        # @param page page number to print, if specified in the StyledTextPrintOptions header or footer.
        # @param header true = print the header, false = print the footer
        def print_decoration(page, header, layout)
          text = header ? @print_options.attr_header : @print_options.attr_footer
          if ((text).nil?)
            return
          end
          last_segment_index = 0
          i = 0
          while i < 3
            segment_index = text.index_of(StyledTextPrintOptions::SEPARATOR, last_segment_index)
            segment = nil
            if ((segment_index).equal?(-1))
              segment = RJava.cast_to_string(text.substring(last_segment_index))
              print_decoration_segment(segment, i, page, header, layout)
              break
            else
              segment = RJava.cast_to_string(text.substring(last_segment_index, segment_index))
              print_decoration_segment(segment, i, page, header, layout)
              last_segment_index = segment_index + StyledTextPrintOptions::SEPARATOR.length
            end
            i += 1
          end
        end
        
        typesig { [String, ::Java::Int, ::Java::Int, ::Java::Boolean, class_self::TextLayout] }
        # Print one segment of a header or footer decoration.
        # Headers and footers have three different segments.
        # One each for left aligned, centered, and right aligned text.
        # 
        # @param segment decoration segment to print
        # @param alignment alignment of the segment. 0=left, 1=center, 2=right
        # @param page page number to print, if specified in the decoration segment.
        # @param header true = print the header, false = print the footer
        def print_decoration_segment(segment, alignment, page, header, layout)
          page_index = segment.index_of(StyledTextPrintOptions::PAGE_TAG)
          if (!(page_index).equal?(-1))
            page_tag_length = StyledTextPrintOptions::PAGE_TAG.length
            buffer = self.class::StringBuffer.new(segment.substring(0, page_index))
            buffer.append(page)
            buffer.append(segment.substring(page_index + page_tag_length))
            segment = RJava.cast_to_string(buffer.to_s)
          end
          if (segment.length > 0)
            layout.set_text(segment)
            segment_width = layout.get_bounds.attr_width
            segment_height = @printer_renderer.get_line_height
            draw_x = 0
            draw_y = 0
            if ((alignment).equal?(self.class::LEFT))
              draw_x = @client_area.attr_x
            else
              if ((alignment).equal?(self.class::CENTER))
                draw_x = (@page_width - segment_width) / 2
              else
                if ((alignment).equal?(self.class::RIGHT))
                  draw_x = @client_area.attr_x + @client_area.attr_width - segment_width
                end
              end
            end
            if (header)
              draw_y = @client_area.attr_y - segment_height * 2
            else
              draw_y = @client_area.attr_y + @client_area.attr_height + segment_height
            end
            layout.draw(@gc, draw_x, draw_y)
          end
        end
        
        typesig { [::Java::Int, ::Java::Int, SwtGC, class_self::Color, class_self::Color, class_self::TextLayout, class_self::TextLayout, ::Java::Int] }
        def print_line(x, y, gc, foreground, background, layout, print_layout, index)
          if (!(background).nil?)
            rect = layout.get_bounds
            gc.set_background(background)
            gc.fill_rectangle(x, y, rect.attr_width, rect.attr_height)
            # int lineCount = layout.getLineCount();
            # for (int i = 0; i < lineCount; i++) {
            # Rectangle rect = layout.getLineBounds(i);
            # rect.x += paintX;
            # rect.y += paintY + layout.getSpacing();
            # rect.width = width;//layout bounds
            # gc.fillRectangle(rect);
            # }
          end
          if (@print_options.attr_print_line_numbers)
            metrics = layout.get_line_metrics(0)
            print_layout.set_ascent(metrics.get_ascent + metrics.get_leading)
            print_layout.set_descent(metrics.get_descent)
            line_labels = @print_options.attr_line_labels
            if (!(line_labels).nil?)
              if (0 <= index && index < line_labels.attr_length && !(line_labels[index]).nil?)
                print_layout.set_text(line_labels[index])
              else
                print_layout.set_text("")
              end
            else
              print_layout.set_text(String.value_of(index))
            end
            paint_x = x - @print_margin - print_layout.get_bounds.attr_width
            print_layout.draw(gc, paint_x, y)
            print_layout.set_ascent(-1)
            print_layout.set_descent(-1)
          end
          gc.set_foreground(foreground)
          layout.draw(gc, x, y)
        end
        
        typesig { [] }
        # Starts a print job and prints the pages specified in the constructor.
        def run
          job_name = @print_options.attr_job_name
          if ((job_name).nil?)
            job_name = "Printing"
          end
          if (@printer.start_job(job_name))
            init
            print
            dispose
            @printer.end_job
          end
        end
        
        private
        alias_method :initialize__printing, :initialize
      end }
      
      # The <code>RTFWriter</code> class is used to write widget content as
      # rich text. The implementation complies with the RTF specification
      # version 1.5.
      # <p>
      # toString() is guaranteed to return a valid RTF string only after
      # close() has been called.
      # </p><p>
      # Whole and partial lines and line breaks can be written. Lines will be
      # formatted using the styles queried from the LineStyleListener, if
      # set, or those set directly in the widget. All styles are applied to
      # the RTF stream like they are rendered by the widget. In addition, the
      # widget font name and size is used for the whole text.
      # </p>
      const_set_lazy(:RTFWriter) { Class.new(TextWriter) do
        local_class_in StyledText
        include_class_members StyledText
        
        class_module.module_eval {
          const_set_lazy(:DEFAULT_FOREGROUND) { 0 }
          const_attr_reader  :DEFAULT_FOREGROUND
          
          const_set_lazy(:DEFAULT_BACKGROUND) { 1 }
          const_attr_reader  :DEFAULT_BACKGROUND
        }
        
        attr_accessor :color_table
        alias_method :attr_color_table, :color_table
        undef_method :color_table
        alias_method :attr_color_table=, :color_table=
        undef_method :color_table=
        
        attr_accessor :font_table
        alias_method :attr_font_table, :font_table
        undef_method :font_table
        alias_method :attr_font_table=, :font_table=
        undef_method :font_table=
        
        attr_accessor :write_unicode
        alias_method :attr_write_unicode, :write_unicode
        undef_method :write_unicode
        alias_method :attr_write_unicode=, :write_unicode=
        undef_method :write_unicode=
        
        typesig { [::Java::Int, ::Java::Int] }
        # Creates a RTF writer that writes content starting at offset "start"
        # in the document.  <code>start</code> and <code>length</code>can be set to specify partial
        # lines.
        # 
        # @param start start offset of content to write, 0 based from
        # beginning of document
        # @param length length of content to write
        def initialize(start, length)
          @color_table = nil
          @font_table = nil
          @write_unicode = false
          super(start, length)
          @color_table = self.class::Vector.new
          @font_table = self.class::Vector.new
          @color_table.add_element(get_foreground)
          @color_table.add_element(get_background)
          @font_table.add_element(get_font)
          set_unicode
        end
        
        typesig { [] }
        # Closes the RTF writer. Once closed no more content can be written.
        # <b>NOTE:</b>  <code>toString()</code> does not return a valid RTF string until
        # <code>close()</code> has been called.
        def close
          if (!is_closed)
            write_header
            write("\n}}\0")
            super
          end
        end
        
        typesig { [class_self::Color, ::Java::Int] }
        # Returns the index of the specified color in the RTF color table.
        # 
        # @param color the color
        # @param defaultIndex return value if color is null
        # @return the index of the specified color in the RTF color table
        # or "defaultIndex" if "color" is null.
        def get_color_index(color, default_index)
          if ((color).nil?)
            return default_index
          end
          index = @color_table.index_of(color)
          if ((index).equal?(-1))
            index = @color_table.size
            @color_table.add_element(color)
          end
          return index
        end
        
        typesig { [class_self::Font] }
        # Returns the index of the specified color in the RTF color table.
        # 
        # @param color the color
        # @param defaultIndex return value if color is null
        # @return the index of the specified color in the RTF color table
        # or "defaultIndex" if "color" is null.
        def get_font_index(font)
          index = @font_table.index_of(font)
          if ((index).equal?(-1))
            index = @font_table.size
            @font_table.add_element(font)
          end
          return index
        end
        
        typesig { [] }
        # Determines if Unicode RTF should be written.
        # Don't write Unicode RTF on Windows 95/98/ME or NT.
        def set_unicode
          win95 = "windows 95"
          win98 = "windows 98"
          win_me = "windows me"
          win_nt = "windows nt"
          os_name = System.get_property("os.name").to_lower_case
          os_version = System.get_property("os.version")
          major_version = 0
          if (os_name.starts_with(win_nt) && !(os_version).nil?)
            major_index = os_version.index_of(Character.new(?..ord))
            if (!(major_index).equal?(-1))
              os_version = RJava.cast_to_string(os_version.substring(0, major_index))
              begin
                major_version = JavaInteger.parse_int(os_version)
              rescue self.class::NumberFormatException => exception
                # ignore exception. version number remains unknown.
                # will write without Unicode
              end
            end
          end
          @write_unicode = !os_name.starts_with(win95) && !os_name.starts_with(win98) && !os_name.starts_with(win_me) && (!os_name.starts_with(win_nt) || major_version > 4)
        end
        
        typesig { [String, ::Java::Int, ::Java::Int] }
        # Appends the specified segment of "string" to the RTF data.
        # Copy from <code>start</code> up to, but excluding, <code>end</code>.
        # 
        # @param string string to copy a segment from. Must not contain
        # line breaks. Line breaks should be written using writeLineDelimiter()
        # @param start start offset of segment. 0 based.
        # @param end end offset of segment
        def write(string, start, end_)
          index = start
          while index < end_
            ch = string.char_at(index)
            if (ch > 0xff && @write_unicode)
              # write the sub string from the last escaped character
              # to the current one. Fixes bug 21698.
              if (index > start)
                write(string.substring(start, index))
              end
              write("\\u")
              write(JavaInteger.to_s(RJava.cast_to_short(ch)))
              write(Character.new(??.ord)) # ANSI representation (1 byte long, \\uc1)
              start = index + 1
            else
              if ((ch).equal?(Character.new(?}.ord)) || (ch).equal?(Character.new(?{.ord)) || (ch).equal?(Character.new(?\\.ord)))
                # write the sub string from the last escaped character
                # to the current one. Fixes bug 21698.
                if (index > start)
                  write(string.substring(start, index))
                end
                write(Character.new(?\\.ord))
                write(ch)
                start = index + 1
              end
            end
            index += 1
          end
          # write from the last escaped character to the end.
          # Fixes bug 21698.
          if (start < end_)
            write(string.substring(start, end_))
          end
        end
        
        typesig { [] }
        # Writes the RTF header including font table and color table.
        def write_header
          header = self.class::StringBuffer.new
          font_data = get_font.get_font_data[0]
          header.append("{\\rtf1\\ansi")
          # specify code page, necessary for copy to work in bidi
          # systems that don't support Unicode RTF.
          cpg = System.get_property("file.encoding").to_lower_case
          if (cpg.starts_with("cp") || cpg.starts_with("ms"))
            cpg = RJava.cast_to_string(cpg.substring(2, cpg.length))
            header.append("\\ansicpg")
            header.append(cpg)
          end
          header.append("\\uc1\\deff0{\\fonttbl{\\f0\\fnil ")
          header.append(font_data.get_name)
          header.append(";")
          i = 1
          while i < @font_table.size
            header.append("\\f")
            header.append(i)
            header.append(" ")
            fd = (@font_table.element_at(i)).get_font_data[0]
            header.append(fd.get_name)
            header.append(";")
            i += 1
          end
          header.append("}}\n{\\colortbl")
          i_ = 0
          while i_ < @color_table.size
            color = @color_table.element_at(i_)
            header.append("\\red")
            header.append(color.get_red)
            header.append("\\green")
            header.append(color.get_green)
            header.append("\\blue")
            header.append(color.get_blue)
            header.append(";")
            i_ += 1
          end
          # some RTF readers ignore the deff0 font tag. Explicitly
          # set the font for the whole document to work around this.
          header.append("}\n{\\f0\\fs")
          # font size is specified in half points
          header.append(font_data.get_height * 2)
          header.append(" ")
          write(header.to_s, 0)
        end
        
        typesig { [String, ::Java::Int] }
        # Appends the specified line text to the RTF data.  Lines will be formatted
        # using the styles queried from the LineStyleListener, if set, or those set
        # directly in the widget.
        # 
        # @param line line text to write as RTF. Must not contain line breaks
        # Line breaks should be written using writeLineDelimiter()
        # @param lineOffset offset of the line. 0 based from the start of the
        # widget document. Any text occurring before the start offset or after the
        # end offset specified during object creation is ignored.
        # @exception SWTException <ul>
        # <li>ERROR_IO when the writer is closed.</li>
        # </ul>
        def write_line(line, line_offset)
          if (is_closed)
            SWT.error(SWT::ERROR_IO)
          end
          line_index = self.attr_content.get_line_at_offset(line_offset)
          line_alignment = 0
          line_indent = 0
          line_justify = false
          ranges = nil
          styles = nil
          event = get_line_style_data(line_offset, line)
          if (!(event).nil?)
            line_alignment = event.attr_alignment
            line_indent = event.attr_indent
            line_justify = event.attr_justify
            ranges = event.attr_ranges
            styles = event.attr_styles
          else
            line_alignment = self.attr_renderer.get_line_alignment(line_index, self.attr_alignment)
            line_indent = self.attr_renderer.get_line_indent(line_index, self.attr_indent)
            line_justify = self.attr_renderer.get_line_justify(line_index, self.attr_justify)
            ranges = self.attr_renderer.get_ranges(line_offset, line.length)
            styles = self.attr_renderer.get_style_ranges(line_offset, line.length, false)
          end
          if ((styles).nil?)
            styles = Array.typed(self.class::StyleRange).new(0) { nil }
          end
          line_background = self.attr_renderer.get_line_background(line_index, nil)
          event = get_line_background_data(line_offset, line)
          if (!(event).nil? && !(event.attr_line_background).nil?)
            line_background = event.attr_line_background
          end
          write_styled_line(line, line_offset, ranges, styles, line_background, line_indent, line_alignment, line_justify)
        end
        
        typesig { [String] }
        # Appends the specified line delimiter to the RTF data.
        # 
        # @param lineDelimiter line delimiter to write as RTF.
        # @exception SWTException <ul>
        # <li>ERROR_IO when the writer is closed.</li>
        # </ul>
        def write_line_delimiter(line_delimiter)
          if (is_closed)
            SWT.error(SWT::ERROR_IO)
          end
          write(line_delimiter, 0, line_delimiter.length)
          write("\\par ")
        end
        
        typesig { [String, ::Java::Int, Array.typed(::Java::Int), Array.typed(class_self::StyleRange), class_self::Color, ::Java::Int, ::Java::Int, ::Java::Boolean] }
        # Appends the specified line text to the RTF data.
        # <p>
        # Use the colors and font styles specified in "styles" and "lineBackground".
        # Formatting is written to reflect the text rendering by the text widget.
        # Style background colors take precedence over the line background color.
        # Background colors are written using the \highlight tag (vs. the \cb tag).
        # </p>
        # 
        # @param line line text to write as RTF. Must not contain line breaks
        # Line breaks should be written using writeLineDelimiter()
        # @param lineOffset offset of the line. 0 based from the start of the
        # widget document. Any text occurring before the start offset or after the
        # end offset specified during object creation is ignored.
        # @param styles styles to use for formatting. Must not be null.
        # @param lineBackground line background color to use for formatting.
        # May be null.
        def write_styled_line(line, line_offset, ranges, styles, line_background, indent, alignment, justify)
          line_length = line.length
          start_offset = get_start
          write_offset = start_offset - line_offset
          if (write_offset >= line_length)
            return
          end
          line_index = Math.max(0, write_offset)
          write("\\fi")
          write(indent)
          case (alignment)
          when SWT::LEFT
            write("\\ql")
          when SWT::CENTER
            write("\\qc")
          when SWT::RIGHT
            write("\\qr")
          end
          if (justify)
            write("\\qj")
          end
          write(" ")
          if (!(line_background).nil?)
            write("{\\highlight")
            write(get_color_index(line_background, self.class::DEFAULT_BACKGROUND))
            write(" ")
          end
          end_offset = start_offset + TextWriter.instance_method(:get_char_count).bind(self).call
          line_end_offset = Math.min(line_length, end_offset - line_offset)
          i = 0
          while i < styles.attr_length
            style = styles[i]
            start = 0
            end_ = 0
            if (!(ranges).nil?)
              start = ranges[i << 1] - line_offset
              end_ = start + ranges[(i << 1) + 1]
            else
              start = style.attr_start - line_offset
              end_ = start + style.attr_length
            end
            # skip over partial first line
            if (end_ < write_offset)
              i += 1
              next
            end
            # style starts beyond line end or RTF write end
            if (start >= line_end_offset)
              break
            end
            # write any unstyled text
            if (line_index < start)
              # copy to start of style
              # style starting beyond end of write range or end of line
              # is guarded against above.
              write(line, line_index, start)
              line_index = start
            end
            # write styled text
            write("{\\cf")
            write(get_color_index(style.attr_foreground, self.class::DEFAULT_FOREGROUND))
            color_index = get_color_index(style.attr_background, self.class::DEFAULT_BACKGROUND)
            if (!(color_index).equal?(self.class::DEFAULT_BACKGROUND))
              write("\\highlight")
              write(color_index)
            end
            font = style.attr_font
            if (!(font).nil?)
              font_index = get_font_index(font)
              write("\\f")
              write(font_index)
              font_data = font.get_font_data[0]
              write("\\fs")
              write(font_data.get_height * 2)
            else
              if (!((style.attr_font_style & SWT::BOLD)).equal?(0))
                write("\\b")
              end
              if (!((style.attr_font_style & SWT::ITALIC)).equal?(0))
                write("\\i")
              end
            end
            if (style.attr_underline)
              write("\\ul")
            end
            if (style.attr_strikeout)
              write("\\strike")
            end
            write(" ")
            # copy to end of style or end of write range or end of line
            copy_end = Math.min(end_, line_end_offset)
            # guard against invalid styles and let style processing continue
            copy_end = Math.max(copy_end, line_index)
            write(line, line_index, copy_end)
            if ((font).nil?)
              if (!((style.attr_font_style & SWT::BOLD)).equal?(0))
                write("\\b0")
              end
              if (!((style.attr_font_style & SWT::ITALIC)).equal?(0))
                write("\\i0")
              end
            end
            if (style.attr_underline)
              write("\\ul0")
            end
            if (style.attr_strikeout)
              write("\\strike0")
            end
            write("}")
            line_index = copy_end
            i += 1
          end
          # write unstyled text at the end of the line
          if (line_index < line_end_offset)
            write(line, line_index, line_end_offset)
          end
          if (!(line_background).nil?)
            write("}")
          end
        end
        
        private
        alias_method :initialize__rtfwriter, :initialize
      end }
      
      # The <code>TextWriter</code> class is used to write widget content to
      # a string.  Whole and partial lines and line breaks can be written. To write
      # partial lines, specify the start and length of the desired segment
      # during object creation.
      # <p>
      # </b>NOTE:</b> <code>toString()</code> is guaranteed to return a valid string only after close()
      # has been called.
      # </p>
      const_set_lazy(:TextWriter) { Class.new do
        local_class_in StyledText
        include_class_members StyledText
        
        attr_accessor :buffer
        alias_method :attr_buffer, :buffer
        undef_method :buffer
        alias_method :attr_buffer=, :buffer=
        undef_method :buffer=
        
        attr_accessor :start_offset
        alias_method :attr_start_offset, :start_offset
        undef_method :start_offset
        alias_method :attr_start_offset=, :start_offset=
        undef_method :start_offset=
        
        # offset of first character that will be written
        attr_accessor :end_offset
        alias_method :attr_end_offset, :end_offset
        undef_method :end_offset
        alias_method :attr_end_offset=, :end_offset=
        undef_method :end_offset=
        
        # offset of last character that will be written.
        # 0 based from the beginning of the widget text.
        attr_accessor :is_closed
        alias_method :attr_is_closed, :is_closed
        undef_method :is_closed
        alias_method :attr_is_closed=, :is_closed=
        undef_method :is_closed=
        
        typesig { [::Java::Int, ::Java::Int] }
        # Creates a writer that writes content starting at offset "start"
        # in the document.  <code>start</code> and <code>length</code> can be set to specify partial lines.
        # 
        # @param start start offset of content to write, 0 based from beginning of document
        # @param length length of content to write
        def initialize(start, length)
          @buffer = nil
          @start_offset = 0
          @end_offset = 0
          @is_closed = false
          @buffer = self.class::StringBuffer.new(length)
          @start_offset = start
          @end_offset = start + length
        end
        
        typesig { [] }
        # Closes the writer. Once closed no more content can be written.
        # <b>NOTE:</b>  <code>toString()</code> is not guaranteed to return a valid string unless
        # the writer is closed.
        def close
          if (!@is_closed)
            @is_closed = true
          end
        end
        
        typesig { [] }
        # Returns the number of characters to write.
        # @return the integer number of characters to write
        def get_char_count
          return @end_offset - @start_offset
        end
        
        typesig { [] }
        # Returns the offset where writing starts. 0 based from the start of
        # the widget text. Used to write partial lines.
        # @return the integer offset where writing starts
        def get_start
          return @start_offset
        end
        
        typesig { [] }
        # Returns whether the writer is closed.
        # @return a boolean specifying whether or not the writer is closed
        def is_closed
          return @is_closed
        end
        
        typesig { [] }
        # Returns the string.  <code>close()</code> must be called before <code>toString()</code>
        # is guaranteed to return a valid string.
        # 
        # @return the string
        def to_s
          return @buffer.to_s
        end
        
        typesig { [String] }
        # Appends the given string to the data.
        def write(string)
          @buffer.append(string)
        end
        
        typesig { [String, ::Java::Int] }
        # Inserts the given string to the data at the specified offset.
        # <p>
        # Do nothing if "offset" is < 0 or > getCharCount()
        # </p>
        # 
        # @param string text to insert
        # @param offset offset in the existing data to insert "string" at.
        def write(string, offset)
          if (offset < 0 || offset > @buffer.length)
            return
          end
          @buffer.insert(offset, string)
        end
        
        typesig { [::Java::Int] }
        # Appends the given int to the data.
        def write(i)
          @buffer.append(i)
        end
        
        typesig { [::Java::Char] }
        # Appends the given character to the data.
        def write(i)
          @buffer.append(i)
        end
        
        typesig { [String, ::Java::Int] }
        # Appends the specified line text to the data.
        # 
        # @param line line text to write. Must not contain line breaks
        # Line breaks should be written using writeLineDelimiter()
        # @param lineOffset offset of the line. 0 based from the start of the
        # widget document. Any text occurring before the start offset or after the
        # end offset specified during object creation is ignored.
        # @exception SWTException <ul>
        # <li>ERROR_IO when the writer is closed.</li>
        # </ul>
        def write_line(line, line_offset)
          if (@is_closed)
            SWT.error(SWT::ERROR_IO)
          end
          write_offset = @start_offset - line_offset
          line_length = line.length
          line_index = 0
          if (write_offset >= line_length)
            return # whole line is outside write range
          else
            if (write_offset > 0)
              line_index = write_offset # line starts before write start
            else
              line_index = 0
            end
          end
          copy_end = Math.min(line_length, @end_offset - line_offset)
          if (line_index < copy_end)
            write(line.substring(line_index, copy_end))
          end
        end
        
        typesig { [String] }
        # Appends the specified line delimiter to the data.
        # 
        # @param lineDelimiter line delimiter to write
        # @exception SWTException <ul>
        # <li>ERROR_IO when the writer is closed.</li>
        # </ul>
        def write_line_delimiter(line_delimiter)
          if (@is_closed)
            SWT.error(SWT::ERROR_IO)
          end
          write(line_delimiter)
        end
        
        private
        alias_method :initialize__text_writer, :initialize
      end }
    }
    
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
    # @param parent a widget which will be the parent of the new instance (cannot be null)
    # @param style the style of widget to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    # 
    # @see SWT#FULL_SELECTION
    # @see SWT#MULTI
    # @see SWT#READ_ONLY
    # @see SWT#SINGLE
    # @see SWT#WRAP
    # @see #getStyle
    def initialize(parent, style)
      @selection_background = nil
      @selection_foreground = nil
      @content = nil
      @renderer = nil
      @listener = nil
      @text_change_listener = nil
      @vertical_scroll_offset = 0
      @horizontal_scroll_offset = 0
      @top_index = 0
      @top_index_y = 0
      @client_area_height = 0
      @client_area_width = 0
      @tab_length = 0
      @left_margin = 0
      @top_margin = 0
      @right_margin = 0
      @bottom_margin = 0
      @margin_color = nil
      @column_x = 0
      @caret_offset = 0
      @caret_alignment = 0
      @selection = nil
      @clipboard_selection = nil
      @selection_anchor = 0
      @double_click_selection = nil
      @editable = false
      @word_wrap = false
      @double_click_enabled = false
      @overwrite = false
      @text_limit = 0
      @key_action_map = nil
      @background = nil
      @foreground = nil
      @clipboard = nil
      @click_count = 0
      @auto_scroll_direction = 0
      @auto_scroll_distance = 0
      @last_text_change_start = 0
      @last_text_change_new_line_count = 0
      @last_text_change_new_char_count = 0
      @last_text_change_replace_line_count = 0
      @last_text_change_replace_char_count = 0
      @last_char_count = 0
      @last_line_bottom = 0
      @is_mirrored = false
      @bidi_coloring = false
      @left_caret_bitmap = nil
      @right_caret_bitmap = nil
      @caret_direction = 0
      @caret_width = 0
      @default_caret = nil
      @update_caret_direction = false
      @fixed_line_height = false
      @drag_detect = false
      @ime = nil
      @cursor = nil
      @alignment = 0
      @justify = false
      @indent = 0
      @line_spacing = 0
      @alignment_margin = 0
      @block_selection = false
      @block_xanchor = 0
      @block_yanchor = 0
      @block_xlocation = 0
      @block_ylocation = 0
      super(parent, check_style(style))
      @vertical_scroll_offset = 0
      @horizontal_scroll_offset = 0
      @top_index = 0
      @client_area_height = 0
      @client_area_width = 0
      @tab_length = 4
      @selection = Point.new(0, 0)
      @editable = true
      @word_wrap = false
      @double_click_enabled = true
      @overwrite = false
      @text_limit = -1
      @key_action_map = Hashtable.new
      @background = nil
      @foreground = nil
      @auto_scroll_direction = SWT::NULL
      @auto_scroll_distance = 0
      @last_char_count = 0
      @bidi_coloring = false
      @left_caret_bitmap = nil
      @right_caret_bitmap = nil
      @caret_direction = SWT::NULL
      @caret_width = 0
      @default_caret = nil
      @update_caret_direction = true
      @drag_detect = true
      @block_xanchor = -1
      @block_yanchor = -1
      @block_xlocation = -1
      @block_ylocation = -1
      # set the fg in the OS to ensure that these are the same as StyledText, necessary
      # for ensuring that the bg/fg the IME box uses is the same as what StyledText uses
      Canvas.instance_method(:set_foreground).bind(self).call(get_foreground)
      Canvas.instance_method(:set_drag_detect).bind(self).call(false)
      display = get_display
      @is_mirrored = !((Canvas.instance_method(:get_style).bind(self).call & SWT::MIRRORED)).equal?(0)
      @fixed_line_height = true
      if (!((style & SWT::READ_ONLY)).equal?(0))
        set_editable(false)
      end
      @left_margin = @right_margin = is_bidi_caret ? BIDI_CARET_WIDTH - 1 : 0
      if (!((style & SWT::SINGLE)).equal?(0) && !((style & SWT::BORDER)).equal?(0))
        @left_margin = @top_margin = @right_margin = @bottom_margin = 2
      end
      @alignment = style & (SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      if ((@alignment).equal?(0))
        @alignment = SWT::LEFT
      end
      @clipboard = Clipboard.new(display)
      install_default_content
      @renderer = StyledTextRenderer.new(get_display, self)
      @renderer.set_content(@content)
      @renderer.set_font(get_font, @tab_length)
      @ime = IME.new(self, SWT::NONE)
      @default_caret = Caret.new(self, SWT::NONE)
      if (!((style & SWT::WRAP)).equal?(0))
        set_word_wrap(true)
      end
      if (is_bidi_caret)
        create_caret_bitmaps
        runnable = Class.new(Runnable.class == Class ? Runnable : Object) do
          local_class_in StyledText
          include_class_members StyledText
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            direction = (BidiUtil.get_keyboard_language).equal?(BidiUtil::KEYBOARD_BIDI) ? SWT::RIGHT : SWT::LEFT
            if ((direction).equal?(self.attr_caret_direction))
              return
            end
            if (!(get_caret).equal?(self.attr_default_caret))
              return
            end
            new_caret_pos = get_point_at_offset(self.attr_caret_offset)
            set_caret_location(new_caret_pos, direction)
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        BidiUtil.add_language_listener(self, runnable)
      end
      set_caret(@default_caret)
      calculate_scroll_bars
      create_key_bindings
      Canvas.instance_method(:set_cursor).bind(self).call(display.get_system_cursor(SWT::CURSOR_IBEAM))
      install_listeners
      initialize_accessible
      set_data("DEFAULT_DROP_TARGET_EFFECT", StyledTextDropTargetEffect.new(self))
    end
    
    typesig { [ExtendedModifyListener] }
    # Adds an extended modify listener. An ExtendedModify event is sent by the
    # widget when the widget text has changed.
    # 
    # @param extendedModifyListener the listener
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def add_extended_modify_listener(extended_modify_listener)
      check_widget
      if ((extended_modify_listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = StyledTextListener.new(extended_modify_listener)
      add_listener(ExtendedModify, typed_listener)
    end
    
    typesig { [BidiSegmentListener] }
    # Adds a bidirectional segment listener.
    # <p>
    # A BidiSegmentEvent is sent
    # whenever a line of text is measured or rendered. The user can
    # specify text ranges in the line that should be treated as if they
    # had a different direction than the surrounding text.
    # This may be used when adjacent segments of right-to-left text should
    # not be reordered relative to each other.
    # E.g., Multiple Java string literals in a right-to-left language
    # should generally remain in logical order to each other, that is, the
    # way they are stored.
    # </p>
    # 
    # @param listener the listener
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    # @see BidiSegmentEvent
    # @since 2.0
    def add_bidi_segment_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      add_listener(LineGetSegments, StyledTextListener.new(listener))
    end
    
    typesig { [CaretListener] }
    # Adds a caret listener. CaretEvent is sent when the caret offset changes.
    # 
    # @param listener the listener
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    # 
    # @since 3.5
    def add_caret_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      add_listener(CaretMoved, StyledTextListener.new(listener))
    end
    
    typesig { [LineBackgroundListener] }
    # Adds a line background listener. A LineGetBackground event is sent by the
    # widget to determine the background color for a line.
    # 
    # @param listener the listener
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def add_line_background_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!is_listening(LineGetBackground))
        @renderer.clear_line_background(0, @content.get_line_count)
      end
      add_listener(LineGetBackground, StyledTextListener.new(listener))
    end
    
    typesig { [LineStyleListener] }
    # Adds a line style listener. A LineGetStyle event is sent by the widget to
    # determine the styles for a line.
    # 
    # @param listener the listener
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def add_line_style_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!is_listening(LineGetStyle))
        set_style_ranges(0, 0, nil, nil, true)
        @renderer.clear_line_style(0, @content.get_line_count)
      end
      add_listener(LineGetStyle, StyledTextListener.new(listener))
      set_caret_location
    end
    
    typesig { [ModifyListener] }
    # Adds a modify listener. A Modify event is sent by the widget when the widget text
    # has changed.
    # 
    # @param modifyListener the listener
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def add_modify_listener(modify_listener)
      check_widget
      if ((modify_listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      add_listener(SWT::Modify, TypedListener.new(modify_listener))
    end
    
    typesig { [PaintObjectListener] }
    # Adds a paint object listener. A paint object event is sent by the widget when an object
    # needs to be drawn.
    # 
    # @param listener the listener
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    # 
    # @since 3.2
    # 
    # @see PaintObjectListener
    # @see PaintObjectEvent
    def add_paint_object_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      add_listener(PaintObject, StyledTextListener.new(listener))
    end
    
    typesig { [SelectionListener] }
    # Adds a selection listener. A Selection event is sent by the widget when the
    # user changes the selection.
    # <p>
    # When <code>widgetSelected</code> is called, the event x and y fields contain
    # the start and end caret indices of the selection.
    # <code>widgetDefaultSelected</code> is not called for StyledTexts.
    # </p>
    # 
    # @param listener the listener which should be notified when the user changes the receiver's selection
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
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      add_listener(SWT::Selection, TypedListener.new(listener))
    end
    
    typesig { [VerifyKeyListener] }
    # Adds a verify key listener. A VerifyKey event is sent by the widget when a key
    # is pressed. The widget ignores the key press if the listener sets the doit field
    # of the event to false.
    # 
    # @param listener the listener
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def add_verify_key_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      add_listener(VerifyKey, StyledTextListener.new(listener))
    end
    
    typesig { [VerifyListener] }
    # Adds a verify listener. A Verify event is sent by the widget when the widget text
    # is about to change. The listener can set the event text and the doit field to
    # change the text that is set in the widget or to force the widget to ignore the
    # text change.
    # 
    # @param verifyListener the listener
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def add_verify_listener(verify_listener)
      check_widget
      if ((verify_listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      add_listener(SWT::Verify, TypedListener.new(verify_listener))
    end
    
    typesig { [MovementListener] }
    # Adds a word movement listener. A movement event is sent when the boundary
    # of a word is needed. For example, this occurs during word next and word
    # previous actions.
    # 
    # @param movementListener the listener
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    # 
    # @see MovementEvent
    # @see MovementListener
    # @see #removeWordMovementListener
    # 
    # @since 3.3
    def add_word_movement_listener(movement_listener)
      check_widget
      if ((@listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      add_listener(WordNext, StyledTextListener.new(movement_listener))
      add_listener(WordPrevious, StyledTextListener.new(movement_listener))
    end
    
    typesig { [String] }
    # Appends a string to the text at the end of the widget.
    # 
    # @param string the string to be appended
    # @see #replaceTextRange(int,int,String)
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def append(string)
      check_widget
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      last_char = Math.max(get_char_count, 0)
      replace_text_range(last_char, 0, string)
    end
    
    typesig { [] }
    # Calculates the scroll bars
    def calculate_scroll_bars
      horizontal_bar = get_horizontal_bar
      vertical_bar = get_vertical_bar
      set_scroll_bars(true)
      if (!(vertical_bar).nil?)
        vertical_bar.set_increment(get_vertical_increment)
      end
      if (!(horizontal_bar).nil?)
        horizontal_bar.set_increment(get_horizontal_increment)
      end
    end
    
    typesig { [::Java::Int] }
    # Calculates the top index based on the current vertical scroll offset.
    # The top index is the index of the topmost fully visible line or the
    # topmost partially visible line if no line is fully visible.
    # The top index starts at 0.
    def calculate_top_index(delta)
      old_top_index = @top_index
      old_top_index_y = @top_index_y
      if (is_fixed_line_height)
        vertical_increment = get_vertical_increment
        if ((vertical_increment).equal?(0))
          return
        end
        @top_index = Compatibility.ceil(get_vertical_scroll_offset, vertical_increment)
        # Set top index to partially visible top line if no line is fully
        # visible but at least some of the widget client area is visible.
        # Fixes bug 15088.
        if (@top_index > 0)
          if (@client_area_height > 0)
            bottom_pixel = get_vertical_scroll_offset + @client_area_height
            full_line_top_pixel = @top_index * vertical_increment
            full_line_visible_height = bottom_pixel - full_line_top_pixel
            # set top index to partially visible line if no line fully fits in
            # client area or if space is available but not used (the latter should
            # never happen because we use claimBottomFreeSpace)
            if (full_line_visible_height < vertical_increment)
              @top_index -= 1
            end
          else
            if (@top_index >= @content.get_line_count)
              @top_index = @content.get_line_count - 1
            end
          end
        end
      else
        if (delta >= 0)
          delta -= @top_index_y
          line_index = @top_index
          line_count = @content.get_line_count
          while (line_index < line_count)
            if (delta <= 0)
              break
            end
            delta -= @renderer.get_line_height(((line_index += 1) - 1))
          end
          if (line_index < line_count && -delta + @renderer.get_line_height(line_index) <= @client_area_height - @top_margin - @bottom_margin)
            @top_index = line_index
            @top_index_y = -delta
          else
            @top_index = line_index - 1
            @top_index_y = -@renderer.get_line_height(@top_index) - delta
          end
        else
          delta -= @top_index_y
          line_index = @top_index
          while (line_index > 0)
            line_height = @renderer.get_line_height(line_index - 1)
            if (delta + line_height > 0)
              break
            end
            delta += line_height
            line_index -= 1
          end
          if ((line_index).equal?(0) || -delta + @renderer.get_line_height(line_index) <= @client_area_height - @top_margin - @bottom_margin)
            @top_index = line_index
            @top_index_y = -delta
          else
            @top_index = line_index - 1
            @top_index_y = -@renderer.get_line_height(@top_index) - delta
          end
        end
      end
      if (!(@top_index).equal?(old_top_index) || !(old_top_index_y).equal?(@top_index_y))
        @renderer.calculate_client_area
        set_scroll_bars(false)
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      # Hides the scroll bars if widget is created in single line mode.
      def check_style(style)
        if (!((style & SWT::SINGLE)).equal?(0))
          style &= ~(SWT::H_SCROLL | SWT::V_SCROLL | SWT::WRAP | SWT::MULTI)
        else
          style |= SWT::MULTI
          if (!((style & SWT::WRAP)).equal?(0))
            style &= ~SWT::H_SCROLL
          end
        end
        style |= SWT::NO_REDRAW_RESIZE | SWT::DOUBLE_BUFFERED | SWT::NO_BACKGROUND
        # Clear SWT.CENTER to avoid the conflict with SWT.EMBEDDED
        return style & ~SWT::CENTER
      end
    }
    
    typesig { [] }
    # Scrolls down the text to use new space made available by a resize or by
    # deleted lines.
    def claim_bottom_free_space
      if (is_fixed_line_height)
        new_vertical_offset = Math.max(0, @renderer.get_height - @client_area_height)
        if (new_vertical_offset < get_vertical_scroll_offset)
          scroll_vertical(new_vertical_offset - get_vertical_scroll_offset, true)
        end
      else
        bottom_index = get_partial_bottom_index
        height = get_line_pixel(bottom_index + 1)
        if (@client_area_height > height)
          scroll_vertical(-get_available_height_above(@client_area_height - height), true)
        end
      end
    end
    
    typesig { [] }
    # Scrolls text to the right to use new space made available by a resize.
    def claim_right_free_space
      new_horizontal_offset = Math.max(0, @renderer.get_width - @client_area_width)
      if (new_horizontal_offset < @horizontal_scroll_offset)
        # item is no longer drawn past the right border of the client area
        # align the right end of the item with the right border of the
        # client area (window is scrolled right).
        scroll_horizontal(new_horizontal_offset - @horizontal_scroll_offset, true)
      end
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def clear_block_selection(reset, send_event)
      if (reset)
        reset_selection
      end
      @block_xanchor = @block_yanchor = -1
      @block_xlocation = @block_ylocation = -1
      @caret_direction = SWT::NULL
      update_caret_visibility
      Canvas.instance_method(:redraw).bind(self).call
      if (send_event)
        send_selection_event
      end
    end
    
    typesig { [::Java::Boolean] }
    # Removes the widget selection.
    # 
    # @param sendEvent a Selection event is sent when set to true and when the selection is actually reset.
    def clear_selection(send_event)
      selection_start = @selection.attr_x
      selection_end = @selection.attr_y
      reset_selection
      # redraw old selection, if any
      if (selection_end - selection_start > 0)
        length = @content.get_char_count
        # called internally to remove selection after text is removed
        # therefore make sure redraw range is valid.
        redraw_start = Math.min(selection_start, length)
        redraw_end = Math.min(selection_end, length)
        if (redraw_end - redraw_start > 0)
          internal_redraw_range(redraw_start, redraw_end - redraw_start)
        end
        if (send_event)
          send_selection_event
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      line_count = !((get_style & SWT::SINGLE)).equal?(0) ? 1 : @content.get_line_count
      width = 0
      height = 0
      if ((w_hint).equal?(SWT::DEFAULT) || (h_hint).equal?(SWT::DEFAULT))
        display = get_display
        max_height = display.get_client_area.attr_height
        line_index = 0
        while line_index < line_count
          layout = @renderer.get_text_layout(line_index)
          wrap_width = layout.get_width
          if (@word_wrap)
            layout.set_width((w_hint).equal?(0) ? 1 : w_hint)
          end
          rect = layout.get_bounds
          height += rect.attr_height
          width = Math.max(width, rect.attr_width)
          layout.set_width(wrap_width)
          @renderer.dispose_text_layout(layout)
          if (is_fixed_line_height && height > max_height)
            break
          end
          line_index += 1
        end
        if (is_fixed_line_height)
          height = line_count * @renderer.get_line_height
        end
      end
      # Use default values if no text is defined.
      if ((width).equal?(0))
        width = DEFAULT_WIDTH
      end
      if ((height).equal?(0))
        height = DEFAULT_HEIGHT
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      w_trim = @left_margin + @right_margin + get_caret_width
      h_trim = @top_margin + @bottom_margin
      rect = compute_trim(0, 0, width + w_trim, height + h_trim)
      return Point.new(rect.attr_width, rect.attr_height)
    end
    
    typesig { [] }
    # Copies the selected text to the <code>DND.CLIPBOARD</code> clipboard.
    # <p>
    # The text will be put on the clipboard in plain text format and RTF format.
    # The <code>DND.CLIPBOARD</code> clipboard is used for data that is
    # transferred by keyboard accelerator (such as Ctrl+C/Ctrl+V) or
    # by menu action.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def copy
      check_widget
      copy_selection(DND::CLIPBOARD)
    end
    
    typesig { [::Java::Int] }
    # Copies the selected text to the specified clipboard.  The text will be put in the
    # clipboard in plain text format and RTF format.
    # <p>
    # The clipboardType is  one of the clipboard constants defined in class
    # <code>DND</code>.  The <code>DND.CLIPBOARD</code>  clipboard is
    # used for data that is transferred by keyboard accelerator (such as Ctrl+C/Ctrl+V)
    # or by menu action.  The <code>DND.SELECTION_CLIPBOARD</code>
    # clipboard is used for data that is transferred by selecting text and pasting
    # with the middle mouse button.
    # </p>
    # 
    # @param clipboardType indicates the type of clipboard
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def copy(clipboard_type)
      check_widget
      copy_selection(clipboard_type)
    end
    
    typesig { [::Java::Int] }
    def copy_selection(type)
      if (!(type).equal?(DND::CLIPBOARD) && !(type).equal?(DND::SELECTION_CLIPBOARD))
        return false
      end
      begin
        if (@block_selection && !(@block_xlocation).equal?(-1))
          text = get_block_selection_text(PlatformLineDelimiter)
          if (text.length > 0)
            # TODO RTF support
            plain_text_transfer = TextTransfer.get_instance
            data = Array.typed(Object).new([text])
            types = Array.typed(Transfer).new([plain_text_transfer])
            @clipboard.set_contents(data, types, type)
            return true
          end
        else
          length_ = @selection.attr_y - @selection.attr_x
          if (length_ > 0)
            set_clipboard_content(@selection.attr_x, length_, type)
            return true
          end
        end
      rescue SWTError => error_
        # Copy to clipboard failed. This happens when another application
        # is accessing the clipboard while we copy. Ignore the error.
        # Rethrow all other errors. Fixes bug 17578.
        if (!(error_.attr_code).equal?(DND::ERROR_CANNOT_SET_CLIPBOARD))
          raise error_
        end
      end
      return false
    end
    
    typesig { [] }
    # Returns the alignment of the widget.
    # 
    # @return the alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getLineAlignment(int)
    # 
    # @since 3.2
    def get_alignment
      check_widget
      return @alignment
    end
    
    typesig { [::Java::Int] }
    def get_available_height_above(height)
      max_height = @vertical_scroll_offset
      if ((max_height).equal?(-1))
        line_index = @top_index - 1
        max_height = -@top_index_y
        if (@top_index_y > 0)
          max_height += @renderer.get_line_height(((line_index -= 1) + 1))
        end
        while (height > max_height && line_index >= 0)
          max_height += @renderer.get_line_height(((line_index -= 1) + 1))
        end
      end
      return Math.min(height, max_height)
    end
    
    typesig { [::Java::Int] }
    def get_available_height_bellow(height)
      partial_bottom_index = get_partial_bottom_index
      top_y = get_line_pixel(partial_bottom_index)
      line_height = @renderer.get_line_height(partial_bottom_index)
      available_height = 0
      client_area_height = @client_area_height - @top_margin - @bottom_margin
      if (top_y + line_height > client_area_height)
        available_height = line_height - (client_area_height - top_y)
      end
      line_index = partial_bottom_index + 1
      line_count = @content.get_line_count
      while (height > available_height && line_index < line_count)
        available_height += @renderer.get_line_height(((line_index += 1) - 1))
      end
      return Math.min(height, available_height)
    end
    
    typesig { [] }
    # Returns the color of the margins.
    # 
    # @return the color of the margins.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def get_margin_color
      check_widget
      return !(@margin_color).nil? ? @margin_color : get_background
    end
    
    typesig { [String] }
    # Returns a string that uses only the line delimiter specified by the
    # StyledTextContent implementation.
    # <p>
    # Returns only the first line if the widget has the SWT.SINGLE style.
    # </p>
    # 
    # @param text the text that may have line delimiters that don't
    # match the model line delimiter. Possible line delimiters
    # are CR ('\r'), LF ('\n'), CR/LF ("\r\n")
    # @return the converted text that only uses the line delimiter
    # specified by the model. Returns only the first line if the widget
    # has the SWT.SINGLE style.
    def get_model_delimited_text(text)
      length_ = text.length
      if ((length_).equal?(0))
        return text
      end
      cr_index = 0
      lf_index = 0
      i = 0
      converted_text = StringBuffer.new(length_)
      delimiter = get_line_delimiter
      while (i < length_)
        if (!(cr_index).equal?(-1))
          cr_index = text.index_of(SWT::CR, i)
        end
        if (!(lf_index).equal?(-1))
          lf_index = text.index_of(SWT::LF, i)
        end
        if ((lf_index).equal?(-1) && (cr_index).equal?(-1))
          # no more line breaks?
          break
        else
          if ((cr_index < lf_index && !(cr_index).equal?(-1)) || (lf_index).equal?(-1))
            converted_text.append(text.substring(i, cr_index))
            if ((lf_index).equal?(cr_index + 1))
              # CR/LF combination?
              i = lf_index + 1
            else
              i = cr_index + 1
            end
          else
            # LF occurs before CR!
            converted_text.append(text.substring(i, lf_index))
            i = lf_index + 1
          end
        end
        if (is_single_line)
          break
        end
        converted_text.append(delimiter)
      end
      # copy remaining text if any and if not in single line mode or no
      # text copied thus far (because there only is one line)
      if (i < length_ && (!is_single_line || (converted_text.length).equal?(0)))
        converted_text.append(text.substring(i))
      end
      return converted_text.to_s
    end
    
    typesig { [Event] }
    def check_drag_detect(event)
      if (!is_listening(SWT::DragDetect))
        return false
      end
      if (IS_MOTIF)
        if (!(event.attr_button).equal?(2))
          return false
        end
      else
        if (!(event.attr_button).equal?(1))
          return false
        end
      end
      if (@block_selection && !(@block_xlocation).equal?(-1))
        rect = get_block_selection_rectangle
        if (rect.contains(event.attr_x, event.attr_y))
          return drag_detect(event)
        end
      else
        if ((@selection.attr_x).equal?(@selection.attr_y))
          return false
        end
        offset = get_offset_at_point(event.attr_x, event.attr_y, nil, true)
        if (@selection.attr_x <= offset && offset < @selection.attr_y)
          return drag_detect(event)
        end
      end
      return false
    end
    
    typesig { [] }
    # Creates default key bindings.
    def create_key_bindings
      next_key = is_mirrored ? SWT::ARROW_LEFT : SWT::ARROW_RIGHT
      previous_key = is_mirrored ? SWT::ARROW_RIGHT : SWT::ARROW_LEFT
      # Navigation
      set_key_binding(SWT::ARROW_UP, ST::LINE_UP)
      set_key_binding(SWT::ARROW_DOWN, ST::LINE_DOWN)
      if (IS_MAC)
        set_key_binding(previous_key | SWT::MOD1, ST::LINE_START)
        set_key_binding(next_key | SWT::MOD1, ST::LINE_END)
        set_key_binding(SWT::HOME, ST::TEXT_START)
        set_key_binding(SWT::END_, ST::TEXT_END)
        set_key_binding(SWT::ARROW_UP | SWT::MOD1, ST::TEXT_START)
        set_key_binding(SWT::ARROW_DOWN | SWT::MOD1, ST::TEXT_END)
        set_key_binding(next_key | SWT::MOD3, ST::WORD_NEXT)
        set_key_binding(previous_key | SWT::MOD3, ST::WORD_PREVIOUS)
      else
        set_key_binding(SWT::HOME, ST::LINE_START)
        set_key_binding(SWT::END_, ST::LINE_END)
        set_key_binding(SWT::HOME | SWT::MOD1, ST::TEXT_START)
        set_key_binding(SWT::END_ | SWT::MOD1, ST::TEXT_END)
        set_key_binding(next_key | SWT::MOD1, ST::WORD_NEXT)
        set_key_binding(previous_key | SWT::MOD1, ST::WORD_PREVIOUS)
      end
      set_key_binding(SWT::PAGE_UP, ST::PAGE_UP)
      set_key_binding(SWT::PAGE_DOWN, ST::PAGE_DOWN)
      set_key_binding(SWT::PAGE_UP | SWT::MOD1, ST::WINDOW_START)
      set_key_binding(SWT::PAGE_DOWN | SWT::MOD1, ST::WINDOW_END)
      set_key_binding(next_key, ST::COLUMN_NEXT)
      set_key_binding(previous_key, ST::COLUMN_PREVIOUS)
      # Selection
      set_key_binding(SWT::ARROW_UP | SWT::MOD2, ST::SELECT_LINE_UP)
      set_key_binding(SWT::ARROW_DOWN | SWT::MOD2, ST::SELECT_LINE_DOWN)
      if (IS_MAC)
        set_key_binding(previous_key | SWT::MOD1 | SWT::MOD2, ST::SELECT_LINE_START)
        set_key_binding(next_key | SWT::MOD1 | SWT::MOD2, ST::SELECT_LINE_END)
        set_key_binding(SWT::HOME | SWT::MOD2, ST::SELECT_TEXT_START)
        set_key_binding(SWT::END_ | SWT::MOD2, ST::SELECT_TEXT_END)
        set_key_binding(SWT::ARROW_UP | SWT::MOD1 | SWT::MOD2, ST::SELECT_TEXT_START)
        set_key_binding(SWT::ARROW_DOWN | SWT::MOD1 | SWT::MOD2, ST::SELECT_TEXT_END)
        set_key_binding(next_key | SWT::MOD2 | SWT::MOD3, ST::SELECT_WORD_NEXT)
        set_key_binding(previous_key | SWT::MOD2 | SWT::MOD3, ST::SELECT_WORD_PREVIOUS)
      else
        set_key_binding(SWT::HOME | SWT::MOD2, ST::SELECT_LINE_START)
        set_key_binding(SWT::END_ | SWT::MOD2, ST::SELECT_LINE_END)
        set_key_binding(SWT::HOME | SWT::MOD1 | SWT::MOD2, ST::SELECT_TEXT_START)
        set_key_binding(SWT::END_ | SWT::MOD1 | SWT::MOD2, ST::SELECT_TEXT_END)
        set_key_binding(next_key | SWT::MOD1 | SWT::MOD2, ST::SELECT_WORD_NEXT)
        set_key_binding(previous_key | SWT::MOD1 | SWT::MOD2, ST::SELECT_WORD_PREVIOUS)
      end
      set_key_binding(SWT::PAGE_UP | SWT::MOD2, ST::SELECT_PAGE_UP)
      set_key_binding(SWT::PAGE_DOWN | SWT::MOD2, ST::SELECT_PAGE_DOWN)
      set_key_binding(SWT::PAGE_UP | SWT::MOD1 | SWT::MOD2, ST::SELECT_WINDOW_START)
      set_key_binding(SWT::PAGE_DOWN | SWT::MOD1 | SWT::MOD2, ST::SELECT_WINDOW_END)
      set_key_binding(next_key | SWT::MOD2, ST::SELECT_COLUMN_NEXT)
      set_key_binding(previous_key | SWT::MOD2, ST::SELECT_COLUMN_PREVIOUS)
      # Modification
      # Cut, Copy, Paste
      set_key_binding(Character.new(?X.ord) | SWT::MOD1, ST::CUT)
      set_key_binding(Character.new(?C.ord) | SWT::MOD1, ST::COPY)
      set_key_binding(Character.new(?V.ord) | SWT::MOD1, ST::PASTE)
      if (IS_MAC)
        set_key_binding(SWT::DEL | SWT::MOD2, ST::DELETE_NEXT)
        set_key_binding(SWT::BS | SWT::MOD3, ST::DELETE_WORD_PREVIOUS)
        set_key_binding(SWT::DEL | SWT::MOD3, ST::DELETE_WORD_NEXT)
      else
        # Cut, Copy, Paste Wordstar style
        set_key_binding(SWT::DEL | SWT::MOD2, ST::CUT)
        set_key_binding(SWT::INSERT | SWT::MOD1, ST::COPY)
        set_key_binding(SWT::INSERT | SWT::MOD2, ST::PASTE)
      end
      set_key_binding(SWT::BS | SWT::MOD2, ST::DELETE_PREVIOUS)
      set_key_binding(SWT::BS, ST::DELETE_PREVIOUS)
      set_key_binding(SWT::DEL, ST::DELETE_NEXT)
      set_key_binding(SWT::BS | SWT::MOD1, ST::DELETE_WORD_PREVIOUS)
      set_key_binding(SWT::DEL | SWT::MOD1, ST::DELETE_WORD_NEXT)
      # Miscellaneous
      set_key_binding(SWT::INSERT, ST::TOGGLE_OVERWRITE)
    end
    
    typesig { [] }
    # Create the bitmaps to use for the caret in bidi mode.  This
    # method only needs to be called upon widget creation and when the
    # font changes (the caret bitmap height needs to match font height).
    def create_caret_bitmaps
      caret_width = BIDI_CARET_WIDTH
      display = get_display
      if (!(@left_caret_bitmap).nil?)
        if (!(@default_caret).nil? && (@left_caret_bitmap == @default_caret.get_image))
          @default_caret.set_image(nil)
        end
        @left_caret_bitmap.dispose
      end
      line_height = @renderer.get_line_height
      @left_caret_bitmap = Image.new(display, caret_width, line_height)
      gc = SwtGC.new(@left_caret_bitmap)
      gc.set_background(display.get_system_color(SWT.attr_color_black))
      gc.fill_rectangle(0, 0, caret_width, line_height)
      gc.set_foreground(display.get_system_color(SWT.attr_color_white))
      gc.draw_line(0, 0, 0, line_height)
      gc.draw_line(0, 0, caret_width - 1, 0)
      gc.draw_line(0, 1, 1, 1)
      gc.dispose
      if (!(@right_caret_bitmap).nil?)
        if (!(@default_caret).nil? && (@right_caret_bitmap == @default_caret.get_image))
          @default_caret.set_image(nil)
        end
        @right_caret_bitmap.dispose
      end
      @right_caret_bitmap = Image.new(display, caret_width, line_height)
      gc = SwtGC.new(@right_caret_bitmap)
      gc.set_background(display.get_system_color(SWT.attr_color_black))
      gc.fill_rectangle(0, 0, caret_width, line_height)
      gc.set_foreground(display.get_system_color(SWT.attr_color_white))
      gc.draw_line(caret_width - 1, 0, caret_width - 1, line_height)
      gc.draw_line(0, 0, caret_width - 1, 0)
      gc.draw_line(caret_width - 1, 1, 1, 1)
      gc.dispose
    end
    
    typesig { [] }
    # Moves the selected text to the clipboard.  The text will be put in the
    # clipboard in plain text format and RTF format.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def cut
      check_widget
      # Abort cut operation if copy to clipboard fails.
      # Fixes bug 21030.
      if (copy_selection(DND::CLIPBOARD))
        if (@block_selection && !(@block_xlocation).equal?(-1))
          insert_block_selection_text(RJava.cast_to_char(0), SWT::NULL)
        else
          do_delete
        end
      end
    end
    
    typesig { [Event] }
    # A mouse move event has occurred.  See if we should start autoscrolling.  If
    # the move position is outside of the client area, initiate autoscrolling.
    # Otherwise, we've moved back into the widget so end autoscrolling.
    def do_auto_scroll(event)
      caret_line = get_caret_line
      if (event.attr_y > @client_area_height - @bottom_margin && !(caret_line).equal?(@content.get_line_count - 1))
        do_auto_scroll(SWT::DOWN, event.attr_y - (@client_area_height - @bottom_margin))
      else
        if (event.attr_y < @top_margin && !(caret_line).equal?(0))
          do_auto_scroll(SWT::UP, @top_margin - event.attr_y)
        else
          if (event.attr_x < @left_margin && !@word_wrap)
            do_auto_scroll(ST::COLUMN_PREVIOUS, @left_margin - event.attr_x)
          else
            if (event.attr_x > @client_area_width - @right_margin && !@word_wrap)
              do_auto_scroll(ST::COLUMN_NEXT, event.attr_x - (@client_area_width - @right_margin))
            else
              end_auto_scroll
            end
          end
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Initiates autoscrolling.
    # 
    # @param direction SWT.UP, SWT.DOWN, SWT.COLUMN_NEXT, SWT.COLUMN_PREVIOUS
    def do_auto_scroll(direction, distance)
      @auto_scroll_distance = distance
      # If we're already autoscrolling in the given direction do nothing
      if ((@auto_scroll_direction).equal?(direction))
        return
      end
      timer = nil
      display = get_display
      # Set a timer that will simulate the user pressing and holding
      # down a cursor key (i.e., arrowUp, arrowDown).
      if ((direction).equal?(SWT::UP))
        timer = Class.new(Runnable.class == Class ? Runnable : Object) do
          local_class_in StyledText
          include_class_members StyledText
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if ((self.attr_auto_scroll_direction).equal?(SWT::UP))
              if (self.attr_block_selection)
                vertical_scroll_offset = get_vertical_scroll_offset
                y = self.attr_block_ylocation - vertical_scroll_offset
                pixels = Math.max(-self.attr_auto_scroll_distance, -vertical_scroll_offset)
                if (!(pixels).equal?(0))
                  set_block_selection_location(self.attr_block_xlocation - self.attr_horizontal_scroll_offset, y + pixels, true)
                  scroll_vertical(pixels, true)
                end
              else
                do_selection_page_up(self.attr_auto_scroll_distance)
              end
              display.timer_exec(V_SCROLL_RATE, self)
            end
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        @auto_scroll_direction = direction
        display.timer_exec(V_SCROLL_RATE, timer)
      else
        if ((direction).equal?(SWT::DOWN))
          timer = Class.new(Runnable.class == Class ? Runnable : Object) do
            local_class_in StyledText
            include_class_members StyledText
            include Runnable if Runnable.class == Module
            
            typesig { [] }
            define_method :run do
              if ((self.attr_auto_scroll_direction).equal?(SWT::DOWN))
                if (self.attr_block_selection)
                  vertical_scroll_offset = get_vertical_scroll_offset
                  y = self.attr_block_ylocation - vertical_scroll_offset
                  max_ = self.attr_renderer.get_height - vertical_scroll_offset - self.attr_client_area_height
                  pixels = Math.min(self.attr_auto_scroll_distance, Math.max(0, max_))
                  if (!(pixels).equal?(0))
                    set_block_selection_location(self.attr_block_xlocation - self.attr_horizontal_scroll_offset, y + pixels, true)
                    scroll_vertical(pixels, true)
                  end
                else
                  do_selection_page_down(self.attr_auto_scroll_distance)
                end
                display.timer_exec(V_SCROLL_RATE, self)
              end
            end
            
            typesig { [Vararg.new(Object)] }
            define_method :initialize do |*args|
              super(*args)
            end
            
            private
            alias_method :initialize_anonymous, :initialize
          end.new_local(self)
          @auto_scroll_direction = direction
          display.timer_exec(V_SCROLL_RATE, timer)
        else
          if ((direction).equal?(ST::COLUMN_NEXT))
            timer = Class.new(Runnable.class == Class ? Runnable : Object) do
              local_class_in StyledText
              include_class_members StyledText
              include Runnable if Runnable.class == Module
              
              typesig { [] }
              define_method :run do
                if ((self.attr_auto_scroll_direction).equal?(ST::COLUMN_NEXT))
                  if (self.attr_block_selection)
                    x = self.attr_block_xlocation - self.attr_horizontal_scroll_offset
                    max_ = self.attr_renderer.get_width - self.attr_horizontal_scroll_offset - self.attr_client_area_width
                    pixels = Math.min(self.attr_auto_scroll_distance, Math.max(0, max_))
                    if (!(pixels).equal?(0))
                      set_block_selection_location(x + pixels, self.attr_block_ylocation - get_vertical_scroll_offset, true)
                      scroll_horizontal(pixels, true)
                    end
                  else
                    do_visual_next
                    set_mouse_word_selection_anchor
                    do_mouse_selection
                  end
                  display.timer_exec(H_SCROLL_RATE, self)
                end
              end
              
              typesig { [Vararg.new(Object)] }
              define_method :initialize do |*args|
                super(*args)
              end
              
              private
              alias_method :initialize_anonymous, :initialize
            end.new_local(self)
            @auto_scroll_direction = direction
            display.timer_exec(H_SCROLL_RATE, timer)
          else
            if ((direction).equal?(ST::COLUMN_PREVIOUS))
              timer = Class.new(Runnable.class == Class ? Runnable : Object) do
                local_class_in StyledText
                include_class_members StyledText
                include Runnable if Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  if ((self.attr_auto_scroll_direction).equal?(ST::COLUMN_PREVIOUS))
                    if (self.attr_block_selection)
                      x = self.attr_block_xlocation - self.attr_horizontal_scroll_offset
                      pixels = Math.max(-self.attr_auto_scroll_distance, -self.attr_horizontal_scroll_offset)
                      if (!(pixels).equal?(0))
                        set_block_selection_location(x + pixels, self.attr_block_ylocation - get_vertical_scroll_offset, true)
                        scroll_horizontal(pixels, true)
                      end
                    else
                      do_visual_previous
                      set_mouse_word_selection_anchor
                      do_mouse_selection
                    end
                    display.timer_exec(H_SCROLL_RATE, self)
                  end
                end
                
                typesig { [Vararg.new(Object)] }
                define_method :initialize do |*args|
                  super(*args)
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self)
              @auto_scroll_direction = direction
              display.timer_exec(H_SCROLL_RATE, timer)
            end
          end
        end
      end
    end
    
    typesig { [] }
    # Deletes the previous character. Delete the selected text if any.
    # Move the caret in front of the deleted text.
    def do_backspace
      event = Event.new
      event.attr_text = ""
      if (!(@selection.attr_x).equal?(@selection.attr_y))
        event.attr_start = @selection.attr_x
        event.attr_end = @selection.attr_y
        send_key_event(event)
      else
        if (@caret_offset > 0)
          line_index = @content.get_line_at_offset(@caret_offset)
          line_offset = @content.get_offset_at_line(line_index)
          if ((@caret_offset).equal?(line_offset))
            line_offset = @content.get_offset_at_line(line_index - 1)
            event.attr_start = line_offset + @content.get_line(line_index - 1).length
            event.attr_end = @caret_offset
          else
            layout = @renderer.get_text_layout(line_index)
            start = layout.get_previous_offset(@caret_offset - line_offset, SWT::MOVEMENT_CHAR)
            @renderer.dispose_text_layout(layout)
            event.attr_start = start + line_offset
            event.attr_end = @caret_offset
          end
          send_key_event(event)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def do_block_column(next_)
      if ((@block_xlocation).equal?(-1))
        set_block_selection_offset(@caret_offset, false)
      end
      x = @block_xlocation - @horizontal_scroll_offset
      y = @block_ylocation - get_vertical_scroll_offset
      trailing = Array.typed(::Java::Int).new(1) { 0 }
      offset = get_offset_at_point(x, y, trailing, true)
      if (!(offset).equal?(-1))
        offset += trailing[0]
        line_index = @content.get_line_at_offset(offset)
        new_offset = 0
        if (next_)
          new_offset = get_cluster_next(offset, line_index)
        else
          new_offset = get_cluster_previous(offset, line_index)
        end
        offset = !(new_offset).equal?(offset) ? new_offset : -1
      end
      if (!(offset).equal?(-1))
        set_block_selection_offset(offset, true)
        show_caret
      else
        width = next_ ? @renderer.attr_average_char_width : -@renderer.attr_average_char_width
        max_width = Math.max(@client_area_width - @right_margin - @left_margin, @renderer.get_width)
        x = Math.max(0, Math.min(@block_xlocation + width, max_width)) - @horizontal_scroll_offset
        set_block_selection_location(x, y, true)
        rect = Rectangle.new(x, y, 0, 0)
        show_location(rect, true)
      end
    end
    
    typesig { [::Java::Boolean] }
    def do_block_word(next_)
      if ((@block_xlocation).equal?(-1))
        set_block_selection_offset(@caret_offset, false)
      end
      x = @block_xlocation - @horizontal_scroll_offset
      y = @block_ylocation - get_vertical_scroll_offset
      trailing = Array.typed(::Java::Int).new(1) { 0 }
      offset = get_offset_at_point(x, y, trailing, true)
      if (!(offset).equal?(-1))
        offset += trailing[0]
        line_index = @content.get_line_at_offset(offset)
        line_offset = @content.get_offset_at_line(line_index)
        line_text = @content.get_line(line_index)
        line_length = line_text.length
        new_offset = offset
        if (next_)
          if (offset < line_offset + line_length)
            new_offset = get_word_next(offset, SWT::MOVEMENT_WORD)
          end
        else
          if (offset > line_offset)
            new_offset = get_word_previous(offset, SWT::MOVEMENT_WORD)
          end
        end
        offset = !(new_offset).equal?(offset) ? new_offset : -1
      end
      if (!(offset).equal?(-1))
        set_block_selection_offset(offset, true)
        show_caret
      else
        width = (next_ ? @renderer.attr_average_char_width : -@renderer.attr_average_char_width) * 6
        max_width = Math.max(@client_area_width - @right_margin - @left_margin, @renderer.get_width)
        x = Math.max(0, Math.min(@block_xlocation + width, max_width)) - @horizontal_scroll_offset
        set_block_selection_location(x, y, true)
        rect = Rectangle.new(x, y, 0, 0)
        show_location(rect, true)
      end
    end
    
    typesig { [::Java::Boolean] }
    def do_block_line_vertical(up)
      if ((@block_xlocation).equal?(-1))
        set_block_selection_offset(@caret_offset, false)
      end
      y = @block_ylocation - get_vertical_scroll_offset
      line_index = get_line_index(y)
      if (up)
        if (line_index > 0)
          y = get_line_pixel(line_index - 1)
          set_block_selection_location(@block_xlocation - @horizontal_scroll_offset, y, true)
          if (y < @top_margin)
            scroll_vertical(y - @top_margin, true)
          end
        end
      else
        line_count = @content.get_line_count
        if (line_index + 1 < line_count)
          y = get_line_pixel(line_index + 2) - 1
          set_block_selection_location(@block_xlocation - @horizontal_scroll_offset, y, true)
          bottom = @client_area_height - @bottom_margin
          if (y > bottom)
            scroll_vertical(y - bottom, true)
          end
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def do_block_line_horizontal(end_)
      if ((@block_xlocation).equal?(-1))
        set_block_selection_offset(@caret_offset, false)
      end
      x = @block_xlocation - @horizontal_scroll_offset
      y = @block_ylocation - get_vertical_scroll_offset
      line_index = get_line_index(y)
      line_offset = @content.get_offset_at_line(line_index)
      line_text = @content.get_line(line_index)
      line_length = line_text.length
      trailing = Array.typed(::Java::Int).new(1) { 0 }
      offset = get_offset_at_point(x, y, trailing, true)
      if (!(offset).equal?(-1))
        offset += trailing[0]
        new_offset = offset
        if (end_)
          if (offset < line_offset + line_length)
            new_offset = line_offset + line_length
          end
        else
          if (offset > line_offset)
            new_offset = line_offset
          end
        end
        offset = !(new_offset).equal?(offset) ? new_offset : -1
      else
        if (!end_)
          offset = line_offset + line_length
        end
      end
      if (!(offset).equal?(-1))
        set_block_selection_offset(offset, true)
        show_caret
      else
        max_width = Math.max(@client_area_width - @right_margin - @left_margin, @renderer.get_width)
        x = (end_ ? max_width : 0) - @horizontal_scroll_offset
        set_block_selection_location(x, y, true)
        rect = Rectangle.new(x, y, 0, 0)
        show_location(rect, true)
      end
    end
    
    typesig { [::Java::Boolean] }
    def do_block_selection(send_event)
      if (@caret_offset > @selection_anchor)
        @selection.attr_x = @selection_anchor
        @selection.attr_y = @caret_offset
      else
        @selection.attr_x = @caret_offset
        @selection.attr_y = @selection_anchor
      end
      update_caret_visibility
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
      if (send_event)
        send_selection_event
      end
    end
    
    typesig { [::Java::Char] }
    # Replaces the selection with the character or insert the character at the
    # current caret position if no selection exists.
    # <p>
    # If a carriage return was typed replace it with the line break character
    # used by the widget on this platform.
    # </p>
    # 
    # @param key the character typed by the user
    def do_content(key)
      if (@block_selection && !(@block_xlocation).equal?(-1))
        insert_block_selection_text(key, SWT::NULL)
        return
      end
      event = Event.new
      event.attr_start = @selection.attr_x
      event.attr_end = @selection.attr_y
      # replace a CR line break with the widget line break
      # CR does not make sense on Windows since most (all?) applications
      # don't recognize CR as a line break.
      if ((key).equal?(SWT::CR) || (key).equal?(SWT::LF))
        if (!is_single_line)
          event.attr_text = get_line_delimiter
        end
      else
        if ((@selection.attr_x).equal?(@selection.attr_y) && @overwrite && !(key).equal?(TAB))
          # no selection and overwrite mode is on and the typed key is not a
          # tab character (tabs are always inserted without overwriting)?
          line_index = @content.get_line_at_offset(event.attr_end)
          line_offset = @content.get_offset_at_line(line_index)
          line = @content.get_line(line_index)
          # replace character at caret offset if the caret is not at the
          # end of the line
          if (event.attr_end < line_offset + line.length)
            event.attr_end += 1
          end
          event.attr_text = String.new(Array.typed(::Java::Char).new([key]))
        else
          event.attr_text = String.new(Array.typed(::Java::Char).new([key]))
        end
      end
      if (!(event.attr_text).nil?)
        if (@text_limit > 0 && @content.get_char_count - (event.attr_end - event.attr_start) >= @text_limit)
          return
        end
        send_key_event(event)
      end
    end
    
    typesig { [] }
    # Moves the caret after the last character of the widget content.
    def do_content_end
      # place caret at end of first line if receiver is in single
      # line mode. fixes 4820.
      if (is_single_line)
        do_line_end
      else
        length_ = @content.get_char_count
        if (@caret_offset < length_)
          set_caret_offset(length_, SWT::DEFAULT)
          show_caret
        end
      end
    end
    
    typesig { [] }
    # Moves the caret in front of the first character of the widget content.
    def do_content_start
      if (@caret_offset > 0)
        set_caret_offset(0, SWT::DEFAULT)
        show_caret
      end
    end
    
    typesig { [] }
    # Moves the caret to the start of the selection if a selection exists.
    # Otherwise, if no selection exists move the cursor according to the
    # cursor selection rules.
    # 
    # @see #doSelectionCursorPrevious
    def do_cursor_previous
      if (@selection.attr_y - @selection.attr_x > 0)
        set_caret_offset(@selection.attr_x, OFFSET_LEADING)
        show_caret
      else
        do_selection_cursor_previous
      end
    end
    
    typesig { [] }
    # Moves the caret to the end of the selection if a selection exists.
    # Otherwise, if no selection exists move the cursor according to the
    # cursor selection rules.
    # 
    # @see #doSelectionCursorNext
    def do_cursor_next
      if (@selection.attr_y - @selection.attr_x > 0)
        set_caret_offset(@selection.attr_y, PREVIOUS_OFFSET_TRAILING)
        show_caret
      else
        do_selection_cursor_next
      end
    end
    
    typesig { [] }
    # Deletes the next character. Delete the selected text if any.
    def do_delete
      event = Event.new
      event.attr_text = ""
      if (!(@selection.attr_x).equal?(@selection.attr_y))
        event.attr_start = @selection.attr_x
        event.attr_end = @selection.attr_y
        send_key_event(event)
      else
        if (@caret_offset < @content.get_char_count)
          line = @content.get_line_at_offset(@caret_offset)
          line_offset = @content.get_offset_at_line(line)
          line_length = @content.get_line(line).length
          if ((@caret_offset).equal?(line_offset + line_length))
            event.attr_start = @caret_offset
            event.attr_end = @content.get_offset_at_line(line + 1)
          else
            event.attr_start = @caret_offset
            event.attr_end = get_cluster_next(@caret_offset, line)
          end
          send_key_event(event)
        end
      end
    end
    
    typesig { [] }
    # Deletes the next word.
    def do_delete_word_next
      if (!(@selection.attr_x).equal?(@selection.attr_y))
        # if a selection exists, treat the as if
        # only the delete key was pressed
        do_delete
      else
        event = Event.new
        event.attr_text = ""
        event.attr_start = @caret_offset
        event.attr_end = get_word_next(@caret_offset, SWT::MOVEMENT_WORD)
        send_key_event(event)
      end
    end
    
    typesig { [] }
    # Deletes the previous word.
    def do_delete_word_previous
      if (!(@selection.attr_x).equal?(@selection.attr_y))
        # if a selection exists, treat as if
        # only the backspace key was pressed
        do_backspace
      else
        event = Event.new
        event.attr_text = ""
        event.attr_start = get_word_previous(@caret_offset, SWT::MOVEMENT_WORD)
        event.attr_end = @caret_offset
        send_key_event(event)
      end
    end
    
    typesig { [::Java::Boolean] }
    # Moves the caret one line down and to the same character offset relative
    # to the beginning of the line. Move the caret to the end of the new line
    # if the new line is shorter than the character offset.
    def do_line_down(select)
      caret_line = get_caret_line
      line_count = @content.get_line_count
      y = 0
      last_line = false
      if (@word_wrap)
        line_offset = @content.get_offset_at_line(caret_line)
        offset_in_line = @caret_offset - line_offset
        layout = @renderer.get_text_layout(caret_line)
        line_index = get_visual_line_index(layout, offset_in_line)
        layout_line_count = layout.get_line_count
        if ((line_index).equal?(layout_line_count - 1))
          last_line = (caret_line).equal?(line_count - 1)
          caret_line += 1
        else
          y = layout.get_line_bounds(line_index + 1).attr_y
        end
        @renderer.dispose_text_layout(layout)
      else
        last_line = (caret_line).equal?(line_count - 1)
        caret_line += 1
      end
      if (last_line)
        if (select)
          set_caret_offset(@content.get_char_count, SWT::DEFAULT)
        end
      else
        alignment = Array.typed(::Java::Int).new(1) { 0 }
        offset = get_offset_at_point(@column_x, y, caret_line, alignment)
        set_caret_offset(offset, alignment[0])
      end
      old_column_x = @column_x
      old_hscroll_offset = @horizontal_scroll_offset
      if (select)
        set_mouse_word_selection_anchor
        # select first and then scroll to reduce flash when key
        # repeat scrolls lots of lines
        do_selection(ST::COLUMN_NEXT)
      end
      show_caret
      h_scroll_change = old_hscroll_offset - @horizontal_scroll_offset
      @column_x = old_column_x + h_scroll_change
    end
    
    typesig { [] }
    # Moves the caret to the end of the line.
    def do_line_end
      caret_line = get_caret_line
      line_offset = @content.get_offset_at_line(caret_line)
      line_end_offset = 0
      if (@word_wrap)
        layout = @renderer.get_text_layout(caret_line)
        offset_in_line = @caret_offset - line_offset
        line_index = get_visual_line_index(layout, offset_in_line)
        offsets = layout.get_line_offsets
        line_end_offset = line_offset + offsets[line_index + 1]
        @renderer.dispose_text_layout(layout)
      else
        line_length = @content.get_line(caret_line).length
        line_end_offset = line_offset + line_length
      end
      if (@caret_offset < line_end_offset)
        set_caret_offset(line_end_offset, PREVIOUS_OFFSET_TRAILING)
        show_caret
      end
    end
    
    typesig { [] }
    # Moves the caret to the beginning of the line.
    def do_line_start
      caret_line = get_caret_line
      line_offset = @content.get_offset_at_line(caret_line)
      if (@word_wrap)
        layout = @renderer.get_text_layout(caret_line)
        offset_in_line = @caret_offset - line_offset
        line_index = get_visual_line_index(layout, offset_in_line)
        offsets = layout.get_line_offsets
        line_offset += offsets[line_index]
        @renderer.dispose_text_layout(layout)
      end
      if (@caret_offset > line_offset)
        set_caret_offset(line_offset, OFFSET_LEADING)
        show_caret
      end
    end
    
    typesig { [::Java::Boolean] }
    # Moves the caret one line up and to the same character offset relative
    # to the beginning of the line. Move the caret to the end of the new line
    # if the new line is shorter than the character offset.
    def do_line_up(select)
      caret_line = get_caret_line
      y = 0
      first_line = false
      if (@word_wrap)
        line_offset = @content.get_offset_at_line(caret_line)
        offset_in_line = @caret_offset - line_offset
        layout = @renderer.get_text_layout(caret_line)
        line_index = get_visual_line_index(layout, offset_in_line)
        if ((line_index).equal?(0))
          first_line = (caret_line).equal?(0)
          if (!first_line)
            caret_line -= 1
            y = @renderer.get_line_height(caret_line) - 1
          end
        else
          y = layout.get_line_bounds(line_index - 1).attr_y
        end
        @renderer.dispose_text_layout(layout)
      else
        first_line = (caret_line).equal?(0)
        caret_line -= 1
      end
      if (first_line)
        if (select)
          set_caret_offset(0, SWT::DEFAULT)
        end
      else
        alignment = Array.typed(::Java::Int).new(1) { 0 }
        offset = get_offset_at_point(@column_x, y, caret_line, alignment)
        set_caret_offset(offset, alignment[0])
      end
      old_column_x = @column_x
      old_hscroll_offset = @horizontal_scroll_offset
      if (select)
        set_mouse_word_selection_anchor
      end
      show_caret
      if (select)
        do_selection(ST::COLUMN_PREVIOUS)
      end
      h_scroll_change = old_hscroll_offset - @horizontal_scroll_offset
      @column_x = old_column_x + h_scroll_change
    end
    
    typesig { [] }
    def do_mouse_link_cursor
      display = get_display
      point = display.get_cursor_location
      point = display.map(nil, self, point)
      do_mouse_link_cursor(point.attr_x, point.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def do_mouse_link_cursor(x, y)
      offset = get_offset_at_point(x, y, nil, true)
      display = get_display
      new_cursor = @cursor
      if (@renderer.has_link(offset))
        new_cursor = display.get_system_cursor(SWT::CURSOR_HAND)
      else
        if ((@cursor).nil?)
          type = @block_selection ? SWT::CURSOR_CROSS : SWT::CURSOR_IBEAM
          new_cursor = display.get_system_cursor(type)
        end
      end
      if (!(new_cursor).equal?(get_cursor))
        Canvas.instance_method(:set_cursor).bind(self).call(new_cursor)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Moves the caret to the specified location.
    # 
    # @param x x location of the new caret position
    # @param y y location of the new caret position
    # @param select the location change is a selection operation.
    # include the line delimiter in the selection
    def do_mouse_location_change(x, y, select)
      line = get_line_index(y)
      @update_caret_direction = true
      if (@block_selection)
        x = Math.max(@left_margin, Math.min(x, @client_area_width - @right_margin))
        y = Math.max(@top_margin, Math.min(y, @client_area_height - @bottom_margin))
        if (@double_click_enabled && @click_count > 1)
          word_select = ((@click_count & 1)).equal?(0)
          if (word_select)
            left = get_point_at_offset(@double_click_selection.attr_x)
            trailing = Array.typed(::Java::Int).new(1) { 0 }
            offset = get_offset_at_point(x, y, trailing, true)
            if (!(offset).equal?(-1))
              if (x > left.attr_x)
                offset = get_word_next(offset + trailing[0], SWT::MOVEMENT_WORD_END)
                set_block_selection_offset(@double_click_selection.attr_x, offset, true)
              else
                offset = get_word_previous(offset + trailing[0], SWT::MOVEMENT_WORD_START)
                set_block_selection_offset(@double_click_selection.attr_y, offset, true)
              end
            else
              if (x > left.attr_x)
                set_block_selection_location(left.attr_x, left.attr_y, x, y, true)
              else
                right = get_point_at_offset(@double_click_selection.attr_y)
                set_block_selection_location(right.attr_x, right.attr_y, x, y, true)
              end
            end
          else
            set_block_selection_location(@block_xlocation, y, true)
          end
          return
        else
          if (select)
            if ((@block_xlocation).equal?(-1))
              set_block_selection_offset(@caret_offset, false)
            end
          else
            clear_block_selection(true, false)
          end
          trailing = Array.typed(::Java::Int).new(1) { 0 }
          offset = get_offset_at_point(x, y, trailing, true)
          if (!(offset).equal?(-1))
            if (select)
              set_block_selection_offset(offset + trailing[0], true)
              return
            end
          else
            if (is_fixed_line_height && @renderer.attr_fixed_pitch)
              avg = @renderer.attr_average_char_width
              x = ((x + avg / 2 - @left_margin + @horizontal_scroll_offset) / avg * avg) + @left_margin - @horizontal_scroll_offset
            end
            set_block_selection_location(x, y, true)
            return
          end
        end
      end
      # allow caret to be placed below first line only if receiver is
      # not in single line mode. fixes 4820.
      if (line < 0 || (is_single_line && line > 0))
        return
      end
      alignment = Array.typed(::Java::Int).new(1) { 0 }
      new_caret_offset = get_offset_at_point(x, y, alignment)
      new_caret_alignemnt = alignment[0]
      if (@double_click_enabled && @click_count > 1)
        new_caret_offset = do_mouse_word_select(x, new_caret_offset, line)
      end
      new_caret_line = @content.get_line_at_offset(new_caret_offset)
      # Is the mouse within the left client area border or on
      # a different line? If not the autoscroll selection
      # could be incorrectly reset. Fixes 1GKM3XS
      vchange = 0 <= y && y < @client_area_height || (new_caret_line).equal?(0) || (new_caret_line).equal?(@content.get_line_count - 1)
      hchange = 0 <= x && x < @client_area_width || @word_wrap || !(new_caret_line).equal?(@content.get_line_at_offset(@caret_offset))
      if (vchange && hchange && (!(new_caret_offset).equal?(@caret_offset) || !(new_caret_alignemnt).equal?(@caret_alignment)))
        set_caret_offset(new_caret_offset, new_caret_alignemnt)
        if (select)
          do_mouse_selection
        end
        show_caret
      end
      if (!select)
        set_caret_offset(new_caret_offset, new_caret_alignemnt)
        clear_selection(true)
      end
    end
    
    typesig { [] }
    # Updates the selection based on the caret position
    def do_mouse_selection
      if (@caret_offset <= @selection.attr_x || (@caret_offset > @selection.attr_x && @caret_offset < @selection.attr_y && (@selection_anchor).equal?(@selection.attr_x)))
        do_selection(ST::COLUMN_PREVIOUS)
      else
        do_selection(ST::COLUMN_NEXT)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Returns the offset of the word at the specified offset.
    # If the current selection extends from high index to low index
    # (i.e., right to left, or caret is at left border of selection on
    # non-bidi platforms) the start offset of the word preceding the
    # selection is returned. If the current selection extends from
    # low index to high index the end offset of the word following
    # the selection is returned.
    # 
    # @param x mouse x location
    # @param newCaretOffset caret offset of the mouse cursor location
    # @param line line index of the mouse cursor location
    def do_mouse_word_select(x, new_caret_offset, line)
      # flip selection anchor based on word selection direction from
      # base double click. Always do this here (and don't rely on doAutoScroll)
      # because auto scroll only does not cover all possible mouse selections
      # (e.g., mouse x < 0 && mouse y > caret line y)
      if (new_caret_offset < @selection_anchor && (@selection_anchor).equal?(@selection.attr_x))
        @selection_anchor = @double_click_selection.attr_y
      else
        if (new_caret_offset > @selection_anchor && (@selection_anchor).equal?(@selection.attr_y))
          @selection_anchor = @double_click_selection.attr_x
        end
      end
      if (0 <= x && x < @client_area_width)
        word_select = ((@click_count & 1)).equal?(0)
        if ((@caret_offset).equal?(@selection.attr_x))
          if (word_select)
            new_caret_offset = get_word_previous(new_caret_offset, SWT::MOVEMENT_WORD_START)
          else
            new_caret_offset = @content.get_offset_at_line(line)
          end
        else
          if (word_select)
            new_caret_offset = get_word_next(new_caret_offset, SWT::MOVEMENT_WORD_END)
          else
            line_end = @content.get_char_count
            if (line + 1 < @content.get_line_count)
              line_end = @content.get_offset_at_line(line + 1)
            end
            new_caret_offset = line_end
          end
        end
      end
      return new_caret_offset
    end
    
    typesig { [::Java::Boolean, ::Java::Int] }
    # Scrolls one page down so that the last line (truncated or whole)
    # of the current page becomes the fully visible top line.
    # <p>
    # The caret is scrolled the same number of lines so that its location
    # relative to the top line remains the same. The exception is the end
    # of the text where a full page scroll is not possible. In this case
    # the caret is moved after the last character.
    # </p>
    # 
    # @param select whether or not to select the page
    def do_page_down(select, height)
      if (is_single_line)
        return
      end
      old_column_x = @column_x
      old_hscroll_offset = @horizontal_scroll_offset
      if (is_fixed_line_height)
        line_count = @content.get_line_count
        caret_line = get_caret_line
        if (caret_line < line_count - 1)
          line_height = @renderer.get_line_height
          lines = ((height).equal?(-1) ? @client_area_height : height) / line_height
          scroll_lines = Math.min(line_count - caret_line - 1, lines)
          # ensure that scrollLines never gets negative and at least one
          # line is scrolled. fixes bug 5602.
          scroll_lines = Math.max(1, scroll_lines)
          alignment = Array.typed(::Java::Int).new(1) { 0 }
          offset = get_offset_at_point(@column_x, get_line_pixel(caret_line + scroll_lines), alignment)
          set_caret_offset(offset, alignment[0])
          if (select)
            do_selection(ST::COLUMN_NEXT)
          end
          # scroll one page down or to the bottom
          vertical_maximum = line_count * get_vertical_increment
          page_size = @client_area_height
          vertical_scroll_offset = get_vertical_scroll_offset
          scroll_offset = vertical_scroll_offset + scroll_lines * get_vertical_increment
          if (scroll_offset + page_size > vertical_maximum)
            scroll_offset = vertical_maximum - page_size
          end
          if (scroll_offset > vertical_scroll_offset)
            scroll_vertical(scroll_offset - vertical_scroll_offset, true)
          end
        end
      else
        line_count = @content.get_line_count
        caret_line = get_caret_line
        line_index = 0
        line_height = 0
        if ((height).equal?(-1))
          line_index = get_partial_bottom_index
          top_y = get_line_pixel(line_index)
          line_height = @renderer.get_line_height(line_index)
          height = top_y
          if (top_y + line_height <= @client_area_height)
            height += line_height
          else
            if (@word_wrap)
              layout = @renderer.get_text_layout(line_index)
              y = @client_area_height - top_y
              i = 0
              while i < layout.get_line_count
                bounds = layout.get_line_bounds(i)
                if (bounds.contains(bounds.attr_x, y))
                  height += bounds.attr_y
                  break
                end
                i += 1
              end
              @renderer.dispose_text_layout(layout)
            end
          end
        else
          line_index = get_line_index(height)
          top_line_y = get_line_pixel(line_index)
          if (@word_wrap)
            layout = @renderer.get_text_layout(line_index)
            y = height - top_line_y
            i = 0
            while i < layout.get_line_count
              bounds = layout.get_line_bounds(i)
              if (bounds.contains(bounds.attr_x, y))
                height = top_line_y + bounds.attr_y + bounds.attr_height
                break
              end
              i += 1
            end
            @renderer.dispose_text_layout(layout)
          else
            height = top_line_y + @renderer.get_line_height(line_index)
          end
        end
        caret_height = height
        if (@word_wrap)
          layout = @renderer.get_text_layout(caret_line)
          offset_in_line = @caret_offset - @content.get_offset_at_line(caret_line)
          line_index = get_visual_line_index(layout, offset_in_line)
          caret_height += layout.get_line_bounds(line_index).attr_y
          @renderer.dispose_text_layout(layout)
        end
        line_index = caret_line
        line_height = @renderer.get_line_height(line_index)
        while (caret_height - line_height >= 0 && line_index < line_count - 1)
          caret_height -= line_height
          line_height = @renderer.get_line_height((line_index += 1))
        end
        alignment = Array.typed(::Java::Int).new(1) { 0 }
        offset = get_offset_at_point(@column_x, caret_height, line_index, alignment)
        set_caret_offset(offset, alignment[0])
        if (select)
          do_selection(ST::COLUMN_NEXT)
        end
        height = get_available_height_bellow(height)
        scroll_vertical(height, true)
        if ((height).equal?(0))
          set_caret_location
        end
      end
      show_caret
      h_scroll_change = old_hscroll_offset - @horizontal_scroll_offset
      @column_x = old_column_x + h_scroll_change
    end
    
    typesig { [] }
    # Moves the cursor to the end of the last fully visible line.
    def do_page_end
      # go to end of line if in single line mode. fixes 5673
      if (is_single_line)
        do_line_end
      else
        bottom_offset = 0
        if (@word_wrap)
          line_index = get_partial_bottom_index
          layout = @renderer.get_text_layout(line_index)
          y = (@client_area_height - @bottom_margin) - get_line_pixel(line_index)
          index = layout.get_line_count - 1
          while (index >= 0)
            bounds = layout.get_line_bounds(index)
            if (y >= bounds.attr_y + bounds.attr_height)
              break
            end
            index -= 1
          end
          if ((index).equal?(-1) && line_index > 0)
            bottom_offset = @content.get_offset_at_line(line_index - 1) + @content.get_line(line_index - 1).length
          else
            bottom_offset = @content.get_offset_at_line(line_index) + Math.max(0, layout.get_line_offsets[index + 1] - 1)
          end
          @renderer.dispose_text_layout(layout)
        else
          line_index = get_bottom_index
          bottom_offset = @content.get_offset_at_line(line_index) + @content.get_line(line_index).length
        end
        if (@caret_offset < bottom_offset)
          set_caret_offset(bottom_offset, OFFSET_LEADING)
          show_caret
        end
      end
    end
    
    typesig { [] }
    # Moves the cursor to the beginning of the first fully visible line.
    def do_page_start
      top_offset = 0
      if (@word_wrap)
        y = 0
        line_index = 0
        if (@top_index_y > 0)
          line_index = @top_index - 1
          y = @renderer.get_line_height(line_index) - @top_index_y
        else
          line_index = @top_index
          y = -@top_index_y
        end
        layout = @renderer.get_text_layout(line_index)
        index = 0
        line_count = layout.get_line_count
        while (index < line_count)
          bounds = layout.get_line_bounds(index)
          if (y <= bounds.attr_y)
            break
          end
          index += 1
        end
        if ((index).equal?(line_count))
          top_offset = @content.get_offset_at_line(line_index + 1)
        else
          top_offset = @content.get_offset_at_line(line_index) + layout.get_line_offsets[index]
        end
        @renderer.dispose_text_layout(layout)
      else
        top_offset = @content.get_offset_at_line(@top_index)
      end
      if (@caret_offset > top_offset)
        set_caret_offset(top_offset, OFFSET_LEADING)
        show_caret
      end
    end
    
    typesig { [::Java::Boolean, ::Java::Int] }
    # Scrolls one page up so that the first line (truncated or whole)
    # of the current page becomes the fully visible last line.
    # The caret is scrolled the same number of lines so that its location
    # relative to the top line remains the same. The exception is the beginning
    # of the text where a full page scroll is not possible. In this case the
    # caret is moved in front of the first character.
    def do_page_up(select, height)
      if (is_single_line)
        return
      end
      old_hscroll_offset = @horizontal_scroll_offset
      old_column_x = @column_x
      if (is_fixed_line_height)
        caret_line = get_caret_line
        if (caret_line > 0)
          line_height = @renderer.get_line_height
          lines = ((height).equal?(-1) ? @client_area_height : height) / line_height
          scroll_lines = Math.max(1, Math.min(caret_line, lines))
          caret_line -= scroll_lines
          alignment = Array.typed(::Java::Int).new(1) { 0 }
          offset = get_offset_at_point(@column_x, get_line_pixel(caret_line), alignment)
          set_caret_offset(offset, alignment[0])
          if (select)
            do_selection(ST::COLUMN_PREVIOUS)
          end
          vertical_scroll_offset = get_vertical_scroll_offset
          scroll_offset = Math.max(0, vertical_scroll_offset - scroll_lines * get_vertical_increment)
          if (scroll_offset < vertical_scroll_offset)
            scroll_vertical(scroll_offset - vertical_scroll_offset, true)
          end
        end
      else
        caret_line = get_caret_line
        line_height = 0
        line_index = 0
        if ((height).equal?(-1))
          if ((@top_index_y).equal?(0))
            height = @client_area_height
          else
            y = 0
            if (@top_index > 0)
              line_index = @top_index - 1
              line_height = @renderer.get_line_height(line_index)
              height = @client_area_height - @top_index_y
              y = line_height - @top_index_y
            else
              line_index = @top_index
              line_height = @renderer.get_line_height(line_index)
              height = @client_area_height - (line_height + @top_index_y)
              y = -@top_index_y
            end
            if (@word_wrap)
              layout = @renderer.get_text_layout(line_index)
              i = 0
              while i < layout.get_line_count
                bounds = layout.get_line_bounds(i)
                if (bounds.contains(bounds.attr_x, y))
                  height += line_height - (bounds.attr_y + bounds.attr_height)
                  break
                end
                i += 1
              end
              @renderer.dispose_text_layout(layout)
            end
          end
        else
          line_index = get_line_index(@client_area_height - height)
          top_line_y = get_line_pixel(line_index)
          if (@word_wrap)
            layout = @renderer.get_text_layout(line_index)
            y = top_line_y
            i = 0
            while i < layout.get_line_count
              bounds = layout.get_line_bounds(i)
              if (bounds.contains(bounds.attr_x, y))
                height = @client_area_height - (top_line_y + bounds.attr_y)
                break
              end
              i += 1
            end
            @renderer.dispose_text_layout(layout)
          else
            height = @client_area_height - top_line_y
          end
        end
        caret_height = height
        if (@word_wrap)
          layout = @renderer.get_text_layout(caret_line)
          offset_in_line = @caret_offset - @content.get_offset_at_line(caret_line)
          line_index = get_visual_line_index(layout, offset_in_line)
          caret_height += layout.get_bounds.attr_height - layout.get_line_bounds(line_index).attr_y
          @renderer.dispose_text_layout(layout)
        end
        line_index = caret_line
        line_height = @renderer.get_line_height(line_index)
        while (caret_height - line_height >= 0 && line_index > 0)
          caret_height -= line_height
          line_height = @renderer.get_line_height((line_index -= 1))
        end
        line_height = @renderer.get_line_height(line_index)
        alignment = Array.typed(::Java::Int).new(1) { 0 }
        offset = get_offset_at_point(@column_x, line_height - caret_height, line_index, alignment)
        set_caret_offset(offset, alignment[0])
        if (select)
          do_selection(ST::COLUMN_PREVIOUS)
        end
        height = get_available_height_above(height)
        scroll_vertical(-height, true)
        if ((height).equal?(0))
          set_caret_location
        end
      end
      show_caret
      h_scroll_change = old_hscroll_offset - @horizontal_scroll_offset
      @column_x = old_column_x + h_scroll_change
    end
    
    typesig { [::Java::Int] }
    # Updates the selection to extend to the current caret position.
    def do_selection(direction)
      redraw_start = -1
      redraw_end = -1
      if ((@selection_anchor).equal?(-1))
        @selection_anchor = @selection.attr_x
      end
      if ((direction).equal?(ST::COLUMN_PREVIOUS))
        if (@caret_offset < @selection.attr_x)
          # grow selection
          redraw_end = @selection.attr_x
          redraw_start = @selection.attr_x = @caret_offset
          # check if selection has reversed direction
          if (!(@selection.attr_y).equal?(@selection_anchor))
            redraw_end = @selection.attr_y
            @selection.attr_y = @selection_anchor
          end
          # test whether selection actually changed. Fixes 1G71EO1
        else
          if ((@selection_anchor).equal?(@selection.attr_x) && @caret_offset < @selection.attr_y)
            # caret moved towards selection anchor (left side of selection).
            # shrink selection
            redraw_end = @selection.attr_y
            redraw_start = @selection.attr_y = @caret_offset
          end
        end
      else
        if (@caret_offset > @selection.attr_y)
          # grow selection
          redraw_start = @selection.attr_y
          redraw_end = @selection.attr_y = @caret_offset
          # check if selection has reversed direction
          if (!(@selection.attr_x).equal?(@selection_anchor))
            redraw_start = @selection.attr_x
            @selection.attr_x = @selection_anchor
          end
          # test whether selection actually changed. Fixes 1G71EO1
        else
          if ((@selection_anchor).equal?(@selection.attr_y) && @caret_offset > @selection.attr_x)
            # caret moved towards selection anchor (right side of selection).
            # shrink selection
            redraw_start = @selection.attr_x
            redraw_end = @selection.attr_x = @caret_offset
          end
        end
      end
      if (!(redraw_start).equal?(-1) && !(redraw_end).equal?(-1))
        internal_redraw_range(redraw_start, redraw_end - redraw_start)
        send_selection_event
      end
    end
    
    typesig { [] }
    # Moves the caret to the next character or to the beginning of the
    # next line if the cursor is at the end of a line.
    def do_selection_cursor_next
      caret_line = get_caret_line
      line_offset = @content.get_offset_at_line(caret_line)
      offset_in_line = @caret_offset - line_offset
      offset = 0
      alignment = 0
      if (offset_in_line < @content.get_line(caret_line).length)
        layout = @renderer.get_text_layout(caret_line)
        offset_in_line = layout.get_next_offset(offset_in_line, SWT::MOVEMENT_CLUSTER)
        line_start = layout.get_line_offsets[layout.get_line_index(offset_in_line)]
        @renderer.dispose_text_layout(layout)
        offset = offset_in_line + line_offset
        alignment = (offset_in_line).equal?(line_start) ? OFFSET_LEADING : PREVIOUS_OFFSET_TRAILING
        set_caret_offset(offset, alignment)
        show_caret
      else
        if (caret_line < @content.get_line_count - 1 && !is_single_line)
          caret_line += 1
          offset = @content.get_offset_at_line(caret_line)
          alignment = PREVIOUS_OFFSET_TRAILING
          set_caret_offset(offset, alignment)
          show_caret
        end
      end
    end
    
    typesig { [] }
    # Moves the caret to the previous character or to the end of the previous
    # line if the cursor is at the beginning of a line.
    def do_selection_cursor_previous
      caret_line = get_caret_line
      line_offset = @content.get_offset_at_line(caret_line)
      offset_in_line = @caret_offset - line_offset
      if (offset_in_line > 0)
        offset = get_cluster_previous(@caret_offset, caret_line)
        set_caret_offset(offset, OFFSET_LEADING)
        show_caret
      else
        if (caret_line > 0)
          caret_line -= 1
          line_offset = @content.get_offset_at_line(caret_line)
          offset = line_offset + @content.get_line(caret_line).length
          set_caret_offset(offset, OFFSET_LEADING)
          show_caret
        end
      end
    end
    
    typesig { [] }
    # Moves the caret one line down and to the same character offset relative
    # to the beginning of the line. Moves the caret to the end of the new line
    # if the new line is shorter than the character offset.
    # Moves the caret to the end of the text if the caret already is on the
    # last line.
    # Adjusts the selection according to the caret change. This can either add
    # to or subtract from the old selection, depending on the previous selection
    # direction.
    def do_selection_line_down
      old_column_x = @column_x = get_point_at_offset(@caret_offset).attr_x
      do_line_down(true)
      @column_x = old_column_x
    end
    
    typesig { [] }
    # Moves the caret one line up and to the same character offset relative
    # to the beginning of the line. Moves the caret to the end of the new line
    # if the new line is shorter than the character offset.
    # Moves the caret to the beginning of the document if it is already on the
    # first line.
    # Adjusts the selection according to the caret change. This can either add
    # to or subtract from the old selection, depending on the previous selection
    # direction.
    def do_selection_line_up
      old_column_x = @column_x = get_point_at_offset(@caret_offset).attr_x
      do_line_up(true)
      @column_x = old_column_x
    end
    
    typesig { [::Java::Int] }
    # Scrolls one page down so that the last line (truncated or whole)
    # of the current page becomes the fully visible top line.
    # <p>
    # The caret is scrolled the same number of lines so that its location
    # relative to the top line remains the same. The exception is the end
    # of the text where a full page scroll is not possible. In this case
    # the caret is moved after the last character.
    # <p></p>
    # Adjusts the selection according to the caret change. This can either add
    # to or subtract from the old selection, depending on the previous selection
    # direction.
    # </p>
    def do_selection_page_down(pixels)
      old_column_x = @column_x = get_point_at_offset(@caret_offset).attr_x
      do_page_down(true, pixels)
      @column_x = old_column_x
    end
    
    typesig { [::Java::Int] }
    # Scrolls one page up so that the first line (truncated or whole)
    # of the current page becomes the fully visible last line.
    # <p>
    # The caret is scrolled the same number of lines so that its location
    # relative to the top line remains the same. The exception is the beginning
    # of the text where a full page scroll is not possible. In this case the
    # caret is moved in front of the first character.
    # </p><p>
    # Adjusts the selection according to the caret change. This can either add
    # to or subtract from the old selection, depending on the previous selection
    # direction.
    # </p>
    def do_selection_page_up(pixels)
      old_column_x = @column_x = get_point_at_offset(@caret_offset).attr_x
      do_page_up(true, pixels)
      @column_x = old_column_x
    end
    
    typesig { [] }
    # Moves the caret to the end of the next word .
    def do_selection_word_next
      offset = get_word_next(@caret_offset, SWT::MOVEMENT_WORD)
      # don't change caret position if in single line mode and the cursor
      # would be on a different line. fixes 5673
      if (!is_single_line || (@content.get_line_at_offset(@caret_offset)).equal?(@content.get_line_at_offset(offset)))
        # Force symmetrical movement for word next and previous. Fixes 14536
        set_caret_offset(offset, OFFSET_LEADING)
        show_caret
      end
    end
    
    typesig { [] }
    # Moves the caret to the start of the previous word.
    def do_selection_word_previous
      offset = get_word_previous(@caret_offset, SWT::MOVEMENT_WORD)
      set_caret_offset(offset, OFFSET_LEADING)
      show_caret
    end
    
    typesig { [] }
    # Moves the caret one character to the left.  Do not go to the previous line.
    # When in a bidi locale and at a R2L character the caret is moved to the
    # beginning of the R2L segment (visually right) and then one character to the
    # left (visually left because it's now in a L2R segment).
    def do_visual_previous
      offset = get_cluster_previous(@caret_offset, get_caret_line)
      set_caret_offset(offset, SWT::DEFAULT)
      show_caret
    end
    
    typesig { [] }
    # Moves the caret one character to the right.  Do not go to the next line.
    # When in a bidi locale and at a R2L character the caret is moved to the
    # end of the R2L segment (visually left) and then one character to the
    # right (visually right because it's now in a L2R segment).
    def do_visual_next
      offset = get_cluster_next(@caret_offset, get_caret_line)
      set_caret_offset(offset, SWT::DEFAULT)
      show_caret
    end
    
    typesig { [] }
    # Moves the caret to the end of the next word.
    # If a selection exists, move the caret to the end of the selection
    # and remove the selection.
    def do_word_next
      if (@selection.attr_y - @selection.attr_x > 0)
        set_caret_offset(@selection.attr_y, SWT::DEFAULT)
        show_caret
      else
        do_selection_word_next
      end
    end
    
    typesig { [] }
    # Moves the caret to the start of the previous word.
    # If a selection exists, move the caret to the start of the selection
    # and remove the selection.
    def do_word_previous
      if (@selection.attr_y - @selection.attr_x > 0)
        set_caret_offset(@selection.attr_x, SWT::DEFAULT)
        show_caret
      else
        do_selection_word_previous
      end
    end
    
    typesig { [] }
    # Ends the autoscroll process.
    def end_auto_scroll
      @auto_scroll_direction = SWT::NULL
    end
    
    typesig { [] }
    def get_background
      check_widget
      if ((@background).nil?)
        return get_display.get_system_color(SWT::COLOR_LIST_BACKGROUND)
      end
      return @background
    end
    
    typesig { [] }
    # Returns the baseline, in pixels.
    # 
    # Note: this API should not be used if a StyleRange attribute causes lines to
    # have different heights (i.e. different fonts, rise, etc).
    # 
    # @return baseline the baseline
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @since 3.0
    # 
    # @see #getBaseline(int)
    def get_baseline
      check_widget
      return @renderer.get_baseline
    end
    
    typesig { [::Java::Int] }
    # Returns the baseline at the given offset, in pixels.
    # 
    # @param offset the offset
    # 
    # @return baseline the baseline
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when the offset is outside the valid range (< 0 or > getCharCount())</li>
    # </ul>
    # 
    # @since 3.2
    def get_baseline(offset)
      check_widget
      if (!(0 <= offset && offset <= @content.get_char_count))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      if (is_fixed_line_height)
        return @renderer.get_baseline
      end
      line_index = @content.get_line_at_offset(offset)
      line_offset = @content.get_offset_at_line(line_index)
      layout = @renderer.get_text_layout(line_index)
      line_in_paragraph = layout.get_line_index(Math.min(offset - line_offset, layout.get_text.length))
      metrics = layout.get_line_metrics(line_in_paragraph)
      @renderer.dispose_text_layout(layout)
      return metrics.get_ascent + metrics.get_leading
    end
    
    typesig { [] }
    # Gets the BIDI coloring mode.  When true the BIDI text display
    # algorithm is applied to segments of text that are the same
    # color.
    # 
    # @return the current coloring mode
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @deprecated use BidiSegmentListener instead.
    def get_bidi_coloring
      check_widget
      return @bidi_coloring
    end
    
    typesig { [] }
    # Returns whether the widget is in block selection mode.
    # 
    # @return true if widget is in block selection mode, false otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def get_block_selection
      check_widget
      return @block_selection
    end
    
    typesig { [] }
    def get_block_selecton_position
      first_line = get_line_index(@block_yanchor - get_vertical_scroll_offset)
      last_line = get_line_index(@block_ylocation - get_vertical_scroll_offset)
      if (first_line > last_line)
        temp = first_line
        first_line = last_line
        last_line = temp
      end
      left = @block_xanchor
      right = @block_xlocation
      if (left > right)
        left = @block_xlocation
        right = @block_xanchor
      end
      return Rectangle.new(left - @horizontal_scroll_offset, first_line, right - @horizontal_scroll_offset, last_line)
    end
    
    typesig { [] }
    # Returns the block selection bounds. The bounds is
    # relative to the upper left corner of the document.
    # 
    # @return the block selection bounds
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def get_block_selection_bounds
      rect = nil
      if (@block_selection && !(@block_xlocation).equal?(-1))
        rect = get_block_selection_rectangle
      else
        start_point = get_point_at_offset(@selection.attr_x)
        end_point = get_point_at_offset(@selection.attr_y)
        height = get_line_height(@selection.attr_y)
        rect = Rectangle.new(start_point.attr_x, start_point.attr_y, end_point.attr_x - start_point.attr_x, end_point.attr_y + height - start_point.attr_y)
        if ((@selection.attr_x).equal?(@selection.attr_y))
          rect.attr_width = get_caret_width
        end
      end
      rect.attr_x += @horizontal_scroll_offset
      rect.attr_y += get_vertical_scroll_offset
      return rect
    end
    
    typesig { [] }
    def get_block_selection_rectangle
      rect = get_block_selecton_position
      rect.attr_y = get_line_pixel(rect.attr_y)
      rect.attr_width = rect.attr_width - rect.attr_x
      rect.attr_height = get_line_pixel(rect.attr_height + 1) - rect.attr_y
      return rect
    end
    
    typesig { [String] }
    def get_block_selection_text(delimiter)
      rect = get_block_selecton_position
      first_line = rect.attr_y
      last_line = rect.attr_height
      left = rect.attr_x
      right = rect.attr_width
      buffer = StringBuffer.new
      line_index = first_line
      while line_index <= last_line
        start = get_offset_at_point(left, 0, line_index, nil)
        end_ = get_offset_at_point(right, 0, line_index, nil)
        if (start > end_)
          temp = start
          start = end_
          end_ = temp
        end
        text = @content.get_text_range(start, end_ - start)
        buffer.append(text)
        if (line_index < last_line)
          buffer.append(delimiter)
        end
        line_index += 1
      end
      return buffer.to_s
    end
    
    typesig { [] }
    # Returns the index of the last fully visible line.
    # 
    # @return index of the last fully visible line.
    def get_bottom_index
      bottom_index = 0
      if (is_fixed_line_height)
        line_count = 1
        line_height = @renderer.get_line_height
        if (!(line_height).equal?(0))
          # calculate the number of lines that are fully visible
          partial_top_line_height = @top_index * line_height - get_vertical_scroll_offset
          line_count = (@client_area_height - partial_top_line_height) / line_height
        end
        bottom_index = Math.min(@content.get_line_count - 1, @top_index + Math.max(0, line_count - 1))
      else
        client_area_height = @client_area_height - @bottom_margin
        bottom_index = get_line_index(client_area_height)
        if (bottom_index > 0)
          line_pixel = get_line_pixel(bottom_index)
          line_height = @renderer.get_line_height(bottom_index)
          if (line_pixel + line_height > client_area_height)
            if (get_line_pixel(bottom_index - 1) >= @top_margin)
              bottom_index -= 1
            end
          end
        end
      end
      return bottom_index
    end
    
    typesig { [] }
    # Returns the bottom margin.
    # 
    # @return the bottom margin.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def get_bottom_margin
      check_widget
      return @bottom_margin
    end
    
    typesig { [::Java::Int] }
    def get_bounds_at_offset(offset)
      line_index = @content.get_line_at_offset(offset)
      line_offset = @content.get_offset_at_line(line_index)
      line = @content.get_line(line_index)
      bounds = nil
      if (!(line.length).equal?(0))
        offset_in_line = offset - line_offset
        layout = @renderer.get_text_layout(line_index)
        bounds = layout.get_bounds(offset_in_line, offset_in_line)
        @renderer.dispose_text_layout(layout)
      else
        bounds = Rectangle.new(0, 0, 0, @renderer.get_line_height)
      end
      if ((offset).equal?(@caret_offset))
        line_end = line_offset + line.length
        if ((offset).equal?(line_end))
          bounds.attr_width += get_caret_width
        end
      end
      bounds.attr_x += @left_margin - @horizontal_scroll_offset
      bounds.attr_y += get_line_pixel(line_index)
      return bounds
    end
    
    typesig { [] }
    # Returns the caret position relative to the start of the text.
    # 
    # @return the caret position relative to the start of the text.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_caret_offset
      check_widget
      return @caret_offset
    end
    
    typesig { [] }
    # Returns the caret width.
    # 
    # @return the caret width, 0 if caret is null.
    def get_caret_width
      caret = get_caret
      if ((caret).nil?)
        return 0
      end
      return caret.get_size.attr_x
    end
    
    typesig { [::Java::Int] }
    def get_clipboard_content(clipboard_type)
      plain_text_transfer = TextTransfer.get_instance
      return @clipboard.get_contents(plain_text_transfer, clipboard_type)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_cluster_next(offset, line_index)
      line_offset = @content.get_offset_at_line(line_index)
      layout = @renderer.get_text_layout(line_index)
      offset -= line_offset
      offset = layout.get_next_offset(offset, SWT::MOVEMENT_CLUSTER)
      offset += line_offset
      @renderer.dispose_text_layout(layout)
      return offset
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_cluster_previous(offset, line_index)
      line_offset = @content.get_offset_at_line(line_index)
      layout = @renderer.get_text_layout(line_index)
      offset -= line_offset
      offset = layout.get_previous_offset(offset, SWT::MOVEMENT_CLUSTER)
      offset += line_offset
      @renderer.dispose_text_layout(layout)
      return offset
    end
    
    typesig { [] }
    # Returns the content implementation that is used for text storage.
    # 
    # @return content the user defined content implementation that is used for
    # text storage or the default content implementation if no user defined
    # content implementation has been set.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_content
      check_widget
      return @content
    end
    
    typesig { [] }
    def get_drag_detect
      check_widget
      return @drag_detect
    end
    
    typesig { [] }
    # Returns whether the widget implements double click mouse behavior.
    # 
    # @return true if double clicking a word selects the word, false if double clicks
    # have the same effect as regular mouse clicks
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_double_click_enabled
      check_widget
      return @double_click_enabled
    end
    
    typesig { [] }
    # Returns whether the widget content can be edited.
    # 
    # @return true if content can be edited, false otherwise
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_editable
      check_widget
      return @editable
    end
    
    typesig { [] }
    def get_foreground
      check_widget
      if ((@foreground).nil?)
        return get_display.get_system_color(SWT::COLOR_LIST_FOREGROUND)
      end
      return @foreground
    end
    
    typesig { [] }
    # Returns the horizontal scroll increment.
    # 
    # @return horizontal scroll increment.
    def get_horizontal_increment
      return @renderer.attr_average_char_width
    end
    
    typesig { [] }
    # Returns the horizontal scroll offset relative to the start of the line.
    # 
    # @return horizontal scroll offset relative to the start of the line,
    # measured in character increments starting at 0, if > 0 the content is scrolled
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_horizontal_index
      check_widget
      return @horizontal_scroll_offset / get_horizontal_increment
    end
    
    typesig { [] }
    # Returns the horizontal scroll offset relative to the start of the line.
    # 
    # @return the horizontal scroll offset relative to the start of the line,
    # measured in pixel starting at 0, if > 0 the content is scrolled.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_horizontal_pixel
      check_widget
      return @horizontal_scroll_offset
    end
    
    typesig { [] }
    # Returns the line indentation of the widget.
    # 
    # @return the line indentation
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getLineIndent(int)
    # 
    # @since 3.2
    def get_indent
      check_widget
      return @indent
    end
    
    typesig { [] }
    # Returns whether the widget justifies lines.
    # 
    # @return whether lines are justified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getLineJustify(int)
    # 
    # @since 3.2
    def get_justify
      check_widget
      return @justify
    end
    
    typesig { [::Java::Int] }
    # Returns the action assigned to the key.
    # Returns SWT.NULL if there is no action associated with the key.
    # 
    # @param key a key code defined in SWT.java or a character.
    # Optionally ORd with a state mask.  Preferred state masks are one or more of
    # SWT.MOD1, SWT.MOD2, SWT.MOD3, since these masks account for modifier platform
    # differences.  However, there may be cases where using the specific state masks
    # (i.e., SWT.CTRL, SWT.SHIFT, SWT.ALT, SWT.COMMAND) makes sense.
    # @return one of the predefined actions defined in ST.java or SWT.NULL
    # if there is no action associated with the key.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_key_binding(key)
      check_widget
      action = @key_action_map.get(key)
      return (action).nil? ? SWT::NULL : action.int_value
    end
    
    typesig { [] }
    # Gets the number of characters.
    # 
    # @return number of characters in the widget
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_char_count
      check_widget
      return @content.get_char_count
    end
    
    typesig { [::Java::Int] }
    # Returns the line at the given line index without delimiters.
    # Index 0 is the first line of the content. When there are not
    # any lines, getLine(0) is a valid call that answers an empty string.
    # <p>
    # 
    # @param lineIndex index of the line to return.
    # @return the line text without delimiters
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when the line index is outside the valid range (< 0 or >= getLineCount())</li>
    # </ul>
    # @since 3.4
    def get_line(line_index)
      check_widget
      if (line_index < 0 || (line_index > 0 && line_index >= @content.get_line_count))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      return @content.get_line(line_index)
    end
    
    typesig { [::Java::Int] }
    # Returns the alignment of the line at the given index.
    # 
    # @param index the index of the line
    # 
    # @return the line alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the index is invalid</li>
    # </ul>
    # 
    # @see #getAlignment()
    # 
    # @since 3.2
    def get_line_alignment(index)
      check_widget
      if (index < 0 || index > @content.get_line_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      return @renderer.get_line_alignment(index, @alignment)
    end
    
    typesig { [::Java::Int] }
    # Returns the line at the specified offset in the text
    # where 0 &lt; offset &lt; getCharCount() so that getLineAtOffset(getCharCount())
    # returns the line of the insert location.
    # 
    # @param offset offset relative to the start of the content.
    # 0 <= offset <= getCharCount()
    # @return line at the specified offset in the text
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when the offset is outside the valid range (< 0 or > getCharCount())</li>
    # </ul>
    def get_line_at_offset(offset)
      check_widget
      if (offset < 0 || offset > get_char_count)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      return @content.get_line_at_offset(offset)
    end
    
    typesig { [::Java::Int] }
    # Returns the background color of the line at the given index.
    # Returns null if a LineBackgroundListener has been set or if no background
    # color has been specified for the line. Should not be called if a
    # LineBackgroundListener has been set since the listener maintains the
    # line background colors.
    # 
    # @param index the index of the line
    # @return the background color of the line at the given index.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the index is invalid</li>
    # </ul>
    def get_line_background(index)
      check_widget
      if (index < 0 || index > @content.get_line_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      return is_listening(LineGetBackground) ? nil : @renderer.get_line_background(index, nil)
    end
    
    typesig { [::Java::Int] }
    # Returns the bullet of the line at the given index.
    # 
    # @param index the index of the line
    # 
    # @return the line bullet
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the index is invalid</li>
    # </ul>
    # 
    # @since 3.2
    def get_line_bullet(index)
      check_widget
      if (index < 0 || index > @content.get_line_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      return is_listening(LineGetStyle) ? nil : @renderer.get_line_bullet(index, nil)
    end
    
    typesig { [::Java::Int, String] }
    # Returns the line background data for the given line or null if
    # there is none.
    # 
    # @param lineOffset offset of the line start relative to the start
    # of the content.
    # @param line line to get line background data for
    # @return line background data for the given line.
    def get_line_background_data(line_offset, line)
      return send_line_event(LineGetBackground, line_offset, line)
    end
    
    typesig { [] }
    # Gets the number of text lines.
    # 
    # @return the number of lines in the widget
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_line_count
      check_widget
      return @content.get_line_count
    end
    
    typesig { [] }
    # Returns the number of lines that can be completely displayed in the
    # widget client area.
    # 
    # @return number of lines that can be completely displayed in the widget
    # client area.
    def get_line_count_whole
      if (is_fixed_line_height)
        line_height = @renderer.get_line_height
        return !(line_height).equal?(0) ? @client_area_height / line_height : 1
      end
      return get_bottom_index - @top_index + 1
    end
    
    typesig { [] }
    # Returns the line delimiter used for entering new lines by key down
    # or paste operation.
    # 
    # @return line delimiter used for entering new lines by key down
    # or paste operation.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_line_delimiter
      check_widget
      return @content.get_line_delimiter
    end
    
    typesig { [] }
    # Returns the line height.
    # <p>
    # Note: this API should not be used if a StyleRange attribute causes lines to
    # have different heights (i.e. different fonts, rise, etc).
    # </p>
    # 
    # @return line height in pixel.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @see #getLineHeight(int)
    def get_line_height
      check_widget
      return @renderer.get_line_height
    end
    
    typesig { [::Java::Int] }
    # Returns the line height at the given offset.
    # 
    # @param offset the offset
    # 
    # @return line height in pixels
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when the offset is outside the valid range (< 0 or > getCharCount())</li>
    # </ul>
    # 
    # @since 3.2
    def get_line_height(offset)
      check_widget
      if (!(0 <= offset && offset <= @content.get_char_count))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      if (is_fixed_line_height)
        return @renderer.get_line_height
      end
      line_index = @content.get_line_at_offset(offset)
      line_offset = @content.get_offset_at_line(line_index)
      layout = @renderer.get_text_layout(line_index)
      line_in_paragraph = layout.get_line_index(Math.min(offset - line_offset, layout.get_text.length))
      height = layout.get_line_bounds(line_in_paragraph).attr_height
      @renderer.dispose_text_layout(layout)
      return height
    end
    
    typesig { [::Java::Int] }
    # Returns the indentation of the line at the given index.
    # 
    # @param index the index of the line
    # 
    # @return the line indentation
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the index is invalid</li>
    # </ul>
    # 
    # @see #getIndent()
    # 
    # @since 3.2
    def get_line_indent(index)
      check_widget
      if (index < 0 || index > @content.get_line_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      return is_listening(LineGetStyle) ? 0 : @renderer.get_line_indent(index, @indent)
    end
    
    typesig { [::Java::Int] }
    # Returns whether the line at the given index is justified.
    # 
    # @param index the index of the line
    # 
    # @return whether the line is justified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the index is invalid</li>
    # </ul>
    # 
    # @see #getJustify()
    # 
    # @since 3.2
    def get_line_justify(index)
      check_widget
      if (index < 0 || index > @content.get_line_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      return is_listening(LineGetStyle) ? false : @renderer.get_line_justify(index, @justify)
    end
    
    typesig { [] }
    # Returns the line spacing of the widget.
    # 
    # @return the line spacing
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def get_line_spacing
      check_widget
      return @line_spacing
    end
    
    typesig { [::Java::Int, String] }
    # Returns the line style data for the given line or null if there is
    # none.
    # <p>
    # If there is a LineStyleListener but it does not set any styles,
    # the StyledTextEvent.styles field will be initialized to an empty
    # array.
    # </p>
    # 
    # @param lineOffset offset of the line start relative to the start of
    # the content.
    # @param line line to get line styles for
    # @return line style data for the given line. Styles may start before
    # line start and end after line end
    def get_line_style_data(line_offset, line)
      return send_line_event(LineGetStyle, line_offset, line)
    end
    
    typesig { [::Java::Int] }
    # Returns the top pixel, relative to the client area, of a given line.
    # Clamps out of ranges index.
    # 
    # @param lineIndex the line index, the max value is lineCount. If
    # lineIndex == lineCount it returns the bottom pixel of the last line.
    # It means this function can be used to retrieve the bottom pixel of any line.
    # 
    # @return the top pixel of a given line index
    # 
    # @since 3.2
    def get_line_pixel(line_index)
      check_widget
      line_count = @content.get_line_count
      line_index = Math.max(0, Math.min(line_count, line_index))
      if (is_fixed_line_height)
        line_height = @renderer.get_line_height
        return line_index * line_height - get_vertical_scroll_offset + @top_margin
      end
      if ((line_index).equal?(@top_index))
        return @top_index_y + @top_margin
      end
      height = @top_index_y
      if (line_index > @top_index)
        i = @top_index
        while i < line_index
          height += @renderer.get_line_height(i)
          i += 1
        end
      else
        i = @top_index - 1
        while i >= line_index
          height -= @renderer.get_line_height(i)
          i -= 1
        end
      end
      return height + @top_margin
    end
    
    typesig { [::Java::Int] }
    # Returns the line index for a y, relative to the client area.
    # The line index returned is always in the range 0..lineCount - 1.
    # 
    # @param y the y-coordinate pixel
    # 
    # @return the line index for a given y-coordinate pixel
    # 
    # @since 3.2
    def get_line_index(y)
      check_widget
      y -= @top_margin
      if (is_fixed_line_height)
        line_height = @renderer.get_line_height
        line_index = (y + get_vertical_scroll_offset) / line_height
        line_count = @content.get_line_count
        line_index = Math.max(0, Math.min(line_count - 1, line_index))
        return line_index
      end
      if ((y).equal?(@top_index_y))
        return @top_index
      end
      line = @top_index
      if (y < @top_index_y)
        while (y < @top_index_y && line > 0)
          y += @renderer.get_line_height((line -= 1))
        end
      else
        line_count = @content.get_line_count
        line_height = @renderer.get_line_height(line)
        while (y - line_height >= @top_index_y && line < line_count - 1)
          y -= line_height
          line_height = @renderer.get_line_height((line += 1))
        end
      end
      return line
    end
    
    typesig { [] }
    # Returns the left margin.
    # 
    # @return the left margin.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def get_left_margin
      check_widget
      return @left_margin - @alignment_margin
    end
    
    typesig { [::Java::Int] }
    # Returns the x, y location of the upper left corner of the character
    # bounding box at the specified offset in the text. The point is
    # relative to the upper left corner of the widget client area.
    # 
    # @param offset offset relative to the start of the content.
    # 0 <= offset <= getCharCount()
    # @return x, y location of the upper left corner of the character
    # bounding box at the specified offset in the text.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when the offset is outside the valid range (< 0 or > getCharCount())</li>
    # </ul>
    def get_location_at_offset(offset)
      check_widget
      if (offset < 0 || offset > get_char_count)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      return get_point_at_offset(offset)
    end
    
    typesig { [::Java::Int] }
    # Returns the character offset of the first character of the given line.
    # 
    # @param lineIndex index of the line, 0 based relative to the first
    # line in the content. 0 <= lineIndex < getLineCount(), except
    # lineIndex may always be 0
    # @return offset offset of the first character of the line, relative to
    # the beginning of the document. The first character of the document is
    # at offset 0.
    # When there are not any lines, getOffsetAtLine(0) is a valid call that
    # answers 0.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when the line index is outside the valid range (< 0 or >= getLineCount())</li>
    # </ul>
    # @since 2.0
    def get_offset_at_line(line_index)
      check_widget
      if (line_index < 0 || (line_index > 0 && line_index >= @content.get_line_count))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      return @content.get_offset_at_line(line_index)
    end
    
    typesig { [Point] }
    # Returns the offset of the character at the given location relative
    # to the first character in the document.
    # <p>
    # The return value reflects the character offset that the caret will
    # be placed at if a mouse click occurred at the specified location.
    # If the x coordinate of the location is beyond the center of a character
    # the returned offset will be behind the character.
    # </p>
    # 
    # @param point the origin of character bounding box relative to
    # the origin of the widget client area.
    # @return offset of the character at the given location relative
    # to the first character in the document.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when point is null</li>
    # <li>ERROR_INVALID_ARGUMENT when there is no character at the specified location</li>
    # </ul>
    def get_offset_at_location(point)
      check_widget
      if ((point).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      trailing = Array.typed(::Java::Int).new(1) { 0 }
      offset = get_offset_at_point(point.attr_x, point.attr_y, trailing, true)
      if ((offset).equal?(-1))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      return offset + trailing[0]
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    def get_offset_at_point(x, y, alignment)
      line_index = get_line_index(y)
      y -= get_line_pixel(line_index)
      return get_offset_at_point(x, y, line_index, alignment)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    def get_offset_at_point(x, y, line_index, alignment)
      layout = @renderer.get_text_layout(line_index)
      x += @horizontal_scroll_offset - @left_margin
      trailing = Array.typed(::Java::Int).new(1) { 0 }
      offset_in_line = layout.get_offset(x, y, trailing)
      if (!(alignment).nil?)
        alignment[0] = OFFSET_LEADING
      end
      if (!(trailing[0]).equal?(0))
        line_in_paragraph = layout.get_line_index(offset_in_line + trailing[0])
        line_start = layout.get_line_offsets[line_in_paragraph]
        if ((offset_in_line + trailing[0]).equal?(line_start))
          offset_in_line += trailing[0]
          if (!(alignment).nil?)
            alignment[0] = PREVIOUS_OFFSET_TRAILING
          end
        else
          line = @content.get_line(line_index)
          level = 0
          if (!(alignment).nil?)
            offset = offset_in_line
            while (offset > 0 && Character.is_digit(line.char_at(offset)))
              offset -= 1
            end
            if ((offset).equal?(0) && Character.is_digit(line.char_at(offset)))
              level = is_mirrored ? 1 : 0
            else
              level = layout.get_level(offset) & 0x1
            end
          end
          offset_in_line += trailing[0]
          if (!(alignment).nil?)
            trailing_level = layout.get_level(offset_in_line) & 0x1
            if (!((level ^ trailing_level)).equal?(0))
              alignment[0] = PREVIOUS_OFFSET_TRAILING
            else
              alignment[0] = OFFSET_LEADING
            end
          end
        end
      end
      @renderer.dispose_text_layout(layout)
      return offset_in_line + @content.get_offset_at_line(line_index)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Boolean] }
    def get_offset_at_point(x, y, trailing, in_text_only)
      if (in_text_only && y + get_vertical_scroll_offset < 0 || x + @horizontal_scroll_offset < 0)
        return -1
      end
      bottom_index = get_partial_bottom_index
      height = get_line_pixel(bottom_index + 1)
      if (in_text_only && y > height)
        return -1
      end
      line_index = get_line_index(y)
      line_offset = @content.get_offset_at_line(line_index)
      layout = @renderer.get_text_layout(line_index)
      x += @horizontal_scroll_offset - @left_margin
      y -= get_line_pixel(line_index)
      offset = layout.get_offset(x, y, trailing)
      rect = layout.get_line_bounds(layout.get_line_index(offset))
      @renderer.dispose_text_layout(layout)
      if (in_text_only && !(rect.attr_x <= x && x <= rect.attr_x + rect.attr_width))
        return -1
      end
      return offset + line_offset
    end
    
    typesig { [] }
    # Returns the orientation of the receiver.
    # 
    # @return the orientation style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1.2
    def get_orientation
      check_widget
      return is_mirrored ? SWT::RIGHT_TO_LEFT : SWT::LEFT_TO_RIGHT
    end
    
    typesig { [] }
    # Returns the index of the last partially visible line.
    # 
    # @return index of the last partially visible line.
    def get_partial_bottom_index
      if (is_fixed_line_height)
        line_height = @renderer.get_line_height
        partial_line_count = Compatibility.ceil(@client_area_height, line_height)
        return Math.max(0, Math.min(@content.get_line_count, @top_index + partial_line_count) - 1)
      end
      return get_line_index(@client_area_height - @bottom_margin)
    end
    
    typesig { [] }
    # Returns the index of the first partially visible line.
    # 
    # @return index of the first partially visible line.
    def get_partial_top_index
      if (is_fixed_line_height)
        line_height = @renderer.get_line_height
        return get_vertical_scroll_offset / line_height
      end
      return @top_index_y <= 0 ? @top_index : @top_index - 1
    end
    
    typesig { [TextWriter] }
    # Returns the content in the specified range using the platform line
    # delimiter to separate lines.
    # 
    # @param writer the TextWriter to write line text into
    # @return the content in the specified range using the platform line
    # delimiter to separate lines as written by the specified TextWriter.
    def get_platform_delimited_text(writer)
      end_ = writer.get_start + writer.get_char_count
      start_line = @content.get_line_at_offset(writer.get_start)
      end_line = @content.get_line_at_offset(end_)
      end_line_text = @content.get_line(end_line)
      end_line_offset = @content.get_offset_at_line(end_line)
      i = start_line
      while i <= end_line
        writer.write_line(@content.get_line(i), @content.get_offset_at_line(i))
        if (i < end_line)
          writer.write_line_delimiter(PlatformLineDelimiter)
        end
        i += 1
      end
      if (end_ > end_line_offset + end_line_text.length)
        writer.write_line_delimiter(PlatformLineDelimiter)
      end
      writer.close
      return writer.to_s
    end
    
    typesig { [] }
    # Returns all the ranges of text that have an associated StyleRange.
    # Returns an empty array if a LineStyleListener has been set.
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # <p>
    # The ranges array contains start and length pairs.  Each pair refers to
    # the corresponding style in the styles array.  For example, the pair
    # that starts at ranges[n] with length ranges[n+1] uses the style
    # at styles[n/2] returned by <code>getStyleRanges(int, int, boolean)</code>.
    # </p>
    # 
    # @return the ranges or an empty array if a LineStyleListener has been set.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    # 
    # @see #getStyleRanges(boolean)
    def get_ranges
      check_widget
      if (!is_listening(LineGetStyle))
        ranges = @renderer.get_ranges(0, @content.get_char_count)
        if (!(ranges).nil?)
          return ranges
        end
      end
      return Array.typed(::Java::Int).new(0) { 0 }
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the ranges of text that have an associated StyleRange.
    # Returns an empty array if a LineStyleListener has been set.
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # <p>
    # The ranges array contains start and length pairs.  Each pair refers to
    # the corresponding style in the styles array.  For example, the pair
    # that starts at ranges[n] with length ranges[n+1] uses the style
    # at styles[n/2] returned by <code>getStyleRanges(int, int, boolean)</code>.
    # </p>
    # 
    # @param start the start offset of the style ranges to return
    # @param length the number of style ranges to return
    # 
    # @return the ranges or an empty array if a LineStyleListener has been set.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE if start or length are outside the widget content</li>
    # </ul>
    # 
    # @since 3.2
    # 
    # @see #getStyleRanges(int, int, boolean)
    def get_ranges(start, length_)
      check_widget
      content_length = get_char_count
      end_ = start + length_
      if (start > end_ || start < 0 || end_ > content_length)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      if (!is_listening(LineGetStyle))
        ranges = @renderer.get_ranges(start, length_)
        if (!(ranges).nil?)
          return ranges
        end
      end
      return Array.typed(::Java::Int).new(0) { 0 }
    end
    
    typesig { [] }
    # Returns the right margin.
    # 
    # @return the right margin.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def get_right_margin
      check_widget
      return @right_margin
    end
    
    typesig { [] }
    # Returns the selection.
    # <p>
    # Text selections are specified in terms of caret positions.  In a text
    # widget that contains N characters, there are N+1 caret positions,
    # ranging from 0..N
    # </p>
    # 
    # @return start and end of the selection, x is the offset of the first
    # selected character, y is the offset after the last selected character.
    # The selection values returned are visual (i.e., x will always always be
    # <= y).  To determine if a selection is right-to-left (RtoL) vs. left-to-right
    # (LtoR), compare the caretOffset to the start and end of the selection
    # (e.g., caretOffset == start of selection implies that the selection is RtoL).
    # @see #getSelectionRange
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      return Point.new(@selection.attr_x, @selection.attr_y)
    end
    
    typesig { [] }
    # Returns the selection.
    # 
    # @return start and length of the selection, x is the offset of the
    # first selected character, relative to the first character of the
    # widget content. y is the length of the selection.
    # The selection values returned are visual (i.e., length will always always be
    # positive).  To determine if a selection is right-to-left (RtoL) vs. left-to-right
    # (LtoR), compare the caretOffset to the start and end of the selection
    # (e.g., caretOffset == start of selection implies that the selection is RtoL).
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_range
      check_widget
      return Point.new(@selection.attr_x, @selection.attr_y - @selection.attr_x)
    end
    
    typesig { [] }
    # Returns the ranges of text that are inside the block selection rectangle.
    # <p>
    # The ranges array contains start and length pairs. When the receiver is not
    # in block selection mode the return arrays contains the start and length of
    # the regular selection.
    # 
    # @return the ranges array
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def get_selection_ranges
      check_widget
      if (@block_selection && !(@block_xlocation).equal?(-1))
        rect = get_block_selecton_position
        first_line = rect.attr_y
        last_line = rect.attr_height
        left = rect.attr_x
        right = rect.attr_width
        ranges = Array.typed(::Java::Int).new((last_line - first_line + 1) * 2) { 0 }
        index = 0
        line_index = first_line
        while line_index <= last_line
          start = get_offset_at_point(left, 0, line_index, nil)
          end_ = get_offset_at_point(right, 0, line_index, nil)
          if (start > end_)
            temp = start
            start = end_
            end_ = temp
          end
          ranges[((index += 1) - 1)] = start
          ranges[((index += 1) - 1)] = end_ - start
          line_index += 1
        end
        return ranges
      end
      return Array.typed(::Java::Int).new([@selection.attr_x, @selection.attr_y - @selection.attr_x])
    end
    
    typesig { [] }
    # Returns the receiver's selection background color.
    # 
    # @return the selection background color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @since 2.1
    def get_selection_background
      check_widget
      if ((@selection_background).nil?)
        return get_display.get_system_color(SWT::COLOR_LIST_SELECTION)
      end
      return @selection_background
    end
    
    typesig { [] }
    # Gets the number of selected characters.
    # 
    # @return the number of selected characters.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_count
      check_widget
      if (@block_selection && !(@block_xlocation).equal?(-1))
        return get_block_selection_text(@content.get_line_delimiter).length
      end
      return get_selection_range.attr_y
    end
    
    typesig { [] }
    # Returns the receiver's selection foreground color.
    # 
    # @return the selection foreground color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @since 2.1
    def get_selection_foreground
      check_widget
      if ((@selection_foreground).nil?)
        return get_display.get_system_color(SWT::COLOR_LIST_SELECTION_TEXT)
      end
      return @selection_foreground
    end
    
    typesig { [] }
    # Returns the selected text.
    # 
    # @return selected text, or an empty String if there is no selection.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_text
      check_widget
      if (@block_selection && !(@block_xlocation).equal?(-1))
        return get_block_selection_text(@content.get_line_delimiter)
      end
      return @content.get_text_range(@selection.attr_x, @selection.attr_y - @selection.attr_x)
    end
    
    typesig { [] }
    def get_style
      style = super
      style &= ~(SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT | SWT::MIRRORED)
      if (is_mirrored)
        style |= SWT::RIGHT_TO_LEFT | SWT::MIRRORED
      else
        style |= SWT::LEFT_TO_RIGHT
      end
      return style
    end
    
    typesig { [::Java::Int, String] }
    # Returns the text segments that should be treated as if they
    # had a different direction than the surrounding text.
    # 
    # @param lineOffset offset of the first character in the line.
    # 0 based from the beginning of the document.
    # @param line text of the line to specify bidi segments for
    # @return text segments that should be treated as if they had a
    # different direction than the surrounding text. Only the start
    # index of a segment is specified, relative to the start of the
    # line. Always starts with 0 and ends with the line length.
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the segment indices returned
    # by the listener do not start with 0, are not in ascending order,
    # exceed the line length or have duplicates</li>
    # </ul>
    def get_bidi_segments(line_offset, line)
      if (!is_bidi)
        return nil
      end
      if (!is_listening(LineGetSegments))
        return get_bidi_segments_compatibility(line, line_offset)
      end
      event = send_line_event(LineGetSegments, line_offset, line)
      line_length = line.length
      segments = nil
      if ((event).nil? || (event.attr_segments).nil? || (event.attr_segments.attr_length).equal?(0))
        segments = Array.typed(::Java::Int).new([0, line_length])
      else
        segment_count = event.attr_segments.attr_length
        # test segment index consistency
        if (!(event.attr_segments[0]).equal?(0))
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i = 1
        while i < segment_count
          if (event.attr_segments[i] <= event.attr_segments[i - 1] || event.attr_segments[i] > line_length)
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          i += 1
        end
        # ensure that last segment index is line end offset
        if (!(event.attr_segments[segment_count - 1]).equal?(line_length))
          segments = Array.typed(::Java::Int).new(segment_count + 1) { 0 }
          System.arraycopy(event.attr_segments, 0, segments, 0, segment_count)
          segments[segment_count] = line_length
        else
          segments = event.attr_segments
        end
      end
      return segments
    end
    
    typesig { [String, ::Java::Int] }
    # @see #getBidiSegments
    # Supports deprecated setBidiColoring API. Remove when API is removed.
    def get_bidi_segments_compatibility(line, line_offset)
      line_length = line.length
      if (!@bidi_coloring)
        return Array.typed(::Java::Int).new([0, line_length])
      end
      styles = nil
      event = get_line_style_data(line_offset, line)
      if (!(event).nil?)
        styles = event.attr_styles
      else
        styles = @renderer.get_style_ranges(line_offset, line_length, true)
      end
      if ((styles).nil? || (styles.attr_length).equal?(0))
        return Array.typed(::Java::Int).new([0, line_length])
      end
      k = 0
      count = 1
      while (k < styles.attr_length && (styles[k].attr_start).equal?(0) && (styles[k].attr_length).equal?(line_length))
        k += 1
      end
      offsets = Array.typed(::Java::Int).new((styles.attr_length - k) * 2 + 2) { 0 }
      i = k
      while i < styles.attr_length
        style = styles[i]
        style_line_start = Math.max(style.attr_start - line_offset, 0)
        style_line_end = Math.max(style.attr_start + style.attr_length - line_offset, style_line_start)
        style_line_end = Math.min(style_line_end, line.length)
        if (i > 0 && count > 1 && ((style_line_start >= offsets[count - 2] && style_line_start <= offsets[count - 1]) || (style_line_end >= offsets[count - 2] && style_line_end <= offsets[count - 1])) && style.similar_to(styles[i - 1]))
          offsets[count - 2] = Math.min(offsets[count - 2], style_line_start)
          offsets[count - 1] = Math.max(offsets[count - 1], style_line_end)
        else
          if (style_line_start > offsets[count - 1])
            offsets[count] = style_line_start
            count += 1
          end
          offsets[count] = style_line_end
          count += 1
        end
        i += 1
      end
      # add offset for last non-colored segment in line, if any
      if (line_length > offsets[count - 1])
        offsets[count] = line_length
        count += 1
      end
      if ((count).equal?(offsets.attr_length))
        return offsets
      end
      result = Array.typed(::Java::Int).new(count) { 0 }
      System.arraycopy(offsets, 0, result, 0, count)
      return result
    end
    
    typesig { [::Java::Int] }
    # Returns the style range at the given offset.
    # <p>
    # Returns null if a LineStyleListener has been set or if a style is not set
    # for the offset.
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # </p>
    # 
    # @param offset the offset to return the style for.
    # 0 <= offset < getCharCount() must be true.
    # @return a StyleRange with start == offset and length == 1, indicating
    # the style at the given offset. null if a LineStyleListener has been set
    # or if a style is not set for the given offset.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the offset is invalid</li>
    # </ul>
    def get_style_range_at_offset(offset)
      check_widget
      if (offset < 0 || offset >= get_char_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!is_listening(LineGetStyle))
        ranges = @renderer.get_style_ranges(offset, 1, true)
        if (!(ranges).nil?)
          return ranges[0]
        end
      end
      return nil
    end
    
    typesig { [] }
    # Returns the styles.
    # <p>
    # Returns an empty array if a LineStyleListener has been set.
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # <p></p>
    # Note: Because a StyleRange includes the start and length, the
    # same instance cannot occur multiple times in the array of styles.
    # If the same style attributes, such as font and color, occur in
    # multiple StyleRanges, <code>getStyleRanges(boolean)</code>
    # can be used to get the styles without the ranges.
    # </p>
    # 
    # @return the styles or an empty array if a LineStyleListener has been set.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getStyleRanges(boolean)
    def get_style_ranges
      check_widget
      return get_style_ranges(0, @content.get_char_count, true)
    end
    
    typesig { [::Java::Boolean] }
    # Returns the styles.
    # <p>
    # Returns an empty array if a LineStyleListener has been set.
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # </p><p>
    # Note: When <code>includeRanges</code> is true, the start and length
    # fields of each StyleRange will be valid, however the StyleRange
    # objects may need to be cloned. When <code>includeRanges</code> is
    # false, <code>getRanges(int, int)</code> can be used to get the
    # associated ranges.
    # </p>
    # 
    # @param includeRanges whether the start and length field of the StyleRanges should be set.
    # 
    # @return the styles or an empty array if a LineStyleListener has been set.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    # 
    # @see #getRanges(int, int)
    # @see #setStyleRanges(int[], StyleRange[])
    def get_style_ranges(include_ranges)
      check_widget
      return get_style_ranges(0, @content.get_char_count, include_ranges)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the styles for the given text range.
    # <p>
    # Returns an empty array if a LineStyleListener has been set.
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # </p><p>
    # Note: Because the StyleRange includes the start and length, the
    # same instance cannot occur multiple times in the array of styles.
    # If the same style attributes, such as font and color, occur in
    # multiple StyleRanges, <code>getStyleRanges(int, int, boolean)</code>
    # can be used to get the styles without the ranges.
    # </p>
    # @param start the start offset of the style ranges to return
    # @param length the number of style ranges to return
    # 
    # @return the styles or an empty array if a LineStyleListener has
    # been set.  The returned styles will reflect the given range.  The first
    # returned <code>StyleRange</code> will have a starting offset >= start
    # and the last returned <code>StyleRange</code> will have an ending
    # offset <= start + length - 1
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when start and/or end are outside the widget content</li>
    # </ul>
    # 
    # @see #getStyleRanges(int, int, boolean)
    # 
    # @since 3.0
    def get_style_ranges(start, length_)
      check_widget
      return get_style_ranges(start, length_, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Returns the styles for the given text range.
    # <p>
    # Returns an empty array if a LineStyleListener has been set.
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # </p><p>
    # Note: When <code>includeRanges</code> is true, the start and length
    # fields of each StyleRange will be valid, however the StyleRange
    # objects may need to be cloned. When <code>includeRanges</code> is
    # false, <code>getRanges(int, int)</code> can be used to get the
    # associated ranges.
    # </p>
    # 
    # @param start the start offset of the style ranges to return
    # @param length the number of style ranges to return
    # @param includeRanges whether the start and length field of the StyleRanges should be set.
    # 
    # @return the styles or an empty array if a LineStyleListener has
    # been set.  The returned styles will reflect the given range.  The first
    # returned <code>StyleRange</code> will have a starting offset >= start
    # and the last returned <code>StyleRange</code> will have an ending
    # offset <= start + length - 1
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when start and/or end are outside the widget content</li>
    # </ul>
    # 
    # @since 3.2
    # 
    # @see #getRanges(int, int)
    # @see #setStyleRanges(int[], StyleRange[])
    def get_style_ranges(start, length_, include_ranges)
      check_widget
      content_length = get_char_count
      end_ = start + length_
      if (start > end_ || start < 0 || end_ > content_length)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      if (!is_listening(LineGetStyle))
        ranges = @renderer.get_style_ranges(start, length_, include_ranges)
        if (!(ranges).nil?)
          return ranges
        end
      end
      return Array.typed(StyleRange).new(0) { nil }
    end
    
    typesig { [] }
    # Returns the tab width measured in characters.
    # 
    # @return tab width measured in characters
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_tabs
      check_widget
      return @tab_length
    end
    
    typesig { [] }
    # Returns a copy of the widget content.
    # 
    # @return copy of the widget content
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      return @content.get_text_range(0, get_char_count)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the widget content between the two offsets.
    # 
    # @param start offset of the first character in the returned String
    # @param end offset of the last character in the returned String
    # @return widget content starting at start and ending at end
    # @see #getTextRange(int,int)
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when start and/or end are outside the widget content</li>
    # </ul>
    def get_text(start, end_)
      check_widget
      content_length = get_char_count
      if (start < 0 || start >= content_length || end_ < 0 || end_ >= content_length || start > end_)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      return @content.get_text_range(start, end_ - start + 1)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the smallest bounding rectangle that includes the characters between two offsets.
    # 
    # @param start offset of the first character included in the bounding box
    # @param end offset of the last character included in the bounding box
    # @return bounding box of the text between start and end
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when start and/or end are outside the widget content</li>
    # </ul>
    # @since 3.1
    def get_text_bounds(start, end_)
      check_widget
      content_length = get_char_count
      if (start < 0 || start >= content_length || end_ < 0 || end_ >= content_length || start > end_)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      line_start = @content.get_line_at_offset(start)
      line_end = @content.get_line_at_offset(end_)
      rect = nil
      y = get_line_pixel(line_start)
      height = 0
      left = 0x7fffffff
      right = 0
      i = line_start
      while i <= line_end
        line_offset = @content.get_offset_at_line(i)
        layout = @renderer.get_text_layout(i)
        length_ = layout.get_text.length
        if (length_ > 0)
          if ((i).equal?(line_start))
            if ((i).equal?(line_end))
              rect = layout.get_bounds(start - line_offset, end_ - line_offset)
            else
              rect = layout.get_bounds(start - line_offset, length_)
            end
            y += rect.attr_y
          else
            if ((i).equal?(line_end))
              rect = layout.get_bounds(0, end_ - line_offset)
            else
              rect = layout.get_bounds
            end
          end
          left = Math.min(left, rect.attr_x)
          right = Math.max(right, rect.attr_x + rect.attr_width)
          height += rect.attr_height
        else
          height += @renderer.get_line_height
        end
        @renderer.dispose_text_layout(layout)
        i += 1
      end
      rect = Rectangle.new(left, y, right - left, height)
      rect.attr_x += @left_margin - @horizontal_scroll_offset
      return rect
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the widget content starting at start for length characters.
    # 
    # @param start offset of the first character in the returned String
    # @param length number of characters to return
    # @return widget content starting at start and extending length characters.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when start and/or length are outside the widget content</li>
    # </ul>
    def get_text_range(start, length_)
      check_widget
      content_length = get_char_count
      end_ = start + length_
      if (start > end_ || start < 0 || end_ > content_length)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      return @content.get_text_range(start, length_)
    end
    
    typesig { [] }
    # Returns the maximum number of characters that the receiver is capable of holding.
    # 
    # @return the text limit
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text_limit
      check_widget
      return @text_limit
    end
    
    typesig { [] }
    # Gets the top index.
    # <p>
    # The top index is the index of the fully visible line that is currently
    # at the top of the widget or the topmost partially visible line if no line is fully visible.
    # The top index changes when the widget is scrolled. Indexing is zero based.
    # </p>
    # 
    # @return the index of the top line
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_top_index
      check_widget
      return @top_index
    end
    
    typesig { [] }
    # Returns the top margin.
    # 
    # @return the top margin.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def get_top_margin
      check_widget
      return @top_margin
    end
    
    typesig { [] }
    # Gets the top pixel.
    # <p>
    # The top pixel is the pixel position of the line that is
    # currently at the top of the widget. The text widget can be scrolled by pixels
    # by dragging the scroll thumb so that a partial line may be displayed at the top
    # the widget.  The top pixel changes when the widget is scrolled.  The top pixel
    # does not include the widget trimming.
    # </p>
    # 
    # @return pixel position of the top line
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_top_pixel
      check_widget
      return get_vertical_scroll_offset
    end
    
    typesig { [] }
    # Returns the vertical scroll increment.
    # 
    # @return vertical scroll increment.
    def get_vertical_increment
      return @renderer.get_line_height
    end
    
    typesig { [] }
    def get_vertical_scroll_offset
      if ((@vertical_scroll_offset).equal?(-1))
        @renderer.calculate(0, @top_index)
        height = 0
        i = 0
        while i < @top_index
          height += @renderer.get_line_height(i)
          i += 1
        end
        height -= @top_index_y
        @vertical_scroll_offset = height
      end
      return @vertical_scroll_offset
    end
    
    typesig { [TextLayout, ::Java::Int] }
    def get_visual_line_index(layout, offset_in_line)
      line_index = layout.get_line_index(offset_in_line)
      offsets = layout.get_line_offsets
      if (!(line_index).equal?(0) && (offset_in_line).equal?(offsets[line_index]))
        line_y = layout.get_line_bounds(line_index).attr_y
        caret_y = get_caret.get_location.attr_y - @top_margin - get_line_pixel(get_caret_line)
        if (line_y > caret_y)
          line_index -= 1
        end
      end
      return line_index
    end
    
    typesig { [] }
    def get_caret_direction
      if (!is_bidi_caret)
        return SWT::DEFAULT
      end
      if (!(@ime.get_composition_offset).equal?(-1))
        return SWT::DEFAULT
      end
      if (!@update_caret_direction && !(@caret_direction).equal?(SWT::NULL))
        return @caret_direction
      end
      @update_caret_direction = false
      caret_line = get_caret_line
      line_offset = @content.get_offset_at_line(caret_line)
      line = @content.get_line(caret_line)
      offset = @caret_offset - line_offset
      line_length = line.length
      if ((line_length).equal?(0))
        return is_mirrored ? SWT::RIGHT : SWT::LEFT
      end
      if ((@caret_alignment).equal?(PREVIOUS_OFFSET_TRAILING) && offset > 0)
        offset -= 1
      end
      if ((offset).equal?(line_length) && offset > 0)
        offset -= 1
      end
      while (offset > 0 && Character.is_digit(line.char_at(offset)))
        offset -= 1
      end
      if ((offset).equal?(0) && Character.is_digit(line.char_at(offset)))
        return is_mirrored ? SWT::RIGHT : SWT::LEFT
      end
      layout = @renderer.get_text_layout(caret_line)
      level = layout.get_level(offset)
      @renderer.dispose_text_layout(layout)
      return (!((level & 1)).equal?(0)) ? SWT::RIGHT : SWT::LEFT
    end
    
    typesig { [] }
    # Returns the index of the line the caret is on.
    def get_caret_line
      return @content.get_line_at_offset(@caret_offset)
    end
    
    typesig { [] }
    def get_wrap_width
      if (@word_wrap && !is_single_line)
        width = @client_area_width - @left_margin - @right_margin - get_caret_width
        return width > 0 ? width : 1
      end
      return -1
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_word_next(offset, movement)
      new_offset = 0
      line_offset = 0
      line_text = nil
      if (offset >= get_char_count)
        new_offset = offset
        line_index = @content.get_line_count - 1
        line_offset = @content.get_offset_at_line(line_index)
        line_text = RJava.cast_to_string(@content.get_line(line_index))
      else
        line_index = @content.get_line_at_offset(offset)
        line_offset = @content.get_offset_at_line(line_index)
        line_text = RJava.cast_to_string(@content.get_line(line_index))
        line_length = line_text.length
        if ((offset).equal?(line_offset + line_length))
          new_offset = @content.get_offset_at_line(line_index + 1)
        else
          layout = @renderer.get_text_layout(line_index)
          new_offset = line_offset + layout.get_next_offset(offset - line_offset, movement)
          @renderer.dispose_text_layout(layout)
        end
      end
      return send_word_boundary_event(WordNext, movement, offset, new_offset, line_text, line_offset)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_word_previous(offset, movement)
      new_offset = 0
      line_offset = 0
      line_text = nil
      if (offset <= 0)
        new_offset = 0
        line_index = @content.get_line_at_offset(new_offset)
        line_offset = @content.get_offset_at_line(line_index)
        line_text = RJava.cast_to_string(@content.get_line(line_index))
      else
        line_index = @content.get_line_at_offset(offset)
        line_offset = @content.get_offset_at_line(line_index)
        line_text = RJava.cast_to_string(@content.get_line(line_index))
        if ((offset).equal?(line_offset))
          next_line_text = @content.get_line(line_index - 1)
          next_line_offset = @content.get_offset_at_line(line_index - 1)
          new_offset = next_line_offset + next_line_text.length
        else
          layout = @renderer.get_text_layout(line_index)
          new_offset = line_offset + layout.get_previous_offset(offset - line_offset, movement)
          @renderer.dispose_text_layout(layout)
        end
      end
      return send_word_boundary_event(WordPrevious, movement, offset, new_offset, line_text, line_offset)
    end
    
    typesig { [] }
    # Returns whether the widget wraps lines.
    # 
    # @return true if widget wraps lines, false otherwise
    # @since 2.0
    def get_word_wrap
      check_widget
      return @word_wrap
    end
    
    typesig { [::Java::Int] }
    # Returns the location of the given offset.
    # <p>
    # <b>NOTE:</b> Does not return correct values for true italic fonts (vs. slanted fonts).
    # </p>
    # 
    # @return location of the character at the given offset in the line.
    def get_point_at_offset(offset)
      line_index = @content.get_line_at_offset(offset)
      line = @content.get_line(line_index)
      line_offset = @content.get_offset_at_line(line_index)
      offset_in_line = offset - line_offset
      line_length = line.length
      if (line_index < @content.get_line_count - 1)
        end_line_offset = @content.get_offset_at_line(line_index + 1) - 1
        if (line_length < offset_in_line && offset_in_line <= end_line_offset)
          offset_in_line = line_length
        end
      end
      point = nil
      layout = @renderer.get_text_layout(line_index)
      if (!(line_length).equal?(0) && offset_in_line <= line_length)
        if ((offset_in_line).equal?(line_length))
          point = layout.get_location(offset_in_line - 1, true)
        else
          case (@caret_alignment)
          when OFFSET_LEADING
            point = layout.get_location(offset_in_line, false)
          when PREVIOUS_OFFSET_TRAILING
            if ((offset_in_line).equal?(0))
              point = layout.get_location(offset_in_line, false)
            else
              point = layout.get_location(offset_in_line - 1, true)
            end
          else
            if ((offset_in_line).equal?(0))
              point = layout.get_location(offset_in_line, false)
            else
              point = layout.get_location(offset_in_line - 1, true)
            end
          end
        end
      else
        point = Point.new(layout.get_indent, 0)
      end
      @renderer.dispose_text_layout(layout)
      point.attr_x += @left_margin - @horizontal_scroll_offset
      point.attr_y += get_line_pixel(line_index)
      return point
    end
    
    typesig { [String] }
    # Inserts a string.  The old selection is replaced with the new text.
    # 
    # @param string the string
    # @see #replaceTextRange(int,int,String)
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when string is null</li>
    # </ul>
    def insert(string)
      check_widget
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (@block_selection)
        insert_block_selection_text(string, false)
      else
        sel = get_selection_range
        replace_text_range(sel.attr_x, sel.attr_y, string)
      end
    end
    
    typesig { [String, ::Java::Boolean] }
    def insert_block_selection_text(text, fill_with_spaces)
      line_count = 1
      i = 0
      while i < text.length
        ch = text.char_at(i)
        if ((ch).equal?(Character.new(?\n.ord)) || (ch).equal?(Character.new(?\r.ord)))
          line_count += 1
          if ((ch).equal?(Character.new(?\r.ord)) && i + 1 < text.length && (text.char_at(i + 1)).equal?(Character.new(?\n.ord)))
            i += 1
          end
        end
        i += 1
      end
      lines = Array.typed(String).new(line_count) { nil }
      start = 0
      line_count = 0
      i_ = 0
      while i_ < text.length
        ch = text.char_at(i_)
        if ((ch).equal?(Character.new(?\n.ord)) || (ch).equal?(Character.new(?\r.ord)))
          lines[((line_count += 1) - 1)] = text.substring(start, i_)
          if ((ch).equal?(Character.new(?\r.ord)) && i_ + 1 < text.length && (text.char_at(i_ + 1)).equal?(Character.new(?\n.ord)))
            i_ += 1
          end
          start = i_ + 1
        end
        i_ += 1
      end
      lines[((line_count += 1) - 1)] = text.substring(start)
      if (fill_with_spaces)
        max_length = 0
        i__ = 0
        while i__ < lines.attr_length
          length_ = lines[i__].length
          max_length = Math.max(max_length, length_)
          i__ += 1
        end
        i___ = 0
        while i___ < lines.attr_length
          line = lines[i___]
          length_ = line.length
          if (length_ < max_length)
            num_spaces = max_length - length_
            buffer = StringBuffer.new(length_ + num_spaces)
            buffer.append(line)
            j = 0
            while j < num_spaces
              buffer.append(Character.new(?\s.ord))
              j += 1
            end
            lines[i___] = buffer.to_s
          end
          i___ += 1
        end
      end
      first_line = 0
      last_line = 0
      left = 0
      right = 0
      if (!(@block_xlocation).equal?(-1))
        rect = get_block_selecton_position
        first_line = rect.attr_y
        last_line = rect.attr_height
        left = rect.attr_x
        right = rect.attr_width
      else
        first_line = last_line = get_caret_line
        left = right = get_point_at_offset(@caret_offset).attr_x
      end
      start = @caret_offset
      caret_line = get_caret_line
      index = 0
      line_index = first_line
      while (line_index <= last_line)
        string = index < line_count ? lines[((index += 1) - 1)] : ""
        line_start = send_text_event(left, right, line_index, string, fill_with_spaces)
        if ((line_index).equal?(caret_line))
          start = line_start
        end
        line_index += 1
      end
      while (index < line_count)
        line_start = send_text_event(left, left, line_index, lines[((index += 1) - 1)], fill_with_spaces)
        if ((line_index).equal?(caret_line))
          start = line_start
        end
        line_index += 1
      end
      return start
    end
    
    typesig { [::Java::Char, ::Java::Int] }
    def insert_block_selection_text(key, action)
      if ((key).equal?(SWT::CR) || (key).equal?(SWT::LF))
        return
      end
      rect = get_block_selecton_position
      first_line = rect.attr_y
      last_line = rect.attr_height
      left = rect.attr_x
      right = rect.attr_width
      trailing = Array.typed(::Java::Int).new(1) { 0 }
      offset = 0
      delta = 0
      text = !(key).equal?(0) ? String.new(Array.typed(::Java::Char).new([key])) : ""
      length_ = text.length
      line_index = first_line
      while line_index <= last_line
        line = @content.get_line(line_index)
        line_offset = @content.get_offset_at_line(line_index)
        line_end_offset = line_offset + line.length
        line_pixel = get_line_pixel(line_index)
        start = get_offset_at_point(left, line_pixel, trailing, true)
        out_of_line = (start).equal?(-1)
        if (out_of_line)
          start = left < @left_margin ? line_offset : line_end_offset
        else
          start += trailing[0]
        end
        end_ = get_offset_at_point(right, line_pixel, trailing, true)
        if ((end_).equal?(-1))
          end_ = right < @left_margin ? line_offset : line_end_offset
        else
          end_ += trailing[0]
        end
        if (start > end_)
          temp = start
          start = end_
          end_ = temp
        end
        if ((start).equal?(end_) && !out_of_line)
          case (action)
          when ST::DELETE_PREVIOUS
            if (start > line_offset)
              start = get_cluster_previous(start, line_index)
            end
          when ST::DELETE_NEXT
            if (end_ < line_end_offset)
              end_ = get_cluster_next(end_, line_index)
            end
          end
        end
        if (out_of_line)
          if (line.length >= delta)
            delta = line.length
            offset = line_end_offset + length_
          end
        else
          offset = start + length_
          delta = @content.get_char_count
        end
        event = Event.new
        event.attr_text = text
        event.attr_start = start
        event.attr_end = end_
        send_key_event(event)
        line_index += 1
      end
      x = get_point_at_offset(offset).attr_x
      vertical_scroll_offset = get_vertical_scroll_offset
      set_block_selection_location(x, @block_yanchor - vertical_scroll_offset, x, @block_ylocation - vertical_scroll_offset, false)
    end
    
    typesig { [] }
    # Creates content change listeners and set the default content model.
    def install_default_content
      @text_change_listener = Class.new(TextChangeListener.class == Class ? TextChangeListener : Object) do
        local_class_in StyledText
        include_class_members StyledText
        include TextChangeListener if TextChangeListener.class == Module
        
        typesig { [TextChangingEvent] }
        define_method :text_changing do |event|
          handle_text_changing(event)
        end
        
        typesig { [TextChangedEvent] }
        define_method :text_changed do |event|
          handle_text_changed(event)
        end
        
        typesig { [TextChangedEvent] }
        define_method :text_set do |event|
          handle_text_set(event)
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @content = DefaultContent.new
      @content.add_text_change_listener(@text_change_listener)
    end
    
    typesig { [] }
    # Adds event listeners
    def install_listeners
      vertical_bar = get_vertical_bar
      horizontal_bar = get_horizontal_bar
      @listener = Class.new(Listener.class == Class ? Listener : Object) do
        local_class_in StyledText
        include_class_members StyledText
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_type)
          when SWT::Dispose
            handle_dispose(event)
          when SWT::KeyDown
            handle_key_down(event)
          when SWT::KeyUp
            handle_key_up(event)
          when SWT::MouseDown
            handle_mouse_down(event)
          when SWT::MouseUp
            handle_mouse_up(event)
          when SWT::MouseMove
            handle_mouse_move(event)
          when SWT::Paint
            handle_paint(event)
          when SWT::Resize
            handle_resize(event)
          when SWT::Traverse
            handle_traverse(event)
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      add_listener(SWT::Dispose, @listener)
      add_listener(SWT::KeyDown, @listener)
      add_listener(SWT::KeyUp, @listener)
      add_listener(SWT::MouseDown, @listener)
      add_listener(SWT::MouseUp, @listener)
      add_listener(SWT::MouseMove, @listener)
      add_listener(SWT::Paint, @listener)
      add_listener(SWT::Resize, @listener)
      add_listener(SWT::Traverse, @listener)
      @ime.add_listener(SWT::ImeComposition, Class.new(Listener.class == Class ? Listener : Object) do
        local_class_in StyledText
        include_class_members StyledText
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_detail)
          when SWT::COMPOSITION_SELECTION
            handle_composition_selection(event)
          when SWT::COMPOSITION_CHANGED
            handle_composition_changed(event)
          when SWT::COMPOSITION_OFFSET
            handle_composition_offset(event)
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      if (!(vertical_bar).nil?)
        vertical_bar.add_listener(SWT::Selection, Class.new(Listener.class == Class ? Listener : Object) do
          local_class_in StyledText
          include_class_members StyledText
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            handle_vertical_scroll(event)
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
      end
      if (!(horizontal_bar).nil?)
        horizontal_bar.add_listener(SWT::Selection, Class.new(Listener.class == Class ? Listener : Object) do
          local_class_in StyledText
          include_class_members StyledText
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            handle_horizontal_scroll(event)
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
    
    typesig { [::Java::Int, ::Java::Int] }
    def internal_redraw_range(start, length_)
      if (length_ <= 0)
        return
      end
      end_ = start + length_
      start_line = @content.get_line_at_offset(start)
      end_line = @content.get_line_at_offset(end_)
      partial_bottom_index = get_partial_bottom_index
      partial_top_index = get_partial_top_index
      if (start_line > partial_bottom_index || end_line < partial_top_index)
        return
      end
      if (partial_top_index > start_line)
        start_line = partial_top_index
        start = 0
      else
        start -= @content.get_offset_at_line(start_line)
      end
      if (partial_bottom_index < end_line)
        end_line = partial_bottom_index + 1
        end_ = 0
      else
        end_ -= @content.get_offset_at_line(end_line)
      end
      layout = @renderer.get_text_layout(start_line)
      line_x = @left_margin - @horizontal_scroll_offset
      start_line_y = get_line_pixel(start_line)
      offsets = layout.get_line_offsets
      start_index = layout.get_line_index(Math.min(start, layout.get_text.length))
      # Redraw end of line before start line if wrapped and start offset is first char
      if (@word_wrap && start_index > 0 && (offsets[start_index]).equal?(start))
        rect = layout.get_line_bounds(start_index - 1)
        rect.attr_x = rect.attr_width
        rect.attr_width = @client_area_width - @right_margin - rect.attr_x
        rect.attr_x += line_x
        rect.attr_y += start_line_y
        Canvas.instance_method(:redraw).bind(self).call(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height, false)
      end
      if ((start_line).equal?(end_line))
        end_index = layout.get_line_index(Math.min(end_, layout.get_text.length))
        if ((start_index).equal?(end_index))
          # Redraw rect between start and end offset if start and end offsets are in same wrapped line
          rect = layout.get_bounds(start, end_ - 1)
          rect.attr_x += line_x
          rect.attr_y += start_line_y
          Canvas.instance_method(:redraw).bind(self).call(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height, false)
          @renderer.dispose_text_layout(layout)
          return
        end
      end
      # Redraw start line from the start offset to the end of client area
      start_rect = layout.get_bounds(start, offsets[start_index + 1] - 1)
      if ((start_rect.attr_height).equal?(0))
        bounds = layout.get_line_bounds(start_index)
        start_rect.attr_x = bounds.attr_width
        start_rect.attr_y = bounds.attr_y
        start_rect.attr_height = bounds.attr_height
      end
      start_rect.attr_x += line_x
      start_rect.attr_y += start_line_y
      start_rect.attr_width = @client_area_width - @right_margin - start_rect.attr_x
      Canvas.instance_method(:redraw).bind(self).call(start_rect.attr_x, start_rect.attr_y, start_rect.attr_width, start_rect.attr_height, false)
      # Redraw end line from the beginning of the line to the end offset
      if (!(start_line).equal?(end_line))
        @renderer.dispose_text_layout(layout)
        layout = @renderer.get_text_layout(end_line)
        offsets = layout.get_line_offsets
      end
      end_index = layout.get_line_index(Math.min(end_, layout.get_text.length))
      end_rect = layout.get_bounds(offsets[end_index], end_ - 1)
      if ((end_rect.attr_height).equal?(0))
        bounds = layout.get_line_bounds(end_index)
        end_rect.attr_y = bounds.attr_y
        end_rect.attr_height = bounds.attr_height
      end
      end_rect.attr_x += line_x
      end_rect.attr_y += get_line_pixel(end_line)
      Canvas.instance_method(:redraw).bind(self).call(end_rect.attr_x, end_rect.attr_y, end_rect.attr_width, end_rect.attr_height, false)
      @renderer.dispose_text_layout(layout)
      # Redraw all lines in between start and end line
      y = start_rect.attr_y + start_rect.attr_height
      if (end_rect.attr_y > y)
        Canvas.instance_method(:redraw).bind(self).call(@left_margin, y, @client_area_width - @right_margin - @left_margin, end_rect.attr_y - y, false)
      end
    end
    
    typesig { [Event] }
    def handle_composition_offset(event)
      trailing = Array.typed(::Java::Int).new(1) { 0 }
      event.attr_index = get_offset_at_point(event.attr_x, event.attr_y, trailing, true)
      event.attr_count = trailing[0]
    end
    
    typesig { [Event] }
    def handle_composition_selection(event)
      event.attr_start = @selection.attr_x
      event.attr_end = @selection.attr_y
      event.attr_text = get_selection_text
    end
    
    typesig { [Event] }
    def handle_composition_changed(event)
      text = event.attr_text
      start = event.attr_start
      end_ = event.attr_end
      length_ = text.length
      if ((length_).equal?(@ime.get_commit_count))
        @content.replace_text_range(start, end_ - start, "")
        set_caret_offset(@ime.get_composition_offset, SWT::DEFAULT)
        @caret_width = 0
        @caret_direction = SWT::NULL
      else
        @content.replace_text_range(start, end_ - start, text)
        set_caret_offset(@ime.get_caret_offset, SWT::DEFAULT)
        if (@ime.get_wide_caret)
          start = @ime.get_composition_offset
          line_index = get_caret_line
          line_offset = @content.get_offset_at_line(line_index)
          layout = @renderer.get_text_layout(line_index)
          @caret_width = layout.get_bounds(start - line_offset, start + length_ - 1 - line_offset).attr_width
          @renderer.dispose_text_layout(layout)
        end
      end
      show_caret
    end
    
    typesig { [Event] }
    # Frees resources.
    def handle_dispose(event)
      remove_listener(SWT::Dispose, @listener)
      notify_listeners(SWT::Dispose, event)
      event.attr_type = SWT::None
      @clipboard.dispose
      if (!(@renderer).nil?)
        @renderer.dispose
        @renderer = nil
      end
      if (!(@content).nil?)
        @content.remove_text_change_listener(@text_change_listener)
        @content = nil
      end
      if (!(@default_caret).nil?)
        @default_caret.dispose
        @default_caret = nil
      end
      if (!(@left_caret_bitmap).nil?)
        @left_caret_bitmap.dispose
        @left_caret_bitmap = nil
      end
      if (!(@right_caret_bitmap).nil?)
        @right_caret_bitmap.dispose
        @right_caret_bitmap = nil
      end
      if (is_bidi_caret)
        BidiUtil.remove_language_listener(self)
      end
      @selection_background = nil
      @selection_foreground = nil
      @margin_color = nil
      @text_change_listener = nil
      @selection = nil
      @double_click_selection = nil
      @key_action_map = nil
      @background = nil
      @foreground = nil
      @clipboard = nil
    end
    
    typesig { [Event] }
    # Scrolls the widget horizontally.
    def handle_horizontal_scroll(event)
      scroll_pixel = get_horizontal_bar.get_selection - @horizontal_scroll_offset
      scroll_horizontal(scroll_pixel, false)
    end
    
    typesig { [Event] }
    # If an action has been registered for the key stroke execute the action.
    # Otherwise, if a character has been entered treat it as new content.
    # 
    # @param event keyboard event
    def handle_key(event)
      action = 0
      @caret_alignment = PREVIOUS_OFFSET_TRAILING
      if (!(event.attr_key_code).equal?(0))
        # special key pressed (e.g., F1)
        action = get_key_binding(event.attr_key_code | event.attr_state_mask)
      else
        # character key pressed
        action = get_key_binding(event.attr_character | event.attr_state_mask)
        if ((action).equal?(SWT::NULL))
          # see if we have a control character
          if (!((event.attr_state_mask & SWT::CTRL)).equal?(0) && event.attr_character <= 31)
            # get the character from the CTRL+char sequence, the control
            # key subtracts 64 from the value of the key that it modifies
            c = event.attr_character + 64
            action = get_key_binding(c | event.attr_state_mask)
          end
        end
      end
      if ((action).equal?(SWT::NULL))
        ignore = false
        if (IS_MAC)
          # Ignore accelerator key combinations (we do not want to
          # insert a character in the text in this instance). Do not
          # ignore COMMAND+ALT combinations since that key sequence
          # produces characters on the mac.
          ignore = ((event.attr_state_mask ^ SWT::COMMAND)).equal?(0) || ((event.attr_state_mask ^ (SWT::COMMAND | SWT::SHIFT))).equal?(0)
        else
          if (IS_MOTIF)
            # Ignore accelerator key combinations (we do not want to
            # insert a character in the text in this instance). Do not
            # ignore ALT combinations since this key sequence
            # produces characters on motif.
            ignore = ((event.attr_state_mask ^ SWT::CTRL)).equal?(0) || ((event.attr_state_mask ^ (SWT::CTRL | SWT::SHIFT))).equal?(0)
          else
            # Ignore accelerator key combinations (we do not want to
            # insert a character in the text in this instance). Don't
            # ignore CTRL+ALT combinations since that is the Alt Gr
            # key on some keyboards.  See bug 20953.
            ignore = ((event.attr_state_mask ^ SWT::ALT)).equal?(0) || ((event.attr_state_mask ^ SWT::CTRL)).equal?(0) || ((event.attr_state_mask ^ (SWT::ALT | SWT::SHIFT))).equal?(0) || ((event.attr_state_mask ^ (SWT::CTRL | SWT::SHIFT))).equal?(0)
          end
        end
        # -ignore anything below SPACE except for line delimiter keys and tab.
        # -ignore DEL
        if (!ignore && event.attr_character > 31 && !(event.attr_character).equal?(SWT::DEL) || (event.attr_character).equal?(SWT::CR) || (event.attr_character).equal?(SWT::LF) || (event.attr_character).equal?(TAB))
          do_content(event.attr_character)
          update
        end
      else
        invoke_action(action)
      end
    end
    
    typesig { [Event] }
    # If a VerifyKey listener exists, verify that the key that was entered
    # should be processed.
    # 
    # @param event keyboard event
    def handle_key_down(event)
      if ((@clipboard_selection).nil?)
        @clipboard_selection = Point.new(@selection.attr_x, @selection.attr_y)
      end
      verify_event = Event.new
      verify_event.attr_character = event.attr_character
      verify_event.attr_key_code = event.attr_key_code
      verify_event.attr_state_mask = event.attr_state_mask
      verify_event.attr_doit = true
      notify_listeners(VerifyKey, verify_event)
      if (verify_event.attr_doit)
        handle_key(event)
      end
    end
    
    typesig { [Event] }
    # Update the Selection Clipboard.
    # 
    # @param event keyboard event
    def handle_key_up(event)
      if (!(@clipboard_selection).nil?)
        if (!(@clipboard_selection.attr_x).equal?(@selection.attr_x) || !(@clipboard_selection.attr_y).equal?(@selection.attr_y))
          copy_selection(DND::SELECTION_CLIPBOARD)
        end
      end
      @clipboard_selection = nil
    end
    
    typesig { [Event] }
    # Updates the caret location and selection if mouse button 1 has been
    # pressed.
    def handle_mouse_down(event)
      # force focus (object support)
      force_focus
      # drag detect
      if (@drag_detect && check_drag_detect(event))
        return
      end
      # paste clipboard selection
      if ((event.attr_button).equal?(2))
        text = get_clipboard_content(DND::SELECTION_CLIPBOARD)
        if (!(text).nil? && text.length > 0)
          # position cursor
          do_mouse_location_change(event.attr_x, event.attr_y, false)
          # insert text
          e = Event.new
          e.attr_start = @selection.attr_x
          e.attr_end = @selection.attr_y
          e.attr_text = get_model_delimited_text(text)
          send_key_event(e)
        end
      end
      # set selection
      if ((!(event.attr_button).equal?(1)) || (IS_MAC && !((event.attr_state_mask & SWT::MOD4)).equal?(0)))
        return
      end
      @click_count = event.attr_count
      if ((@click_count).equal?(1))
        select = !((event.attr_state_mask & SWT::MOD2)).equal?(0)
        do_mouse_location_change(event.attr_x, event.attr_y, select)
      else
        if (@double_click_enabled)
          word_select = ((@click_count & 1)).equal?(0)
          offset = get_offset_at_point(event.attr_x, event.attr_y, nil)
          line_index = @content.get_line_at_offset(offset)
          line_offset = @content.get_offset_at_line(line_index)
          if (word_select)
            min_ = @block_selection ? line_offset : 0
            max_ = @block_selection ? line_offset + @content.get_line(line_index).length : @content.get_char_count
            start = Math.max(min_, get_word_previous(offset, SWT::MOVEMENT_WORD_START))
            end_ = Math.min(max_, get_word_next(start, SWT::MOVEMENT_WORD_END))
            set_selection(start, end_ - start, false, true)
            send_selection_event
          else
            if (@block_selection)
              set_block_selection_location(@left_margin, event.attr_y, @client_area_width - @right_margin, event.attr_y, true)
            else
              line_end = @content.get_char_count
              if (line_index + 1 < @content.get_line_count)
                line_end = @content.get_offset_at_line(line_index + 1)
              end
              set_selection(line_offset, line_end - line_offset, false, false)
              send_selection_event
            end
          end
          @double_click_selection = Point.new(@selection.attr_x, @selection.attr_y)
          show_caret
        end
      end
    end
    
    typesig { [Event] }
    # Updates the caret location and selection if mouse button 1 is pressed
    # during the mouse move.
    def handle_mouse_move(event)
      if (@click_count > 0)
        update
        do_auto_scroll(event)
        do_mouse_location_change(event.attr_x, event.attr_y, true)
      end
      if (@renderer.attr_has_links)
        do_mouse_link_cursor(event.attr_x, event.attr_y)
      end
    end
    
    typesig { [Event] }
    # Autoscrolling ends when the mouse button is released.
    def handle_mouse_up(event)
      @click_count = 0
      end_auto_scroll
      if ((event.attr_button).equal?(1))
        copy_selection(DND::SELECTION_CLIPBOARD)
      end
    end
    
    typesig { [Event] }
    # Renders the invalidated area specified in the paint event.
    # 
    # @param event paint event
    def handle_paint(event)
      if ((event.attr_width).equal?(0) || (event.attr_height).equal?(0))
        return
      end
      if ((@client_area_width).equal?(0) || (@client_area_height).equal?(0))
        return
      end
      start_line = get_line_index(event.attr_y)
      y = get_line_pixel(start_line)
      end_y = event.attr_y + event.attr_height
      gc = event.attr_gc
      background = get_background
      foreground = get_foreground
      if (end_y > 0)
        line_count = is_single_line ? 1 : @content.get_line_count
        x = @left_margin - @horizontal_scroll_offset
        i = start_line
        while y < end_y && i < line_count
          y += @renderer.draw_line(i, x, y, gc, background, foreground)
          i += 1
        end
        if (y < end_y)
          gc.set_background(background)
          draw_background(gc, 0, y, @client_area_width, end_y - y)
        end
      end
      if (@block_selection && !(@block_xlocation).equal?(-1))
        gc.set_background(get_selection_background)
        rect = get_block_selection_rectangle
        gc.draw_rectangle(rect.attr_x, rect.attr_y, Math.max(1, rect.attr_width - 1), Math.max(1, rect.attr_height - 1))
        gc.set_advanced(true)
        if (gc.get_advanced)
          gc.set_alpha(100)
          gc.fill_rectangle(rect)
          gc.set_advanced(false)
        end
      end
      # fill the margin background
      gc.set_background(!(@margin_color).nil? ? @margin_color : background)
      if (@top_margin > 0)
        draw_background(gc, 0, 0, @client_area_width, @top_margin)
      end
      if (@bottom_margin > 0)
        draw_background(gc, 0, @client_area_height - @bottom_margin, @client_area_width, @bottom_margin)
      end
      if (@left_margin - @alignment_margin > 0)
        draw_background(gc, 0, 0, @left_margin - @alignment_margin, @client_area_height)
      end
      if (@right_margin > 0)
        draw_background(gc, @client_area_width - @right_margin, 0, @right_margin, @client_area_height)
      end
    end
    
    typesig { [Event] }
    # Recalculates the scroll bars. Rewraps all lines when in word
    # wrap mode.
    # 
    # @param event resize event
    def handle_resize(event)
      old_height = @client_area_height
      old_width = @client_area_width
      client_area = get_client_area
      @client_area_height = client_area.attr_height
      @client_area_width = client_area.attr_width
      # Redraw the old or new right/bottom margin if needed
      if (!(old_width).equal?(@client_area_width))
        if (@right_margin > 0)
          x = (old_width < @client_area_width ? old_width : @client_area_width) - @right_margin
          Canvas.instance_method(:redraw).bind(self).call(x, 0, @right_margin, old_height, false)
        end
      end
      if (!(old_height).equal?(@client_area_height))
        if (@bottom_margin > 0)
          y = (old_height < @client_area_height ? old_height : @client_area_height) - @bottom_margin
          Canvas.instance_method(:redraw).bind(self).call(0, y, old_width, @bottom_margin, false)
        end
      end
      if (@word_wrap)
        if (!(old_width).equal?(@client_area_width))
          @renderer.reset(0, @content.get_line_count)
          @vertical_scroll_offset = -1
          @renderer.calculate_idle
          Canvas.instance_method(:redraw).bind(self).call
        end
        if (!(old_height).equal?(@client_area_height))
          if ((old_height).equal?(0))
            @top_index_y = 0
          end
          set_scroll_bars(true)
        end
        set_caret_location
      else
        @renderer.calculate_client_area
        set_scroll_bars(true)
        claim_right_free_space
        # StyledText allows any value for horizontalScrollOffset when clientArea is zero
        # in setHorizontalPixel() and setHorisontalOffset(). Fixes bug 168429.
        if (!(@client_area_width).equal?(0))
          horizontal_bar = get_horizontal_bar
          if (!(horizontal_bar).nil? && horizontal_bar.get_visible)
            if (!(@horizontal_scroll_offset).equal?(horizontal_bar.get_selection))
              horizontal_bar.set_selection(@horizontal_scroll_offset)
              @horizontal_scroll_offset = horizontal_bar.get_selection
            end
          end
        end
      end
      update_caret_visibility
      claim_bottom_free_space
      set_alignment
      # TODO FIX TOP INDEX DURING RESIZE
      # if (oldHeight != clientAreaHeight || wordWrap) {
      # calculateTopIndex(0);
      # }
    end
    
    typesig { [TextChangedEvent] }
    # Updates the caret position and selection and the scroll bars to reflect
    # the content change.
    def handle_text_changed(event)
      offset = @ime.get_composition_offset
      if (!(offset).equal?(-1) && @last_text_change_start < offset)
        @ime.set_composition_offset(offset + @last_text_change_new_char_count - @last_text_change_replace_char_count)
      end
      first_line = @content.get_line_at_offset(@last_text_change_start)
      reset_cache(first_line, 0)
      if (!is_fixed_line_height && @top_index > first_line)
        @top_index = first_line
        @top_index_y = 0
        Canvas.instance_method(:redraw).bind(self).call
      else
        last_line = first_line + @last_text_change_new_line_count
        first_line_top = get_line_pixel(first_line)
        new_last_line_bottom = get_line_pixel(last_line + 1)
        if (!(@last_line_bottom).equal?(new_last_line_bottom))
          Canvas.instance_method(:redraw).bind(self).call
        else
          Canvas.instance_method(:redraw).bind(self).call(0, first_line_top, @client_area_width, new_last_line_bottom - first_line_top, false)
          redraw_lines_bullet(@renderer.attr_redraw_lines)
        end
      end
      @renderer.attr_redraw_lines = nil
      # update selection/caret location after styles have been changed.
      # otherwise any text measuring could be incorrect
      # 
      # also, this needs to be done after all scrolling. Otherwise,
      # selection redraw would be flushed during scroll which is wrong.
      # in some cases new text would be drawn in scroll source area even
      # though the intent is to scroll it.
      if (!(@block_selection && !(@block_xlocation).equal?(-1)))
        update_selection(@last_text_change_start, @last_text_change_replace_char_count, @last_text_change_new_char_count)
      end
      if (@last_text_change_replace_line_count > 0 || @word_wrap)
        claim_bottom_free_space
      end
      if (@last_text_change_replace_char_count > 0)
        claim_right_free_space
      end
      send_accessible_text_changed(@last_text_change_start, @last_text_change_new_char_count, @last_text_change_replace_char_count)
      @last_char_count += @last_text_change_new_char_count
      @last_char_count -= @last_text_change_replace_char_count
      set_alignment
    end
    
    typesig { [TextChangingEvent] }
    # Updates the screen to reflect a pending content change.
    # 
    # @param event .start the start offset of the change
    # @param event .newText text that is going to be inserted or empty String
    # if no text will be inserted
    # @param event .replaceCharCount length of text that is going to be replaced
    # @param event .newCharCount length of text that is going to be inserted
    # @param event .replaceLineCount number of lines that are going to be replaced
    # @param event .newLineCount number of new lines that are going to be inserted
    def handle_text_changing(event)
      if (event.attr_replace_char_count < 0)
        event.attr_start += event.attr_replace_char_count
        event.attr_replace_char_count *= -1
      end
      @last_text_change_start = event.attr_start
      @last_text_change_new_line_count = event.attr_new_line_count
      @last_text_change_new_char_count = event.attr_new_char_count
      @last_text_change_replace_line_count = event.attr_replace_line_count
      @last_text_change_replace_char_count = event.attr_replace_char_count
      line_index = @content.get_line_at_offset(event.attr_start)
      src_y = get_line_pixel(line_index + event.attr_replace_line_count + 1)
      dest_y = get_line_pixel(line_index + 1) + event.attr_new_line_count * @renderer.get_line_height
      @last_line_bottom = dest_y
      if (src_y < 0 && dest_y < 0)
        @last_line_bottom += src_y - dest_y
        @vertical_scroll_offset += dest_y - src_y
        calculate_top_index(dest_y - src_y)
        set_scroll_bars(true)
      else
        scroll_text(src_y, dest_y)
      end
      @renderer.text_changing(event)
      # Update the caret offset if it is greater than the length of the content.
      # This is necessary since style range API may be called between the
      # handleTextChanging and handleTextChanged events and this API sets the
      # caretOffset.
      new_end_of_text = @content.get_char_count - event.attr_replace_char_count + event.attr_new_char_count
      if (@caret_offset > new_end_of_text)
        set_caret_offset(new_end_of_text, SWT::DEFAULT)
      end
    end
    
    typesig { [TextChangedEvent] }
    # Called when the widget content is set programmatically, overwriting
    # the old content. Resets the caret position, selection and scroll offsets.
    # Recalculates the content width and scroll bars. Redraws the widget.
    # 
    # @param event text change event.
    def handle_text_set(event)
      reset
      new_char_count = get_char_count
      send_accessible_text_changed(0, new_char_count, @last_char_count)
      @last_char_count = new_char_count
      set_alignment
    end
    
    typesig { [Event] }
    # Called when a traversal key is pressed.
    # Allow tab next traversal to occur when the widget is in single
    # line mode or in multi line and non-editable mode .
    # When in editable multi line mode we want to prevent the tab
    # traversal and receive the tab key event instead.
    # 
    # @param event the event
    def handle_traverse(event)
      case (event.attr_detail)
      when SWT::TRAVERSE_ESCAPE, SWT::TRAVERSE_PAGE_NEXT, SWT::TRAVERSE_PAGE_PREVIOUS
        event.attr_doit = true
      when SWT::TRAVERSE_RETURN, SWT::TRAVERSE_TAB_NEXT, SWT::TRAVERSE_TAB_PREVIOUS
        if (!((get_style & SWT::SINGLE)).equal?(0))
          event.attr_doit = true
        else
          if (!@editable || !((event.attr_state_mask & SWT::MODIFIER_MASK)).equal?(0))
            event.attr_doit = true
          end
        end
      end
    end
    
    typesig { [Event] }
    # Scrolls the widget vertically.
    def handle_vertical_scroll(event)
      scroll_pixel = get_vertical_bar.get_selection - get_vertical_scroll_offset
      scroll_vertical(scroll_pixel, false)
    end
    
    typesig { [] }
    # Add accessibility support for the widget.
    def initialize_accessible
      accessible = get_accessible
      accessible.add_accessible_listener(Class.new(AccessibleAdapter.class == Class ? AccessibleAdapter : Object) do
        local_class_in StyledText
        include_class_members StyledText
        include AccessibleAdapter if AccessibleAdapter.class == Module
        
        typesig { [AccessibleEvent] }
        define_method :get_name do |e|
          name = nil
          label = get_associated_label
          if (!(label).nil?)
            name = RJava.cast_to_string(strip_mnemonic(label.get_text))
          end
          e.attr_result = name
        end
        
        typesig { [AccessibleEvent] }
        define_method :get_help do |e|
          e.attr_result = get_tool_tip_text
        end
        
        typesig { [AccessibleEvent] }
        define_method :get_keyboard_shortcut do |e|
          shortcut = nil
          label = get_associated_label
          if (!(label).nil?)
            text = label.get_text
            if (!(text).nil?)
              mnemonic = __find_mnemonic(text)
              if (!(mnemonic).equal?(Character.new(?\0.ord)))
                shortcut = "Alt+" + RJava.cast_to_string(mnemonic) # $NON-NLS-1$
              end
            end
          end
          e.attr_result = shortcut
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      accessible.add_accessible_text_listener(Class.new(AccessibleTextAdapter.class == Class ? AccessibleTextAdapter : Object) do
        local_class_in StyledText
        include_class_members StyledText
        include AccessibleTextAdapter if AccessibleTextAdapter.class == Module
        
        typesig { [AccessibleTextEvent] }
        define_method :get_caret_offset do |e|
          e.attr_offset = @local_class_parent.get_caret_offset
        end
        
        typesig { [AccessibleTextEvent] }
        define_method :get_selection_range do |e|
          selection = @local_class_parent.get_selection_range
          e.attr_offset = selection.attr_x
          e.attr_length = selection.attr_y
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      accessible.add_accessible_control_listener(Class.new(AccessibleControlAdapter.class == Class ? AccessibleControlAdapter : Object) do
        local_class_in StyledText
        include_class_members StyledText
        include AccessibleControlAdapter if AccessibleControlAdapter.class == Module
        
        typesig { [AccessibleControlEvent] }
        define_method :get_role do |e|
          e.attr_detail = ACC::ROLE_TEXT
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_state do |e|
          state = 0
          if (is_enabled)
            state |= ACC::STATE_FOCUSABLE
          end
          if (is_focus_control)
            state |= ACC::STATE_FOCUSED
          end
          if (!is_visible)
            state |= ACC::STATE_INVISIBLE
          end
          if (!get_editable)
            state |= ACC::STATE_READONLY
          end
          e.attr_detail = state
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_value do |e|
          e.attr_result = @local_class_parent.get_text
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      add_listener(SWT::FocusIn, Class.new(Listener.class == Class ? Listener : Object) do
        local_class_in StyledText
        include_class_members StyledText
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          accessible.set_focus(ACC::CHILDID_SELF)
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
    end
    
    typesig { [] }
    # Return the Label immediately preceding the receiver in the z-order,
    # or null if none.
    def get_associated_label
      siblings = get_parent.get_children
      i = 0
      while i < siblings.attr_length
        if ((siblings[i]).equal?(self))
          if (i > 0 && siblings[i - 1].is_a?(Label))
            return siblings[i - 1]
          end
        end
        i += 1
      end
      return nil
    end
    
    typesig { [String] }
    def strip_mnemonic(string)
      index = 0
      length_ = string.length
      begin
        while ((index < length_) && (!(string.char_at(index)).equal?(Character.new(?&.ord))))
          index += 1
        end
        if ((index += 1) >= length_)
          return string
        end
        if (!(string.char_at(index)).equal?(Character.new(?&.ord)))
          return string.substring(0, index - 1) + string.substring(index, length_)
        end
        index += 1
      end while (index < length_)
      return string
    end
    
    typesig { [String] }
    # Return the lowercase of the first non-'&' character following
    # an '&' character in the given string. If there are no '&'
    # characters in the given string, return '\0'.
    def __find_mnemonic(string)
      if ((string).nil?)
        return Character.new(?\0.ord)
      end
      index = 0
      length_ = string.length
      begin
        while (index < length_ && !(string.char_at(index)).equal?(Character.new(?&.ord)))
          index += 1
        end
        if ((index += 1) >= length_)
          return Character.new(?\0.ord)
        end
        if (!(string.char_at(index)).equal?(Character.new(?&.ord)))
          return Character.to_lower_case(string.char_at(index))
        end
        index += 1
      end while (index < length_)
      return Character.new(?\0.ord)
    end
    
    typesig { [::Java::Int] }
    # Executes the action.
    # 
    # @param action one of the actions defined in ST.java
    def invoke_action(action)
      check_widget
      if (@block_selection && invoke_block_action(action))
        return
      end
      @update_caret_direction = true
      case (action)
      # Navigation
      # Selection
      # Modification
      # Miscellaneous
      when ST::LINE_UP
        do_line_up(false)
        clear_selection(true)
      when ST::LINE_DOWN
        do_line_down(false)
        clear_selection(true)
      when ST::LINE_START
        do_line_start
        clear_selection(true)
      when ST::LINE_END
        do_line_end
        clear_selection(true)
      when ST::COLUMN_PREVIOUS
        do_cursor_previous
        clear_selection(true)
      when ST::COLUMN_NEXT
        do_cursor_next
        clear_selection(true)
      when ST::PAGE_UP
        do_page_up(false, -1)
        clear_selection(true)
      when ST::PAGE_DOWN
        do_page_down(false, -1)
        clear_selection(true)
      when ST::WORD_PREVIOUS
        do_word_previous
        clear_selection(true)
      when ST::WORD_NEXT
        do_word_next
        clear_selection(true)
      when ST::TEXT_START
        do_content_start
        clear_selection(true)
      when ST::TEXT_END
        do_content_end
        clear_selection(true)
      when ST::WINDOW_START
        do_page_start
        clear_selection(true)
      when ST::WINDOW_END
        do_page_end
        clear_selection(true)
      when ST::SELECT_LINE_UP
        do_selection_line_up
      when ST::SELECT_ALL
        select_all
      when ST::SELECT_LINE_DOWN
        do_selection_line_down
      when ST::SELECT_LINE_START
        do_line_start
        do_selection(ST::COLUMN_PREVIOUS)
      when ST::SELECT_LINE_END
        do_line_end
        do_selection(ST::COLUMN_NEXT)
      when ST::SELECT_COLUMN_PREVIOUS
        do_selection_cursor_previous
        do_selection(ST::COLUMN_PREVIOUS)
      when ST::SELECT_COLUMN_NEXT
        do_selection_cursor_next
        do_selection(ST::COLUMN_NEXT)
      when ST::SELECT_PAGE_UP
        do_selection_page_up(-1)
      when ST::SELECT_PAGE_DOWN
        do_selection_page_down(-1)
      when ST::SELECT_WORD_PREVIOUS
        do_selection_word_previous
        do_selection(ST::COLUMN_PREVIOUS)
      when ST::SELECT_WORD_NEXT
        do_selection_word_next
        do_selection(ST::COLUMN_NEXT)
      when ST::SELECT_TEXT_START
        do_content_start
        do_selection(ST::COLUMN_PREVIOUS)
      when ST::SELECT_TEXT_END
        do_content_end
        do_selection(ST::COLUMN_NEXT)
      when ST::SELECT_WINDOW_START
        do_page_start
        do_selection(ST::COLUMN_PREVIOUS)
      when ST::SELECT_WINDOW_END
        do_page_end
        do_selection(ST::COLUMN_NEXT)
      when ST::CUT
        cut
      when ST::COPY
        copy
      when ST::PASTE
        paste
      when ST::DELETE_PREVIOUS
        do_backspace
      when ST::DELETE_NEXT
        do_delete
      when ST::DELETE_WORD_PREVIOUS
        do_delete_word_previous
      when ST::DELETE_WORD_NEXT
        do_delete_word_next
      when ST::TOGGLE_OVERWRITE
        @overwrite = !@overwrite # toggle insert/overwrite mode
      when ST::TOGGLE_BLOCKSELECTION
        set_block_selection(!@block_selection)
      end
    end
    
    typesig { [::Java::Int] }
    # Returns true if an action should not be performed when block
    # selection in active
    def invoke_block_action(action)
      case (action)
      # Navigation
      # Selection
      # Modification
      when ST::LINE_UP, ST::LINE_DOWN, ST::LINE_START, ST::LINE_END, ST::COLUMN_PREVIOUS, ST::COLUMN_NEXT, ST::PAGE_UP, ST::PAGE_DOWN, ST::WORD_PREVIOUS, ST::WORD_NEXT, ST::TEXT_START, ST::TEXT_END, ST::WINDOW_START, ST::WINDOW_END
        clear_block_selection(false, false)
        return false
      when ST::SELECT_LINE_UP
        do_block_line_vertical(true)
        return true
      when ST::SELECT_LINE_DOWN
        do_block_line_vertical(false)
        return true
      when ST::SELECT_LINE_START
        do_block_line_horizontal(false)
        return true
      when ST::SELECT_LINE_END
        do_block_line_horizontal(true)
        return false
      when ST::SELECT_COLUMN_PREVIOUS
        do_block_column(false)
        return true
      when ST::SELECT_COLUMN_NEXT
        do_block_column(true)
        return true
      when ST::SELECT_WORD_PREVIOUS
        do_block_word(false)
        return true
      when ST::SELECT_WORD_NEXT
        do_block_word(true)
        return true
      when ST::SELECT_ALL
        return false
      when ST::SELECT_PAGE_UP, ST::SELECT_PAGE_DOWN, ST::SELECT_TEXT_START, ST::SELECT_TEXT_END, ST::SELECT_WINDOW_START, ST::SELECT_WINDOW_END
        # blocked actions
        return true
      when ST::CUT, ST::COPY, ST::PASTE
        return false
      when ST::DELETE_PREVIOUS, ST::DELETE_NEXT
        if (!(@block_xlocation).equal?(-1))
          insert_block_selection_text(RJava.cast_to_char(0), action)
          return true
        end
        return false
      when ST::DELETE_WORD_PREVIOUS, ST::DELETE_WORD_NEXT
        # blocked actions
        return !(@block_xlocation).equal?(-1)
      end
      return false
    end
    
    typesig { [] }
    # Temporary until SWT provides this
    def is_bidi
      return IS_GTK || IS_MAC || BidiUtil.is_bidi_platform || @is_mirrored
    end
    
    typesig { [] }
    def is_bidi_caret
      return BidiUtil.is_bidi_platform
    end
    
    typesig { [] }
    def is_fixed_line_height
      return @fixed_line_height
    end
    
    typesig { [::Java::Int] }
    # Returns whether the given offset is inside a multi byte line delimiter.
    # Example:
    # "Line1\r\n" isLineDelimiter(5) == false but isLineDelimiter(6) == true
    # 
    # @return true if the given offset is inside a multi byte line delimiter.
    # false if the given offset is before or after a line delimiter.
    def is_line_delimiter(offset)
      line = @content.get_line_at_offset(offset)
      line_offset = @content.get_offset_at_line(line)
      offset_in_line = offset - line_offset
      # offsetInLine will be greater than line length if the line
      # delimiter is longer than one character and the offset is set
      # in between parts of the line delimiter.
      return offset_in_line > @content.get_line(line).length
    end
    
    typesig { [] }
    # Returns whether the widget is mirrored (right oriented/right to left
    # writing order).
    # 
    # @return isMirrored true=the widget is right oriented, false=the widget
    # is left oriented
    def is_mirrored
      return @is_mirrored
    end
    
    typesig { [] }
    # Returns whether the widget can have only one line.
    # 
    # @return true if widget can have only one line, false if widget can have
    # multiple lines
    def is_single_line
      return !((get_style & SWT::SINGLE)).equal?(0)
    end
    
    typesig { [Event, ::Java::Boolean] }
    # Sends the specified verify event, replace/insert text as defined by
    # the event and send a modify event.
    # 
    # @param event	the text change event.
    # <ul>
    # <li>event.start - the replace start offset</li>
    # <li>event.end - the replace end offset</li>
    # <li>event.text - the new text</li>
    # </ul>
    # @param updateCaret whether or not he caret should be set behind
    # the new text
    def modify_content(event, update_caret)
      event.attr_doit = true
      notify_listeners(SWT::Verify, event)
      if (event.attr_doit)
        styled_text_event = nil
        replaced_length = event.attr_end - event.attr_start
        if (is_listening(ExtendedModify))
          styled_text_event = StyledTextEvent.new(@content)
          styled_text_event.attr_start = event.attr_start
          styled_text_event.attr_end = event.attr_start + event.attr_text.length
          styled_text_event.attr_text = @content.get_text_range(event.attr_start, replaced_length)
        end
        if (update_caret)
          # Fix advancing flag for delete/backspace key on direction boundary
          if ((event.attr_text.length).equal?(0))
            line_index = @content.get_line_at_offset(event.attr_start)
            line_offset = @content.get_offset_at_line(line_index)
            layout = @renderer.get_text_layout(line_index)
            level_start = layout.get_level(event.attr_start - line_offset)
            line_index_end = @content.get_line_at_offset(event.attr_end)
            if (!(line_index).equal?(line_index_end))
              @renderer.dispose_text_layout(layout)
              line_offset = @content.get_offset_at_line(line_index_end)
              layout = @renderer.get_text_layout(line_index_end)
            end
            level_end = layout.get_level(event.attr_end - line_offset)
            @renderer.dispose_text_layout(layout)
            if (!(level_start).equal?(level_end))
              @caret_alignment = PREVIOUS_OFFSET_TRAILING
            else
              @caret_alignment = OFFSET_LEADING
            end
          end
        end
        @content.replace_text_range(event.attr_start, replaced_length, event.attr_text)
        # set the caret position prior to sending the modify event.
        # fixes 1GBB8NJ
        if (update_caret && !(@block_selection && !(@block_xlocation).equal?(-1)))
          # always update the caret location. fixes 1G8FODP
          set_selection(event.attr_start + event.attr_text.length, 0, true, false)
          show_caret
        end
        notify_listeners(SWT::Modify, event)
        if (is_listening(ExtendedModify))
          notify_listeners(ExtendedModify, styled_text_event)
        end
      end
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, StyleRange, Bullet, ::Java::Int] }
    def paint_object(gc, x, y, ascent, descent, style, bullet, bullet_index)
      if (is_listening(PaintObject))
        event = StyledTextEvent.new(@content)
        event.attr_gc = gc
        event.attr_x = x
        event.attr_y = y
        event.attr_ascent = ascent
        event.attr_descent = descent
        event.attr_style = style
        event.attr_bullet = bullet
        event.attr_bullet_index = bullet_index
        notify_listeners(PaintObject, event)
      end
    end
    
    typesig { [] }
    # Replaces the selection with the text on the <code>DND.CLIPBOARD</code>
    # clipboard  or, if there is no selection,  inserts the text at the current
    # caret offset.   If the widget has the SWT.SINGLE style and the
    # clipboard text contains more than one line, only the first line without
    # line delimiters is  inserted in the widget.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def paste
      check_widget
      text = get_clipboard_content(DND::CLIPBOARD)
      if (!(text).nil? && text.length > 0)
        if (@block_selection)
          fill_with_spaces = is_fixed_line_height && @renderer.attr_fixed_pitch
          offset = insert_block_selection_text(text, fill_with_spaces)
          set_caret_offset(offset, SWT::DEFAULT)
          clear_block_selection(true, true)
          set_caret_location
          return
        end
        event = Event.new
        event.attr_start = @selection.attr_x
        event.attr_end = @selection.attr_y
        event.attr_text = get_model_delimited_text(text)
        send_key_event(event)
      end
    end
    
    typesig { [] }
    # Prints the widget's text to the default printer.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def print
      check_widget
      printer = Printer.new
      options = StyledTextPrintOptions.new
      options.attr_print_text_foreground = true
      options.attr_print_text_background = true
      options.attr_print_text_font_style = true
      options.attr_print_line_background = true
      Printing.new(self, printer, options).run
      printer.dispose
    end
    
    typesig { [Printer] }
    # Returns a runnable that will print the widget's text
    # to the specified printer.
    # <p>
    # The runnable may be run in a non-UI thread.
    # </p>
    # 
    # @param printer the printer to print to
    # 
    # @return a <code>Runnable</code> for printing the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when printer is null</li>
    # </ul>
    def print(printer)
      check_widget
      if ((printer).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      options = StyledTextPrintOptions.new
      options.attr_print_text_foreground = true
      options.attr_print_text_background = true
      options.attr_print_text_font_style = true
      options.attr_print_line_background = true
      return print(printer, options)
    end
    
    typesig { [Printer, StyledTextPrintOptions] }
    # Returns a runnable that will print the widget's text
    # to the specified printer.
    # <p>
    # The runnable may be run in a non-UI thread.
    # </p>
    # 
    # @param printer the printer to print to
    # @param options print options to use during printing
    # 
    # @return a <code>Runnable</code> for printing the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when printer or options is null</li>
    # </ul>
    # @since 2.1
    def print(printer, options)
      check_widget
      if ((printer).nil? || (options).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return Printing.new(self, printer, options)
    end
    
    typesig { [] }
    # Causes the entire bounds of the receiver to be marked
    # as needing to be redrawn. The next time a paint request
    # is processed, the control will be completely painted.
    # <p>
    # Recalculates the content width for all lines in the bounds.
    # When a <code>LineStyleListener</code> is used a redraw call
    # is the only notification to the widget that styles have changed
    # and that the content width may have changed.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Control#update()
    def redraw
      super
      item_count = get_partial_bottom_index - @top_index + 1
      @renderer.reset(@top_index, item_count)
      @renderer.calculate(@top_index, item_count)
      set_scroll_bars(false)
      do_mouse_link_cursor
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Causes the rectangular area of the receiver specified by
    # the arguments to be marked as needing to be redrawn.
    # The next time a paint request is processed, that area of
    # the receiver will be painted. If the <code>all</code> flag
    # is <code>true</code>, any children of the receiver which
    # intersect with the specified area will also paint their
    # intersecting areas. If the <code>all</code> flag is
    # <code>false</code>, the children will not be painted.
    # <p>
    # Marks the content width of all lines in the specified rectangle
    # as unknown. Recalculates the content width of all visible lines.
    # When a <code>LineStyleListener</code> is used a redraw call
    # is the only notification to the widget that styles have changed
    # and that the content width may have changed.
    # </p>
    # 
    # @param x the x coordinate of the area to draw
    # @param y the y coordinate of the area to draw
    # @param width the width of the area to draw
    # @param height the height of the area to draw
    # @param all <code>true</code> if children should redraw, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Control#update()
    def redraw(x, y, width, height, all)
      super(x, y, width, height, all)
      if (height > 0)
        first_line = get_line_index(y)
        last_line = get_line_index(y + height)
        reset_cache(first_line, last_line - first_line + 1)
        do_mouse_link_cursor
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def redraw_lines(start_line, line_count, bottom_changed)
      # do nothing if redraw range is completely invisible
      end_line = start_line + line_count - 1
      partial_bottom_index = get_partial_bottom_index
      partial_top_index = get_partial_top_index
      if (start_line > partial_bottom_index || end_line < partial_top_index)
        return
      end
      # only redraw visible lines
      if (start_line < partial_top_index)
        start_line = partial_top_index
      end
      if (end_line > partial_bottom_index)
        end_line = partial_bottom_index
      end
      redraw_top = get_line_pixel(start_line)
      redraw_bottom = get_line_pixel(end_line + 1)
      if (bottom_changed)
        redraw_bottom = @client_area_height - @bottom_margin
      end
      redraw_width = @client_area_width - @left_margin - @right_margin
      Canvas.instance_method(:redraw).bind(self).call(@left_margin, redraw_top, redraw_width, redraw_bottom - redraw_top, true)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def redraw_lines_bullet(redraw_lines)
      if ((redraw_lines).nil?)
        return
      end
      top_index = get_partial_top_index
      bottom_index = get_partial_bottom_index
      i = 0
      while i < redraw_lines.attr_length
        line_index = redraw_lines[i]
        if (!(top_index <= line_index && line_index <= bottom_index))
          i += 1
          next
        end
        width = -1
        bullet = @renderer.get_line_bullet(line_index, nil)
        if (!(bullet).nil?)
          style = bullet.attr_style
          metrics = style.attr_metrics
          width = metrics.attr_width
        end
        if ((width).equal?(-1))
          width = get_client_area.attr_width
        end
        height = @renderer.get_line_height(line_index)
        y = get_line_pixel(line_index)
        Canvas.instance_method(:redraw).bind(self).call(0, y, width, height, false)
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Redraws the specified text range.
    # 
    # @param start offset of the first character to redraw
    # @param length number of characters to redraw
    # @param clearBackground true if the background should be cleared as
    # part of the redraw operation.  If true, the entire redraw range will
    # be cleared before anything is redrawn.  If the redraw range includes
    # the last character of a line (i.e., the entire line is redrawn) the
    # line is cleared all the way to the right border of the widget.
    # The redraw operation will be faster and smoother if clearBackground
    # is set to false.  Whether or not the flag can be set to false depends
    # on the type of change that has taken place.  If font styles or
    # background colors for the redraw range have changed, clearBackground
    # should be set to true.  If only foreground colors have changed for
    # the redraw range, clearBackground can be set to false.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when start and/or end are outside the widget content</li>
    # </ul>
    def redraw_range(start, length_, clear_background)
      check_widget
      end_ = start + length_
      content_length = @content.get_char_count
      if (start > end_ || start < 0 || end_ > content_length)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      first_line = @content.get_line_at_offset(start)
      last_line = @content.get_line_at_offset(end_)
      reset_cache(first_line, last_line - first_line + 1)
      internal_redraw_range(start, length_)
      do_mouse_link_cursor
    end
    
    typesig { [BidiSegmentListener] }
    # Removes the specified bidirectional segment listener.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    # 
    # @since 2.0
    def remove_bidi_segment_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(LineGetSegments, listener)
    end
    
    typesig { [CaretListener] }
    # Removes the specified caret listener.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    # 
    # @since 3.5
    def remove_caret_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(CaretMoved, listener)
    end
    
    typesig { [ExtendedModifyListener] }
    # Removes the specified extended modify listener.
    # 
    # @param extendedModifyListener the listener which should no longer be notified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def remove_extended_modify_listener(extended_modify_listener)
      check_widget
      if ((extended_modify_listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(ExtendedModify, extended_modify_listener)
    end
    
    typesig { [LineBackgroundListener] }
    # Removes the specified line background listener.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def remove_line_background_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(LineGetBackground, listener)
    end
    
    typesig { [LineStyleListener] }
    # Removes the specified line style listener.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def remove_line_style_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(LineGetStyle, listener)
      set_caret_location
    end
    
    typesig { [ModifyListener] }
    # Removes the specified modify listener.
    # 
    # @param modifyListener the listener which should no longer be notified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def remove_modify_listener(modify_listener)
      check_widget
      if ((modify_listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(SWT::Modify, modify_listener)
    end
    
    typesig { [PaintObjectListener] }
    # Removes the specified listener.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    # @since 3.2
    def remove_paint_object_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(PaintObject, listener)
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the user changes the receiver's selection.
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
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(SWT::Selection, listener)
    end
    
    typesig { [VerifyListener] }
    # Removes the specified verify listener.
    # 
    # @param verifyListener the listener which should no longer be notified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def remove_verify_listener(verify_listener)
      check_widget
      if ((verify_listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(SWT::Verify, verify_listener)
    end
    
    typesig { [VerifyKeyListener] }
    # Removes the specified key verify listener.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def remove_verify_key_listener(listener)
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(VerifyKey, listener)
    end
    
    typesig { [MovementListener] }
    # Removes the specified word movement listener.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    # 
    # @see MovementEvent
    # @see MovementListener
    # @see #addWordMovementListener
    # 
    # @since 3.3
    def remove_word_movement_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(WordNext, listener)
      remove_listener(WordPrevious, listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(StyleRange)] }
    # Replaces the styles in the given range with new styles.  This method
    # effectively deletes the styles in the given range and then adds the
    # the new styles.
    # <p>
    # Note: Because a StyleRange includes the start and length, the
    # same instance cannot occur multiple times in the array of styles.
    # If the same style attributes, such as font and color, occur in
    # multiple StyleRanges, <code>setStyleRanges(int, int, int[], StyleRange[])</code>
    # can be used to share styles and reduce memory usage.
    # </p><p>
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # </p>
    # 
    # @param start offset of first character where styles will be deleted
    # @param length length of the range to delete styles in
    # @param ranges StyleRange objects containing the new style information.
    # The ranges should not overlap and should be within the specified start
    # and length. The style rendering is undefined if the ranges do overlap
    # or are ill-defined. Must not be null.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when either start or end is outside the valid range (0 <= offset <= getCharCount())</li>
    # <li>ERROR_NULL_ARGUMENT when ranges is null</li>
    # </ul>
    # 
    # @since 2.0
    # 
    # @see #setStyleRanges(int, int, int[], StyleRange[])
    def replace_style_ranges(start, length_, ranges)
      check_widget
      if (is_listening(LineGetStyle))
        return
      end
      if ((ranges).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_style_ranges(start, length_, nil, ranges, false)
    end
    
    typesig { [::Java::Int, ::Java::Int, String] }
    # Replaces the given text range with new text.
    # If the widget has the SWT.SINGLE style and "text" contains more than
    # one line, only the first line is rendered but the text is stored
    # unchanged. A subsequent call to getText will return the same text
    # that was set. Note that only a single line of text should be set when
    # the SWT.SINGLE style is used.
    # <p>
    # <b>NOTE:</b> During the replace operation the current selection is
    # changed as follows:
    # <ul>
    # <li>selection before replaced text: selection unchanged
    # <li>selection after replaced text: adjust the selection so that same text
    # remains selected
    # <li>selection intersects replaced text: selection is cleared and caret
    # is placed after inserted text
    # </ul>
    # </p>
    # 
    # @param start offset of first character to replace
    # @param length number of characters to replace. Use 0 to insert text
    # @param text new text. May be empty to delete text.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when either start or end is outside the valid range (0 <= offset <= getCharCount())</li>
    # <li>ERROR_INVALID_ARGUMENT when either start or end is inside a multi byte line delimiter.
    # Splitting a line delimiter for example by inserting text in between the CR and LF and deleting part of a line delimiter is not supported</li>
    # <li>ERROR_NULL_ARGUMENT when string is null</li>
    # </ul>
    def replace_text_range(start, length_, text)
      check_widget
      if ((text).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      content_length = get_char_count
      end_ = start + length_
      if (start > end_ || start < 0 || end_ > content_length)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      event = Event.new
      event.attr_start = start
      event.attr_end = end_
      event.attr_text = text
      modify_content(event, false)
    end
    
    typesig { [] }
    # Resets the caret position, selection and scroll offsets. Recalculate
    # the content width and scroll bars. Redraw the widget.
    def reset
      vertical_bar = get_vertical_bar
      horizontal_bar = get_horizontal_bar
      set_caret_offset(0, SWT::DEFAULT)
      @top_index = 0
      @top_index_y = 0
      @vertical_scroll_offset = 0
      @horizontal_scroll_offset = 0
      reset_selection
      @renderer.set_content(@content)
      if (!(vertical_bar).nil?)
        vertical_bar.set_selection(0)
      end
      if (!(horizontal_bar).nil?)
        horizontal_bar.set_selection(0)
      end
      reset_cache(0, 0)
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def reset_cache(first_line, count)
      max_line_index = @renderer.attr_max_width_line_index
      @renderer.reset(first_line, count)
      @renderer.calculate_client_area
      if (0 <= max_line_index && max_line_index < @content.get_line_count)
        @renderer.calculate(max_line_index, 1)
      end
      set_scroll_bars(true)
      if (!is_fixed_line_height)
        if (@top_index > first_line)
          @vertical_scroll_offset = -1
        end
        @renderer.calculate_idle
      end
    end
    
    typesig { [] }
    # Resets the selection.
    def reset_selection
      @selection.attr_x = @selection.attr_y = @caret_offset
      @selection_anchor = -1
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def scroll(dest_x, dest_y, x, y, width, height, all)
      super(dest_x, dest_y, x, y, width, height, false)
      if (all)
        delta_x = dest_x - x
        delta_y = dest_y - y
        children = get_children
        i = 0
        while i < children.attr_length
          child = children[i]
          rect = child.get_bounds
          child.set_location(rect.attr_x + delta_x, rect.attr_y + delta_y)
          i += 1
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # Scrolls the widget horizontally.
    # 
    # @param pixels number of pixels to scroll, > 0 = scroll left,
    # < 0 scroll right
    # @param adjustScrollBar
    # true= the scroll thumb will be moved to reflect the new scroll offset.
    # false = the scroll thumb will not be moved
    # @return
    # true=the widget was scrolled
    # false=the widget was not scrolled, the given offset is not valid.
    def scroll_horizontal(pixels, adjust_scroll_bar)
      if ((pixels).equal?(0))
        return false
      end
      horizontal_bar = get_horizontal_bar
      if (!(horizontal_bar).nil? && adjust_scroll_bar)
        horizontal_bar.set_selection(@horizontal_scroll_offset + pixels)
      end
      scroll_height = @client_area_height - @top_margin - @bottom_margin
      if (pixels > 0)
        source_x = @left_margin + pixels
        scroll_width = @client_area_width - source_x - @right_margin
        if (scroll_width > 0)
          scroll(@left_margin, @top_margin, source_x, @top_margin, scroll_width, scroll_height, true)
        end
        if (source_x > scroll_width)
          Canvas.instance_method(:redraw).bind(self).call(@left_margin + scroll_width, @top_margin, pixels - scroll_width, scroll_height, true)
        end
      else
        destination_x = @left_margin - pixels
        scroll_width = @client_area_width - destination_x - @right_margin
        if (scroll_width > 0)
          scroll(destination_x, @top_margin, @left_margin, @top_margin, scroll_width, scroll_height, true)
        end
        if (destination_x > scroll_width)
          Canvas.instance_method(:redraw).bind(self).call(@left_margin + scroll_width, @top_margin, -pixels - scroll_width, scroll_height, true)
        end
      end
      @horizontal_scroll_offset += pixels
      set_caret_location
      return true
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # Scrolls the widget vertically.
    # 
    # @param pixel the new vertical scroll offset
    # @param adjustScrollBar
    # true= the scroll thumb will be moved to reflect the new scroll offset.
    # false = the scroll thumb will not be moved
    # @return
    # true=the widget was scrolled
    # false=the widget was not scrolled
    def scroll_vertical(pixels, adjust_scroll_bar)
      if ((pixels).equal?(0))
        return false
      end
      if (!(@vertical_scroll_offset).equal?(-1))
        vertical_bar = get_vertical_bar
        if (!(vertical_bar).nil? && adjust_scroll_bar)
          vertical_bar.set_selection(@vertical_scroll_offset + pixels)
        end
        scroll_width = @client_area_width - @left_margin - @right_margin
        if (pixels > 0)
          source_y = @top_margin + pixels
          scroll_height = @client_area_height - source_y - @bottom_margin
          if (scroll_height > 0)
            scroll(@left_margin, @top_margin, @left_margin, source_y, scroll_width, scroll_height, true)
          end
          if (source_y > scroll_height)
            redraw_y = Math.max(0, @top_margin + scroll_height)
            redraw_height = Math.min(@client_area_height, pixels - scroll_height)
            Canvas.instance_method(:redraw).bind(self).call(@left_margin, redraw_y, scroll_width, redraw_height, true)
          end
        else
          destination_y = @top_margin - pixels
          scroll_height = @client_area_height - destination_y - @bottom_margin
          if (scroll_height > 0)
            scroll(@left_margin, destination_y, @left_margin, @top_margin, scroll_width, scroll_height, true)
          end
          if (destination_y > scroll_height)
            redraw_y = Math.max(0, @top_margin + scroll_height)
            redraw_height = Math.min(@client_area_height, -pixels - scroll_height)
            Canvas.instance_method(:redraw).bind(self).call(@left_margin, redraw_y, scroll_width, redraw_height, true)
          end
        end
        @vertical_scroll_offset += pixels
        calculate_top_index(pixels)
      else
        calculate_top_index(pixels)
        Canvas.instance_method(:redraw).bind(self).call
      end
      set_caret_location
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def scroll_text(src_y, dest_y)
      if ((src_y).equal?(dest_y))
        return
      end
      delta_y = dest_y - src_y
      scroll_width = @client_area_width - @left_margin - @right_margin
      scroll_height = 0
      if (delta_y > 0)
        scroll_height = @client_area_height - src_y - @bottom_margin
      else
        scroll_height = @client_area_height - dest_y - @bottom_margin
      end
      scroll(@left_margin, dest_y, @left_margin, src_y, scroll_width, scroll_height, true)
      if ((0 < src_y + scroll_height) && (@top_margin > src_y))
        Canvas.instance_method(:redraw).bind(self).call(@left_margin, delta_y, scroll_width, @top_margin, false)
      end
      if ((0 < dest_y + scroll_height) && (@top_margin > dest_y))
        Canvas.instance_method(:redraw).bind(self).call(@left_margin, 0, scroll_width, @top_margin, false)
      end
      if ((@client_area_height - @bottom_margin < src_y + scroll_height) && (@client_area_height > src_y))
        Canvas.instance_method(:redraw).bind(self).call(@left_margin, @client_area_height - @bottom_margin + delta_y, scroll_width, @bottom_margin, false)
      end
      if ((@client_area_height - @bottom_margin < dest_y + scroll_height) && (@client_area_height > dest_y))
        Canvas.instance_method(:redraw).bind(self).call(@left_margin, @client_area_height - @bottom_margin, scroll_width, @bottom_margin, false)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def send_accessible_text_changed(start, new_char_count, replace_char_count)
      accessible = get_accessible
      if (!(replace_char_count).equal?(0))
        accessible.text_changed(ACC::TEXT_DELETE, start, replace_char_count)
      end
      if (!(new_char_count).equal?(0))
        accessible.text_changed(ACC::TEXT_INSERT, start, new_char_count)
      end
    end
    
    typesig { [] }
    # Selects all the text.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select_all
      check_widget
      if (@block_selection)
        @renderer.calculate(0, @content.get_line_count)
        set_scroll_bars(false)
        vertical_scroll_offset = get_vertical_scroll_offset
        left = @left_margin - @horizontal_scroll_offset
        top = @top_margin - vertical_scroll_offset
        right = @renderer.get_width - @right_margin - @horizontal_scroll_offset
        bottom = @renderer.get_height - @bottom_margin - vertical_scroll_offset
        set_block_selection_location(left, top, right, bottom, false)
        return
      end
      set_selection(0, Math.max(get_char_count, 0))
    end
    
    typesig { [Event] }
    # Replaces/inserts text as defined by the event.
    # 
    # @param event the text change event.
    # <ul>
    # <li>event.start - the replace start offset</li>
    # <li>event.end - the replace end offset</li>
    # <li>event.text - the new text</li>
    # </ul>
    def send_key_event(event)
      if (@editable)
        modify_content(event, true)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, String] }
    # Returns a StyledTextEvent that can be used to request data such
    # as styles and background color for a line.
    # <p>
    # The specified line may be a visual (wrapped) line if in word
    # wrap mode. The returned object will always be for a logical
    # (unwrapped) line.
    # </p>
    # 
    # @param lineOffset offset of the line. This may be the offset of
    # a visual line if the widget is in word wrap mode.
    # @param line line text. This may be the text of a visual line if
    # the widget is in word wrap mode.
    # @return StyledTextEvent that can be used to request line data
    # for the given line.
    def send_line_event(event_type, line_offset, line)
      event = nil
      if (is_listening(event_type))
        event = StyledTextEvent.new(@content)
        event.attr_detail = line_offset
        event.attr_text = line
        event.attr_alignment = @alignment
        event.attr_indent = @indent
        event.attr_justify = @justify
        notify_listeners(event_type, event)
      end
      return event
    end
    
    typesig { [] }
    # Sends the specified selection event.
    def send_selection_event
      get_accessible.text_selection_changed
      event = Event.new
      event.attr_x = @selection.attr_x
      event.attr_y = @selection.attr_y
      notify_listeners(SWT::Selection, event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, String, ::Java::Boolean] }
    def send_text_event(left, right, line_index, text, fill_with_spaces)
      line_width = 0
      start = 0
      end_ = 0
      buffer = StringBuffer.new
      if (line_index < @content.get_line_count)
        trailing = Array.typed(::Java::Int).new(1) { 0 }
        start = get_offset_at_point(left, get_line_pixel(line_index), trailing, true)
        if ((start).equal?(-1))
          line_offset = @content.get_offset_at_line(line_index)
          line_legth = @content.get_line(line_index).length
          start = end_ = line_offset + line_legth
          if (fill_with_spaces)
            layout = @renderer.get_text_layout(line_index)
            line_width = layout.get_bounds.attr_width
            @renderer.dispose_text_layout(layout)
          end
        else
          start += trailing[0]
          end_ = (left).equal?(right) ? start : get_offset_at_point(right, 0, line_index, nil)
          fill_with_spaces = false
        end
      else
        start = end_ = @content.get_char_count
        buffer.append(@content.get_line_delimiter)
      end
      if (start > end_)
        temp = start
        start = end_
        end_ = temp
      end
      if (fill_with_spaces)
        spaces_width = left - line_width + @horizontal_scroll_offset - @left_margin
        spaces_count = spaces_width / @renderer.attr_average_char_width
        i = 0
        while i < spaces_count
          buffer.append(Character.new(?\s.ord))
          i += 1
        end
      end
      buffer.append(text)
      event = Event.new
      event.attr_start = start
      event.attr_end = end_
      event.attr_text = buffer.to_s
      send_key_event(event)
      return event.attr_start + event.attr_text.length
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, String, ::Java::Int] }
    def send_word_boundary_event(event_type, movement, offset, new_offset, line_text, line_offset)
      if (is_listening(event_type))
        event = StyledTextEvent.new(@content)
        event.attr_detail = line_offset
        event.attr_text = line_text
        event.attr_count = movement
        event.attr_start = offset
        event.attr_end = new_offset
        notify_listeners(event_type, event)
        offset = event.attr_end
        if (!(offset).equal?(new_offset))
          length_ = get_char_count
          if (offset < 0)
            offset = 0
          else
            if (offset > length_)
              offset = length_
            else
              if (is_line_delimiter(offset))
                SWT.error(SWT::ERROR_INVALID_ARGUMENT)
              end
            end
          end
        end
        return offset
      end
      return new_offset
    end
    
    typesig { [] }
    def set_alignment
      if (((get_style & SWT::SINGLE)).equal?(0))
        return
      end
      alignment = @renderer.get_line_alignment(0, @alignment)
      new_alignment_margin = 0
      if (!(alignment).equal?(SWT::LEFT))
        @renderer.calculate(0, 1)
        width = @renderer.get_width - @alignment_margin
        new_alignment_margin = @client_area_width - width
        if (new_alignment_margin < 0)
          new_alignment_margin = 0
        end
        if ((alignment).equal?(SWT::CENTER))
          new_alignment_margin /= 2
        end
      end
      if (!(@alignment_margin).equal?(new_alignment_margin))
        @left_margin -= @alignment_margin
        @left_margin += new_alignment_margin
        @alignment_margin = new_alignment_margin
        reset_cache(0, 1)
        set_caret_location
        Canvas.instance_method(:redraw).bind(self).call
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the alignment of the widget. The argument should be one of <code>SWT.LEFT</code>,
    # <code>SWT.CENTER</code> or <code>SWT.RIGHT</code>. The alignment applies for all lines.
    # </p><p>
    # Note that if <code>SWT.MULTI</code> is set, then <code>SWT.WRAP</code> must also be set
    # in order to stabilize the right edge before setting alignment.
    # </p>
    # 
    # @param alignment the new alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setLineAlignment(int, int, int)
    # 
    # @since 3.2
    def set_alignment(alignment)
      check_widget
      alignment &= (SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      if ((alignment).equal?(0) || (@alignment).equal?(alignment))
        return
      end
      @alignment = alignment
      reset_cache(0, @content.get_line_count)
      set_caret_location
      set_alignment
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [Color] }
    # @see Control#setBackground(Color)
    def set_background(color)
      check_widget
      @background = color
      super(color)
      reset_cache(0, @content.get_line_count)
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [::Java::Boolean] }
    # Sets the block selection mode.
    # 
    # @param blockSelection true=enable block selection, false=disable block selection
    # 
    # @since 3.5
    def set_block_selection(block_selection)
      check_widget
      if (!((get_style & SWT::SINGLE)).equal?(0))
        return
      end
      if ((block_selection).equal?(@block_selection))
        return
      end
      if (@word_wrap)
        return
      end
      @block_selection = block_selection
      if ((@cursor).nil?)
        display = get_display
        type = block_selection ? SWT::CURSOR_CROSS : SWT::CURSOR_IBEAM
        Canvas.instance_method(:set_cursor).bind(self).call(display.get_system_cursor(type))
      end
      if (block_selection)
        start = @selection.attr_x
        end_ = @selection.attr_y
        if (!(start).equal?(end_))
          set_block_selection_offset(start, end_, false)
        end
      else
        clear_block_selection(false, false)
      end
    end
    
    typesig { [Rectangle] }
    # Sets the block selection bounds. The bounds is
    # relative to the upper left corner of the document.
    # 
    # @param rect the new bounds for the block selection
    # 
    # @see #setBlockSelectionBounds(int, int, int, int)
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when point is null</li>
    # </ul>
    # 
    # @since 3.5
    def set_block_selection_bounds(rect)
      check_widget
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_block_selection_bounds(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the block selection bounds. The bounds is
    # relative to the upper left corner of the document.
    # 
    # @param x the new x coordinate for the block selection
    # @param y the new y coordinate for the block selection
    # @param width the new width for the block selection
    # @param height the new height for the block selection
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def set_block_selection_bounds(x, y, width, height)
      check_widget
      vertical_scroll_offset = get_vertical_scroll_offset
      if (!@block_selection)
        x -= @horizontal_scroll_offset
        y -= vertical_scroll_offset
        start = get_offset_at_point(x, y, nil)
        end_ = get_offset_at_point(x + width - 1, y + height - 1, nil)
        set_selection(start, end_ - start, false, false)
        set_caret_location
        return
      end
      min_y = @top_margin
      min_x = @left_margin
      max_y = @renderer.get_height - @bottom_margin
      max_x = Math.max(@client_area_width, @renderer.get_width) - @right_margin
      anchor_x = Math.max(min_x, Math.min(max_x, x)) - @horizontal_scroll_offset
      anchor_y = Math.max(min_y, Math.min(max_y, y)) - vertical_scroll_offset
      location_x = Math.max(min_x, Math.min(max_x, x + width)) - @horizontal_scroll_offset
      location_y = Math.max(min_y, Math.min(max_y, y + height - 1)) - vertical_scroll_offset
      if (is_fixed_line_height && @renderer.attr_fixed_pitch)
        avg = @renderer.attr_average_char_width
        anchor_x = ((anchor_x - @left_margin + @horizontal_scroll_offset) / avg * avg) + @left_margin - @horizontal_scroll_offset
        location_x = ((location_x + avg / 2 - @left_margin + @horizontal_scroll_offset) / avg * avg) + @left_margin - @horizontal_scroll_offset
      end
      set_block_selection_location(anchor_x, anchor_y, location_x, location_y, false)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_block_selection_location(x, y, send_event)
      vertical_scroll_offset = get_vertical_scroll_offset
      @block_xlocation = x + @horizontal_scroll_offset
      @block_ylocation = y + vertical_scroll_offset
      alignment = Array.typed(::Java::Int).new(1) { 0 }
      offset = get_offset_at_point(x, y, alignment)
      set_caret_offset(offset, alignment[0])
      if ((@block_xanchor).equal?(-1))
        @block_xanchor = @block_xlocation
        @block_yanchor = @block_ylocation
        @selection_anchor = @caret_offset
      end
      do_block_selection(send_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_block_selection_location(anchor_x, anchor_y, x, y, send_event)
      vertical_scroll_offset = get_vertical_scroll_offset
      @block_xanchor = anchor_x + @horizontal_scroll_offset
      @block_yanchor = anchor_y + vertical_scroll_offset
      @selection_anchor = get_offset_at_point(anchor_x, anchor_y, nil)
      set_block_selection_location(x, y, send_event)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def set_block_selection_offset(offset, send_event)
      point = get_point_at_offset(offset)
      vertical_scroll_offset = get_vertical_scroll_offset
      @block_xlocation = point.attr_x + @horizontal_scroll_offset
      @block_ylocation = point.attr_y + vertical_scroll_offset
      set_caret_offset(offset, SWT::DEFAULT)
      if ((@block_xanchor).equal?(-1))
        @block_xanchor = @block_xlocation
        @block_yanchor = @block_ylocation
        @selection_anchor = @caret_offset
      end
      do_block_selection(send_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_block_selection_offset(anchor_offset, offset, send_event)
      vertical_scroll_offset = get_vertical_scroll_offset
      anchor_point = get_point_at_offset(anchor_offset)
      @block_xanchor = anchor_point.attr_x + @horizontal_scroll_offset
      @block_yanchor = anchor_point.attr_y + vertical_scroll_offset
      @selection_anchor = anchor_offset
      set_block_selection_offset(offset, send_event)
    end
    
    typesig { [Caret] }
    # Sets the receiver's caret.  Set the caret's height and location.
    # 
    # </p>
    # @param caret the new caret for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_caret(caret)
      check_widget
      super(caret)
      @caret_direction = SWT::NULL
      if (!(caret).nil?)
        set_caret_location
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the BIDI coloring mode.  When true the BIDI text display
    # algorithm is applied to segments of text that are the same
    # color.
    # 
    # @param mode the new coloring mode
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @deprecated use BidiSegmentListener instead.
    def set_bidi_coloring(mode)
      check_widget
      @bidi_coloring = mode
    end
    
    typesig { [::Java::Int] }
    # Sets the bottom margin.
    # 
    # @param bottomMargin the bottom margin.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def set_bottom_margin(bottom_margin)
      check_widget
      set_margins(@left_margin, @top_margin, @right_margin, bottom_margin)
    end
    
    typesig { [] }
    # Moves the Caret to the current caret offset.
    def set_caret_location
      new_caret_pos = get_point_at_offset(@caret_offset)
      set_caret_location(new_caret_pos, get_caret_direction)
    end
    
    typesig { [Point, ::Java::Int] }
    def set_caret_location(location, direction)
      caret = get_caret
      if (!(caret).nil?)
        is_default_caret = (caret).equal?(@default_caret)
        line_height = @renderer.get_line_height
        caret_height = line_height
        if (!is_fixed_line_height && is_default_caret)
          caret_height = get_bounds_at_offset(@caret_offset).attr_height
          if (!(caret_height).equal?(line_height))
            direction = SWT::DEFAULT
          end
        end
        image_direction = direction
        if (is_mirrored)
          if ((image_direction).equal?(SWT::LEFT))
            image_direction = SWT::RIGHT
          else
            if ((image_direction).equal?(SWT::RIGHT))
              image_direction = SWT::LEFT
            end
          end
        end
        if (is_default_caret && (image_direction).equal?(SWT::RIGHT))
          location.attr_x -= (caret.get_size.attr_x - 1)
        end
        if (is_default_caret)
          caret.set_bounds(location.attr_x, location.attr_y, @caret_width, caret_height)
        else
          caret.set_location(location)
        end
        get_accessible.text_caret_moved(get_caret_offset)
        if (!(direction).equal?(@caret_direction))
          @caret_direction = direction
          if (is_default_caret)
            if ((image_direction).equal?(SWT::DEFAULT))
              @default_caret.set_image(nil)
            else
              if ((image_direction).equal?(SWT::LEFT))
                @default_caret.set_image(@left_caret_bitmap)
              else
                if ((image_direction).equal?(SWT::RIGHT))
                  @default_caret.set_image(@right_caret_bitmap)
                end
              end
            end
          end
          if ((@caret_direction).equal?(SWT::LEFT))
            BidiUtil.set_keyboard_language(BidiUtil::KEYBOARD_NON_BIDI)
          else
            if ((@caret_direction).equal?(SWT::RIGHT))
              BidiUtil.set_keyboard_language(BidiUtil::KEYBOARD_BIDI)
            end
          end
        end
        update_caret_visibility
      end
      @column_x = location.attr_x
    end
    
    typesig { [::Java::Int] }
    # Sets the caret offset.
    # 
    # @param offset caret offset, relative to the first character in the text.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when either the start or the end of the selection range is inside a
    # multi byte line delimiter (and thus neither clearly in front of or after the line delimiter)
    # </ul>
    def set_caret_offset(offset)
      check_widget
      length_ = get_char_count
      if (length_ > 0 && !(offset).equal?(@caret_offset))
        if (offset < 0)
          offset = 0
        else
          if (offset > length_)
            offset = length_
          else
            if (is_line_delimiter(offset))
              # offset is inside a multi byte line delimiter. This is an
              # illegal operation and an exception is thrown. Fixes 1GDKK3R
              SWT.error(SWT::ERROR_INVALID_ARGUMENT)
            end
          end
        end
        set_caret_offset(offset, PREVIOUS_OFFSET_TRAILING)
        # clear the selection if the caret is moved.
        # don't notify listeners about the selection change.
        if (@block_selection)
          clear_block_selection(true, false)
        else
          clear_selection(false)
        end
      end
      set_caret_location
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def set_caret_offset(offset, alignment)
      if (!(@caret_offset).equal?(offset))
        @caret_offset = offset
        if (is_listening(CaretMoved))
          event = StyledTextEvent.new(@content)
          event.attr_end = @caret_offset
          notify_listeners(CaretMoved, event)
        end
      end
      if (!(alignment).equal?(SWT::DEFAULT))
        @caret_alignment = alignment
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Copies the specified text range to the clipboard.  The text will be placed
    # in the clipboard in plain text format and RTF format.
    # 
    # @param start start index of the text
    # @param length length of text to place in clipboard
    # 
    # @exception SWTError, see Clipboard.setContents
    # @see org.eclipse.swt.dnd.Clipboard#setContents
    def set_clipboard_content(start, length_, clipboard_type)
      if ((clipboard_type).equal?(DND::SELECTION_CLIPBOARD) && !(IS_MOTIF || IS_GTK))
        return
      end
      plain_text_transfer = TextTransfer.get_instance
      plain_text_writer = TextWriter.new_local(self, start, length_)
      plain_text = get_platform_delimited_text(plain_text_writer)
      data = nil
      types = nil
      if ((clipboard_type).equal?(DND::SELECTION_CLIPBOARD))
        data = Array.typed(Object).new([plain_text])
        types = Array.typed(Transfer).new([plain_text_transfer])
      else
        rtf_transfer = RTFTransfer.get_instance
        rtf_writer = RTFWriter.new_local(self, start, length_)
        rtf_text = get_platform_delimited_text(rtf_writer)
        data = Array.typed(Object).new([rtf_text, plain_text])
        types = Array.typed(Transfer).new([rtf_transfer, plain_text_transfer])
      end
      @clipboard.set_contents(data, types, clipboard_type)
    end
    
    typesig { [StyledTextContent] }
    # Sets the content implementation to use for text storage.
    # 
    # @param newContent StyledTextContent implementation to use for text storage.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def set_content(new_content)
      check_widget
      if ((new_content).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!(@content).nil?)
        @content.remove_text_change_listener(@text_change_listener)
      end
      @content = new_content
      @content.add_text_change_listener(@text_change_listener)
      reset
    end
    
    typesig { [Cursor] }
    # Sets the receiver's cursor to the cursor specified by the
    # argument.  Overridden to handle the null case since the
    # StyledText widget uses an ibeam as its default cursor.
    # 
    # @see Control#setCursor(Cursor)
    def set_cursor(cursor)
      check_widget
      if (!(cursor).nil? && cursor.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @cursor = cursor
      if ((cursor).nil?)
        display = get_display
        type = @block_selection ? SWT::CURSOR_CROSS : SWT::CURSOR_IBEAM
        super(display.get_system_cursor(type))
      else
        super(cursor)
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets whether the widget implements double click mouse behavior.
    # </p>
    # 
    # @param enable if true double clicking a word selects the word, if false
    # double clicks have the same effect as regular mouse clicks.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_double_click_enabled(enable)
      check_widget
      @double_click_enabled = enable
    end
    
    typesig { [::Java::Boolean] }
    def set_drag_detect(drag_detect_)
      check_widget
      @drag_detect = drag_detect_
    end
    
    typesig { [::Java::Boolean] }
    # Sets whether the widget content can be edited.
    # </p>
    # 
    # @param editable if true content can be edited, if false content can not be
    # edited
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_editable(editable)
      check_widget
      @editable = editable
    end
    
    typesig { [Font] }
    # Sets a new font to render text with.
    # <p>
    # <b>NOTE:</b> Italic fonts are not supported unless they have no overhang
    # and the same baseline as regular fonts.
    # </p>
    # 
    # @param font new font
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_font(font)
      check_widget
      old_line_height = @renderer.get_line_height
      super(font)
      @renderer.set_font(get_font, @tab_length)
      # keep the same top line visible. fixes 5815
      if (is_fixed_line_height)
        line_height = @renderer.get_line_height
        if (!(line_height).equal?(old_line_height))
          vscroll = (get_vertical_scroll_offset * line_height / old_line_height) - get_vertical_scroll_offset
          scroll_vertical(vscroll, true)
        end
      end
      reset_cache(0, @content.get_line_count)
      claim_bottom_free_space
      calculate_scroll_bars
      if (is_bidi_caret)
        create_caret_bitmaps
      end
      @caret_direction = SWT::NULL
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [Color] }
    def set_foreground(color)
      check_widget
      @foreground = color
      super(get_foreground)
      reset_cache(0, @content.get_line_count)
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [::Java::Int] }
    # Sets the horizontal scroll offset relative to the start of the line.
    # Do nothing if there is no text set.
    # <p>
    # <b>NOTE:</b> The horizontal index is reset to 0 when new text is set in the
    # widget.
    # </p>
    # 
    # @param offset horizontal scroll offset relative to the start
    # of the line, measured in character increments starting at 0, if
    # equal to 0 the content is not scrolled, if > 0 = the content is scrolled.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_horizontal_index(offset)
      check_widget
      if ((get_char_count).equal?(0))
        return
      end
      if (offset < 0)
        offset = 0
      end
      offset *= get_horizontal_increment
      # allow any value if client area width is unknown or 0.
      # offset will be checked in resize handler.
      # don't use isVisible since width is known even if widget
      # is temporarily invisible
      if (@client_area_width > 0)
        width = @renderer.get_width
        # prevent scrolling if the content fits in the client area.
        # align end of longest line with right border of client area
        # if offset is out of range.
        if (offset > width - @client_area_width)
          offset = Math.max(0, width - @client_area_width)
        end
      end
      scroll_horizontal(offset - @horizontal_scroll_offset, true)
    end
    
    typesig { [::Java::Int] }
    # Sets the horizontal pixel offset relative to the start of the line.
    # Do nothing if there is no text set.
    # <p>
    # <b>NOTE:</b> The horizontal pixel offset is reset to 0 when new text
    # is set in the widget.
    # </p>
    # 
    # @param pixel horizontal pixel offset relative to the start
    # of the line.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @since 2.0
    def set_horizontal_pixel(pixel)
      check_widget
      if ((get_char_count).equal?(0))
        return
      end
      if (pixel < 0)
        pixel = 0
      end
      # allow any value if client area width is unknown or 0.
      # offset will be checked in resize handler.
      # don't use isVisible since width is known even if widget
      # is temporarily invisible
      if (@client_area_width > 0)
        width = @renderer.get_width
        # prevent scrolling if the content fits in the client area.
        # align end of longest line with right border of client area
        # if offset is out of range.
        if (pixel > width - @client_area_width)
          pixel = Math.max(0, width - @client_area_width)
        end
      end
      scroll_horizontal(pixel - @horizontal_scroll_offset, true)
    end
    
    typesig { [::Java::Int] }
    # Sets the line indentation of the widget.
    # <p>
    # It is the amount of blank space, in pixels, at the beginning of each line.
    # When a line wraps in several lines only the first one is indented.
    # </p>
    # 
    # @param indent the new indent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setLineIndent(int, int, int)
    # 
    # @since 3.2
    def set_indent(indent)
      check_widget
      if ((@indent).equal?(indent) || indent < 0)
        return
      end
      @indent = indent
      reset_cache(0, @content.get_line_count)
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [::Java::Boolean] }
    # Sets whether the widget should justify lines.
    # 
    # @param justify whether lines should be justified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setLineJustify(int, int, boolean)
    # 
    # @since 3.2
    def set_justify(justify)
      check_widget
      if ((@justify).equal?(justify))
        return
      end
      @justify = justify
      reset_cache(0, @content.get_line_count)
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Maps a key to an action.
    # <p>
    # One action can be associated with N keys. However, each key can only
    # have one action (key:action is N:1 relation).
    # </p>
    # 
    # @param key a key code defined in SWT.java or a character.
    # Optionally ORd with a state mask.  Preferred state masks are one or more of
    # SWT.MOD1, SWT.MOD2, SWT.MOD3, since these masks account for modifier platform
    # differences.  However, there may be cases where using the specific state masks
    # (i.e., SWT.CTRL, SWT.SHIFT, SWT.ALT, SWT.COMMAND) makes sense.
    # @param action one of the predefined actions defined in ST.java.
    # Use SWT.NULL to remove a key binding.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_key_binding(key, action)
      check_widget
      modifier_value = key & SWT::MODIFIER_MASK
      key_char = RJava.cast_to_char((key & SWT::KEY_MASK))
      if (Compatibility.is_letter(key_char))
        # make the keybinding case insensitive by adding it
        # in its upper and lower case form
        ch = Character.to_upper_case(key_char)
        new_key = ch | modifier_value
        if ((action).equal?(SWT::NULL))
          @key_action_map.remove(new_key)
        else
          @key_action_map.put(new_key, action)
        end
        ch = Character.to_lower_case(key_char)
        new_key = ch | modifier_value
        if ((action).equal?(SWT::NULL))
          @key_action_map.remove(new_key)
        else
          @key_action_map.put(new_key, action)
        end
      else
        if ((action).equal?(SWT::NULL))
          @key_action_map.remove(key)
        else
          @key_action_map.put(key, action)
        end
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the left margin.
    # 
    # @param leftMargin the left margin.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def set_left_margin(left_margin)
      check_widget
      set_margins(left_margin, @top_margin, @right_margin, @bottom_margin)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the alignment of the specified lines. The argument should be one of <code>SWT.LEFT</code>,
    # <code>SWT.CENTER</code> or <code>SWT.RIGHT</code>.
    # <p><p>
    # Note that if <code>SWT.MULTI</code> is set, then <code>SWT.WRAP</code> must also be set
    # in order to stabilize the right edge before setting alignment.
    # </p>
    # Should not be called if a LineStyleListener has been set since the listener
    # maintains the line attributes.
    # </p><p>
    # All line attributes are maintained relative to the line text, not the
    # line index that is specified in this method call.
    # During text changes, when entire lines are inserted or removed, the line
    # attributes that are associated with the lines after the change
    # will "move" with their respective text. An entire line is defined as
    # extending from the first character on a line to the last and including the
    # line delimiter.
    # </p><p>
    # When two lines are joined by deleting a line delimiter, the top line
    # attributes take precedence and the attributes of the bottom line are deleted.
    # For all other text changes line attributes will remain unchanged.
    # 
    # @param startLine first line the alignment is applied to, 0 based
    # @param lineCount number of lines the alignment applies to.
    # @param alignment line alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the specified line range is invalid</li>
    # </ul>
    # @see #setAlignment(int)
    # @since 3.2
    def set_line_alignment(start_line, line_count, alignment)
      check_widget
      if (is_listening(LineGetStyle))
        return
      end
      if (start_line < 0 || start_line + line_count > @content.get_line_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @renderer.set_line_alignment(start_line, line_count, alignment)
      reset_cache(start_line, line_count)
      redraw_lines(start_line, line_count, false)
      caret_line = get_caret_line
      if (start_line <= caret_line && caret_line < start_line + line_count)
        set_caret_location
      end
      set_alignment
    end
    
    typesig { [::Java::Int, ::Java::Int, Color] }
    # Sets the background color of the specified lines.
    # <p>
    # The background color is drawn for the width of the widget. All
    # line background colors are discarded when setText is called.
    # The text background color if defined in a StyleRange overlays the
    # line background color.
    # </p><p>
    # Should not be called if a LineBackgroundListener has been set since the
    # listener maintains the line backgrounds.
    # </p><p>
    # All line attributes are maintained relative to the line text, not the
    # line index that is specified in this method call.
    # During text changes, when entire lines are inserted or removed, the line
    # attributes that are associated with the lines after the change
    # will "move" with their respective text. An entire line is defined as
    # extending from the first character on a line to the last and including the
    # line delimiter.
    # </p><p>
    # When two lines are joined by deleting a line delimiter, the top line
    # attributes take precedence and the attributes of the bottom line are deleted.
    # For all other text changes line attributes will remain unchanged.
    # </p>
    # 
    # @param startLine first line the color is applied to, 0 based
    # @param lineCount number of lines the color applies to.
    # @param background line background color
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the specified line range is invalid</li>
    # </ul>
    def set_line_background(start_line, line_count, background)
      check_widget
      if (is_listening(LineGetBackground))
        return
      end
      if (start_line < 0 || start_line + line_count > @content.get_line_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(background).nil?)
        @renderer.set_line_background(start_line, line_count, background)
      else
        @renderer.clear_line_background(start_line, line_count)
      end
      redraw_lines(start_line, line_count, false)
    end
    
    typesig { [::Java::Int, ::Java::Int, Bullet] }
    # Sets the bullet of the specified lines.
    # <p>
    # Should not be called if a LineStyleListener has been set since the listener
    # maintains the line attributes.
    # </p><p>
    # All line attributes are maintained relative to the line text, not the
    # line index that is specified in this method call.
    # During text changes, when entire lines are inserted or removed, the line
    # attributes that are associated with the lines after the change
    # will "move" with their respective text. An entire line is defined as
    # extending from the first character on a line to the last and including the
    # line delimiter.
    # </p><p>
    # When two lines are joined by deleting a line delimiter, the top line
    # attributes take precedence and the attributes of the bottom line are deleted.
    # For all other text changes line attributes will remain unchanged.
    # </p>
    # 
    # @param startLine first line the bullet is applied to, 0 based
    # @param lineCount number of lines the bullet applies to.
    # @param bullet line bullet
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the specified line range is invalid</li>
    # </ul>
    # @since 3.2
    def set_line_bullet(start_line, line_count, bullet)
      check_widget
      if (is_listening(LineGetStyle))
        return
      end
      if (start_line < 0 || start_line + line_count > @content.get_line_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      old_bottom = get_line_pixel(start_line + line_count)
      @renderer.set_line_bullet(start_line, line_count, bullet)
      reset_cache(start_line, line_count)
      new_bottom = get_line_pixel(start_line + line_count)
      redraw_lines(start_line, line_count, !(old_bottom).equal?(new_bottom))
      caret_line = get_caret_line
      if (start_line <= caret_line && caret_line < start_line + line_count)
        set_caret_location
      end
    end
    
    typesig { [] }
    def set_variable_line_height
      if (!@fixed_line_height)
        return
      end
      @fixed_line_height = false
      @renderer.calculate_idle
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the indent of the specified lines.
    # <p>
    # Should not be called if a LineStyleListener has been set since the listener
    # maintains the line attributes.
    # </p><p>
    # All line attributes are maintained relative to the line text, not the
    # line index that is specified in this method call.
    # During text changes, when entire lines are inserted or removed, the line
    # attributes that are associated with the lines after the change
    # will "move" with their respective text. An entire line is defined as
    # extending from the first character on a line to the last and including the
    # line delimiter.
    # </p><p>
    # When two lines are joined by deleting a line delimiter, the top line
    # attributes take precedence and the attributes of the bottom line are deleted.
    # For all other text changes line attributes will remain unchanged.
    # </p>
    # 
    # @param startLine first line the indent is applied to, 0 based
    # @param lineCount number of lines the indent applies to.
    # @param indent line indent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the specified line range is invalid</li>
    # </ul>
    # @see #setIndent(int)
    # @since 3.2
    def set_line_indent(start_line, line_count, indent)
      check_widget
      if (is_listening(LineGetStyle))
        return
      end
      if (start_line < 0 || start_line + line_count > @content.get_line_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      old_bottom = get_line_pixel(start_line + line_count)
      @renderer.set_line_indent(start_line, line_count, indent)
      reset_cache(start_line, line_count)
      new_bottom = get_line_pixel(start_line + line_count)
      redraw_lines(start_line, line_count, !(old_bottom).equal?(new_bottom))
      caret_line = get_caret_line
      if (start_line <= caret_line && caret_line < start_line + line_count)
        set_caret_location
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Sets the justify of the specified lines.
    # <p>
    # Should not be called if a LineStyleListener has been set since the listener
    # maintains the line attributes.
    # </p><p>
    # All line attributes are maintained relative to the line text, not the
    # line index that is specified in this method call.
    # During text changes, when entire lines are inserted or removed, the line
    # attributes that are associated with the lines after the change
    # will "move" with their respective text. An entire line is defined as
    # extending from the first character on a line to the last and including the
    # line delimiter.
    # </p><p>
    # When two lines are joined by deleting a line delimiter, the top line
    # attributes take precedence and the attributes of the bottom line are deleted.
    # For all other text changes line attributes will remain unchanged.
    # </p>
    # 
    # @param startLine first line the justify is applied to, 0 based
    # @param lineCount number of lines the justify applies to.
    # @param justify true if lines should be justified
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the specified line range is invalid</li>
    # </ul>
    # @see #setJustify(boolean)
    # @since 3.2
    def set_line_justify(start_line, line_count, justify)
      check_widget
      if (is_listening(LineGetStyle))
        return
      end
      if (start_line < 0 || start_line + line_count > @content.get_line_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @renderer.set_line_justify(start_line, line_count, justify)
      reset_cache(start_line, line_count)
      redraw_lines(start_line, line_count, false)
      caret_line = get_caret_line
      if (start_line <= caret_line && caret_line < start_line + line_count)
        set_caret_location
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the line spacing of the widget. The line spacing applies for all lines.
    # 
    # @param lineSpacing the line spacing
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @since 3.2
    def set_line_spacing(line_spacing)
      check_widget
      if ((@line_spacing).equal?(line_spacing) || line_spacing < 0)
        return
      end
      @line_spacing = line_spacing
      set_variable_line_height
      reset_cache(0, @content.get_line_count)
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [Color] }
    # Sets the color of the margins.
    # 
    # @param color the new color (or null)
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def set_margin_color(color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @margin_color = color
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the margins.
    # 
    # @param leftMargin the left margin.
    # @param topMargin the top margin.
    # @param rightMargin the right margin.
    # @param bottomMargin the bottom margin.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def set_margins(left_margin, top_margin, right_margin, bottom_margin)
      check_widget
      @left_margin = Math.max(0, left_margin)
      @top_margin = Math.max(0, top_margin)
      @right_margin = Math.max(0, right_margin)
      @bottom_margin = Math.max(0, bottom_margin)
      reset_cache(0, @content.get_line_count)
      set_scroll_bars(true)
      set_caret_location
      set_alignment
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [] }
    # Flips selection anchor based on word selection direction.
    def set_mouse_word_selection_anchor
      if (@click_count > 1)
        if (@caret_offset < @double_click_selection.attr_x)
          @selection_anchor = @double_click_selection.attr_y
        else
          if (@caret_offset > @double_click_selection.attr_y)
            @selection_anchor = @double_click_selection.attr_x
          end
        end
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the orientation of the receiver, which must be one
    # of the constants <code>SWT.LEFT_TO_RIGHT</code> or <code>SWT.RIGHT_TO_LEFT</code>.
    # 
    # @param orientation new orientation style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1.2
    def set_orientation(orientation)
      if (((orientation & (SWT::RIGHT_TO_LEFT | SWT::LEFT_TO_RIGHT))).equal?(0))
        return
      end
      if (!((orientation & SWT::RIGHT_TO_LEFT)).equal?(0) && !((orientation & SWT::LEFT_TO_RIGHT)).equal?(0))
        return
      end
      if (!((orientation & SWT::RIGHT_TO_LEFT)).equal?(0) && is_mirrored)
        return
      end
      if (!((orientation & SWT::LEFT_TO_RIGHT)).equal?(0) && !is_mirrored)
        return
      end
      if (!BidiUtil.set_orientation(self, orientation))
        return
      end
      @is_mirrored = !((orientation & SWT::RIGHT_TO_LEFT)).equal?(0)
      @caret_direction = SWT::NULL
      reset_cache(0, @content.get_line_count)
      set_caret_location
      @key_action_map.clear
      create_key_bindings
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [::Java::Int] }
    # Sets the right margin.
    # 
    # @param rightMargin the right margin.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def set_right_margin(right_margin)
      check_widget
      set_margins(@left_margin, @top_margin, right_margin, @bottom_margin)
    end
    
    typesig { [::Java::Boolean] }
    # Adjusts the maximum and the page size of the scroll bars to
    # reflect content width/length changes.
    # 
    # @param vertical indicates if the vertical scrollbar also needs to be set
    def set_scroll_bars(vertical)
      inactive = 1
      if (vertical || !is_fixed_line_height)
        vertical_bar = get_vertical_bar
        if (!(vertical_bar).nil?)
          maximum = @renderer.get_height
          # only set the real values if the scroll bar can be used
          # (ie. because the thumb size is less than the scroll maximum)
          # avoids flashing on Motif, fixes 1G7RE1J and 1G5SE92
          if (@client_area_height < maximum)
            vertical_bar.set_maximum(maximum - @top_margin - @bottom_margin)
            vertical_bar.set_thumb(@client_area_height - @top_margin - @bottom_margin)
            vertical_bar.set_page_increment(@client_area_height - @top_margin - @bottom_margin)
          else
            if (!(vertical_bar.get_thumb).equal?(inactive) || !(vertical_bar.get_maximum).equal?(inactive))
              vertical_bar.set_values(vertical_bar.get_selection, vertical_bar.get_minimum, inactive, inactive, vertical_bar.get_increment, inactive)
            end
          end
        end
      end
      horizontal_bar = get_horizontal_bar
      if (!(horizontal_bar).nil? && horizontal_bar.get_visible)
        maximum = @renderer.get_width
        # only set the real values if the scroll bar can be used
        # (ie. because the thumb size is less than the scroll maximum)
        # avoids flashing on Motif, fixes 1G7RE1J and 1G5SE92
        if (@client_area_width < maximum)
          horizontal_bar.set_maximum(maximum - @left_margin - @right_margin)
          horizontal_bar.set_thumb(@client_area_width - @left_margin - @right_margin)
          horizontal_bar.set_page_increment(@client_area_width - @left_margin - @right_margin)
        else
          if (!(horizontal_bar.get_thumb).equal?(inactive) || !(horizontal_bar.get_maximum).equal?(inactive))
            horizontal_bar.set_values(horizontal_bar.get_selection, horizontal_bar.get_minimum, inactive, inactive, horizontal_bar.get_increment, inactive)
          end
        end
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the selection to the given position and scrolls it into view.  Equivalent to setSelection(start,start).
    # 
    # @param start new caret position
    # @see #setSelection(int,int)
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when either the start or the end of the selection range is inside a
    # multi byte line delimiter (and thus neither clearly in front of or after the line delimiter)
    # </ul>
    def set_selection(start)
      # checkWidget test done in setSelectionRange
      set_selection(start, start)
    end
    
    typesig { [Point] }
    # Sets the selection and scrolls it into view.
    # <p>
    # Indexing is zero based.  Text selections are specified in terms of
    # caret positions.  In a text widget that contains N characters, there are
    # N+1 caret positions, ranging from 0..N
    # </p>
    # 
    # @param point x=selection start offset, y=selection end offset
    # The caret will be placed at the selection start when x > y.
    # @see #setSelection(int,int)
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when point is null</li>
    # <li>ERROR_INVALID_ARGUMENT when either the start or the end of the selection range is inside a
    # multi byte line delimiter (and thus neither clearly in front of or after the line delimiter)
    # </ul>
    def set_selection(point)
      check_widget
      if ((point).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_selection(point.attr_x, point.attr_y)
    end
    
    typesig { [Color] }
    # Sets the receiver's selection background color to the color specified
    # by the argument, or to the default system color for the control
    # if the argument is null.
    # 
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @since 2.1
    def set_selection_background(color)
      check_widget
      if (!(color).nil?)
        if (color.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      @selection_background = color
      reset_cache(0, @content.get_line_count)
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [Color] }
    # Sets the receiver's selection foreground color to the color specified
    # by the argument, or to the default system color for the control
    # if the argument is null.
    # <p>
    # Note that this is a <em>HINT</em>. Some platforms do not allow the application
    # to change the selection foreground color.
    # </p>
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @since 2.1
    def set_selection_foreground(color)
      check_widget
      if (!(color).nil?)
        if (color.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      @selection_foreground = color
      reset_cache(0, @content.get_line_count)
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the selection and scrolls it into view.
    # <p>
    # Indexing is zero based.  Text selections are specified in terms of
    # caret positions.  In a text widget that contains N characters, there are
    # N+1 caret positions, ranging from 0..N
    # </p>
    # 
    # @param start selection start offset. The caret will be placed at the
    # selection start when start > end.
    # @param end selection end offset
    # @see #setSelectionRange(int,int)
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when either the start or the end of the selection range is inside a
    # multi byte line delimiter (and thus neither clearly in front of or after the line delimiter)
    # </ul>
    def set_selection(start, end_)
      set_selection_range(start, end_ - start)
      show_selection
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    # Sets the selection.
    # <p>
    # The new selection may not be visible. Call showSelection to scroll
    # the selection into view.
    # </p>
    # 
    # @param start offset of the first selected character, start >= 0 must be true.
    # @param length number of characters to select, 0 <= start + length
    # <= getCharCount() must be true.
    # A negative length places the caret at the selection start.
    # @param sendEvent a Selection event is sent when set to true and when
    # the selection is reset.
    def set_selection(start, length_, send_event, do_block)
      end_ = start + length_
      if (start > end_)
        temp = end_
        end_ = start
        start = temp
      end
      # is the selection range different or is the selection direction
      # different?
      if (!(@selection.attr_x).equal?(start) || !(@selection.attr_y).equal?(end_) || (length_ > 0 && !(@selection_anchor).equal?(@selection.attr_x)) || (length_ < 0 && !(@selection_anchor).equal?(@selection.attr_y)))
        if (@block_selection && do_block)
          set_block_selection_offset(start, end_, send_event)
        else
          clear_selection(send_event)
          if (length_ < 0)
            @selection_anchor = @selection.attr_y = end_
            @selection.attr_x = start
            set_caret_offset(start, PREVIOUS_OFFSET_TRAILING)
          else
            @selection_anchor = @selection.attr_x = start
            @selection.attr_y = end_
            set_caret_offset(end_, PREVIOUS_OFFSET_TRAILING)
          end
          internal_redraw_range(@selection.attr_x, @selection.attr_y - @selection.attr_x)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the selection.
    # <p>
    # The new selection may not be visible. Call showSelection to scroll the selection
    # into view. A negative length places the caret at the visual start of the selection.
    # </p>
    # 
    # @param start offset of the first selected character
    # @param length number of characters to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when either the start or the end of the selection range is inside a
    # multi byte line delimiter (and thus neither clearly in front of or after the line delimiter)
    # </ul>
    def set_selection_range(start, length_)
      check_widget
      content_length = get_char_count
      start = Math.max(0, Math.min(start, content_length))
      end_ = start + length_
      if (end_ < 0)
        length_ = -start
      else
        if (end_ > content_length)
          length_ = content_length - start
        end
      end
      if (is_line_delimiter(start) || is_line_delimiter(start + length_))
        # the start offset or end offset of the selection range is inside a
        # multi byte line delimiter. This is an illegal operation and an exception
        # is thrown. Fixes 1GDKK3R
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      set_selection(start, length_, false, true)
      set_caret_location
    end
    
    typesig { [StyleRange] }
    # Adds the specified style.
    # <p>
    # The new style overwrites existing styles for the specified range.
    # Existing style ranges are adjusted if they partially overlap with
    # the new style. To clear an individual style, call setStyleRange
    # with a StyleRange that has null attributes.
    # </p><p>
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # </p>
    # 
    # @param range StyleRange object containing the style information.
    # Overwrites the old style in the given range. May be null to delete
    # all styles.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE when the style range is outside the valid range (> getCharCount())</li>
    # </ul>
    def set_style_range(range)
      check_widget
      if (is_listening(LineGetStyle))
        return
      end
      if (!(range).nil?)
        if (range.is_unstyled)
          set_style_ranges(range.attr_start, range.attr_length, nil, nil, false)
        else
          set_style_ranges(range.attr_start, 0, nil, Array.typed(StyleRange).new([range]), false)
        end
      else
        set_style_ranges(0, 0, nil, nil, true)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(StyleRange)] }
    # Clears the styles in the range specified by <code>start</code> and
    # <code>length</code> and adds the new styles.
    # <p>
    # The ranges array contains start and length pairs.  Each pair refers to
    # the corresponding style in the styles array.  For example, the pair
    # that starts at ranges[n] with length ranges[n+1] uses the style
    # at styles[n/2].  The range fields within each StyleRange are ignored.
    # If ranges or styles is null, the specified range is cleared.
    # </p><p>
    # Note: It is expected that the same instance of a StyleRange will occur
    # multiple times within the styles array, reducing memory usage.
    # </p><p>
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # </p>
    # 
    # @param start offset of first character where styles will be deleted
    # @param length length of the range to delete styles in
    # @param ranges the array of ranges.  The ranges must not overlap and must be in order.
    # @param styles the array of StyleRanges.  The range fields within the StyleRange are unused.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when an element in the styles array is null</li>
    # <li>ERROR_INVALID_RANGE when the number of ranges and style do not match (ranges.length * 2 == styles.length)</li>
    # <li>ERROR_INVALID_RANGE when a range is outside the valid range (> getCharCount() or less than zero)</li>
    # <li>ERROR_INVALID_RANGE when a range overlaps</li>
    # </ul>
    # 
    # @since 3.2
    def set_style_ranges(start, length_, ranges, styles)
      check_widget
      if (is_listening(LineGetStyle))
        return
      end
      if ((ranges).nil? || (styles).nil?)
        set_style_ranges(start, length_, nil, nil, false)
      else
        set_style_ranges(start, length_, ranges, styles, false)
      end
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(StyleRange)] }
    # Sets styles to be used for rendering the widget content.
    # <p>
    # All styles in the widget will be replaced with the given set of ranges and styles.
    # The ranges array contains start and length pairs.  Each pair refers to
    # the corresponding style in the styles array.  For example, the pair
    # that starts at ranges[n] with length ranges[n+1] uses the style
    # at styles[n/2].  The range fields within each StyleRange are ignored.
    # If either argument is null, the styles are cleared.
    # </p><p>
    # Note: It is expected that the same instance of a StyleRange will occur
    # multiple times within the styles array, reducing memory usage.
    # </p><p>
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # </p>
    # 
    # @param ranges the array of ranges.  The ranges must not overlap and must be in order.
    # @param styles the array of StyleRanges.  The range fields within the StyleRange are unused.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when an element in the styles array is null</li>
    # <li>ERROR_INVALID_RANGE when the number of ranges and style do not match (ranges.length * 2 == styles.length)</li>
    # <li>ERROR_INVALID_RANGE when a range is outside the valid range (> getCharCount() or less than zero)</li>
    # <li>ERROR_INVALID_RANGE when a range overlaps</li>
    # </ul>
    # 
    # @since 3.2
    def set_style_ranges(ranges, styles)
      check_widget
      if (is_listening(LineGetStyle))
        return
      end
      if ((ranges).nil? || (styles).nil?)
        set_style_ranges(0, 0, nil, nil, true)
      else
        set_style_ranges(0, 0, ranges, styles, true)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(StyleRange), ::Java::Boolean] }
    def set_style_ranges(start, length_, ranges, styles, reset_)
      char_count = @content.get_char_count
      end_ = start + length_
      if (start > end_ || start < 0)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      if (!(styles).nil?)
        if (end_ > char_count)
          SWT.error(SWT::ERROR_INVALID_RANGE)
        end
        if (!(ranges).nil?)
          if (!(ranges.attr_length).equal?(styles.attr_length << 1))
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
        end
        last_offset = 0
        variable_height = false
        i = 0
        while i < styles.attr_length
          if ((styles[i]).nil?)
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          range_start = 0
          range_length = 0
          if (!(ranges).nil?)
            range_start = ranges[i << 1]
            range_length = ranges[(i << 1) + 1]
          else
            range_start = styles[i].attr_start
            range_length = styles[i].attr_length
          end
          if (range_length < 0)
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          if (!(0 <= range_start && range_start + range_length <= char_count))
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          if (last_offset > range_start)
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          variable_height |= styles[i].is_variable_height
          last_offset = range_start + range_length
          i += 1
        end
        if (variable_height)
          set_variable_line_height
        end
      end
      range_start = start
      range_end = end_
      if (!(styles).nil? && styles.attr_length > 0)
        if (!(ranges).nil?)
          range_start = ranges[0]
          range_end = ranges[ranges.attr_length - 2] + ranges[ranges.attr_length - 1]
        else
          range_start = styles[0].attr_start
          range_end = styles[styles.attr_length - 1].attr_start + styles[styles.attr_length - 1].attr_length
        end
      end
      expected_bottom = 0
      if (!is_fixed_line_height && !reset_)
        line_end = @content.get_line_at_offset(Math.max(end_, range_end))
        partial_top_index = get_partial_top_index
        partial_bottom_index = get_partial_bottom_index
        if (partial_top_index <= line_end && line_end <= partial_bottom_index)
          expected_bottom = get_line_pixel(line_end + 1)
        end
      end
      if (reset_)
        @renderer.set_style_ranges(nil, nil)
      else
        @renderer.update_ranges(start, length_, length_)
      end
      if (!(styles).nil? && styles.attr_length > 0)
        @renderer.set_style_ranges(ranges, styles)
      end
      if (reset_)
        reset_cache(0, @content.get_line_count)
        Canvas.instance_method(:redraw).bind(self).call
      else
        line_start = @content.get_line_at_offset(Math.min(start, range_start))
        line_end = @content.get_line_at_offset(Math.max(end_, range_end))
        reset_cache(line_start, line_end - line_start + 1)
        partial_top_index = get_partial_top_index
        partial_bottom_index = get_partial_bottom_index
        if (!(line_start > partial_bottom_index || line_end < partial_top_index))
          top = 0
          bottom = @client_area_height
          if (partial_top_index <= line_start && line_start <= partial_bottom_index)
            top = Math.max(0, get_line_pixel(line_start))
          end
          if (partial_top_index <= line_end && line_end <= partial_bottom_index)
            bottom = get_line_pixel(line_end + 1)
          end
          if (!is_fixed_line_height && !(bottom).equal?(expected_bottom))
            bottom = @client_area_height
          end
          Canvas.instance_method(:redraw).bind(self).call(0, top, @client_area_width, bottom - top, false)
        end
      end
      set_caret_location
      do_mouse_link_cursor
    end
    
    typesig { [Array.typed(StyleRange)] }
    # Sets styles to be used for rendering the widget content. All styles
    # in the widget will be replaced with the given set of styles.
    # <p>
    # Note: Because a StyleRange includes the start and length, the
    # same instance cannot occur multiple times in the array of styles.
    # If the same style attributes, such as font and color, occur in
    # multiple StyleRanges, <code>setStyleRanges(int[], StyleRange[])</code>
    # can be used to share styles and reduce memory usage.
    # </p><p>
    # Should not be called if a LineStyleListener has been set since the
    # listener maintains the styles.
    # </p>
    # 
    # @param ranges StyleRange objects containing the style information.
    # The ranges should not overlap. The style rendering is undefined if
    # the ranges do overlap. Must not be null. The styles need to be in order.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when the list of ranges is null</li>
    # <li>ERROR_INVALID_RANGE when the last of the style ranges is outside the valid range (> getCharCount())</li>
    # </ul>
    # 
    # @see #setStyleRanges(int[], StyleRange[])
    def set_style_ranges(ranges)
      check_widget
      if (is_listening(LineGetStyle))
        return
      end
      if ((ranges).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_style_ranges(0, 0, nil, ranges, true)
    end
    
    typesig { [::Java::Int] }
    # Sets the tab width.
    # 
    # @param tabs tab width measured in characters.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_tabs(tabs)
      check_widget
      @tab_length = tabs
      @renderer.set_font(nil, tabs)
      reset_cache(0, @content.get_line_count)
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [String] }
    # Sets the widget content.
    # If the widget has the SWT.SINGLE style and "text" contains more than
    # one line, only the first line is rendered but the text is stored
    # unchanged. A subsequent call to getText will return the same text
    # that was set.
    # <p>
    # <b>Note:</b> Only a single line of text should be set when the SWT.SINGLE
    # style is used.
    # </p>
    # 
    # @param text new widget content. Replaces existing content. Line styles
    # that were set using StyledText API are discarded.  The
    # current selection is also discarded.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when string is null</li>
    # </ul>
    def set_text(text)
      check_widget
      if ((text).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      event = Event.new
      event.attr_start = 0
      event.attr_end = get_char_count
      event.attr_text = text
      event.attr_doit = true
      notify_listeners(SWT::Verify, event)
      if (event.attr_doit)
        styled_text_event = nil
        if (is_listening(ExtendedModify))
          styled_text_event = StyledTextEvent.new(@content)
          styled_text_event.attr_start = event.attr_start
          styled_text_event.attr_end = event.attr_start + event.attr_text.length
          styled_text_event.attr_text = @content.get_text_range(event.attr_start, event.attr_end - event.attr_start)
        end
        @content.set_text(event.attr_text)
        notify_listeners(SWT::Modify, event)
        if (!(styled_text_event).nil?)
          notify_listeners(ExtendedModify, styled_text_event)
        end
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the text limit to the specified number of characters.
    # <p>
    # The text limit specifies the amount of text that
    # the user can type into the widget.
    # </p>
    # 
    # @param limit the new text limit.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_CANNOT_BE_ZERO when limit is 0</li>
    # </ul>
    def set_text_limit(limit)
      check_widget
      if ((limit).equal?(0))
        SWT.error(SWT::ERROR_CANNOT_BE_ZERO)
      end
      @text_limit = limit
    end
    
    typesig { [::Java::Int] }
    # Sets the top index. Do nothing if there is no text set.
    # <p>
    # The top index is the index of the line that is currently at the top
    # of the widget. The top index changes when the widget is scrolled.
    # Indexing starts from zero.
    # Note: The top index is reset to 0 when new text is set in the widget.
    # </p>
    # 
    # @param topIndex new top index. Must be between 0 and
    # getLineCount() - fully visible lines per page. If no lines are fully
    # visible the maximum value is getLineCount() - 1. An out of range
    # index will be adjusted accordingly.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_top_index(top_index)
      check_widget
      if ((get_char_count).equal?(0))
        return
      end
      line_count = @content.get_line_count
      pixel = 0
      if (is_fixed_line_height)
        page_size = Math.max(1, Math.min(line_count, get_line_count_whole))
        if (top_index < 0)
          top_index = 0
        else
          if (top_index > line_count - page_size)
            top_index = line_count - page_size
          end
        end
        pixel = get_line_pixel(top_index)
      else
        top_index = Math.max(0, Math.min(line_count - 1, top_index))
        pixel = get_line_pixel(top_index)
        if (pixel > 0)
          pixel = get_available_height_bellow(pixel)
        else
          pixel = get_available_height_above(pixel)
        end
      end
      scroll_vertical(pixel, true)
    end
    
    typesig { [::Java::Int] }
    # Sets the top margin.
    # 
    # @param topMargin the top margin.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def set_top_margin(top_margin)
      check_widget
      set_margins(@left_margin, top_margin, @right_margin, @bottom_margin)
    end
    
    typesig { [::Java::Int] }
    # Sets the top pixel offset. Do nothing if there is no text set.
    # <p>
    # The top pixel offset is the vertical pixel offset of the widget. The
    # widget is scrolled so that the given pixel position is at the top.
    # The top index is adjusted to the corresponding top line.
    # Note: The top pixel is reset to 0 when new text is set in the widget.
    # </p>
    # 
    # @param pixel new top pixel offset. Must be between 0 and
    # (getLineCount() - visible lines per page) / getLineHeight()). An out
    # of range offset will be adjusted accordingly.
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @since 2.0
    def set_top_pixel(pixel)
      check_widget
      if ((get_char_count).equal?(0))
        return
      end
      if (pixel < 0)
        pixel = 0
      end
      line_count = @content.get_line_count
      height = @client_area_height - @top_margin - @bottom_margin
      vertical_offset = get_vertical_scroll_offset
      if (is_fixed_line_height)
        max_top_pixel = Math.max(0, line_count * get_vertical_increment - height)
        if (pixel > max_top_pixel)
          pixel = max_top_pixel
        end
        pixel -= vertical_offset
      else
        pixel -= vertical_offset
        if (pixel > 0)
          pixel = get_available_height_bellow(pixel)
        end
      end
      scroll_vertical(pixel, true)
    end
    
    typesig { [::Java::Boolean] }
    # Sets whether the widget wraps lines.
    # <p>
    # This overrides the creation style bit SWT.WRAP.
    # </p>
    # 
    # @param wrap true=widget wraps lines, false=widget does not wrap lines
    # @since 2.0
    def set_word_wrap(wrap)
      check_widget
      if (!((get_style & SWT::SINGLE)).equal?(0))
        return
      end
      if ((@word_wrap).equal?(wrap))
        return
      end
      if (@word_wrap && @block_selection)
        set_block_selection(false)
      end
      @word_wrap = wrap
      set_variable_line_height
      reset_cache(0, @content.get_line_count)
      @horizontal_scroll_offset = 0
      horizontal_bar = get_horizontal_bar
      if (!(horizontal_bar).nil?)
        horizontal_bar.set_visible(!@word_wrap)
      end
      set_scroll_bars(true)
      set_caret_location
      Canvas.instance_method(:redraw).bind(self).call
    end
    
    typesig { [Rectangle, ::Java::Boolean] }
    def show_location(rect, scroll_page)
      scrolled = false
      if (rect.attr_y < @top_margin)
        scrolled = scroll_vertical(rect.attr_y - @top_margin, true)
      else
        if (rect.attr_y + rect.attr_height > @client_area_height - @bottom_margin)
          if (@client_area_height - @top_margin - @bottom_margin <= 0)
            scrolled = scroll_vertical(rect.attr_y - @top_margin, true)
          else
            scrolled = scroll_vertical(rect.attr_y + rect.attr_height - (@client_area_height - @bottom_margin), true)
          end
        end
      end
      width = @client_area_width - @right_margin - @left_margin
      if (width > 0)
        min_scroll = scroll_page ? width / 4 : 0
        if (rect.attr_x < @left_margin)
          scroll_width = Math.max(@left_margin - rect.attr_x, min_scroll)
          max_scroll = @horizontal_scroll_offset
          scrolled = scroll_horizontal(-Math.min(max_scroll, scroll_width), true)
        else
          if (rect.attr_x + rect.attr_width > (@client_area_width - @right_margin))
            scroll_width = Math.max(rect.attr_x + rect.attr_width - (@client_area_width - @right_margin), min_scroll)
            max_scroll = @renderer.get_width - @horizontal_scroll_offset - @client_area_width
            scrolled = scroll_horizontal(Math.min(max_scroll, scroll_width), true)
          end
        end
      end
      return scrolled
    end
    
    typesig { [] }
    # Sets the caret location and scrolls the caret offset into view.
    def show_caret
      bounds = get_bounds_at_offset(@caret_offset)
      if (!show_location(bounds, true))
        set_caret_location
      end
    end
    
    typesig { [] }
    # Scrolls the selection into view.
    # <p>
    # The end of the selection will be scrolled into view.
    # Note that if a right-to-left selection exists, the end of the selection is
    # the visual beginning of the selection (i.e., where the caret is located).
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def show_selection
      check_widget
      # is selection from right-to-left?
      right_to_left = (@caret_offset).equal?(@selection.attr_x)
      start_offset = 0
      end_offset = 0
      if (right_to_left)
        start_offset = @selection.attr_y
        end_offset = @selection.attr_x
      else
        start_offset = @selection.attr_x
        end_offset = @selection.attr_y
      end
      start_bounds = get_bounds_at_offset(start_offset)
      end_bounds = get_bounds_at_offset(end_offset)
      # can the selection be fully displayed within the widget's visible width?
      w = @client_area_width - @left_margin - @right_margin
      selection_fits = right_to_left ? start_bounds.attr_x - end_bounds.attr_x <= w : end_bounds.attr_x - start_bounds.attr_x <= w
      if (selection_fits)
        # show as much of the selection as possible by first showing
        # the start of the selection
        if (show_location(start_bounds, false))
          # endX value could change if showing startX caused a scroll to occur
          end_bounds = get_bounds_at_offset(end_offset)
        end
        # the character at endOffset is not part of the selection
        end_bounds.attr_width = (end_offset).equal?(@caret_offset) ? get_caret_width : 0
        show_location(end_bounds, false)
      else
        # just show the end of the selection since the selection start
        # will not be visible
        show_location(end_bounds, true)
      end
    end
    
    typesig { [] }
    def update_caret_visibility
      caret = get_caret
      if (!(caret).nil?)
        if (@block_selection && !(@block_xlocation).equal?(-1))
          caret.set_visible(false)
        else
          location = caret.get_location
          size = caret.get_size
          visible = @top_margin <= location.attr_y + size.attr_y && location.attr_y <= @client_area_height - @bottom_margin && @left_margin <= location.attr_x + size.attr_x && location.attr_x <= @client_area_width - @right_margin
          caret.set_visible(visible)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Updates the selection and caret position depending on the text change.
    # <p>
    # If the selection intersects with the replaced text, the selection is
    # reset and the caret moved to the end of the new text.
    # If the selection is behind the replaced text it is moved so that the
    # same text remains selected.  If the selection is before the replaced text
    # it is left unchanged.
    # </p>
    # 
    # @param startOffset offset of the text change
    # @param replacedLength length of text being replaced
    # @param newLength length of new text
    def update_selection(start_offset, replaced_length, new_length)
      if (@selection.attr_y <= start_offset)
        # selection ends before text change
        if (@word_wrap)
          set_caret_location
        end
        return
      end
      if (@selection.attr_x < start_offset)
        # clear selection fragment before text change
        internal_redraw_range(@selection.attr_x, start_offset - @selection.attr_x)
      end
      if (@selection.attr_y > start_offset + replaced_length && @selection.attr_x < start_offset + replaced_length)
        # clear selection fragment after text change.
        # do this only when the selection is actually affected by the
        # change. Selection is only affected if it intersects the change (1GDY217).
        net_new_length = new_length - replaced_length
        redraw_start = start_offset + new_length
        internal_redraw_range(redraw_start, @selection.attr_y + net_new_length - redraw_start)
      end
      if (@selection.attr_y > start_offset && @selection.attr_x < start_offset + replaced_length)
        # selection intersects replaced text. set caret behind text change
        set_selection(start_offset + new_length, 0, true, false)
      else
        # move selection to keep same text selected
        set_selection(@selection.attr_x + new_length - replaced_length, @selection.attr_y - @selection.attr_x, true, false)
      end
      set_caret_location
    end
    
    private
    alias_method :initialize__styled_text, :initialize
  end
  
end
