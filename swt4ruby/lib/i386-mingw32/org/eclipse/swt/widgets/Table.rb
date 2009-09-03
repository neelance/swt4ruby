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
  module TableImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # import java.util.*;
  # 
  # Instances of this class implement a selectable user interface
  # object that displays a list of images and strings and issues
  # notification when selected.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>TableItem</code>.
  # </p><p>
  # Style <code>VIRTUAL</code> is used to create a <code>Table</code> whose
  # <code>TableItem</code>s are to be populated by the client on an on-demand basis
  # instead of up-front.  This can provide significant performance improvements for
  # tables that are very large or for which <code>TableItem</code> population is
  # expensive (for example, retrieving values from an external source).
  # </p><p>
  # Here is an example of using a <code>Table</code> with style <code>VIRTUAL</code>:
  # <code><pre>
  # final Table table = new Table (parent, SWT.VIRTUAL | SWT.BORDER);
  # table.setItemCount (1000000);
  # table.addListener (SWT.SetData, new Listener () {
  # public void handleEvent (Event event) {
  # TableItem item = (TableItem) event.item;
  # int index = table.indexOf (item);
  # item.setText ("Item " + index);
  # System.out.println (item.getText ());
  # }
  # });
  # </pre></code>
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not normally make sense to add <code>Control</code> children to
  # it, or set a layout on it, unless implementing something like a cell
  # editor.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SINGLE, MULTI, CHECK, FULL_SELECTION, HIDE_SELECTION, VIRTUAL, NO_SCROLL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection, DefaultSelection, SetData, MeasureItem, EraseItem, PaintItem</dd>
  # </dl>
  # </p><p>
  # Note: Only one of the styles SINGLE, and MULTI may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#table">Table, TableItem, TableColumn snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Table < TableImports.const_get :Composite
    include_class_members TableImports
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :columns
    alias_method :attr_columns, :columns
    undef_method :columns
    alias_method :attr_columns=, :columns=
    undef_method :columns=
    
    attr_accessor :column_count
    alias_method :attr_column_count, :column_count
    undef_method :column_count
    alias_method :attr_column_count=, :column_count=
    undef_method :column_count=
    
    attr_accessor :custom_count
    alias_method :attr_custom_count, :custom_count
    undef_method :custom_count
    alias_method :attr_custom_count=, :custom_count=
    undef_method :custom_count=
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
    attr_accessor :header_image_list
    alias_method :attr_header_image_list, :header_image_list
    undef_method :header_image_list
    alias_method :attr_header_image_list=, :header_image_list=
    undef_method :header_image_list=
    
    attr_accessor :current_item
    alias_method :attr_current_item, :current_item
    undef_method :current_item
    alias_method :attr_current_item=, :current_item=
    undef_method :current_item=
    
    attr_accessor :sort_column
    alias_method :attr_sort_column, :sort_column
    undef_method :sort_column
    alias_method :attr_sort_column=, :sort_column=
    undef_method :sort_column=
    
    attr_accessor :focus_rect
    alias_method :attr_focus_rect, :focus_rect
    undef_method :focus_rect
    alias_method :attr_focus_rect=, :focus_rect=
    undef_method :focus_rect=
    
    # long
    attr_accessor :header_tool_tip_handle
    alias_method :attr_header_tool_tip_handle, :header_tool_tip_handle
    undef_method :header_tool_tip_handle
    alias_method :attr_header_tool_tip_handle=, :header_tool_tip_handle=
    undef_method :header_tool_tip_handle=
    
    attr_accessor :ignore_custom_draw
    alias_method :attr_ignore_custom_draw, :ignore_custom_draw
    undef_method :ignore_custom_draw
    alias_method :attr_ignore_custom_draw=, :ignore_custom_draw=
    undef_method :ignore_custom_draw=
    
    attr_accessor :ignore_draw_foreground
    alias_method :attr_ignore_draw_foreground, :ignore_draw_foreground
    undef_method :ignore_draw_foreground
    alias_method :attr_ignore_draw_foreground=, :ignore_draw_foreground=
    undef_method :ignore_draw_foreground=
    
    attr_accessor :ignore_draw_background
    alias_method :attr_ignore_draw_background, :ignore_draw_background
    undef_method :ignore_draw_background
    alias_method :attr_ignore_draw_background=, :ignore_draw_background=
    undef_method :ignore_draw_background=
    
    attr_accessor :ignore_draw_focus
    alias_method :attr_ignore_draw_focus, :ignore_draw_focus
    undef_method :ignore_draw_focus
    alias_method :attr_ignore_draw_focus=, :ignore_draw_focus=
    undef_method :ignore_draw_focus=
    
    attr_accessor :ignore_draw_selection
    alias_method :attr_ignore_draw_selection, :ignore_draw_selection
    undef_method :ignore_draw_selection
    alias_method :attr_ignore_draw_selection=, :ignore_draw_selection=
    undef_method :ignore_draw_selection=
    
    attr_accessor :ignore_draw_hot
    alias_method :attr_ignore_draw_hot, :ignore_draw_hot
    undef_method :ignore_draw_hot
    alias_method :attr_ignore_draw_hot=, :ignore_draw_hot=
    undef_method :ignore_draw_hot=
    
    attr_accessor :custom_draw
    alias_method :attr_custom_draw, :custom_draw
    undef_method :custom_draw
    alias_method :attr_custom_draw=, :custom_draw=
    undef_method :custom_draw=
    
    attr_accessor :drag_started
    alias_method :attr_drag_started, :drag_started
    undef_method :drag_started
    alias_method :attr_drag_started=, :drag_started=
    undef_method :drag_started=
    
    attr_accessor :explorer_theme
    alias_method :attr_explorer_theme, :explorer_theme
    undef_method :explorer_theme
    alias_method :attr_explorer_theme=, :explorer_theme=
    undef_method :explorer_theme=
    
    attr_accessor :first_column_image
    alias_method :attr_first_column_image, :first_column_image
    undef_method :first_column_image
    alias_method :attr_first_column_image=, :first_column_image=
    undef_method :first_column_image=
    
    attr_accessor :fix_scroll_width
    alias_method :attr_fix_scroll_width, :fix_scroll_width
    undef_method :fix_scroll_width
    alias_method :attr_fix_scroll_width=, :fix_scroll_width=
    undef_method :fix_scroll_width=
    
    attr_accessor :tip_requested
    alias_method :attr_tip_requested, :tip_requested
    undef_method :tip_requested
    alias_method :attr_tip_requested=, :tip_requested=
    undef_method :tip_requested=
    
    attr_accessor :was_selected
    alias_method :attr_was_selected, :was_selected
    undef_method :was_selected
    alias_method :attr_was_selected=, :was_selected=
    undef_method :was_selected=
    
    attr_accessor :was_resized
    alias_method :attr_was_resized, :was_resized
    undef_method :was_resized
    alias_method :attr_was_resized=, :was_resized=
    undef_method :was_resized=
    
    attr_accessor :painted
    alias_method :attr_painted, :painted
    undef_method :painted
    alias_method :attr_painted=, :painted=
    undef_method :painted=
    
    attr_accessor :ignore_activate
    alias_method :attr_ignore_activate, :ignore_activate
    undef_method :ignore_activate
    alias_method :attr_ignore_activate=, :ignore_activate=
    undef_method :ignore_activate=
    
    attr_accessor :ignore_select
    alias_method :attr_ignore_select, :ignore_select
    undef_method :ignore_select
    alias_method :attr_ignore_select=, :ignore_select=
    undef_method :ignore_select=
    
    attr_accessor :ignore_shrink
    alias_method :attr_ignore_shrink, :ignore_shrink
    undef_method :ignore_shrink
    alias_method :attr_ignore_shrink=, :ignore_shrink=
    undef_method :ignore_shrink=
    
    attr_accessor :ignore_resize
    alias_method :attr_ignore_resize, :ignore_resize
    undef_method :ignore_resize
    alias_method :attr_ignore_resize=, :ignore_resize=
    undef_method :ignore_resize=
    
    attr_accessor :ignore_column_move
    alias_method :attr_ignore_column_move, :ignore_column_move
    undef_method :ignore_column_move
    alias_method :attr_ignore_column_move=, :ignore_column_move=
    undef_method :ignore_column_move=
    
    attr_accessor :ignore_column_resize
    alias_method :attr_ignore_column_resize, :ignore_column_resize
    undef_method :ignore_column_resize
    alias_method :attr_ignore_column_resize=, :ignore_column_resize=
    undef_method :ignore_column_resize=
    
    attr_accessor :full_row_select
    alias_method :attr_full_row_select, :full_row_select
    undef_method :full_row_select
    alias_method :attr_full_row_select=, :full_row_select=
    undef_method :full_row_select=
    
    attr_accessor :item_height
    alias_method :attr_item_height, :item_height
    undef_method :item_height
    alias_method :attr_item_height=, :item_height=
    undef_method :item_height=
    
    attr_accessor :last_index_of
    alias_method :attr_last_index_of, :last_index_of
    undef_method :last_index_of
    alias_method :attr_last_index_of=, :last_index_of=
    undef_method :last_index_of=
    
    attr_accessor :last_width
    alias_method :attr_last_width, :last_width
    undef_method :last_width
    alias_method :attr_last_width=, :last_width=
    undef_method :last_width=
    
    attr_accessor :sort_direction
    alias_method :attr_sort_direction, :sort_direction
    undef_method :sort_direction
    alias_method :attr_sort_direction=, :sort_direction=
    undef_method :sort_direction=
    
    attr_accessor :resize_count
    alias_method :attr_resize_count, :resize_count
    undef_method :resize_count
    alias_method :attr_resize_count=, :resize_count=
    undef_method :resize_count=
    
    attr_accessor :selection_foreground
    alias_method :attr_selection_foreground, :selection_foreground
    undef_method :selection_foreground
    alias_method :attr_selection_foreground=, :selection_foreground=
    undef_method :selection_foreground=
    
    attr_accessor :hot_index
    alias_method :attr_hot_index, :hot_index
    undef_method :hot_index
    alias_method :attr_hot_index=, :hot_index=
    undef_method :hot_index=
    
    class_module.module_eval {
      # final
      # long
      
      def header_proc
        defined?(@@header_proc) ? @@header_proc : @@header_proc= 0
      end
      alias_method :attr_header_proc, :header_proc
      
      def header_proc=(value)
        @@header_proc = value
      end
      alias_method :attr_header_proc=, :header_proc=
      
      const_set_lazy(:INSET) { 4 }
      const_attr_reader  :INSET
      
      const_set_lazy(:GRID_WIDTH) { 1 }
      const_attr_reader  :GRID_WIDTH
      
      const_set_lazy(:SORT_WIDTH) { 10 }
      const_attr_reader  :SORT_WIDTH
      
      const_set_lazy(:HEADER_MARGIN) { 12 }
      const_attr_reader  :HEADER_MARGIN
      
      const_set_lazy(:HEADER_EXTRA) { 3 }
      const_attr_reader  :HEADER_EXTRA
      
      const_set_lazy(:VISTA_EXTRA) { 2 }
      const_attr_reader  :VISTA_EXTRA
      
      const_set_lazy(:EXPLORER_EXTRA) { 2 }
      const_attr_reader  :EXPLORER_EXTRA
      
      const_set_lazy(:H_SCROLL_LIMIT) { 32 }
      const_attr_reader  :H_SCROLL_LIMIT
      
      const_set_lazy(:V_SCROLL_LIMIT) { 16 }
      const_attr_reader  :V_SCROLL_LIMIT
      
      const_set_lazy(:DRAG_IMAGE_SIZE) { 301 }
      const_attr_reader  :DRAG_IMAGE_SIZE
      
      const_set_lazy(:EXPLORER_THEME) { true }
      const_attr_reader  :EXPLORER_THEME
      
      const_set_lazy(:TableClass) { TCHAR.new(0, OS::WC_LISTVIEW, true) }
      const_attr_reader  :TableClass
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, TableClass, lp_wnd_class)
        const_set :TableProc, lp_wnd_class.attr_lpfn_wnd_proc
      end
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
    # @see SWT#SINGLE
    # @see SWT#MULTI
    # @see SWT#CHECK
    # @see SWT#FULL_SELECTION
    # @see SWT#HIDE_SELECTION
    # @see SWT#VIRTUAL
    # @see SWT#NO_SCROLL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @items = nil
      @columns = nil
      @column_count = 0
      @custom_count = 0
      @image_list = nil
      @header_image_list = nil
      @current_item = nil
      @sort_column = nil
      @focus_rect = nil
      @header_tool_tip_handle = 0
      @ignore_custom_draw = false
      @ignore_draw_foreground = false
      @ignore_draw_background = false
      @ignore_draw_focus = false
      @ignore_draw_selection = false
      @ignore_draw_hot = false
      @custom_draw = false
      @drag_started = false
      @explorer_theme = false
      @first_column_image = false
      @fix_scroll_width = false
      @tip_requested = false
      @was_selected = false
      @was_resized = false
      @painted = false
      @ignore_activate = false
      @ignore_select = false
      @ignore_shrink = false
      @ignore_resize = false
      @ignore_column_move = false
      @ignore_column_resize = false
      @full_row_select = false
      @item_height = 0
      @last_index_of = 0
      @last_width = 0
      @sort_direction = 0
      @resize_count = 0
      @selection_foreground = 0
      @hot_index = 0
      super(parent, check_style(style))
    end
    
    typesig { [::Java::Int, Listener] }
    def __add_listener(event_type, listener)
      super(event_type, listener)
      case (event_type)
      when SWT::MeasureItem, SWT::EraseItem, SWT::PaintItem
        set_custom_draw(true)
        set_background_transparent(true)
        if (OS::COMCTL32_MAJOR < 6)
          self.attr_style |= SWT::DOUBLE_BUFFERED
        end
        if (OS::IsWinCE)
          OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, OS::LVS_EX_LABELTIP, 0)
        end
      end
    end
    
    typesig { [::Java::Int] }
    def __get_item(index)
      if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
        return @items[index]
      end
      if (!(@items[index]).nil?)
        return @items[index]
      end
      return @items[index] = TableItem.new(self, SWT::NONE, -1, false)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the item field of the event object is valid.
    # If the receiver has the <code>SWT.CHECK</code> style and the check selection changes,
    # the event object detail field contains the value <code>SWT.CHECK</code>.
    # <code>widgetDefaultSelected</code> is typically called when an item is double-clicked.
    # The item field of the event object is valid for default selection, but the detail field is not used.
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
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Selection, typed_listener)
      add_listener(SWT::DefaultSelection, typed_listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_window_proc(hwnd, msg, w_param, l_param)
      return call_window_proc(hwnd, msg, w_param, l_param, false)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    # long
    # long
    # long
    def call_window_proc(hwnd, msg, w_param, l_param, force_select)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      if (!(self.attr_handle).equal?(hwnd))
        return OS._call_window_proc(self.attr_header_proc, hwnd, msg, w_param, l_param)
      end
      top_index = 0
      check_selection = false
      check_activate = false
      redraw = false
      case (msg)
      # Keyboard messages
      # 
      # Feature in Windows.  Windows sends LVN_ITEMACTIVATE from WM_KEYDOWN
      # instead of WM_CHAR.  This means that application code that expects
      # to consume the key press and therefore avoid a SWT.DefaultSelection
      # event will fail.  The fix is to ignore LVN_ITEMACTIVATE when it is
      # caused by WM_KEYDOWN and send SWT.DefaultSelection from WM_CHAR.
      # 
      # FALL THROUGH
      # FALL THROUGH
      # Scroll messages
      # FALL THROUGH
      # Resize messages
      # FALL THROUGH
      # Mouse messages
      # FALL THROUGH
      # Other messages
      when OS::WM_KEYDOWN
        check_activate = true
        redraw = !(find_image_control).nil? && get_drawing && OS._is_window_visible(self.attr_handle)
        if (redraw)
          # Feature in Windows.  When LVM_SETBKCOLOR is used with CLR_NONE
          # to make the background of the table transparent, drawing becomes
          # slow.  The fix is to temporarily clear CLR_NONE when redraw is
          # turned off.
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
          OS._send_message(self.attr_handle, OS::LVM_SETBKCOLOR, 0, 0xffffff)
        end
        check_selection = true
        if (!(find_image_control).nil?)
          # 64
          top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETTOPINDEX, 0, 0))
        end
      when OS::WM_CHAR, OS::WM_IME_CHAR, OS::WM_KEYUP, OS::WM_SYSCHAR, OS::WM_SYSKEYDOWN, OS::WM_SYSKEYUP, OS::WM_HSCROLL, OS::WM_VSCROLL, OS::WM_WINDOWPOSCHANGED
        redraw = !(find_image_control).nil? && get_drawing && OS._is_window_visible(self.attr_handle)
        if (redraw)
          # Feature in Windows.  When LVM_SETBKCOLOR is used with CLR_NONE
          # to make the background of the table transparent, drawing becomes
          # slow.  The fix is to temporarily clear CLR_NONE when redraw is
          # turned off.
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
          OS._send_message(self.attr_handle, OS::LVM_SETBKCOLOR, 0, 0)
        end
        check_selection = true
        if (!(find_image_control).nil?)
          # 64
          top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETTOPINDEX, 0, 0))
        end
      when OS::WM_LBUTTONDBLCLK, OS::WM_LBUTTONDOWN, OS::WM_LBUTTONUP, OS::WM_MBUTTONDBLCLK, OS::WM_MBUTTONDOWN, OS::WM_MBUTTONUP, OS::WM_MOUSEHOVER, OS::WM_MOUSELEAVE, OS::WM_MOUSEMOVE, OS::WM_MOUSEWHEEL, OS::WM_RBUTTONDBLCLK, OS::WM_RBUTTONDOWN, OS::WM_RBUTTONUP, OS::WM_XBUTTONDBLCLK, OS::WM_XBUTTONDOWN, OS::WM_XBUTTONUP
        check_selection = true
        if (!(find_image_control).nil?)
          # 64
          top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETTOPINDEX, 0, 0))
        end
      when OS::WM_SETFONT, OS::WM_TIMER
        if (!(find_image_control).nil?)
          # 64
          top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETTOPINDEX, 0, 0))
        end
      end
      old_selected = @was_selected
      if (check_selection)
        @was_selected = false
      end
      if (check_activate)
        @ignore_activate = true
      end
      # Bug in Windows.  For some reason, when the WS_EX_COMPOSITED
      # style is set in a parent of a table and the header is visible,
      # Windows issues an endless stream of WM_PAINT messages.  The
      # fix is to call BeginPaint() and EndPaint() outside of WM_PAINT
      # and pass the paint HDC in to the window proc.
      fix_paint = false
      if ((msg).equal?(OS::WM_PAINT))
        bits0 = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (((bits0 & OS::LVS_NOCOLUMNHEADER)).equal?(0))
          # long
          hwnd_parent = OS._get_parent(self.attr_handle)
          hwnd_owner = 0
          while (!(hwnd_parent).equal?(0))
            bits1 = OS._get_window_long(hwnd_parent, OS::GWL_EXSTYLE)
            if (!((bits1 & OS::WS_EX_COMPOSITED)).equal?(0))
              fix_paint = true
              break
            end
            hwnd_owner = OS._get_window(hwnd_parent, OS::GW_OWNER)
            if (!(hwnd_owner).equal?(0))
              break
            end
            hwnd_parent = OS._get_parent(hwnd_parent)
          end
        end
      end
      # Remove the scroll bars that Windows keeps automatically adding
      fix_scroll = false
      if (((self.attr_style & SWT::H_SCROLL)).equal?(0) || ((self.attr_style & SWT::V_SCROLL)).equal?(0))
        case (msg)
        when OS::WM_PAINT, OS::WM_NCPAINT, OS::WM_WINDOWPOSCHANGING
          bits = OS._get_window_long(hwnd, OS::GWL_STYLE)
          if (((self.attr_style & SWT::H_SCROLL)).equal?(0) && !((bits & OS::WS_HSCROLL)).equal?(0))
            fix_scroll = true
            bits &= ~OS::WS_HSCROLL
          end
          if (((self.attr_style & SWT::V_SCROLL)).equal?(0) && !((bits & OS::WS_VSCROLL)).equal?(0))
            fix_scroll = true
            bits &= ~OS::WS_VSCROLL
          end
          if (fix_scroll)
            OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
          end
        end
      end
      # long
      code = 0
      if (fix_paint)
        ps = PAINTSTRUCT.new
        # long
        h_dc = OS._begin_paint(hwnd, ps)
        code = OS._call_window_proc(TableProc, hwnd, OS::WM_PAINT, h_dc, l_param)
        OS._end_paint(hwnd, ps)
      else
        code = OS._call_window_proc(TableProc, hwnd, msg, w_param, l_param)
      end
      if (fix_scroll)
        flags = OS::RDW_FRAME | OS::RDW_INVALIDATE
        OS._redraw_window(self.attr_handle, nil, 0, flags)
      end
      if (check_activate)
        @ignore_activate = false
      end
      if (check_selection)
        if (@was_selected || force_select)
          event = Event.new
          # 64
          index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, -1, OS::LVNI_FOCUSED))
          if (!(index).equal?(-1))
            event.attr_item = __get_item(index)
          end
          post_event(SWT::Selection, event)
        end
        @was_selected = old_selected
      end
      case (msg)
      # Keyboard messages
      # FALL THROUGH
      # Scroll messages
      # FALL THROUGH
      # Resize messages
      # FALL THROUGH
      # Mouse messages
      # FALL THROUGH
      # Other messages
      when OS::WM_KEYDOWN, OS::WM_CHAR, OS::WM_IME_CHAR, OS::WM_KEYUP, OS::WM_SYSCHAR, OS::WM_SYSKEYDOWN, OS::WM_SYSKEYUP, OS::WM_HSCROLL, OS::WM_VSCROLL, OS::WM_WINDOWPOSCHANGED
        if (redraw)
          OS._send_message(self.attr_handle, OS::LVM_SETBKCOLOR, 0, OS::CLR_NONE)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._invalidate_rect(self.attr_handle, nil, true)
          # long
          hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
          if (!(hwnd_header).equal?(0))
            OS._invalidate_rect(hwnd_header, nil, true)
          end
        end
        if (!(find_image_control).nil?)
          if (!(top_index).equal?(OS._send_message(self.attr_handle, OS::LVM_GETTOPINDEX, 0, 0)))
            OS._invalidate_rect(self.attr_handle, nil, true)
          end
        end
      when OS::WM_LBUTTONDBLCLK, OS::WM_LBUTTONDOWN, OS::WM_LBUTTONUP, OS::WM_MBUTTONDBLCLK, OS::WM_MBUTTONDOWN, OS::WM_MBUTTONUP, OS::WM_MOUSEHOVER, OS::WM_MOUSELEAVE, OS::WM_MOUSEMOVE, OS::WM_MOUSEWHEEL, OS::WM_RBUTTONDBLCLK, OS::WM_RBUTTONDOWN, OS::WM_RBUTTONUP, OS::WM_XBUTTONDBLCLK, OS::WM_XBUTTONDOWN, OS::WM_XBUTTONUP, OS::WM_SETFONT, OS::WM_TIMER
        if (!(find_image_control).nil?)
          if (!(top_index).equal?(OS._send_message(self.attr_handle, OS::LVM_GETTOPINDEX, 0, 0)))
            OS._invalidate_rect(self.attr_handle, nil, true)
          end
        end
      when OS::WM_PAINT
        @painted = true
      end
      return code
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        # Feature in Windows.  Even when WS_HSCROLL or
        # WS_VSCROLL is not specified, Windows creates
        # trees and tables with scroll bars.  The fix
        # is to set H_SCROLL and V_SCROLL.
        # 
        # NOTE: This code appears on all platforms so that
        # applications have consistent scroll bar behavior.
        if (((style & SWT::NO_SCROLL)).equal?(0))
          style |= SWT::H_SCROLL | SWT::V_SCROLL
        end
        return check_bits(style, SWT::SINGLE, SWT::MULTI, 0, 0, 0, 0)
      end
    }
    
    typesig { [NMLVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _cdds_itempostpaint(nmcd, w_param, l_param)
      # long
      h_dc = nmcd.attr_hdc
      if (@explorer_theme && !@ignore_custom_draw)
        @hot_index = -1
        if (hooks(SWT::EraseItem) && !(nmcd.attr_left).equal?(nmcd.attr_right))
          OS._restore_dc(h_dc, -1)
        end
      end
      # Bug in Windows.  When the table has the extended style
      # LVS_EX_FULLROWSELECT and LVM_SETBKCOLOR is used with
      # CLR_NONE to make the table transparent, Windows fills
      # a black rectangle around any column that contains an
      # image.  The fix is clear LVS_EX_FULLROWSELECT during
      # custom draw.
      # 
      # NOTE: Since CDIS_FOCUS is cleared during custom draw,
      # it is necessary to draw the focus rectangle after the
      # item has been drawn.
      if (!@ignore_custom_draw && !@ignore_draw_focus && !(nmcd.attr_left).equal?(nmcd.attr_right))
        if (OS._is_window_visible(self.attr_handle) && OS._is_window_enabled(self.attr_handle))
          if (!@explorer_theme && !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
            # 64
            if ((RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))).equal?(OS::CLR_NONE))
              # 64
              dw_ex_style = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
              if (((dw_ex_style & OS::LVS_EX_FULLROWSELECT)).equal?(0))
                # if ((nmcd.uItemState & OS.CDIS_FOCUS) != 0) {
                if ((OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, -1, OS::LVNI_FOCUSED)).equal?(nmcd.attr_dw_item_spec))
                  if ((self.attr_handle).equal?(OS._get_focus))
                    # 64
                    ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
                    if (((ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
                      rect = RECT.new
                      rect.attr_left = OS::LVIR_BOUNDS
                      old_ignore = @ignore_custom_draw
                      @ignore_custom_draw = true
                      OS._send_message(self.attr_handle, OS::LVM_GETITEMRECT, nmcd.attr_dw_item_spec, rect)
                      # long
                      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
                      # 64
                      index = RJava.cast_to_int(OS._send_message(hwnd_header, OS::HDM_ORDERTOINDEX, 0, 0))
                      item_rect = RECT.new
                      if ((index).equal?(0))
                        item_rect.attr_left = OS::LVIR_LABEL
                        OS._send_message(self.attr_handle, OS::LVM_GETITEMRECT, index, item_rect)
                      else
                        item_rect.attr_top = index
                        item_rect.attr_left = OS::LVIR_ICON
                        OS._send_message(self.attr_handle, OS::LVM_GETSUBITEMRECT, nmcd.attr_dw_item_spec, item_rect)
                      end
                      @ignore_custom_draw = old_ignore
                      rect.attr_left = item_rect.attr_left
                      OS._draw_focus_rect(nmcd.attr_hdc, rect)
                    end
                  end
                end
              end
            end
          end
        end
      end
      return nil
    end
    
    typesig { [NMLVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _cdds_itemprepaint(nmcd, w_param, l_param)
      # Bug in Windows.  When the table has the extended style
      # LVS_EX_FULLROWSELECT and LVM_SETBKCOLOR is used with
      # CLR_NONE to make the table transparent, Windows fills
      # a black rectangle around any column that contains an
      # image.  The fix is clear LVS_EX_FULLROWSELECT during
      # custom draw.
      # 
      # NOTE: It is also necessary to clear CDIS_FOCUS to stop
      # the table from drawing the focus rectangle around the
      # first item instead of the full row.
      if (!@ignore_custom_draw)
        if (OS._is_window_visible(self.attr_handle) && OS._is_window_enabled(self.attr_handle))
          if (!@explorer_theme && !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
            # 64
            if ((RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))).equal?(OS::CLR_NONE))
              # 64
              dw_ex_style = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
              if (((dw_ex_style & OS::LVS_EX_FULLROWSELECT)).equal?(0))
                if (!((nmcd.attr_u_item_state & OS::CDIS_FOCUS)).equal?(0))
                  nmcd.attr_u_item_state &= ~OS::CDIS_FOCUS
                  OS._move_memory(l_param, nmcd, NMLVCUSTOMDRAW.attr_sizeof)
                end
              end
            end
          end
        end
      end
      if (@explorer_theme && !@ignore_custom_draw)
        # 64
        @hot_index = !((nmcd.attr_u_item_state & OS::CDIS_HOT)).equal?(0) ? RJava.cast_to_int(nmcd.attr_dw_item_spec) : -1
        if (hooks(SWT::EraseItem) && !(nmcd.attr_left).equal?(nmcd.attr_right))
          OS._save_dc(nmcd.attr_hdc)
          # long
          hrgn = OS._create_rect_rgn(0, 0, 0, 0)
          OS._select_clip_rgn(nmcd.attr_hdc, hrgn)
          OS._delete_object(hrgn)
        end
      end
      return LRESULT.new(OS::CDRF_NOTIFYSUBITEMDRAW | OS::CDRF_NOTIFYPOSTPAINT)
    end
    
    typesig { [NMLVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _cdds_postpaint(nmcd, w_param, l_param)
      if (@ignore_custom_draw)
        return nil
      end
      # Bug in Windows.  When the table has the extended style
      # LVS_EX_FULLROWSELECT and LVM_SETBKCOLOR is used with
      # CLR_NONE to make the table transparent, Windows fills
      # a black rectangle around any column that contains an
      # image.  The fix is clear LVS_EX_FULLROWSELECT during
      # custom draw.
      if (((@custom_count -= 1)).equal?(0) && OS._is_window_visible(self.attr_handle))
        if (!@explorer_theme && !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          # 64
          if ((RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))).equal?(OS::CLR_NONE))
            # 64
            dw_ex_style = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
            if (((dw_ex_style & OS::LVS_EX_FULLROWSELECT)).equal?(0))
              bits = OS::LVS_EX_FULLROWSELECT
              # Feature in Windows.  When LVM_SETEXTENDEDLISTVIEWSTYLE is
              # used to set or clear the extended style bits and the table
              # has a tooltip, the tooltip is hidden.  The fix is to clear
              # the tooltip before setting the bits and then reset it.
              # 
              # long
              hwnd_tool_tip = OS._send_message(self.attr_handle, OS::LVM_SETTOOLTIPS, 0, 0)
              if (OS::IsWinCE)
                rect = RECT.new
                damaged = OS._get_update_rect(self.attr_handle, rect, true)
                OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, bits, bits)
                OS._validate_rect(self.attr_handle, nil)
                if (damaged)
                  OS._invalidate_rect(self.attr_handle, rect, true)
                end
              else
                # long
                rgn = OS._create_rect_rgn(0, 0, 0, 0)
                result = OS._get_update_rgn(self.attr_handle, rgn, true)
                OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, bits, bits)
                OS._validate_rect(self.attr_handle, nil)
                if (!(result).equal?(OS::NULLREGION))
                  OS._invalidate_rgn(self.attr_handle, rgn, true)
                end
                OS._delete_object(rgn)
              end
              # Bug in Windows.  Despite the documentation, LVM_SETTOOLTIPS
              # uses WPARAM instead of LPARAM for the new tooltip  The fix
              # is to put the tooltip in both parameters.
              hwnd_tool_tip = OS._send_message(self.attr_handle, OS::LVM_SETTOOLTIPS, hwnd_tool_tip, hwnd_tool_tip)
            end
          end
        end
      end
      return nil
    end
    
    typesig { [NMLVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _cdds_prepaint(nmcd, w_param, l_param)
      if (@ignore_custom_draw)
        return LRESULT.new(OS::CDRF_NOTIFYITEMDRAW | OS::CDRF_NOTIFYPOSTPAINT)
      end
      # Bug in Windows.  When the table has the extended style
      # LVS_EX_FULLROWSELECT and LVM_SETBKCOLOR is used with
      # CLR_NONE to make the table transparent, Windows fills
      # a black rectangle around any column that contains an
      # image.  The fix is clear LVS_EX_FULLROWSELECT during
      # custom draw.
      if ((((@custom_count += 1) - 1)).equal?(0) && OS._is_window_visible(self.attr_handle))
        if (!@explorer_theme && !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          # 64
          if ((RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))).equal?(OS::CLR_NONE))
            # 64
            dw_ex_style = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
            if (!((dw_ex_style & OS::LVS_EX_FULLROWSELECT)).equal?(0))
              bits = OS::LVS_EX_FULLROWSELECT
              # Feature in Windows.  When LVM_SETEXTENDEDLISTVIEWSTYLE is
              # used to set or clear the extended style bits and the table
              # has a tooltip, the tooltip is hidden.  The fix is to clear
              # the tooltip before setting the bits and then reset it.
              # 
              # long
              hwnd_tool_tip = OS._send_message(self.attr_handle, OS::LVM_SETTOOLTIPS, 0, 0)
              if (OS::IsWinCE)
                rect = RECT.new
                damaged = OS._get_update_rect(self.attr_handle, rect, true)
                OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, bits, 0)
                OS._validate_rect(self.attr_handle, nil)
                if (damaged)
                  OS._invalidate_rect(self.attr_handle, rect, true)
                end
              else
                # long
                rgn = OS._create_rect_rgn(0, 0, 0, 0)
                result = OS._get_update_rgn(self.attr_handle, rgn, true)
                OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, bits, 0)
                OS._validate_rect(self.attr_handle, nil)
                if (!(result).equal?(OS::NULLREGION))
                  OS._invalidate_rgn(self.attr_handle, rgn, true)
                end
                OS._delete_object(rgn)
              end
              # Bug in Windows.  Despite the documentation, LVM_SETTOOLTIPS
              # uses WPARAM instead of LPARAM for the new tooltip  The fix
              # is to put the tooltip in both parameters.
              hwnd_tool_tip = OS._send_message(self.attr_handle, OS::LVM_SETTOOLTIPS, hwnd_tool_tip, hwnd_tool_tip)
            end
          end
        end
      end
      if (OS._is_window_visible(self.attr_handle))
        draw = true
        # Feature in Windows.  On Vista using the explorer theme,
        # Windows draws a vertical line to separate columns.  When
        # there is only a single column, the line looks strange.
        # The fix is to draw the background using custom draw.
        if (@explorer_theme && (@column_count).equal?(0))
          # long
          h_dc = nmcd.attr_hdc
          rect = RECT.new
          OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
          if (OS._is_window_enabled(self.attr_handle) || !(find_image_control).nil?)
            draw_background(h_dc, rect)
          else
            fill_background(h_dc, OS._get_sys_color(OS::COLOR_3DFACE), rect)
          end
          draw = false
        end
        if (draw)
          control = find_background_control
          if (!(control).nil? && !(control.attr_background_image).nil?)
            rect = RECT.new
            OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
            fill_image_background(nmcd.attr_hdc, control, rect)
          else
            # 64
            if ((RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))).equal?(OS::CLR_NONE))
              if (OS._is_window_enabled(self.attr_handle))
                rect = RECT.new
                OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
                if ((control).nil?)
                  control = self
                end
                fill_background(nmcd.attr_hdc, control.get_background_pixel, rect)
                if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
                  if (!(@sort_column).nil? && !(@sort_direction).equal?(SWT::NONE))
                    index = index_of(@sort_column)
                    if (!(index).equal?(-1))
                      self.attr_parent.force_resize
                      clr_sort_bk = get_sort_column_pixel
                      column_rect = RECT.new
                      header_rect = RECT.new
                      OS._get_client_rect(self.attr_handle, column_rect)
                      # long
                      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
                      if (!(OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)).equal?(0))
                        OS._map_window_points(hwnd_header, self.attr_handle, header_rect, 2)
                        column_rect.attr_left = header_rect.attr_left
                        column_rect.attr_right = header_rect.attr_right
                        if (OS._intersect_rect(column_rect, column_rect, rect))
                          fill_background(nmcd.attr_hdc, clr_sort_bk, column_rect)
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
      return LRESULT.new(OS::CDRF_NOTIFYITEMDRAW | OS::CDRF_NOTIFYPOSTPAINT)
    end
    
    typesig { [NMLVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _cdds_subitempostpaint(nmcd, w_param, l_param)
      if (@ignore_custom_draw)
        return nil
      end
      if ((nmcd.attr_left).equal?(nmcd.attr_right))
        return LRESULT.new(OS::CDRF_DODEFAULT)
      end
      # long
      h_dc = nmcd.attr_hdc
      if (@ignore_draw_foreground)
        OS._restore_dc(h_dc, -1)
      end
      if (OS._is_window_visible(self.attr_handle))
        # Feature in Windows.  When there is a sort column, the sort column
        # color draws on top of the background color for an item.  The fix
        # is to clear the sort column in CDDS_SUBITEMPREPAINT, and reset it
        # in CDDS_SUBITEMPOSTPAINT.
        # 
        # 64
        if (!(RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))).equal?(OS::CLR_NONE))
          if (!((@sort_direction & (SWT::UP | SWT::DOWN))).equal?(0))
            if (!(@sort_column).nil? && !@sort_column.is_disposed)
              # 64
              old_column = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETSELECTEDCOLUMN, 0, 0))
              if ((old_column).equal?(-1))
                new_column = index_of(@sort_column)
                result = 0
                # long
                rgn = 0
                if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
                  rgn = OS._create_rect_rgn(0, 0, 0, 0)
                  result = OS._get_update_rgn(self.attr_handle, rgn, true)
                end
                OS._send_message(self.attr_handle, OS::LVM_SETSELECTEDCOLUMN, new_column, 0)
                if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
                  OS._validate_rect(self.attr_handle, nil)
                  if (!(result).equal?(OS::NULLREGION))
                    OS._invalidate_rgn(self.attr_handle, rgn, true)
                  end
                  OS._delete_object(rgn)
                end
              end
            end
          end
        end
        if (hooks(SWT::PaintItem))
          # 64
          item = __get_item(RJava.cast_to_int(nmcd.attr_dw_item_spec))
          send_paint_item_event(item, nmcd)
          # widget could be disposed at this point
        end
        if (!@ignore_draw_focus && !(@focus_rect).nil?)
          OS._set_text_color(nmcd.attr_hdc, 0)
          OS._set_bk_color(nmcd.attr_hdc, 0xffffff)
          OS._draw_focus_rect(nmcd.attr_hdc, @focus_rect)
          @focus_rect = nil
        end
      end
      return nil
    end
    
    typesig { [NMLVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _cdds_subitemprepaint(nmcd, w_param, l_param)
      # long
      h_dc = nmcd.attr_hdc
      if (@explorer_theme && !@ignore_custom_draw && hooks(SWT::EraseItem) && (!(nmcd.attr_left).equal?(nmcd.attr_right)))
        OS._restore_dc(h_dc, -1)
      end
      # Feature in Windows.  When a new table item is inserted
      # using LVM_INSERTITEM in a table that is transparent
      # (ie. LVM_SETBKCOLOR has been called with CLR_NONE),
      # TVM_INSERTITEM calls NM_CUSTOMDRAW before the new item
      # has been added to the array.  The fix is to check for
      # null.
      # 
      # 64
      item = __get_item(RJava.cast_to_int(nmcd.attr_dw_item_spec))
      if ((item).nil? || item.is_disposed)
        return nil
      end
      # long
      h_font = item.font_handle(nmcd.attr_i_sub_item)
      if (!(h_font).equal?(-1))
        OS._select_object(h_dc, h_font)
      end
      if (@ignore_custom_draw || ((nmcd.attr_left).equal?(nmcd.attr_right)))
        return LRESULT.new((h_font).equal?(-1) ? OS::CDRF_DODEFAULT : OS::CDRF_NEWFONT)
      end
      code = OS::CDRF_DODEFAULT
      @selection_foreground = -1
      @ignore_draw_foreground = @ignore_draw_selection = @ignore_draw_focus = @ignore_draw_background = false
      if (OS._is_window_visible(self.attr_handle))
        measure_event = nil
        if (hooks(SWT::MeasureItem))
          # 64
          measure_event = send_measure_item_event(item, RJava.cast_to_int(nmcd.attr_dw_item_spec), nmcd.attr_i_sub_item, nmcd.attr_hdc)
          if (is_disposed || item.is_disposed)
            return nil
          end
        end
        if (hooks(SWT::EraseItem))
          send_erase_item_event(item, nmcd, l_param, measure_event)
          if (is_disposed || item.is_disposed)
            return nil
          end
          code |= OS::CDRF_NOTIFYPOSTPAINT
        end
        if (@ignore_draw_foreground || hooks(SWT::PaintItem))
          code |= OS::CDRF_NOTIFYPOSTPAINT
        end
      end
      clr_text = !(item.attr_cell_foreground).nil? ? item.attr_cell_foreground[nmcd.attr_i_sub_item] : -1
      if ((clr_text).equal?(-1))
        clr_text = item.attr_foreground
      end
      clr_text_bk = !(item.attr_cell_background).nil? ? item.attr_cell_background[nmcd.attr_i_sub_item] : -1
      if ((clr_text_bk).equal?(-1))
        clr_text_bk = item.attr_background
      end
      if (!(@selection_foreground).equal?(-1))
        clr_text = @selection_foreground
      end
      # Bug in Windows.  When the table has the extended style
      # LVS_EX_FULLROWSELECT and LVM_SETBKCOLOR is used with
      # CLR_NONE to make the table transparent, Windows draws
      # a black rectangle around any column that contains an
      # image.  The fix is emulate LVS_EX_FULLROWSELECT by
      # drawing the selection.
      if (OS._is_window_visible(self.attr_handle) && OS._is_window_enabled(self.attr_handle))
        if (!@explorer_theme && !@ignore_draw_selection && !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          # 64
          bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
          if (((bits & OS::LVS_EX_FULLROWSELECT)).equal?(0))
            # Bug in Windows.  For some reason, CDIS_SELECTED always set,
            # even for items that are not selected.  The fix is to get
            # the selection state from the item.
            lv_item = LVITEM.new
            lv_item.attr_mask = OS::LVIF_STATE
            lv_item.attr_state_mask = OS::LVIS_SELECTED
            # 64
            lv_item.attr_i_item = RJava.cast_to_int(nmcd.attr_dw_item_spec)
            # long
            result = OS._send_message(self.attr_handle, OS::LVM_GETITEM, 0, lv_item)
            if ((!(result).equal?(0) && !((lv_item.attr_state & OS::LVIS_SELECTED)).equal?(0)))
              clr_selection = -1
              if ((nmcd.attr_i_sub_item).equal?(0))
                if ((OS._get_focus).equal?(self.attr_handle) || self.attr_display.get_high_contrast)
                  clr_selection = OS._get_sys_color(OS::COLOR_HIGHLIGHT)
                else
                  if (((self.attr_style & SWT::HIDE_SELECTION)).equal?(0))
                    clr_selection = OS._get_sys_color(OS::COLOR_3DFACE)
                  end
                end
              else
                if ((OS._get_focus).equal?(self.attr_handle) || self.attr_display.get_high_contrast)
                  clr_text = OS._get_sys_color(OS::COLOR_HIGHLIGHTTEXT)
                  clr_text_bk = clr_selection = OS._get_sys_color(OS::COLOR_HIGHLIGHT)
                else
                  if (((self.attr_style & SWT::HIDE_SELECTION)).equal?(0))
                    clr_text_bk = clr_selection = OS._get_sys_color(OS::COLOR_3DFACE)
                  end
                end
              end
              if (!(clr_selection).equal?(-1))
                # 64
                rect = item.get_bounds(RJava.cast_to_int(nmcd.attr_dw_item_spec), nmcd.attr_i_sub_item, true, !(nmcd.attr_i_sub_item).equal?(0), true, false, h_dc)
                fill_background(h_dc, clr_selection, rect)
              end
            end
          end
        end
      end
      if (!@ignore_draw_foreground)
        # Bug in Windows.  When the attributes are for one cell in a table,
        # Windows does not reset them for the next cell.  As a result, all
        # subsequent cells are drawn using the previous font, foreground and
        # background colors.  The fix is to set the all attributes when any
        # attribute could have changed.
        has_attributes = true
        if ((h_font).equal?(-1) && (clr_text).equal?(-1) && (clr_text_bk).equal?(-1))
          if ((item.attr_cell_foreground).nil? && (item.attr_cell_background).nil? && (item.attr_cell_font).nil?)
            # long
            hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
            # 64
            count = RJava.cast_to_int(OS._send_message(hwnd_header, OS::HDM_GETITEMCOUNT, 0, 0))
            if ((count).equal?(1))
              has_attributes = false
            end
          end
        end
        if (has_attributes)
          if ((h_font).equal?(-1))
            h_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
          end
          OS._select_object(h_dc, h_font)
          if (OS._is_window_enabled(self.attr_handle))
            nmcd.attr_clr_text = (clr_text).equal?(-1) ? get_foreground_pixel : clr_text
            if ((clr_text_bk).equal?(-1))
              nmcd.attr_clr_text_bk = OS::CLR_NONE
              if ((@selection_foreground).equal?(-1))
                control = find_background_control
                if ((control).nil?)
                  control = self
                end
                if ((control.attr_background_image).nil?)
                  # 64
                  if (!(RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))).equal?(OS::CLR_NONE))
                    nmcd.attr_clr_text_bk = control.get_background_pixel
                  end
                end
              end
            else
              nmcd.attr_clr_text_bk = !(@selection_foreground).equal?(-1) ? OS::CLR_NONE : clr_text_bk
            end
            OS._move_memory(l_param, nmcd, NMLVCUSTOMDRAW.attr_sizeof)
          end
          code |= OS::CDRF_NEWFONT
        end
      end
      if (OS._is_window_enabled(self.attr_handle))
        # Feature in Windows.  When there is a sort column, the sort column
        # color draws on top of the background color for an item.  The fix
        # is to clear the sort column in CDDS_SUBITEMPREPAINT, and reset it
        # in CDDS_SUBITEMPOSTPAINT.
        if (!(clr_text_bk).equal?(-1))
          # 64
          old_column = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETSELECTEDCOLUMN, 0, 0))
          if (!(old_column).equal?(-1) && (old_column).equal?(nmcd.attr_i_sub_item))
            result = 0
            # long
            rgn = 0
            if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
              rgn = OS._create_rect_rgn(0, 0, 0, 0)
              result = OS._get_update_rgn(self.attr_handle, rgn, true)
            end
            OS._send_message(self.attr_handle, OS::LVM_SETSELECTEDCOLUMN, -1, 0)
            if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
              OS._validate_rect(self.attr_handle, nil)
              if (!(result).equal?(OS::NULLREGION))
                OS._invalidate_rgn(self.attr_handle, rgn, true)
              end
              OS._delete_object(rgn)
            end
            code |= OS::CDRF_NOTIFYPOSTPAINT
          end
        end
      else
        # Feature in Windows.  When the table is disabled, it draws
        # with a gray background but does not gray the text.  The fix
        # is to explicitly gray the text.
        nmcd.attr_clr_text = OS._get_sys_color(OS::COLOR_GRAYTEXT)
        if (!(find_image_control).nil?)
          nmcd.attr_clr_text_bk = OS::CLR_NONE
        else
          nmcd.attr_clr_text_bk = OS._get_sys_color(OS::COLOR_3DFACE)
        end
        nmcd.attr_u_item_state &= ~OS::CDIS_SELECTED
        OS._move_memory(l_param, nmcd, NMLVCUSTOMDRAW.attr_sizeof)
        code |= OS::CDRF_NEWFONT
      end
      return LRESULT.new(code)
    end
    
    typesig { [] }
    def check_buffered
      super
      if (OS::COMCTL32_MAJOR >= 6)
        self.attr_style |= SWT::DOUBLE_BUFFERED
      end
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        self.attr_style |= SWT::DOUBLE_BUFFERED
      end
    end
    
    typesig { [TableItem, ::Java::Boolean] }
    def check_data(item, redraw)
      if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
        return true
      end
      return check_data(item, index_of(item), redraw)
    end
    
    typesig { [TableItem, ::Java::Int, ::Java::Boolean] }
    def check_data(item, index, redraw)
      if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
        return true
      end
      if (!item.attr_cached)
        item.attr_cached = true
        event = Event.new
        event.attr_item = item
        event.attr_index = index
        @current_item = item
        send_event(SWT::SetData, event)
        # widget could be disposed at this point
        @current_item = nil
        if (is_disposed || item.is_disposed)
          return false
        end
        if (redraw)
          if (!set_scroll_width(item, false))
            item.redraw
          end
        end
      end
      return true
    end
    
    typesig { [::Java::Int] }
    # long
    def check_handle(hwnd)
      if ((hwnd).equal?(self.attr_handle))
        return true
      end
      return (hwnd).equal?(OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0))
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int] }
    # Clears the item at the given zero-relative index in the receiver.
    # The text, icon and other attributes of the item are set to the default
    # value.  If the table was created with the <code>SWT.VIRTUAL</code> style,
    # these attributes are requested again as needed.
    # 
    # @param index the index of the item to clear
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.0
    def clear(index)
      check_widget
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if (!(0 <= index && index < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      item = @items[index]
      if (!(item).nil?)
        if (!(item).equal?(@current_item))
          item.clear
        end
        # Bug in Windows.  Despite the fact that every item in the
        # table always has LPSTR_TEXTCALLBACK, Windows caches the
        # bounds for the selected items.  This means that
        # when you change the string to be something else, Windows
        # correctly asks you for the new string but when the item
        # is selected, the selection draws using the bounds of the
        # previous item.  The fix is to reset LPSTR_TEXTCALLBACK
        # even though it has not changed, causing Windows to flush
        # cached bounds.
        if (((self.attr_style & SWT::VIRTUAL)).equal?(0) && item.attr_cached)
          lv_item = LVITEM.new
          lv_item.attr_mask = OS::LVIF_TEXT | OS::LVIF_INDENT
          lv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
          lv_item.attr_i_item = index
          OS._send_message(self.attr_handle, OS::LVM_SETITEM, 0, lv_item)
          item.attr_cached = false
        end
        if ((@current_item).nil? && get_drawing && OS._is_window_visible(self.attr_handle))
          OS._send_message(self.attr_handle, OS::LVM_REDRAWITEMS, index, index)
        end
        set_scroll_width(item, false)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Removes the items from the receiver which are between the given
    # zero-relative start and end indices (inclusive).  The text, icon
    # and other attributes of the items are set to their default values.
    # If the table was created with the <code>SWT.VIRTUAL</code> style,
    # these attributes are requested again as needed.
    # 
    # @param start the start index of the item to clear
    # @param end the end index of the item to clear
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if either the start or end are not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.0
    def clear(start, end_)
      check_widget
      if (start > end_)
        return
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if (!(0 <= start && start <= end_ && end_ < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((start).equal?(0) && (end_).equal?(count - 1))
        clear_all
      else
        lv_item = nil
        cleared = false
        i = start
        while i <= end_
          item = @items[i]
          if (!(item).nil?)
            if (!(item).equal?(@current_item))
              cleared = true
              item.clear
            end
            # Bug in Windows.  Despite the fact that every item in the
            # table always has LPSTR_TEXTCALLBACK, Windows caches the
            # bounds for the selected items.  This means that
            # when you change the string to be something else, Windows
            # correctly asks you for the new string but when the item
            # is selected, the selection draws using the bounds of the
            # previous item.  The fix is to reset LPSTR_TEXTCALLBACK
            # even though it has not changed, causing Windows to flush
            # cached bounds.
            if (((self.attr_style & SWT::VIRTUAL)).equal?(0) && item.attr_cached)
              if ((lv_item).nil?)
                lv_item = LVITEM.new
                lv_item.attr_mask = OS::LVIF_TEXT | OS::LVIF_INDENT
                lv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
              end
              lv_item.attr_i_item = i
              OS._send_message(self.attr_handle, OS::LVM_SETITEM, 0, lv_item)
              item.attr_cached = false
            end
          end
          i += 1
        end
        if (cleared)
          if ((@current_item).nil? && get_drawing && OS._is_window_visible(self.attr_handle))
            OS._send_message(self.attr_handle, OS::LVM_REDRAWITEMS, start, end_)
          end
          item = (start).equal?(end_) ? @items[start] : nil
          set_scroll_width(item, false)
        end
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Clears the items at the given zero-relative indices in the receiver.
    # The text, icon and other attributes of the items are set to their default
    # values.  If the table was created with the <code>SWT.VIRTUAL</code> style,
    # these attributes are requested again as needed.
    # 
    # @param indices the array of indices of the items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # <li>ERROR_NULL_ARGUMENT - if the indices array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.0
    def clear(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((indices.attr_length).equal?(0))
        return
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      i = 0
      while i < indices.attr_length
        if (!(0 <= indices[i] && indices[i] < count))
          error(SWT::ERROR_INVALID_RANGE)
        end
        i += 1
      end
      lv_item = nil
      cleared = false
      i_ = 0
      while i_ < indices.attr_length
        index = indices[i_]
        item = @items[index]
        if (!(item).nil?)
          if (!(item).equal?(@current_item))
            cleared = true
            item.clear
          end
          # Bug in Windows.  Despite the fact that every item in the
          # table always has LPSTR_TEXTCALLBACK, Windows caches the
          # bounds for the selected items.  This means that
          # when you change the string to be something else, Windows
          # correctly asks you for the new string but when the item
          # is selected, the selection draws using the bounds of the
          # previous item.  The fix is to reset LPSTR_TEXTCALLBACK
          # even though it has not changed, causing Windows to flush
          # cached bounds.
          if (((self.attr_style & SWT::VIRTUAL)).equal?(0) && item.attr_cached)
            if ((lv_item).nil?)
              lv_item = LVITEM.new
              lv_item.attr_mask = OS::LVIF_TEXT | OS::LVIF_INDENT
              lv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
            end
            lv_item.attr_i_item = i_
            OS._send_message(self.attr_handle, OS::LVM_SETITEM, 0, lv_item)
            item.attr_cached = false
          end
          if ((@current_item).nil? && get_drawing && OS._is_window_visible(self.attr_handle))
            OS._send_message(self.attr_handle, OS::LVM_REDRAWITEMS, index, index)
          end
        end
        i_ += 1
      end
      if (cleared)
        set_scroll_width(nil, false)
      end
    end
    
    typesig { [] }
    # Clears all the items in the receiver. The text, icon and other
    # attributes of the items are set to their default values. If the
    # table was created with the <code>SWT.VIRTUAL</code> style, these
    # attributes are requested again as needed.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.0
    def clear_all
      check_widget
      lv_item = nil
      cleared = false
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      i = 0
      while i < count
        item = @items[i]
        if (!(item).nil?)
          if (!(item).equal?(@current_item))
            cleared = true
            item.clear
          end
          # Bug in Windows.  Despite the fact that every item in the
          # table always has LPSTR_TEXTCALLBACK, Windows caches the
          # bounds for the selected items.  This means that
          # when you change the string to be something else, Windows
          # correctly asks you for the new string but when the item
          # is selected, the selection draws using the bounds of the
          # previous item.  The fix is to reset LPSTR_TEXTCALLBACK
          # even though it has not changed, causing Windows to flush
          # cached bounds.
          if (((self.attr_style & SWT::VIRTUAL)).equal?(0) && item.attr_cached)
            if ((lv_item).nil?)
              lv_item = LVITEM.new
              lv_item.attr_mask = OS::LVIF_TEXT | OS::LVIF_INDENT
              lv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
            end
            lv_item.attr_i_item = i
            OS._send_message(self.attr_handle, OS::LVM_SETITEM, 0, lv_item)
            item.attr_cached = false
          end
        end
        i += 1
      end
      if (cleared)
        if ((@current_item).nil? && get_drawing && OS._is_window_visible(self.attr_handle))
          OS._send_message(self.attr_handle, OS::LVM_REDRAWITEMS, 0, count - 1)
        end
        set_scroll_width(nil, false)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (@fix_scroll_width)
        set_scroll_width(nil, true)
      end
      # This code is intentionally commented
      # if (itemHeight == -1 && hooks (SWT.MeasureItem)) {
      # int i = 0;
      # TableItem item = items [i];
      # if (item != null) {
      # int hDC = OS.GetDC (handle);
      # int oldFont = 0, newFont = OS.SendMessage (handle, OS.WM_GETFONT, 0, 0);
      # if (newFont != 0) oldFont = OS.SelectObject (hDC, newFont);
      # int index = 0, count = Math.max (1, columnCount);
      # while (index < count) {
      # int hFont = item.cellFont != null ? item.cellFont [index] : -1;
      # if (hFont == -1) hFont = item.font;
      # if (hFont != -1) hFont = OS.SelectObject (hDC, hFont);
      # sendMeasureItemEvent (item, i, index, hDC);
      # if (hFont != -1) hFont = OS.SelectObject (hDC, hFont);
      # if (isDisposed () || item.isDisposed ()) break;
      # index++;
      # }
      # if (newFont != 0) OS.SelectObject (hDC, oldFont);
      # OS.ReleaseDC (handle, hDC);
      # }
      # }
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      rect = RECT.new
      OS._get_window_rect(hwnd_header, rect)
      height = rect.attr_bottom - rect.attr_top
      bits = 0
      if (!(w_hint).equal?(SWT::DEFAULT))
        bits |= w_hint & 0xffff
      else
        width = 0
        # 64
        count = RJava.cast_to_int(OS._send_message(hwnd_header, OS::HDM_GETITEMCOUNT, 0, 0))
        i = 0
        while i < count
          width += OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNWIDTH, i, 0)
          i += 1
        end
        bits |= width & 0xffff
      end
      # long
      result = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, -1, OS._makelparam(bits, 0xffff))
      width = OS._loword(result)
      # long
      empty = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 0, 0)
      # long
      one_item = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 1, 0)
      item_height = OS._hiword(one_item) - OS._hiword(empty)
      # 64
      height += RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0)) * item_height
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
      border = get_border_width
      width += border * 2
      height += border * 2
      if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
        width += OS._get_system_metrics(OS::SM_CXVSCROLL)
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        height += OS._get_system_metrics(OS::SM_CYHSCROLL)
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      super
      self.attr_state &= ~(CANVAS | THEME_BACKGROUND)
      # Use the Explorer theme
      if (EXPLORER_THEME)
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0) && OS._is_app_themed)
          @explorer_theme = true
          OS._set_window_theme(self.attr_handle, Display::EXPLORER, nil)
        end
      end
      # Get the header window proc
      if ((self.attr_header_proc).equal?(0))
        # long
        hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
        self.attr_header_proc = OS._get_window_long_ptr(hwnd_header, OS::GWLP_WNDPROC)
      end
      # Feature in Windows.  In version 5.8 of COMCTL32.DLL,
      # if the font is changed for an item, the bounds for the
      # item are not updated, causing the text to be clipped.
      # The fix is to detect the version of COMCTL32.DLL, and
      # if it is one of the versions with the problem, then
      # use version 5.00 of the control (a version that does
      # not have the problem).  This is the recommended work
      # around from the MSDN.
      if (!OS::IsWinCE)
        if (OS::COMCTL32_MAJOR < 6)
          OS._send_message(self.attr_handle, OS::CCM_SETVERSION, 5, 0)
        end
      end
      # This code is intentionally commented.  According to
      # the documentation, setting the default item size is
      # supposed to improve performance.  By experimentation,
      # this does not seem to have much of an effect.
      # 
      # OS.SendMessage (handle, OS.LVM_SETITEMCOUNT, 1024 * 2, 0);
      # Set the checkbox image list
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        # long
        empty = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 0, 0)
        # long
        one_item = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 1, 0)
        width = OS._hiword(one_item) - OS._hiword(empty)
        height = width
        set_checkbox_image_list(width, height, false)
        OS._send_message(self.attr_handle, OS::LVM_SETCALLBACKMASK, OS::LVIS_STATEIMAGEMASK, 0)
      end
      # Feature in Windows.  When the control is created,
      # it does not use the default system font.  A new HFONT
      # is created and destroyed when the control is destroyed.
      # This means that a program that queries the font from
      # this control, uses the font in another control and then
      # destroys this control will have the font unexpectedly
      # destroyed in the other control.  The fix is to assign
      # the font ourselves each time the control is created.
      # The control will not destroy a font that it did not
      # create.
      # 
      # long
      h_font = OS._get_stock_object(OS::SYSTEM_FONT)
      OS._send_message(self.attr_handle, OS::WM_SETFONT, h_font, 0)
      # Bug in Windows.  When the first column is inserted
      # without setting the header text, Windows will never
      # allow the header text for the first column to be set.
      # The fix is to set the text to an empty string when
      # the column is inserted.
      lv_column = LVCOLUMN.new
      lv_column.attr_mask = OS::LVCF_TEXT | OS::LVCF_WIDTH
      # long
      h_heap = OS._get_process_heap
      # long
      psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, TCHAR.attr_sizeof)
      lv_column.attr_psz_text = psz_text
      OS._send_message(self.attr_handle, OS::LVM_INSERTCOLUMN, 0, lv_column)
      OS._heap_free(h_heap, 0, psz_text)
      # Set the extended style bits
      bits1 = OS::LVS_EX_LABELTIP
      if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
        bits1 |= OS::LVS_EX_FULLROWSELECT
      end
      if (OS::COMCTL32_MAJOR >= 6)
        bits1 |= OS::LVS_EX_DOUBLEBUFFER
      end
      OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, bits1, bits1)
      # Feature in Windows.  Windows does not explicitly set the orientation of
      # the header.  Instead, the orientation is inherited when WS_EX_LAYOUTRTL
      # is specified for the table.  This means that when both WS_EX_LAYOUTRTL
      # and WS_EX_NOINHERITLAYOUT are specified for the table, the header will
      # not be oriented correctly.  The fix is to explicitly set the orientation
      # for the header.
      # 
      # NOTE: WS_EX_LAYOUTRTL is not supported on Windows NT.
      if (OS::WIN32_VERSION >= OS._version(4, 10))
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          # long
          hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
          bits2 = OS._get_window_long(hwnd_header, OS::GWL_EXSTYLE)
          OS._set_window_long(hwnd_header, OS::GWL_EXSTYLE, bits2 | OS::WS_EX_LAYOUTRTL)
          # long
          hwnd_tooltop = OS._send_message(self.attr_handle, OS::LVM_GETTOOLTIPS, 0, 0)
          bits3 = OS._get_window_long(hwnd_tooltop, OS::GWL_EXSTYLE)
          OS._set_window_long(hwnd_tooltop, OS::GWL_EXSTYLE, bits3 | OS::WS_EX_LAYOUTRTL)
        end
      end
    end
    
    typesig { [] }
    def create_header_tool_tips
      if (OS::IsWinCE)
        return
      end
      if (!(@header_tool_tip_handle).equal?(0))
        return
      end
      bits = 0
      if (OS::WIN32_VERSION >= OS._version(4, 10))
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          bits |= OS::WS_EX_LAYOUTRTL
        end
      end
      @header_tool_tip_handle = OS._create_window_ex(bits, TCHAR.new(0, OS::TOOLTIPS_CLASS, true), nil, OS::TTS_NOPREFIX, OS::CW_USEDEFAULT, 0, OS::CW_USEDEFAULT, 0, self.attr_handle, 0, OS._get_module_handle(nil), nil)
      if ((@header_tool_tip_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # Feature in Windows.  Despite the fact that the
      # tool tip text contains \r\n, the tooltip will
      # not honour the new line unless TTM_SETMAXTIPWIDTH
      # is set.  The fix is to set TTM_SETMAXTIPWIDTH to
      # a large value.
      OS._send_message(@header_tool_tip_handle, OS::TTM_SETMAXTIPWIDTH, 0, 0x7fff)
    end
    
    typesig { [TableColumn, ::Java::Int] }
    def create_item(column, index)
      if (!(0 <= index && index <= @column_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # 64
      old_column = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETSELECTEDCOLUMN, 0, 0))
      if (old_column >= index)
        OS._send_message(self.attr_handle, OS::LVM_SETSELECTEDCOLUMN, old_column + 1, 0)
      end
      if ((@column_count).equal?(@columns.attr_length))
        new_columns = Array.typed(TableColumn).new(@columns.attr_length + 4) { nil }
        System.arraycopy(@columns, 0, new_columns, 0, @columns.attr_length)
        @columns = new_columns
      end
      # 64
      item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      i = 0
      while i < item_count
        item = @items[i]
        if (!(item).nil?)
          strings = item.attr_strings
          if (!(strings).nil?)
            temp = Array.typed(String).new(@column_count + 1) { nil }
            System.arraycopy(strings, 0, temp, 0, index)
            System.arraycopy(strings, index, temp, index + 1, @column_count - index)
            item.attr_strings = temp
          end
          images = item.attr_images
          if (!(images).nil?)
            temp = Array.typed(Image).new(@column_count + 1) { nil }
            System.arraycopy(images, 0, temp, 0, index)
            System.arraycopy(images, index, temp, index + 1, @column_count - index)
            item.attr_images = temp
          end
          if ((index).equal?(0))
            if (!(@column_count).equal?(0))
              if ((strings).nil?)
                item.attr_strings = Array.typed(String).new(@column_count + 1) { nil }
                item.attr_strings[1] = item.attr_text
              end
              item.attr_text = "" # $NON-NLS-1$
              if ((images).nil?)
                item.attr_images = Array.typed(Image).new(@column_count + 1) { nil }
                item.attr_images[1] = item.attr_image
              end
              item.attr_image = nil
            end
          end
          if (!(item.attr_cell_background).nil?)
            cell_background = item.attr_cell_background
            temp = Array.typed(::Java::Int).new(@column_count + 1) { 0 }
            System.arraycopy(cell_background, 0, temp, 0, index)
            System.arraycopy(cell_background, index, temp, index + 1, @column_count - index)
            temp[index] = -1
            item.attr_cell_background = temp
          end
          if (!(item.attr_cell_foreground).nil?)
            cell_foreground = item.attr_cell_foreground
            temp = Array.typed(::Java::Int).new(@column_count + 1) { 0 }
            System.arraycopy(cell_foreground, 0, temp, 0, index)
            System.arraycopy(cell_foreground, index, temp, index + 1, @column_count - index)
            temp[index] = -1
            item.attr_cell_foreground = temp
          end
          if (!(item.attr_cell_font).nil?)
            cell_font = item.attr_cell_font
            temp = Array.typed(Font).new(@column_count + 1) { nil }
            System.arraycopy(cell_font, 0, temp, 0, index)
            System.arraycopy(cell_font, index, temp, index + 1, @column_count - index)
            item.attr_cell_font = temp
          end
        end
        i += 1
      end
      # Insert the column into the columns array before inserting
      # it into the widget so that the column will be present when
      # any callbacks are issued as a result of LVM_INSERTCOLUMN
      # or LVM_SETCOLUMN.
      System.arraycopy(@columns, index, @columns, index + 1, ((@column_count += 1) - 1) - index)
      @columns[index] = column
      # Ensure that resize listeners for the table and for columns
      # within the table are not called.  This can happen when the
      # first column is inserted into a table or when a new column
      # is inserted in the first position.
      @ignore_column_resize = true
      if ((index).equal?(0))
        if (@column_count > 1)
          lv_column = LVCOLUMN.new
          lv_column.attr_mask = OS::LVCF_WIDTH
          OS._send_message(self.attr_handle, OS::LVM_INSERTCOLUMN, 1, lv_column)
          OS._send_message(self.attr_handle, OS::LVM_GETCOLUMN, 1, lv_column)
          width = lv_column.attr_cx
          cch_text_max = 1024
          # long
          h_heap = OS._get_process_heap
          byte_count = cch_text_max * TCHAR.attr_sizeof
          # long
          psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
          lv_column.attr_mask = OS::LVCF_TEXT | OS::LVCF_IMAGE | OS::LVCF_WIDTH | OS::LVCF_FMT
          lv_column.attr_psz_text = psz_text
          lv_column.attr_cch_text_max = cch_text_max
          OS._send_message(self.attr_handle, OS::LVM_GETCOLUMN, 0, lv_column)
          OS._send_message(self.attr_handle, OS::LVM_SETCOLUMN, 1, lv_column)
          lv_column.attr_fmt = OS::LVCFMT_IMAGE
          lv_column.attr_cx = width
          lv_column.attr_i_image = OS::I_IMAGENONE
          lv_column.attr_psz_text = lv_column.attr_cch_text_max = 0
          OS._send_message(self.attr_handle, OS::LVM_SETCOLUMN, 0, lv_column)
          lv_column.attr_mask = OS::LVCF_FMT
          lv_column.attr_fmt = OS::LVCFMT_LEFT
          OS._send_message(self.attr_handle, OS::LVM_SETCOLUMN, 0, lv_column)
          if (!(psz_text).equal?(0))
            OS._heap_free(h_heap, 0, psz_text)
          end
        else
          OS._send_message(self.attr_handle, OS::LVM_SETCOLUMNWIDTH, 0, 0)
        end
        # Bug in Windows.  Despite the fact that every item in the
        # table always has LPSTR_TEXTCALLBACK, Windows caches the
        # bounds for the selected items.  This means that
        # when you change the string to be something else, Windows
        # correctly asks you for the new string but when the item
        # is selected, the selection draws using the bounds of the
        # previous item.  The fix is to reset LPSTR_TEXTCALLBACK
        # even though it has not changed, causing Windows to flush
        # cached bounds.
        if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
          lv_item = LVITEM.new
          lv_item.attr_mask = OS::LVIF_TEXT | OS::LVIF_IMAGE
          lv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
          lv_item.attr_i_image = OS::I_IMAGECALLBACK
          i_ = 0
          while i_ < item_count
            lv_item.attr_i_item = i_
            OS._send_message(self.attr_handle, OS::LVM_SETITEM, 0, lv_item)
            i_ += 1
          end
        end
      else
        fmt = OS::LVCFMT_LEFT
        if (((column.attr_style & SWT::CENTER)).equal?(SWT::CENTER))
          fmt = OS::LVCFMT_CENTER
        end
        if (((column.attr_style & SWT::RIGHT)).equal?(SWT::RIGHT))
          fmt = OS::LVCFMT_RIGHT
        end
        lv_column = LVCOLUMN.new
        lv_column.attr_mask = OS::LVCF_WIDTH | OS::LVCF_FMT
        lv_column.attr_fmt = fmt
        OS._send_message(self.attr_handle, OS::LVM_INSERTCOLUMN, index, lv_column)
      end
      @ignore_column_resize = false
      # Add the tool tip item for the header
      if (!(@header_tool_tip_handle).equal?(0))
        rect = RECT.new
        # long
        hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
        if (!(OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, index, rect)).equal?(0))
          lpti = TOOLINFO.new
          lpti.attr_cb_size = TOOLINFO.attr_sizeof
          lpti.attr_u_flags = OS::TTF_SUBCLASS
          lpti.attr_hwnd = hwnd_header
          lpti.attr_u_id = column.attr_id = ((self.attr_display.attr_next_tool_tip_id += 1) - 1)
          lpti.attr_left = rect.attr_left
          lpti.attr_top = rect.attr_top
          lpti.attr_right = rect.attr_right
          lpti.attr_bottom = rect.attr_bottom
          lpti.attr_lpsz_text = OS::LPSTR_TEXTCALLBACK
          OS._send_message(@header_tool_tip_handle, OS::TTM_ADDTOOL, 0, lpti)
        end
      end
    end
    
    typesig { [TableItem, ::Java::Int] }
    def create_item(item, index)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((count).equal?(@items.attr_length))
        # Grow the array faster when redraw is off or the
        # table is not visible.  When the table is painted,
        # the items array is resized to be smaller to reduce
        # memory usage.
        small = get_drawing && OS._is_window_visible(self.attr_handle)
        length = small ? @items.attr_length + 4 : Math.max(4, @items.attr_length * 3 / 2)
        new_items = Array.typed(TableItem).new(length) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      lv_item = LVITEM.new
      lv_item.attr_mask = OS::LVIF_TEXT | OS::LVIF_IMAGE
      lv_item.attr_i_item = index
      lv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
      # Bug in Windows.  Despite the fact that the image list
      # index has never been set for the item, Windows always
      # assumes that the image index for the item is valid.
      # When an item is inserted, the image index is zero.
      # Therefore, when the first image is inserted and is
      # assigned image index zero, every item draws with this
      # image.  The fix is to set the image index when the
      # the item is created.
      lv_item.attr_i_image = OS::I_IMAGECALLBACK
      # Insert the item
      set_defer_resize(true)
      @ignore_select = @ignore_shrink = true
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_INSERTITEM, 0, lv_item))
      @ignore_select = @ignore_shrink = false
      if ((result).equal?(-1))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      System.arraycopy(@items, index, @items, index + 1, count - index)
      @items[index] = item
      set_defer_resize(false)
      # Resize to show the first item
      if ((count).equal?(0))
        set_scroll_width(item, false)
      end
    end
    
    typesig { [] }
    def create_widget
      super
      @item_height = @hot_index = -1
      @items = Array.typed(TableItem).new(4) { nil }
      @columns = Array.typed(TableColumn).new(4) { nil }
    end
    
    typesig { [] }
    def default_background
      return OS._get_sys_color(OS::COLOR_WINDOW)
    end
    
    typesig { [] }
    def deregister
      super
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      if (!(hwnd_header).equal?(0))
        self.attr_display.remove_control(hwnd_header)
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Deselects the items at the given zero-relative indices in the receiver.
    # If the item at the given zero-relative index in the receiver
    # is selected, it is deselected.  If the item at the index
    # was not selected, it remains deselected. Indices that are out
    # of range and duplicate indices are ignored.
    # 
    # @param indices the array of indices for the items to deselect
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the set of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((indices.attr_length).equal?(0))
        return
      end
      lv_item = LVITEM.new
      lv_item.attr_state_mask = OS::LVIS_SELECTED
      i = 0
      while i < indices.attr_length
        # An index of -1 will apply the change to all
        # items.  Ensure that indices are greater than -1.
        if (indices[i] >= 0)
          @ignore_select = true
          OS._send_message(self.attr_handle, OS::LVM_SETITEMSTATE, indices[i], lv_item)
          @ignore_select = false
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int] }
    # Deselects the item at the given zero-relative index in the receiver.
    # If the item at the index was already deselected, it remains
    # deselected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to deselect
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(index)
      check_widget
      # An index of -1 will apply the change to all
      # items.  Ensure that index is greater than -1.
      if (index < 0)
        return
      end
      lv_item = LVITEM.new
      lv_item.attr_state_mask = OS::LVIS_SELECTED
      @ignore_select = true
      OS._send_message(self.attr_handle, OS::LVM_SETITEMSTATE, index, lv_item)
      @ignore_select = false
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Deselects the items at the given zero-relative indices in the receiver.
    # If the item at the given zero-relative index in the receiver
    # is selected, it is deselected.  If the item at the index
    # was not selected, it remains deselected.  The range of the
    # indices is inclusive. Indices that are out of range are ignored.
    # 
    # @param start the start index of the items to deselect
    # @param end the end index of the items to deselect
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(start, end_)
      check_widget
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if ((start).equal?(0) && (end_).equal?(count - 1))
        deselect_all
      else
        lv_item = LVITEM.new
        lv_item.attr_state_mask = OS::LVIS_SELECTED
        # An index of -1 will apply the change to all
        # items.  Ensure that indices are greater than -1.
        start = Math.max(0, start)
        i = start
        while i <= end_
          @ignore_select = true
          OS._send_message(self.attr_handle, OS::LVM_SETITEMSTATE, i, lv_item)
          @ignore_select = false
          i += 1
        end
      end
    end
    
    typesig { [] }
    # Deselects all selected items in the receiver.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect_all
      check_widget
      lv_item = LVITEM.new
      lv_item.attr_mask = OS::LVIF_STATE
      lv_item.attr_state_mask = OS::LVIS_SELECTED
      @ignore_select = true
      OS._send_message(self.attr_handle, OS::LVM_SETITEMSTATE, -1, lv_item)
      @ignore_select = false
    end
    
    typesig { [TableColumn] }
    def destroy_item(column)
      index = 0
      while (index < @column_count)
        if ((@columns[index]).equal?(column))
          break
        end
        index += 1
      end
      # 64
      old_column = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETSELECTEDCOLUMN, 0, 0))
      if ((old_column).equal?(index))
        OS._send_message(self.attr_handle, OS::LVM_SETSELECTEDCOLUMN, -1, 0)
      else
        if (old_column > index)
          OS._send_message(self.attr_handle, OS::LVM_SETSELECTEDCOLUMN, old_column - 1, 0)
        end
      end
      order_index = 0
      old_order = Array.typed(::Java::Int).new(@column_count) { 0 }
      OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNORDERARRAY, @column_count, old_order)
      while (order_index < @column_count)
        if ((old_order[order_index]).equal?(index))
          break
        end
        order_index += 1
      end
      @ignore_column_resize = true
      first = false
      if ((index).equal?(0))
        first = true
        if (@column_count > 1)
          index = 1
          cch_text_max = 1024
          # long
          h_heap = OS._get_process_heap
          byte_count = cch_text_max * TCHAR.attr_sizeof
          # long
          psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
          lv_column = LVCOLUMN.new
          lv_column.attr_mask = OS::LVCF_TEXT | OS::LVCF_IMAGE | OS::LVCF_WIDTH | OS::LVCF_FMT
          lv_column.attr_psz_text = psz_text
          lv_column.attr_cch_text_max = cch_text_max
          OS._send_message(self.attr_handle, OS::LVM_GETCOLUMN, 1, lv_column)
          lv_column.attr_fmt &= ~(OS::LVCFMT_CENTER | OS::LVCFMT_RIGHT)
          lv_column.attr_fmt |= OS::LVCFMT_LEFT
          OS._send_message(self.attr_handle, OS::LVM_SETCOLUMN, 0, lv_column)
          if (!(psz_text).equal?(0))
            OS._heap_free(h_heap, 0, psz_text)
          end
        else
          # long
          h_heap = OS._get_process_heap
          # long
          psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, TCHAR.attr_sizeof)
          lv_column = LVCOLUMN.new
          lv_column.attr_mask = OS::LVCF_TEXT | OS::LVCF_IMAGE | OS::LVCF_WIDTH | OS::LVCF_FMT
          lv_column.attr_psz_text = psz_text
          lv_column.attr_i_image = OS::I_IMAGENONE
          lv_column.attr_fmt = OS::LVCFMT_LEFT
          OS._send_message(self.attr_handle, OS::LVM_SETCOLUMN, 0, lv_column)
          if (!(psz_text).equal?(0))
            OS._heap_free(h_heap, 0, psz_text)
          end
          if (OS::COMCTL32_MAJOR >= 6)
            hd_item = HDITEM.new
            hd_item.attr_mask = OS::HDI_FORMAT
            hd_item.attr_fmt = OS::HDF_LEFT
            # long
            hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
            OS._send_message(hwnd_header, OS::HDM_SETITEM, index, hd_item)
          end
        end
        # Bug in Windows.  Despite the fact that every item in the
        # table always has LPSTR_TEXTCALLBACK, Windows caches the
        # bounds for the selected items.  This means that
        # when you change the string to be something else, Windows
        # correctly asks you for the new string but when the item
        # is selected, the selection draws using the bounds of the
        # previous item.  The fix is to reset LPSTR_TEXTCALLBACK
        # even though it has not changed, causing Windows to flush
        # cached bounds.
        if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
          lv_item = LVITEM.new
          lv_item.attr_mask = OS::LVIF_TEXT | OS::LVIF_IMAGE
          lv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
          lv_item.attr_i_image = OS::I_IMAGECALLBACK
          # 64
          item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
          i = 0
          while i < item_count
            lv_item.attr_i_item = i
            OS._send_message(self.attr_handle, OS::LVM_SETITEM, 0, lv_item)
            i += 1
          end
        end
      end
      if (@column_count > 1)
        if ((OS._send_message(self.attr_handle, OS::LVM_DELETECOLUMN, index, 0)).equal?(0))
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
      end
      if (first)
        index = 0
      end
      System.arraycopy(@columns, index + 1, @columns, index, (@column_count -= 1) - index)
      @columns[@column_count] = nil
      # 64
      item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      i = 0
      while i < item_count
        item = @items[i]
        if (!(item).nil?)
          if ((@column_count).equal?(0))
            item.attr_strings = nil
            item.attr_images = nil
            item.attr_cell_background = nil
            item.attr_cell_foreground = nil
            item.attr_cell_font = nil
          else
            if (!(item.attr_strings).nil?)
              strings = item.attr_strings
              if ((index).equal?(0))
                item.attr_text = !(strings[1]).nil? ? strings[1] : "" # $NON-NLS-1$
              end
              temp = Array.typed(String).new(@column_count) { nil }
              System.arraycopy(strings, 0, temp, 0, index)
              System.arraycopy(strings, index + 1, temp, index, @column_count - index)
              item.attr_strings = temp
            else
              if ((index).equal?(0))
                item.attr_text = ""
              end # $NON-NLS-1$
            end
            if (!(item.attr_images).nil?)
              images = item.attr_images
              if ((index).equal?(0))
                item.attr_image = images[1]
              end
              temp = Array.typed(Image).new(@column_count) { nil }
              System.arraycopy(images, 0, temp, 0, index)
              System.arraycopy(images, index + 1, temp, index, @column_count - index)
              item.attr_images = temp
            else
              if ((index).equal?(0))
                item.attr_image = nil
              end
            end
            if (!(item.attr_cell_background).nil?)
              cell_background = item.attr_cell_background
              temp = Array.typed(::Java::Int).new(@column_count) { 0 }
              System.arraycopy(cell_background, 0, temp, 0, index)
              System.arraycopy(cell_background, index + 1, temp, index, @column_count - index)
              item.attr_cell_background = temp
            end
            if (!(item.attr_cell_foreground).nil?)
              cell_foreground = item.attr_cell_foreground
              temp = Array.typed(::Java::Int).new(@column_count) { 0 }
              System.arraycopy(cell_foreground, 0, temp, 0, index)
              System.arraycopy(cell_foreground, index + 1, temp, index, @column_count - index)
              item.attr_cell_foreground = temp
            end
            if (!(item.attr_cell_font).nil?)
              cell_font = item.attr_cell_font
              temp = Array.typed(Font).new(@column_count) { nil }
              System.arraycopy(cell_font, 0, temp, 0, index)
              System.arraycopy(cell_font, index + 1, temp, index, @column_count - index)
              item.attr_cell_font = temp
            end
          end
        end
        i += 1
      end
      if ((@column_count).equal?(0))
        set_scroll_width(nil, true)
      end
      update_moveable
      @ignore_column_resize = false
      if (!(@column_count).equal?(0))
        # Bug in Windows.  When LVM_DELETECOLUMN is used to delete a
        # column zero when that column is both the first column in the
        # table and the first column in the column order array, Windows
        # incorrectly computes the new column order.  For example, both
        # the orders {0, 3, 1, 2} and {0, 3, 2, 1} give a new column
        # order of {0, 2, 1}, while {0, 2, 1, 3} gives {0, 1, 2, 3}.
        # The fix is to compute the new order and compare it with the
        # order that Windows is using.  If the two differ, the new order
        # is used.
        count = 0
        old_index = old_order[order_index]
        new_order = Array.typed(::Java::Int).new(@column_count) { 0 }
        i_ = 0
        while i_ < old_order.attr_length
          if (!(old_order[i_]).equal?(old_index))
            new_index = old_order[i_] <= old_index ? old_order[i_] : old_order[i_] - 1
            new_order[((count += 1) - 1)] = new_index
          end
          i_ += 1
        end
        OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNORDERARRAY, @column_count, old_order)
        j = 0
        while (j < new_order.attr_length)
          if (!(old_order[j]).equal?(new_order[j]))
            break
          end
          j += 1
        end
        if (!(j).equal?(new_order.attr_length))
          OS._send_message(self.attr_handle, OS::LVM_SETCOLUMNORDERARRAY, new_order.attr_length, new_order)
          # Bug in Windows.  When LVM_SETCOLUMNORDERARRAY is used to change
          # the column order, the header redraws correctly but the table does
          # not.  The fix is to force a redraw.
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
        new_columns = Array.typed(TableColumn).new(@column_count - order_index) { nil }
        i__ = order_index
        while i__ < new_order.attr_length
          new_columns[i__ - order_index] = @columns[new_order[i__]]
          new_columns[i__ - order_index].update_tool_tip(new_order[i__])
          i__ += 1
        end
        i___ = 0
        while i___ < new_columns.attr_length
          if (!new_columns[i___].is_disposed)
            new_columns[i___].send_event(SWT::Move)
          end
          i___ += 1
        end
      end
      # Remove the tool tip item for the header
      if (!(@header_tool_tip_handle).equal?(0))
        lpti = TOOLINFO.new
        lpti.attr_cb_size = TOOLINFO.attr_sizeof
        lpti.attr_u_id = column.attr_id
        lpti.attr_hwnd = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
        OS._send_message(@header_tool_tip_handle, OS::TTM_DELTOOL, 0, lpti)
      end
    end
    
    typesig { [TableItem] }
    def destroy_item(item)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      index = 0
      while (index < count)
        if ((@items[index]).equal?(item))
          break
        end
        index += 1
      end
      if ((index).equal?(count))
        return
      end
      set_defer_resize(true)
      @ignore_select = @ignore_shrink = true
      # long
      code = OS._send_message(self.attr_handle, OS::LVM_DELETEITEM, index, 0)
      @ignore_select = @ignore_shrink = false
      if ((code).equal?(0))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      System.arraycopy(@items, index + 1, @items, index, (count -= 1) - index)
      @items[count] = nil
      if ((count).equal?(0))
        set_table_empty
      end
      set_defer_resize(false)
    end
    
    typesig { [::Java::Boolean] }
    def fix_checkbox_image_list(fix_scroll)
      # Bug in Windows.  When the state image list is larger than the
      # image list, Windows incorrectly positions the state images.  When
      # the table is scrolled, Windows draws garbage.  The fix is to force
      # the state image list to be the same size as the image list.
      if (((self.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      # long
      h_image_list = OS._send_message(self.attr_handle, OS::LVM_GETIMAGELIST, OS::LVSIL_SMALL, 0)
      if ((h_image_list).equal?(0))
        return
      end
      cx = Array.typed(::Java::Int).new(1) { 0 }
      cy = Array.typed(::Java::Int).new(1) { 0 }
      OS._image_list_get_icon_size(h_image_list, cx, cy)
      # long
      h_state_list = OS._send_message(self.attr_handle, OS::LVM_GETIMAGELIST, OS::LVSIL_STATE, 0)
      if ((h_state_list).equal?(0))
        return
      end
      state_cx = Array.typed(::Java::Int).new(1) { 0 }
      state_cy = Array.typed(::Java::Int).new(1) { 0 }
      OS._image_list_get_icon_size(h_state_list, state_cx, state_cy)
      if ((cx[0]).equal?(state_cx[0]) && (cy[0]).equal?(state_cy[0]))
        return
      end
      set_checkbox_image_list(cx[0], cy[0], fix_scroll)
    end
    
    typesig { [::Java::Boolean] }
    def fix_checkbox_image_list_color(fix_scroll)
      if (((self.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      # long
      h_state_list = OS._send_message(self.attr_handle, OS::LVM_GETIMAGELIST, OS::LVSIL_STATE, 0)
      if ((h_state_list).equal?(0))
        return
      end
      cx = Array.typed(::Java::Int).new(1) { 0 }
      cy = Array.typed(::Java::Int).new(1) { 0 }
      OS._image_list_get_icon_size(h_state_list, cx, cy)
      set_checkbox_image_list(cx[0], cy[0], fix_scroll)
    end
    
    typesig { [::Java::Boolean] }
    def fix_item_height(fix_scroll)
      # Bug in Windows.  When both a header and grid lines are
      # displayed, the grid lines do not take into account the
      # height of the header and draw in the wrong place.  The
      # fix is to set the height of the table items to be the
      # height of the header so that the lines draw in the right
      # place.  The height of a table item is the maximum of the
      # height of the font or the height of image list.
      # 
      # NOTE: In version 5.80 of COMCTL32.DLL, the bug is fixed.
      if (!(@item_height).equal?(-1))
        return
      end
      if (OS::COMCTL32_VERSION >= OS._version(5, 80))
        return
      end
      # 64
      bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
      if (((bits & OS::LVS_EX_GRIDLINES)).equal?(0))
        return
      end
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (!((bits & OS::LVS_NOCOLUMNHEADER)).equal?(0))
        return
      end
      # Bug in Windows.  Making any change to an item that
      # changes the item height of a table while the table
      # is scrolled can cause the lines to draw incorrectly.
      # This happens even when the lines are not currently
      # visible and are shown afterwards.  The fix is to
      # save the top index, scroll to the top of the table
      # and then restore the original top index.
      top_index = get_top_index
      if (fix_scroll && !(top_index).equal?(0))
        set_redraw(false)
        set_top_index(0)
      end
      # long
      h_old_list = OS._send_message(self.attr_handle, OS::LVM_GETIMAGELIST, OS::LVSIL_SMALL, 0)
      if (!(h_old_list).equal?(0))
        return
      end
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      rect = RECT.new
      OS._get_window_rect(hwnd_header, rect)
      height = rect.attr_bottom - rect.attr_top - 1
      # long
      h_image_list = OS._image_list_create(1, height, 0, 0, 0)
      OS._send_message(self.attr_handle, OS::LVM_SETIMAGELIST, OS::LVSIL_SMALL, h_image_list)
      fix_checkbox_image_list(false)
      OS._send_message(self.attr_handle, OS::LVM_SETIMAGELIST, OS::LVSIL_SMALL, 0)
      if (!(@header_image_list).nil?)
        # long
        h_header_image_list = @header_image_list.get_handle
        OS._send_message(hwnd_header, OS::HDM_SETIMAGELIST, 0, h_header_image_list)
      end
      OS._image_list_destroy(h_image_list)
      if (fix_scroll && !(top_index).equal?(0))
        set_top_index(top_index)
        set_redraw(true)
      end
    end
    
    typesig { [::Java::Int] }
    # Returns the column at the given, zero-relative index in the
    # receiver. Throws an exception if the index is out of range.
    # Columns are returned in the order that they were created.
    # If no <code>TableColumn</code>s were created by the programmer,
    # this method will throw <code>ERROR_INVALID_RANGE</code> despite
    # the fact that a single column of data may be visible in the table.
    # This occurs when the programmer uses the table like a list, adding
    # items but never creating a column.
    # 
    # @param index the index of the column to return
    # @return the column at the given index
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#getColumnOrder()
    # @see Table#setColumnOrder(int[])
    # @see TableColumn#getMoveable()
    # @see TableColumn#setMoveable(boolean)
    # @see SWT#Move
    def get_column(index)
      check_widget
      if (!(0 <= index && index < @column_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @columns[index]
    end
    
    typesig { [] }
    # Returns the number of columns contained in the receiver.
    # If no <code>TableColumn</code>s were created by the programmer,
    # this value is zero, despite the fact that visually, one column
    # of items may be visible. This occurs when the programmer uses
    # the table like a list, adding items but never creating a column.
    # 
    # @return the number of columns
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_column_count
      check_widget
      return @column_count
    end
    
    typesig { [] }
    # Returns an array of zero-relative integers that map
    # the creation order of the receiver's items to the
    # order in which they are currently being displayed.
    # <p>
    # Specifically, the indices of the returned array represent
    # the current visual order of the items, and the contents
    # of the array represent the creation order of the items.
    # </p><p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the current visual order of the receiver's items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#setColumnOrder(int[])
    # @see TableColumn#getMoveable()
    # @see TableColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.1
    def get_column_order
      check_widget
      if ((@column_count).equal?(0))
        return Array.typed(::Java::Int).new(0) { 0 }
      end
      order = Array.typed(::Java::Int).new(@column_count) { 0 }
      OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNORDERARRAY, @column_count, order)
      return order
    end
    
    typesig { [] }
    # Returns an array of <code>TableColumn</code>s which are the
    # columns in the receiver.  Columns are returned in the order
    # that they were created.  If no <code>TableColumn</code>s were
    # created by the programmer, the array is empty, despite the fact
    # that visually, one column of items may be visible. This occurs
    # when the programmer uses the table like a list, adding items but
    # never creating a column.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items in the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#getColumnOrder()
    # @see Table#setColumnOrder(int[])
    # @see TableColumn#getMoveable()
    # @see TableColumn#setMoveable(boolean)
    # @see SWT#Move
    def get_columns
      check_widget
      result = Array.typed(TableColumn).new(@column_count) { nil }
      System.arraycopy(@columns, 0, result, 0, @column_count)
      return result
    end
    
    typesig { [] }
    def get_focus_index
      # checkWidget ();
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, -1, OS::LVNI_FOCUSED))
    end
    
    typesig { [] }
    # Returns the width in pixels of a grid line.
    # 
    # @return the width of a grid line in pixels
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_grid_line_width
      check_widget
      return GRID_WIDTH
    end
    
    typesig { [] }
    # Returns the height of the receiver's header
    # 
    # @return the height of the header or zero if the header is not visible
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def get_header_height
      check_widget
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      if ((hwnd_header).equal?(0))
        return 0
      end
      rect = RECT.new
      OS._get_window_rect(hwnd_header, rect)
      return rect.attr_bottom - rect.attr_top
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver's header is visible,
    # and <code>false</code> otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the receiver's header's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_header_visible
      check_widget
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      return ((bits & OS::LVS_NOCOLUMNHEADER)).equal?(0)
    end
    
    typesig { [::Java::Int] }
    # Returns the item at the given, zero-relative index in the
    # receiver. Throws an exception if the index is out of range.
    # 
    # @param index the index of the item to return
    # @return the item at the given index
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item(index)
      check_widget
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if (!(0 <= index && index < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return __get_item(index)
    end
    
    typesig { [Point] }
    # Returns the item at the given point in the receiver
    # or null if no such item exists. The point is in the
    # coordinate system of the receiver.
    # <p>
    # The item that is returned represents an item that could be selected by the user.
    # For example, if selection only occurs in items in the first column, then null is
    # returned if the point is outside of the item.
    # Note that the SWT.FULL_SELECTION style hint, which specifies the selection policy,
    # determines the extent of the selection.
    # </p>
    # 
    # @param point the point used to locate the item
    # @return the item at the given point, or null if the point is not in a selectable item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if ((count).equal?(0))
        return nil
      end
      pinfo = LVHITTESTINFO.new
      pinfo.attr_x = point.attr_x
      pinfo.attr_y = point.attr_y
      if (((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
        if (hooks(SWT::MeasureItem))
          # Bug in Windows.  When LVM_SUBITEMHITTEST is used to hittest
          # a point that is above the table, instead of returning -1 to
          # indicate that the hittest failed, a negative index is returned.
          # The fix is to consider any value that is negative a failure.
          if (OS._send_message(self.attr_handle, OS::LVM_SUBITEMHITTEST, 0, pinfo) < 0)
            rect = RECT.new
            rect.attr_left = OS::LVIR_ICON
            @ignore_custom_draw = true
            # long
            code = OS._send_message(self.attr_handle, OS::LVM_GETITEMRECT, 0, rect)
            @ignore_custom_draw = false
            if (!(code).equal?(0))
              pinfo.attr_x = rect.attr_left
              # Bug in Windows.  When LVM_SUBITEMHITTEST is used to hittest
              # a point that is above the table, instead of returning -1 to
              # indicate that the hittest failed, a negative index is returned.
              # The fix is to consider any value that is negative a failure.
              OS._send_message(self.attr_handle, OS::LVM_SUBITEMHITTEST, 0, pinfo)
              if (pinfo.attr_i_item < 0)
                pinfo.attr_i_item = -1
              end
            end
          end
          if (!(pinfo.attr_i_item).equal?(-1) && (pinfo.attr_i_sub_item).equal?(0))
            if (hit_test_selection(pinfo.attr_i_item, pinfo.attr_x, pinfo.attr_y))
              return __get_item(pinfo.attr_i_item)
            end
          end
          return nil
        end
      end
      OS._send_message(self.attr_handle, OS::LVM_HITTEST, 0, pinfo)
      if (!(pinfo.attr_i_item).equal?(-1))
        # Bug in Windows.  When the point that is used by
        # LVM_HITTEST is inside the header, Windows returns
        # the first item in the table.  The fix is to check
        # when LVM_HITTEST returns the first item and make
        # sure that when the point is within the header,
        # the first item is not returned.
        if ((pinfo.attr_i_item).equal?(0))
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          if (((bits & OS::LVS_NOCOLUMNHEADER)).equal?(0))
            # long
            hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
            if (!(hwnd_header).equal?(0))
              rect = RECT.new
              OS._get_window_rect(hwnd_header, rect)
              pt = POINT.new
              pt.attr_x = pinfo.attr_x
              pt.attr_y = pinfo.attr_y
              OS._map_window_points(self.attr_handle, 0, pt, 1)
              if (OS._pt_in_rect(rect, pt))
                return nil
              end
            end
          end
        end
        return __get_item(pinfo.attr_i_item)
      end
      return nil
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_count
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
    end
    
    typesig { [] }
    # Returns the height of the area which would be used to
    # display <em>one</em> of the items in the receiver.
    # 
    # @return the height of one item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_height
      check_widget
      if (!@painted && hooks(SWT::MeasureItem))
        hit_test_selection(0, 0, 0)
      end
      # long
      empty = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 0, 0)
      # long
      one_item = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 1, 0)
      return OS._hiword(one_item) - OS._hiword(empty)
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of <code>TableItem</code>s which
    # are the items in the receiver.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items in the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      result = Array.typed(TableItem).new(count) { nil }
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        i = 0
        while i < count
          result[i] = __get_item(i)
          i += 1
        end
      else
        System.arraycopy(@items, 0, result, 0, count)
      end
      return result
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver's lines are visible,
    # and <code>false</code> otherwise. Note that some platforms draw
    # grid lines while others may draw alternating row colors.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the visibility state of the lines
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_lines_visible
      check_widget
      # 64
      bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
      return !((bits & OS::LVS_EX_GRIDLINES)).equal?(0)
    end
    
    typesig { [] }
    # Returns an array of <code>TableItem</code>s that are currently
    # selected in the receiver. The order of the items is unspecified.
    # An empty array indicates that no items are selected.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its selection, so modifying the array will
    # not affect the receiver.
    # </p>
    # @return an array representing the selection
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      i = -1
      j = 0
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETSELECTEDCOUNT, 0, 0))
      result = Array.typed(TableItem).new(count) { nil }
      # 64
      while (!((i = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, i, OS::LVNI_SELECTED)))).equal?(-1))
        result[((j += 1) - 1)] = __get_item(i)
      end
      return result
    end
    
    typesig { [] }
    # Returns the number of selected items contained in the receiver.
    # 
    # @return the number of selected items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_count
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETSELECTEDCOUNT, 0, 0))
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # selected in the receiver, or -1 if no item is selected.
    # 
    # @return the index of the selected item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_index
      check_widget
      # 64
      focus_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, -1, OS::LVNI_FOCUSED))
      # 64
      selected_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, -1, OS::LVNI_SELECTED))
      if ((focus_index).equal?(selected_index))
        return selected_index
      end
      i = -1
      # 64
      while (!((i = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, i, OS::LVNI_SELECTED)))).equal?(-1))
        if ((i).equal?(focus_index))
          return i
        end
      end
      return selected_index
    end
    
    typesig { [] }
    # Returns the zero-relative indices of the items which are currently
    # selected in the receiver. The order of the indices is unspecified.
    # The array is empty if no items are selected.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its selection, so modifying the array will
    # not affect the receiver.
    # </p>
    # @return the array of indices of the selected items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_indices
      check_widget
      i = -1
      j = 0
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETSELECTEDCOUNT, 0, 0))
      result = Array.typed(::Java::Int).new(count) { 0 }
      # 64
      while (!((i = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, i, OS::LVNI_SELECTED)))).equal?(-1))
        result[((j += 1) - 1)] = i
      end
      return result
    end
    
    typesig { [] }
    # Returns the column which shows the sort indicator for
    # the receiver. The value may be null if no column shows
    # the sort indicator.
    # 
    # @return the sort indicator
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setSortColumn(TableColumn)
    # 
    # @since 3.2
    def get_sort_column
      check_widget
      return @sort_column
    end
    
    typesig { [] }
    def get_sort_column_pixel
      pixel = OS._is_window_enabled(self.attr_handle) ? get_background_pixel : OS._get_sys_color(OS::COLOR_3DFACE)
      red = pixel & 0xff
      green = (pixel & 0xff00) >> 8
      blue = (pixel & 0xff0000) >> 16
      if (red > 240 && green > 240 && blue > 240)
        red -= 8
        green -= 8
        blue -= 8
      else
        red = Math.min(0xff, (red / 10) + red)
        green = Math.min(0xff, (green / 10) + green)
        blue = Math.min(0xff, (blue / 10) + blue)
      end
      return (red & 0xff) | ((green & 0xff) << 8) | ((blue & 0xff) << 16)
    end
    
    typesig { [] }
    # Returns the direction of the sort indicator for the receiver.
    # The value will be one of <code>UP</code>, <code>DOWN</code>
    # or <code>NONE</code>.
    # 
    # @return the sort direction
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setSortDirection(int)
    # 
    # @since 3.2
    def get_sort_direction
      check_widget
      return @sort_direction
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # at the top of the receiver. This index can change when items are
    # scrolled or new items are added or removed.
    # 
    # @return the index of the top item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_top_index
      check_widget
      # Bug in Windows.  Under rare circumstances, LVM_GETTOPINDEX
      # can return a negative number.  When this happens, the table
      # is displaying blank lines at the top of the controls.  The
      # fix is to check for a negative number and return zero instead.
      # 
      # 64
      return Math.max(0, RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETTOPINDEX, 0, 0)))
    end
    
    typesig { [] }
    def has_children
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      # long
      hwnd_child = OS._get_window(self.attr_handle, OS::GW_CHILD)
      while (!(hwnd_child).equal?(0))
        if (!(hwnd_child).equal?(hwnd_header))
          return true
        end
        hwnd_child = OS._get_window(hwnd_child, OS::GW_HWNDNEXT)
      end
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def hit_test_selection(index, x, y)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if ((count).equal?(0))
        return false
      end
      if (!hooks(SWT::MeasureItem))
        return false
      end
      result = false
      if (0 <= index && index < count)
        item = __get_item(index)
        # long
        h_dc = OS._get_dc(self.attr_handle)
        # long
        old_font = 0
        new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
        if (!(new_font).equal?(0))
          old_font = OS._select_object(h_dc, new_font)
        end
        # long
        h_font = item.font_handle(0)
        if (!(h_font).equal?(-1))
          h_font = OS._select_object(h_dc, h_font)
        end
        event = send_measure_item_event(item, index, 0, h_dc)
        if (event.get_bounds.contains(x, y))
          result = true
        end
        if (!(h_font).equal?(-1))
          h_font = OS._select_object(h_dc, h_font)
        end
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
        # if (isDisposed () || item.isDisposed ()) return false;
      end
      return result
    end
    
    typesig { [Image, ::Java::Int] }
    def image_index(image, column)
      if ((image).nil?)
        return OS::I_IMAGENONE
      end
      if ((column).equal?(0))
        @first_column_image = true
      else
        set_sub_images_visible(true)
      end
      if ((@image_list).nil?)
        bounds = image.get_bounds
        @image_list = self.attr_display.get_image_list(self.attr_style & SWT::RIGHT_TO_LEFT, bounds.attr_width, bounds.attr_height)
        index = @image_list.index_of(image)
        if ((index).equal?(-1))
          index = @image_list.add(image)
        end
        # long
        h_image_list = @image_list.get_handle
        # Bug in Windows.  Making any change to an item that
        # changes the item height of a table while the table
        # is scrolled can cause the lines to draw incorrectly.
        # This happens even when the lines are not currently
        # visible and are shown afterwards.  The fix is to
        # save the top index, scroll to the top of the table
        # and then restore the original top index.
        top_index = get_top_index
        if (!(top_index).equal?(0))
          set_redraw(false)
          set_top_index(0)
        end
        OS._send_message(self.attr_handle, OS::LVM_SETIMAGELIST, OS::LVSIL_SMALL, h_image_list)
        if (!(@header_image_list).nil?)
          # long
          hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
          # long
          h_header_image_list = @header_image_list.get_handle
          OS._send_message(hwnd_header, OS::HDM_SETIMAGELIST, 0, h_header_image_list)
        end
        fix_checkbox_image_list(false)
        if (!(@item_height).equal?(-1))
          set_item_height(false)
        end
        if (!(top_index).equal?(0))
          set_top_index(top_index)
          set_redraw(true)
        end
        return index
      end
      index = @image_list.index_of(image)
      if (!(index).equal?(-1))
        return index
      end
      return @image_list.add(image)
    end
    
    typesig { [Image] }
    def image_index_header(image)
      if ((image).nil?)
        return OS::I_IMAGENONE
      end
      if ((@header_image_list).nil?)
        bounds = image.get_bounds
        @header_image_list = self.attr_display.get_image_list(self.attr_style & SWT::RIGHT_TO_LEFT, bounds.attr_width, bounds.attr_height)
        index = @header_image_list.index_of(image)
        if ((index).equal?(-1))
          index = @header_image_list.add(image)
        end
        # long
        h_image_list = @header_image_list.get_handle
        # long
        hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
        OS._send_message(hwnd_header, OS::HDM_SETIMAGELIST, 0, h_image_list)
        return index
      end
      index = @header_image_list.index_of(image)
      if (!(index).equal?(-1))
        return index
      end
      return @header_image_list.add(image)
    end
    
    typesig { [TableColumn] }
    # Searches the receiver's list starting at the first column
    # (index 0) until a column is found that is equal to the
    # argument, and returns the index of that column. If no column
    # is found, returns -1.
    # 
    # @param column the search column
    # @return the index of the column
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the column is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(column)
      check_widget
      if ((column).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < @column_count
        if ((@columns[i]).equal?(column))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [TableItem] }
    # Searches the receiver's list starting at the first item
    # (index 0) until an item is found that is equal to the
    # argument, and returns the index of that item. If no item
    # is found, returns -1.
    # 
    # @param item the search item
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if (1 <= @last_index_of && @last_index_of < count - 1)
        if ((@items[@last_index_of]).equal?(item))
          return @last_index_of
        end
        if ((@items[@last_index_of + 1]).equal?(item))
          return (@last_index_of += 1)
        end
        if ((@items[@last_index_of - 1]).equal?(item))
          return (@last_index_of -= 1)
        end
      end
      if (@last_index_of < count / 2)
        i = 0
        while i < count
          if ((@items[i]).equal?(item))
            return @last_index_of = i
          end
          i += 1
        end
      else
        i = count - 1
        while i >= 0
          if ((@items[i]).equal?(item))
            return @last_index_of = i
          end
          (i -= 1)
        end
      end
      return -1
    end
    
    typesig { [] }
    def is_custom_tool_tip
      return hooks(SWT::MeasureItem)
    end
    
    typesig { [] }
    def is_optimized_redraw
      if (((self.attr_style & SWT::H_SCROLL)).equal?(0) || ((self.attr_style & SWT::V_SCROLL)).equal?(0))
        return false
      end
      return !has_children && !hooks(SWT::Paint) && !filters(SWT::Paint)
    end
    
    typesig { [::Java::Int] }
    # Returns <code>true</code> if the item is selected,
    # and <code>false</code> otherwise.  Indices out of
    # range are ignored.
    # 
    # @param index the index of the item
    # @return the selection state of the item at the index
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def is_selected(index)
      check_widget
      lv_item = LVITEM.new
      lv_item.attr_mask = OS::LVIF_STATE
      lv_item.attr_state_mask = OS::LVIS_SELECTED
      lv_item.attr_i_item = index
      # long
      result = OS._send_message(self.attr_handle, OS::LVM_GETITEM, 0, lv_item)
      return (!(result).equal?(0)) && (!((lv_item.attr_state & OS::LVIS_SELECTED)).equal?(0))
    end
    
    typesig { [] }
    def register
      super
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      if (!(hwnd_header).equal?(0))
        self.attr_display.add_control(hwnd_header, self)
      end
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@items).nil?)
        # 64
        item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
        # Feature in Windows 98.  When there are a large number
        # of columns and items in a table (>1000) where each
        # of the subitems in the table has a string, it is much
        # faster to delete each item with LVM_DELETEITEM rather
        # than using LVM_DELETEALLITEMS.  The fix is to detect
        # this case and delete the items, one by one.  The fact
        # that the fix is only necessary on Windows 98 was
        # confirmed using version 5.81 of COMCTL32.DLL on both
        # Windows 98 and NT.
        # 
        # NOTE: LVM_DELETEALLITEMS is also sent by the table
        # when the table is destroyed.
        if (OS::IsWin95 && @column_count > 1)
          # Turn off redraw and resize events and leave them off
          @resize_count = 1
          OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
          i = item_count - 1
          while i >= 0
            item = @items[i]
            if (!(item).nil? && !item.is_disposed)
              item.release(false)
            end
            @ignore_select = @ignore_shrink = true
            OS._send_message(self.attr_handle, OS::LVM_DELETEITEM, i, 0)
            @ignore_select = @ignore_shrink = false
            (i -= 1)
          end
        else
          i = 0
          while i < item_count
            item = @items[i]
            if (!(item).nil? && !item.is_disposed)
              item.release(false)
            end
            i += 1
          end
        end
        @items = nil
      end
      if (!(@columns).nil?)
        i = 0
        while i < @column_count
          column = @columns[i]
          if (!column.is_disposed)
            column.release(false)
          end
          i += 1
        end
        @columns = nil
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_widget
      super
      @custom_draw = false
      @current_item = nil
      if (!(@image_list).nil?)
        OS._send_message(self.attr_handle, OS::LVM_SETIMAGELIST, OS::LVSIL_SMALL, 0)
        self.attr_display.release_image_list(@image_list)
      end
      if (!(@header_image_list).nil?)
        # long
        hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
        OS._send_message(hwnd_header, OS::HDM_SETIMAGELIST, 0, 0)
        self.attr_display.release_image_list(@header_image_list)
      end
      @image_list = @header_image_list = nil
      # long
      h_state_list = OS._send_message(self.attr_handle, OS::LVM_GETIMAGELIST, OS::LVSIL_STATE, 0)
      OS._send_message(self.attr_handle, OS::LVM_SETIMAGELIST, OS::LVSIL_STATE, 0)
      if (!(h_state_list).equal?(0))
        OS._image_list_destroy(h_state_list)
      end
      if (!(@header_tool_tip_handle).equal?(0))
        OS._destroy_window(@header_tool_tip_handle)
      end
      @header_tool_tip_handle = 0
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Removes the items from the receiver's list at the given
    # zero-relative indices.
    # 
    # @param indices the array of indices of the items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # <li>ERROR_NULL_ARGUMENT - if the indices array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((indices.attr_length).equal?(0))
        return
      end
      new_indices = Array.typed(::Java::Int).new(indices.attr_length) { 0 }
      System.arraycopy(indices, 0, new_indices, 0, indices.attr_length)
      sort(new_indices)
      start = new_indices[new_indices.attr_length - 1]
      end_ = new_indices[0]
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if (!(0 <= start && start <= end_ && end_ < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      set_defer_resize(true)
      last = -1
      i = 0
      while i < new_indices.attr_length
        index = new_indices[i]
        if (!(index).equal?(last))
          item = @items[index]
          if (!(item).nil? && !item.is_disposed)
            item.release(false)
          end
          @ignore_select = @ignore_shrink = true
          # long
          code = OS._send_message(self.attr_handle, OS::LVM_DELETEITEM, index, 0)
          @ignore_select = @ignore_shrink = false
          if ((code).equal?(0))
            error(SWT::ERROR_ITEM_NOT_REMOVED)
          end
          System.arraycopy(@items, index + 1, @items, index, (count -= 1) - index)
          @items[count] = nil
          last = index
        end
        i += 1
      end
      if ((count).equal?(0))
        set_table_empty
      end
      set_defer_resize(false)
    end
    
    typesig { [::Java::Int] }
    # Removes the item from the receiver at the given
    # zero-relative index.
    # 
    # @param index the index for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(index)
      check_widget
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if (!(0 <= index && index < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      item = @items[index]
      if (!(item).nil? && !item.is_disposed)
        item.release(false)
      end
      set_defer_resize(true)
      @ignore_select = @ignore_shrink = true
      # long
      code = OS._send_message(self.attr_handle, OS::LVM_DELETEITEM, index, 0)
      @ignore_select = @ignore_shrink = false
      if ((code).equal?(0))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      System.arraycopy(@items, index + 1, @items, index, (count -= 1) - index)
      @items[count] = nil
      if ((count).equal?(0))
        set_table_empty
      end
      set_defer_resize(false)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Removes the items from the receiver which are
    # between the given zero-relative start and end
    # indices (inclusive).
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if either the start or end are not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(start, end_)
      check_widget
      if (start > end_)
        return
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if (!(0 <= start && start <= end_ && end_ < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((start).equal?(0) && (end_).equal?(count - 1))
        remove_all
      else
        set_defer_resize(true)
        index = start
        while (index <= end_)
          item = @items[index]
          if (!(item).nil? && !item.is_disposed)
            item.release(false)
          end
          @ignore_select = @ignore_shrink = true
          # long
          code = OS._send_message(self.attr_handle, OS::LVM_DELETEITEM, start, 0)
          @ignore_select = @ignore_shrink = false
          if ((code).equal?(0))
            break
          end
          index += 1
        end
        System.arraycopy(@items, index, @items, start, count - index)
        i = count - (index - start)
        while i < count
          @items[i] = nil
          i += 1
        end
        if (index <= end_)
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
        # This code is intentionally commented.  It is not necessary
        # to check for an empty table because removeAll() was called
        # when the start == 0 and end == count - 1.
        # 
        # if (count - index == 0) setTableEmpty ();
        set_defer_resize(false)
      end
    end
    
    typesig { [] }
    # Removes all of the items from the receiver.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove_all
      check_widget
      # 64
      item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      i = 0
      while i < item_count
        item = @items[i]
        if (!(item).nil? && !item.is_disposed)
          item.release(false)
        end
        i += 1
      end
      # Feature in Windows 98.  When there are a large number
      # of columns and items in a table (>1000) where each
      # of the subitems in the table has a string, it is much
      # faster to delete each item with LVM_DELETEITEM rather
      # than using LVM_DELETEALLITEMS.  The fix is to detect
      # this case and delete the items, one by one.  The fact
      # that the fix is only necessary on Windows 98 was
      # confirmed using version 5.81 of COMCTL32.DLL on both
      # Windows 98 and NT.
      # 
      # NOTE: LVM_DELETEALLITEMS is also sent by the table
      # when the table is destroyed.
      set_defer_resize(true)
      if (OS::IsWin95 && @column_count > 1)
        redraw_ = get_drawing && OS._is_window_visible(self.attr_handle)
        if (redraw_)
          OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
        index = item_count - 1
        while (index >= 0)
          @ignore_select = @ignore_shrink = true
          # long
          code = OS._send_message(self.attr_handle, OS::LVM_DELETEITEM, index, 0)
          @ignore_select = @ignore_shrink = false
          if ((code).equal?(0))
            break
          end
          (index -= 1)
        end
        if (redraw_)
          OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          # This code is intentionally commented.  The window proc
          # for the table implements WM_SETREDRAW to invalidate
          # and erase the table so it is not necessary to do this
          # again.
          # 
          # int flags = OS.RDW_ERASE | OS.RDW_FRAME | OS.RDW_INVALIDATE;
          # OS.RedrawWindow (handle, null, 0, flags);
        end
        if (!(index).equal?(-1))
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
      else
        @ignore_select = @ignore_shrink = true
        # long
        code = OS._send_message(self.attr_handle, OS::LVM_DELETEALLITEMS, 0, 0)
        @ignore_select = @ignore_shrink = false
        if ((code).equal?(0))
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
      end
      set_table_empty
      set_defer_resize(false)
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
    # @see #addSelectionListener(SelectionListener)
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
    
    typesig { [Array.typed(::Java::Int)] }
    # Selects the items at the given zero-relative indices in the receiver.
    # The current selection is not cleared before the new items are selected.
    # <p>
    # If the item at a given index is not selected, it is selected.
    # If the item at a given index was already selected, it remains selected.
    # Indices that are out of range and duplicate indices are ignored.
    # If the receiver is single-select and multiple indices are specified,
    # then all indices are ignored.
    # </p>
    # 
    # @param indices the array of indices for the items to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#setSelection(int[])
    def select(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      length = indices.attr_length
      if ((length).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length > 1))
        return
      end
      lv_item = LVITEM.new
      lv_item.attr_state = OS::LVIS_SELECTED
      lv_item.attr_state_mask = OS::LVIS_SELECTED
      i = length - 1
      while i >= 0
        # An index of -1 will apply the change to all
        # items.  Ensure that indices are greater than -1.
        if (indices[i] >= 0)
          @ignore_select = true
          OS._send_message(self.attr_handle, OS::LVM_SETITEMSTATE, indices[i], lv_item)
          @ignore_select = false
        end
        (i -= 1)
      end
    end
    
    typesig { [::Java::Int] }
    # Selects the item at the given zero-relative index in the receiver.
    # If the item at the index was already selected, it remains
    # selected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select(index)
      check_widget
      # An index of -1 will apply the change to all
      # items.  Ensure that index is greater than -1.
      if (index < 0)
        return
      end
      lv_item = LVITEM.new
      lv_item.attr_state = OS::LVIS_SELECTED
      lv_item.attr_state_mask = OS::LVIS_SELECTED
      @ignore_select = true
      OS._send_message(self.attr_handle, OS::LVM_SETITEMSTATE, index, lv_item)
      @ignore_select = false
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Selects the items in the range specified by the given zero-relative
    # indices in the receiver. The range of indices is inclusive.
    # The current selection is not cleared before the new items are selected.
    # <p>
    # If an item in the given range is not selected, it is selected.
    # If an item in the given range was already selected, it remains selected.
    # Indices that are out of range are ignored and no items will be selected
    # if start is greater than end.
    # If the receiver is single-select and there is more than one item in the
    # given range, then all indices are ignored.
    # </p>
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#setSelection(int,int)
    def select(start, end_)
      check_widget
      if (end_ < 0 || start > end_ || (!((self.attr_style & SWT::SINGLE)).equal?(0) && !(start).equal?(end_)))
        return
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if ((count).equal?(0) || start >= count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, count - 1)
      if ((start).equal?(0) && (end_).equal?(count - 1))
        select_all
      else
        # An index of -1 will apply the change to all
        # items.  Indices must be greater than -1.
        lv_item = LVITEM.new
        lv_item.attr_state = OS::LVIS_SELECTED
        lv_item.attr_state_mask = OS::LVIS_SELECTED
        i = start
        while i <= end_
          @ignore_select = true
          OS._send_message(self.attr_handle, OS::LVM_SETITEMSTATE, i, lv_item)
          @ignore_select = false
          i += 1
        end
      end
    end
    
    typesig { [] }
    # Selects all of the items in the receiver.
    # <p>
    # If the receiver is single-select, do nothing.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select_all
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return
      end
      lv_item = LVITEM.new
      lv_item.attr_mask = OS::LVIF_STATE
      lv_item.attr_state = OS::LVIS_SELECTED
      lv_item.attr_state_mask = OS::LVIS_SELECTED
      @ignore_select = true
      OS._send_message(self.attr_handle, OS::LVM_SETITEMSTATE, -1, lv_item)
      @ignore_select = false
    end
    
    typesig { [TableItem, NMLVCUSTOMDRAW, ::Java::Int, Event] }
    # long
    def send_erase_item_event(item, nmcd, l_param, measure_event)
      # long
      h_dc = nmcd.attr_hdc
      clr_text = !(item.attr_cell_foreground).nil? ? item.attr_cell_foreground[nmcd.attr_i_sub_item] : -1
      if ((clr_text).equal?(-1))
        clr_text = item.attr_foreground
      end
      clr_text_bk = -1
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        if (!(@sort_column).nil? && !(@sort_direction).equal?(SWT::NONE))
          if ((find_image_control).nil?)
            if ((index_of(@sort_column)).equal?(nmcd.attr_i_sub_item))
              clr_text_bk = get_sort_column_pixel
            end
          end
        end
      end
      clr_text_bk = !(item.attr_cell_background).nil? ? item.attr_cell_background[nmcd.attr_i_sub_item] : -1
      if ((clr_text_bk).equal?(-1))
        clr_text_bk = item.attr_background
      end
      # Bug in Windows.  For some reason, CDIS_SELECTED always set,
      # even for items that are not selected.  The fix is to get
      # the selection state from the item.
      lv_item = LVITEM.new
      lv_item.attr_mask = OS::LVIF_STATE
      lv_item.attr_state_mask = OS::LVIS_SELECTED
      # 64
      lv_item.attr_i_item = RJava.cast_to_int(nmcd.attr_dw_item_spec)
      # long
      result = OS._send_message(self.attr_handle, OS::LVM_GETITEM, 0, lv_item)
      selected = (!(result).equal?(0) && !((lv_item.attr_state & OS::LVIS_SELECTED)).equal?(0))
      data = SwtGCData.new
      data.attr_device = self.attr_display
      clr_selection_bk = -1
      draw_selected = false
      draw_background_ = false
      draw_hot = false
      if ((nmcd.attr_i_sub_item).equal?(0) || !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
        draw_hot = (@hot_index).equal?(nmcd.attr_dw_item_spec)
      end
      if (OS._is_window_enabled(self.attr_handle))
        if (selected && ((nmcd.attr_i_sub_item).equal?(0) || !((self.attr_style & SWT::FULL_SELECTION)).equal?(0)))
          if ((OS._get_focus).equal?(self.attr_handle) || self.attr_display.get_high_contrast)
            draw_selected = true
            data.attr_foreground = OS._get_sys_color(OS::COLOR_HIGHLIGHTTEXT)
            data.attr_background = clr_selection_bk = OS._get_sys_color(OS::COLOR_HIGHLIGHT)
          else
            draw_selected = ((self.attr_style & SWT::HIDE_SELECTION)).equal?(0)
            data.attr_foreground = OS._get_text_color(h_dc)
            data.attr_background = clr_selection_bk = OS._get_sys_color(OS::COLOR_3DFACE)
          end
          if (@explorer_theme)
            data.attr_foreground = !(clr_text).equal?(-1) ? clr_text : get_foreground_pixel
          end
        else
          draw_background_ = !(clr_text_bk).equal?(-1)
          # Bug in Windows.  When LVM_SETTEXTBKCOLOR, LVM_SETBKCOLOR
          # or LVM_SETTEXTCOLOR is used to set the background color of
          # the the text or the control, the color is not set in the HDC
          # that is provided in Custom Draw.  The fix is to explicitly
          # set the color.
          if ((clr_text).equal?(-1) || (clr_text_bk).equal?(-1))
            control = find_background_control
            if ((control).nil?)
              control = self
            end
            if ((clr_text).equal?(-1))
              clr_text = control.get_foreground_pixel
            end
            if ((clr_text_bk).equal?(-1))
              clr_text_bk = control.get_background_pixel
            end
          end
          data.attr_foreground = !(clr_text).equal?(-1) ? clr_text : OS._get_text_color(h_dc)
          data.attr_background = !(clr_text_bk).equal?(-1) ? clr_text_bk : OS._get_bk_color(h_dc)
        end
      else
        data.attr_foreground = OS._get_sys_color(OS::COLOR_GRAYTEXT)
        data.attr_background = OS._get_sys_color(OS::COLOR_3DFACE)
        if (selected)
          clr_selection_bk = data.attr_background
        end
      end
      data.attr_font = item.get_font(nmcd.attr_i_sub_item)
      # 64
      data.attr_ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
      n_saved_dc = OS._save_dc(h_dc)
      gc = SwtGC.win32_new(h_dc, data)
      # 64
      cell_rect = item.get_bounds(RJava.cast_to_int(nmcd.attr_dw_item_spec), nmcd.attr_i_sub_item, true, true, true, true, h_dc)
      event = Event.new
      event.attr_item = item
      event.attr_gc = gc
      event.attr_index = nmcd.attr_i_sub_item
      event.attr_detail |= SWT::FOREGROUND
      # if ((nmcd.uItemState & OS.CDIS_FOCUS) != 0) {
      if ((OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, -1, OS::LVNI_FOCUSED)).equal?(nmcd.attr_dw_item_spec))
        if ((nmcd.attr_i_sub_item).equal?(0) || !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          if ((self.attr_handle).equal?(OS._get_focus))
            # 64
            ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
            if (((ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
              event.attr_detail |= SWT::FOCUSED
            end
          end
        end
      end
      focused = !((event.attr_detail & SWT::FOCUSED)).equal?(0)
      if (draw_hot)
        event.attr_detail |= SWT::HOT
      end
      if (draw_selected)
        event.attr_detail |= SWT::SELECTED
      end
      if (draw_background_)
        event.attr_detail |= SWT::BACKGROUND
      end
      event.attr_x = cell_rect.attr_left
      event.attr_y = cell_rect.attr_top
      event.attr_width = cell_rect.attr_right - cell_rect.attr_left
      event.attr_height = cell_rect.attr_bottom - cell_rect.attr_top
      gc.set_clipping(event.attr_x, event.attr_y, event.attr_width, event.attr_height)
      send_event(SWT::EraseItem, event)
      event.attr_gc = nil
      clr_selection_text = data.attr_foreground
      gc.dispose
      OS._restore_dc(h_dc, n_saved_dc)
      if (is_disposed || item.is_disposed)
        return
      end
      if (event.attr_doit)
        @ignore_draw_foreground = ((event.attr_detail & SWT::FOREGROUND)).equal?(0)
        @ignore_draw_background = ((event.attr_detail & SWT::BACKGROUND)).equal?(0)
        @ignore_draw_selection = ((event.attr_detail & SWT::SELECTED)).equal?(0)
        @ignore_draw_focus = ((event.attr_detail & SWT::FOCUSED)).equal?(0)
        @ignore_draw_hot = ((event.attr_detail & SWT::HOT)).equal?(0)
      else
        @ignore_draw_foreground = @ignore_draw_background = @ignore_draw_selection = @ignore_draw_focus = @ignore_draw_hot = true
      end
      if (draw_selected)
        if (@ignore_draw_selection)
          @ignore_draw_hot = true
          if ((nmcd.attr_i_sub_item).equal?(0) || !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
            @selection_foreground = clr_selection_text
          end
          nmcd.attr_u_item_state &= ~OS::CDIS_SELECTED
          OS._move_memory(l_param, nmcd, NMLVCUSTOMDRAW.attr_sizeof)
        end
      else
        if (@ignore_draw_selection)
          nmcd.attr_u_item_state |= OS::CDIS_SELECTED
          OS._move_memory(l_param, nmcd, NMLVCUSTOMDRAW.attr_sizeof)
        end
      end
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      first_column = (nmcd.attr_i_sub_item).equal?(OS._send_message(hwnd_header, OS::HDM_ORDERTOINDEX, 0, 0))
      if (@ignore_draw_foreground && @ignore_draw_hot)
        if (!@ignore_draw_background && draw_background_)
          # 64
          background_rect = item.get_bounds(RJava.cast_to_int(nmcd.attr_dw_item_spec), nmcd.attr_i_sub_item, true, false, true, false, h_dc)
          fill_background(h_dc, clr_text_bk, background_rect)
        end
      end
      @focus_rect = nil
      if (!@ignore_draw_hot || !@ignore_draw_selection || !@ignore_draw_focus)
        full_text = !((self.attr_style & SWT::FULL_SELECTION)).equal?(0) || !first_column
        # 64
        text_rect = item.get_bounds(RJava.cast_to_int(nmcd.attr_dw_item_spec), nmcd.attr_i_sub_item, true, false, full_text, false, h_dc)
        if (((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          if (!(measure_event).nil?)
            text_rect.attr_right = Math.min(cell_rect.attr_right, measure_event.attr_x + measure_event.attr_width)
          end
          if (!@ignore_draw_focus)
            nmcd.attr_u_item_state &= ~OS::CDIS_FOCUS
            OS._move_memory(l_param, nmcd, NMLVCUSTOMDRAW.attr_sizeof)
            @focus_rect = text_rect
          end
        end
        if (@explorer_theme)
          if (!@ignore_draw_hot || (!@ignore_draw_selection && !(clr_selection_bk).equal?(-1)))
            hot = draw_hot
            p_clip_rect = RECT.new
            OS._set_rect(p_clip_rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
            rect = RECT.new
            OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
            if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
              # 64
              count = RJava.cast_to_int(OS._send_message(hwnd_header, OS::HDM_GETITEMCOUNT, 0, 0))
              # 64
              index = RJava.cast_to_int(OS._send_message(hwnd_header, OS::HDM_ORDERTOINDEX, count - 1, 0))
              header_rect = RECT.new
              OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)
              OS._map_window_points(hwnd_header, self.attr_handle, header_rect, 2)
              rect.attr_left = 0
              rect.attr_right = header_rect.attr_right
              p_clip_rect.attr_left = cell_rect.attr_left
              p_clip_rect.attr_right += EXPLORER_EXTRA
            else
              rect.attr_right += EXPLORER_EXTRA
              p_clip_rect.attr_right += EXPLORER_EXTRA
            end
            # long
            h_theme = OS._open_theme_data(self.attr_handle, Display::LISTVIEW)
            i_state_id = selected ? OS::LISS_SELECTED : OS::LISS_HOT
            if (!(OS._get_focus).equal?(self.attr_handle) && selected && !hot)
              i_state_id = OS::LISS_SELECTEDNOTFOCUS
            end
            OS._draw_theme_background(h_theme, h_dc, OS::LVP_LISTITEM, i_state_id, rect, p_clip_rect)
            OS._close_theme_data(h_theme)
          end
        else
          if (!@ignore_draw_selection && !(clr_selection_bk).equal?(-1))
            fill_background(h_dc, clr_selection_bk, text_rect)
          end
        end
      end
      if (focused && @ignore_draw_focus)
        nmcd.attr_u_item_state &= ~OS::CDIS_FOCUS
        OS._move_memory(l_param, nmcd, NMLVCUSTOMDRAW.attr_sizeof)
      end
      if (@ignore_draw_foreground)
        # 64
        clip_rect = item.get_bounds(RJava.cast_to_int(nmcd.attr_dw_item_spec), nmcd.attr_i_sub_item, true, true, true, false, h_dc)
        OS._save_dc(h_dc)
        OS._select_clip_rgn(h_dc, 0)
        OS._exclude_clip_rect(h_dc, clip_rect.attr_left, clip_rect.attr_top, clip_rect.attr_right, clip_rect.attr_bottom)
      end
    end
    
    typesig { [TableItem, NMTTCUSTOMDRAW, ::Java::Int, RECT] }
    def send_erase_item_event(item, nmcd, column, cell_rect)
      n_saved_dc = OS._save_dc(nmcd.attr_hdc)
      inset_rect = tool_tip_inset(cell_rect)
      OS._set_window_org_ex(nmcd.attr_hdc, inset_rect.attr_left, inset_rect.attr_top, nil)
      data = SwtGCData.new
      data.attr_device = self.attr_display
      data.attr_foreground = OS._get_text_color(nmcd.attr_hdc)
      data.attr_background = OS._get_bk_color(nmcd.attr_hdc)
      data.attr_font = item.get_font(column)
      # 64
      data.attr_ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
      gc = SwtGC.win32_new(nmcd.attr_hdc, data)
      event = Event.new
      event.attr_item = item
      event.attr_index = column
      event.attr_gc = gc
      event.attr_detail |= SWT::FOREGROUND
      event.attr_x = cell_rect.attr_left
      event.attr_y = cell_rect.attr_top
      event.attr_width = cell_rect.attr_right - cell_rect.attr_left
      event.attr_height = cell_rect.attr_bottom - cell_rect.attr_top
      # gc.setClipping (event.x, event.y, event.width, event.height);
      send_event(SWT::EraseItem, event)
      event.attr_gc = nil
      # int newTextClr = data.foreground;
      gc.dispose
      OS._restore_dc(nmcd.attr_hdc, n_saved_dc)
      return event
    end
    
    typesig { [TableItem, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def send_measure_item_event(item, row, column, h_dc)
      data = SwtGCData.new
      data.attr_device = self.attr_display
      data.attr_font = item.get_font(column)
      n_saved_dc = OS._save_dc(h_dc)
      gc = SwtGC.win32_new(h_dc, data)
      item_rect = item.get_bounds(row, column, true, true, false, false, h_dc)
      event = Event.new
      event.attr_item = item
      event.attr_gc = gc
      event.attr_index = column
      event.attr_x = item_rect.attr_left
      event.attr_y = item_rect.attr_top
      event.attr_width = item_rect.attr_right - item_rect.attr_left
      event.attr_height = item_rect.attr_bottom - item_rect.attr_top
      send_event(SWT::MeasureItem, event)
      event.attr_gc = nil
      gc.dispose
      OS._restore_dc(h_dc, n_saved_dc)
      if (!is_disposed && !item.is_disposed)
        if ((@column_count).equal?(0))
          # 64
          width = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNWIDTH, 0, 0))
          if (event.attr_x + event.attr_width > width)
            set_scroll_width(event.attr_x + event.attr_width)
          end
        end
        # long
        empty = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 0, 0)
        # long
        one_item = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 1, 0)
        item_height = OS._hiword(one_item) - OS._hiword(empty)
        if (event.attr_height > item_height)
          set_item_height(event.attr_height)
        end
      end
      return event
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def send_mouse_down_event(type, button, msg, w_param, l_param)
      display = self.attr_display
      display.attr_capture_changed = false
      if (!send_mouse_event(type, button, self.attr_handle, msg, w_param, l_param))
        if (!display.attr_capture_changed && !is_disposed)
          if (!(OS._get_capture).equal?(self.attr_handle))
            OS._set_capture(self.attr_handle)
          end
        end
        return LRESULT::ZERO
      end
      # Feature in Windows.  Inside WM_LBUTTONDOWN and WM_RBUTTONDOWN,
      # the widget starts a modal loop to determine if the user wants
      # to begin a drag/drop operation or marque select.  Unfortunately,
      # this modal loop eats the corresponding mouse up.  The fix is to
      # detect the cases when the modal loop has eaten the mouse up and
      # issue a fake mouse up.
      # 
      # By observation, when the mouse is clicked anywhere but the check
      # box, the widget eats the mouse up.  When the mouse is dragged,
      # the widget does not eat the mouse up.
      pinfo = LVHITTESTINFO.new
      pinfo.attr_x = OS._get_x_lparam(l_param)
      pinfo.attr_y = OS._get_y_lparam(l_param)
      OS._send_message(self.attr_handle, OS::LVM_HITTEST, 0, pinfo)
      if (((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
        if (hooks(SWT::MeasureItem))
          # Bug in Windows.  When LVM_SUBITEMHITTEST is used to hittest
          # a point that is above the table, instead of returning -1 to
          # indicate that the hittest failed, a negative index is returned.
          # The fix is to consider any value that is negative a failure.
          if (OS._send_message(self.attr_handle, OS::LVM_SUBITEMHITTEST, 0, pinfo) < 0)
            # 64
            count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
            if (!(count).equal?(0))
              rect = RECT.new
              rect.attr_left = OS::LVIR_ICON
              @ignore_custom_draw = true
              # long
              code = OS._send_message(self.attr_handle, OS::LVM_GETITEMRECT, 0, rect)
              @ignore_custom_draw = false
              if (!(code).equal?(0))
                pinfo.attr_x = rect.attr_left
                # Bug in Windows.  When LVM_SUBITEMHITTEST is used to hittest
                # a point that is above the table, instead of returning -1 to
                # indicate that the hittest failed, a negative index is returned.
                # The fix is to consider any value that is negative a failure.
                OS._send_message(self.attr_handle, OS::LVM_SUBITEMHITTEST, 0, pinfo)
                if (pinfo.attr_i_item < 0)
                  pinfo.attr_i_item = -1
                end
                pinfo.attr_flags &= ~(OS::LVHT_ONITEMICON | OS::LVHT_ONITEMLABEL)
              end
            end
          else
            if (!(pinfo.attr_i_sub_item).equal?(0))
              pinfo.attr_i_item = -1
            end
          end
        end
      end
      # Force the table to have focus so that when the user
      # reselects the focus item, the LVIS_FOCUSED state bits
      # for the item will be set.  If the user did not click on
      # an item, then set focus to the table so that it will
      # come to the front and take focus in the work around
      # below.
      OS._set_focus(self.attr_handle)
      # Feature in Windows.  When the user selects outside of
      # a table item, Windows deselects all the items, even
      # when the table is multi-select.  While not strictly
      # wrong, this is unexpected.  The fix is to detect the
      # case and avoid calling the window proc.
      if (!((self.attr_style & SWT::SINGLE)).equal?(0) || hooks(SWT::MouseDown) || hooks(SWT::MouseUp))
        if ((pinfo.attr_i_item).equal?(-1))
          if (!display.attr_capture_changed && !is_disposed)
            if (!(OS._get_capture).equal?(self.attr_handle))
              OS._set_capture(self.attr_handle)
            end
          end
          return LRESULT::ZERO
        end
      end
      # Feature in Windows.  When a table item is reselected
      # in a single-select table, Windows does not issue a
      # WM_NOTIFY because the item state has not changed.
      # This is strictly correct but is inconsistent with the
      # list widget and other widgets in Windows.  The fix is
      # to detect the case when an item is reselected and mark
      # it as selected.
      force_select = false
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETSELECTEDCOUNT, 0, 0))
      if ((count).equal?(1) && !(pinfo.attr_i_item).equal?(-1))
        lv_item = LVITEM.new
        lv_item.attr_mask = OS::LVIF_STATE
        lv_item.attr_state_mask = OS::LVIS_SELECTED
        lv_item.attr_i_item = pinfo.attr_i_item
        OS._send_message(self.attr_handle, OS::LVM_GETITEM, 0, lv_item)
        if (!((lv_item.attr_state & OS::LVIS_SELECTED)).equal?(0))
          force_select = true
        end
      end
      # Determine whether the user has selected an item based on SWT.MeasureItem
      @full_row_select = false
      if (!(pinfo.attr_i_item).equal?(-1))
        if (((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          if (hooks(SWT::MeasureItem))
            @full_row_select = hit_test_selection(pinfo.attr_i_item, pinfo.attr_x, pinfo.attr_y)
            if (@full_row_select)
              flags = OS::LVHT_ONITEMICON | OS::LVHT_ONITEMLABEL
              if (!((pinfo.attr_flags & flags)).equal?(0))
                @full_row_select = false
              end
            end
          end
        end
      end
      # Feature in Windows.  Inside WM_LBUTTONDOWN and WM_RBUTTONDOWN,
      # the widget starts a modal loop to determine if the user wants
      # to begin a drag/drop operation or marque select.  This modal
      # loop eats mouse events until a drag is detected.  The fix is
      # to avoid this behavior by only running the drag and drop when
      # the event is hooked and the mouse is over an item.
      drag_detect = !((self.attr_state & DRAG_DETECT)).equal?(0) && hooks(SWT::DragDetect)
      if (!drag_detect)
        flags = OS::LVHT_ONITEMICON | OS::LVHT_ONITEMLABEL
        drag_detect = (pinfo.attr_i_item).equal?(-1) || ((pinfo.attr_flags & flags)).equal?(0)
        if (@full_row_select)
          drag_detect = true
        end
      end
      # Temporarily set LVS_EX_FULLROWSELECT to allow drag and drop
      # and the mouse to manipulate items based on the results of
      # the SWT.MeasureItem event.
      if (@full_row_select)
        OS._update_window(self.attr_handle)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, OS::LVS_EX_FULLROWSELECT, OS::LVS_EX_FULLROWSELECT)
      end
      @drag_started = false
      display.attr_drag_cancelled = false
      if (!drag_detect)
        display.attr_run_drag_drop = false
      end
      # long
      code = call_window_proc(self.attr_handle, msg, w_param, l_param, force_select)
      if (!drag_detect)
        display.attr_run_drag_drop = true
      end
      if (@full_row_select)
        @full_row_select = false
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
        OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, OS::LVS_EX_FULLROWSELECT, 0)
      end
      if (@drag_started || display.attr_drag_cancelled)
        if (!display.attr_capture_changed && !is_disposed)
          if (!(OS._get_capture).equal?(self.attr_handle))
            OS._set_capture(self.attr_handle)
          end
        end
      else
        flags = OS::LVHT_ONITEMLABEL | OS::LVHT_ONITEMICON
        fake_mouse_up = !((pinfo.attr_flags & flags)).equal?(0)
        if (!fake_mouse_up && !((self.attr_style & SWT::MULTI)).equal?(0))
          fake_mouse_up = ((pinfo.attr_flags & OS::LVHT_ONITEMSTATEICON)).equal?(0)
        end
        if (fake_mouse_up)
          send_mouse_event(SWT::MouseUp, button, self.attr_handle, msg, w_param, l_param)
        end
      end
      return LRESULT.new(code)
    end
    
    typesig { [TableItem, NMLVCUSTOMDRAW] }
    def send_paint_item_event(item, nmcd)
      # long
      h_dc = nmcd.attr_hdc
      data = SwtGCData.new
      data.attr_device = self.attr_display
      data.attr_font = item.get_font(nmcd.attr_i_sub_item)
      # Bug in Windows.  For some reason, CDIS_SELECTED always set,
      # even for items that are not selected.  The fix is to get
      # the selection state from the item.
      lv_item = LVITEM.new
      lv_item.attr_mask = OS::LVIF_STATE
      lv_item.attr_state_mask = OS::LVIS_SELECTED
      # 64
      lv_item.attr_i_item = RJava.cast_to_int(nmcd.attr_dw_item_spec)
      # long
      result = OS._send_message(self.attr_handle, OS::LVM_GETITEM, 0, lv_item)
      selected = !(result).equal?(0) && !((lv_item.attr_state & OS::LVIS_SELECTED)).equal?(0)
      draw_selected = false
      draw_background_ = false
      draw_hot = false
      if ((nmcd.attr_i_sub_item).equal?(0) || !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
        draw_hot = (@hot_index).equal?(nmcd.attr_dw_item_spec)
      end
      if (OS._is_window_enabled(self.attr_handle))
        if (selected && ((nmcd.attr_i_sub_item).equal?(0) || !((self.attr_style & SWT::FULL_SELECTION)).equal?(0)))
          if ((OS._get_focus).equal?(self.attr_handle) || self.attr_display.get_high_contrast)
            draw_selected = true
            if (!(@selection_foreground).equal?(-1))
              data.attr_foreground = @selection_foreground
            else
              data.attr_foreground = OS._get_sys_color(OS::COLOR_HIGHLIGHTTEXT)
            end
            data.attr_background = OS._get_sys_color(OS::COLOR_HIGHLIGHT)
          else
            draw_selected = ((self.attr_style & SWT::HIDE_SELECTION)).equal?(0)
            data.attr_foreground = OS._get_text_color(h_dc)
            data.attr_background = OS._get_sys_color(OS::COLOR_3DFACE)
          end
          if (@explorer_theme && (@selection_foreground).equal?(-1))
            clr_text = !(item.attr_cell_foreground).nil? ? item.attr_cell_foreground[nmcd.attr_i_sub_item] : -1
            if ((clr_text).equal?(-1))
              clr_text = item.attr_foreground
            end
            data.attr_foreground = !(clr_text).equal?(-1) ? clr_text : get_foreground_pixel
          end
        else
          clr_text = !(item.attr_cell_foreground).nil? ? item.attr_cell_foreground[nmcd.attr_i_sub_item] : -1
          if ((clr_text).equal?(-1))
            clr_text = item.attr_foreground
          end
          clr_text_bk = !(item.attr_cell_background).nil? ? item.attr_cell_background[nmcd.attr_i_sub_item] : -1
          if ((clr_text_bk).equal?(-1))
            clr_text_bk = item.attr_background
          end
          draw_background_ = !(clr_text_bk).equal?(-1)
          # Bug in Windows.  When LVM_SETTEXTBKCOLOR, LVM_SETBKCOLOR
          # or LVM_SETTEXTCOLOR is used to set the background color of
          # the the text or the control, the color is not set in the HDC
          # that is provided in Custom Draw.  The fix is to explicitly
          # set the color.
          if ((clr_text).equal?(-1) || (clr_text_bk).equal?(-1))
            control = find_background_control
            if ((control).nil?)
              control = self
            end
            if ((clr_text).equal?(-1))
              clr_text = control.get_foreground_pixel
            end
            if ((clr_text_bk).equal?(-1))
              clr_text_bk = control.get_background_pixel
            end
          end
          data.attr_foreground = !(clr_text).equal?(-1) ? clr_text : OS._get_text_color(h_dc)
          data.attr_background = !(clr_text_bk).equal?(-1) ? clr_text_bk : OS._get_bk_color(h_dc)
        end
      else
        data.attr_foreground = OS._get_sys_color(OS::COLOR_GRAYTEXT)
        data.attr_background = OS._get_sys_color(OS::COLOR_3DFACE)
      end
      # 64
      data.attr_ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
      n_saved_dc = OS._save_dc(h_dc)
      gc = SwtGC.win32_new(h_dc, data)
      # 64
      item_rect = item.get_bounds(RJava.cast_to_int(nmcd.attr_dw_item_spec), nmcd.attr_i_sub_item, true, true, false, false, h_dc)
      event = Event.new
      event.attr_item = item
      event.attr_gc = gc
      event.attr_index = nmcd.attr_i_sub_item
      event.attr_detail |= SWT::FOREGROUND
      # if ((nmcd.uItemState & OS.CDIS_FOCUS) != 0) {
      if ((OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, -1, OS::LVNI_FOCUSED)).equal?(nmcd.attr_dw_item_spec))
        if ((nmcd.attr_i_sub_item).equal?(0) || !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          if ((self.attr_handle).equal?(OS._get_focus))
            # 64
            ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
            if (((ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
              event.attr_detail |= SWT::FOCUSED
            end
          end
        end
      end
      if (draw_hot)
        event.attr_detail |= SWT::HOT
      end
      if (draw_selected)
        event.attr_detail |= SWT::SELECTED
      end
      if (draw_background_)
        event.attr_detail |= SWT::BACKGROUND
      end
      event.attr_x = item_rect.attr_left
      event.attr_y = item_rect.attr_top
      event.attr_width = item_rect.attr_right - item_rect.attr_left
      event.attr_height = item_rect.attr_bottom - item_rect.attr_top
      # 64
      cell_rect = item.get_bounds(RJava.cast_to_int(nmcd.attr_dw_item_spec), nmcd.attr_i_sub_item, true, true, true, true, h_dc)
      cell_width = cell_rect.attr_right - cell_rect.attr_left
      cell_height = cell_rect.attr_bottom - cell_rect.attr_top
      gc.set_clipping(cell_rect.attr_left, cell_rect.attr_top, cell_width, cell_height)
      send_event(SWT::PaintItem, event)
      if (data.attr_focus_drawn)
        @focus_rect = nil
      end
      event.attr_gc = nil
      gc.dispose
      OS._restore_dc(h_dc, n_saved_dc)
    end
    
    typesig { [TableItem, NMTTCUSTOMDRAW, ::Java::Int, RECT] }
    def send_paint_item_event(item, nmcd, column, item_rect)
      n_saved_dc = OS._save_dc(nmcd.attr_hdc)
      inset_rect = tool_tip_inset(item_rect)
      OS._set_window_org_ex(nmcd.attr_hdc, inset_rect.attr_left, inset_rect.attr_top, nil)
      data = SwtGCData.new
      data.attr_device = self.attr_display
      data.attr_font = item.get_font(column)
      data.attr_foreground = OS._get_text_color(nmcd.attr_hdc)
      data.attr_background = OS._get_bk_color(nmcd.attr_hdc)
      # 64
      data.attr_ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
      gc = SwtGC.win32_new(nmcd.attr_hdc, data)
      event = Event.new
      event.attr_item = item
      event.attr_index = column
      event.attr_gc = gc
      event.attr_detail |= SWT::FOREGROUND
      event.attr_x = item_rect.attr_left
      event.attr_y = item_rect.attr_top
      event.attr_width = item_rect.attr_right - item_rect.attr_left
      event.attr_height = item_rect.attr_bottom - item_rect.attr_top
      # gc.setClipping (cellRect.left, cellRect.top, cellWidth, cellHeight);
      send_event(SWT::PaintItem, event)
      event.attr_gc = nil
      gc.dispose
      OS._restore_dc(nmcd.attr_hdc, n_saved_dc)
      return event
    end
    
    typesig { [::Java::Int] }
    # long
    def set_background_image(h_bitmap)
      super(h_bitmap)
      if (!(h_bitmap).equal?(0))
        set_background_transparent(true)
      else
        if (!hooks(SWT::MeasureItem) && !hooks(SWT::EraseItem) && !hooks(SWT::PaintItem))
          set_background_transparent(false)
        end
      end
    end
    
    typesig { [::Java::Int] }
    def set_background_pixel(new_pixel)
      # 64
      old_pixel = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))
      if (!(old_pixel).equal?(OS::CLR_NONE))
        if (!(find_image_control).nil?)
          return
        end
        if ((new_pixel).equal?(-1))
          new_pixel = default_background
        end
        if (!(old_pixel).equal?(new_pixel))
          OS._send_message(self.attr_handle, OS::LVM_SETBKCOLOR, 0, new_pixel)
          OS._send_message(self.attr_handle, OS::LVM_SETTEXTBKCOLOR, 0, new_pixel)
          if (!((self.attr_style & SWT::CHECK)).equal?(0))
            fix_checkbox_image_list_color(true)
          end
        end
      end
      # Feature in Windows.  When the background color is changed,
      # the table does not redraw until the next WM_PAINT.  The fix
      # is to force a redraw.
      OS._invalidate_rect(self.attr_handle, nil, true)
    end
    
    typesig { [::Java::Boolean] }
    def set_background_transparent(transparent)
      # Bug in Windows.  When the table has the extended style
      # LVS_EX_FULLROWSELECT and LVM_SETBKCOLOR is used with
      # CLR_NONE to make the table transparent, Windows draws
      # a black rectangle around the first column.  The fix is
      # clear LVS_EX_FULLROWSELECT.
      # 
      # Feature in Windows.  When LVM_SETBKCOLOR is used with
      # CLR_NONE and LVM_SETSELECTEDCOLUMN is used to select
      # a column, Windows fills the column with the selection
      # color, drawing on top of the background image and any
      # other custom drawing.  The fix is to clear the selected
      # column.
      # 
      # 64
      old_pixel = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))
      if (transparent)
        if (!(old_pixel).equal?(OS::CLR_NONE))
          # Bug in Windows.  When the background color is changed,
          # the table does not redraw until the next WM_PAINT.  The
          # fix is to force a redraw.
          OS._send_message(self.attr_handle, OS::LVM_SETBKCOLOR, 0, OS::CLR_NONE)
          OS._send_message(self.attr_handle, OS::LVM_SETTEXTBKCOLOR, 0, OS::CLR_NONE)
          OS._invalidate_rect(self.attr_handle, nil, true)
          # Clear LVS_EX_FULLROWSELECT
          if (!@explorer_theme && !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
            bits = OS::LVS_EX_FULLROWSELECT
            OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, bits, 0)
          end
          # Clear LVM_SETSELECTEDCOLUMN
          if (!((@sort_direction & (SWT::UP | SWT::DOWN))).equal?(0))
            if (!(@sort_column).nil? && !@sort_column.is_disposed)
              OS._send_message(self.attr_handle, OS::LVM_SETSELECTEDCOLUMN, -1, 0)
              # Bug in Windows.  When LVM_SETSELECTEDCOLUMN is set, Windows
              # does not redraw either the new or the previous selected column.
              # The fix is to force a redraw.
              OS._invalidate_rect(self.attr_handle, nil, true)
            end
          end
        end
      else
        if ((old_pixel).equal?(OS::CLR_NONE))
          control = find_background_control
          if ((control).nil?)
            control = self
          end
          if ((control.attr_background_image).nil?)
            new_pixel = control.get_background_pixel
            OS._send_message(self.attr_handle, OS::LVM_SETBKCOLOR, 0, new_pixel)
            OS._send_message(self.attr_handle, OS::LVM_SETTEXTBKCOLOR, 0, new_pixel)
            if (!((self.attr_style & SWT::CHECK)).equal?(0))
              fix_checkbox_image_list_color(true)
            end
            OS._invalidate_rect(self.attr_handle, nil, true)
          end
          # Set LVS_EX_FULLROWSELECT
          if (!@explorer_theme && !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
            if (!hooks(SWT::EraseItem) && !hooks(SWT::PaintItem))
              bits = OS::LVS_EX_FULLROWSELECT
              OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, bits, bits)
            end
          end
          # Set LVM_SETSELECTEDCOLUMN
          if (!((@sort_direction & (SWT::UP | SWT::DOWN))).equal?(0))
            if (!(@sort_column).nil? && !@sort_column.is_disposed)
              column = index_of(@sort_column)
              if (!(column).equal?(-1))
                OS._send_message(self.attr_handle, OS::LVM_SETSELECTEDCOLUMN, column, 0)
                # Bug in Windows.  When LVM_SETSELECTEDCOLUMN is set, Windows
                # does not redraw either the new or the previous selected column.
                # The fix is to force a redraw.
                OS._invalidate_rect(self.attr_handle, nil, true)
              end
            end
          end
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_bounds(x, y, width, height, flags, defer)
      # Bug in Windows.  If the table column widths are adjusted
      # in WM_SIZE or WM_POSITIONCHANGED using LVM_SETCOLUMNWIDTH
      # blank lines may be inserted at the top of the table.  A
      # call to LVM_GETTOPINDEX will return a negative number (this
      # is an impossible result).  Once the blank lines appear,
      # there seems to be no way to get rid of them, other than
      # destroying and recreating the table.  The fix is to send
      # the resize notification after the size has been changed in
      # the operating system.
      # 
      # NOTE:  This does not fix the case when the user is resizing
      # columns dynamically.  There is no fix for this case at this
      # time.
      set_defer_resize(true)
      super(x, y, width, height, flags, false)
      set_defer_resize(false)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Sets the order that the items in the receiver should
    # be displayed in to the given argument which is described
    # in terms of the zero-relative ordering of when the items
    # were added.
    # 
    # @param order the new order to display the items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item order is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the item order is not the same length as the number of items</li>
    # </ul>
    # 
    # @see Table#getColumnOrder()
    # @see TableColumn#getMoveable()
    # @see TableColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.1
    def set_column_order(order)
      check_widget
      if ((order).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      if ((@column_count).equal?(0))
        if (!(order.attr_length).equal?(0))
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        return
      end
      if (!(order.attr_length).equal?(@column_count))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      old_order = Array.typed(::Java::Int).new(@column_count) { 0 }
      OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNORDERARRAY, @column_count, old_order)
      reorder = false
      seen = Array.typed(::Java::Boolean).new(@column_count) { false }
      i = 0
      while i < order.attr_length
        index = order[i]
        if (index < 0 || index >= @column_count)
          error(SWT::ERROR_INVALID_RANGE)
        end
        if (seen[index])
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        seen[index] = true
        if (!(index).equal?(old_order[i]))
          reorder = true
        end
        i += 1
      end
      if (reorder)
        old_rects = Array.typed(RECT).new(@column_count) { nil }
        i_ = 0
        while i_ < @column_count
          old_rects[i_] = RECT.new
          OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, i_, old_rects[i_])
          i_ += 1
        end
        OS._send_message(self.attr_handle, OS::LVM_SETCOLUMNORDERARRAY, order.attr_length, order)
        # Bug in Windows.  When LVM_SETCOLUMNORDERARRAY is used to change
        # the column order, the header redraws correctly but the table does
        # not.  The fix is to force a redraw.
        OS._invalidate_rect(self.attr_handle, nil, true)
        new_columns = Array.typed(TableColumn).new(@column_count) { nil }
        System.arraycopy(@columns, 0, new_columns, 0, @column_count)
        new_rect = RECT.new
        i__ = 0
        while i__ < @column_count
          column = new_columns[i__]
          if (!column.is_disposed)
            OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, i__, new_rect)
            if (!(new_rect.attr_left).equal?(old_rects[i__].attr_left))
              column.update_tool_tip(i__)
              column.send_event(SWT::Move)
            end
          end
          i__ += 1
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_custom_draw(custom_draw)
      if ((@custom_draw).equal?(custom_draw))
        return
      end
      if (!@custom_draw && custom_draw && !(@current_item).nil?)
        OS._invalidate_rect(self.attr_handle, nil, true)
      end
      @custom_draw = custom_draw
    end
    
    typesig { [::Java::Boolean] }
    def set_defer_resize(defer)
      if (defer)
        if ((((@resize_count += 1) - 1)).equal?(0))
          @was_resized = false
          # Feature in Windows.  When LVM_SETBKCOLOR is used with CLR_NONE
          # to make the background of the table transparent, drawing becomes
          # slow.  The fix is to temporarily clear CLR_NONE when redraw is
          # turned off.
          if (hooks(SWT::MeasureItem) || hooks(SWT::EraseItem) || hooks(SWT::PaintItem))
            if ((((self.attr_draw_count += 1) - 1)).equal?(0) && OS._is_window_visible(self.attr_handle))
              OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
              OS._send_message(self.attr_handle, OS::LVM_SETBKCOLOR, 0, 0xffffff)
            end
          end
        end
      else
        if (((@resize_count -= 1)).equal?(0))
          if (hooks(SWT::MeasureItem) || hooks(SWT::EraseItem) || hooks(SWT::PaintItem))
            # && OS.IsWindowVisible (handle)
            if (((self.attr_draw_count -= 1)).equal?(0))
              OS._send_message(self.attr_handle, OS::LVM_SETBKCOLOR, 0, OS::CLR_NONE)
              OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
              if (OS::IsWinCE)
                # long
                hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
                if (!(hwnd_header).equal?(0))
                  OS._invalidate_rect(hwnd_header, nil, true)
                end
                OS._invalidate_rect(self.attr_handle, nil, true)
              else
                flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
                OS._redraw_window(self.attr_handle, nil, 0, flags)
              end
            end
          end
          if (@was_resized)
            @was_resized = false
            set_resize_children(false)
            send_event(SWT::Resize)
            if (is_disposed)
              return
            end
            if (!(self.attr_layout).nil?)
              mark_layout(false, false)
              update_layout(false, false)
            end
            set_resize_children(true)
          end
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_checkbox_image_list(width, height, fix_scroll)
      if (((self.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      count = 4
      flags = 0
      if (OS::IsWinCE)
        flags |= OS::ILC_COLOR
      else
        # long
        h_dc = OS._get_dc(self.attr_handle)
        bits = OS._get_device_caps(h_dc, OS::BITSPIXEL)
        planes = OS._get_device_caps(h_dc, OS::PLANES)
        OS._release_dc(self.attr_handle, h_dc)
        depth = bits * planes
        case (depth)
        when 4
          flags |= OS::ILC_COLOR4
        when 8
          flags |= OS::ILC_COLOR8
        when 16
          flags |= OS::ILC_COLOR16
        when 24
          flags |= OS::ILC_COLOR24
        when 32
          flags |= OS::ILC_COLOR32
        else
          flags |= OS::ILC_COLOR
        end
      end
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        flags |= OS::ILC_MIRROR
      end
      if (OS::COMCTL32_MAJOR < 6 || !OS._is_app_themed)
        flags |= OS::ILC_MASK
      end
      # long
      h_state_list = OS._image_list_create(width, height, flags, count, count)
      # long
      h_dc = OS._get_dc(self.attr_handle)
      # long
      mem_dc = OS._create_compatible_dc(h_dc)
      # long
      h_bitmap = OS._create_compatible_bitmap(h_dc, width * count, height)
      # long
      h_old_bitmap = OS._select_object(mem_dc, h_bitmap)
      rect = RECT.new
      OS._set_rect(rect, 0, 0, width * count, height)
      clr_background = 0
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        control = find_background_control
        if ((control).nil?)
          control = self
        end
        clr_background = control.get_background_pixel
      else
        clr_background = 0x20000ff
        if (((clr_background & 0xffffff)).equal?(OS._get_sys_color(OS::COLOR_WINDOW)))
          clr_background = 0x200ff00
        end
      end
      # long
      h_brush = OS._create_solid_brush(clr_background)
      OS._fill_rect(mem_dc, rect, h_brush)
      OS._delete_object(h_brush)
      # long
      old_font = OS._select_object(h_dc, default_font)
      tm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
      OS._get_text_metrics(h_dc, tm)
      OS._select_object(h_dc, old_font)
      item_width = Math.min(tm.attr_tm_height, width)
      item_height = Math.min(tm.attr_tm_height, height)
      left = (width - item_width) / 2
      top = (height - item_height) / 2 + 1
      OS._set_rect(rect, left, top, left + item_width, top + item_height)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = self.attr_display.h_button_theme
        OS._draw_theme_background(h_theme, mem_dc, OS::BP_CHECKBOX, OS::CBS_UNCHECKEDNORMAL, rect, nil)
        rect.attr_left += width
        rect.attr_right += width
        OS._draw_theme_background(h_theme, mem_dc, OS::BP_CHECKBOX, OS::CBS_CHECKEDNORMAL, rect, nil)
        rect.attr_left += width
        rect.attr_right += width
        OS._draw_theme_background(h_theme, mem_dc, OS::BP_CHECKBOX, OS::CBS_UNCHECKEDNORMAL, rect, nil)
        rect.attr_left += width
        rect.attr_right += width
        OS._draw_theme_background(h_theme, mem_dc, OS::BP_CHECKBOX, OS::CBS_MIXEDNORMAL, rect, nil)
      else
        OS._draw_frame_control(mem_dc, rect, OS::DFC_BUTTON, OS::DFCS_BUTTONCHECK | OS::DFCS_FLAT)
        rect.attr_left += width
        rect.attr_right += width
        OS._draw_frame_control(mem_dc, rect, OS::DFC_BUTTON, OS::DFCS_BUTTONCHECK | OS::DFCS_CHECKED | OS::DFCS_FLAT)
        rect.attr_left += width
        rect.attr_right += width
        OS._draw_frame_control(mem_dc, rect, OS::DFC_BUTTON, OS::DFCS_BUTTONCHECK | OS::DFCS_INACTIVE | OS::DFCS_FLAT)
        rect.attr_left += width
        rect.attr_right += width
        OS._draw_frame_control(mem_dc, rect, OS::DFC_BUTTON, OS::DFCS_BUTTONCHECK | OS::DFCS_CHECKED | OS::DFCS_INACTIVE | OS::DFCS_FLAT)
      end
      OS._select_object(mem_dc, h_old_bitmap)
      OS._delete_dc(mem_dc)
      OS._release_dc(self.attr_handle, h_dc)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        OS._image_list_add(h_state_list, h_bitmap, 0)
      else
        OS._image_list_add_masked(h_state_list, h_bitmap, clr_background)
      end
      OS._delete_object(h_bitmap)
      # Bug in Windows.  Making any change to an item that
      # changes the item height of a table while the table
      # is scrolled can cause the lines to draw incorrectly.
      # This happens even when the lines are not currently
      # visible and are shown afterwards.  The fix is to
      # save the top index, scroll to the top of the table
      # and then restore the original top index.
      top_index = get_top_index
      if (fix_scroll && !(top_index).equal?(0))
        set_redraw(false)
        set_top_index(0)
      end
      # long
      h_old_state_list = OS._send_message(self.attr_handle, OS::LVM_GETIMAGELIST, OS::LVSIL_STATE, 0)
      OS._send_message(self.attr_handle, OS::LVM_SETIMAGELIST, OS::LVSIL_STATE, h_state_list)
      if (!(h_old_state_list).equal?(0))
        OS._image_list_destroy(h_old_state_list)
      end
      # Bug in Windows.  Setting the LVSIL_STATE state image list
      # when the table already has a LVSIL_SMALL image list causes
      # pixel corruption of the images.  The fix is to reset the
      # LVSIL_SMALL image list.
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        # long
        h_image_list = OS._send_message(self.attr_handle, OS::LVM_GETIMAGELIST, OS::LVSIL_SMALL, 0)
        OS._send_message(self.attr_handle, OS::LVM_SETIMAGELIST, OS::LVSIL_SMALL, h_image_list)
      end
      if (fix_scroll && !(top_index).equal?(0))
        set_top_index(top_index)
        set_redraw(true)
      end
    end
    
    typesig { [::Java::Int] }
    def set_focus_index(index)
      # checkWidget ();
      # 
      # An index of -1 will apply the change to all
      # items.  Ensure that index is greater than -1.
      if (index < 0)
        return
      end
      lv_item = LVITEM.new
      lv_item.attr_state = OS::LVIS_FOCUSED
      lv_item.attr_state_mask = OS::LVIS_FOCUSED
      @ignore_select = true
      OS._send_message(self.attr_handle, OS::LVM_SETITEMSTATE, index, lv_item)
      @ignore_select = false
      OS._send_message(self.attr_handle, OS::LVM_SETSELECTIONMARK, 0, index)
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      # Bug in Windows.  Making any change to an item that
      # changes the item height of a table while the table
      # is scrolled can cause the lines to draw incorrectly.
      # This happens even when the lines are not currently
      # visible and are shown afterwards.  The fix is to
      # save the top index, scroll to the top of the table
      # and then restore the original top index.
      top_index = get_top_index
      if (!(top_index).equal?(0))
        set_redraw(false)
        set_top_index(0)
      end
      if (!(@item_height).equal?(-1))
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits | OS::LVS_OWNERDRAWFIXED)
      end
      super(font)
      if (!(@item_height).equal?(-1))
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits & ~OS::LVS_OWNERDRAWFIXED)
      end
      set_scroll_width(nil, true)
      if (!(top_index).equal?(0))
        set_top_index(top_index)
        set_redraw(true)
      end
      # Bug in Windows.  Setting the font will cause the table
      # to be redrawn but not the column headers.  The fix is
      # to force a redraw of the column headers.
      # 
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      OS._invalidate_rect(hwnd_header, nil, true)
    end
    
    typesig { [::Java::Int] }
    def set_foreground_pixel(pixel)
      # The Windows table control uses CLR_DEFAULT to indicate
      # that it is using the default foreground color.  This
      # is undocumented.
      if ((pixel).equal?(-1))
        pixel = OS::CLR_DEFAULT
      end
      OS._send_message(self.attr_handle, OS::LVM_SETTEXTCOLOR, 0, pixel)
      # Feature in Windows.  When the foreground color is
      # changed, the table does not redraw until the next
      # WM_PAINT.  The fix is to force a redraw.
      OS._invalidate_rect(self.attr_handle, nil, true)
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver's header as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, marking
    # it visible may not actually cause it to be displayed.
    # </p>
    # 
    # @param show the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_header_visible(show)
      check_widget
      new_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      new_bits &= ~OS::LVS_NOCOLUMNHEADER
      if (!show)
        new_bits |= OS::LVS_NOCOLUMNHEADER
      end
      # Feature in Windows.  Setting or clearing LVS_NOCOLUMNHEADER
      # causes the table to scroll to the beginning.  The fix is to
      # save and restore the top index causing the table to scroll
      # to the new location.
      old_index = get_top_index
      OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
      # Bug in Windows.  Making any change to an item that
      # changes the item height of a table while the table
      # is scrolled can cause the lines to draw incorrectly.
      # This happens even when the lines are not currently
      # visible and are shown afterwards.  The fix is to
      # save the top index, scroll to the top of the table
      # and then restore the original top index.
      new_index = get_top_index
      if (!(new_index).equal?(0))
        set_redraw(false)
        set_top_index(0)
      end
      if (show)
        # 64
        bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
        if (!((bits & OS::LVS_EX_GRIDLINES)).equal?(0))
          fix_item_height(false)
        end
      end
      set_top_index(old_index)
      if (!(new_index).equal?(0))
        set_redraw(true)
      end
      update_header_tool_tips
    end
    
    typesig { [::Java::Int] }
    # Sets the number of items contained in the receiver.
    # 
    # @param count the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_item_count(count)
      check_widget
      count = Math.max(0, count)
      # 64
      item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if ((count).equal?(item_count))
        return
      end
      set_defer_resize(true)
      is_virtual = !((self.attr_style & SWT::VIRTUAL)).equal?(0)
      if (!is_virtual)
        set_redraw(false)
      end
      index = count
      while (index < item_count)
        item = @items[index]
        if (!(item).nil? && !item.is_disposed)
          item.release(false)
        end
        if (!is_virtual)
          @ignore_select = @ignore_shrink = true
          # long
          code = OS._send_message(self.attr_handle, OS::LVM_DELETEITEM, count, 0)
          @ignore_select = @ignore_shrink = false
          if ((code).equal?(0))
            break
          end
        end
        index += 1
      end
      if (index < item_count)
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      length = Math.max(4, (count + 3) / 4 * 4)
      new_items = Array.typed(TableItem).new(length) { nil }
      System.arraycopy(@items, 0, new_items, 0, Math.min(count, item_count))
      @items = new_items
      if (is_virtual)
        flags = OS::LVSICF_NOINVALIDATEALL | OS::LVSICF_NOSCROLL
        OS._send_message(self.attr_handle, OS::LVM_SETITEMCOUNT, count, flags)
        # Bug in Windows.  When a virtual table contains items and
        # LVM_SETITEMCOUNT is used to set the new item count to zero,
        # Windows does not redraw the table.  Note that simply not
        # specifying LVSICF_NOINVALIDATEALL or LVSICF_NOSCROLL does
        # correct the problem.  The fix is to force a redraw.
        if ((count).equal?(0) && !(item_count).equal?(0))
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
      else
        i = item_count
        while i < count
          @items[i] = TableItem.new(self, SWT::NONE, i, true)
          i += 1
        end
      end
      if (!is_virtual)
        set_redraw(true)
      end
      if ((item_count).equal?(0))
        set_scroll_width(nil, false)
      end
      set_defer_resize(false)
    end
    
    typesig { [::Java::Boolean] }
    def set_item_height(fix_scroll)
      # Bug in Windows.  Making any change to an item that
      # changes the item height of a table while the table
      # is scrolled can cause the lines to draw incorrectly.
      # This happens even when the lines are not currently
      # visible and are shown afterwards.  The fix is to
      # save the top index, scroll to the top of the table
      # and then restore the original top index.
      top_index = get_top_index
      if (fix_scroll && !(top_index).equal?(0))
        set_redraw(false)
        set_top_index(0)
      end
      if ((@item_height).equal?(-1))
        # Feature in Windows.  Windows has no API to restore the
        # defualt item height for a table.  The fix is to use
        # WM_SETFONT which recomputes and assigns the default item
        # height.
        # 
        # long
        h_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
        OS._send_message(self.attr_handle, OS::WM_SETFONT, h_font, 0)
      else
        # Feature in Windows.  Window has no API to set the item
        # height for a table.  The fix is to set temporarily set
        # LVS_OWNERDRAWFIXED then resize the table, causing a
        # WM_MEASUREITEM to be sent, then clear LVS_OWNERDRAWFIXED.
        force_resize
        rect = RECT.new
        OS._get_window_rect(self.attr_handle, rect)
        width = rect.attr_right - rect.attr_left
        height = rect.attr_bottom - rect.attr_top
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits | OS::LVS_OWNERDRAWFIXED)
        flags = OS::SWP_NOACTIVATE | OS::SWP_NOMOVE | OS::SWP_NOREDRAW | OS::SWP_NOZORDER
        @ignore_resize = true
        _set_window_pos(self.attr_handle, 0, 0, 0, width, height + 1, flags)
        _set_window_pos(self.attr_handle, 0, 0, 0, width, height, flags)
        @ignore_resize = false
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
      end
      if (fix_scroll && !(top_index).equal?(0))
        set_top_index(top_index)
        set_redraw(true)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the height of the area which would be used to
    # display <em>one</em> of the items in the table.
    # 
    # @param itemHeight the height of one item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    # 
    # public
    def set_item_height(item_height)
      check_widget
      if (item_height < -1)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @item_height = item_height
      set_item_height(true)
      set_scroll_width(nil, true)
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver's lines as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise. Note that some platforms draw grid lines
    # while others may draw alternating row colors.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, marking
    # it visible may not actually cause it to be displayed.
    # </p>
    # 
    # @param show the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_lines_visible(show)
      check_widget
      new_bits = show ? OS::LVS_EX_GRIDLINES : 0
      OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, OS::LVS_EX_GRIDLINES, new_bits)
      if (show)
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (((bits & OS::LVS_NOCOLUMNHEADER)).equal?(0))
          fix_item_height(true)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_redraw(redraw_)
      check_widget
      # Feature in Windows.  When WM_SETREDRAW is used to turn
      # off drawing in a widget, it clears the WS_VISIBLE bits
      # and then sets them when redraw is turned back on.  This
      # means that WM_SETREDRAW will make a widget unexpectedly
      # visible.  The fix is to track the visibility state while
      # drawing is turned off and restore it when drawing is turned
      # back on.
      if ((self.attr_draw_count).equal?(0))
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (((bits & OS::WS_VISIBLE)).equal?(0))
          self.attr_state |= HIDDEN
        end
      end
      if (redraw_)
        if (((self.attr_draw_count -= 1)).equal?(0))
          # When many items are added to a table, it is faster to
          # temporarily unsubclass the window proc so that messages
          # are dispatched directly to the table.
          # 
          # NOTE: This is optimization somewhat dangerous because any
          # operation can occur when redraw is turned off, even operations
          # where the table must be subclassed in order to have the correct
          # behavior or work around a Windows bug.
          # 
          # This code is intentionally commented.
          # 
          # subclass ();
          # Set the width of the horizontal scroll bar
          set_scroll_width(nil, true)
          # Bug in Windows.  For some reason, when WM_SETREDRAW is used
          # to turn redraw back on this may result in a WM_SIZE.  If the
          # table column widths are adjusted in WM_SIZE, blank lines may
          # be inserted at the top of the widget.  A call to LVM_GETTOPINDEX
          # will return a negative number (this is an impossible result).
          # The fix is to send the resize notification after the size has
          # been changed in the operating system.
          set_defer_resize(true)
          OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          # long
          hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
          if (!(hwnd_header).equal?(0))
            OS._send_message(hwnd_header, OS::WM_SETREDRAW, 1, 0)
          end
          if (!((self.attr_state & HIDDEN)).equal?(0))
            self.attr_state &= ~HIDDEN
            OS._show_window(self.attr_handle, OS::SW_HIDE)
          else
            if (OS::IsWinCE)
              OS._invalidate_rect(self.attr_handle, nil, false)
              if (!(hwnd_header).equal?(0))
                OS._invalidate_rect(hwnd_header, nil, false)
              end
            else
              flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
              OS._redraw_window(self.attr_handle, nil, 0, flags)
            end
          end
          set_defer_resize(false)
        end
      else
        if ((((self.attr_draw_count += 1) - 1)).equal?(0))
          OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
          # long
          hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
          if (!(hwnd_header).equal?(0))
            OS._send_message(hwnd_header, OS::WM_SETREDRAW, 0, 0)
          end
          # When many items are added to a table, it is faster to
          # temporarily unsubclass the window proc so that messages
          # are dispatched directly to the table.
          # 
          # NOTE: This is optimization somewhat dangerous because any
          # operation can occur when redraw is turned off, even operations
          # where the table must be subclassed in order to have the correct
          # behavior or work around a Windows bug.
          # 
          # This code is intentionally commented.
          # 
          # unsubclass ();
        end
      end
    end
    
    typesig { [::Java::Int] }
    def set_scroll_width(width)
      # 64
      if (!(width).equal?(RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNWIDTH, 0, 0))))
        # Feature in Windows.  When LVM_SETCOLUMNWIDTH is sent,
        # Windows draws right away instead of queuing a WM_PAINT.
        # This can cause recursive calls when called from paint
        # or from messages that are retrieving the item data,
        # such as WM_NOTIFY, causing a stack overflow.  The fix
        # is to turn off redraw and queue a repaint, collapsing
        # the recursive calls.
        redraw_ = false
        if (hooks(SWT::MeasureItem))
          redraw_ = get_drawing && OS._is_window_visible(self.attr_handle)
        end
        if (redraw_)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
        OS._send_message(self.attr_handle, OS::LVM_SETCOLUMNWIDTH, 0, width)
        if (redraw_)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          if (OS::IsWinCE)
            # long
            hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
            if (!(hwnd_header).equal?(0))
              OS._invalidate_rect(hwnd_header, nil, true)
            end
            OS._invalidate_rect(self.attr_handle, nil, true)
          else
            flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
            OS._redraw_window(self.attr_handle, nil, 0, flags)
          end
        end
      end
    end
    
    typesig { [TableItem, ::Java::Boolean] }
    def set_scroll_width(item, force)
      if (!(@current_item).nil?)
        if (!(@current_item).equal?(item))
          @fix_scroll_width = true
        end
        return false
      end
      if (!force && (!get_drawing || !OS._is_window_visible(self.attr_handle)))
        @fix_scroll_width = true
        return false
      end
      @fix_scroll_width = false
      # NOTE: It is much faster to measure the strings and compute the
      # width of the scroll bar in non-virtual table rather than using
      # LVM_SETCOLUMNWIDTH with LVSCW_AUTOSIZE.
      if ((@column_count).equal?(0))
        new_width = 0
        image_indent = 0
        index = 0
        # 64
        item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
        while (index < item_count)
          string = nil
          # long
          h_font = -1
          if (!(item).nil?)
            string = RJava.cast_to_string(item.attr_text)
            image_indent = Math.max(image_indent, item.attr_image_indent)
            h_font = item.font_handle(0)
          else
            if (!(@items[index]).nil?)
              table_item = @items[index]
              string = RJava.cast_to_string(table_item.attr_text)
              image_indent = Math.max(image_indent, table_item.attr_image_indent)
              h_font = table_item.font_handle(0)
            end
          end
          if (!(string).nil? && !(string.length).equal?(0))
            if (!(h_font).equal?(-1))
              # long
              h_dc = OS._get_dc(self.attr_handle)
              # long
              old_font = OS._select_object(h_dc, h_font)
              flags = OS::DT_CALCRECT | OS::DT_SINGLELINE | OS::DT_NOPREFIX
              buffer = TCHAR.new(get_code_page, string, false)
              rect = RECT.new
              OS._draw_text(h_dc, buffer, buffer.length, rect, flags)
              OS._select_object(h_dc, old_font)
              OS._release_dc(self.attr_handle, h_dc)
              new_width = Math.max(new_width, rect.attr_right - rect.attr_left)
            else
              buffer = TCHAR.new(get_code_page, string, true)
              # 64
              new_width = Math.max(new_width, RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETSTRINGWIDTH, 0, buffer)))
            end
          end
          if (!(item).nil?)
            break
          end
          index += 1
        end
        # Bug in Windows.  When the width of the first column is
        # small but not zero, Windows draws '...' outside of the
        # bounds of the text.  This is strange, but only causes
        # problems when the item is selected.  In this case, Windows
        # clears the '...' but doesn't redraw it when the item is
        # deselected, causing pixel corruption.  The fix is to ensure
        # that the column is at least wide enough to draw a single
        # space.
        if ((new_width).equal?(0))
          buffer = TCHAR.new(get_code_page, " ", true)
          # 64
          new_width = Math.max(new_width, RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETSTRINGWIDTH, 0, buffer)))
        end
        # long
        h_state_list = OS._send_message(self.attr_handle, OS::LVM_GETIMAGELIST, OS::LVSIL_STATE, 0)
        if (!(h_state_list).equal?(0))
          cx = Array.typed(::Java::Int).new(1) { 0 }
          cy = Array.typed(::Java::Int).new(1) { 0 }
          OS._image_list_get_icon_size(h_state_list, cx, cy)
          new_width += cx[0] + INSET
        end
        # long
        h_image_list = OS._send_message(self.attr_handle, OS::LVM_GETIMAGELIST, OS::LVSIL_SMALL, 0)
        if (!(h_image_list).equal?(0))
          cx = Array.typed(::Java::Int).new(1) { 0 }
          cy = Array.typed(::Java::Int).new(1) { 0 }
          OS._image_list_get_icon_size(h_image_list, cx, cy)
          new_width += (image_indent + 1) * cx[0]
        else
          # Bug in Windows.  When LVM_SETIMAGELIST is used to remove the
          # image list by setting it to NULL, the item width and height
          # is not changed and space is reserved for icons despite the
          # fact that there are none.  The fix is to set the image list
          # to be very small before setting it to NULL.  This causes
          # Windows to reserve the smallest possible space when an image
          # list is removed.  In this case, the scroll width must be one
          # pixel larger.
          new_width += 1
        end
        new_width += INSET * 2
        # 64
        old_width = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNWIDTH, 0, 0))
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
          new_width += VISTA_EXTRA
        end
        if (new_width > old_width)
          set_scroll_width(new_width)
          return true
        end
      end
      return false
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Selects the items at the given zero-relative indices in the receiver.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Indices that are out of range and duplicate indices are ignored.
    # If the receiver is single-select and multiple indices are specified,
    # then all indices are ignored.
    # </p>
    # 
    # @param indices the indices of the items to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#deselectAll()
    # @see Table#select(int[])
    def set_selection(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      deselect_all
      length_ = indices.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      select(indices)
      focus_index = indices[0]
      if (!(focus_index).equal?(-1))
        set_focus_index(focus_index)
      end
      show_selection
    end
    
    typesig { [TableItem] }
    # Sets the receiver's selection to the given item.
    # The current selection is cleared before the new item is selected.
    # <p>
    # If the item is not in the receiver, then it is ignored.
    # </p>
    # 
    # @param item the item to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_selection(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_selection(Array.typed(TableItem).new([item]))
    end
    
    typesig { [Array.typed(TableItem)] }
    # Sets the receiver's selection to be the given array of items.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Items that are not in the receiver are ignored.
    # If the receiver is single-select and multiple items are specified,
    # then all items are ignored.
    # </p>
    # 
    # @param items the array of items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of items is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if one of the items has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#deselectAll()
    # @see Table#select(int[])
    # @see Table#setSelection(int[])
    def set_selection(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      deselect_all
      length_ = items.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      focus_index = -1
      i = length_ - 1
      while i >= 0
        index = index_of(items[i])
        if (!(index).equal?(-1))
          select(focus_index = index)
        end
        (i -= 1)
      end
      if (!(focus_index).equal?(-1))
        set_focus_index(focus_index)
      end
      show_selection
    end
    
    typesig { [::Java::Int] }
    # Selects the item at the given zero-relative index in the receiver.
    # The current selection is first cleared, then the new item is selected.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#deselectAll()
    # @see Table#select(int)
    def set_selection(index)
      check_widget
      deselect_all
      select(index)
      if (!(index).equal?(-1))
        set_focus_index(index)
      end
      show_selection
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Selects the items in the range specified by the given zero-relative
    # indices in the receiver. The range of indices is inclusive.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Indices that are out of range are ignored and no items will be selected
    # if start is greater than end.
    # If the receiver is single-select and there is more than one item in the
    # given range, then all indices are ignored.
    # </p>
    # 
    # @param start the start index of the items to select
    # @param end the end index of the items to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#deselectAll()
    # @see Table#select(int,int)
    def set_selection(start, end_)
      check_widget
      deselect_all
      if (end_ < 0 || start > end_ || (!((self.attr_style & SWT::SINGLE)).equal?(0) && !(start).equal?(end_)))
        return
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if ((count).equal?(0) || start >= count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, count - 1)
      select(start, end_)
      set_focus_index(start)
      show_selection
    end
    
    typesig { [TableColumn] }
    # Sets the column used by the sort indicator for the receiver. A null
    # value will clear the sort indicator.  The current sort column is cleared
    # before the new column is set.
    # 
    # @param column the column used by the sort indicator or <code>null</code>
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the column is disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_sort_column(column)
      check_widget
      if (!(column).nil? && column.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@sort_column).nil? && !@sort_column.is_disposed)
        @sort_column.set_sort_direction(SWT::NONE)
      end
      @sort_column = column
      if (!(@sort_column).nil? && !(@sort_direction).equal?(SWT::NONE))
        @sort_column.set_sort_direction(@sort_direction)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the direction of the sort indicator for the receiver. The value
    # can be one of <code>UP</code>, <code>DOWN</code> or <code>NONE</code>.
    # 
    # @param direction the direction of the sort indicator
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_sort_direction(direction)
      check_widget
      if (((direction & (SWT::UP | SWT::DOWN))).equal?(0) && !(direction).equal?(SWT::NONE))
        return
      end
      @sort_direction = direction
      if (!(@sort_column).nil? && !@sort_column.is_disposed)
        @sort_column.set_sort_direction(direction)
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_sub_images_visible(visible)
      # 64
      dw_ex_style = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
      if ((!((dw_ex_style & OS::LVS_EX_SUBITEMIMAGES)).equal?(0)).equal?(visible))
        return
      end
      bits = visible ? OS::LVS_EX_SUBITEMIMAGES : 0
      OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, OS::LVS_EX_SUBITEMIMAGES, bits)
    end
    
    typesig { [] }
    def set_table_empty
      if (!(@image_list).nil?)
        # Bug in Windows.  When LVM_SETIMAGELIST is used to remove the
        # image list by setting it to NULL, the item width and height
        # is not changed and space is reserved for icons despite the
        # fact that there are none.  The fix is to set the image list
        # to be very small before setting it to NULL.  This causes
        # Windows to reserve the smallest possible space when an image
        # list is removed.
        # 
        # long
        h_image_list = OS._image_list_create(1, 1, 0, 0, 0)
        OS._send_message(self.attr_handle, OS::LVM_SETIMAGELIST, OS::LVSIL_SMALL, h_image_list)
        OS._send_message(self.attr_handle, OS::LVM_SETIMAGELIST, OS::LVSIL_SMALL, 0)
        if (!(@header_image_list).nil?)
          # long
          h_header_image_list = @header_image_list.get_handle
          # long
          hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
          OS._send_message(hwnd_header, OS::HDM_SETIMAGELIST, 0, h_header_image_list)
        end
        OS._image_list_destroy(h_image_list)
        self.attr_display.release_image_list(@image_list)
        @image_list = nil
        if (!(@item_height).equal?(-1))
          set_item_height(false)
        end
      end
      if (!hooks(SWT::MeasureItem) && !hooks(SWT::EraseItem) && !hooks(SWT::PaintItem))
        control = find_background_control
        if ((control).nil?)
          control = self
        end
        if ((control.attr_background_image).nil?)
          set_custom_draw(false)
          set_background_transparent(false)
          if (OS::COMCTL32_MAJOR < 6)
            self.attr_style &= ~SWT::DOUBLE_BUFFERED
          end
        end
      end
      @items = Array.typed(TableItem).new(4) { nil }
      if ((@column_count).equal?(0))
        OS._send_message(self.attr_handle, OS::LVM_SETCOLUMNWIDTH, 0, 0)
        set_scroll_width(nil, false)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the zero-relative index of the item which is currently
    # at the top of the receiver. This index can change when items
    # are scrolled or new items are added and removed.
    # 
    # @param index the index of the top item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_top_index(index)
      check_widget
      # 64
      top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETTOPINDEX, 0, 0))
      if ((index).equal?(top_index))
        return
      end
      if (!@painted && hooks(SWT::MeasureItem))
        hit_test_selection(index, 0, 0)
      end
      # Bug in Windows.  For some reason, LVM_SCROLL refuses to
      # scroll a table vertically when the width and height of
      # the table is smaller than a certain size.  The values
      # that seem to cause the problem are width=68 and height=6
      # but there is no guarantee that these values cause the
      # failure on different machines or on different versions
      # of Windows.  It may depend on the font and any number
      # of other factors.  For example, setting the font to
      # anything but the default sometimes fixes the problem.
      # The fix is to use LVM_GETCOUNTPERPAGE to detect the
      # case when the number of visible items is zero and
      # use LVM_ENSUREVISIBLE to scroll the table to make the
      # index visible.
      # 
      # 
      # Bug in Windows.  When the table header is visible and
      # there is not enough space to show a single table item,
      # LVM_GETCOUNTPERPAGE can return a negative number instead
      # of zero.  The fix is to test for negative or zero.
      if (OS._send_message(self.attr_handle, OS::LVM_GETCOUNTPERPAGE, 0, 0) <= 0)
        # Bug in Windows.  For some reason, LVM_ENSUREVISIBLE can
        # scroll one item more or one item less when there is not
        # enough space to show a single table item.  The fix is
        # to detect the case and call LVM_ENSUREVISIBLE again with
        # the same arguments.  It seems that once LVM_ENSUREVISIBLE
        # has scrolled into the general area, it is able to scroll
        # to the exact item.
        OS._send_message(self.attr_handle, OS::LVM_ENSUREVISIBLE, index, 1)
        if (!(index).equal?(OS._send_message(self.attr_handle, OS::LVM_GETTOPINDEX, 0, 0)))
          OS._send_message(self.attr_handle, OS::LVM_ENSUREVISIBLE, index, 1)
        end
        return
      end
      # Use LVM_SCROLL to scroll the table
      rect = RECT.new
      rect.attr_left = OS::LVIR_BOUNDS
      @ignore_custom_draw = true
      OS._send_message(self.attr_handle, OS::LVM_GETITEMRECT, 0, rect)
      @ignore_custom_draw = false
      dy = (index - top_index) * (rect.attr_bottom - rect.attr_top)
      OS._send_message(self.attr_handle, OS::LVM_SCROLL, 0, dy)
    end
    
    typesig { [TableColumn] }
    # Shows the column.  If the column is already showing in the receiver,
    # this method simply returns.  Otherwise, the columns are scrolled until
    # the column is visible.
    # 
    # @param column the column to be shown
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the column is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the column has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def show_column(column)
      check_widget
      if ((column).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (column.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(column.attr_parent).equal?(self))
        return
      end
      index = index_of(column)
      if (!(0 <= index && index < @column_count))
        return
      end
      # Feature in Windows.  Calling LVM_GETSUBITEMRECT with -1 for the
      # row number gives the bounds of the item that would be above the
      # first row in the table.  This is undocumented and does not work
      # for the first column. In this case, to get the bounds of the
      # first column, get the bounds of the second column and subtract
      # the width of the first. The left edge of the second column is
      # also used as the right edge of the first.
      item_rect = RECT.new
      item_rect.attr_left = OS::LVIR_BOUNDS
      if ((index).equal?(0))
        item_rect.attr_top = 1
        @ignore_custom_draw = true
        OS._send_message(self.attr_handle, OS::LVM_GETSUBITEMRECT, -1, item_rect)
        @ignore_custom_draw = false
        item_rect.attr_right = item_rect.attr_left
        # 64
        width = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNWIDTH, 0, 0))
        item_rect.attr_left = item_rect.attr_right - width
      else
        item_rect.attr_top = index
        @ignore_custom_draw = true
        OS._send_message(self.attr_handle, OS::LVM_GETSUBITEMRECT, -1, item_rect)
        @ignore_custom_draw = false
      end
      # Bug in Windows.  When a table that is drawing grid lines
      # is slowly scrolled horizontally to the left, the table does
      # not redraw the newly exposed vertical grid lines.  The fix
      # is to save the old scroll position, call the window proc,
      # get the new scroll position and redraw the new area.
      old_pos = 0
      # 64
      bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
      if (!((bits & OS::LVS_EX_GRIDLINES)).equal?(0))
        info = SCROLLINFO.new
        info.attr_cb_size = SCROLLINFO.attr_sizeof
        info.attr_f_mask = OS::SIF_POS
        OS._get_scroll_info(self.attr_handle, OS::SB_HORZ, info)
        old_pos = info.attr_n_pos
      end
      rect = RECT.new
      OS._get_client_rect(self.attr_handle, rect)
      if (item_rect.attr_left < rect.attr_left)
        dx = item_rect.attr_left - rect.attr_left
        OS._send_message(self.attr_handle, OS::LVM_SCROLL, dx, 0)
      else
        width = Math.min(rect.attr_right - rect.attr_left, item_rect.attr_right - item_rect.attr_left)
        if (item_rect.attr_left + width > rect.attr_right)
          dx = item_rect.attr_left + width - rect.attr_right
          OS._send_message(self.attr_handle, OS::LVM_SCROLL, dx, 0)
        end
      end
      # Bug in Windows.  When a table that is drawing grid lines
      # is slowly scrolled horizontally to the left, the table does
      # not redraw the newly exposed vertical grid lines.  The fix
      # is to save the old scroll position, call the window proc,
      # get the new scroll position and redraw the new area.
      if (!((bits & OS::LVS_EX_GRIDLINES)).equal?(0))
        info = SCROLLINFO.new
        info.attr_cb_size = SCROLLINFO.attr_sizeof
        info.attr_f_mask = OS::SIF_POS
        OS._get_scroll_info(self.attr_handle, OS::SB_HORZ, info)
        new_pos = info.attr_n_pos
        if (new_pos < old_pos)
          rect.attr_right = old_pos - new_pos + GRID_WIDTH
          OS._invalidate_rect(self.attr_handle, rect, true)
        end
      end
    end
    
    typesig { [::Java::Int] }
    def show_item(index)
      if (!@painted && hooks(SWT::MeasureItem))
        hit_test_selection(index, 0, 0)
      end
      # Bug in Windows.  For some reason, when there is insufficient space
      # to show an item, LVM_ENSUREVISIBLE causes blank lines to be
      # inserted at the top of the widget.  A call to LVM_GETTOPINDEX will
      # return a negative number (this is an impossible result).  The fix
      # is to use LVM_GETCOUNTPERPAGE to detect the case when the number
      # of visible items is zero and use LVM_ENSUREVISIBLE with the
      # fPartialOK flag set to true to scroll the table.
      if (OS._send_message(self.attr_handle, OS::LVM_GETCOUNTPERPAGE, 0, 0) <= 0)
        # Bug in Windows.  For some reason, LVM_ENSUREVISIBLE can
        # scroll one item more or one item less when there is not
        # enough space to show a single table item.  The fix is
        # to detect the case and call LVM_ENSUREVISIBLE again with
        # the same arguments.  It seems that once LVM_ENSUREVISIBLE
        # has scrolled into the general area, it is able to scroll
        # to the exact item.
        OS._send_message(self.attr_handle, OS::LVM_ENSUREVISIBLE, index, 1)
        if (!(index).equal?(OS._send_message(self.attr_handle, OS::LVM_GETTOPINDEX, 0, 0)))
          OS._send_message(self.attr_handle, OS::LVM_ENSUREVISIBLE, index, 1)
        end
      else
        OS._send_message(self.attr_handle, OS::LVM_ENSUREVISIBLE, index, 0)
      end
    end
    
    typesig { [TableItem] }
    # Shows the item.  If the item is already showing in the receiver,
    # this method simply returns.  Otherwise, the items are scrolled until
    # the item is visible.
    # 
    # @param item the item to be shown
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#showSelection()
    def show_item(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      index = index_of(item)
      if (!(index).equal?(-1))
        show_item(index)
      end
    end
    
    typesig { [] }
    # Shows the selection.  If the selection is already showing in the receiver,
    # this method simply returns.  Otherwise, the items are scrolled until
    # the selection is visible.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#showItem(TableItem)
    def show_selection
      check_widget
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, -1, OS::LVNI_SELECTED))
      if (!(index).equal?(-1))
        show_item(index)
      end
    end
    
    typesig { [] }
    # public
    def sort
      check_widget
      # if ((style & SWT.VIRTUAL) != 0) return;
      # int itemCount = OS.SendMessage (handle, OS.LVM_GETITEMCOUNT, 0, 0);
      # if (itemCount == 0 || itemCount == 1) return;
      # Comparator comparator = new Comparator () {
      # int index = sortColumn == null ? 0 : indexOf (sortColumn);
      # public int compare (Object object1, Object object2) {
      # TableItem item1 = (TableItem) object1, item2 = (TableItem) object2;
      # if (sortDirection == SWT.UP || sortDirection == SWT.NONE) {
      # return item1.getText (index).compareTo (item2.getText (index));
      # } else {
      # return item2.getText (index).compareTo (item1.getText (index));
      # }
      # }
      # };
      # Arrays.sort (items, 0, itemCount, comparator);
      # redraw ();
    end
    
    typesig { [] }
    def subclass
      super
      if (!(self.attr_header_proc).equal?(0))
        # long
        hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
        OS._set_window_long_ptr(hwnd_header, OS::GWLP_WNDPROC, self.attr_display.attr_window_proc)
      end
    end
    
    typesig { [RECT] }
    def tool_tip_inset(rect)
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        inset_rect = RECT.new
        OS._set_rect(inset_rect, rect.attr_left - 1, rect.attr_top - 1, rect.attr_right + 1, rect.attr_bottom + 1)
        return inset_rect
      end
      return rect
    end
    
    typesig { [RECT] }
    def tool_tip_rect(rect)
      tool_rect = RECT.new
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        OS._set_rect(tool_rect, rect.attr_left - 1, rect.attr_top - 1, rect.attr_right + 1, rect.attr_bottom + 1)
      else
        # long
        hwnd_tool_tip = OS._send_message(self.attr_handle, OS::LVM_GETTOOLTIPS, 0, 0)
        OS._set_rect(tool_rect, rect.attr_left, rect.attr_top, rect.attr_right, rect.attr_bottom)
        dw_style = OS._get_window_long(hwnd_tool_tip, OS::GWL_STYLE)
        dw_ex_style = OS._get_window_long(hwnd_tool_tip, OS::GWL_EXSTYLE)
        OS._adjust_window_rect_ex(tool_rect, dw_style, false, dw_ex_style)
      end
      return tool_rect
    end
    
    typesig { [NMTTDISPINFO] }
    def tool_tip_text(hdr)
      # long
      hwnd_tool_tip = OS._send_message(self.attr_handle, OS::LVM_GETTOOLTIPS, 0, 0)
      if ((hwnd_tool_tip).equal?(hdr.attr_hwnd_from) && !(self.attr_tool_tip_text).nil?)
        return ""
      end # $NON-NLS-1$
      if ((@header_tool_tip_handle).equal?(hdr.attr_hwnd_from))
        i = 0
        while i < @column_count
          column = @columns[i]
          if ((column.attr_id).equal?(hdr.attr_id_from))
            return column.attr_tool_tip_text
          end
          i += 1
        end
      end
      return super(hdr)
    end
    
    typesig { [] }
    def unsubclass
      super
      if (!(self.attr_header_proc).equal?(0))
        # long
        hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
        OS._set_window_long_ptr(hwnd_header, OS::GWLP_WNDPROC, self.attr_header_proc)
      end
    end
    
    typesig { [::Java::Boolean] }
    def update(all)
      # checkWidget ();
      # 
      # When there are many columns in a table, scrolling performance
      # can be improved by temporarily unsubclassing the window proc
      # so that internal messages are dispatched directly to the table.
      # If the application expects to see a paint event or has a child
      # whose font, foreground or background color might be needed,
      # the window proc cannot be unsubclassed.
      # 
      # NOTE: The header tooltip can subclass the header proc so the
      # current proc must be restored or header tooltips stop working.
      # 
      # long
      old_header_proc = 0
      old_table_proc = 0
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      fix_subclass = is_optimized_redraw
      if (fix_subclass)
        old_table_proc = OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TableProc)
        old_header_proc = OS._set_window_long_ptr(hwnd_header, OS::GWLP_WNDPROC, self.attr_header_proc)
      end
      super(all)
      if (fix_subclass)
        OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_table_proc)
        OS._set_window_long_ptr(hwnd_header, OS::GWLP_WNDPROC, old_header_proc)
      end
    end
    
    typesig { [] }
    def update_header_tool_tips
      if ((@header_tool_tip_handle).equal?(0))
        return
      end
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      rect = RECT.new
      lpti = TOOLINFO.new
      lpti.attr_cb_size = TOOLINFO.attr_sizeof
      lpti.attr_u_flags = OS::TTF_SUBCLASS
      lpti.attr_hwnd = hwnd_header
      lpti.attr_lpsz_text = OS::LPSTR_TEXTCALLBACK
      i = 0
      while i < @column_count
        column = @columns[i]
        if (!(OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, i, rect)).equal?(0))
          lpti.attr_u_id = column.attr_id = ((self.attr_display.attr_next_tool_tip_id += 1) - 1)
          lpti.attr_left = rect.attr_left
          lpti.attr_top = rect.attr_top
          lpti.attr_right = rect.attr_right
          lpti.attr_bottom = rect.attr_bottom
          OS._send_message(@header_tool_tip_handle, OS::TTM_ADDTOOL, 0, lpti)
        end
        i += 1
      end
    end
    
    typesig { [] }
    def update_images
      if (!(@sort_column).nil? && !@sort_column.is_disposed)
        if (OS::COMCTL32_MAJOR < 6)
          case (@sort_direction)
          when SWT::UP, SWT::DOWN
            @sort_column.set_image(self.attr_display.get_sort_image(@sort_direction), true, true)
          end
        end
      end
    end
    
    typesig { [] }
    def update_moveable
      index = 0
      while (index < @column_count)
        if (@columns[index].attr_moveable)
          break
        end
        index += 1
      end
      new_bits = index < @column_count ? OS::LVS_EX_HEADERDRAGDROP : 0
      OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, OS::LVS_EX_HEADERDRAGDROP, new_bits)
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::LVS_SHAREIMAGELISTS
      if (((self.attr_style & SWT::HIDE_SELECTION)).equal?(0))
        bits |= OS::LVS_SHOWSELALWAYS
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        bits |= OS::LVS_SINGLESEL
      end
      # This code is intentionally commented.  In the future,
      # the FLAT bit may be used to make the header flat and
      # unresponsive to mouse clicks.
      # 
      # if ((style & SWT.FLAT) != 0) bits |= OS.LVS_NOSORTHEADER;
      bits |= OS::LVS_REPORT | OS::LVS_NOCOLUMNHEADER
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        bits |= OS::LVS_OWNERDATA
      end
      return bits
    end
    
    typesig { [] }
    def window_class
      return TableClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return TableProc
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def window_proc(hwnd, msg, w_param, l_param)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      if (!(hwnd).equal?(self.attr_handle))
        case (msg)
        when OS::WM_CONTEXTMENU
          result = wm_context_menu(hwnd, w_param, l_param)
          if (!(result).nil?)
            return result.attr_value
          end
        when OS::WM_CAPTURECHANGED
          # Bug in Windows.  When the capture changes during a
          # header drag, Windows does not redraw the header item
          # such that the header remains pressed.  For example,
          # when focus is assigned to a push button, the mouse is
          # pressed (but not released), then the SPACE key is
          # pressed to activate the button, the capture changes,
          # the header not notified and NM_RELEASEDCAPTURE is not
          # sent.  The fix is to redraw the header when the capture
          # changes to another control.
          # 
          # This does not happen on XP.
          if (OS::COMCTL32_MAJOR < 6)
            if (!(l_param).equal?(0))
              # long
              hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
              if (!(l_param).equal?(hwnd_header))
                OS._invalidate_rect(hwnd_header, nil, true)
              end
            end
          end
        when OS::WM_MOUSELEAVE
          # Bug in Windows.  On XP, when a tooltip is hidden
          # due to a time out or mouse press, the tooltip
          # remains active although no longer visible and
          # won't show again until another tooltip becomes
          # active.  The fix is to reset the tooltip bounds.
          if (OS::COMCTL32_MAJOR >= 6)
            update_header_tool_tips
          end
          update_header_tool_tips
        when OS::WM_NOTIFY
          hdr = NMHDR.new
          OS._move_memory(hdr, l_param, NMHDR.attr_sizeof)
          case (hdr.attr_code)
          when OS::TTN_SHOW, OS::TTN_POP, OS::TTN_GETDISPINFOA, OS::TTN_GETDISPINFOW
            return OS._send_message(self.attr_handle, msg, w_param, l_param)
          end
        when OS::WM_SETCURSOR
          if ((w_param).equal?(hwnd))
            hit_test = RJava.cast_to_short(OS._loword(l_param))
            if ((hit_test).equal?(OS::HTCLIENT))
              pinfo = HDHITTESTINFO.new
              pos = OS._get_message_pos
              pt = POINT.new
              OS._pointstopoint(pt, pos)
              OS._screen_to_client(hwnd, pt)
              pinfo.attr_x = pt.attr_x
              pinfo.attr_y = pt.attr_y
              # long
              hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
              # 64
              index = RJava.cast_to_int(OS._send_message(hwnd_header, OS::HDM_HITTEST, 0, pinfo))
              if (0 <= index && index < @column_count && !@columns[index].attr_resizable)
                if (!((pinfo.attr_flags & (OS::HHT_ONDIVIDER | OS::HHT_ONDIVOPEN))).equal?(0))
                  OS._set_cursor(OS._load_cursor(0, OS::IDC_ARROW))
                  return 1
                end
              end
            end
          end
        end
        return call_window_proc(hwnd, msg, w_param, l_param)
      end
      if ((msg).equal?(Display.attr_di_getdragimage))
        # Bug in Windows.  On Vista, for some reason, DI_GETDRAGIMAGE
        # returns an image that does not contain strings.
        # 
        # Bug in Windows. For custom draw control the window origin the
        # in HDC is wrong.
        # 
        # The fix for both cases is to create the image using PrintWindow().
        if ((!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0)) || !((self.attr_style & SWT::VIRTUAL)).equal?(0) || hooks(SWT::EraseItem) || hooks(SWT::PaintItem))
          # 64
          top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETTOPINDEX, 0, 0))
          # 64
          selection = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, top_index - 1, OS::LVNI_SELECTED))
          if ((selection).equal?(-1))
            return 0
          end
          mouse_pos = POINT.new
          OS._pointstopoint(mouse_pos, OS._get_message_pos)
          OS._map_window_points(0, self.attr_handle, mouse_pos, 1)
          client_rect = RECT.new
          OS._get_client_rect(self.attr_handle, client_rect)
          item = __get_item(selection)
          rect = item.get_bounds(selection, 0, true, true, true)
          if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
            width = DRAG_IMAGE_SIZE
            rect.attr_left = Math.max(client_rect.attr_left, mouse_pos.attr_x - width / 2)
            if (client_rect.attr_right > rect.attr_left + width)
              rect.attr_right = rect.attr_left + width
            else
              rect.attr_right = client_rect.attr_right
              rect.attr_left = Math.max(client_rect.attr_left, rect.attr_right - width)
            end
          end
          # long
          h_rgn = OS._create_rect_rgn(rect.attr_left, rect.attr_top, rect.attr_right, rect.attr_bottom)
          # 64
          while (!((selection = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, selection, OS::LVNI_SELECTED)))).equal?(-1))
            if (rect.attr_bottom - rect.attr_top > DRAG_IMAGE_SIZE)
              break
            end
            if (rect.attr_bottom > client_rect.attr_bottom)
              break
            end
            item_rect = item.get_bounds(selection, 0, true, true, true)
            # long
            rect_rgn = OS._create_rect_rgn(rect.attr_left, item_rect.attr_top, rect.attr_right, item_rect.attr_bottom)
            OS._combine_rgn(h_rgn, h_rgn, rect_rgn, OS::RGN_OR)
            OS._delete_object(rect_rgn)
            rect.attr_bottom = item_rect.attr_bottom
          end
          OS._get_rgn_box(h_rgn, rect)
          # Create resources
          # long
          hdc = OS._get_dc(self.attr_handle)
          # long
          mem_hdc = OS._create_compatible_dc(hdc)
          bmi_header = BITMAPINFOHEADER.new
          bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
          bmi_header.attr_bi_width = rect.attr_right - rect.attr_left
          bmi_header.attr_bi_height = -(rect.attr_bottom - rect.attr_top)
          bmi_header.attr_bi_planes = 1
          bmi_header.attr_bi_bit_count = 32
          bmi_header.attr_bi_compression = OS::BI_RGB
          bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof) { 0 }
          OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
          # long
          # long
          p_bits = Array.typed(::Java::Int).new(1) { 0 }
          # long
          mem_dib = OS._create_dibsection(0, bmi, OS::DIB_RGB_COLORS, p_bits, 0, 0)
          if ((mem_dib).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # long
          old_mem_bitmap = OS._select_object(mem_hdc, mem_dib)
          color_key = 0xfd
          pt = POINT.new
          OS._set_window_org_ex(mem_hdc, rect.attr_left, rect.attr_top, pt)
          OS._fill_rect(mem_hdc, rect, find_brush(color_key, OS::BS_SOLID))
          OS._offset_rgn(h_rgn, -rect.attr_left, -rect.attr_top)
          OS._select_clip_rgn(mem_hdc, h_rgn)
          OS._print_window(self.attr_handle, mem_hdc, 0)
          OS._set_window_org_ex(mem_hdc, pt.attr_x, pt.attr_y, nil)
          OS._select_object(mem_hdc, old_mem_bitmap)
          OS._delete_dc(mem_hdc)
          OS._release_dc(0, hdc)
          OS._delete_object(h_rgn)
          shdi = SHDRAGIMAGE.new
          shdi.attr_hbmp_drag_image = mem_dib
          shdi.attr_cr_color_key = color_key
          shdi.attr_size_drag_image.attr_cx = bmi_header.attr_bi_width
          shdi.attr_size_drag_image.attr_cy = -bmi_header.attr_bi_height
          shdi.attr_pt_offset.attr_x = mouse_pos.attr_x - rect.attr_left
          shdi.attr_pt_offset.attr_y = mouse_pos.attr_y - rect.attr_top
          if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
            shdi.attr_pt_offset.attr_x = shdi.attr_size_drag_image.attr_cx - shdi.attr_pt_offset.attr_x
          end
          OS._move_memory(l_param, shdi, SHDRAGIMAGE.attr_sizeof)
          return 1
        end
      end
      return super(hwnd, msg, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_char(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # 64
      case (RJava.cast_to_int(w_param))
      when Character.new(?\s.ord)
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          # 64
          index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, -1, OS::LVNI_FOCUSED))
          if (!(index).equal?(-1))
            item = __get_item(index)
            item.set_checked(!item.get_checked, true)
            if (!OS::IsWinCE)
              OS._notify_win_event(OS::EVENT_OBJECT_FOCUS, self.attr_handle, OS::OBJID_CLIENT, index + 1)
            end
          end
        end
        # NOTE: Call the window proc with WM_KEYDOWN rather than WM_CHAR
        # so that the key that was ignored during WM_KEYDOWN is processed.
        # This allows the application to cancel an operation that is normally
        # performed in WM_KEYDOWN from WM_CHAR.
        # 
        # long
        code = call_window_proc(self.attr_handle, OS::WM_KEYDOWN, w_param, l_param)
        return LRESULT.new(code)
      when SWT::CR
        # Feature in Windows.  Windows sends LVN_ITEMACTIVATE from WM_KEYDOWN
        # instead of WM_CHAR.  This means that application code that expects
        # to consume the key press and therefore avoid a SWT.DefaultSelection
        # event will fail.  The fix is to ignore LVN_ITEMACTIVATE when it is
        # caused by WM_KEYDOWN and send SWT.DefaultSelection from WM_CHAR.
        # 
        # 64
        index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, -1, OS::LVNI_FOCUSED))
        if (!(index).equal?(-1))
          event = Event.new
          event.attr_item = __get_item(index)
          post_event(SWT::DefaultSelection, event)
        end
        return LRESULT::ZERO
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_contextmenu(w_param, l_param)
      # Feature in Windows.  For some reason, when the right
      # mouse button is pressed over an item, Windows sends
      # a WM_CONTEXTMENU from WM_RBUTTONDOWN, instead of from
      # WM_RBUTTONUP.  This causes two context menus requests
      # to be sent.  The fix is to ignore WM_CONTEXTMENU on
      # mouse down.
      # 
      # NOTE: This only happens when dragging is disabled.
      # When the table is detecting drag, the WM_CONTEXTMENU
      # is not sent WM_RBUTTONUP.
      if (!self.attr_display.attr_run_drag_drop)
        return LRESULT::ZERO
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_erasebkgnd(w_param, l_param)
      result = super(w_param, l_param)
      if (!(find_image_control).nil?)
        return LRESULT::ONE
      end
      if (!OS::IsWinCE && OS::COMCTL32_MAJOR < 6)
        if (!((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0))
          # 64
          bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
          if (((bits & OS::LVS_EX_DOUBLEBUFFER)).equal?(0))
            return LRESULT::ONE
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getobject(w_param, l_param)
      # Ensure that there is an accessible object created for this
      # control because support for checked item accessibility is
      # temporarily implemented in the accessibility package.
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        if ((self.attr_accessible).nil?)
          self.attr_accessible = new__accessible(self)
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_keydown(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # 64
      case (RJava.cast_to_int(w_param))
      # FALL THROUGH
      when OS::VK_SPACE
        # Ensure that the window proc does not process VK_SPACE
        # so that it can be handled in WM_CHAR.  This allows the
        # application to cancel an operation that is normally
        # performed in WM_KEYDOWN from WM_CHAR.
        return LRESULT::ZERO
      when OS::VK_ADD
        if (OS._get_key_state(OS::VK_CONTROL) < 0)
          index = 0
          while (index < @column_count)
            if (!@columns[index].get_resizable)
              break
            end
            index += 1
          end
          if (!(index).equal?(@column_count) || hooks(SWT::MeasureItem))
            new_columns = Array.typed(TableColumn).new(@column_count) { nil }
            System.arraycopy(@columns, 0, new_columns, 0, @column_count)
            i = 0
            while i < new_columns.attr_length
              column = new_columns[i]
              if (!column.is_disposed && column.get_resizable)
                column.pack
              end
              i += 1
            end
            return LRESULT::ZERO
          end
        end
      when OS::VK_PRIOR, OS::VK_NEXT, OS::VK_HOME, OS::VK_END
        # When there are many columns in a table, scrolling performance
        # can be improved by temporarily unsubclassing the window proc
        # so that internal messages are dispatched directly to the table.
        # If the application expects to see a paint event, the window
        # proc cannot be unsubclassed or the event will not be seen.
        # 
        # NOTE: The header tooltip can subclass the header proc so the
        # current proc must be restored or header tooltips stop working.
        # 
        # long
        old_header_proc = 0
        old_table_proc = 0
        # long
        hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
        fix_subclass = is_optimized_redraw
        if (fix_subclass)
          old_table_proc = OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TableProc)
          old_header_proc = OS._set_window_long_ptr(hwnd_header, OS::GWLP_WNDPROC, self.attr_header_proc)
        end
        # long
        code = call_window_proc(self.attr_handle, OS::WM_KEYDOWN, w_param, l_param)
        result = (code).equal?(0) ? LRESULT::ZERO : LRESULT.new(code)
        if (fix_subclass)
          OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_table_proc)
          OS._set_window_long_ptr(hwnd_header, OS::GWLP_WNDPROC, old_header_proc)
        end
        OS._send_message(self.attr_handle, OS::WM_CHANGEUISTATE, OS::UIS_INITIALIZE, 0)
      when OS::VK_UP, OS::VK_DOWN
        OS._send_message(self.attr_handle, OS::WM_CHANGEUISTATE, OS::UIS_INITIALIZE, 0)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      result = super(w_param, l_param)
      # Bug in Windows.  When focus is lost, Windows does not
      # redraw the selection properly, leaving the image and
      # check box appearing selected.  The fix is to redraw
      # the table.
      if (!(@image_list).nil? || !((self.attr_style & SWT::CHECK)).equal?(0))
        OS._invalidate_rect(self.attr_handle, nil, false)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondblclk(w_param, l_param)
      # Feature in Windows.  When the user selects outside of
      # a table item, Windows deselects all the items, even
      # when the table is multi-select.  While not strictly
      # wrong, this is unexpected.  The fix is to detect the
      # case and avoid calling the window proc.
      pinfo = LVHITTESTINFO.new
      pinfo.attr_x = OS._get_x_lparam(l_param)
      pinfo.attr_y = OS._get_y_lparam(l_param)
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_HITTEST, 0, pinfo))
      display = self.attr_display
      display.attr_capture_changed = false
      send_mouse_event(SWT::MouseDown, 1, self.attr_handle, OS::WM_LBUTTONDOWN, w_param, l_param)
      if (!send_mouse_event(SWT::MouseDoubleClick, 1, self.attr_handle, OS::WM_LBUTTONDBLCLK, w_param, l_param))
        if (!display.attr_capture_changed && !is_disposed)
          if (!(OS._get_capture).equal?(self.attr_handle))
            OS._set_capture(self.attr_handle)
          end
        end
        return LRESULT::ZERO
      end
      if (!(pinfo.attr_i_item).equal?(-1))
        call_window_proc(self.attr_handle, OS::WM_LBUTTONDBLCLK, w_param, l_param)
      end
      if (!display.attr_capture_changed && !is_disposed)
        if (!(OS._get_capture).equal?(self.attr_handle))
          OS._set_capture(self.attr_handle)
        end
      end
      # Look for check/uncheck
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        # Note that when the table has LVS_EX_FULLROWSELECT and the
        # user clicks anywhere on a row except on the check box, all
        # of the bits are set.  The hit test flags are LVHT_ONITEM.
        # This means that a bit test for LVHT_ONITEMSTATEICON is not
        # the correct way to determine that the user has selected
        # the check box, equality is needed.
        if (!(index).equal?(-1) && (pinfo.attr_flags).equal?(OS::LVHT_ONITEMSTATEICON))
          item = __get_item(index)
          item.set_checked(!item.get_checked, true)
          if (!OS::IsWinCE)
            OS._notify_win_event(OS::EVENT_OBJECT_FOCUS, self.attr_handle, OS::OBJID_CLIENT, index + 1)
          end
        end
      end
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      # Feature in Windows.  For some reason, capturing
      # the mouse after processing the mouse event for the
      # widget interferes with the normal mouse processing
      # for the widget.  The fix is to avoid the automatic
      # mouse capture.
      result = send_mouse_down_event(SWT::MouseDown, 1, OS::WM_LBUTTONDOWN, w_param, l_param)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      # Look for check/uncheck
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        pinfo = LVHITTESTINFO.new
        pinfo.attr_x = OS._get_x_lparam(l_param)
        pinfo.attr_y = OS._get_y_lparam(l_param)
        # Note that when the table has LVS_EX_FULLROWSELECT and the
        # user clicks anywhere on a row except on the check box, all
        # of the bits are set.  The hit test flags are LVHT_ONITEM.
        # This means that a bit test for LVHT_ONITEMSTATEICON is not
        # the correct way to determine that the user has selected
        # the check box, equality is needed.
        # 
        # 64
        index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_HITTEST, 0, pinfo))
        if (!(index).equal?(-1) && (pinfo.attr_flags).equal?(OS::LVHT_ONITEMSTATEICON))
          item = __get_item(index)
          item.set_checked(!item.get_checked, true)
          if (!OS::IsWinCE)
            OS._notify_win_event(OS::EVENT_OBJECT_FOCUS, self.attr_handle, OS::OBJID_CLIENT, index + 1)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousehover(w_param, l_param)
      # Feature in Windows.  Despite the fact that hot
      # tracking is not enabled, the hot tracking code
      # in WM_MOUSEHOVER is executed causing the item
      # under the cursor to be selected.  The fix is to
      # avoid calling the window proc.
      result = super(w_param, l_param)
      # 64
      bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
      mask = OS::LVS_EX_ONECLICKACTIVATE | OS::LVS_EX_TRACKSELECT | OS::LVS_EX_TWOCLICKACTIVATE
      if (!((bits & mask)).equal?(0))
        return result
      end
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_paint(w_param, l_param)
      if (!@ignore_shrink)
        # Resize the item array to match the item count
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
        if (@items.attr_length > 4 && @items.attr_length - count > 3)
          length_ = Math.max(4, (count + 3) / 4 * 4)
          new_items = Array.typed(TableItem).new(length_) { nil }
          System.arraycopy(@items, 0, new_items, 0, count)
          @items = new_items
        end
      end
      if (@fix_scroll_width)
        set_scroll_width(nil, true)
      end
      if (!OS::IsWinCE && OS::COMCTL32_MAJOR < 6)
        if (!((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0) || !(find_image_control).nil?)
          # 64
          bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
          if (((bits & OS::LVS_EX_DOUBLEBUFFER)).equal?(0))
            gc = nil
            # long
            paint_dc = 0
            ps = PAINTSTRUCT.new
            hooks_paint = hooks(SWT::Paint) || filters(SWT::Paint)
            if (hooks_paint)
              data = SwtGCData.new
              data.attr_ps = ps
              data.attr_hwnd = self.attr_handle
              gc = SwtGC.win32_new(self, data)
              paint_dc = gc.attr_handle
            else
              paint_dc = OS._begin_paint(self.attr_handle, ps)
            end
            width = ps.attr_right - ps.attr_left
            height = ps.attr_bottom - ps.attr_top
            if (!(width).equal?(0) && !(height).equal?(0))
              # long
              h_dc = OS._create_compatible_dc(paint_dc)
              lp_point1 = POINT.new
              lp_point2 = POINT.new
              OS._set_window_org_ex(h_dc, ps.attr_left, ps.attr_top, lp_point1)
              OS._set_brush_org_ex(h_dc, ps.attr_left, ps.attr_top, lp_point2)
              # long
              h_bitmap = OS._create_compatible_bitmap(paint_dc, width, height)
              # long
              h_old_bitmap = OS._select_object(h_dc, h_bitmap)
              # 64
              if (!(RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))).equal?(OS::CLR_NONE))
                rect = RECT.new
                OS._set_rect(rect, ps.attr_left, ps.attr_top, ps.attr_right, ps.attr_bottom)
                draw_background(h_dc, rect)
              end
              call_window_proc(self.attr_handle, OS::WM_PAINT, h_dc, 0)
              OS._set_window_org_ex(h_dc, lp_point1.attr_x, lp_point1.attr_y, nil)
              OS._set_brush_org_ex(h_dc, lp_point2.attr_x, lp_point2.attr_y, nil)
              OS._bit_blt(paint_dc, ps.attr_left, ps.attr_top, width, height, h_dc, 0, 0, OS::SRCCOPY)
              OS._select_object(h_dc, h_old_bitmap)
              OS._delete_object(h_bitmap)
              OS._delete_object(h_dc)
              if (hooks_paint)
                event = Event.new
                event.attr_gc = gc
                event.attr_x = ps.attr_left
                event.attr_y = ps.attr_top
                event.attr_width = ps.attr_right - ps.attr_left
                event.attr_height = ps.attr_bottom - ps.attr_top
                send_event(SWT::Paint, event)
                # widget could be disposed at this point
                event.attr_gc = nil
              end
            end
            if (hooks_paint)
              gc.dispose
            else
              OS._end_paint(self.attr_handle, ps)
            end
            return LRESULT::ZERO
          end
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_rbuttondblclk(w_param, l_param)
      # Feature in Windows.  When the user selects outside of
      # a table item, Windows deselects all the items, even
      # when the table is multi-select.  While not strictly
      # wrong, this is unexpected.  The fix is to detect the
      # case and avoid calling the window proc.
      pinfo = LVHITTESTINFO.new
      pinfo.attr_x = OS._get_x_lparam(l_param)
      pinfo.attr_y = OS._get_y_lparam(l_param)
      OS._send_message(self.attr_handle, OS::LVM_HITTEST, 0, pinfo)
      display = self.attr_display
      display.attr_capture_changed = false
      send_mouse_event(SWT::MouseDown, 3, self.attr_handle, OS::WM_RBUTTONDOWN, w_param, l_param)
      if (send_mouse_event(SWT::MouseDoubleClick, 3, self.attr_handle, OS::WM_RBUTTONDBLCLK, w_param, l_param))
        if (!(pinfo.attr_i_item).equal?(-1))
          call_window_proc(self.attr_handle, OS::WM_RBUTTONDBLCLK, w_param, l_param)
        end
      end
      if (!display.attr_capture_changed && !is_disposed)
        if (!(OS._get_capture).equal?(self.attr_handle))
          OS._set_capture(self.attr_handle)
        end
      end
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_rbuttondown(w_param, l_param)
      # Feature in Windows.  For some reason, capturing
      # the mouse after processing the mouse event for the
      # widget interferes with the normal mouse processing
      # for the widget.  The fix is to avoid the automatic
      # mouse capture.
      return send_mouse_down_event(SWT::MouseDown, 3, OS::WM_RBUTTONDOWN, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfocus(w_param, l_param)
      result = super(w_param, l_param)
      # Bug in Windows.  When focus is gained after the
      # selection has been changed using LVM_SETITEMSTATE,
      # Windows redraws the selected text but does not
      # redraw the image or the check box, leaving them
      # appearing unselected.  The fix is to redraw
      # the table.
      if (!(@image_list).nil? || !((self.attr_style & SWT::CHECK)).equal?(0))
        OS._invalidate_rect(self.attr_handle, nil, false)
      end
      # Bug in Windows.  For some reason, the table does
      # not set the default focus rectangle to be the first
      # item in the table when it gets focus and there is
      # no selected item.  The fix to make the first item
      # be the focus item.
      # 
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETITEMCOUNT, 0, 0))
      if ((count).equal?(0))
        return result
      end
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETNEXTITEM, -1, OS::LVNI_FOCUSED))
      if ((index).equal?(-1))
        lv_item = LVITEM.new
        lv_item.attr_state = OS::LVIS_FOCUSED
        lv_item.attr_state_mask = OS::LVIS_FOCUSED
        @ignore_select = true
        OS._send_message(self.attr_handle, OS::LVM_SETITEMSTATE, 0, lv_item)
        @ignore_select = false
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfont(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug in Windows.  When a header has a sort indicator
      # triangle, Windows resizes the indicator based on the
      # size of the n-1th font.  The fix is to always make
      # the n-1th font be the default.  This makes the sort
      # indicator always be the default size.
      # 
      # NOTE: The table window proc sets the actual font in
      # the header so that all that is necessary here is to
      # set the default first.
      # 
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      OS._send_message(hwnd_header, OS::WM_SETFONT, 0, l_param)
      if (!(@header_tool_tip_handle).equal?(0))
        OS._send_message(@header_tool_tip_handle, OS::WM_SETFONT, w_param, l_param)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setredraw(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  When LVM_SETBKCOLOR is used with CLR_NONE
      # to make the background of the table transparent, drawing becomes
      # slow.  The fix is to temporarily clear CLR_NONE when redraw is
      # turned off.
      if ((w_param).equal?(1))
        # 64
        if (!(RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))).equal?(OS::CLR_NONE))
          if (hooks(SWT::MeasureItem) || hooks(SWT::EraseItem) || hooks(SWT::PaintItem))
            OS._send_message(self.attr_handle, OS::LVM_SETBKCOLOR, 0, OS::CLR_NONE)
          end
        end
      end
      # Bug in Windows.  When WM_SETREDRAW is used to turn off
      # redraw for a list, table or tree, the background of the
      # control is drawn.  The fix is to call DefWindowProc(),
      # which stops all graphics output to the control.
      OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, w_param, l_param)
      # long
      code = call_window_proc(self.attr_handle, OS::WM_SETREDRAW, w_param, l_param)
      if ((w_param).equal?(0))
        # 64
        if ((RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))).equal?(OS::CLR_NONE))
          OS._send_message(self.attr_handle, OS::LVM_SETBKCOLOR, 0, 0xffffff)
        end
      end
      return (code).equal?(0) ? LRESULT::ZERO : LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      if (@ignore_resize)
        return nil
      end
      if (hooks(SWT::EraseItem) || hooks(SWT::PaintItem))
        OS._invalidate_rect(self.attr_handle, nil, true)
      end
      if (!(@resize_count).equal?(0))
        @was_resized = true
        return nil
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_syscolorchange(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if ((find_background_control).nil?)
        set_background_pixel(default_background)
      else
        # 64
        old_pixel = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETBKCOLOR, 0, 0))
        if (!(old_pixel).equal?(OS::CLR_NONE))
          if ((find_image_control).nil?)
            if (!((self.attr_style & SWT::CHECK)).equal?(0))
              fix_checkbox_image_list_color(true)
            end
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_hscroll(w_param, l_param)
      # Bug in Windows.  When a table that is drawing grid lines
      # is slowly scrolled horizontally to the left, the table does
      # not redraw the newly exposed vertical grid lines.  The fix
      # is to save the old scroll position, call the window proc,
      # get the new scroll position and redraw the new area.
      old_pos = 0
      # 64
      bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
      if (!((bits & OS::LVS_EX_GRIDLINES)).equal?(0))
        info = SCROLLINFO.new
        info.attr_cb_size = SCROLLINFO.attr_sizeof
        info.attr_f_mask = OS::SIF_POS
        OS._get_scroll_info(self.attr_handle, OS::SB_HORZ, info)
        old_pos = info.attr_n_pos
      end
      # Feature in Windows.  When there are many columns in a table,
      # scrolling performance can be improved by unsubclassing the
      # window proc so that internal messages are dispatched directly
      # to the table.  If the application expects to see a paint event
      # or has a child whose font, foreground or background color might
      # be needed, the window proc cannot be unsubclassed
      # 
      # NOTE: The header tooltip can subclass the header proc so the
      # current proc must be restored or header tooltips stop working.
      # 
      # long
      old_header_proc = 0
      old_table_proc = 0
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      fix_subclass = is_optimized_redraw
      if (fix_subclass)
        old_table_proc = OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TableProc)
        old_header_proc = OS._set_window_long_ptr(hwnd_header, OS::GWLP_WNDPROC, self.attr_header_proc)
      end
      # Feature in Windows.  For some reason, when the table window
      # proc processes WM_HSCROLL or WM_VSCROLL when there are many
      # columns in the table, scrolling is slow and the table does
      # not keep up with the position of the scroll bar.  The fix
      # is to turn off redraw, scroll, turn redraw back on and redraw
      # the entire table.  Strangly, redrawing the entire table is
      # faster.
      fix_scroll = false
      if (!(OS._loword(w_param)).equal?(OS::SB_ENDSCROLL))
        if (OS::COMCTL32_MAJOR >= 6)
          if (@column_count > H_SCROLL_LIMIT)
            # 64
            row_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETCOUNTPERPAGE, 0, 0))
            if (row_count > V_SCROLL_LIMIT)
              fix_scroll = get_drawing && OS._is_window_visible(self.attr_handle)
            end
          end
        end
      end
      if (fix_scroll)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
      end
      result = super(w_param, l_param)
      if (fix_scroll)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
        flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
        OS._redraw_window(self.attr_handle, nil, 0, flags)
        # Feature in Windows.  On Vista only, it is faster to
        # compute and answer the data for the visible columns
        # of a table when scrolling, rather than just return
        # the data for each column when asked.
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
          header_rect = RECT.new
          rect = RECT.new
          OS._get_client_rect(self.attr_handle, rect)
          visible = Array.typed(::Java::Boolean).new(@column_count) { false }
          i = 0
          while i < @column_count
            visible[i] = true
            if (!(OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, i, header_rect)).equal?(0))
              OS._map_window_points(hwnd_header, self.attr_handle, header_rect, 2)
              visible[i] = OS._intersect_rect(header_rect, rect, header_rect)
            end
            i += 1
          end
          begin
            self.attr_display.attr_hwnd_parent = OS._get_parent(self.attr_handle)
            self.attr_display.attr_column_visible = visible
            OS._update_window(self.attr_handle)
          ensure
            self.attr_display.attr_column_visible = nil
          end
        end
      end
      if (fix_subclass)
        OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_table_proc)
        OS._set_window_long_ptr(hwnd_header, OS::GWLP_WNDPROC, old_header_proc)
      end
      # Bug in Windows.  When a table that is drawing grid lines
      # is slowly scrolled horizontally to the left, the table does
      # not redraw the newly exposed vertical grid lines.  The fix
      # is to save the old scroll position, call the window proc,
      # get the new scroll position and redraw the new area.
      if (!((bits & OS::LVS_EX_GRIDLINES)).equal?(0))
        info = SCROLLINFO.new
        info.attr_cb_size = SCROLLINFO.attr_sizeof
        info.attr_f_mask = OS::SIF_POS
        OS._get_scroll_info(self.attr_handle, OS::SB_HORZ, info)
        new_pos = info.attr_n_pos
        if (new_pos < old_pos)
          rect = RECT.new
          OS._get_client_rect(self.attr_handle, rect)
          rect.attr_right = old_pos - new_pos + GRID_WIDTH
          OS._invalidate_rect(self.attr_handle, rect, true)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_vscroll(w_param, l_param)
      # When there are many columns in a table, scrolling performance
      # can be improved by temporarily unsubclassing the window proc
      # so that internal messages are dispatched directly to the table.
      # If the application expects to see a paint event or has a child
      # whose font, foreground or background color might be needed,
      # the window proc cannot be unsubclassed.
      # 
      # NOTE: The header tooltip can subclass the header proc so the
      # current proc must be restored or header tooltips stop working.
      # 
      # long
      old_header_proc = 0
      old_table_proc = 0
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      fix_subclass = is_optimized_redraw
      if (fix_subclass)
        old_table_proc = OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TableProc)
        old_header_proc = OS._set_window_long_ptr(hwnd_header, OS::GWLP_WNDPROC, self.attr_header_proc)
      end
      # Feature in Windows.  For some reason, when the table window
      # proc processes WM_HSCROLL or WM_VSCROLL when there are many
      # columns in the table, scrolling is slow and the table does
      # not keep up with the position of the scroll bar.  The fix
      # is to turn off redraw, scroll, turn redraw back on and redraw
      # the entire table.  Strangly, redrawing the entire table is
      # faster.
      fix_scroll = false
      if (!(OS._loword(w_param)).equal?(OS::SB_ENDSCROLL))
        if (OS::COMCTL32_MAJOR >= 6)
          if (@column_count > H_SCROLL_LIMIT)
            # 64
            row_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETCOUNTPERPAGE, 0, 0))
            if (row_count > V_SCROLL_LIMIT)
              fix_scroll = get_drawing && OS._is_window_visible(self.attr_handle)
            end
          end
        end
      end
      if (fix_scroll)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
      end
      result = super(w_param, l_param)
      if (fix_scroll)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
        flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
        OS._redraw_window(self.attr_handle, nil, 0, flags)
        # Feature in Windows.  On Vista only, it is faster to
        # compute and answer the data for the visible columns
        # of a table when scrolling, rather than just return
        # the data for each column when asked.
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
          header_rect = RECT.new
          rect = RECT.new
          OS._get_client_rect(self.attr_handle, rect)
          visible = Array.typed(::Java::Boolean).new(@column_count) { false }
          i = 0
          while i < @column_count
            visible[i] = true
            if (!(OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, i, header_rect)).equal?(0))
              OS._map_window_points(hwnd_header, self.attr_handle, header_rect, 2)
              visible[i] = OS._intersect_rect(header_rect, rect, header_rect)
            end
            i += 1
          end
          begin
            self.attr_display.attr_hwnd_parent = OS._get_parent(self.attr_handle)
            self.attr_display.attr_column_visible = visible
            OS._update_window(self.attr_handle)
          ensure
            self.attr_display.attr_column_visible = nil
          end
        end
      end
      if (fix_subclass)
        OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_table_proc)
        OS._set_window_long_ptr(hwnd_header, OS::GWLP_WNDPROC, old_header_proc)
      end
      # Bug in Windows.  When a table is drawing grid lines and the
      # user scrolls vertically up or down by a line or a page, the
      # table does not redraw the grid lines for newly exposed items.
      # The fix is to invalidate the items.
      # 
      # 64
      bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
      if (!((bits & OS::LVS_EX_GRIDLINES)).equal?(0))
        code = OS._loword(w_param)
        case (code)
        when OS::SB_ENDSCROLL, OS::SB_THUMBPOSITION, OS::SB_THUMBTRACK, OS::SB_TOP, OS::SB_BOTTOM
        when OS::SB_LINEDOWN, OS::SB_LINEUP
          rect = RECT.new
          OS._get_window_rect(hwnd_header, rect)
          header_height = rect.attr_bottom - rect.attr_top
          client_rect = RECT.new
          OS._get_client_rect(self.attr_handle, client_rect)
          client_rect.attr_top += header_height
          # long
          empty = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 0, 0)
          # long
          one_item = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 1, 0)
          item_height = OS._hiword(one_item) - OS._hiword(empty)
          if ((code).equal?(OS::SB_LINEDOWN))
            client_rect.attr_top = client_rect.attr_bottom - item_height - GRID_WIDTH
          else
            client_rect.attr_bottom = client_rect.attr_top + item_height + GRID_WIDTH
          end
          OS._invalidate_rect(self.attr_handle, client_rect, true)
        when OS::SB_PAGEDOWN, OS::SB_PAGEUP
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_measure_child(w_param, l_param)
      struct = MEASUREITEMSTRUCT.new
      OS._move_memory(struct, l_param, MEASUREITEMSTRUCT.attr_sizeof)
      if ((@item_height).equal?(-1))
        # long
        empty = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 0, 0)
        # long
        one_item = OS._send_message(self.attr_handle, OS::LVM_APPROXIMATEVIEWRECT, 1, 0)
        struct.attr_item_height = OS._hiword(one_item) - OS._hiword(empty)
      else
        struct.attr_item_height = @item_height
      end
      OS._move_memory(l_param, struct, MEASUREITEMSTRUCT.attr_sizeof)
      return nil
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify(hdr, w_param, l_param)
      # long
      hwnd_tool_tip = OS._send_message(self.attr_handle, OS::LVM_GETTOOLTIPS, 0, 0)
      if ((hdr.attr_hwnd_from).equal?(hwnd_tool_tip))
        result = wm_notify_tool_tip(hdr, w_param, l_param)
        if (!(result).nil?)
          return result
        end
      end
      # long
      hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
      if ((hdr.attr_hwnd_from).equal?(hwnd_header))
        result = wm_notify_header(hdr, w_param, l_param)
        if (!(result).nil?)
          return result
        end
      end
      return super(hdr, w_param, l_param)
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify_child(hdr, w_param, l_param)
      catch(:break_case) do
        case (hdr.attr_code)
        when OS::LVN_ODFINDITEMA, OS::LVN_ODFINDITEMW
          if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
            return LRESULT.new(-1)
          end
        when OS::LVN_ODSTATECHANGED
          if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
            if (!@ignore_select)
              lp_state_change = NMLVODSTATECHANGE.new
              OS._move_memory(lp_state_change, l_param, NMLVODSTATECHANGE.attr_sizeof)
              old_selected = !((lp_state_change.attr_u_old_state & OS::LVIS_SELECTED)).equal?(0)
              new_selected = !((lp_state_change.attr_u_new_state & OS::LVIS_SELECTED)).equal?(0)
              if (!(old_selected).equal?(new_selected))
                @was_selected = true
              end
            end
          end
        when OS::LVN_GETDISPINFOA, OS::LVN_GETDISPINFOW
          # if (drawCount != 0 || !OS.IsWindowVisible (handle)) break;
          plvfi = NMLVDISPINFO.new
          OS._move_memory(plvfi, l_param, NMLVDISPINFO.attr_sizeof)
          visible = self.attr_display.attr_column_visible
          if (!(visible).nil? && !visible[plvfi.attr_i_sub_item])
            throw :break_case, :thrown
          end
          # When an item is being deleted from a virtual table, do not
          # allow the application to provide data for a new item that
          # becomes visible until the item has been removed from the
          # items array.  Because arbitrary application code can run
          # during the callback, the items array might be accessed
          # in an inconsistent state.  Rather than answering the data
          # right away, queue a redraw for later.
          if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
            if (@ignore_shrink)
              OS._send_message(self.attr_handle, OS::LVM_REDRAWITEMS, plvfi.attr_i_item, plvfi.attr_i_item)
              throw :break_case, :thrown
            end
          end
          # Feature in Windows.  When a new table item is inserted
          # using LVM_INSERTITEM in a table that is transparent
          # (ie. LVM_SETBKCOLOR has been called with CLR_NONE),
          # TVM_INSERTITEM calls LVN_GETDISPINFO before the item
          # has been added to the array.  The fix is to check for
          # null.
          item = __get_item(plvfi.attr_i_item)
          if ((item).nil?)
            throw :break_case, :thrown
          end
          # The cached flag is used by both virtual and non-virtual
          # tables to indicate that Windows has asked at least once
          # for a table item.
          if (!item.attr_cached)
            if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
              @last_index_of = plvfi.attr_i_item
              if (!check_data(item, @last_index_of, false))
                throw :break_case, :thrown
              end
              new_item = @fix_scroll_width ? nil : item
              if (set_scroll_width(new_item, true))
                OS._invalidate_rect(self.attr_handle, nil, true)
              end
            end
            item.attr_cached = true
          end
          if (!((plvfi.attr_mask & OS::LVIF_TEXT)).equal?(0))
            string = nil
            if ((plvfi.attr_i_sub_item).equal?(0))
              string = RJava.cast_to_string(item.attr_text)
            else
              strings = item.attr_strings
              if (!(strings).nil?)
                string = RJava.cast_to_string(strings[plvfi.attr_i_sub_item])
              end
            end
            if (!(string).nil?)
              # Bug in Windows.  When pszText points to a zero length
              # NULL terminated string, Windows correctly draws the
              # empty string but the cache of the bounds for the item
              # is not reset.  This means that when the text for the
              # item is set and then reset to an empty string, the
              # selection draws using the bounds of the previous text.
              # The fix is to use a space rather than an empty string
              # when anything but a tool tip is requested (to avoid
              # a tool tip that is a single space).
              # 
              # NOTE: This is only a problem for items in the first
              # column.  Assigning NULL to other columns stops Windows
              # from drawing the selection when LVS_EX_FULLROWSELECT
              # is set.
              length_ = Math.min(string.length, plvfi.attr_cch_text_max - 1)
              if (!@tip_requested && (plvfi.attr_i_sub_item).equal?(0) && (length_).equal?(0))
                string = " " # $NON-NLS-1$
                length_ = 1
              end
              buffer = self.attr_display.attr_table_buffer
              if ((buffer).nil? || plvfi.attr_cch_text_max > buffer.attr_length)
                buffer = self.attr_display.attr_table_buffer = CharArray.new(plvfi.attr_cch_text_max)
              end
              string.get_chars(0, length_, buffer, 0)
              buffer[((length_ += 1) - 1)] = 0
              if (OS::IsUnicode)
                OS._move_memory(plvfi.attr_psz_text, buffer, length_ * 2)
              else
                OS._wide_char_to_multi_byte(get_code_page, 0, buffer, length_, plvfi.attr_psz_text, plvfi.attr_cch_text_max, nil, nil)
                OS._move_memory(plvfi.attr_psz_text + plvfi.attr_cch_text_max - 1, Array.typed(::Java::Byte).new(1) { 0 }, 1)
              end
            end
          end
          move = false
          if (!((plvfi.attr_mask & OS::LVIF_IMAGE)).equal?(0))
            image = nil
            if ((plvfi.attr_i_sub_item).equal?(0))
              image = item.attr_image
            else
              images = item.attr_images
              if (!(images).nil?)
                image = images[plvfi.attr_i_sub_item]
              end
            end
            if (!(image).nil?)
              plvfi.attr_i_image = image_index(image, plvfi.attr_i_sub_item)
              move = true
            end
          end
          if (!((plvfi.attr_mask & OS::LVIF_STATE)).equal?(0))
            if ((plvfi.attr_i_sub_item).equal?(0))
              state = 1
              if (item.attr_checked)
                state += 1
              end
              if (item.attr_grayed)
                state += 2
              end
              plvfi.attr_state = state << 12
              plvfi.attr_state_mask = OS::LVIS_STATEIMAGEMASK
              move = true
            end
          end
          if (!((plvfi.attr_mask & OS::LVIF_INDENT)).equal?(0))
            if ((plvfi.attr_i_sub_item).equal?(0))
              plvfi.attr_i_indent = item.attr_image_indent
              move = true
            end
          end
          if (move)
            OS._move_memory(l_param, plvfi, NMLVDISPINFO.attr_sizeof)
          end
        when OS::NM_CUSTOMDRAW
          # long
          hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
          if ((hdr.attr_hwnd_from).equal?(hwnd_header))
            throw :break_case, :thrown
          end
          if (!@custom_draw && (find_image_control).nil?)
            # Feature in Windows.  When the table is disabled, it draws
            # with a gray background but does not gray the text.  The fix
            # is to explicitly gray the text using Custom Draw.
            if (OS._is_window_enabled(self.attr_handle))
              # Feature in Windows.  On Vista using the explorer theme,
              # Windows draws a vertical line to separate columns.  When
              # there is only a single column, the line looks strange.
              # The fix is to draw the background using custom draw.
              if (!@explorer_theme || !(@column_count).equal?(0))
                throw :break_case, :thrown
              end
            end
          end
          nmcd = NMLVCUSTOMDRAW.new
          OS._move_memory(nmcd, l_param, NMLVCUSTOMDRAW.attr_sizeof)
          case (nmcd.attr_dw_draw_stage)
          when OS::CDDS_PREPAINT
            return _cdds_prepaint(nmcd, w_param, l_param)
          when OS::CDDS_ITEMPREPAINT
            return _cdds_itemprepaint(nmcd, w_param, l_param)
          when OS::CDDS_ITEMPOSTPAINT
            return _cdds_itempostpaint(nmcd, w_param, l_param)
          when OS::CDDS_SUBITEMPREPAINT
            return _cdds_subitemprepaint(nmcd, w_param, l_param)
          when OS::CDDS_SUBITEMPOSTPAINT
            return _cdds_subitempostpaint(nmcd, w_param, l_param)
          when OS::CDDS_POSTPAINT
            return _cdds_postpaint(nmcd, w_param, l_param)
          end
        when OS::LVN_MARQUEEBEGIN
          if (!((self.attr_style & SWT::SINGLE)).equal?(0))
            return LRESULT::ONE
          end
          if (hooks(SWT::MouseDown) || hooks(SWT::MouseUp))
            return LRESULT::ONE
          end
          if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
            if (!(find_image_control).nil?)
              return LRESULT::ONE
            end
          end
        when OS::LVN_BEGINDRAG, OS::LVN_BEGINRDRAG
          if (OS._get_key_state(OS::VK_LBUTTON) >= 0)
            throw :break_case, :thrown
          end
          @drag_started = true
          if ((hdr.attr_code).equal?(OS::LVN_BEGINDRAG))
            pos = OS._get_message_pos
            pt = POINT.new
            OS._pointstopoint(pt, pos)
            OS._screen_to_client(self.attr_handle, pt)
            send_drag_event(1, pt.attr_x, pt.attr_y)
          end
        when OS::LVN_COLUMNCLICK
          pnmlv = NMLISTVIEW.new
          OS._move_memory(pnmlv, l_param, NMLISTVIEW.attr_sizeof)
          column = @columns[pnmlv.attr_i_sub_item]
          if (!(column).nil?)
            column.post_event(SWT::Selection)
          end
        when OS::LVN_ITEMACTIVATE
          if (@ignore_activate)
            throw :break_case, :thrown
          end
          pnmlv = NMLISTVIEW.new
          OS._move_memory(pnmlv, l_param, NMLISTVIEW.attr_sizeof)
          if (!(pnmlv.attr_i_item).equal?(-1))
            event = Event.new
            event.attr_item = __get_item(pnmlv.attr_i_item)
            post_event(SWT::DefaultSelection, event)
          end
        when OS::LVN_ITEMCHANGED
          if (@full_row_select)
            @full_row_select = false
            OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
            OS._send_message(self.attr_handle, OS::LVM_SETEXTENDEDLISTVIEWSTYLE, OS::LVS_EX_FULLROWSELECT, 0)
          end
          if (!@ignore_select)
            pnmlv = NMLISTVIEW.new
            OS._move_memory(pnmlv, l_param, NMLISTVIEW.attr_sizeof)
            if (!((pnmlv.attr_u_changed & OS::LVIF_STATE)).equal?(0))
              if ((pnmlv.attr_i_item).equal?(-1))
                @was_selected = true
              else
                old_selected = !((pnmlv.attr_u_old_state & OS::LVIS_SELECTED)).equal?(0)
                new_selected = !((pnmlv.attr_u_new_state & OS::LVIS_SELECTED)).equal?(0)
                if (!(old_selected).equal?(new_selected))
                  @was_selected = true
                end
              end
            end
          end
          if (hooks(SWT::EraseItem) || hooks(SWT::PaintItem))
            # long
            hwnd_header = OS._send_message(self.attr_handle, OS::LVM_GETHEADER, 0, 0)
            # 64
            count = RJava.cast_to_int(OS._send_message(hwnd_header, OS::HDM_GETITEMCOUNT, 0, 0))
            if (!(count).equal?(0))
              force_resize
              rect = RECT.new
              OS._get_client_rect(self.attr_handle, rect)
              pnmlv = NMLISTVIEW.new
              OS._move_memory(pnmlv, l_param, NMLISTVIEW.attr_sizeof)
              if (!(pnmlv.attr_i_item).equal?(-1))
                item_rect = RECT.new
                item_rect.attr_left = OS::LVIR_BOUNDS
                @ignore_custom_draw = true
                OS._send_message(self.attr_handle, OS::LVM_GETITEMRECT, pnmlv.attr_i_item, item_rect)
                @ignore_custom_draw = false
                header_rect = RECT.new
                # 64
                index = RJava.cast_to_int(OS._send_message(hwnd_header, OS::HDM_ORDERTOINDEX, count - 1, 0))
                OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)
                OS._map_window_points(hwnd_header, self.attr_handle, header_rect, 2)
                rect.attr_left = header_rect.attr_right
                rect.attr_top = item_rect.attr_top
                rect.attr_bottom = item_rect.attr_bottom
                OS._invalidate_rect(self.attr_handle, rect, true)
              end
            end
          end
        when OS::NM_RECOGNIZEGESTURE
          # Feature on Pocket PC.  The tree and table controls detect the tap
          # and hold gesture by default. They send a GN_CONTEXTMENU message to show
          # the popup menu.  This default behaviour is unwanted on Pocket PC 2002
          # when no menu has been set, as it still draws a red circle.  The fix
          # is to disable this default behaviour when no menu is set by returning
          # TRUE when receiving the Pocket PC 2002 specific NM_RECOGNIZEGESTURE
          # message.
          if (OS::IsPPC)
            has_menu = !(self.attr_menu).nil? && !self.attr_menu.is_disposed
            if (!has_menu && !hooks(SWT::MenuDetect))
              return LRESULT::ONE
            end
          end
        when OS::GN_CONTEXTMENU
          if (OS::IsPPC)
            has_menu = !(self.attr_menu).nil? && !self.attr_menu.is_disposed
            if (has_menu || hooks(SWT::MenuDetect))
              nmrg = NMRGINFO.new
              OS._move_memory(nmrg, l_param, NMRGINFO.attr_sizeof)
              show_menu(nmrg.attr_x, nmrg.attr_y)
              return LRESULT::ONE
            end
          end
        end
      end
      return super(hdr, w_param, l_param)
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify_header(hdr, w_param, l_param)
      catch(:break_case) do
        # Feature in Windows.  On NT, the automatically created
        # header control is created as a UNICODE window, not an
        # ANSI window despite the fact that the parent is created
        # as an ANSI window.  This means that it sends UNICODE
        # notification messages to the parent window on NT for
        # no good reason.  The data and size in the NMHEADER and
        # HDITEM structs is identical between the platforms so no
        # different message is actually necessary.  Despite this,
        # Windows sends different messages.  The fix is to look
        # for both messages, despite the platform.  This works
        # because only one will be sent on either platform, never
        # both.
        case (hdr.attr_code)
        when OS::HDN_BEGINTRACKW, OS::HDN_BEGINTRACKA, OS::HDN_DIVIDERDBLCLICKW, OS::HDN_DIVIDERDBLCLICKA
          if ((@column_count).equal?(0))
            return LRESULT::ONE
          end
          phdn = NMHEADER.new
          OS._move_memory(phdn, l_param, NMHEADER.attr_sizeof)
          column = @columns[phdn.attr_i_item]
          if (!(column).nil? && !column.get_resizable)
            return LRESULT::ONE
          end
          @ignore_column_move = true
          case (hdr.attr_code)
          when OS::HDN_DIVIDERDBLCLICKW, OS::HDN_DIVIDERDBLCLICKA
            # Bug in Windows.  When the first column of a table does not
            # have an image and the user double clicks on the divider,
            # Windows packs the column but does not take into account
            # the empty space left for the image.  The fix is to pack
            # the column explicitly rather than letting Windows do it.
            # 
            # NOTE:  This bug does not happen on Vista.
            fix_pack = false
            if (!OS::IsWinCE && OS::WIN32_VERSION < OS._version(6, 0))
              fix_pack = (phdn.attr_i_item).equal?(0) && !@first_column_image
            end
            if (!(column).nil? && (fix_pack || hooks(SWT::MeasureItem)))
              column.pack
              return LRESULT::ONE
            end
          end
        when OS::NM_RELEASEDCAPTURE
          if (!@ignore_column_move)
            i = 0
            while i < @column_count
              column = @columns[i]
              column.update_tool_tip(i)
              i += 1
            end
          end
          @ignore_column_move = false
        when OS::HDN_BEGINDRAG
          if (@ignore_column_move)
            return LRESULT::ONE
          end
          # 64
          bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
          if (((bits & OS::LVS_EX_HEADERDRAGDROP)).equal?(0))
            throw :break_case, :thrown
          end
          if ((@column_count).equal?(0))
            return LRESULT::ONE
          end
          phdn = NMHEADER.new
          OS._move_memory(phdn, l_param, NMHEADER.attr_sizeof)
          if (!(phdn.attr_i_item).equal?(-1))
            column = @columns[phdn.attr_i_item]
            if (!(column).nil? && !column.get_moveable)
              @ignore_column_move = true
              return LRESULT::ONE
            end
          end
        when OS::HDN_ENDDRAG
          # 64
          bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
          if (((bits & OS::LVS_EX_HEADERDRAGDROP)).equal?(0))
            throw :break_case, :thrown
          end
          phdn = NMHEADER.new
          OS._move_memory(phdn, l_param, NMHEADER.attr_sizeof)
          if (!(phdn.attr_i_item).equal?(-1) && !(phdn.attr_pitem).equal?(0))
            pitem = HDITEM.new
            OS._move_memory(pitem, phdn.attr_pitem, HDITEM.attr_sizeof)
            if (!((pitem.attr_mask & OS::HDI_ORDER)).equal?(0) && !(pitem.attr_i_order).equal?(-1))
              if ((@column_count).equal?(0))
                throw :break_case, :thrown
              end
              order = Array.typed(::Java::Int).new(@column_count) { 0 }
              OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNORDERARRAY, @column_count, order)
              index = 0
              while (index < order.attr_length)
                if ((order[index]).equal?(phdn.attr_i_item))
                  break
                end
                index += 1
              end
              if ((index).equal?(order.attr_length))
                index = 0
              end
              if ((index).equal?(pitem.attr_i_order))
                throw :break_case, :thrown
              end
              start = Math.min(index, pitem.attr_i_order)
              end_ = Math.max(index, pitem.attr_i_order)
              @ignore_column_move = false
              i = start
              while i <= end_
                column = @columns[order[i]]
                if (!column.is_disposed)
                  column.post_event(SWT::Move)
                end
                i += 1
              end
            end
          end
        when OS::HDN_ITEMCHANGEDW, OS::HDN_ITEMCHANGEDA
          # Bug in Windows.  When a table has the LVS_EX_GRIDLINES extended
          # style and the user drags any column over the first column in the
          # table, making the size become zero, when the user drags a column
          # such that the size of the first column becomes non-zero, the grid
          # lines are not redrawn.  The fix is to detect the case and force
          # a redraw of the first column.
          # 
          # 64
          width = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNWIDTH, 0, 0))
          if ((@last_width).equal?(0) && width > 0)
            # 64
            bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
            if (!((bits & OS::LVS_EX_GRIDLINES)).equal?(0))
              rect = RECT.new
              OS._get_client_rect(self.attr_handle, rect)
              rect.attr_right = rect.attr_left + width
              OS._invalidate_rect(self.attr_handle, rect, true)
            end
          end
          @last_width = width
          if (!@ignore_column_resize)
            phdn = NMHEADER.new
            OS._move_memory(phdn, l_param, NMHEADER.attr_sizeof)
            if (!(phdn.attr_pitem).equal?(0))
              pitem = HDITEM.new
              OS._move_memory(pitem, phdn.attr_pitem, HDITEM.attr_sizeof)
              if (!((pitem.attr_mask & OS::HDI_WIDTH)).equal?(0))
                column = @columns[phdn.attr_i_item]
                if (!(column).nil?)
                  column.update_tool_tip(phdn.attr_i_item)
                  column.send_event(SWT::Resize)
                  if (is_disposed)
                    return LRESULT::ZERO
                  end
                  # It is possible (but unlikely), that application
                  # code could have disposed the column in the move
                  # event.  If this happens, process the move event
                  # for those columns that have not been destroyed.
                  new_columns = Array.typed(TableColumn).new(@column_count) { nil }
                  System.arraycopy(@columns, 0, new_columns, 0, @column_count)
                  order = Array.typed(::Java::Int).new(@column_count) { 0 }
                  OS._send_message(self.attr_handle, OS::LVM_GETCOLUMNORDERARRAY, @column_count, order)
                  moved = false
                  i = 0
                  while i < @column_count
                    next_column = new_columns[order[i]]
                    if (moved && !next_column.is_disposed)
                      next_column.update_tool_tip(order[i])
                      next_column.send_event(SWT::Move)
                    end
                    if ((next_column).equal?(column))
                      moved = true
                    end
                    i += 1
                  end
                end
              end
            end
          end
        when OS::HDN_ITEMDBLCLICKW, OS::HDN_ITEMDBLCLICKA
          phdn = NMHEADER.new
          OS._move_memory(phdn, l_param, NMHEADER.attr_sizeof)
          column = @columns[phdn.attr_i_item]
          if (!(column).nil?)
            column.post_event(SWT::DefaultSelection)
          end
        end
      end
      return nil
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify_tool_tip(hdr, w_param, l_param)
      if (OS::IsWinCE)
        return nil
      end
      catch(:break_case) do
        case (hdr.attr_code)
        when OS::NM_CUSTOMDRAW
          if (!(self.attr_tool_tip_text).nil?)
            throw :break_case, :thrown
          end
          if (is_custom_tool_tip)
            nmcd = NMTTCUSTOMDRAW.new
            OS._move_memory(nmcd, l_param, NMTTCUSTOMDRAW.attr_sizeof)
            return wm_notify_tool_tip(nmcd, l_param)
          end
        when OS::TTN_GETDISPINFOA, OS::TTN_GETDISPINFOW, OS::TTN_SHOW
          result = Composite.instance_method(:wm_notify).bind(self).call(hdr, w_param, l_param)
          if (!(result).nil?)
            return result
          end
          if (!(hdr.attr_code).equal?(OS::TTN_SHOW))
            @tip_requested = true
          end
          # long
          code = call_window_proc(self.attr_handle, OS::WM_NOTIFY, w_param, l_param)
          if (!(hdr.attr_code).equal?(OS::TTN_SHOW))
            @tip_requested = false
          end
          if (!(self.attr_tool_tip_text).nil?)
            throw :break_case, :thrown
          end
          if (is_custom_tool_tip)
            pinfo = LVHITTESTINFO.new
            pos = OS._get_message_pos
            pt = POINT.new
            OS._pointstopoint(pt, pos)
            OS._screen_to_client(self.attr_handle, pt)
            pinfo.attr_x = pt.attr_x
            pinfo.attr_y = pt.attr_y
            # Bug in Windows.  When LVM_SUBITEMHITTEST is used to hittest
            # a point that is above the table, instead of returning -1 to
            # indicate that the hittest failed, a negative index is returned.
            # The fix is to consider any value that is negative a failure.
            if (OS._send_message(self.attr_handle, OS::LVM_SUBITEMHITTEST, 0, pinfo) >= 0)
              item = __get_item(pinfo.attr_i_item)
              # long
              h_dc = OS._get_dc(self.attr_handle)
              # long
              old_font = 0
              new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
              if (!(new_font).equal?(0))
                old_font = OS._select_object(h_dc, new_font)
              end
              # long
              h_font = item.font_handle(pinfo.attr_i_sub_item)
              if (!(h_font).equal?(-1))
                h_font = OS._select_object(h_dc, h_font)
              end
              event = send_measure_item_event(item, pinfo.attr_i_item, pinfo.attr_i_sub_item, h_dc)
              if (!is_disposed && !item.is_disposed)
                item_rect = RECT.new
                OS._set_rect(item_rect, event.attr_x, event.attr_y, event.attr_x + event.attr_width, event.attr_y + event.attr_height)
                if ((hdr.attr_code).equal?(OS::TTN_SHOW))
                  tool_rect = tool_tip_rect(item_rect)
                  OS._map_window_points(self.attr_handle, 0, tool_rect, 2)
                  # long
                  hwnd_tool_tip = OS._send_message(self.attr_handle, OS::LVM_GETTOOLTIPS, 0, 0)
                  flags = OS::SWP_NOACTIVATE | OS::SWP_NOZORDER
                  width = tool_rect.attr_right - tool_rect.attr_left
                  height = tool_rect.attr_bottom - tool_rect.attr_top
                  _set_window_pos(hwnd_tool_tip, 0, tool_rect.attr_left, tool_rect.attr_top, width, height, flags)
                else
                  lpnmtdi = nil
                  if ((hdr.attr_code).equal?(OS::TTN_GETDISPINFOA))
                    lpnmtdi = NMTTDISPINFOA.new
                    OS._move_memory(lpnmtdi, l_param, NMTTDISPINFOA.attr_sizeof)
                    if (!(lpnmtdi.attr_lpsz_text).equal?(0))
                      OS._move_memory(lpnmtdi.attr_lpsz_text, Array.typed(::Java::Byte).new(1) { 0 }, 1)
                      OS._move_memory(l_param, lpnmtdi, NMTTDISPINFOA.attr_sizeof)
                    end
                  else
                    lpnmtdi = NMTTDISPINFOW.new
                    OS._move_memory(lpnmtdi, l_param, NMTTDISPINFOW.attr_sizeof)
                    if (!(lpnmtdi.attr_lpsz_text).equal?(0))
                      OS._move_memory(lpnmtdi.attr_lpsz_text, CharArray.new(1), 2)
                      OS._move_memory(l_param, lpnmtdi, NMTTDISPINFOW.attr_sizeof)
                    end
                  end
                  cell_rect = item.get_bounds(pinfo.attr_i_item, pinfo.attr_i_sub_item, true, true, true, true, h_dc)
                  if (item_rect.attr_right > cell_rect.attr_right)
                    # TEMPORARY CODE
                    string = " "
                    # String string = null;
                    # if (pinfo.iSubItem == 0) {
                    # string = item.text;
                    # } else {
                    # String [] strings  = item.strings;
                    # if (strings != null) string = strings [pinfo.iSubItem];
                    # }
                    if (!(string).nil?)
                      shell = get_shell
                      chars = CharArray.new(string.length + 1)
                      string.get_chars(0, string.length, chars, 0)
                      if ((hdr.attr_code).equal?(OS::TTN_GETDISPINFOA))
                        bytes = Array.typed(::Java::Byte).new(chars.attr_length * 2) { 0 }
                        OS._wide_char_to_multi_byte(get_code_page, 0, chars, chars.attr_length, bytes, bytes.attr_length, nil, nil)
                        shell.set_tool_tip_text(lpnmtdi, bytes)
                        OS._move_memory(l_param, lpnmtdi, NMTTDISPINFOA.attr_sizeof)
                      else
                        shell.set_tool_tip_text(lpnmtdi, chars)
                        OS._move_memory(l_param, lpnmtdi, NMTTDISPINFOW.attr_sizeof)
                      end
                    end
                  end
                end
              end
              if (!(h_font).equal?(-1))
                h_font = OS._select_object(h_dc, h_font)
              end
              if (!(new_font).equal?(0))
                OS._select_object(h_dc, old_font)
              end
              OS._release_dc(self.attr_handle, h_dc)
            end
          end
          return LRESULT.new(code)
        end
      end
      return nil
    end
    
    typesig { [NMTTCUSTOMDRAW, ::Java::Int] }
    # long
    def wm_notify_tool_tip(nmcd, l_param)
      if (OS::IsWinCE)
        return nil
      end
      catch(:break_case) do
        case (nmcd.attr_dw_draw_stage)
        when OS::CDDS_PREPAINT
          if (is_custom_tool_tip)
            # TEMPORARY CODE
            # nmcd.uDrawFlags |= OS.DT_CALCRECT;
            # OS.MoveMemory (lParam, nmcd, NMTTCUSTOMDRAW.sizeof);
            return LRESULT.new(OS::CDRF_NOTIFYPOSTPAINT | OS::CDRF_NEWFONT)
          end
        when OS::CDDS_POSTPAINT
          pinfo = LVHITTESTINFO.new
          pos = OS._get_message_pos
          pt = POINT.new
          OS._pointstopoint(pt, pos)
          OS._screen_to_client(self.attr_handle, pt)
          pinfo.attr_x = pt.attr_x
          pinfo.attr_y = pt.attr_y
          # Bug in Windows.  When LVM_SUBITEMHITTEST is used to hittest
          # a point that is above the table, instead of returning -1 to
          # indicate that the hittest failed, a negative index is returned.
          # The fix is to consider any value that is negative a failure.
          if (OS._send_message(self.attr_handle, OS::LVM_SUBITEMHITTEST, 0, pinfo) >= 0)
            item = __get_item(pinfo.attr_i_item)
            # long
            h_dc = OS._get_dc(self.attr_handle)
            # long
            h_font = item.font_handle(pinfo.attr_i_sub_item)
            if ((h_font).equal?(-1))
              h_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
            end
            # long
            old_font = OS._select_object(h_dc, h_font)
            draw_foreground = true
            cell_rect = item.get_bounds(pinfo.attr_i_item, pinfo.attr_i_sub_item, true, true, false, false, h_dc)
            if (hooks(SWT::EraseItem))
              event = send_erase_item_event(item, nmcd, pinfo.attr_i_sub_item, cell_rect)
              if (is_disposed || item.is_disposed)
                throw :break_case, :thrown
              end
              if (event.attr_doit)
                draw_foreground = !((event.attr_detail & SWT::FOREGROUND)).equal?(0)
              else
                draw_foreground = false
              end
            end
            if (draw_foreground)
              n_saved_dc = OS._save_dc(nmcd.attr_hdc)
              grid_width = get_lines_visible ? Table::GRID_WIDTH : 0
              inset_rect = tool_tip_inset(cell_rect)
              OS._set_window_org_ex(nmcd.attr_hdc, inset_rect.attr_left, inset_rect.attr_top, nil)
              data = SwtGCData.new
              data.attr_device = self.attr_display
              data.attr_foreground = OS._get_text_color(nmcd.attr_hdc)
              data.attr_background = OS._get_bk_color(nmcd.attr_hdc)
              data.attr_font = Font.win32_new(self.attr_display, h_font)
              gc = SwtGC.win32_new(nmcd.attr_hdc, data)
              x = cell_rect.attr_left
              if (!(pinfo.attr_i_sub_item).equal?(0))
                x -= grid_width
              end
              image = item.get_image(pinfo.attr_i_sub_item)
              if (!(image).nil?)
                rect = image.get_bounds
                image_rect = item.get_bounds(pinfo.attr_i_item, pinfo.attr_i_sub_item, false, true, false, false, h_dc)
                size = (@image_list).nil? ? Point.new(rect.attr_width, rect.attr_height) : @image_list.get_image_size
                y = image_rect.attr_top
                if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
                  y = y + Math.max(0, (image_rect.attr_bottom - image_rect.attr_top - size.attr_y) / 2)
                end
                gc.draw_image(image, rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height, x, y, size.attr_x, size.attr_y)
                x += size.attr_x + INSET + ((pinfo.attr_i_sub_item).equal?(0) ? -2 : 4)
              else
                x += INSET + 2
              end
              string = item.get_text(pinfo.attr_i_sub_item)
              if (!(string).nil?)
                flags = OS::DT_NOPREFIX | OS::DT_SINGLELINE | OS::DT_VCENTER
                column = !(@columns).nil? ? @columns[pinfo.attr_i_sub_item] : nil
                if (!(column).nil?)
                  if (!((column.attr_style & SWT::CENTER)).equal?(0))
                    flags |= OS::DT_CENTER
                  end
                  if (!((column.attr_style & SWT::RIGHT)).equal?(0))
                    flags |= OS::DT_RIGHT
                  end
                end
                buffer = TCHAR.new(get_code_page, string, false)
                text_rect = RECT.new
                OS._set_rect(text_rect, x, cell_rect.attr_top, cell_rect.attr_right, cell_rect.attr_bottom)
                OS._draw_text(nmcd.attr_hdc, buffer, buffer.length, text_rect, flags)
              end
              gc.dispose
              OS._restore_dc(nmcd.attr_hdc, n_saved_dc)
            end
            if (hooks(SWT::PaintItem))
              item_rect = item.get_bounds(pinfo.attr_i_item, pinfo.attr_i_sub_item, true, true, false, false, h_dc)
              send_paint_item_event(item, nmcd, pinfo.attr_i_sub_item, item_rect)
            end
            OS._select_object(h_dc, old_font)
            OS._release_dc(self.attr_handle, h_dc)
          end
        end
      end
      return nil
    end
    
    private
    alias_method :initialize__table, :initialize
  end
  
end
