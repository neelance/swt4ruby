require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module TreeImports
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
  
  # Instances of this class provide a selectable user interface object
  # that displays a hierarchy of items and issues notification when an
  # item in the hierarchy is selected.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>TreeItem</code>.
  # </p><p>
  # Style <code>VIRTUAL</code> is used to create a <code>Tree</code> whose
  # <code>TreeItem</code>s are to be populated by the client on an on-demand basis
  # instead of up-front.  This can provide significant performance improvements for
  # trees that are very large or for which <code>TreeItem</code> population is
  # expensive (for example, retrieving values from an external source).
  # </p><p>
  # Here is an example of using a <code>Tree</code> with style <code>VIRTUAL</code>:
  # <code><pre>
  # final Tree tree = new Tree(parent, SWT.VIRTUAL | SWT.BORDER);
  # tree.setItemCount(20);
  # tree.addListener(SWT.SetData, new Listener() {
  # public void handleEvent(Event event) {
  # TreeItem item = (TreeItem)event.item;
  # TreeItem parentItem = item.getParentItem();
  # String text = null;
  # if (parentItem == null) {
  # text = "node " + tree.indexOf(item);
  # } else {
  # text = parentItem.getText() + " - " + parentItem.indexOf(item);
  # }
  # item.setText(text);
  # System.out.println(text);
  # item.setItemCount(10);
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
  # <dd>SINGLE, MULTI, CHECK, FULL_SELECTION, VIRTUAL, NO_SCROLL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection, DefaultSelection, Collapse, Expand, SetData, MeasureItem, EraseItem, PaintItem</dd>
  # </dl>
  # </p><p>
  # Note: Only one of the styles SINGLE and MULTI may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tree">Tree, TreeItem, TreeColumn snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Tree < TreeImports.const_get :Composite
    include_class_members TreeImports
    
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
    attr_accessor :hwnd_parent
    alias_method :attr_hwnd_parent, :hwnd_parent
    undef_method :hwnd_parent
    alias_method :attr_hwnd_parent=, :hwnd_parent=
    undef_method :hwnd_parent=
    
    attr_accessor :hwnd_header
    alias_method :attr_hwnd_header, :hwnd_header
    undef_method :hwnd_header
    alias_method :attr_hwnd_header=, :hwnd_header=
    undef_method :hwnd_header=
    
    attr_accessor :h_anchor
    alias_method :attr_h_anchor, :h_anchor
    undef_method :h_anchor
    alias_method :attr_h_anchor=, :h_anchor=
    undef_method :h_anchor=
    
    attr_accessor :h_insert
    alias_method :attr_h_insert, :h_insert
    undef_method :h_insert
    alias_method :attr_h_insert=, :h_insert=
    undef_method :h_insert=
    
    attr_accessor :h_select
    alias_method :attr_h_select, :h_select
    undef_method :h_select
    alias_method :attr_h_select=, :h_select=
    undef_method :h_select=
    
    attr_accessor :last_id
    alias_method :attr_last_id, :last_id
    undef_method :last_id
    alias_method :attr_last_id=, :last_id=
    undef_method :last_id=
    
    # long
    attr_accessor :h_first_index_of
    alias_method :attr_h_first_index_of, :h_first_index_of
    undef_method :h_first_index_of
    alias_method :attr_h_first_index_of=, :h_first_index_of=
    undef_method :h_first_index_of=
    
    attr_accessor :h_last_index_of
    alias_method :attr_h_last_index_of, :h_last_index_of
    undef_method :h_last_index_of
    alias_method :attr_h_last_index_of=, :h_last_index_of=
    undef_method :h_last_index_of=
    
    attr_accessor :last_index_of
    alias_method :attr_last_index_of, :last_index_of
    undef_method :last_index_of
    alias_method :attr_last_index_of=, :last_index_of=
    undef_method :last_index_of=
    
    attr_accessor :item_count
    alias_method :attr_item_count, :item_count
    undef_method :item_count
    alias_method :attr_item_count=, :item_count=
    undef_method :item_count=
    
    attr_accessor :sort_direction
    alias_method :attr_sort_direction, :sort_direction
    undef_method :sort_direction
    alias_method :attr_sort_direction=, :sort_direction=
    undef_method :sort_direction=
    
    attr_accessor :drag_started
    alias_method :attr_drag_started, :drag_started
    undef_method :drag_started
    alias_method :attr_drag_started=, :drag_started=
    undef_method :drag_started=
    
    attr_accessor :gesture_completed
    alias_method :attr_gesture_completed, :gesture_completed
    undef_method :gesture_completed
    alias_method :attr_gesture_completed=, :gesture_completed=
    undef_method :gesture_completed=
    
    attr_accessor :insert_after
    alias_method :attr_insert_after, :insert_after
    undef_method :insert_after
    alias_method :attr_insert_after=, :insert_after=
    undef_method :insert_after=
    
    attr_accessor :shrink
    alias_method :attr_shrink, :shrink
    undef_method :shrink
    alias_method :attr_shrink=, :shrink=
    undef_method :shrink=
    
    attr_accessor :ignore_shrink
    alias_method :attr_ignore_shrink, :ignore_shrink
    undef_method :ignore_shrink
    alias_method :attr_ignore_shrink=, :ignore_shrink=
    undef_method :ignore_shrink=
    
    attr_accessor :ignore_select
    alias_method :attr_ignore_select, :ignore_select
    undef_method :ignore_select
    alias_method :attr_ignore_select=, :ignore_select=
    undef_method :ignore_select=
    
    attr_accessor :ignore_expand
    alias_method :attr_ignore_expand, :ignore_expand
    undef_method :ignore_expand
    alias_method :attr_ignore_expand=, :ignore_expand=
    undef_method :ignore_expand=
    
    attr_accessor :ignore_deselect
    alias_method :attr_ignore_deselect, :ignore_deselect
    undef_method :ignore_deselect
    alias_method :attr_ignore_deselect=, :ignore_deselect=
    undef_method :ignore_deselect=
    
    attr_accessor :ignore_resize
    alias_method :attr_ignore_resize, :ignore_resize
    undef_method :ignore_resize
    alias_method :attr_ignore_resize=, :ignore_resize=
    undef_method :ignore_resize=
    
    attr_accessor :lock_selection
    alias_method :attr_lock_selection, :lock_selection
    undef_method :lock_selection
    alias_method :attr_lock_selection=, :lock_selection=
    undef_method :lock_selection=
    
    attr_accessor :old_selected
    alias_method :attr_old_selected, :old_selected
    undef_method :old_selected
    alias_method :attr_old_selected=, :old_selected=
    undef_method :old_selected=
    
    attr_accessor :new_selected
    alias_method :attr_new_selected, :new_selected
    undef_method :new_selected
    alias_method :attr_new_selected=, :new_selected=
    undef_method :new_selected=
    
    attr_accessor :ignore_column_move
    alias_method :attr_ignore_column_move, :ignore_column_move
    undef_method :ignore_column_move
    alias_method :attr_ignore_column_move=, :ignore_column_move=
    undef_method :ignore_column_move=
    
    attr_accessor :lines_visible
    alias_method :attr_lines_visible, :lines_visible
    undef_method :lines_visible
    alias_method :attr_lines_visible=, :lines_visible=
    undef_method :lines_visible=
    
    attr_accessor :custom_draw
    alias_method :attr_custom_draw, :custom_draw
    undef_method :custom_draw
    alias_method :attr_custom_draw=, :custom_draw=
    undef_method :custom_draw=
    
    attr_accessor :print_client
    alias_method :attr_print_client, :print_client
    undef_method :print_client
    alias_method :attr_print_client=, :print_client=
    undef_method :print_client=
    
    attr_accessor :painted
    alias_method :attr_painted, :painted
    undef_method :painted
    alias_method :attr_painted=, :painted=
    undef_method :painted=
    
    attr_accessor :ignore_item_height
    alias_method :attr_ignore_item_height, :ignore_item_height
    undef_method :ignore_item_height
    alias_method :attr_ignore_item_height=, :ignore_item_height=
    undef_method :ignore_item_height=
    
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
    
    attr_accessor :ignore_full_selection
    alias_method :attr_ignore_full_selection, :ignore_full_selection
    undef_method :ignore_full_selection
    alias_method :attr_ignore_full_selection=, :ignore_full_selection=
    undef_method :ignore_full_selection=
    
    attr_accessor :explorer_theme
    alias_method :attr_explorer_theme, :explorer_theme
    undef_method :explorer_theme
    alias_method :attr_explorer_theme=, :explorer_theme=
    undef_method :explorer_theme=
    
    attr_accessor :scroll_width
    alias_method :attr_scroll_width, :scroll_width
    undef_method :scroll_width
    alias_method :attr_scroll_width=, :scroll_width=
    undef_method :scroll_width=
    
    attr_accessor :selection_foreground
    alias_method :attr_selection_foreground, :selection_foreground
    undef_method :selection_foreground
    alias_method :attr_selection_foreground=, :selection_foreground=
    undef_method :selection_foreground=
    
    # long
    attr_accessor :header_tool_tip_handle
    alias_method :attr_header_tool_tip_handle, :header_tool_tip_handle
    undef_method :header_tool_tip_handle
    alias_method :attr_header_tool_tip_handle=, :header_tool_tip_handle=
    undef_method :header_tool_tip_handle=
    
    attr_accessor :item_tool_tip_handle
    alias_method :attr_item_tool_tip_handle, :item_tool_tip_handle
    undef_method :item_tool_tip_handle
    alias_method :attr_item_tool_tip_handle=, :item_tool_tip_handle=
    undef_method :item_tool_tip_handle=
    
    class_module.module_eval {
      const_set_lazy(:INSET) { 3 }
      const_attr_reader  :INSET
      
      const_set_lazy(:GRID_WIDTH) { 1 }
      const_attr_reader  :GRID_WIDTH
      
      const_set_lazy(:SORT_WIDTH) { 10 }
      const_attr_reader  :SORT_WIDTH
      
      const_set_lazy(:HEADER_MARGIN) { 12 }
      const_attr_reader  :HEADER_MARGIN
      
      const_set_lazy(:HEADER_EXTRA) { 3 }
      const_attr_reader  :HEADER_EXTRA
      
      const_set_lazy(:INCREMENT) { 5 }
      const_attr_reader  :INCREMENT
      
      const_set_lazy(:EXPLORER_EXTRA) { 2 }
      const_attr_reader  :EXPLORER_EXTRA
      
      const_set_lazy(:DRAG_IMAGE_SIZE) { 301 }
      const_attr_reader  :DRAG_IMAGE_SIZE
      
      const_set_lazy(:EXPLORER_THEME) { true }
      const_attr_reader  :EXPLORER_THEME
      
      const_set_lazy(:TreeClass) { TCHAR.new(0, OS::WC_TREEVIEW, true) }
      const_attr_reader  :TreeClass
      
      const_set_lazy(:HeaderClass) { TCHAR.new(0, OS::WC_HEADER, true) }
      const_attr_reader  :HeaderClass
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, TreeClass, lp_wnd_class)
        const_set :TreeProc, lp_wnd_class.attr_lpfn_wnd_proc
        OS._get_class_info(0, HeaderClass, lp_wnd_class)
        const_set :HeaderProc, lp_wnd_class.attr_lpfn_wnd_proc
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
    # @see SWT#VIRTUAL
    # @see SWT#NO_SCROLL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @items = nil
      @columns = nil
      @column_count = 0
      @image_list = nil
      @header_image_list = nil
      @current_item = nil
      @sort_column = nil
      @focus_rect = nil
      @hwnd_parent = 0
      @hwnd_header = 0
      @h_anchor = 0
      @h_insert = 0
      @h_select = 0
      @last_id = 0
      @h_first_index_of = 0
      @h_last_index_of = 0
      @last_index_of = 0
      @item_count = 0
      @sort_direction = 0
      @drag_started = false
      @gesture_completed = false
      @insert_after = false
      @shrink = false
      @ignore_shrink = false
      @ignore_select = false
      @ignore_expand = false
      @ignore_deselect = false
      @ignore_resize = false
      @lock_selection = false
      @old_selected = false
      @new_selected = false
      @ignore_column_move = false
      @lines_visible = false
      @custom_draw = false
      @print_client = false
      @painted = false
      @ignore_item_height = false
      @ignore_custom_draw = false
      @ignore_draw_foreground = false
      @ignore_draw_background = false
      @ignore_draw_focus = false
      @ignore_draw_selection = false
      @ignore_draw_hot = false
      @ignore_full_selection = false
      @explorer_theme = false
      @scroll_width = 0
      @selection_foreground = 0
      @header_tool_tip_handle = 0
      @item_tool_tip_handle = 0
      super(parent, check_style(style))
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
        # Note: Windows only supports TVS_NOSCROLL and TVS_NOHSCROLL.
        if (!((style & SWT::H_SCROLL)).equal?(0) && ((style & SWT::V_SCROLL)).equal?(0))
          style |= SWT::V_SCROLL
        end
        return check_bits(style, SWT::SINGLE, SWT::MULTI, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int, Listener] }
    def __add_listener(event_type, listener)
      super(event_type, listener)
      case (event_type)
      when SWT::DragDetect
        if (!((self.attr_state & DRAG_DETECT)).equal?(0))
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          bits &= ~OS::TVS_DISABLEDRAGDROP
          OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
        end
      when SWT::MeasureItem, SWT::EraseItem, SWT::PaintItem
        @custom_draw = true
        self.attr_style |= SWT::DOUBLE_BUFFERED
        if (is_custom_tool_tip)
          create_item_tool_tips
        end
        OS._send_message(self.attr_handle, OS::TVM_SETSCROLLTIME, 0, 0)
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if ((event_type).equal?(SWT::MeasureItem))
          # This code is intentionally commented.
          # 
          # if (explorerTheme) {
          # int bits1 = (int)/*64*/OS.SendMessage (handle, OS.TVM_GETEXTENDEDSTYLE, 0, 0);
          # bits1 &= ~OS.TVS_EX_AUTOHSCROLL;
          # OS.SendMessage (handle, OS.TVM_SETEXTENDEDSTYLE, 0, bits1);
          # }
          bits |= OS::TVS_NOHSCROLL
        end
        # Feature in Windows.  When the tree has the style
        # TVS_FULLROWSELECT, the background color for the
        # entire row is filled when an item is painted,
        # drawing on top of any custom drawing.  The fix
        # is to clear TVS_FULLROWSELECT.
        if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          if (!(event_type).equal?(SWT::MeasureItem))
            if (!@explorer_theme)
              bits &= ~OS::TVS_FULLROWSELECT
            end
          end
        end
        if (!(bits).equal?(OS._get_window_long(self.attr_handle, OS::GWL_STYLE)))
          OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
          OS._invalidate_rect(self.attr_handle, nil, true)
          # Bug in Windows.  When TVS_NOHSCROLL is set after items
          # have been inserted into the tree, Windows shows the
          # scroll bar.  The fix is to check for this case and
          # explicitly hide the scroll bar.
          # 
          # 64
          count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETCOUNT, 0, 0))
          if (!(count).equal?(0) && !((bits & OS::TVS_NOHSCROLL)).equal?(0))
            if (!OS::IsWinCE)
              OS._show_scroll_bar(self.attr_handle, OS::SB_HORZ, false)
            end
          end
        end
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def __get_item(h_item)
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
      tv_item.attr_h_item = h_item
      if (!(OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)).equal?(0))
        # 64
        return __get_item(tv_item.attr_h_item, RJava.cast_to_int(tv_item.attr_l_param))
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def __get_item(h_item, id)
      if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
        return @items[id]
      end
      return !(id).equal?(-1) ? @items[id] : TreeItem.new(self, SWT::NONE, -1, -1, h_item)
    end
    
    typesig { [::Java::Int] }
    def __set_background_pixel(new_pixel)
      # 64
      old_pixel = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETBKCOLOR, 0, 0))
      if (!(old_pixel).equal?(new_pixel))
        # Bug in Windows.  When TVM_SETBKCOLOR is used more
        # than once to set the background color of a tree,
        # the background color of the lines and the plus/minus
        # does not change to the new color.  The fix is to set
        # the background color to the default before setting
        # the new color.
        if (!(old_pixel).equal?(-1))
          OS._send_message(self.attr_handle, OS::TVM_SETBKCOLOR, 0, -1)
        end
        # Set the background color
        OS._send_message(self.attr_handle, OS::TVM_SETBKCOLOR, 0, new_pixel)
        # Feature in Windows.  When TVM_SETBKCOLOR is used to
        # set the background color of a tree, the plus/minus
        # animation draws badly.  The fix is to clear the effect.
        if (@explorer_theme)
          # 64
          bits2 = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETEXTENDEDSTYLE, 0, 0))
          if ((new_pixel).equal?(-1) && (find_image_control).nil?)
            bits2 |= OS::TVS_EX_FADEINOUTEXPANDOS
          else
            bits2 &= ~OS::TVS_EX_FADEINOUTEXPANDOS
          end
          OS._send_message(self.attr_handle, OS::TVM_SETEXTENDEDSTYLE, 0, bits2)
        end
        # Set the checkbox image list
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          set_checkbox_image_list
        end
      end
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
    
    typesig { [TreeListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an item in the receiver is expanded or collapsed
    # by sending it one of the messages defined in the <code>TreeListener</code>
    # interface.
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
    # @see TreeListener
    # @see #removeTreeListener
    def add_tree_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Expand, typed_listener)
      add_listener(SWT::Collapse, typed_listener)
    end
    
    typesig { [] }
    # long
    def border_handle
      return !(@hwnd_parent).equal?(0) ? @hwnd_parent : self.attr_handle
    end
    
    typesig { [NMTVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _cdds_itempostpaint(nmcd, w_param, l_param)
      if (@ignore_custom_draw)
        return nil
      end
      if ((nmcd.attr_left).equal?(nmcd.attr_right))
        return LRESULT.new(OS::CDRF_DODEFAULT)
      end
      # long
      h_dc = nmcd.attr_hdc
      OS._restore_dc(h_dc, -1)
      item = get_item(nmcd)
      # Feature in Windows.  When a new tree item is inserted
      # using TVM_INSERTITEM and the tree is using custom draw,
      # a NM_CUSTOMDRAW is sent before TVM_INSERTITEM returns
      # and before the item is added to the items array.  The
      # fix is to check for null.
      # 
      # NOTE: This only happens on XP with the version 6.00 of
      # COMCTL32.DLL,
      if ((item).nil?)
        return nil
      end
      # Feature in Windows.  Under certain circumstances, Windows
      # sends CDDS_ITEMPOSTPAINT for an empty rectangle.  This is
      # not a problem providing that graphics do not occur outside
      # the rectangle.  The fix is to test for the rectangle and
      # draw nothing.
      # 
      # NOTE:  This seems to happen when both I_IMAGECALLBACK
      # and LPSTR_TEXTCALLBACK are used at the same time with
      # TVM_SETITEM.
      if (nmcd.attr_left >= nmcd.attr_right || nmcd.attr_top >= nmcd.attr_bottom)
        return nil
      end
      if (!OS._is_window_visible(self.attr_handle))
        return nil
      end
      if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0) || !(find_image_control).nil? || @ignore_draw_selection || @explorer_theme)
        OS._set_bk_mode(h_dc, OS::TRANSPARENT)
      end
      selected = is_item_selected(nmcd)
      hot = @explorer_theme && !((nmcd.attr_u_item_state & OS::CDIS_HOT)).equal?(0)
      if (OS._is_window_enabled(self.attr_handle))
        if (@explorer_theme)
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          if (!((bits & OS::TVS_TRACKSELECT)).equal?(0))
            if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0) && (selected || hot))
              OS._set_text_color(h_dc, OS._get_sys_color(OS::COLOR_WINDOWTEXT))
            else
              OS._set_text_color(h_dc, get_foreground_pixel)
            end
          end
        end
      end
      order = nil
      client_rect = RECT.new
      OS._get_client_rect(scrolled_handle, client_rect)
      if (!(@hwnd_header).equal?(0))
        OS._map_window_points(@hwnd_parent, self.attr_handle, client_rect, 2)
        if (!(@column_count).equal?(0))
          order = Array.typed(::Java::Int).new(@column_count) { 0 }
          OS._send_message(@hwnd_header, OS::HDM_GETORDERARRAY, @column_count, order)
        end
      end
      sort_index = -1
      clr_sort_bk = -1
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        if (!(@sort_column).nil? && !(@sort_direction).equal?(SWT::NONE))
          if ((find_image_control).nil?)
            sort_index = index_of(@sort_column)
            clr_sort_bk = get_sort_column_pixel
          end
        end
      end
      x = 0
      size = nil
      i = 0
      while i < Math.max(1, @column_count)
        index = (order).nil? ? i : order[i]
        width = nmcd.attr_right - nmcd.attr_left
        if (@column_count > 0 && !(@hwnd_header).equal?(0))
          hd_item = HDITEM.new
          hd_item.attr_mask = OS::HDI_WIDTH
          OS._send_message(@hwnd_header, OS::HDM_GETITEM, index, hd_item)
          width = hd_item.attr_cxy
        end
        if ((i).equal?(0))
          if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
            clear = !@explorer_theme && !@ignore_draw_selection && (find_image_control).nil?
            if (clear || (selected && !@ignore_draw_selection) || (hot && !@ignore_draw_hot))
              draw = true
              p_clip_rect = RECT.new
              OS._set_rect(p_clip_rect, width, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
              if (@explorer_theme)
                if (hooks(SWT::EraseItem))
                  item_rect = item.get_bounds(index, true, true, false, false, true, h_dc)
                  item_rect.attr_left -= EXPLORER_EXTRA
                  item_rect.attr_right += EXPLORER_EXTRA + 1
                  p_clip_rect.attr_left = item_rect.attr_left
                  p_clip_rect.attr_right = item_rect.attr_right
                  if (@column_count > 0 && !(@hwnd_header).equal?(0))
                    hd_item = HDITEM.new
                    hd_item.attr_mask = OS::HDI_WIDTH
                    OS._send_message(@hwnd_header, OS::HDM_GETITEM, index, hd_item)
                    p_clip_rect.attr_right = Math.min(p_clip_rect.attr_right, nmcd.attr_left + hd_item.attr_cxy)
                  end
                end
                p_rect = RECT.new
                OS._set_rect(p_rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
                if (@column_count > 0 && !(@hwnd_header).equal?(0))
                  total_width = 0
                  hd_item = HDITEM.new
                  hd_item.attr_mask = OS::HDI_WIDTH
                  j = 0
                  while j < @column_count
                    OS._send_message(@hwnd_header, OS::HDM_GETITEM, j, hd_item)
                    total_width += hd_item.attr_cxy
                    j += 1
                  end
                  if (total_width > client_rect.attr_right - client_rect.attr_left)
                    p_rect.attr_left = 0
                    p_rect.attr_right = total_width
                  else
                    p_rect.attr_left = client_rect.attr_left
                    p_rect.attr_right = client_rect.attr_right
                  end
                end
                draw = false
                # long
                h_theme = OS._open_theme_data(self.attr_handle, Display::TREEVIEW)
                i_state_id = selected ? OS::TREIS_SELECTED : OS::TREIS_HOT
                if (!(OS._get_focus).equal?(self.attr_handle) && selected && !hot)
                  i_state_id = OS::TREIS_SELECTEDNOTFOCUS
                end
                OS._draw_theme_background(h_theme, h_dc, OS::TVP_TREEITEM, i_state_id, p_rect, p_clip_rect)
                OS._close_theme_data(h_theme)
              end
              if (draw)
                fill_background(h_dc, OS._get_bk_color(h_dc), p_clip_rect)
              end
            end
          end
        end
        if (x + width > client_rect.attr_left)
          rect = RECT.new
          background_rect = nil
          draw_item = true
          draw_text = true
          draw_image = true
          draw_background = false
          if ((i).equal?(0))
            draw_item = draw_image = draw_text = false
            if (!(find_image_control).nil?)
              if (@explorer_theme)
                if (OS._is_window_enabled(self.attr_handle) && !hooks(SWT::EraseItem))
                  image = nil
                  if ((index).equal?(0))
                    image = item.attr_image
                  else
                    images = item.attr_images
                    if (!(images).nil?)
                      image = images[index]
                    end
                  end
                  if (!(image).nil?)
                    bounds = image.get_bounds
                    if ((size).nil?)
                      size = get_image_size
                    end
                    if (!@ignore_draw_foreground)
                      data = SwtGCData.new
                      data.attr_device = self.attr_display
                      gc = SwtGC.win32_new(h_dc, data)
                      icon_rect = item.get_bounds(index, false, true, false, false, true, h_dc)
                      gc.set_clipping(icon_rect.attr_left, icon_rect.attr_top, icon_rect.attr_right - icon_rect.attr_left, icon_rect.attr_bottom - icon_rect.attr_top)
                      gc.draw_image(image, 0, 0, bounds.attr_width, bounds.attr_height, icon_rect.attr_left, icon_rect.attr_top, size.attr_x, size.attr_y)
                      OS._select_clip_rgn(h_dc, 0)
                      gc.dispose
                    end
                  end
                end
              else
                draw_item = draw_text = draw_background = true
                rect = item.get_bounds(index, true, false, false, false, true, h_dc)
                if (@lines_visible)
                  rect.attr_right += 1
                  rect.attr_bottom += 1
                end
              end
            end
            if (selected && !@ignore_draw_selection && !@ignore_draw_background)
              if (!@explorer_theme)
                fill_background(h_dc, OS._get_bk_color(h_dc), rect)
              end
              draw_background = false
            end
            background_rect = rect
            if (hooks(SWT::EraseItem))
              draw_item = draw_text = draw_image = true
              rect = item.get_bounds(index, true, true, false, false, true, h_dc)
              if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                background_rect = rect
              else
                background_rect = item.get_bounds(index, true, false, false, false, true, h_dc)
              end
            end
          else
            @selection_foreground = -1
            @ignore_draw_foreground = @ignore_draw_background = @ignore_draw_selection = @ignore_draw_focus = @ignore_draw_hot = false
            OS._set_rect(rect, x, nmcd.attr_top, x + width, nmcd.attr_bottom)
            background_rect = rect
          end
          clr_text = -1
          clr_text_bk = -1
          # long
          h_font = item.font_handle(index)
          if (!(@selection_foreground).equal?(-1))
            clr_text = @selection_foreground
          end
          if (OS._is_window_enabled(self.attr_handle))
            draw_foreground = false
            if (selected)
              if (!(i).equal?(0) && ((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                OS._set_text_color(h_dc, get_foreground_pixel)
                OS._set_bk_color(h_dc, get_background_pixel)
                draw_foreground = draw_background = true
              end
            else
              draw_foreground = draw_background = true
            end
            if (draw_foreground)
              clr_text = !(item.attr_cell_foreground).nil? ? item.attr_cell_foreground[index] : -1
              if ((clr_text).equal?(-1))
                clr_text = item.attr_foreground
              end
            end
            if (draw_background)
              clr_text_bk = !(item.attr_cell_background).nil? ? item.attr_cell_background[index] : -1
              if ((clr_text_bk).equal?(-1))
                clr_text_bk = item.attr_background
              end
              if ((clr_text_bk).equal?(-1) && (index).equal?(sort_index))
                clr_text_bk = clr_sort_bk
              end
            end
          else
            if ((clr_text_bk).equal?(-1) && (index).equal?(sort_index))
              draw_background = true
              clr_text_bk = clr_sort_bk
            end
          end
          if (@explorer_theme)
            if (selected || !((nmcd.attr_u_item_state & OS::CDIS_HOT)).equal?(0))
              if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                draw_background = false
              else
                if ((i).equal?(0))
                  draw_background = false
                  if (!hooks(SWT::EraseItem))
                    draw_text = false
                  end
                end
              end
            end
          end
          if (draw_item)
            if (!(i).equal?(0))
              if (hooks(SWT::MeasureItem))
                send_measure_item_event(item, index, h_dc)
                if (is_disposed || item.is_disposed)
                  break
                end
              end
              if (hooks(SWT::EraseItem))
                cell_rect = item.get_bounds(index, true, true, true, true, true, h_dc)
                n_saved_dc = OS._save_dc(h_dc)
                data = SwtGCData.new
                data.attr_device = self.attr_display
                data.attr_foreground = OS._get_text_color(h_dc)
                data.attr_background = OS._get_bk_color(h_dc)
                if (!selected || ((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                  if (!(clr_text).equal?(-1))
                    data.attr_foreground = clr_text
                  end
                  if (!(clr_text_bk).equal?(-1))
                    data.attr_background = clr_text_bk
                  end
                end
                data.attr_font = item.get_font(index)
                # 64
                data.attr_ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
                gc = SwtGC.win32_new(h_dc, data)
                event = Event.new
                event.attr_item = item
                event.attr_index = index
                event.attr_gc = gc
                event.attr_detail |= SWT::FOREGROUND
                if (!(clr_text_bk).equal?(-1))
                  event.attr_detail |= SWT::BACKGROUND
                end
                if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                  if (hot)
                    event.attr_detail |= SWT::HOT
                  end
                  if (selected)
                    event.attr_detail |= SWT::SELECTED
                  end
                  if (!@explorer_theme)
                    # if ((nmcd.uItemState & OS.CDIS_FOCUS) != 0) {
                    if ((OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)).equal?(nmcd.attr_dw_item_spec))
                      if ((self.attr_handle).equal?(OS._get_focus))
                        # 64
                        ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
                        if (((ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
                          event.attr_detail |= SWT::FOCUSED
                        end
                      end
                    end
                  end
                end
                event.attr_x = cell_rect.attr_left
                event.attr_y = cell_rect.attr_top
                event.attr_width = cell_rect.attr_right - cell_rect.attr_left
                event.attr_height = cell_rect.attr_bottom - cell_rect.attr_top
                gc.set_clipping(event.attr_x, event.attr_y, event.attr_width, event.attr_height)
                send_event(SWT::EraseItem, event)
                event.attr_gc = nil
                new_text_clr = data.attr_foreground
                gc.dispose
                OS._restore_dc(h_dc, n_saved_dc)
                if (is_disposed || item.is_disposed)
                  break
                end
                if (event.attr_doit)
                  @ignore_draw_foreground = ((event.attr_detail & SWT::FOREGROUND)).equal?(0)
                  @ignore_draw_background = ((event.attr_detail & SWT::BACKGROUND)).equal?(0)
                  if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                    @ignore_draw_selection = ((event.attr_detail & SWT::SELECTED)).equal?(0)
                    @ignore_draw_focus = ((event.attr_detail & SWT::FOCUSED)).equal?(0)
                    @ignore_draw_hot = ((event.attr_detail & SWT::HOT)).equal?(0)
                  end
                else
                  @ignore_draw_foreground = @ignore_draw_background = @ignore_draw_selection = @ignore_draw_focus = @ignore_draw_hot = true
                end
                if (selected && @ignore_draw_selection)
                  @ignore_draw_hot = true
                end
                if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                  if (@ignore_draw_selection)
                    @ignore_full_selection = true
                  end
                  if (!@ignore_draw_selection || !@ignore_draw_hot)
                    if (!selected && !hot)
                      @selection_foreground = OS._get_sys_color(OS::COLOR_HIGHLIGHTTEXT)
                    else
                      if (!@explorer_theme)
                        draw_background = true
                        @ignore_draw_background = false
                        if (((self.attr_handle).equal?(OS._get_focus) || self.attr_display.get_high_contrast) && OS._is_window_enabled(self.attr_handle))
                          clr_text_bk = OS._get_sys_color(OS::COLOR_HIGHLIGHT)
                        else
                          clr_text_bk = OS._get_sys_color(OS::COLOR_3DFACE)
                        end
                        if (!@ignore_full_selection && (index).equal?(@column_count - 1))
                          selection_rect = RECT.new
                          OS._set_rect(selection_rect, background_rect.attr_left, background_rect.attr_top, nmcd.attr_right, background_rect.attr_bottom)
                          background_rect = selection_rect
                        end
                      else
                        p_rect = RECT.new
                        OS._set_rect(p_rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
                        if (@column_count > 0 && !(@hwnd_header).equal?(0))
                          total_width = 0
                          hd_item = HDITEM.new
                          hd_item.attr_mask = OS::HDI_WIDTH
                          j = 0
                          while j < @column_count
                            OS._send_message(@hwnd_header, OS::HDM_GETITEM, j, hd_item)
                            total_width += hd_item.attr_cxy
                            j += 1
                          end
                          if (total_width > client_rect.attr_right - client_rect.attr_left)
                            p_rect.attr_left = 0
                            p_rect.attr_right = total_width
                          else
                            p_rect.attr_left = client_rect.attr_left
                            p_rect.attr_right = client_rect.attr_right
                          end
                          if ((index).equal?(@column_count - 1))
                            selection_rect = RECT.new
                            OS._set_rect(selection_rect, background_rect.attr_left, background_rect.attr_top, p_rect.attr_right, background_rect.attr_bottom)
                            background_rect = selection_rect
                          end
                        end
                        # long
                        h_theme = OS._open_theme_data(self.attr_handle, Display::TREEVIEW)
                        i_state_id = selected ? OS::TREIS_SELECTED : OS::TREIS_HOT
                        if (!(OS._get_focus).equal?(self.attr_handle) && selected && !hot)
                          i_state_id = OS::TREIS_SELECTEDNOTFOCUS
                        end
                        OS._draw_theme_background(h_theme, h_dc, OS::TVP_TREEITEM, i_state_id, p_rect, background_rect)
                        OS._close_theme_data(h_theme)
                      end
                    end
                  else
                    if (selected)
                      @selection_foreground = new_text_clr
                      if (!@explorer_theme)
                        if ((clr_text_bk).equal?(-1) && OS._is_window_enabled(self.attr_handle))
                          control = find_background_control
                          if ((control).nil?)
                            control = self
                          end
                          clr_text_bk = control.get_background_pixel
                        end
                      end
                    end
                  end
                end
              end
              if (!(@selection_foreground).equal?(-1))
                clr_text = @selection_foreground
              end
            end
            if (!@ignore_draw_background)
              if (!(clr_text_bk).equal?(-1))
                if (draw_background)
                  fill_background(h_dc, clr_text_bk, background_rect)
                end
              else
                control = find_image_control
                if (!(control).nil?)
                  if ((i).equal?(0))
                    right = Math.min(rect.attr_right, width)
                    OS._set_rect(rect, rect.attr_left, rect.attr_top, right, rect.attr_bottom)
                    if (draw_background)
                      fill_image_background(h_dc, control, rect)
                    end
                  else
                    if (draw_background)
                      fill_image_background(h_dc, control, rect)
                    end
                  end
                end
              end
            end
            rect.attr_left += INSET - 1
            if (draw_image)
              image = nil
              if ((index).equal?(0))
                image = item.attr_image
              else
                images = item.attr_images
                if (!(images).nil?)
                  image = images[index]
                end
              end
              inset = !(i).equal?(0) ? INSET : 0
              offset = !(i).equal?(0) ? INSET : INSET + 2
              if (!(image).nil?)
                bounds = image.get_bounds
                if ((size).nil?)
                  size = get_image_size
                end
                if (!@ignore_draw_foreground)
                  # int y1 = rect.top + (index == 0 ? (getItemHeight () - size.y) / 2 : 0);
                  y1 = rect.attr_top
                  x1 = Math.max(rect.attr_left, rect.attr_left - inset + 1)
                  data = SwtGCData.new
                  data.attr_device = self.attr_display
                  gc = SwtGC.win32_new(h_dc, data)
                  gc.set_clipping(x1, rect.attr_top, rect.attr_right - x1, rect.attr_bottom - rect.attr_top)
                  gc.draw_image(image, 0, 0, bounds.attr_width, bounds.attr_height, x1, y1, size.attr_x, size.attr_y)
                  OS._select_clip_rgn(h_dc, 0)
                  gc.dispose
                end
                OS._set_rect(rect, rect.attr_left + size.attr_x + offset, rect.attr_top, rect.attr_right - inset, rect.attr_bottom)
              else
                if ((i).equal?(0))
                  if (!(OS._send_message(self.attr_handle, OS::TVM_GETIMAGELIST, OS::TVSIL_NORMAL, 0)).equal?(0))
                    if ((size).nil?)
                      size = get_image_size
                    end
                    rect.attr_left = Math.min(rect.attr_left + size.attr_x + offset, rect.attr_right)
                  end
                else
                  OS._set_rect(rect, rect.attr_left + offset, rect.attr_top, rect.attr_right - inset, rect.attr_bottom)
                end
              end
            end
            if (draw_text)
              # Bug in Windows.  When DrawText() is used with DT_VCENTER
              # and DT_ENDELLIPSIS, the ellipsis can draw outside of the
              # rectangle when the rectangle is empty.  The fix is avoid
              # all text drawing for empty rectangles.
              if (rect.attr_left < rect.attr_right)
                string = nil
                if ((index).equal?(0))
                  string = RJava.cast_to_string(item.attr_text)
                else
                  strings = item.attr_strings
                  if (!(strings).nil?)
                    string = RJava.cast_to_string(strings[index])
                  end
                end
                if (!(string).nil?)
                  if (!(h_font).equal?(-1))
                    h_font = OS._select_object(h_dc, h_font)
                  end
                  if (!(clr_text).equal?(-1))
                    clr_text = OS._set_text_color(h_dc, clr_text)
                  end
                  if (!(clr_text_bk).equal?(-1))
                    clr_text_bk = OS._set_bk_color(h_dc, clr_text_bk)
                  end
                  flags = OS::DT_NOPREFIX | OS::DT_SINGLELINE | OS::DT_VCENTER
                  if (!(i).equal?(0))
                    flags |= OS::DT_ENDELLIPSIS
                  end
                  column = !(@columns).nil? ? @columns[index] : nil
                  if (!(column).nil?)
                    if (!((column.attr_style & SWT::CENTER)).equal?(0))
                      flags |= OS::DT_CENTER
                    end
                    if (!((column.attr_style & SWT::RIGHT)).equal?(0))
                      flags |= OS::DT_RIGHT
                    end
                  end
                  buffer = TCHAR.new(get_code_page, string, false)
                  if (!@ignore_draw_foreground)
                    OS._draw_text(h_dc, buffer, buffer.length, rect, flags)
                  end
                  OS._draw_text(h_dc, buffer, buffer.length, rect, flags | OS::DT_CALCRECT)
                  if (!(h_font).equal?(-1))
                    h_font = OS._select_object(h_dc, h_font)
                  end
                  if (!(clr_text).equal?(-1))
                    clr_text = OS._set_text_color(h_dc, clr_text)
                  end
                  if (!(clr_text_bk).equal?(-1))
                    clr_text_bk = OS._set_bk_color(h_dc, clr_text_bk)
                  end
                end
              end
            end
          end
          if (!(@selection_foreground).equal?(-1))
            clr_text = @selection_foreground
          end
          if (hooks(SWT::PaintItem))
            item_rect = item.get_bounds(index, true, true, false, false, false, h_dc)
            n_saved_dc = OS._save_dc(h_dc)
            data = SwtGCData.new
            data.attr_device = self.attr_display
            data.attr_font = item.get_font(index)
            data.attr_foreground = OS._get_text_color(h_dc)
            data.attr_background = OS._get_bk_color(h_dc)
            if (selected && !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
              if (!(@selection_foreground).equal?(-1))
                data.attr_foreground = @selection_foreground
              end
            else
              if (!(clr_text).equal?(-1))
                data.attr_foreground = clr_text
              end
              if (!(clr_text_bk).equal?(-1))
                data.attr_background = clr_text_bk
              end
            end
            # 64
            data.attr_ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
            gc = SwtGC.win32_new(h_dc, data)
            event = Event.new
            event.attr_item = item
            event.attr_index = index
            event.attr_gc = gc
            event.attr_detail |= SWT::FOREGROUND
            if (!(clr_text_bk).equal?(-1))
              event.attr_detail |= SWT::BACKGROUND
            end
            if (hot)
              event.attr_detail |= SWT::HOT
            end
            # nmcd.iSubItem == 0
            if (selected && ((i).equal?(0) || !((self.attr_style & SWT::FULL_SELECTION)).equal?(0)))
              event.attr_detail |= SWT::SELECTED
            end
            if (!@explorer_theme)
              # if ((nmcd.uItemState & OS.CDIS_FOCUS) != 0) {
              if ((OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)).equal?(nmcd.attr_dw_item_spec))
                # nmcd.iSubItem == 0
                if ((i).equal?(0) || !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                  if ((self.attr_handle).equal?(OS._get_focus))
                    # 64
                    ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
                    if (((ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
                      event.attr_detail |= SWT::FOCUSED
                    end
                  end
                end
              end
            end
            event.attr_x = item_rect.attr_left
            event.attr_y = item_rect.attr_top
            event.attr_width = item_rect.attr_right - item_rect.attr_left
            event.attr_height = item_rect.attr_bottom - item_rect.attr_top
            cell_rect = item.get_bounds(index, true, true, true, true, true, h_dc)
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
            if (is_disposed || item.is_disposed)
              break
            end
          end
        end
        x += width
        if (x > client_rect.attr_right)
          break
        end
        i += 1
      end
      if (@lines_visible)
        if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          if (!(@column_count).equal?(0))
            hd_item = HDITEM.new
            hd_item.attr_mask = OS::HDI_WIDTH
            OS._send_message(@hwnd_header, OS::HDM_GETITEM, 0, hd_item)
            rect = RECT.new
            OS._set_rect(rect, nmcd.attr_left + hd_item.attr_cxy, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
            OS._draw_edge(h_dc, rect, OS::BDR_SUNKENINNER, OS::BF_BOTTOM)
          end
        end
        rect = RECT.new
        OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
        OS._draw_edge(h_dc, rect, OS::BDR_SUNKENINNER, OS::BF_BOTTOM)
      end
      if (!@ignore_draw_focus && !(@focus_rect).nil?)
        OS._draw_focus_rect(h_dc, @focus_rect)
        @focus_rect = nil
      else
        if (!@explorer_theme)
          if ((self.attr_handle).equal?(OS._get_focus))
            # 64
            ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
            if (((ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
              # long
              h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
              if ((h_item).equal?(item.attr_handle))
                if (!@ignore_draw_focus && !(find_image_control).nil?)
                  if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                    focus_rect = RECT.new
                    OS._set_rect(focus_rect, 0, nmcd.attr_top, client_rect.attr_right + 1, nmcd.attr_bottom)
                    OS._draw_focus_rect(h_dc, focus_rect)
                  else
                    # 64
                    index = RJava.cast_to_int(OS._send_message(@hwnd_header, OS::HDM_ORDERTOINDEX, 0, 0))
                    focus_rect = item.get_bounds(index, true, false, false, false, false, h_dc)
                    clip_rect = item.get_bounds(index, true, false, false, false, true, h_dc)
                    OS._intersect_clip_rect(h_dc, clip_rect.attr_left, clip_rect.attr_top, clip_rect.attr_right, clip_rect.attr_bottom)
                    OS._draw_focus_rect(h_dc, focus_rect)
                    OS._select_clip_rgn(h_dc, 0)
                  end
                end
              end
            end
          end
        end
      end
      return LRESULT.new(OS::CDRF_DODEFAULT)
    end
    
    typesig { [NMTVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _cdds_itemprepaint(nmcd, w_param, l_param)
      # Even when custom draw is being ignored, the font needs
      # to be selected into the HDC so that the item bounds are
      # measured correctly.
      item = get_item(nmcd)
      # Feature in Windows.  When a new tree item is inserted
      # using TVM_INSERTITEM and the tree is using custom draw,
      # a NM_CUSTOMDRAW is sent before TVM_INSERTITEM returns
      # and before the item is added to the items array.  The
      # fix is to check for null.
      # 
      # NOTE: This only happens on XP with the version 6.00 of
      # COMCTL32.DLL,
      if ((item).nil?)
        return nil
      end
      # long
      h_dc = nmcd.attr_hdc
      # 64
      index = !(@hwnd_header).equal?(0) ? RJava.cast_to_int(OS._send_message(@hwnd_header, OS::HDM_ORDERTOINDEX, 0, 0)) : 0
      # long
      h_font = item.font_handle(index)
      if (!(h_font).equal?(-1))
        OS._select_object(h_dc, h_font)
      end
      if (@ignore_custom_draw || (nmcd.attr_left).equal?(nmcd.attr_right))
        return LRESULT.new((h_font).equal?(-1) ? OS::CDRF_DODEFAULT : OS::CDRF_NEWFONT)
      end
      clip_rect = nil
      if (!(@column_count).equal?(0))
        clip = !@print_client
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
          clip = true
        end
        if (clip)
          clip_rect = RECT.new
          hd_item = HDITEM.new
          hd_item.attr_mask = OS::HDI_WIDTH
          OS._send_message(@hwnd_header, OS::HDM_GETITEM, index, hd_item)
          OS._set_rect(clip_rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_left + hd_item.attr_cxy, nmcd.attr_bottom)
        end
      end
      clr_text = -1
      clr_text_bk = -1
      if (OS._is_window_enabled(self.attr_handle))
        clr_text = !(item.attr_cell_foreground).nil? ? item.attr_cell_foreground[index] : -1
        if ((clr_text).equal?(-1))
          clr_text = item.attr_foreground
        end
        clr_text_bk = !(item.attr_cell_background).nil? ? item.attr_cell_background[index] : -1
        if ((clr_text_bk).equal?(-1))
          clr_text_bk = item.attr_background
        end
      end
      clr_sort_bk = -1
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        if (!(@sort_column).nil? && !(@sort_direction).equal?(SWT::NONE))
          if ((find_image_control).nil?)
            if ((index_of(@sort_column)).equal?(index))
              clr_sort_bk = get_sort_column_pixel
              if ((clr_text_bk).equal?(-1))
                clr_text_bk = clr_sort_bk
              end
            end
          end
        end
      end
      selected = is_item_selected(nmcd)
      hot = @explorer_theme && !((nmcd.attr_u_item_state & OS::CDIS_HOT)).equal?(0)
      focused = @explorer_theme && !((nmcd.attr_u_item_state & OS::CDIS_FOCUS)).equal?(0)
      if (OS._is_window_visible(self.attr_handle) && nmcd.attr_left < nmcd.attr_right && nmcd.attr_top < nmcd.attr_bottom)
        if (!(h_font).equal?(-1))
          OS._select_object(h_dc, h_font)
        end
        if (@lines_visible)
          rect = RECT.new
          OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
          OS._draw_edge(h_dc, rect, OS::BDR_SUNKENINNER, OS::BF_BOTTOM)
        end
        # TODO - BUG - measure and erase sent when first column is clipped
        measure_event = nil
        if (hooks(SWT::MeasureItem))
          measure_event = send_measure_item_event(item, index, h_dc)
          if (is_disposed || item.is_disposed)
            return nil
          end
        end
        @selection_foreground = -1
        @ignore_draw_foreground = @ignore_draw_background = @ignore_draw_selection = @ignore_draw_focus = @ignore_draw_hot = @ignore_full_selection = false
        if (hooks(SWT::EraseItem))
          rect = RECT.new
          OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
          cell_rect = item.get_bounds(index, true, true, true, true, true, h_dc)
          if (!(clr_sort_bk).equal?(-1))
            draw_background(h_dc, cell_rect, clr_sort_bk)
          else
            if (OS._is_window_enabled(self.attr_handle) || !(find_image_control).nil?)
              draw_background(h_dc, rect)
            else
              fill_background(h_dc, OS._get_bk_color(h_dc), rect)
            end
          end
          n_saved_dc = OS._save_dc(h_dc)
          data = SwtGCData.new
          data.attr_device = self.attr_display
          if (selected && @explorer_theme)
            data.attr_foreground = OS._get_sys_color(OS::COLOR_WINDOWTEXT)
          else
            data.attr_foreground = OS._get_text_color(h_dc)
          end
          data.attr_background = OS._get_bk_color(h_dc)
          if (!selected)
            if (!(clr_text).equal?(-1))
              data.attr_foreground = clr_text
            end
            if (!(clr_text_bk).equal?(-1))
              data.attr_background = clr_text_bk
            end
          end
          # 64
          data.attr_ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
          data.attr_font = item.get_font(index)
          gc = SwtGC.win32_new(h_dc, data)
          event = Event.new
          event.attr_index = index
          event.attr_item = item
          event.attr_gc = gc
          event.attr_detail |= SWT::FOREGROUND
          if (!(clr_text_bk).equal?(-1))
            event.attr_detail |= SWT::BACKGROUND
          end
          if (hot)
            event.attr_detail |= SWT::HOT
          end
          if (selected)
            event.attr_detail |= SWT::SELECTED
          end
          if (!@explorer_theme)
            # if ((nmcd.uItemState & OS.CDIS_FOCUS) != 0) {
            if ((OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)).equal?(nmcd.attr_dw_item_spec))
              if ((self.attr_handle).equal?(OS._get_focus))
                # 64
                ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
                if (((ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
                  focused = true
                  event.attr_detail |= SWT::FOCUSED
                end
              end
            end
          end
          event.attr_x = cell_rect.attr_left
          event.attr_y = cell_rect.attr_top
          event.attr_width = cell_rect.attr_right - cell_rect.attr_left
          event.attr_height = cell_rect.attr_bottom - cell_rect.attr_top
          gc.set_clipping(event.attr_x, event.attr_y, event.attr_width, event.attr_height)
          send_event(SWT::EraseItem, event)
          event.attr_gc = nil
          new_text_clr = data.attr_foreground
          gc.dispose
          OS._restore_dc(h_dc, n_saved_dc)
          if (is_disposed || item.is_disposed)
            return nil
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
          if (selected && @ignore_draw_selection)
            @ignore_draw_hot = true
          end
          if (!@ignore_draw_background && !(clr_text_bk).equal?(-1))
            draw = !selected && !hot
            if (!@explorer_theme && selected)
              draw = !@ignore_draw_selection
            end
            if (draw)
              if ((@column_count).equal?(0))
                if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                  fill_background(h_dc, clr_text_bk, rect)
                else
                  text_rect = item.get_bounds(index, true, false, false, false, true, h_dc)
                  if (!(measure_event).nil?)
                    text_rect.attr_right = Math.min(cell_rect.attr_right, measure_event.attr_x + measure_event.attr_width)
                  end
                  fill_background(h_dc, clr_text_bk, text_rect)
                end
              else
                fill_background(h_dc, clr_text_bk, cell_rect)
              end
            end
          end
          if (@ignore_draw_selection)
            @ignore_full_selection = true
          end
          if (!@ignore_draw_selection || !@ignore_draw_hot)
            if (!selected && !hot)
              @selection_foreground = clr_text = OS._get_sys_color(OS::COLOR_HIGHLIGHTTEXT)
            end
            if (@explorer_theme)
              if (((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                p_rect = item.get_bounds(index, true, true, false, false, false, h_dc)
                p_clip_rect = item.get_bounds(index, true, true, true, false, true, h_dc)
                if (!(measure_event).nil?)
                  p_rect.attr_right = Math.min(p_clip_rect.attr_right, measure_event.attr_x + measure_event.attr_width)
                else
                  p_rect.attr_right += EXPLORER_EXTRA
                  p_clip_rect.attr_right += EXPLORER_EXTRA
                end
                p_rect.attr_left -= EXPLORER_EXTRA
                p_clip_rect.attr_left -= EXPLORER_EXTRA
                # long
                h_theme = OS._open_theme_data(self.attr_handle, Display::TREEVIEW)
                i_state_id = selected ? OS::TREIS_SELECTED : OS::TREIS_HOT
                if (!(OS._get_focus).equal?(self.attr_handle) && selected && !hot)
                  i_state_id = OS::TREIS_SELECTEDNOTFOCUS
                end
                OS._draw_theme_background(h_theme, h_dc, OS::TVP_TREEITEM, i_state_id, p_rect, p_clip_rect)
                OS._close_theme_data(h_theme)
              end
            else
              # Feature in Windows.  When the tree has the style
              # TVS_FULLROWSELECT, the background color for the
              # entire row is filled when an item is painted,
              # drawing on top of any custom drawing.  The fix
              # is to emulate TVS_FULLROWSELECT.
              if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0) && (@column_count).equal?(0))
                  fill_background(h_dc, OS._get_bk_color(h_dc), rect)
                else
                  fill_background(h_dc, OS._get_bk_color(h_dc), cell_rect)
                end
              else
                text_rect = item.get_bounds(index, true, false, false, false, true, h_dc)
                if (!(measure_event).nil?)
                  text_rect.attr_right = Math.min(cell_rect.attr_right, measure_event.attr_x + measure_event.attr_width)
                end
                fill_background(h_dc, OS._get_bk_color(h_dc), text_rect)
              end
            end
          else
            if (selected || hot)
              @selection_foreground = clr_text = new_text_clr
              @ignore_draw_selection = @ignore_draw_hot = true
            end
            if (@explorer_theme)
              nmcd.attr_u_item_state |= OS::CDIS_DISABLED
              # Feature in Windows.  On Vista only, when the text
              # color is unchanged and an item is asked to draw
              # disabled, it uses the disabled color.  The fix is
              # to modify the color so that is it no longer equal.
              new_color = (clr_text).equal?(-1) ? get_foreground_pixel : clr_text
              if ((nmcd.attr_clr_text).equal?(new_color))
                nmcd.attr_clr_text |= 0x20000000
                if ((nmcd.attr_clr_text).equal?(new_color))
                  nmcd.attr_clr_text &= ~0x20000000
                end
              else
                nmcd.attr_clr_text = new_color
              end
              OS._move_memory(l_param, nmcd, NMTVCUSTOMDRAW.attr_sizeof)
            end
          end
          if (focused && !@ignore_draw_focus && ((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
            text_rect = item.get_bounds(index, true, @explorer_theme, false, false, true, h_dc)
            if (!(measure_event).nil?)
              text_rect.attr_right = Math.min(cell_rect.attr_right, measure_event.attr_x + measure_event.attr_width)
            end
            nmcd.attr_u_item_state &= ~OS::CDIS_FOCUS
            OS._move_memory(l_param, nmcd, NMTVCUSTOMDRAW.attr_sizeof)
            @focus_rect = text_rect
          end
          if (@explorer_theme)
            if (selected || (hot && @ignore_draw_hot))
              nmcd.attr_u_item_state &= ~OS::CDIS_HOT
            end
            OS._move_memory(l_param, nmcd, NMTVCUSTOMDRAW.attr_sizeof)
          end
          item_rect = item.get_bounds(index, true, true, false, false, false, h_dc)
          OS._save_dc(h_dc)
          OS._select_clip_rgn(h_dc, 0)
          if (@explorer_theme)
            item_rect.attr_left -= EXPLORER_EXTRA
            item_rect.attr_right += EXPLORER_EXTRA
          end
          # TODO - bug in Windows selection or SWT itemRect
          # if (selected)
          item_rect.attr_right += 1
          if (@lines_visible)
            item_rect.attr_bottom += 1
          end
          if (!(clip_rect).nil?)
            OS._intersect_clip_rect(h_dc, clip_rect.attr_left, clip_rect.attr_top, clip_rect.attr_right, clip_rect.attr_bottom)
          end
          OS._exclude_clip_rect(h_dc, item_rect.attr_left, item_rect.attr_top, item_rect.attr_right, item_rect.attr_bottom)
          return LRESULT.new(OS::CDRF_DODEFAULT | OS::CDRF_NOTIFYPOSTPAINT)
        end
        # Feature in Windows.  When the tree has the style
        # TVS_FULLROWSELECT, the background color for the
        # entire row is filled when an item is painted,
        # drawing on top of any custom drawing.  The fix
        # is to emulate TVS_FULLROWSELECT.
        if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          if (((bits & OS::TVS_FULLROWSELECT)).equal?(0))
            rect = RECT.new
            OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
            if (selected)
              fill_background(h_dc, OS._get_bk_color(h_dc), rect)
            else
              if (OS._is_window_enabled(self.attr_handle))
                draw_background(h_dc, rect)
              end
            end
            nmcd.attr_u_item_state &= ~OS::CDIS_FOCUS
            OS._move_memory(l_param, nmcd, NMTVCUSTOMDRAW.attr_sizeof)
          end
        end
      end
      result = nil
      if ((clr_text).equal?(-1) && (clr_text_bk).equal?(-1) && (h_font).equal?(-1))
        result = LRESULT.new(OS::CDRF_DODEFAULT | OS::CDRF_NOTIFYPOSTPAINT)
      else
        result = LRESULT.new(OS::CDRF_NEWFONT | OS::CDRF_NOTIFYPOSTPAINT)
        if (!(h_font).equal?(-1))
          OS._select_object(h_dc, h_font)
        end
        if (OS._is_window_enabled(self.attr_handle) && OS._is_window_visible(self.attr_handle))
          # Feature in Windows.  Windows does not fill the entire cell
          # with the background color when TVS_FULLROWSELECT is not set.
          # The fix is to fill the cell with the background color.
          if (!(clr_text_bk).equal?(-1))
            bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
            if (((bits & OS::TVS_FULLROWSELECT)).equal?(0))
              if (!(@column_count).equal?(0) && !(@hwnd_header).equal?(0))
                rect = RECT.new
                hd_item = HDITEM.new
                hd_item.attr_mask = OS::HDI_WIDTH
                OS._send_message(@hwnd_header, OS::HDM_GETITEM, index, hd_item)
                OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_left + hd_item.attr_cxy, nmcd.attr_bottom)
                if (OS::COMCTL32_MAJOR < 6 || !OS._is_app_themed)
                  item_rect = RECT.new
                  if (OS._tree_view_get_item_rect(self.attr_handle, item.attr_handle, item_rect, true))
                    rect.attr_left = Math.min(item_rect.attr_left, rect.attr_right)
                  end
                end
                if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                  if (!selected)
                    fill_background(h_dc, clr_text_bk, rect)
                  end
                else
                  if (@explorer_theme)
                    if (!selected && !hot)
                      fill_background(h_dc, clr_text_bk, rect)
                    end
                  else
                    fill_background(h_dc, clr_text_bk, rect)
                  end
                end
              else
                if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                  rect = RECT.new
                  OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
                  if (!selected)
                    fill_background(h_dc, clr_text_bk, rect)
                  end
                end
              end
            end
          end
          if (!selected)
            nmcd.attr_clr_text = (clr_text).equal?(-1) ? get_foreground_pixel : clr_text
            nmcd.attr_clr_text_bk = (clr_text_bk).equal?(-1) ? get_background_pixel : clr_text_bk
            OS._move_memory(l_param, nmcd, NMTVCUSTOMDRAW.attr_sizeof)
          end
        end
      end
      if (OS._is_window_enabled(self.attr_handle))
        # On Vista only, when an item is asked to draw disabled,
        # the background of the text is not filled with the
        # background color of the tree.  This is true for both
        # regular and full selection trees.  In order to draw a
        # background image, mark the item as disabled using
        # CDIS_DISABLED (when not selected) and set the text
        # to the regular text color to avoid drawing disabled.
        if (@explorer_theme)
          if (!(find_image_control).nil?)
            if (!selected && ((nmcd.attr_u_item_state & (OS::CDIS_HOT | OS::CDIS_SELECTED))).equal?(0))
              nmcd.attr_u_item_state |= OS::CDIS_DISABLED
              # Feature in Windows.  On Vista only, when the text
              # color is unchanged and an item is asked to draw
              # disabled, it uses the disabled color.  The fix is
              # to modify the color so it is no longer equal.
              new_color = (clr_text).equal?(-1) ? get_foreground_pixel : clr_text
              if ((nmcd.attr_clr_text).equal?(new_color))
                nmcd.attr_clr_text |= 0x20000000
                if ((nmcd.attr_clr_text).equal?(new_color))
                  nmcd.attr_clr_text &= ~0x20000000
                end
              else
                nmcd.attr_clr_text = new_color
              end
              OS._move_memory(l_param, nmcd, NMTVCUSTOMDRAW.attr_sizeof)
              if (!(clr_text_bk).equal?(-1))
                if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
                  rect = RECT.new
                  if (!(@column_count).equal?(0))
                    hd_item = HDITEM.new
                    hd_item.attr_mask = OS::HDI_WIDTH
                    OS._send_message(@hwnd_header, OS::HDM_GETITEM, index, hd_item)
                    OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_left + hd_item.attr_cxy, nmcd.attr_bottom)
                  else
                    OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
                  end
                  fill_background(h_dc, clr_text_bk, rect)
                else
                  text_rect = item.get_bounds(index, true, false, true, false, true, h_dc)
                  fill_background(h_dc, clr_text_bk, text_rect)
                end
              end
            end
          end
        end
      else
        # Feature in Windows.  When the tree is disabled, it draws
        # with a gray background over the sort column.  The fix is
        # to fill the background with the sort column color.
        if (!(clr_sort_bk).equal?(-1))
          rect = RECT.new
          hd_item = HDITEM.new
          hd_item.attr_mask = OS::HDI_WIDTH
          OS._send_message(@hwnd_header, OS::HDM_GETITEM, index, hd_item)
          OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_left + hd_item.attr_cxy, nmcd.attr_bottom)
          fill_background(h_dc, clr_sort_bk, rect)
        end
      end
      OS._save_dc(h_dc)
      if (!(clip_rect).nil?)
        # long
        h_rgn = OS._create_rect_rgn(clip_rect.attr_left, clip_rect.attr_top, clip_rect.attr_right, clip_rect.attr_bottom)
        lp_point = POINT.new
        OS._get_window_org_ex(h_dc, lp_point)
        OS._offset_rgn(h_rgn, -lp_point.attr_x, -lp_point.attr_y)
        OS._select_clip_rgn(h_dc, h_rgn)
        OS._delete_object(h_rgn)
      end
      return result
    end
    
    typesig { [NMTVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _cdds_postpaint(nmcd, w_param, l_param)
      if (@ignore_custom_draw)
        return nil
      end
      if (OS._is_window_visible(self.attr_handle))
        if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
          if (!(@sort_column).nil? && !(@sort_direction).equal?(SWT::NONE))
            if ((find_image_control).nil?)
              index = index_of(@sort_column)
              if (!(index).equal?(-1))
                top = nmcd.attr_top
                # Bug in Windows.  For some reason, during a collapse,
                # when TVM_GETNEXTITEM is sent with TVGN_LASTVISIBLE
                # and the collapse causes the item being collapsed
                # to become the last visible item in the tree, the
                # message takes a long time to process.  In order for
                # the slowness to happen, the children of the item
                # must have children.  Times of up to 11 seconds have
                # been observed with 23 children, each having one
                # child.  The fix is to use the bottom partially
                # visible item rather than the last possible item
                # that could be visible.
                # 
                # NOTE: This problem only happens on Vista during
                # WM_NOTIFY with NM_CUSTOMDRAW and CDDS_POSTPAINT.
                # 
                # long
                h_item = 0
                if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
                  h_item = get_bottom_item
                else
                  h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_LASTVISIBLE, 0)
                end
                if (!(h_item).equal?(0))
                  rect = RECT.new
                  if (OS._tree_view_get_item_rect(self.attr_handle, h_item, rect, false))
                    top = rect.attr_bottom
                  end
                end
                rect = RECT.new
                OS._set_rect(rect, nmcd.attr_left, top, nmcd.attr_right, nmcd.attr_bottom)
                header_rect = RECT.new
                OS._send_message(@hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)
                rect.attr_left = header_rect.attr_left
                rect.attr_right = header_rect.attr_right
                fill_background(nmcd.attr_hdc, get_sort_column_pixel, rect)
              end
            end
          end
        end
        if (@lines_visible)
          # long
          h_dc = nmcd.attr_hdc
          if (!(@hwnd_header).equal?(0))
            x = 0
            rect = RECT.new
            hd_item = HDITEM.new
            hd_item.attr_mask = OS::HDI_WIDTH
            i = 0
            while i < @column_count
              # 64
              index = RJava.cast_to_int(OS._send_message(@hwnd_header, OS::HDM_ORDERTOINDEX, i, 0))
              OS._send_message(@hwnd_header, OS::HDM_GETITEM, index, hd_item)
              OS._set_rect(rect, x, nmcd.attr_top, x + hd_item.attr_cxy, nmcd.attr_bottom)
              OS._draw_edge(h_dc, rect, OS::BDR_SUNKENINNER, OS::BF_RIGHT)
              x += hd_item.attr_cxy
              i += 1
            end
          end
          height = 0
          rect = RECT.new
          # Bug in Windows.  For some reason, during a collapse,
          # when TVM_GETNEXTITEM is sent with TVGN_LASTVISIBLE
          # and the collapse causes the item being collapsed
          # to become the last visible item in the tree, the
          # message takes a long time to process.  In order for
          # the slowness to happen, the children of the item
          # must have children.  Times of up to 11 seconds have
          # been observed with 23 children, each having one
          # child.  The fix is to use the bottom partially
          # visible item rather than the last possible item
          # that could be visible.
          # 
          # NOTE: This problem only happens on Vista during
          # WM_NOTIFY with NM_CUSTOMDRAW and CDDS_POSTPAINT.
          # 
          # long
          h_item = 0
          if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
            h_item = get_bottom_item
          else
            h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_LASTVISIBLE, 0)
          end
          if (!(h_item).equal?(0))
            if (OS._tree_view_get_item_rect(self.attr_handle, h_item, rect, false))
              height = rect.attr_bottom - rect.attr_top
            end
          end
          if ((height).equal?(0))
            # 64
            height = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMHEIGHT, 0, 0))
            OS._get_client_rect(self.attr_handle, rect)
            OS._set_rect(rect, rect.attr_left, rect.attr_top, rect.attr_right, rect.attr_top + height)
            OS._draw_edge(h_dc, rect, OS::BDR_SUNKENINNER, OS::BF_BOTTOM)
          end
          while (rect.attr_bottom < nmcd.attr_bottom)
            top = rect.attr_top + height
            OS._set_rect(rect, rect.attr_left, top, rect.attr_right, top + height)
            OS._draw_edge(h_dc, rect, OS::BDR_SUNKENINNER, OS::BF_BOTTOM)
          end
        end
      end
      return LRESULT.new(OS::CDRF_DODEFAULT)
    end
    
    typesig { [NMTVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _cdds_prepaint(nmcd, w_param, l_param)
      if (@explorer_theme)
        if ((OS._is_window_enabled(self.attr_handle) && hooks(SWT::EraseItem)) || !(find_image_control).nil?)
          rect = RECT.new
          OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
          draw_background(nmcd.attr_hdc, rect)
        end
      end
      return LRESULT.new(OS::CDRF_NOTIFYITEMDRAW | OS::CDRF_NOTIFYPOSTPAINT)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_window_proc(hwnd, msg, w_param, l_param)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      if (!(@hwnd_parent).equal?(0) && (hwnd).equal?(@hwnd_parent))
        return OS._def_window_proc(hwnd, msg, w_param, l_param)
      end
      if (!(@hwnd_header).equal?(0) && (hwnd).equal?(@hwnd_header))
        return OS._call_window_proc(HeaderProc, hwnd, msg, w_param, l_param)
      end
      catch(:break_case) do
        case (msg)
        when OS::WM_SETFOCUS
          # Feature in Windows.  When a tree control processes WM_SETFOCUS,
          # if no item is selected, the first item in the tree is selected.
          # This is unexpected and might clear the previous selection.
          # The fix is to detect that there is no selection and set it to
          # the first visible item in the tree.  If the item was not selected,
          # only the focus is assigned.
          if (!((self.attr_style & SWT::SINGLE)).equal?(0))
            throw :break_case, :thrown
          end
          # long
          h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
          if ((h_item).equal?(0))
            h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
            if (!(h_item).equal?(0))
              tv_item = TVITEM.new
              tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
              tv_item.attr_h_item = h_item
              OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
              @h_select = h_item
              @ignore_deselect = @ignore_select = @lock_selection = true
              OS._send_message(self.attr_handle, OS::TVM_SELECTITEM, OS::TVGN_CARET, h_item)
              @ignore_deselect = @ignore_select = @lock_selection = false
              @h_select = 0
              if (((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0))
                OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
              end
            end
          end
        end
      end
      # long
      h_item = 0
      redraw = false
      case (msg)
      # Keyboard messages
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
        if ((w_param).equal?(OS::VK_CONTROL) || (w_param).equal?(OS::VK_SHIFT))
        end
      when OS::WM_CHAR, OS::WM_IME_CHAR, OS::WM_KEYUP, OS::WM_SYSCHAR, OS::WM_SYSKEYDOWN, OS::WM_SYSKEYUP, OS::WM_HSCROLL, OS::WM_VSCROLL, OS::WM_SIZE
        redraw = !(find_image_control).nil? && (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle)
        if (redraw)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
        if (!(find_image_control).nil?)
          h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
        end
      when OS::WM_LBUTTONDBLCLK, OS::WM_LBUTTONDOWN, OS::WM_LBUTTONUP, OS::WM_MBUTTONDBLCLK, OS::WM_MBUTTONDOWN, OS::WM_MBUTTONUP, OS::WM_MOUSEHOVER, OS::WM_MOUSELEAVE, OS::WM_MOUSEMOVE, OS::WM_MOUSEWHEEL, OS::WM_RBUTTONDBLCLK, OS::WM_RBUTTONDOWN, OS::WM_RBUTTONUP, OS::WM_XBUTTONDBLCLK, OS::WM_XBUTTONDOWN, OS::WM_XBUTTONUP, OS::WM_SETFONT, OS::WM_TIMER
        if (!(find_image_control).nil?)
          h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
        end
      end
      # long
      code = OS._call_window_proc(TreeProc, hwnd, msg, w_param, l_param)
      case (msg)
      # Keyboard messages
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
        if ((w_param).equal?(OS::VK_CONTROL) || (w_param).equal?(OS::VK_SHIFT))
        end
      when OS::WM_CHAR, OS::WM_IME_CHAR, OS::WM_KEYUP, OS::WM_SYSCHAR, OS::WM_SYSKEYDOWN, OS::WM_SYSKEYUP, OS::WM_HSCROLL, OS::WM_VSCROLL, OS::WM_SIZE
        if (redraw)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._invalidate_rect(self.attr_handle, nil, true)
          if (!(@hwnd_header).equal?(0))
            OS._invalidate_rect(@hwnd_header, nil, true)
          end
        end
        if (!(find_image_control).nil?)
          if (!(h_item).equal?(OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)))
            OS._invalidate_rect(self.attr_handle, nil, true)
          end
        end
        update_scroll_bar
      when OS::WM_LBUTTONDBLCLK, OS::WM_LBUTTONDOWN, OS::WM_LBUTTONUP, OS::WM_MBUTTONDBLCLK, OS::WM_MBUTTONDOWN, OS::WM_MBUTTONUP, OS::WM_MOUSEHOVER, OS::WM_MOUSELEAVE, OS::WM_MOUSEMOVE, OS::WM_MOUSEWHEEL, OS::WM_RBUTTONDBLCLK, OS::WM_RBUTTONDOWN, OS::WM_RBUTTONUP, OS::WM_XBUTTONDBLCLK, OS::WM_XBUTTONDOWN, OS::WM_XBUTTONUP, OS::WM_SETFONT, OS::WM_TIMER
        if (!(find_image_control).nil?)
          if (!(h_item).equal?(OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)))
            OS._invalidate_rect(self.attr_handle, nil, true)
          end
        end
        update_scroll_bar
      when OS::WM_PAINT
        @painted = true
      end
      return code
    end
    
    typesig { [] }
    def check_buffered
      super
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        self.attr_style |= SWT::DOUBLE_BUFFERED
        OS._send_message(self.attr_handle, OS::TVM_SETSCROLLTIME, 0, 0)
      end
      if (EXPLORER_THEME)
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0) && OS._is_app_themed)
          # 64
          ex_style = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETEXTENDEDSTYLE, 0, 0))
          if (!((ex_style & OS::TVS_EX_DOUBLEBUFFER)).equal?(0))
            self.attr_style |= SWT::DOUBLE_BUFFERED
          end
        end
      end
    end
    
    typesig { [TreeItem, ::Java::Boolean] }
    def check_data(item, redraw)
      if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
        return true
      end
      if (!item.attr_cached)
        parent_item = item.get_parent_item
        return check_data(item, (parent_item).nil? ? index_of(item) : parent_item.index_of(item), redraw)
      end
      return true
    end
    
    typesig { [TreeItem, ::Java::Int, ::Java::Boolean] }
    def check_data(item, index, redraw)
      if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
        return true
      end
      if (!item.attr_cached)
        item.attr_cached = true
        event = Event.new
        event.attr_item = item
        event.attr_index = index
        old_item = @current_item
        @current_item = item
        send_event(SWT::SetData, event)
        # widget could be disposed at this point
        @current_item = old_item
        if (is_disposed || item.is_disposed)
          return false
        end
        if (redraw)
          item.redraw
        end
      end
      return true
    end
    
    typesig { [::Java::Int] }
    # long
    def check_handle(hwnd)
      return (hwnd).equal?(self.attr_handle) || (!(@hwnd_parent).equal?(0) && (hwnd).equal?(@hwnd_parent)) || (!(@hwnd_header).equal?(0) && (hwnd).equal?(@hwnd_header))
    end
    
    typesig { [::Java::Int] }
    # long
    def check_scroll(h_item)
      # Feature in Windows.  If redraw is turned off using WM_SETREDRAW
      # and a tree item that is not a child of the first root is selected or
      # scrolled using TVM_SELECTITEM or TVM_ENSUREVISIBLE, then scrolling
      # does not occur.  The fix is to detect this case, and make sure
      # that redraw is temporarily enabled.  To avoid flashing, DefWindowProc()
      # is called to disable redrawing.
      # 
      # NOTE:  The code that actually works around the problem is in the
      # callers of this method.
      if ((self.attr_draw_count).equal?(0))
        return false
      end
      # long
      h_root = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
      # long
      h_parent = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PARENT, h_item)
      while (!(h_parent).equal?(h_root) && !(h_parent).equal?(0))
        h_parent = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PARENT, h_parent)
      end
      return (h_parent).equal?(0)
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # Clears the item at the given zero-relative index in the receiver.
    # The text, icon and other attributes of the item are set to the default
    # value.  If the tree was created with the <code>SWT.VIRTUAL</code> style,
    # these attributes are requested again as needed.
    # 
    # @param index the index of the item to clear
    # @param all <code>true</code> if all child items of the indexed item should be
    # cleared recursively, and <code>false</code> otherwise
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
    # @since 3.2
    def clear(index, all)
      check_widget
      # long
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
      if ((h_item).equal?(0))
        error(SWT::ERROR_INVALID_RANGE)
      end
      h_item = find_item(h_item, index)
      if ((h_item).equal?(0))
        error(SWT::ERROR_INVALID_RANGE)
      end
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
      clear(h_item, tv_item)
      if (all)
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_item)
        clear_all(h_item, tv_item, all)
      end
    end
    
    typesig { [::Java::Int, TVITEM] }
    # long
    def clear(h_item, tv_item)
      tv_item.attr_h_item = h_item
      item = nil
      if (!(OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)).equal?(0))
        # 64
        item = !(tv_item.attr_l_param).equal?(-1) ? @items[RJava.cast_to_int(tv_item.attr_l_param)] : nil
      end
      if (!(item).nil?)
        if (!((self.attr_style & SWT::VIRTUAL)).equal?(0) && !item.attr_cached)
          return
        end
        item.clear
        item.redraw
      end
    end
    
    typesig { [::Java::Boolean] }
    # Clears all the items in the receiver. The text, icon and other
    # attributes of the items are set to their default values. If the
    # tree was created with the <code>SWT.VIRTUAL</code> style, these
    # attributes are requested again as needed.
    # 
    # @param all <code>true</code> if all child items should be cleared
    # recursively, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.2
    def clear_all(all)
      check_widget
      # long
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
      if ((h_item).equal?(0))
        return
      end
      if (all)
        redraw_ = false
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil? && !(item).equal?(@current_item))
            item.clear
            redraw_ = true
          end
          i += 1
        end
        if (redraw_)
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
      else
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
        clear_all(h_item, tv_item, all)
      end
    end
    
    typesig { [::Java::Int, TVITEM, ::Java::Boolean] }
    # long
    def clear_all(h_item, tv_item, all)
      while (!(h_item).equal?(0))
        clear(h_item, tv_item)
        if (all)
          # long
          h_first_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_item)
          clear_all(h_first_item, tv_item, all)
        end
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_item)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def _compare_func(l_param1, l_param2, l_param_sort)
      # 64
      item1 = @items[RJava.cast_to_int(l_param1)]
      # 64
      item2 = @items[RJava.cast_to_int(l_param2)]
      # 64
      text1 = item1.get_text(RJava.cast_to_int(l_param_sort))
      # 64
      text2 = item2.get_text(RJava.cast_to_int(l_param_sort))
      return (@sort_direction).equal?(SWT::UP) ? (text1 <=> text2) : (text2 <=> text1)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      if (!(@hwnd_header).equal?(0))
        hd_item = HDITEM.new
        hd_item.attr_mask = OS::HDI_WIDTH
        i = 0
        while i < @column_count
          OS._send_message(@hwnd_header, OS::HDM_GETITEM, i, hd_item)
          width += hd_item.attr_cxy
          i += 1
        end
        rect = RECT.new
        OS._get_window_rect(@hwnd_header, rect)
        height += rect.attr_bottom - rect.attr_top
      end
      rect = RECT.new
      # long
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
      while (!(h_item).equal?(0))
        if (((self.attr_style & SWT::VIRTUAL)).equal?(0) && !@painted)
          tv_item = TVITEM.new
          tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_TEXT
          tv_item.attr_h_item = h_item
          tv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
          @ignore_custom_draw = true
          OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
          @ignore_custom_draw = false
        end
        if (OS._tree_view_get_item_rect(self.attr_handle, h_item, rect, true))
          width = Math.max(width, rect.attr_right)
          height += rect.attr_bottom - rect.attr_top
        end
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXTVISIBLE, h_item)
      end
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
          bits = OS::TVS_EX_DOUBLEBUFFER | OS::TVS_EX_FADEINOUTEXPANDOS | OS::TVS_EX_RICHTOOLTIP
          # This code is intentionally commented.
          # 
          # if ((style & SWT.FULL_SELECTION) == 0) bits |= OS.TVS_EX_AUTOHSCROLL;
          OS._send_message(self.attr_handle, OS::TVM_SETEXTENDEDSTYLE, 0, bits)
          # Bug in Windows.  When the tree is using the explorer
          # theme, it does not use COLOR_WINDOW_TEXT for the
          # default foreground color.  The fix is to explicitly
          # set the foreground.
          set_foreground_pixel(-1)
        end
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
      # Set the checkbox image list
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        set_checkbox_image_list
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
    
    typesig { [TreeColumn, ::Java::Int] }
    def create_item(column, index)
      if ((@hwnd_header).equal?(0))
        create_parent
      end
      if (!(0 <= index && index <= @column_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((@column_count).equal?(@columns.attr_length))
        new_columns = Array.typed(TreeColumn).new(@columns.attr_length + 4) { nil }
        System.arraycopy(@columns, 0, new_columns, 0, @columns.attr_length)
        @columns = new_columns
      end
      i = 0
      while i < @items.attr_length
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
              item.attr_text = ""
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
      System.arraycopy(@columns, index, @columns, index + 1, ((@column_count += 1) - 1) - index)
      @columns[index] = column
      # Bug in Windows.  For some reason, when HDM_INSERTITEM
      # is used to insert an item into a header without text,
      # if is not possible to set the text at a later time.
      # The fix is to insert the item with an empty string.
      # 
      # long
      h_heap = OS._get_process_heap
      # long
      psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, TCHAR.attr_sizeof)
      hd_item = HDITEM.new
      hd_item.attr_mask = OS::HDI_TEXT | OS::HDI_FORMAT
      hd_item.attr_psz_text = psz_text
      if (((column.attr_style & SWT::LEFT)).equal?(SWT::LEFT))
        hd_item.attr_fmt = OS::HDF_LEFT
      end
      if (((column.attr_style & SWT::CENTER)).equal?(SWT::CENTER))
        hd_item.attr_fmt = OS::HDF_CENTER
      end
      if (((column.attr_style & SWT::RIGHT)).equal?(SWT::RIGHT))
        hd_item.attr_fmt = OS::HDF_RIGHT
      end
      OS._send_message(@hwnd_header, OS::HDM_INSERTITEM, index, hd_item)
      if (!(psz_text).equal?(0))
        OS._heap_free(h_heap, 0, psz_text)
      end
      # When the first column is created, hide the horizontal scroll bar
      if ((@column_count).equal?(1))
        @scroll_width = 0
        if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          bits |= OS::TVS_NOHSCROLL
          OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
        end
        # Bug in Windows.  When TVS_NOHSCROLL is set after items
        # have been inserted into the tree, Windows shows the
        # scroll bar.  The fix is to check for this case and
        # explicitly hide the scroll bar explicitly.
        # 
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETCOUNT, 0, 0))
        if (!(count).equal?(0))
          if (!OS::IsWinCE)
            OS._show_scroll_bar(self.attr_handle, OS::SB_HORZ, false)
          end
        end
        create_item_tool_tips
        if (!(@item_tool_tip_handle).equal?(0))
          OS._send_message(@item_tool_tip_handle, OS::TTM_SETDELAYTIME, OS::TTDT_AUTOMATIC, -1)
        end
      end
      set_scroll_width
      update_image_list
      update_scroll_bar
      # Redraw to hide the items when the first column is created
      if ((@column_count).equal?(1) && !(OS._send_message(self.attr_handle, OS::TVM_GETCOUNT, 0, 0)).equal?(0))
        OS._invalidate_rect(self.attr_handle, nil, true)
      end
      # Add the tool tip item for the header
      if (!(@header_tool_tip_handle).equal?(0))
        rect = RECT.new
        if (!(OS._send_message(@hwnd_header, OS::HDM_GETITEMRECT, index, rect)).equal?(0))
          lpti = TOOLINFO.new
          lpti.attr_cb_size = TOOLINFO.attr_sizeof
          lpti.attr_u_flags = OS::TTF_SUBCLASS
          lpti.attr_hwnd = @hwnd_header
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
    
    typesig { [TreeItem, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def create_item(item, h_parent, h_insert_after, h_item)
      id = -1
      if (!(item).nil?)
        id = @last_id < @items.attr_length ? @last_id : 0
        while (id < @items.attr_length && !(@items[id]).nil?)
          id += 1
        end
        if ((id).equal?(@items.attr_length))
          # Grow the array faster when redraw is off or the
          # table is not visible.  When the table is painted,
          # the items array is resized to be smaller to reduce
          # memory usage.
          length_ = 0
          if ((self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle))
            length_ = @items.attr_length + 4
          else
            @shrink = true
            length_ = Math.max(4, @items.attr_length * 3 / 2)
          end
          new_items = Array.typed(TreeItem).new(length_) { nil }
          System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
          @items = new_items
        end
        @last_id = id + 1
      end
      # long
      h_new_item = 0
      # long
      h_first_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_parent)
      fix_parent = (h_first_item).equal?(0)
      if ((h_item).equal?(0))
        tv_insert = TVINSERTSTRUCT.new
        tv_insert.attr_h_parent = h_parent
        tv_insert.attr_h_insert_after = h_insert_after
        tv_insert.attr_l_param = id
        tv_insert.attr_psz_text = OS::LPSTR_TEXTCALLBACK
        tv_insert.attr_i_image = tv_insert.attr_i_selected_image = OS::I_IMAGECALLBACK
        tv_insert.attr_mask = OS::TVIF_TEXT | OS::TVIF_IMAGE | OS::TVIF_SELECTEDIMAGE | OS::TVIF_HANDLE | OS::TVIF_PARAM
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          tv_insert.attr_mask = tv_insert.attr_mask | OS::TVIF_STATE
          tv_insert.attr_state = 1 << 12
          tv_insert.attr_state_mask = OS::TVIS_STATEIMAGEMASK
        end
        @ignore_custom_draw = true
        h_new_item = OS._send_message(self.attr_handle, OS::TVM_INSERTITEM, 0, tv_insert)
        @ignore_custom_draw = false
        if ((h_new_item).equal?(0))
          error(SWT::ERROR_ITEM_NOT_ADDED)
        end
        # This code is intentionally commented.
        # 
        # if (hParent != 0) {
        # int bits = OS.GetWindowLong (handle, OS.GWL_STYLE);
        # bits |= OS.TVS_LINESATROOT;
        # OS.SetWindowLong (handle, OS.GWL_STYLE, bits);
        # }
      else
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
        tv_item.attr_h_item = h_new_item = h_item
        tv_item.attr_l_param = id
        OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
      end
      if (!(item).nil?)
        item.attr_handle = h_new_item
        @items[id] = item
      end
      if ((h_first_item).equal?(0))
        if ((h_insert_after).equal?(OS::TVI_FIRST) || (h_insert_after).equal?(OS::TVI_LAST))
          @h_first_index_of = @h_last_index_of = h_first_item = h_new_item
          @item_count = @last_index_of = 0
        end
      end
      if ((h_first_item).equal?(@h_first_index_of) && !(@item_count).equal?(-1))
        @item_count += 1
      end
      if ((h_item).equal?(0))
        # Bug in Windows.  When a child item is added to a parent item
        # that has no children outside of WM_NOTIFY with control code
        # TVN_ITEMEXPANDED, the tree widget does not redraw the +/-
        # indicator.  The fix is to detect the case when the first
        # child is added to a visible parent item and redraw the parent.
        if (fix_parent)
          if ((self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle))
            rect = RECT.new
            if (OS._tree_view_get_item_rect(self.attr_handle, h_parent, rect, false))
              OS._invalidate_rect(self.attr_handle, rect, true)
            end
          end
        end
        # Bug in Windows.  When a new item is added while Windows
        # is requesting data a tree item using TVN_GETDISPINFO,
        # outstanding damage for items that are below the new item
        # is not scrolled.  The fix is to explicitly damage the
        # new area.
        if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
          if (!(@current_item).nil?)
            rect = RECT.new
            if (OS._tree_view_get_item_rect(self.attr_handle, h_new_item, rect, false))
              damage_rect = RECT.new
              damaged = OS._get_update_rect(self.attr_handle, damage_rect, true)
              if (damaged && damage_rect.attr_top < rect.attr_bottom)
                if (OS::IsWinCE)
                  OS._offset_rect(damage_rect, 0, rect.attr_bottom - rect.attr_top)
                  OS._invalidate_rect(self.attr_handle, damage_rect, true)
                else
                  # long
                  rgn = OS._create_rect_rgn(0, 0, 0, 0)
                  result = OS._get_update_rgn(self.attr_handle, rgn, true)
                  if (!(result).equal?(OS::NULLREGION))
                    OS._offset_rgn(rgn, 0, rect.attr_bottom - rect.attr_top)
                    OS._invalidate_rgn(self.attr_handle, rgn, true)
                  end
                  OS._delete_object(rgn)
                end
              end
            end
          end
        end
        update_scroll_bar
      end
    end
    
    typesig { [] }
    def create_item_tool_tips
      if (OS::IsWinCE)
        return
      end
      if (!(@item_tool_tip_handle).equal?(0))
        return
      end
      bits1 = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      bits1 |= OS::TVS_NOTOOLTIPS
      OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits1)
      bits2 = 0
      if (OS::WIN32_VERSION >= OS._version(4, 10))
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          bits2 |= OS::WS_EX_LAYOUTRTL
        end
      end
      # Feature in Windows.  For some reason, when the user
      # clicks on a tool tip, it temporarily takes focus, even
      # when WS_EX_NOACTIVATE is specified.  The fix is to
      # use WS_EX_TRANSPARENT, even though WS_EX_TRANSPARENT
      # is documented to affect painting, not hit testing.
      # 
      # NOTE: Windows 2000 doesn't have the problem and
      # setting WS_EX_TRANSPARENT causes pixel corruption.
      if (OS::COMCTL32_MAJOR >= 6)
        bits2 |= OS::WS_EX_TRANSPARENT
      end
      @item_tool_tip_handle = OS._create_window_ex(bits2, TCHAR.new(0, OS::TOOLTIPS_CLASS, true), nil, OS::TTS_NOPREFIX | OS::TTS_NOANIMATE | OS::TTS_NOFADE, OS::CW_USEDEFAULT, 0, OS::CW_USEDEFAULT, 0, self.attr_handle, 0, OS._get_module_handle(nil), nil)
      if ((@item_tool_tip_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS._send_message(@item_tool_tip_handle, OS::TTM_SETDELAYTIME, OS::TTDT_INITIAL, 0)
      lpti = TOOLINFO.new
      lpti.attr_cb_size = TOOLINFO.attr_sizeof
      lpti.attr_hwnd = self.attr_handle
      lpti.attr_u_id = self.attr_handle
      lpti.attr_u_flags = OS::TTF_SUBCLASS | OS::TTF_TRANSPARENT
      lpti.attr_lpsz_text = OS::LPSTR_TEXTCALLBACK
      OS._send_message(@item_tool_tip_handle, OS::TTM_ADDTOOL, 0, lpti)
    end
    
    typesig { [] }
    def create_parent
      force_resize
      rect = RECT.new
      OS._get_window_rect(self.attr_handle, rect)
      OS._map_window_points(0, self.attr_parent.attr_handle, rect, 2)
      old_style = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      new_style = Composite.instance_method(:widget_style).bind(self).call & ~OS::WS_VISIBLE
      if (!((old_style & OS::WS_DISABLED)).equal?(0))
        new_style |= OS::WS_DISABLED
      end
      # if ((oldStyle & OS.WS_VISIBLE) != 0) newStyle |= OS.WS_VISIBLE;
      @hwnd_parent = OS._create_window_ex(Composite.instance_method(:widget_ext_style).bind(self).call, Composite.instance_method(:window_class).bind(self).call, nil, new_style, rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top, self.attr_parent.attr_handle, 0, OS._get_module_handle(nil), nil)
      if ((@hwnd_parent).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS._set_window_long_ptr(@hwnd_parent, OS::GWLP_ID, @hwnd_parent)
      bits = 0
      if (OS::WIN32_VERSION >= OS._version(4, 10))
        bits |= OS::WS_EX_NOINHERITLAYOUT
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          bits |= OS::WS_EX_LAYOUTRTL
        end
      end
      @hwnd_header = OS._create_window_ex(bits, HeaderClass, nil, OS::HDS_BUTTONS | OS::HDS_FULLDRAG | OS::HDS_DRAGDROP | OS::HDS_HIDDEN | OS::WS_CHILD | OS::WS_CLIPSIBLINGS, 0, 0, 0, 0, @hwnd_parent, 0, OS._get_module_handle(nil), nil)
      if ((@hwnd_header).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS._set_window_long_ptr(@hwnd_header, OS::GWLP_ID, @hwnd_header)
      if (OS::IsDBLocale)
        # long
        h_imc = OS._imm_get_context(self.attr_handle)
        OS._imm_associate_context(@hwnd_parent, h_imc)
        OS._imm_associate_context(@hwnd_header, h_imc)
        OS._imm_release_context(self.attr_handle, h_imc)
      end
      # This code is intentionally commented
      # if (!OS.IsPPC) {
      # if ((style & SWT.BORDER) != 0) {
      # int oldExStyle = OS.GetWindowLong (handle, OS.GWL_EXSTYLE);
      # oldExStyle &= ~OS.WS_EX_CLIENTEDGE;
      # OS.SetWindowLong (handle, OS.GWL_EXSTYLE, oldExStyle);
      # }
      # }
      # long
      h_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
      if (!(h_font).equal?(0))
        OS._send_message(@hwnd_header, OS::WM_SETFONT, h_font, 0)
      end
      # long
      hwnd_insert_after = OS._get_window(self.attr_handle, OS::GW_HWNDPREV)
      flags = OS::SWP_NOSIZE | OS::SWP_NOMOVE | OS::SWP_NOACTIVATE
      _set_window_pos(@hwnd_parent, hwnd_insert_after, 0, 0, 0, 0, flags)
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_RANGE | OS::SIF_PAGE
      OS._get_scroll_info(@hwnd_parent, OS::SB_HORZ, info)
      info.attr_n_page = info.attr_n_max + 1
      OS._set_scroll_info(@hwnd_parent, OS::SB_HORZ, info, true)
      OS._get_scroll_info(@hwnd_parent, OS::SB_VERT, info)
      info.attr_n_page = info.attr_n_max + 1
      OS._set_scroll_info(@hwnd_parent, OS::SB_VERT, info, true)
      @custom_draw = true
      deregister
      if (!((old_style & OS::WS_VISIBLE)).equal?(0))
        OS._show_window(@hwnd_parent, OS::SW_SHOW)
      end
      # long
      hwnd_focus = OS._get_focus
      if ((hwnd_focus).equal?(self.attr_handle))
        OS._set_focus(@hwnd_parent)
      end
      OS._set_parent(self.attr_handle, @hwnd_parent)
      if ((hwnd_focus).equal?(self.attr_handle))
        OS._set_focus(self.attr_handle)
      end
      register
      subclass
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(TreeItem).new(4) { nil }
      @columns = Array.typed(TreeColumn).new(4) { nil }
      @item_count = -1
    end
    
    typesig { [] }
    def default_background
      return OS._get_sys_color(OS::COLOR_WINDOW)
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@hwnd_parent).equal?(0))
        self.attr_display.remove_control(@hwnd_parent)
      end
      if (!(@hwnd_header).equal?(0))
        self.attr_display.remove_control(@hwnd_header)
      end
    end
    
    typesig { [::Java::Int, TVITEM, ::Java::Int] }
    # long
    # long
    def deselect(h_item, tv_item, h_ignore_item)
      while (!(h_item).equal?(0))
        if (!(h_item).equal?(h_ignore_item))
          tv_item.attr_h_item = h_item
          OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
        end
        # long
        h_first_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_item)
        deselect(h_first_item, tv_item, h_ignore_item)
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_item)
      end
    end
    
    typesig { [TreeItem] }
    # Deselects an item in the receiver.  If the item was already
    # deselected, it remains deselected.
    # 
    # @param item the item to be deselected
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
    # @since 3.4
    def deselect(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
      tv_item.attr_state_mask = OS::TVIS_SELECTED
      tv_item.attr_h_item = item.attr_handle
      OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
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
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
      tv_item.attr_state_mask = OS::TVIS_SELECTED
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # long
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
        if (!(h_item).equal?(0))
          tv_item.attr_h_item = h_item
          OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
        end
      else
        # long
        old_proc = OS._get_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC)
        OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TreeProc)
        if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
          # long
          h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
          deselect(h_item, tv_item, 0)
        else
          i = 0
          while i < @items.attr_length
            item = @items[i]
            if (!(item).nil?)
              tv_item.attr_h_item = item.attr_handle
              OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
            end
            i += 1
          end
        end
        OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_proc)
      end
    end
    
    typesig { [TreeColumn] }
    def destroy_item(column)
      if ((@hwnd_header).equal?(0))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      index = 0
      while (index < @column_count)
        if ((@columns[index]).equal?(column))
          break
        end
        index += 1
      end
      old_order = Array.typed(::Java::Int).new(@column_count) { 0 }
      OS._send_message(@hwnd_header, OS::HDM_GETORDERARRAY, @column_count, old_order)
      order_index = 0
      while (order_index < @column_count)
        if ((old_order[order_index]).equal?(index))
          break
        end
        order_index += 1
      end
      header_rect = RECT.new
      OS._send_message(@hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)
      if ((OS._send_message(@hwnd_header, OS::HDM_DELETEITEM, index, 0)).equal?(0))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      System.arraycopy(@columns, index + 1, @columns, index, (@column_count -= 1) - index)
      @columns[@column_count] = nil
      i = 0
      while i < @items.attr_length
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
                item.attr_text = !(strings[1]).nil? ? strings[1] : ""
              end
              temp = Array.typed(String).new(@column_count) { nil }
              System.arraycopy(strings, 0, temp, 0, index)
              System.arraycopy(strings, index + 1, temp, index, @column_count - index)
              item.attr_strings = temp
            else
              if ((index).equal?(0))
                item.attr_text = ""
              end
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
      # When the last column is deleted, show the horizontal
      # scroll bar.  Otherwise, left align the first column
      # and redraw the columns to the right.
      if ((@column_count).equal?(0))
        @scroll_width = 0
        if (!hooks(SWT::MeasureItem))
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
            bits &= ~OS::TVS_NOHSCROLL
          end
          OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
        if (!(@item_tool_tip_handle).equal?(0))
          OS._send_message(@item_tool_tip_handle, OS::TTM_SETDELAYTIME, OS::TTDT_INITIAL, 0)
        end
      else
        if ((index).equal?(0))
          @columns[0].attr_style &= ~(SWT::LEFT | SWT::RIGHT | SWT::CENTER)
          @columns[0].attr_style |= SWT::LEFT
          hd_item = HDITEM.new
          hd_item.attr_mask = OS::HDI_FORMAT | OS::HDI_IMAGE
          OS._send_message(@hwnd_header, OS::HDM_GETITEM, index, hd_item)
          hd_item.attr_fmt &= ~OS::HDF_JUSTIFYMASK
          hd_item.attr_fmt |= OS::HDF_LEFT
          OS._send_message(@hwnd_header, OS::HDM_SETITEM, index, hd_item)
        end
        rect = RECT.new
        OS._get_client_rect(self.attr_handle, rect)
        rect.attr_left = header_rect.attr_left
        OS._invalidate_rect(self.attr_handle, rect, true)
      end
      set_scroll_width
      update_image_list
      update_scroll_bar
      if (!(@column_count).equal?(0))
        new_order = Array.typed(::Java::Int).new(@column_count) { 0 }
        OS._send_message(@hwnd_header, OS::HDM_GETORDERARRAY, @column_count, new_order)
        new_columns = Array.typed(TreeColumn).new(@column_count - order_index) { nil }
        i_ = order_index
        while i_ < new_order.attr_length
          new_columns[i_ - order_index] = @columns[new_order[i_]]
          new_columns[i_ - order_index].update_tool_tip(new_order[i_])
          i_ += 1
        end
        i__ = 0
        while i__ < new_columns.attr_length
          if (!new_columns[i__].is_disposed)
            new_columns[i__].send_event(SWT::Move)
          end
          i__ += 1
        end
      end
      # Remove the tool tip item for the header
      if (!(@header_tool_tip_handle).equal?(0))
        lpti = TOOLINFO.new
        lpti.attr_cb_size = TOOLINFO.attr_sizeof
        lpti.attr_u_id = column.attr_id
        lpti.attr_hwnd = @hwnd_header
        OS._send_message(@header_tool_tip_handle, OS::TTM_DELTOOL, 0, lpti)
      end
    end
    
    typesig { [TreeItem, ::Java::Int] }
    # long
    def destroy_item(item, h_item)
      @h_first_index_of = @h_last_index_of = 0
      @item_count = -1
      # Feature in Windows.  When an item is removed that is not
      # visible in the tree because it belongs to a collapsed branch,
      # Windows redraws the tree causing a flash for each item that
      # is removed.  The fix is to detect whether the item is visible,
      # force the widget to be fully painted, turn off redraw, remove
      # the item and validate the damage caused by the removing of
      # the item.
      # 
      # NOTE: This fix is not necessary when double buffering and
      # can cause problems for virtual trees due to the call to
      # UpdateWindow() that flushes outstanding WM_PAINT events,
      # allowing application code to add or remove items during
      # this remove operation.
      # 
      # long
      h_parent = 0
      fix_redraw = false
      if (((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0))
        if ((self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle))
          rect = RECT.new
          fix_redraw = !OS._tree_view_get_item_rect(self.attr_handle, h_item, rect, false)
        end
      end
      if (fix_redraw)
        h_parent = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PARENT, h_item)
        OS._update_window(self.attr_handle)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        # This code is intentionally commented.
        # 
        # OS.SendMessage (handle, OS.WM_SETREDRAW, 0, 0);
      end
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        @ignore_deselect = @ignore_select = @lock_selection = true
      end
      # Feature in Windows.  When an item is deleted and a tool tip
      # is showing, Window requests the new text for the new item
      # that is under the cursor right away.  This means that when
      # multiple items are deleted, the tool tip flashes, showing
      # each new item in the tool tip as it is scrolled into view.
      # The fix is to hide tool tips when any item is deleted.
      # 
      # NOTE:  This only happens on Vista.
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        # long
        hwnd_tool_tip = OS._send_message(self.attr_handle, OS::TVM_GETTOOLTIPS, 0, 0)
        if (!(hwnd_tool_tip).equal?(0))
          OS._send_message(hwnd_tool_tip, OS::TTM_POP, 0, 0)
        end
      end
      @shrink = @ignore_shrink = true
      OS._send_message(self.attr_handle, OS::TVM_DELETEITEM, 0, h_item)
      @ignore_shrink = false
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        @ignore_deselect = @ignore_select = @lock_selection = false
      end
      if (fix_redraw)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
        OS._validate_rect(self.attr_handle, nil)
        # If the item that was deleted was the last child of a tree item that
        # is visible, redraw the parent item to force the +/- to be updated.
        if ((OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_parent)).equal?(0))
          rect = RECT.new
          if (OS._tree_view_get_item_rect(self.attr_handle, h_parent, rect, false))
            OS._invalidate_rect(self.attr_handle, rect, true)
          end
        end
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETCOUNT, 0, 0))
      if ((count).equal?(0))
        if (!(@image_list).nil?)
          OS._send_message(self.attr_handle, OS::TVM_SETIMAGELIST, 0, 0)
          self.attr_display.release_image_list(@image_list)
        end
        @image_list = nil
        if ((@hwnd_parent).equal?(0) && !@lines_visible)
          if (!hooks(SWT::MeasureItem) && !hooks(SWT::EraseItem) && !hooks(SWT::PaintItem))
            @custom_draw = false
          end
        end
        @items = Array.typed(TreeItem).new(4) { nil }
        @scroll_width = 0
        set_scroll_width
      end
      update_scroll_bar
    end
    
    typesig { [::Java::Int] }
    def destroy_scroll_bar(type)
      super(type)
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (((self.attr_style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
        bits &= ~(OS::WS_HSCROLL | OS::WS_VSCROLL)
        bits |= OS::TVS_NOSCROLL
      else
        if (((self.attr_style & SWT::H_SCROLL)).equal?(0))
          bits &= ~OS::WS_HSCROLL
          bits |= OS::TVS_NOHSCROLL
        end
      end
      OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
    end
    
    typesig { [::Java::Boolean] }
    def enable_drag(enabled)
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (enabled && hooks(SWT::DragDetect))
        bits &= ~OS::TVS_DISABLEDRAGDROP
      else
        bits |= OS::TVS_DISABLEDRAGDROP
      end
      OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      # Feature in Windows.  When a tree is given a background color
      # using TVM_SETBKCOLOR and the tree is disabled, Windows draws
      # the tree using the background color rather than the disabled
      # colors.  This is different from the table which draws grayed.
      # The fix is to set the default background color while the tree
      # is disabled and restore it when enabled.
      control = find_background_control
      # Bug in Windows.  On Vista only, Windows does not draw using
      # the background color when the tree is disabled.  The fix is
      # to set the default color, even when the color has not been
      # changed, causing Windows to draw correctly.
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        if ((control).nil?)
          control = self
        end
      end
      if (!(control).nil?)
        if ((control.attr_background_image).nil?)
          __set_background_pixel(enabled ? control.get_background_pixel : -1)
        end
      end
      if (!(@hwnd_parent).equal?(0))
        OS._enable_window(@hwnd_parent, enabled)
      end
      # Feature in Windows.  When the tree has the style
      # TVS_FULLROWSELECT, the background color for the
      # entire row is filled when an item is painted,
      # drawing on top of the sort column color.  The fix
      # is to clear TVS_FULLROWSELECT when a their is
      # as sort column.
      update_full_selection
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(TreeItem), Array.typed(::Java::Int), Array.typed(RECT), Array.typed(RECT)] }
    def find_cell(x, y, item, index, cell_rect, item_rect)
      found = false
      lpht = TVHITTESTINFO.new
      lpht.attr_x = x
      lpht.attr_y = y
      OS._send_message(self.attr_handle, OS::TVM_HITTEST, 0, lpht)
      if (!(lpht.attr_h_item).equal?(0))
        item[0] = __get_item(lpht.attr_h_item)
        pt = POINT.new
        pt.attr_x = x
        pt.attr_y = y
        # long
        h_dc = OS._get_dc(self.attr_handle)
        # long
        old_font = 0
        new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
        if (!(new_font).equal?(0))
          old_font = OS._select_object(h_dc, new_font)
        end
        rect = RECT.new
        if (!(@hwnd_parent).equal?(0))
          OS._get_client_rect(@hwnd_parent, rect)
          OS._map_window_points(@hwnd_parent, self.attr_handle, rect, 2)
        else
          OS._get_client_rect(self.attr_handle, rect)
        end
        count = Math.max(1, @column_count)
        order = Array.typed(::Java::Int).new(count) { 0 }
        if (!(@hwnd_header).equal?(0))
          OS._send_message(@hwnd_header, OS::HDM_GETORDERARRAY, count, order)
        end
        index[0] = 0
        quit = false
        while (index[0] < count && !quit)
          # long
          h_font = item[0].font_handle(order[index[0]])
          if (!(h_font).equal?(-1))
            h_font = OS._select_object(h_dc, h_font)
          end
          cell_rect[0] = item[0].get_bounds(order[index[0]], true, false, true, false, true, h_dc)
          if (cell_rect[0].attr_left > rect.attr_right)
            quit = true
          else
            cell_rect[0].attr_right = Math.min(cell_rect[0].attr_right, rect.attr_right)
            if (OS._pt_in_rect(cell_rect[0], pt))
              if (is_custom_tool_tip)
                event = send_measure_item_event(item[0], order[index[0]], h_dc)
                if (is_disposed || item[0].is_disposed)
                  break
                end
                item_rect[0] = RECT.new
                item_rect[0].attr_left = event.attr_x
                item_rect[0].attr_right = event.attr_x + event.attr_width
                item_rect[0].attr_top = event.attr_y
                item_rect[0].attr_bottom = event.attr_y + event.attr_height
              else
                item_rect[0] = item[0].get_bounds(order[index[0]], true, false, false, false, false, h_dc)
              end
              if (item_rect[0].attr_right > cell_rect[0].attr_right)
                found = true
              end
              quit = true
            end
          end
          if (!(h_font).equal?(-1))
            OS._select_object(h_dc, h_font)
          end
          if (!found)
            index[0] += 1
          end
        end
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
      end
      return found
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def find_index(h_first_item, h_item)
      if ((h_first_item).equal?(0))
        return -1
      end
      if ((h_first_item).equal?(@h_first_index_of))
        if ((@h_first_index_of).equal?(h_item))
          @h_last_index_of = @h_first_index_of
          return @last_index_of = 0
        end
        if ((@h_last_index_of).equal?(h_item))
          return @last_index_of
        end
        # long
        h_prev_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PREVIOUS, @h_last_index_of)
        if ((h_prev_item).equal?(h_item))
          @h_last_index_of = h_prev_item
          return (@last_index_of -= 1)
        end
        # long
        h_next_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, @h_last_index_of)
        if ((h_next_item).equal?(h_item))
          @h_last_index_of = h_next_item
          return (@last_index_of += 1)
        end
        previous_index = @last_index_of - 1
        while (!(h_prev_item).equal?(0) && !(h_prev_item).equal?(h_item))
          h_prev_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PREVIOUS, h_prev_item)
          (previous_index -= 1)
        end
        if ((h_prev_item).equal?(h_item))
          @h_last_index_of = h_prev_item
          return @last_index_of = previous_index
        end
        next_index = @last_index_of + 1
        while (!(h_next_item).equal?(0) && !(h_next_item).equal?(h_item))
          h_next_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_next_item)
          next_index += 1
        end
        if ((h_next_item).equal?(h_item))
          @h_last_index_of = h_next_item
          return @last_index_of = next_index
        end
        return -1
      end
      index = 0
      # long
      h_next_item = h_first_item
      while (!(h_next_item).equal?(0) && !(h_next_item).equal?(h_item))
        h_next_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_next_item)
        index += 1
      end
      if ((h_next_item).equal?(h_item))
        @item_count = -1
        @h_first_index_of = h_first_item
        @h_last_index_of = h_next_item
        return @last_index_of = index
      end
      return -1
    end
    
    typesig { [::Java::Int] }
    # long
    def find_item(h_item)
      return __get_item(h_item)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def find_item(h_first_item, index)
      if ((h_first_item).equal?(0))
        return 0
      end
      if ((h_first_item).equal?(@h_first_index_of))
        if ((index).equal?(0))
          @last_index_of = 0
          return @h_last_index_of = @h_first_index_of
        end
        if ((@last_index_of).equal?(index))
          return @h_last_index_of
        end
        if ((@last_index_of - 1).equal?(index))
          (@last_index_of -= 1)
          return @h_last_index_of = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PREVIOUS, @h_last_index_of)
        end
        if ((@last_index_of + 1).equal?(index))
          @last_index_of += 1
          return @h_last_index_of = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, @h_last_index_of)
        end
        if (index < @last_index_of)
          previous_index = @last_index_of - 1
          # long
          h_prev_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PREVIOUS, @h_last_index_of)
          while (!(h_prev_item).equal?(0) && index < previous_index)
            h_prev_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PREVIOUS, h_prev_item)
            (previous_index -= 1)
          end
          if ((index).equal?(previous_index))
            @last_index_of = previous_index
            return @h_last_index_of = h_prev_item
          end
        else
          next_index = @last_index_of + 1
          # long
          h_next_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, @h_last_index_of)
          while (!(h_next_item).equal?(0) && next_index < index)
            h_next_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_next_item)
            next_index += 1
          end
          if ((index).equal?(next_index))
            @last_index_of = next_index
            return @h_last_index_of = h_next_item
          end
        end
        return 0
      end
      next_index = 0
      # long
      h_next_item = h_first_item
      while (!(h_next_item).equal?(0) && next_index < index)
        h_next_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_next_item)
        next_index += 1
      end
      if ((index).equal?(next_index))
        @item_count = -1
        @last_index_of = next_index
        @h_first_index_of = h_first_item
        return @h_last_index_of = h_next_item
      end
      return 0
    end
    
    typesig { [] }
    def get_focus_item
      # checkWidget ();
      # long
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
      return !(h_item).equal?(0) ? __get_item(h_item) : nil
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
    # 
    # @since 3.1
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
    # @since 3.1
    def get_header_height
      check_widget
      if ((@hwnd_header).equal?(0))
        return 0
      end
      rect = RECT.new
      OS._get_window_rect(@hwnd_header, rect)
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
    # 
    # @since 3.1
    def get_header_visible
      check_widget
      if ((@hwnd_header).equal?(0))
        return false
      end
      bits = OS._get_window_long(@hwnd_header, OS::GWL_STYLE)
      return !((bits & OS::WS_VISIBLE)).equal?(0)
    end
    
    typesig { [] }
    def get_image_size
      if (!(@image_list).nil?)
        return @image_list.get_image_size
      end
      return Point.new(0, get_item_height)
    end
    
    typesig { [] }
    # long
    def get_bottom_item
      # long
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
      if ((h_item).equal?(0))
        return 0
      end
      index = 0
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETVISIBLECOUNT, 0, 0))
      while (index < count)
        # long
        h_next_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXTVISIBLE, h_item)
        if ((h_next_item).equal?(0))
          return h_item
        end
        h_item = h_next_item
        index += 1
      end
      return h_item
    end
    
    typesig { [::Java::Int] }
    # Returns the column at the given, zero-relative index in the
    # receiver. Throws an exception if the index is out of range.
    # Columns are returned in the order that they were created.
    # If no <code>TreeColumn</code>s were created by the programmer,
    # this method will throw <code>ERROR_INVALID_RANGE</code> despite
    # the fact that a single column of data may be visible in the tree.
    # This occurs when the programmer uses the tree like a list, adding
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
    # @see Tree#getColumnOrder()
    # @see Tree#setColumnOrder(int[])
    # @see TreeColumn#getMoveable()
    # @see TreeColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.1
    def get_column(index)
      check_widget
      if (!(0 <= index && index < @column_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @columns[index]
    end
    
    typesig { [] }
    # Returns the number of columns contained in the receiver.
    # If no <code>TreeColumn</code>s were created by the programmer,
    # this value is zero, despite the fact that visually, one column
    # of items may be visible. This occurs when the programmer uses
    # the tree like a list, adding items but never creating a column.
    # 
    # @return the number of columns
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
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
    # @see Tree#setColumnOrder(int[])
    # @see TreeColumn#getMoveable()
    # @see TreeColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.2
    def get_column_order
      check_widget
      if ((@column_count).equal?(0))
        return Array.typed(::Java::Int).new(0) { 0 }
      end
      order = Array.typed(::Java::Int).new(@column_count) { 0 }
      OS._send_message(@hwnd_header, OS::HDM_GETORDERARRAY, @column_count, order)
      return order
    end
    
    typesig { [] }
    # Returns an array of <code>TreeColumn</code>s which are the
    # columns in the receiver. Columns are returned in the order
    # that they were created.  If no <code>TreeColumn</code>s were
    # created by the programmer, the array is empty, despite the fact
    # that visually, one column of items may be visible. This occurs
    # when the programmer uses the tree like a list, adding items but
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
    # @see Tree#getColumnOrder()
    # @see Tree#setColumnOrder(int[])
    # @see TreeColumn#getMoveable()
    # @see TreeColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.1
    def get_columns
      check_widget
      result = Array.typed(TreeColumn).new(@column_count) { nil }
      System.arraycopy(@columns, 0, result, 0, @column_count)
      return result
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
    # 
    # @since 3.1
    def get_item(index)
      check_widget
      if (index < 0)
        error(SWT::ERROR_INVALID_RANGE)
      end
      # long
      h_first_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
      if ((h_first_item).equal?(0))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # long
      h_item = find_item(h_first_item, index)
      if ((h_item).equal?(0))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return __get_item(h_item)
    end
    
    typesig { [NMTVCUSTOMDRAW] }
    def get_item(nmcd)
      # Bug in Windows.  If the lParam field of TVITEM
      # is changed during custom draw using TVM_SETITEM,
      # the lItemlParam field of the NMTVCUSTOMDRAW struct
      # is not updated until the next custom draw.  The
      # fix is to query the field from the item instead
      # of using the struct.
      # 
      # 64
      id = RJava.cast_to_int(nmcd.attr_l_iteml_param)
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        if ((id).equal?(-1))
          tv_item = TVITEM.new
          tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
          tv_item.attr_h_item = nmcd.attr_dw_item_spec
          OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
          # 64
          id = RJava.cast_to_int(tv_item.attr_l_param)
        end
      end
      return __get_item(nmcd.attr_dw_item_spec, id)
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
      lpht = TVHITTESTINFO.new
      lpht.attr_x = point.attr_x
      lpht.attr_y = point.attr_y
      OS._send_message(self.attr_handle, OS::TVM_HITTEST, 0, lpht)
      if (!(lpht.attr_h_item).equal?(0))
        flags = OS::TVHT_ONITEM
        if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          flags |= OS::TVHT_ONITEMRIGHT | OS::TVHT_ONITEMINDENT
        else
          if (hooks(SWT::MeasureItem))
            lpht.attr_flags &= ~(OS::TVHT_ONITEMICON | OS::TVHT_ONITEMLABEL)
            if (hit_test_selection(lpht.attr_h_item, lpht.attr_x, lpht.attr_y))
              lpht.attr_flags |= OS::TVHT_ONITEMICON | OS::TVHT_ONITEMLABEL
            end
          end
        end
        if (!((lpht.attr_flags & flags)).equal?(0))
          return __get_item(lpht.attr_h_item)
        end
      end
      return nil
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver
    # that are direct item children of the receiver.  The
    # number that is returned is the number of roots in the
    # tree.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_count
      check_widget
      # long
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
      if ((h_item).equal?(0))
        return 0
      end
      return get_item_count(h_item)
    end
    
    typesig { [::Java::Int] }
    # long
    def get_item_count(h_item)
      count = 0
      # long
      h_first_item = h_item
      if ((h_item).equal?(@h_first_index_of))
        if (!(@item_count).equal?(-1))
          return @item_count
        end
        h_first_item = @h_last_index_of
        count = @last_index_of
      end
      while (!(h_first_item).equal?(0))
        h_first_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_first_item)
        count += 1
      end
      if ((h_item).equal?(@h_first_index_of))
        @item_count = count
      end
      return count
    end
    
    typesig { [] }
    # Returns the height of the area which would be used to
    # display <em>one</em> of the items in the tree.
    # 
    # @return the height of one item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_height
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMHEIGHT, 0, 0))
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of items contained in the
    # receiver that are direct item children of the receiver.  These
    # are the roots of the tree.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      # long
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
      if ((h_item).equal?(0))
        return Array.typed(TreeItem).new(0) { nil }
      end
      return get_items(h_item)
    end
    
    typesig { [::Java::Int] }
    # long
    def get_items(h_tree_item)
      count = 0
      # long
      h_item = h_tree_item
      while (!(h_item).equal?(0))
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_item)
        count += 1
      end
      index = 0
      result = Array.typed(TreeItem).new(count) { nil }
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
      tv_item.attr_h_item = h_tree_item
      # Feature in Windows.  In some cases an expand or collapse message
      # can occur from within TVM_DELETEITEM.  When this happens, the item
      # being destroyed has been removed from the list of items but has not
      # been deleted from the tree.  The fix is to check for null items and
      # remove them from the list.
      while (!(tv_item.attr_h_item).equal?(0))
        OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
        # 64
        item = __get_item(tv_item.attr_h_item, RJava.cast_to_int(tv_item.attr_l_param))
        if (!(item).nil?)
          result[((index += 1) - 1)] = item
        end
        tv_item.attr_h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, tv_item.attr_h_item)
      end
      if (!(index).equal?(count))
        new_result = Array.typed(TreeItem).new(index) { nil }
        System.arraycopy(result, 0, new_result, 0, index)
        result = new_result
      end
      return result
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver's lines are visible,
    # and <code>false</code> otherwise.
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
    # 
    # @since 3.1
    def get_lines_visible
      check_widget
      return @lines_visible
    end
    
    typesig { [::Java::Int, TVITEM] }
    # long
    # long
    def get_next_selection(h_item, tv_item)
      while (!(h_item).equal?(0))
        state = 0
        if (OS::IsWinCE)
          tv_item.attr_h_item = h_item
          OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
          state = tv_item.attr_state
        else
          # 64
          state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMSTATE, h_item, OS::TVIS_SELECTED))
        end
        if (!((state & OS::TVIS_SELECTED)).equal?(0))
          return h_item
        end
        # long
        h_first_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_item)
        # long
        h_selected = get_next_selection(h_first_item, tv_item)
        if (!(h_selected).equal?(0))
          return h_selected
        end
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_item)
      end
      return 0
    end
    
    typesig { [] }
    # Returns the receiver's parent item, which must be a
    # <code>TreeItem</code> or null when the receiver is a
    # root.
    # 
    # @return the receiver's parent item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent_item
      check_widget
      return nil
    end
    
    typesig { [::Java::Int, TVITEM, Array.typed(TreeItem), ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    # long
    def get_selection(h_item, tv_item, selection, index, count, big_selection, all)
      while (!(h_item).equal?(0))
        if (OS::IsWinCE || big_selection)
          tv_item.attr_h_item = h_item
          OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
          if (!((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0))
            if (!(selection).nil? && index < selection.attr_length)
              # 64
              selection[index] = __get_item(h_item, RJava.cast_to_int(tv_item.attr_l_param))
            end
            index += 1
          end
        else
          # 64
          state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMSTATE, h_item, OS::TVIS_SELECTED))
          if (!((state & OS::TVIS_SELECTED)).equal?(0))
            if (!(tv_item).nil? && !(selection).nil? && index < selection.attr_length)
              tv_item.attr_h_item = h_item
              OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
              # 64
              selection[index] = __get_item(h_item, RJava.cast_to_int(tv_item.attr_l_param))
            end
            index += 1
          end
        end
        if ((index).equal?(count))
          break
        end
        if (all)
          # long
          h_first_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_item)
          if (((index = get_selection(h_first_item, tv_item, selection, index, count, big_selection, all))).equal?(count))
            break
          end
          h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_item)
        else
          h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXTVISIBLE, h_item)
        end
      end
      return index
    end
    
    typesig { [] }
    # Returns an array of <code>TreeItem</code>s that are currently
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
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # long
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
        if ((h_item).equal?(0))
          return Array.typed(TreeItem).new(0) { nil }
        end
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM | OS::TVIF_STATE
        tv_item.attr_h_item = h_item
        OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
        if (((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0))
          return Array.typed(TreeItem).new(0) { nil }
        end
        # 64
        return Array.typed(TreeItem).new([__get_item(tv_item.attr_h_item, RJava.cast_to_int(tv_item.attr_l_param))])
      end
      count = 0
      guess = Array.typed(TreeItem).new(!((self.attr_style & SWT::VIRTUAL)).equal?(0) ? 8 : 1) { nil }
      # long
      old_proc = OS._get_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC)
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TreeProc)
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM | OS::TVIF_STATE
        # long
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
        count = get_selection(h_item, tv_item, guess, 0, -1, false, true)
      else
        tv_item = nil
        if (OS::IsWinCE)
          tv_item = TVITEM.new
          tv_item.attr_mask = OS::TVIF_STATE
        end
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil?)
            # long
            h_item = item.attr_handle
            state = 0
            if (OS::IsWinCE)
              tv_item.attr_h_item = h_item
              OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
              state = tv_item.attr_state
            else
              # 64
              state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMSTATE, h_item, OS::TVIS_SELECTED))
            end
            if (!((state & OS::TVIS_SELECTED)).equal?(0))
              if (count < guess.attr_length)
                guess[count] = item
              end
              count += 1
            end
          end
          i += 1
        end
      end
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_proc)
      if ((count).equal?(0))
        return Array.typed(TreeItem).new(0) { nil }
      end
      if ((count).equal?(guess.attr_length))
        return guess
      end
      result = Array.typed(TreeItem).new(count) { nil }
      if (count < guess.attr_length)
        System.arraycopy(guess, 0, result, 0, count)
        return result
      end
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TreeProc)
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM | OS::TVIF_STATE
      # long
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
      # 64
      item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETCOUNT, 0, 0))
      big_selection = result.attr_length > item_count / 2
      if (!(count).equal?(get_selection(h_item, tv_item, result, 0, count, big_selection, false)))
        get_selection(h_item, tv_item, result, 0, count, big_selection, true)
      end
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_proc)
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
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # long
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
        if ((h_item).equal?(0))
          return 0
        end
        state = 0
        if (OS::IsWinCE)
          tv_item = TVITEM.new
          tv_item.attr_h_item = h_item
          tv_item.attr_mask = OS::TVIF_STATE
          OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
          state = tv_item.attr_state
        else
          # 64
          state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMSTATE, h_item, OS::TVIS_SELECTED))
        end
        return ((state & OS::TVIS_SELECTED)).equal?(0) ? 0 : 1
      end
      count = 0
      # long
      old_proc = OS._get_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC)
      tv_item = nil
      if (OS::IsWinCE)
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_STATE
      end
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TreeProc)
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        # long
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
        count = get_selection(h_item, tv_item, nil, 0, -1, false, true)
      else
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil?)
            # long
            h_item = item.attr_handle
            state = 0
            if (OS::IsWinCE)
              tv_item.attr_h_item = h_item
              OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
              state = tv_item.attr_state
            else
              # 64
              state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMSTATE, h_item, OS::TVIS_SELECTED))
            end
            if (!((state & OS::TVIS_SELECTED)).equal?(0))
              count += 1
            end
          end
          i += 1
        end
      end
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_proc)
      return count
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
    # @see #setSortColumn(TreeColumn)
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
    # Returns the item which is currently at the top of the receiver.
    # This item can change when items are expanded, collapsed, scrolled
    # or new items are added or removed.
    # 
    # @return the item at the top of the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def get_top_item
      check_widget
      # long
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
      return !(h_item).equal?(0) ? __get_item(h_item) : nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def hit_test_selection(h_item, x, y)
      if ((h_item).equal?(0))
        return false
      end
      item = __get_item(h_item)
      if ((item).nil?)
        return false
      end
      if (!hooks(SWT::MeasureItem))
        return false
      end
      result = false
      # BUG? - moved columns, only hittest first column
      # BUG? - check drag detect
      order = Array.typed(::Java::Int).new(1) { 0 }
      index = Array.typed(::Java::Int).new(1) { 0 }
      # long
      h_dc = OS._get_dc(self.attr_handle)
      # long
      old_font = 0
      new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
      if (!(new_font).equal?(0))
        old_font = OS._select_object(h_dc, new_font)
      end
      # long
      h_font = item.font_handle(order[index[0]])
      if (!(h_font).equal?(-1))
        h_font = OS._select_object(h_dc, h_font)
      end
      event = send_measure_item_event(item, order[index[0]], h_dc)
      if (event.get_bounds.contains(x, y))
        result = true
      end
      if (!(new_font).equal?(0))
        OS._select_object(h_dc, old_font)
      end
      OS._release_dc(self.attr_handle, h_dc)
      # if (isDisposed () || item.isDisposed ()) return false;
      return result
    end
    
    typesig { [Image, ::Java::Int] }
    def image_index(image, index)
      if ((image).nil?)
        return OS::I_IMAGENONE
      end
      if ((@image_list).nil?)
        bounds = image.get_bounds
        @image_list = self.attr_display.get_image_list(self.attr_style & SWT::RIGHT_TO_LEFT, bounds.attr_width, bounds.attr_height)
      end
      image_index = @image_list.index_of(image)
      if ((image_index).equal?(-1))
        image_index = @image_list.add(image)
      end
      if ((@hwnd_header).equal?(0) || (OS._send_message(@hwnd_header, OS::HDM_ORDERTOINDEX, 0, 0)).equal?(index))
        # Feature in Windows.  When setting the same image list multiple
        # times, Windows does work making this operation slow.  The fix
        # is to test for the same image list before setting the new one.
        # 
        # long
        h_image_list = @image_list.get_handle
        # long
        h_old_image_list = OS._send_message(self.attr_handle, OS::TVM_GETIMAGELIST, OS::TVSIL_NORMAL, 0)
        if (!(h_old_image_list).equal?(h_image_list))
          OS._send_message(self.attr_handle, OS::TVM_SETIMAGELIST, OS::TVSIL_NORMAL, h_image_list)
          update_scroll_bar
        end
      end
      return image_index
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
        if (!(@hwnd_header).equal?(0))
          OS._send_message(@hwnd_header, OS::HDM_SETIMAGELIST, 0, h_image_list)
        end
        update_scroll_bar
        return index
      end
      index = @header_image_list.index_of(image)
      if (!(index).equal?(-1))
        return index
      end
      return @header_image_list.add(image)
    end
    
    typesig { [TreeColumn] }
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
    # 
    # @since 3.1
    def index_of(column)
      check_widget
      if ((column).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (column.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
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
    
    typesig { [TreeItem] }
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
    # <li>ERROR_INVALID_ARGUMENT - if the item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def index_of(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # long
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
      return (h_item).equal?(0) ? -1 : find_index(h_item, item.attr_handle)
    end
    
    typesig { [] }
    def is_custom_tool_tip
      return hooks(SWT::MeasureItem)
    end
    
    typesig { [NMTVCUSTOMDRAW] }
    def is_item_selected(nmcd)
      selected = false
      if (OS._is_window_enabled(self.attr_handle))
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
        tv_item.attr_h_item = nmcd.attr_dw_item_spec
        OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
        if (!((tv_item.attr_state & (OS::TVIS_SELECTED | OS::TVIS_DROPHILITED))).equal?(0))
          selected = true
          # Feature in Windows.  When the mouse is pressed and the
          # selection is first drawn for a tree, the previously
          # selected item is redrawn but the the TVIS_SELECTED bits
          # are not cleared.  When the user moves the mouse slightly
          # and a drag and drop operation is not started, the item is
          # drawn again and this time with TVIS_SELECTED is cleared.
          # This means that an item that contains colored cells will
          # not draw with the correct background until the mouse is
          # moved.  The fix is to test for the selection colors and
          # guess that the item is not selected.
          # 
          # NOTE: This code does not work when the foreground and
          # background of the tree are set to the selection colors
          # but this does not happen in a regular application.
          if ((self.attr_handle).equal?(OS._get_focus))
            if (!(OS._get_text_color(nmcd.attr_hdc)).equal?(OS._get_sys_color(OS::COLOR_HIGHLIGHTTEXT)))
              selected = false
            else
              if (!(OS._get_bk_color(nmcd.attr_hdc)).equal?(OS._get_sys_color(OS::COLOR_HIGHLIGHT)))
                selected = false
              end
            end
          end
        else
          if ((nmcd.attr_dw_draw_stage).equal?(OS::CDDS_ITEMPOSTPAINT))
            # Feature in Windows.  When the mouse is pressed and the
            # selection is first drawn for a tree, the item is drawn
            # selected, but the TVIS_SELECTED bits for the item are
            # not set.  When the user moves the mouse slightly and
            # a drag and drop operation is not started, the item is
            # drawn again and this time TVIS_SELECTED is set.  This
            # means that an item that is in a tree that has the style
            # TVS_FULLROWSELECT and that also contains colored cells
            # will not draw the entire row selected until the user
            # moves the mouse.  The fix is to test for the selection
            # colors and guess that the item is selected.
            # 
            # NOTE: This code does not work when the foreground and
            # background of the tree are set to the selection colors
            # but this does not happen in a regular application.
            if ((OS._get_text_color(nmcd.attr_hdc)).equal?(OS._get_sys_color(OS::COLOR_HIGHLIGHTTEXT)))
              if ((OS._get_bk_color(nmcd.attr_hdc)).equal?(OS._get_sys_color(OS::COLOR_HIGHLIGHT)))
                selected = true
              end
            end
          end
        end
      end
      return selected
    end
    
    typesig { [] }
    def redraw_selection
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # long
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
        if (!(h_item).equal?(0))
          rect = RECT.new
          if (OS._tree_view_get_item_rect(self.attr_handle, h_item, rect, false))
            OS._invalidate_rect(self.attr_handle, rect, true)
          end
        end
      else
        # long
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
        if (!(h_item).equal?(0))
          tv_item = nil
          if (OS::IsWinCE)
            tv_item = TVITEM.new
            tv_item.attr_mask = OS::TVIF_STATE
          end
          rect = RECT.new
          index = 0
          # 64
          count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETVISIBLECOUNT, 0, 0))
          while (index <= count && !(h_item).equal?(0))
            state = 0
            if (OS::IsWinCE)
              tv_item.attr_h_item = h_item
              OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
              state = tv_item.attr_state
            else
              # 64
              state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMSTATE, h_item, OS::TVIS_SELECTED))
            end
            if (!((state & OS::TVIS_SELECTED)).equal?(0))
              if (OS._tree_view_get_item_rect(self.attr_handle, h_item, rect, false))
                OS._invalidate_rect(self.attr_handle, rect, true)
              end
            end
            h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXTVISIBLE, h_item)
            index += 1
          end
        end
      end
    end
    
    typesig { [] }
    def register
      super
      if (!(@hwnd_parent).equal?(0))
        self.attr_display.add_control(@hwnd_parent, self)
      end
      if (!(@hwnd_header).equal?(0))
        self.attr_display.add_control(@hwnd_header, self)
      end
    end
    
    typesig { [::Java::Int, TVITEM, ::Java::Boolean] }
    # long
    def release_item(h_item, tv_item, release)
      if ((h_item).equal?(@h_anchor))
        @h_anchor = 0
      end
      if ((h_item).equal?(@h_insert))
        @h_insert = 0
      end
      tv_item.attr_h_item = h_item
      if (!(OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)).equal?(0))
        if (!(tv_item.attr_l_param).equal?(-1))
          if (tv_item.attr_l_param < @last_id)
            # 64
            @last_id = RJava.cast_to_int(tv_item.attr_l_param)
          end
          if (release)
            # 64
            item = @items[RJava.cast_to_int(tv_item.attr_l_param)]
            if (!(item).nil?)
              item.release(false)
            end
          end
          # 64
          @items[RJava.cast_to_int(tv_item.attr_l_param)] = nil
        end
      end
    end
    
    typesig { [::Java::Int, TVITEM] }
    # long
    def release_items(h_item, tv_item)
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_item)
      while (!(h_item).equal?(0))
        release_items(h_item, tv_item)
        release_item(h_item, tv_item, true)
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_item)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      @hwnd_parent = @hwnd_header = 0
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@items).nil?)
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil? && !item.is_disposed)
            item.release(false)
          end
          i += 1
        end
        @items = nil
      end
      if (!(@columns).nil?)
        i = 0
        while i < @columns.attr_length
          column = @columns[i]
          if (!(column).nil? && !column.is_disposed)
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
      # Feature in Windows.  For some reason, when TVM_GETIMAGELIST
      # or TVM_SETIMAGELIST is sent, the tree issues NM_CUSTOMDRAW
      # messages.  This behavior is unwanted when the tree is being
      # disposed.  The fix is to ignore NM_CUSTOMDRAW messages by
      # clearing the custom draw flag.
      # 
      # NOTE: This only happens on Windows XP.
      @custom_draw = false
      if (!(@image_list).nil?)
        OS._send_message(self.attr_handle, OS::TVM_SETIMAGELIST, OS::TVSIL_NORMAL, 0)
        self.attr_display.release_image_list(@image_list)
      end
      if (!(@header_image_list).nil?)
        if (!(@hwnd_header).equal?(0))
          OS._send_message(@hwnd_header, OS::HDM_SETIMAGELIST, 0, 0)
        end
        self.attr_display.release_image_list(@header_image_list)
      end
      @image_list = @header_image_list = nil
      # long
      h_state_list = OS._send_message(self.attr_handle, OS::TVM_GETIMAGELIST, OS::TVSIL_STATE, 0)
      OS._send_message(self.attr_handle, OS::TVM_SETIMAGELIST, OS::TVSIL_STATE, 0)
      if (!(h_state_list).equal?(0))
        OS._image_list_destroy(h_state_list)
      end
      if (!(@item_tool_tip_handle).equal?(0))
        OS._destroy_window(@item_tool_tip_handle)
      end
      if (!(@header_tool_tip_handle).equal?(0))
        OS._destroy_window(@header_tool_tip_handle)
      end
      @item_tool_tip_handle = @header_tool_tip_handle = 0
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
      @h_first_index_of = @h_last_index_of = 0
      @item_count = -1
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil? && !item.is_disposed)
          item.release(false)
        end
        i += 1
      end
      @ignore_deselect = @ignore_select = true
      redraw_ = (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle)
      if (redraw_)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
      end
      @shrink = @ignore_shrink = true
      # long
      result = OS._send_message(self.attr_handle, OS::TVM_DELETEITEM, 0, OS::TVI_ROOT)
      @ignore_shrink = false
      if (redraw_)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
        OS._invalidate_rect(self.attr_handle, nil, true)
      end
      @ignore_deselect = @ignore_select = false
      if ((result).equal?(0))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      if (!(@image_list).nil?)
        OS._send_message(self.attr_handle, OS::TVM_SETIMAGELIST, 0, 0)
        self.attr_display.release_image_list(@image_list)
      end
      @image_list = nil
      if ((@hwnd_parent).equal?(0) && !@lines_visible)
        if (!hooks(SWT::MeasureItem) && !hooks(SWT::EraseItem) && !hooks(SWT::PaintItem))
          @custom_draw = false
        end
      end
      @h_anchor = @h_insert = @h_first_index_of = @h_last_index_of = 0
      @item_count = -1
      @items = Array.typed(TreeItem).new(4) { nil }
      @scroll_width = 0
      set_scroll_width
      update_scroll_bar
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
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      self.attr_event_table.unhook(SWT::Selection, listener)
      self.attr_event_table.unhook(SWT::DefaultSelection, listener)
    end
    
    typesig { [TreeListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when items in the receiver are expanded or collapsed.
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
    # @see TreeListener
    # @see #addTreeListener
    def remove_tree_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Expand, listener)
      self.attr_event_table.unhook(SWT::Collapse, listener)
    end
    
    typesig { [TreeItem, ::Java::Boolean] }
    # Display a mark indicating the point at which an item will be inserted.
    # The drop insert item has a visual hint to show where a dragged item
    # will be inserted when dropped on the tree.
    # 
    # @param item the insert item.  Null will clear the insertion mark.
    # @param before true places the insert mark above 'item'. false places
    # the insert mark below 'item'.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_insert_mark(item, before)
      check_widget
      # long
      h_item = 0
      if (!(item).nil?)
        if (item.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        h_item = item.attr_handle
      end
      @h_insert = h_item
      @insert_after = !before
      OS._send_message(self.attr_handle, OS::TVM_SETINSERTMARK, @insert_after ? 1 : 0, @h_insert)
    end
    
    typesig { [::Java::Int] }
    # Sets the number of root-level items contained in the receiver.
    # 
    # @param count the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_item_count(count)
      check_widget
      count = Math.max(0, count)
      # long
      h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
      set_item_count(count, OS::TVGN_ROOT, h_item)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def set_item_count(count, h_parent, h_item)
      redraw_ = false
      if ((OS._send_message(self.attr_handle, OS::TVM_GETCOUNT, 0, 0)).equal?(0))
        redraw_ = (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle)
        if (redraw_)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
      end
      item_count = 0
      while (!(h_item).equal?(0) && item_count < count)
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_item)
        item_count += 1
      end
      expanded = false
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
      if (!redraw_ && !((self.attr_style & SWT::VIRTUAL)).equal?(0))
        if (OS::IsWinCE)
          tv_item.attr_h_item = h_parent
          tv_item.attr_mask = OS::TVIF_STATE
          OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
          expanded = !((tv_item.attr_state & OS::TVIS_EXPANDED)).equal?(0)
        else
          # Bug in Windows.  Despite the fact that TVM_GETITEMSTATE claims
          # to return only the bits specified by the stateMask, when called
          # with TVIS_EXPANDED, the entire state is returned.  The fix is
          # to explicitly check for the TVIS_EXPANDED bit.
          # 
          # 64
          state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMSTATE, h_parent, OS::TVIS_EXPANDED))
          expanded = !((state & OS::TVIS_EXPANDED)).equal?(0)
        end
      end
      while (!(h_item).equal?(0))
        tv_item.attr_h_item = h_item
        OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_item)
        # 64
        item = !(tv_item.attr_l_param).equal?(-1) ? @items[RJava.cast_to_int(tv_item.attr_l_param)] : nil
        if (!(item).nil? && !item.is_disposed)
          item.dispose
        else
          release_item(tv_item.attr_h_item, tv_item, false)
          destroy_item(nil, tv_item.attr_h_item)
        end
      end
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        i = item_count
        while i < count
          if (expanded)
            @ignore_shrink = true
          end
          create_item(nil, h_parent, OS::TVI_LAST, 0)
          if (expanded)
            @ignore_shrink = false
          end
          i += 1
        end
      else
        @shrink = true
        extra = Math.max(4, (count + 3) / 4 * 4)
        new_items = Array.typed(TreeItem).new(@items.attr_length + extra) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
        i = item_count
        while i < count
          TreeItem.new(self, SWT::NONE, h_parent, OS::TVI_LAST, 0)
          i += 1
        end
      end
      if (redraw_)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
        OS._invalidate_rect(self.attr_handle, nil, true)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the height of the area which would be used to
    # display <em>one</em> of the items in the tree.
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
      OS._send_message(self.attr_handle, OS::TVM_SETITEMHEIGHT, item_height, 0)
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver's lines as visible if the argument is <code>true</code>,
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
    # 
    # @since 3.1
    def set_lines_visible(show)
      check_widget
      if ((@lines_visible).equal?(show))
        return
      end
      @lines_visible = show
      if ((@hwnd_parent).equal?(0) && @lines_visible)
        @custom_draw = true
      end
      OS._invalidate_rect(self.attr_handle, nil, true)
    end
    
    typesig { [] }
    # long
    def scrolled_handle
      if ((@hwnd_header).equal?(0))
        return self.attr_handle
      end
      return (@column_count).equal?(0) && (@scroll_width).equal?(0) ? self.attr_handle : @hwnd_parent
    end
    
    typesig { [::Java::Int, TVITEM] }
    # long
    def select(h_item, tv_item)
      while (!(h_item).equal?(0))
        tv_item.attr_h_item = h_item
        OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
        # long
        h_first_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_item)
        select(h_first_item, tv_item)
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_item)
      end
    end
    
    typesig { [TreeItem] }
    # Selects an item in the receiver.  If the item was already
    # selected, it remains selected.
    # 
    # @param item the item to be selected
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
    # @since 3.4
    def select(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # long
        h_item = item.attr_handle
        state = 0
        if (OS::IsWinCE)
          tv_item = TVITEM.new
          tv_item.attr_h_item = h_item
          tv_item.attr_mask = OS::TVIF_STATE
          OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
          state = tv_item.attr_state
        else
          # 64
          state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMSTATE, h_item, OS::TVIS_SELECTED))
        end
        if (!((state & OS::TVIS_SELECTED)).equal?(0))
          return
        end
        # Feature in Windows.  When an item is selected with
        # TVM_SELECTITEM and TVGN_CARET, the tree expands and
        # scrolls to show the new selected item.  Unfortunately,
        # there is no other way in Windows to set the focus
        # and select an item.  The fix is to save the current
        # scroll bar positions, turn off redraw, select the item,
        # then scroll back to the original position and redraw
        # the entire tree.
        h_info = nil
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (((bits & (OS::TVS_NOHSCROLL | OS::TVS_NOSCROLL))).equal?(0))
          h_info = SCROLLINFO.new
          h_info.attr_cb_size = SCROLLINFO.attr_sizeof
          h_info.attr_f_mask = OS::SIF_ALL
          OS._get_scroll_info(self.attr_handle, OS::SB_HORZ, h_info)
        end
        v_info = SCROLLINFO.new
        v_info.attr_cb_size = SCROLLINFO.attr_sizeof
        v_info.attr_f_mask = OS::SIF_ALL
        OS._get_scroll_info(self.attr_handle, OS::SB_VERT, v_info)
        redraw_ = (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle)
        if (redraw_)
          OS._update_window(self.attr_handle)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
        set_selection(item)
        if (!(h_info).nil?)
          # long
          h_thumb = OS._makelparam(OS::SB_THUMBPOSITION, h_info.attr_n_pos)
          OS._send_message(self.attr_handle, OS::WM_HSCROLL, h_thumb, 0)
        end
        # long
        v_thumb = OS._makelparam(OS::SB_THUMBPOSITION, v_info.attr_n_pos)
        OS._send_message(self.attr_handle, OS::WM_VSCROLL, v_thumb, 0)
        if (redraw_)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._invalidate_rect(self.attr_handle, nil, true)
          if (((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0))
            old_style = self.attr_style
            self.attr_style |= SWT::DOUBLE_BUFFERED
            OS._update_window(self.attr_handle)
            self.attr_style = old_style
          end
        end
        return
      end
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
      tv_item.attr_state_mask = OS::TVIS_SELECTED
      tv_item.attr_state = OS::TVIS_SELECTED
      tv_item.attr_h_item = item.attr_handle
      OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
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
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
      tv_item.attr_state = OS::TVIS_SELECTED
      tv_item.attr_state_mask = OS::TVIS_SELECTED
      # long
      old_proc = OS._get_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC)
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TreeProc)
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        # long
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
        select(h_item, tv_item)
      else
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil?)
            tv_item.attr_h_item = item.attr_handle
            OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
          end
          i += 1
        end
      end
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_proc)
    end
    
    typesig { [TreeItem, NMTTCUSTOMDRAW, ::Java::Int, RECT] }
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
    
    typesig { [TreeItem, ::Java::Int, ::Java::Int] }
    # long
    def send_measure_item_event(item, index, h_dc)
      item_rect = item.get_bounds(index, true, true, false, false, false, h_dc)
      n_saved_dc = OS._save_dc(h_dc)
      data = SwtGCData.new
      data.attr_device = self.attr_display
      data.attr_font = item.get_font(index)
      gc = SwtGC.win32_new(h_dc, data)
      event = Event.new
      event.attr_item = item
      event.attr_gc = gc
      event.attr_index = index
      event.attr_x = item_rect.attr_left
      event.attr_y = item_rect.attr_top
      event.attr_width = item_rect.attr_right - item_rect.attr_left
      event.attr_height = item_rect.attr_bottom - item_rect.attr_top
      send_event(SWT::MeasureItem, event)
      event.attr_gc = nil
      gc.dispose
      OS._restore_dc(h_dc, n_saved_dc)
      if (is_disposed || item.is_disposed)
        return nil
      end
      if (!(@hwnd_header).equal?(0))
        if ((@column_count).equal?(0))
          if (event.attr_x + event.attr_width > @scroll_width)
            set_scroll_width(@scroll_width = event.attr_x + event.attr_width)
          end
        end
      end
      if (event.attr_height > get_item_height)
        set_item_height(event.attr_height)
      end
      return event
    end
    
    typesig { [TreeItem, NMTTCUSTOMDRAW, ::Java::Int, RECT] }
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
        # Feature in Windows.  If TVM_SETBKCOLOR is never
        # used to set the background color of a tree, the
        # background color of the lines and the plus/minus
        # will be drawn using the default background color,
        # not the HBRUSH returned from WM_CTLCOLOR.  The fix
        # is to set the background color to the default (when
        # it is already the default) to make Windows use the
        # brush.
        if ((OS._send_message(self.attr_handle, OS::TVM_GETBKCOLOR, 0, 0)).equal?(-1))
          OS._send_message(self.attr_handle, OS::TVM_SETBKCOLOR, 0, -1)
        end
        __set_background_pixel(-1)
      else
        control = find_background_control
        if ((control).nil?)
          control = self
        end
        if ((control.attr_background_image).nil?)
          set_background_pixel(control.get_background_pixel)
        end
      end
      # Feature in Windows.  When the tree has the style
      # TVS_FULLROWSELECT, the background color for the
      # entire row is filled when an item is painted,
      # drawing on top of the background image.  The fix
      # is to clear TVS_FULLROWSELECT when a background
      # image is set.
      update_full_selection
    end
    
    typesig { [::Java::Int] }
    def set_background_pixel(pixel)
      control = find_image_control
      if (!(control).nil?)
        set_background_image(control.attr_background_image)
        return
      end
      # Feature in Windows.  When a tree is given a background color
      # using TVM_SETBKCOLOR and the tree is disabled, Windows draws
      # the tree using the background color rather than the disabled
      # colors.  This is different from the table which draws grayed.
      # The fix is to set the default background color while the tree
      # is disabled and restore it when enabled.
      if (OS._is_window_enabled(self.attr_handle))
        __set_background_pixel(pixel)
      end
      # Feature in Windows.  When the tree has the style
      # TVS_FULLROWSELECT, the background color for the
      # entire row is filled when an item is painted,
      # drawing on top of the background image.  The fix
      # is to restore TVS_FULLROWSELECT when a background
      # color is set.
      update_full_selection
    end
    
    typesig { [] }
    def set_cursor
      # Bug in Windows.  Under certain circumstances, when WM_SETCURSOR
      # is sent from SendMessage(), Windows GP's in the window proc for
      # the tree.  The fix is to avoid calling the tree window proc and
      # set the cursor for the tree outside of WM_SETCURSOR.
      # 
      # NOTE:  This code assumes that the default cursor for the tree
      # is IDC_ARROW.
      cursor = find_cursor
      # long
      h_cursor = (cursor).nil? ? OS._load_cursor(0, OS::IDC_ARROW) : cursor.attr_handle
      OS._set_cursor(h_cursor)
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
    # @see Tree#getColumnOrder()
    # @see TreeColumn#getMoveable()
    # @see TreeColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.2
    def set_column_order(order)
      check_widget
      if ((order).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
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
      OS._send_message(@hwnd_header, OS::HDM_GETORDERARRAY, @column_count, old_order)
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
          OS._send_message(@hwnd_header, OS::HDM_GETITEMRECT, i_, old_rects[i_])
          i_ += 1
        end
        OS._send_message(@hwnd_header, OS::HDM_SETORDERARRAY, order.attr_length, order)
        OS._invalidate_rect(self.attr_handle, nil, true)
        update_image_list
        new_columns = Array.typed(TreeColumn).new(@column_count) { nil }
        System.arraycopy(@columns, 0, new_columns, 0, @column_count)
        new_rect = RECT.new
        i__ = 0
        while i__ < @column_count
          column = new_columns[i__]
          if (!column.is_disposed)
            OS._send_message(@hwnd_header, OS::HDM_GETITEMRECT, i__, new_rect)
            if (!(new_rect.attr_left).equal?(old_rects[i__].attr_left))
              column.update_tool_tip(i__)
              column.send_event(SWT::Move)
            end
          end
          i__ += 1
        end
      end
    end
    
    typesig { [] }
    def set_checkbox_image_list
      if (((self.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      count = 5
      flags = 0
      if (OS::IsWinCE)
        flags |= OS::ILC_COLOR
      else
        if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
          flags |= OS::ILC_COLOR32
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
          flags |= OS::ILC_MASK
        end
      end
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        flags |= OS::ILC_MIRROR
      end
      # 64
      height = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMHEIGHT, 0, 0))
      width = height
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
      # NOTE: DrawFrameControl() draws a black and white
      # mask when not drawing a push button.  In order to
      # make the box surrounding the check mark transparent,
      # fill it with a color that is neither black or white.
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
      OS._set_rect(rect, left + width, top, left + width + item_width, top + item_height)
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
      # long
      h_old_state_list = OS._send_message(self.attr_handle, OS::TVM_GETIMAGELIST, OS::TVSIL_STATE, 0)
      OS._send_message(self.attr_handle, OS::TVM_SETIMAGELIST, OS::TVSIL_STATE, h_state_list)
      if (!(h_old_state_list).equal?(0))
        OS._image_list_destroy(h_old_state_list)
      end
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      super(font)
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        set_checkbox_image_list
      end
    end
    
    typesig { [::Java::Int] }
    def set_foreground_pixel(pixel)
      # Bug in Windows.  When the tree is using the explorer
      # theme, it does not use COLOR_WINDOW_TEXT for the
      # foreground.  When TVM_SETTEXTCOLOR is called with -1,
      # it resets the color to black, not COLOR_WINDOW_TEXT.
      # The fix is to explicitly set the color.
      if (@explorer_theme)
        if ((pixel).equal?(-1))
          pixel = default_foreground
        end
      end
      OS._send_message(self.attr_handle, OS::TVM_SETTEXTCOLOR, 0, pixel)
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
    # 
    # @since 3.1
    def set_header_visible(show)
      check_widget
      if ((@hwnd_header).equal?(0))
        if (!show)
          return
        end
        create_parent
      end
      bits = OS._get_window_long(@hwnd_header, OS::GWL_STYLE)
      if (show)
        if (((bits & OS::HDS_HIDDEN)).equal?(0))
          return
        end
        bits &= ~OS::HDS_HIDDEN
        OS._set_window_long(@hwnd_header, OS::GWL_STYLE, bits)
        OS._show_window(@hwnd_header, OS::SW_SHOW)
      else
        if (!((bits & OS::HDS_HIDDEN)).equal?(0))
          return
        end
        bits |= OS::HDS_HIDDEN
        OS._set_window_long(@hwnd_header, OS::GWL_STYLE, bits)
        OS._show_window(@hwnd_header, OS::SW_HIDE)
      end
      set_scroll_width
      update_header_tool_tips
      update_scroll_bar
    end
    
    typesig { [::Java::Boolean] }
    def set_redraw(redraw_)
      check_widget
      # Feature in Windows.  When WM_SETREDRAW is used to
      # turn off redraw, the scroll bars are updated when
      # items are added and removed.  The fix is to call
      # the default window proc to stop all drawing.
      # 
      # Bug in Windows.  For some reason, when WM_SETREDRAW
      # is used to turn redraw on for a tree and the tree
      # contains no items, the last item in the tree does
      # not redraw properly.  If the tree has only one item,
      # that item is not drawn.  If another window is dragged
      # on top of the item, parts of the item are redrawn
      # and erased at random.  The fix is to ensure that this
      # case doesn't happen by inserting and deleting an item
      # when redraw is turned on and there are no items in
      # the tree.
      # 
      # long
      h_item = 0
      if (redraw_)
        if ((self.attr_draw_count).equal?(1))
          # 64
          count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETCOUNT, 0, 0))
          if ((count).equal?(0))
            tv_insert = TVINSERTSTRUCT.new
            tv_insert.attr_h_insert_after = OS::TVI_FIRST
            h_item = OS._send_message(self.attr_handle, OS::TVM_INSERTITEM, 0, tv_insert)
          end
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          update_scroll_bar
        end
      end
      super(redraw_)
      if (!redraw_)
        if ((self.attr_draw_count).equal?(1))
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
      end
      if (!(h_item).equal?(0))
        @ignore_shrink = true
        OS._send_message(self.attr_handle, OS::TVM_DELETEITEM, 0, h_item)
        @ignore_shrink = false
      end
    end
    
    typesig { [] }
    def set_scroll_width
      if ((@hwnd_header).equal?(0) || (@hwnd_parent).equal?(0))
        return
      end
      width = 0
      hd_item = HDITEM.new
      i = 0
      while i < @column_count
        hd_item.attr_mask = OS::HDI_WIDTH
        OS._send_message(@hwnd_header, OS::HDM_GETITEM, i, hd_item)
        width += hd_item.attr_cxy
        i += 1
      end
      set_scroll_width(Math.max(@scroll_width, width))
    end
    
    typesig { [::Java::Int] }
    def set_scroll_width(width)
      if ((@hwnd_header).equal?(0) || (@hwnd_parent).equal?(0))
        return
      end
      # TEMPORARY CODE
      # scrollWidth = width;
      left = 0
      rect = RECT.new
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_RANGE | OS::SIF_PAGE
      if ((@column_count).equal?(0) && (width).equal?(0))
        OS._get_scroll_info(@hwnd_parent, OS::SB_HORZ, info)
        info.attr_n_page = info.attr_n_max + 1
        OS._set_scroll_info(@hwnd_parent, OS::SB_HORZ, info, true)
        OS._get_scroll_info(@hwnd_parent, OS::SB_VERT, info)
        info.attr_n_page = info.attr_n_max + 1
        OS._set_scroll_info(@hwnd_parent, OS::SB_VERT, info, true)
      else
        if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
          OS._get_client_rect(@hwnd_parent, rect)
          OS._get_scroll_info(@hwnd_parent, OS::SB_HORZ, info)
          info.attr_n_max = width
          info.attr_n_page = rect.attr_right - rect.attr_left + 1
          OS._set_scroll_info(@hwnd_parent, OS::SB_HORZ, info, true)
          info.attr_f_mask = OS::SIF_POS
          OS._get_scroll_info(@hwnd_parent, OS::SB_HORZ, info)
          left = info.attr_n_pos
        end
      end
      if (!(self.attr_horizontal_bar).nil?)
        self.attr_horizontal_bar.set_increment(INCREMENT)
        self.attr_horizontal_bar.set_page_increment(info.attr_n_page)
      end
      OS._get_client_rect(@hwnd_parent, rect)
      # long
      h_heap = OS._get_process_heap
      playout = HDLAYOUT.new
      playout.attr_prc = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, RECT.attr_sizeof)
      playout.attr_pwpos = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, WINDOWPOS.attr_sizeof)
      OS._move_memory(playout.attr_prc, rect, RECT.attr_sizeof)
      OS._send_message(@hwnd_header, OS::HDM_LAYOUT, 0, playout)
      pos = WINDOWPOS.new
      OS._move_memory(pos, playout.attr_pwpos, WINDOWPOS.attr_sizeof)
      if (!(playout.attr_prc).equal?(0))
        OS._heap_free(h_heap, 0, playout.attr_prc)
      end
      if (!(playout.attr_pwpos).equal?(0))
        OS._heap_free(h_heap, 0, playout.attr_pwpos)
      end
      _set_window_pos(@hwnd_header, OS::HWND_TOP, pos.attr_x - left, pos.attr_y, pos.attr_cx + left, pos.attr_cy, OS::SWP_NOACTIVATE)
      bits = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
      b = !((bits & OS::WS_EX_CLIENTEDGE)).equal?(0) ? OS._get_system_metrics(OS::SM_CXEDGE) : 0
      w = pos.attr_cx + ((@column_count).equal?(0) && (width).equal?(0) ? 0 : OS._get_system_metrics(OS::SM_CXVSCROLL))
      h = rect.attr_bottom - rect.attr_top - pos.attr_cy
      old_ignore = @ignore_resize
      @ignore_resize = true
      _set_window_pos(self.attr_handle, 0, pos.attr_x - left - b, pos.attr_y + pos.attr_cy - b, w + left + b * 2, h + b * 2, OS::SWP_NOACTIVATE | OS::SWP_NOZORDER)
      @ignore_resize = old_ignore
    end
    
    typesig { [::Java::Int, TVITEM, Array.typed(TreeItem)] }
    # long
    def set_selection(h_item, tv_item, selection)
      while (!(h_item).equal?(0))
        index = 0
        while (index < selection.attr_length)
          item = selection[index]
          if (!(item).nil? && (item.attr_handle).equal?(h_item))
            break
          end
          index += 1
        end
        tv_item.attr_h_item = h_item
        OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
        if (!((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0))
          if ((index).equal?(selection.attr_length))
            tv_item.attr_state = 0
            OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
          end
        else
          if (!(index).equal?(selection.attr_length))
            tv_item.attr_state = OS::TVIS_SELECTED
            OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
          end
        end
        # long
        h_first_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_item)
        set_selection(h_first_item, tv_item, selection)
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXT, h_item)
      end
    end
    
    typesig { [TreeItem] }
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
      set_selection(Array.typed(TreeItem).new([item]))
    end
    
    typesig { [Array.typed(TreeItem)] }
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
    # @see Tree#deselectAll()
    def set_selection(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      length_ = items.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        deselect_all
        return
      end
      # Select/deselect the first item
      item = items[0]
      if (!(item).nil?)
        if (item.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        # long
        h_old_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
        # long
        h_new_item = @h_anchor = item.attr_handle
        # Bug in Windows.  When TVM_SELECTITEM is used to select and
        # scroll an item to be visible and the client area of the tree
        # is smaller that the size of one item, TVM_SELECTITEM makes
        # the next item in the tree visible by making it the top item
        # instead of making the desired item visible.  The fix is to
        # detect the case when the client area is too small and make
        # the desired visible item be the top item in the tree.
        # 
        # Note that TVM_SELECTITEM when called with TVGN_FIRSTVISIBLE
        # also requires the work around for scrolling.
        fix_scroll = check_scroll(h_new_item)
        if (fix_scroll)
          OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
        @ignore_select = true
        OS._send_message(self.attr_handle, OS::TVM_SELECTITEM, OS::TVGN_CARET, h_new_item)
        @ignore_select = false
        if ((OS._send_message(self.attr_handle, OS::TVM_GETVISIBLECOUNT, 0, 0)).equal?(0))
          OS._send_message(self.attr_handle, OS::TVM_SELECTITEM, OS::TVGN_FIRSTVISIBLE, h_new_item)
          # long
          h_parent = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PARENT, h_new_item)
          if ((h_parent).equal?(0))
            OS._send_message(self.attr_handle, OS::WM_HSCROLL, OS::SB_TOP, 0)
          end
        end
        if (fix_scroll)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
        # Feature in Windows.  When the old and new focused item
        # are the same, Windows does not check to make sure that
        # the item is actually selected, not just focused.  The
        # fix is to force the item to draw selected by setting
        # the state mask, and to ensure that it is visible.
        if ((h_old_item).equal?(h_new_item))
          tv_item = TVITEM.new
          tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
          tv_item.attr_state = OS::TVIS_SELECTED
          tv_item.attr_state_mask = OS::TVIS_SELECTED
          tv_item.attr_h_item = h_new_item
          OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
          show_item(h_new_item)
        end
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return
      end
      # Select/deselect the rest of the items
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
      tv_item.attr_state_mask = OS::TVIS_SELECTED
      # long
      old_proc = OS._get_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC)
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TreeProc)
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        # long
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
        set_selection(h_item, tv_item, items)
      else
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil?)
            index = 0
            while (index < length_)
              if ((items[index]).equal?(item))
                break
              end
              index += 1
            end
            tv_item.attr_h_item = item.attr_handle
            OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
            if (!((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0))
              if ((index).equal?(length_))
                tv_item.attr_state = 0
                OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
              end
            else
              if (!(index).equal?(length_))
                tv_item.attr_state = OS::TVIS_SELECTED
                OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
              end
            end
          end
          i += 1
        end
      end
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_proc)
    end
    
    typesig { [TreeColumn] }
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
    
    typesig { [TreeItem] }
    # Sets the item which is currently at the top of the receiver.
    # This item can change when items are expanded, collapsed, scrolled
    # or new items are added or removed.
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
    # @see Tree#getTopItem()
    # 
    # @since 2.1
    def set_top_item(item)
      check_widget
      if ((item).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # long
      h_item = item.attr_handle
      # long
      h_top_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
      if ((h_item).equal?(h_top_item))
        return
      end
      fix_scroll = check_scroll(h_item)
      redraw_ = false
      if (fix_scroll)
        OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
      else
        redraw_ = (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle)
        if (redraw_)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
      end
      OS._send_message(self.attr_handle, OS::TVM_SELECTITEM, OS::TVGN_FIRSTVISIBLE, h_item)
      # long
      h_parent = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PARENT, h_item)
      if ((h_parent).equal?(0))
        OS._send_message(self.attr_handle, OS::WM_HSCROLL, OS::SB_TOP, 0)
      end
      if (fix_scroll)
        OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
        OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
      else
        if (redraw_)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
      end
      update_scroll_bar
    end
    
    typesig { [::Java::Int] }
    # long
    def show_item(h_item)
      # Bug in Windows.  When TVM_ENSUREVISIBLE is used to ensure
      # that an item is visible and the client area of the tree is
      # smaller that the size of one item, TVM_ENSUREVISIBLE makes
      # the next item in the tree visible by making it the top item
      # instead of making the desired item visible.  The fix is to
      # detect the case when the client area is too small and make
      # the desired visible item be the top item in the tree.
      if ((OS._send_message(self.attr_handle, OS::TVM_GETVISIBLECOUNT, 0, 0)).equal?(0))
        fix_scroll = check_scroll(h_item)
        if (fix_scroll)
          OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
        OS._send_message(self.attr_handle, OS::TVM_SELECTITEM, OS::TVGN_FIRSTVISIBLE, h_item)
        # This code is intentionally commented
        # int hParent = OS.SendMessage (handle, OS.TVM_GETNEXTITEM, OS.TVGN_PARENT, hItem);
        # if (hParent == 0) OS.SendMessage (handle, OS.WM_HSCROLL, OS.SB_TOP, 0);
        OS._send_message(self.attr_handle, OS::WM_HSCROLL, OS::SB_TOP, 0)
        if (fix_scroll)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
      else
        scroll = true
        item_rect = RECT.new
        if (OS._tree_view_get_item_rect(self.attr_handle, h_item, item_rect, true))
          force_resize
          rect = RECT.new
          OS._get_client_rect(self.attr_handle, rect)
          pt = POINT.new
          pt.attr_x = item_rect.attr_left
          pt.attr_y = item_rect.attr_top
          if (OS._pt_in_rect(rect, pt))
            pt.attr_y = item_rect.attr_bottom
            if (OS._pt_in_rect(rect, pt))
              scroll = false
            end
          end
        end
        if (scroll)
          fix_scroll = check_scroll(h_item)
          if (fix_scroll)
            OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
            OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
          end
          OS._send_message(self.attr_handle, OS::TVM_ENSUREVISIBLE, 0, h_item)
          if (fix_scroll)
            OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
            OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
          end
        end
      end
      if (!(@hwnd_parent).equal?(0))
        item_rect = RECT.new
        if (OS._tree_view_get_item_rect(self.attr_handle, h_item, item_rect, true))
          force_resize
          rect = RECT.new
          OS._get_client_rect(@hwnd_parent, rect)
          OS._map_window_points(@hwnd_parent, self.attr_handle, rect, 2)
          pt = POINT.new
          pt.attr_x = item_rect.attr_left
          pt.attr_y = item_rect.attr_top
          if (!OS._pt_in_rect(rect, pt))
            pt.attr_y = item_rect.attr_bottom
            if (!OS._pt_in_rect(rect, pt))
              info = SCROLLINFO.new
              info.attr_cb_size = SCROLLINFO.attr_sizeof
              info.attr_f_mask = OS::SIF_POS
              info.attr_n_pos = Math.max(0, pt.attr_x - Tree::INSET / 2)
              OS._set_scroll_info(@hwnd_parent, OS::SB_HORZ, info, true)
              set_scroll_width
            end
          end
        end
      end
      update_scroll_bar
    end
    
    typesig { [TreeColumn] }
    # Shows the column.  If the column is already showing in the receiver,
    # this method simply returns.  Otherwise, the columns are scrolled until
    # the column is visible.
    # 
    # @param column the column to be shown
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
    # @since 3.1
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
      if ((index).equal?(-1))
        return
      end
      if (0 <= index && index < @column_count)
        force_resize
        rect = RECT.new
        OS._get_client_rect(@hwnd_parent, rect)
        OS._map_window_points(@hwnd_parent, self.attr_handle, rect, 2)
        header_rect = RECT.new
        OS._send_message(@hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)
        scroll = header_rect.attr_left < rect.attr_left
        if (!scroll)
          width = Math.min(rect.attr_right - rect.attr_left, header_rect.attr_right - header_rect.attr_left)
          scroll = header_rect.attr_left + width > rect.attr_right
        end
        if (scroll)
          info = SCROLLINFO.new
          info.attr_cb_size = SCROLLINFO.attr_sizeof
          info.attr_f_mask = OS::SIF_POS
          info.attr_n_pos = Math.max(0, header_rect.attr_left - Tree::INSET / 2)
          OS._set_scroll_info(@hwnd_parent, OS::SB_HORZ, info, true)
          set_scroll_width
        end
      end
    end
    
    typesig { [TreeItem] }
    # Shows the item.  If the item is already showing in the receiver,
    # this method simply returns.  Otherwise, the items are scrolled
    # and expanded until the item is visible.
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
    # @see Tree#showSelection()
    def show_item(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      show_item(item.attr_handle)
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
    # @see Tree#showItem(TreeItem)
    def show_selection
      check_widget
      # long
      h_item = 0
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
        if ((h_item).equal?(0))
          return
        end
        state = 0
        if (OS::IsWinCE)
          tv_item = TVITEM.new
          tv_item.attr_h_item = h_item
          tv_item.attr_mask = OS::TVIF_STATE
          OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
          state = tv_item.attr_state
        else
          # 64
          state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMSTATE, h_item, OS::TVIS_SELECTED))
        end
        if (((state & OS::TVIS_SELECTED)).equal?(0))
          return
        end
      else
        # long
        old_proc = OS._get_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC)
        OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TreeProc)
        tv_item = nil
        if (OS::IsWinCE)
          tv_item = TVITEM.new
          tv_item.attr_mask = OS::TVIF_STATE
        end
        if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
          # long
          h_root = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
          h_item = get_next_selection(h_root, tv_item)
        else
          # FIXME - this code expands first selected item it finds
          index = 0
          while (index < @items.attr_length)
            item = @items[index]
            if (!(item).nil?)
              state = 0
              if (OS::IsWinCE)
                tv_item.attr_h_item = item.attr_handle
                OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
                state = tv_item.attr_state
              else
                # 64
                state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETITEMSTATE, item.attr_handle, OS::TVIS_SELECTED))
              end
              if (!((state & OS::TVIS_SELECTED)).equal?(0))
                h_item = item.attr_handle
                break
              end
            end
            index += 1
          end
        end
        OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_proc)
      end
      if (!(h_item).equal?(0))
        show_item(h_item)
      end
    end
    
    typesig { [] }
    # public
    def sort
      check_widget
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        return
      end
      sort(OS::TVI_ROOT, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # long
    def sort(h_parent, all)
      # 64
      item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETCOUNT, 0, 0))
      if ((item_count).equal?(0) || (item_count).equal?(1))
        return
      end
      @h_first_index_of = @h_last_index_of = 0
      item_count = -1
      if ((@sort_direction).equal?(SWT::UP) || (@sort_direction).equal?(SWT::NONE))
        OS._send_message(self.attr_handle, OS::TVM_SORTCHILDREN, all ? 1 : 0, h_parent)
      else
        compare_callback = Callback.new(self, "CompareFunc", 3)
        # long
        lpfn_compare = compare_callback.get_address
        psort = TVSORTCB.new
        psort.attr_h_parent = h_parent
        psort.attr_lpfn_compare = lpfn_compare
        psort.attr_l_param = (@sort_column).nil? ? 0 : index_of(@sort_column)
        OS._send_message(self.attr_handle, OS::TVM_SORTCHILDRENCB, all ? 1 : 0, psort)
        compare_callback.dispose
      end
    end
    
    typesig { [] }
    def subclass
      super
      if (!(@hwnd_header).equal?(0))
        OS._set_window_long_ptr(@hwnd_header, OS::GWLP_WNDPROC, self.attr_display.attr_window_proc)
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
        OS._set_rect(tool_rect, rect.attr_left, rect.attr_top, rect.attr_right, rect.attr_bottom)
        dw_style = OS._get_window_long(@item_tool_tip_handle, OS::GWL_STYLE)
        dw_ex_style = OS._get_window_long(@item_tool_tip_handle, OS::GWL_EXSTYLE)
        OS._adjust_window_rect_ex(tool_rect, dw_style, false, dw_ex_style)
      end
      return tool_rect
    end
    
    typesig { [NMTTDISPINFO] }
    def tool_tip_text(hdr)
      # long
      hwnd_tool_tip = OS._send_message(self.attr_handle, OS::TVM_GETTOOLTIPS, 0, 0)
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
        return super(hdr)
      end
      if ((@item_tool_tip_handle).equal?(hdr.attr_hwnd_from))
        if (!(self.attr_tool_tip_text).nil?)
          return ""
        end
        pos = OS._get_message_pos
        pt = POINT.new
        OS._pointstopoint(pt, pos)
        OS._screen_to_client(self.attr_handle, pt)
        index = Array.typed(::Java::Int).new(1) { 0 }
        item = Array.typed(TreeItem).new(1) { nil }
        cell_rect = Array.typed(RECT).new(1) { nil }
        item_rect = Array.typed(RECT).new(1) { nil }
        if (find_cell(pt.attr_x, pt.attr_y, item, index, cell_rect, item_rect))
          text = nil
          if ((index[0]).equal?(0))
            text = RJava.cast_to_string(item[0].attr_text)
          else
            strings = item[0].attr_strings
            if (!(strings).nil?)
              text = RJava.cast_to_string(strings[index[0]])
            end
          end
          # TEMPORARY CODE
          if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
            if (is_custom_tool_tip)
              text = " "
            end
          end
          if (!(text).nil?)
            return text
          end
        end
      end
      return super(hdr)
    end
    
    typesig { [] }
    # long
    def top_handle
      return !(@hwnd_parent).equal?(0) ? @hwnd_parent : self.attr_handle
    end
    
    typesig { [] }
    def update_full_selection
      if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
        old_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        new_bits = old_bits
        if (!((new_bits & OS::TVS_FULLROWSELECT)).equal?(0))
          if (!OS._is_window_enabled(self.attr_handle) || !(find_image_control).nil?)
            if (!@explorer_theme)
              new_bits &= ~OS::TVS_FULLROWSELECT
            end
          end
        else
          if (OS._is_window_enabled(self.attr_handle) && (find_image_control).nil?)
            if (!hooks(SWT::EraseItem) && !hooks(SWT::PaintItem))
              new_bits |= OS::TVS_FULLROWSELECT
            end
          end
        end
        if (!(new_bits).equal?(old_bits))
          OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
      end
    end
    
    typesig { [] }
    def update_header_tool_tips
      if ((@header_tool_tip_handle).equal?(0))
        return
      end
      rect = RECT.new
      lpti = TOOLINFO.new
      lpti.attr_cb_size = TOOLINFO.attr_sizeof
      lpti.attr_u_flags = OS::TTF_SUBCLASS
      lpti.attr_hwnd = @hwnd_header
      lpti.attr_lpsz_text = OS::LPSTR_TEXTCALLBACK
      i = 0
      while i < @column_count
        column = @columns[i]
        if (!(OS._send_message(@hwnd_header, OS::HDM_GETITEMRECT, i, rect)).equal?(0))
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
    def update_image_list
      if ((@image_list).nil?)
        return
      end
      if ((@hwnd_header).equal?(0))
        return
      end
      i = 0
      # 64
      index = RJava.cast_to_int(OS._send_message(@hwnd_header, OS::HDM_ORDERTOINDEX, 0, 0))
      while (i < @items.attr_length)
        item = @items[i]
        if (!(item).nil?)
          image = nil
          if ((index).equal?(0))
            image = item.attr_image
          else
            images = item.attr_images
            if (!(images).nil?)
              image = images[index]
            end
          end
          if (!(image).nil?)
            break
          end
        end
        i += 1
      end
      # Feature in Windows.  When setting the same image list multiple
      # times, Windows does work making this operation slow.  The fix
      # is to test for the same image list before setting the new one.
      # 
      # long
      h_image_list = (i).equal?(@items.attr_length) ? 0 : @image_list.get_handle
      # long
      h_old_image_list = OS._send_message(self.attr_handle, OS::TVM_GETIMAGELIST, OS::TVSIL_NORMAL, 0)
      if (!(h_image_list).equal?(h_old_image_list))
        OS._send_message(self.attr_handle, OS::TVM_SETIMAGELIST, OS::TVSIL_NORMAL, h_image_list)
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
    def update_scroll_bar
      if (!(@hwnd_parent).equal?(0))
        if (!(@column_count).equal?(0) || !(@scroll_width).equal?(0))
          info = SCROLLINFO.new
          info.attr_cb_size = SCROLLINFO.attr_sizeof
          info.attr_f_mask = OS::SIF_ALL
          # 64
          item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETCOUNT, 0, 0))
          if ((item_count).equal?(0))
            OS._get_scroll_info(@hwnd_parent, OS::SB_VERT, info)
            info.attr_n_page = info.attr_n_max + 1
            OS._set_scroll_info(@hwnd_parent, OS::SB_VERT, info, true)
          else
            OS._get_scroll_info(self.attr_handle, OS::SB_VERT, info)
            if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
              if ((info.attr_n_page).equal?(0))
                psbi = SCROLLBARINFO.new
                psbi.attr_cb_size = SCROLLBARINFO.attr_sizeof
                OS._get_scroll_bar_info(self.attr_handle, OS::OBJID_VSCROLL, psbi)
                if (!((psbi.attr_rgstate[0] & OS::STATE_SYSTEM_INVISIBLE)).equal?(0))
                  info.attr_n_page = info.attr_n_max + 1
                end
              end
            end
            OS._set_scroll_info(@hwnd_parent, OS::SB_VERT, info, true)
          end
        end
      end
    end
    
    typesig { [] }
    def unsubclass
      super
      if (!(@hwnd_header).equal?(0))
        OS._set_window_long_ptr(@hwnd_header, OS::GWLP_WNDPROC, HeaderProc)
      end
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::TVS_SHOWSELALWAYS | OS::TVS_LINESATROOT | OS::TVS_HASBUTTONS | OS::TVS_NONEVENHEIGHT
      if (EXPLORER_THEME && !OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0) && OS._is_app_themed)
        bits |= OS::TVS_TRACKSELECT
        if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          bits |= OS::TVS_FULLROWSELECT
        end
      else
        if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          bits |= OS::TVS_FULLROWSELECT
        else
          bits |= OS::TVS_HASLINES
        end
      end
      if (((self.attr_style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
        bits &= ~(OS::WS_HSCROLL | OS::WS_VSCROLL)
        bits |= OS::TVS_NOSCROLL
      else
        if (((self.attr_style & SWT::H_SCROLL)).equal?(0))
          bits &= ~OS::WS_HSCROLL
          bits |= OS::TVS_NOHSCROLL
        end
      end
      # bits |= OS.TVS_NOTOOLTIPS | OS.TVS_DISABLEDRAGDROP;
      return bits | OS::TVS_DISABLEDRAGDROP
    end
    
    typesig { [] }
    def window_class
      return TreeClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return TreeProc
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def window_proc(hwnd, msg, w_param, l_param)
      if (!(@hwnd_header).equal?(0) && (hwnd).equal?(@hwnd_header))
        case (msg)
        # This code is intentionally commented
        # case OS.WM_CONTEXTMENU: {
        # LRESULT result = wmContextMenu (hwnd, wParam, lParam);
        # if (result != null) return result.value;
        # break;
        # }
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
            if (!(l_param).equal?(0) && !(l_param).equal?(@hwnd_header))
              OS._invalidate_rect(@hwnd_header, nil, true)
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
              # 64
              index = RJava.cast_to_int(OS._send_message(@hwnd_header, OS::HDM_HITTEST, 0, pinfo))
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
      if (!(@hwnd_parent).equal?(0) && (hwnd).equal?(@hwnd_parent))
        case (msg)
        when OS::WM_MOVE
          send_event(SWT::Move)
          return 0
        when OS::WM_SIZE
          set_scroll_width
          if (@ignore_resize)
            return 0
          end
          set_resize_children(false)
          # long
          code = call_window_proc(hwnd, OS::WM_SIZE, w_param, l_param)
          send_event(SWT::Resize)
          if (is_disposed)
            return 0
          end
          if (!(self.attr_layout).nil?)
            mark_layout(false, false)
            update_layout(false, false)
          end
          set_resize_children(true)
          update_scroll_bar
          return code
        when OS::WM_NCPAINT
          result = wm_ncpaint(hwnd, w_param, l_param)
          if (!(result).nil?)
            return result.attr_value
          end
        when OS::WM_PRINT
          result = wm_print(hwnd, w_param, l_param)
          if (!(result).nil?)
            return result.attr_value
          end
        when OS::WM_COMMAND, OS::WM_NOTIFY, OS::WM_SYSCOLORCHANGE
          return OS._send_message(self.attr_handle, msg, w_param, l_param)
        when OS::WM_HSCROLL
          # Bug on WinCE.  lParam should be NULL when the message is not sent
          # by a scroll bar control, but it contains the handle to the window.
          # When the message is sent by a scroll bar control, it correctly
          # contains the handle to the scroll bar.  The fix is to check for
          # both.
          if (!(self.attr_horizontal_bar).nil? && ((l_param).equal?(0) || (l_param).equal?(@hwnd_parent)))
            wm_scroll(self.attr_horizontal_bar, true, @hwnd_parent, OS::WM_HSCROLL, w_param, l_param)
          end
          set_scroll_width
        when OS::WM_VSCROLL
          info = SCROLLINFO.new
          info.attr_cb_size = SCROLLINFO.attr_sizeof
          info.attr_f_mask = OS::SIF_ALL
          OS._get_scroll_info(@hwnd_parent, OS::SB_VERT, info)
          # Update the nPos field to match the nTrackPos field
          # so that the tree scrolls when the scroll bar of the
          # parent is dragged.
          # 
          # NOTE: For some reason, this code is only necessary
          # on Windows Vista.
          if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
            if ((OS._loword(w_param)).equal?(OS::SB_THUMBTRACK))
              info.attr_n_pos = info.attr_n_track_pos
            end
          end
          OS._set_scroll_info(self.attr_handle, OS::SB_VERT, info, true)
          # long
          code = OS._send_message(self.attr_handle, OS::WM_VSCROLL, w_param, l_param)
          OS._get_scroll_info(self.attr_handle, OS::SB_VERT, info)
          OS._set_scroll_info(@hwnd_parent, OS::SB_VERT, info, true)
          return code
        end
        return call_window_proc(hwnd, msg, w_param, l_param)
      end
      if ((msg).equal?(Display::DI_GETDRAGIMAGE))
        # When there is more than one item selected, DI_GETDRAGIMAGE
        # returns the item under the cursor.  This happens because
        # the tree does not have implement multi-select.  The fix
        # is to disable DI_GETDRAGIMAGE when more than one item is
        # selected.
        if (!((self.attr_style & SWT::MULTI)).equal?(0) || hooks(SWT::EraseItem) || hooks(SWT::PaintItem))
          # long
          h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
          items = Array.typed(TreeItem).new(10) { nil }
          tv_item = TVITEM.new
          tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM | OS::TVIF_STATE
          count = get_selection(h_item, tv_item, items, 0, 10, false, true)
          if ((count).equal?(0))
            return 0
          end
          mouse_pos = POINT.new
          OS._pointstopoint(mouse_pos, OS._get_message_pos)
          OS._map_window_points(0, self.attr_handle, mouse_pos, 1)
          client_rect = RECT.new
          OS._get_client_rect(self.attr_handle, client_rect)
          rect = items[0].get_bounds(0, true, true, false)
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
          i = 1
          while i < count
            if (rect.attr_bottom - rect.attr_top > DRAG_IMAGE_SIZE)
              break
            end
            if (rect.attr_bottom > client_rect.attr_bottom)
              break
            end
            item_rect = items[i].get_bounds(0, true, true, false)
            if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
              item_rect.attr_left = rect.attr_left
              item_rect.attr_right = rect.attr_right
            end
            # long
            rect_rgn = OS._create_rect_rgn(item_rect.attr_left, item_rect.attr_top, item_rect.attr_right, item_rect.attr_bottom)
            OS._combine_rgn(h_rgn, h_rgn, rect_rgn, OS::RGN_OR)
            OS._delete_object(rect_rgn)
            rect.attr_bottom = item_rect.attr_bottom
            i += 1
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
      # Feature in Windows.  The tree control beeps
      # in WM_CHAR when the search for the item that
      # matches the key stroke fails.  This is the
      # standard tree behavior but is unexpected when
      # the key that was typed was ESC, CR or SPACE.
      # The fix is to avoid calling the tree window
      # proc in these cases.
      # 
      # 64
      case (RJava.cast_to_int(w_param))
      when Character.new(?\s.ord)
        # long
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
        if (!(h_item).equal?(0))
          @h_anchor = h_item
          OS._send_message(self.attr_handle, OS::TVM_ENSUREVISIBLE, 0, h_item)
          tv_item = TVITEM.new
          tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE | OS::TVIF_PARAM
          tv_item.attr_h_item = h_item
          if (!((self.attr_style & SWT::CHECK)).equal?(0))
            tv_item.attr_state_mask = OS::TVIS_STATEIMAGEMASK
            OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
            state = tv_item.attr_state >> 12
            if (!((state & 0x1)).equal?(0))
              state += 1
            else
              (state -= 1)
            end
            tv_item.attr_state = state << 12
            OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
            if (!OS::IsWinCE)
              # long
              id = h_item
              if (OS::COMCTL32_MAJOR >= 6)
                id = OS._send_message(self.attr_handle, OS::TVM_MAPHTREEITEMTOACCID, h_item, 0)
              end
              # 64
              OS._notify_win_event(OS::EVENT_OBJECT_FOCUS, self.attr_handle, OS::OBJID_CLIENT, RJava.cast_to_int(id))
            end
          end
          tv_item.attr_state_mask = OS::TVIS_SELECTED
          OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
          if (!((self.attr_style & SWT::MULTI)).equal?(0) && OS._get_key_state(OS::VK_CONTROL) < 0)
            if (!((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0))
              tv_item.attr_state &= ~OS::TVIS_SELECTED
            else
              tv_item.attr_state |= OS::TVIS_SELECTED
            end
          else
            tv_item.attr_state |= OS::TVIS_SELECTED
          end
          OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
          # 64
          item = __get_item(h_item, RJava.cast_to_int(tv_item.attr_l_param))
          event = Event.new
          event.attr_item = item
          post_event(SWT::Selection, event)
          if (!((self.attr_style & SWT::CHECK)).equal?(0))
            event = Event.new
            event.attr_item = item
            event.attr_detail = SWT::CHECK
            post_event(SWT::Selection, event)
          end
        end
        return LRESULT::ZERO
      when SWT::CR
        # Feature in Windows.  Windows sends NM_RETURN from WM_KEYDOWN
        # instead of using WM_CHAR.  This means that application code
        # that expects to consume the key press and therefore avoid a
        # SWT.DefaultSelection event from WM_CHAR will fail.  The fix
        # is to implement SWT.DefaultSelection in WM_CHAR instead of
        # using NM_RETURN.
        event = Event.new
        # long
        h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
        if (!(h_item).equal?(0))
          event.attr_item = __get_item(h_item)
        end
        post_event(SWT::DefaultSelection, event)
        return LRESULT::ZERO
      when SWT::ESC
        return LRESULT::ZERO
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_erasebkgnd(w_param, l_param)
      result = super(w_param, l_param)
      if (!((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0))
        return LRESULT::ONE
      end
      if (!(find_image_control).nil?)
        return LRESULT::ONE
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getobject(w_param, l_param)
      # Ensure that there is an accessible object created for this
      # control because support for checked item and tree column
      # accessibility is temporarily implemented in the accessibility
      # package.
      if (!((self.attr_style & SWT::CHECK)).equal?(0) || !(@hwnd_parent).equal?(0))
        if ((self.attr_accessible).nil?)
          self.attr_accessible = new__accessible(self)
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_hscroll(w_param, l_param)
      fix_scroll = false
      if (!((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0))
        fix_scroll = !((self.attr_style & SWT::VIRTUAL)).equal?(0) || hooks(SWT::EraseItem) || hooks(SWT::PaintItem)
      end
      if (fix_scroll)
        self.attr_style &= ~SWT::DOUBLE_BUFFERED
        if (@explorer_theme)
          OS._send_message(self.attr_handle, OS::TVM_SETEXTENDEDSTYLE, OS::TVS_EX_DOUBLEBUFFER, 0)
        end
      end
      result = super(w_param, l_param)
      if (fix_scroll)
        self.attr_style |= SWT::DOUBLE_BUFFERED
        if (@explorer_theme)
          OS._send_message(self.attr_handle, OS::TVM_SETEXTENDEDSTYLE, OS::TVS_EX_DOUBLEBUFFER, OS::TVS_EX_DOUBLEBUFFER)
        end
      end
      if (!(result).nil?)
        return result
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_keydown(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      catch(:break_case) do
        # 64
        case (RJava.cast_to_int(w_param))
        when OS::VK_SPACE
          # Ensure that the window proc does not process VK_SPACE
          # so that it can be handled in WM_CHAR.  This allows the
          # application to cancel an operation that is normally
          # performed in WM_KEYDOWN from WM_CHAR.
          return LRESULT::ZERO
        when OS::VK_ADD
          if (OS._get_key_state(OS::VK_CONTROL) < 0)
            if (!(@hwnd_header).equal?(0))
              new_columns = Array.typed(TreeColumn).new(@column_count) { nil }
              System.arraycopy(@columns, 0, new_columns, 0, @column_count)
              i = 0
              while i < @column_count
                column = new_columns[i]
                if (!column.is_disposed && column.get_resizable)
                  column.pack
                end
                i += 1
              end
            end
          end
        when OS::VK_UP, OS::VK_DOWN, OS::VK_PRIOR, OS::VK_NEXT, OS::VK_HOME, OS::VK_END
          OS._send_message(self.attr_handle, OS::WM_CHANGEUISTATE, OS::UIS_INITIALIZE, 0)
          if (!((self.attr_style & SWT::SINGLE)).equal?(0))
            throw :break_case, :thrown
          end
          if (OS._get_key_state(OS::VK_SHIFT) < 0)
            # long
            h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
            if (!(h_item).equal?(0))
              if ((@h_anchor).equal?(0))
                @h_anchor = h_item
              end
              @ignore_select = @ignore_deselect = true
              # long
              code = call_window_proc(self.attr_handle, OS::WM_KEYDOWN, w_param, l_param)
              @ignore_select = @ignore_deselect = false
              # long
              h_new_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
              tv_item = TVITEM.new
              tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
              tv_item.attr_state_mask = OS::TVIS_SELECTED
              # long
              h_deselect_item = h_item
              rect1 = RECT.new
              if (!OS._tree_view_get_item_rect(self.attr_handle, @h_anchor, rect1, false))
                @h_anchor = h_item
                OS._tree_view_get_item_rect(self.attr_handle, @h_anchor, rect1, false)
              end
              rect2 = RECT.new
              OS._tree_view_get_item_rect(self.attr_handle, h_deselect_item, rect2, false)
              flags = rect1.attr_top < rect2.attr_top ? OS::TVGN_PREVIOUSVISIBLE : OS::TVGN_NEXTVISIBLE
              while (!(h_deselect_item).equal?(@h_anchor))
                tv_item.attr_h_item = h_deselect_item
                OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
                h_deselect_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, flags, h_deselect_item)
              end
              # long
              h_select_item = @h_anchor
              OS._tree_view_get_item_rect(self.attr_handle, h_new_item, rect1, false)
              OS._tree_view_get_item_rect(self.attr_handle, h_select_item, rect2, false)
              tv_item.attr_state = OS::TVIS_SELECTED
              flags = rect1.attr_top < rect2.attr_top ? OS::TVGN_PREVIOUSVISIBLE : OS::TVGN_NEXTVISIBLE
              while (!(h_select_item).equal?(h_new_item))
                tv_item.attr_h_item = h_select_item
                OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
                h_select_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, flags, h_select_item)
              end
              tv_item.attr_h_item = h_new_item
              OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
              tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
              tv_item.attr_h_item = h_new_item
              OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
              event = Event.new
              # 64
              event.attr_item = __get_item(h_new_item, RJava.cast_to_int(tv_item.attr_l_param))
              post_event(SWT::Selection, event)
              return LRESULT.new(code)
            end
          end
          if (OS._get_key_state(OS::VK_CONTROL) < 0)
            # long
            h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
            if (!(h_item).equal?(0))
              tv_item = TVITEM.new
              tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
              tv_item.attr_state_mask = OS::TVIS_SELECTED
              tv_item.attr_h_item = h_item
              OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
              old_selected = !((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0)
              # long
              h_new_item = 0
              # 64
              case (RJava.cast_to_int(w_param))
              when OS::VK_UP
                h_new_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PREVIOUSVISIBLE, h_item)
              when OS::VK_DOWN
                h_new_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXTVISIBLE, h_item)
              when OS::VK_HOME
                h_new_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
              when OS::VK_PRIOR
                h_new_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
                if ((h_new_item).equal?(h_item))
                  OS._send_message(self.attr_handle, OS::WM_VSCROLL, OS::SB_PAGEUP, 0)
                  h_new_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
                end
              when OS::VK_NEXT
                rect = RECT.new
                client_rect = RECT.new
                OS._get_client_rect(self.attr_handle, client_rect)
                h_new_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
                begin
                  # long
                  h_visible = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXTVISIBLE, h_new_item)
                  if ((h_visible).equal?(0))
                    break
                  end
                  if (!OS._tree_view_get_item_rect(self.attr_handle, h_visible, rect, false))
                    break
                  end
                  if (rect.attr_bottom > client_rect.attr_bottom)
                    break
                  end
                  if (((h_new_item = h_visible)).equal?(h_item))
                    OS._send_message(self.attr_handle, OS::WM_VSCROLL, OS::SB_PAGEDOWN, 0)
                  end
                end while (!(h_new_item).equal?(0))
              when OS::VK_END
                h_new_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_LASTVISIBLE, 0)
              end
              if (!(h_new_item).equal?(0))
                OS._send_message(self.attr_handle, OS::TVM_ENSUREVISIBLE, 0, h_new_item)
                tv_item.attr_h_item = h_new_item
                OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
                new_selected = !((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0)
                redraw_ = !new_selected && (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle)
                if (redraw_)
                  OS._update_window(self.attr_handle)
                  OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
                end
                @h_select = h_new_item
                @ignore_select = true
                OS._send_message(self.attr_handle, OS::TVM_SELECTITEM, OS::TVGN_CARET, h_new_item)
                @ignore_select = false
                @h_select = 0
                if (old_selected)
                  tv_item.attr_state = OS::TVIS_SELECTED
                  tv_item.attr_h_item = h_item
                  OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
                end
                if (!new_selected)
                  tv_item.attr_state = 0
                  tv_item.attr_h_item = h_new_item
                  OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
                end
                if (redraw_)
                  rect1 = RECT.new
                  rect2 = RECT.new
                  f_item_rect = ((self.attr_style & SWT::FULL_SELECTION)).equal?(0)
                  if (hooks(SWT::EraseItem) || hooks(SWT::PaintItem))
                    f_item_rect = false
                  end
                  if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
                    f_item_rect = false
                  end
                  OS._tree_view_get_item_rect(self.attr_handle, h_item, rect1, f_item_rect)
                  OS._tree_view_get_item_rect(self.attr_handle, h_new_item, rect2, f_item_rect)
                  OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
                  OS._invalidate_rect(self.attr_handle, rect1, true)
                  OS._invalidate_rect(self.attr_handle, rect2, true)
                  OS._update_window(self.attr_handle)
                end
                return LRESULT::ZERO
              end
            end
          end
          # long
          code = call_window_proc(self.attr_handle, OS::WM_KEYDOWN, w_param, l_param)
          @h_anchor = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
          return LRESULT.new(code)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      # Bug in Windows.  When a tree item that has an image
      # with alpha is expanded or collapsed, the area where
      # the image is drawn is not erased before it is drawn.
      # This means that the image gets darker each time.
      # The fix is to redraw the selection.
      # 
      # Feature in Windows.  When multiple item have
      # the TVIS_SELECTED state, Windows redraws only
      # the focused item in the color used to show the
      # selection when the tree loses or gains focus.
      # The fix is to force Windows to redraw the
      # selection when focus is gained or lost.
      redraw_ = !((self.attr_style & SWT::MULTI)).equal?(0)
      if (!redraw_)
        if (!OS::IsWinCE && OS::COMCTL32_MAJOR >= 6)
          if (!(@image_list).nil?)
            bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
            if (((bits & OS::TVS_FULLROWSELECT)).equal?(0))
              redraw_ = true
            end
          end
        end
      end
      if (redraw_)
        redraw_selection
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondblclk(w_param, l_param)
      lpht = TVHITTESTINFO.new
      lpht.attr_x = OS._get_x_lparam(l_param)
      lpht.attr_y = OS._get_y_lparam(l_param)
      OS._send_message(self.attr_handle, OS::TVM_HITTEST, 0, lpht)
      if (!(lpht.attr_h_item).equal?(0))
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          if (!((lpht.attr_flags & OS::TVHT_ONITEMSTATEICON)).equal?(0))
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
            if (!display.attr_capture_changed && !is_disposed)
              if (!(OS._get_capture).equal?(self.attr_handle))
                OS._set_capture(self.attr_handle)
              end
            end
            OS._set_focus(self.attr_handle)
            tv_item = TVITEM.new
            tv_item.attr_h_item = lpht.attr_h_item
            tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM | OS::TVIF_STATE
            tv_item.attr_state_mask = OS::TVIS_STATEIMAGEMASK
            OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
            state = tv_item.attr_state >> 12
            if (!((state & 0x1)).equal?(0))
              state += 1
            else
              (state -= 1)
            end
            tv_item.attr_state = state << 12
            OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
            if (!OS::IsWinCE)
              # long
              id = tv_item.attr_h_item
              if (OS::COMCTL32_MAJOR >= 6)
                id = OS._send_message(self.attr_handle, OS::TVM_MAPHTREEITEMTOACCID, tv_item.attr_h_item, 0)
              end
              # 64
              OS._notify_win_event(OS::EVENT_OBJECT_FOCUS, self.attr_handle, OS::OBJID_CLIENT, RJava.cast_to_int(id))
            end
            event = Event.new
            # 64
            event.attr_item = __get_item(tv_item.attr_h_item, RJava.cast_to_int(tv_item.attr_l_param))
            event.attr_detail = SWT::CHECK
            post_event(SWT::Selection, event)
            return LRESULT::ZERO
          end
        end
      end
      result = super(w_param, l_param)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      if (!(lpht.attr_h_item).equal?(0))
        flags = OS::TVHT_ONITEM
        if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          flags |= OS::TVHT_ONITEMRIGHT | OS::TVHT_ONITEMINDENT
        else
          if (hooks(SWT::MeasureItem))
            lpht.attr_flags &= ~(OS::TVHT_ONITEMICON | OS::TVHT_ONITEMLABEL)
            if (hit_test_selection(lpht.attr_h_item, lpht.attr_x, lpht.attr_y))
              lpht.attr_flags |= OS::TVHT_ONITEMICON | OS::TVHT_ONITEMLABEL
            end
          end
        end
        if (!((lpht.attr_flags & flags)).equal?(0))
          event = Event.new
          event.attr_item = __get_item(lpht.attr_h_item)
          post_event(SWT::DefaultSelection, event)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      # In a multi-select tree, if the user is collapsing a subtree that
      # contains selected items, clear the selection from these items and
      # issue a selection event.  Only items that are selected and visible
      # are cleared.  This code also runs in the case when the white space
      # below the last item is selected.
      lpht = TVHITTESTINFO.new
      lpht.attr_x = OS._get_x_lparam(l_param)
      lpht.attr_y = OS._get_y_lparam(l_param)
      OS._send_message(self.attr_handle, OS::TVM_HITTEST, 0, lpht)
      if ((lpht.attr_h_item).equal?(0) || !((lpht.attr_flags & OS::TVHT_ONITEMBUTTON)).equal?(0))
        display = self.attr_display
        display.attr_capture_changed = false
        if (!send_mouse_event(SWT::MouseDown, 1, self.attr_handle, OS::WM_LBUTTONDOWN, w_param, l_param))
          if (!display.attr_capture_changed && !is_disposed)
            if (!(OS._get_capture).equal?(self.attr_handle))
              OS._set_capture(self.attr_handle)
            end
          end
          return LRESULT::ZERO
        end
        fix_selection = false
        deselected = false
        # long
        h_old_selection = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
        if (!(lpht.attr_h_item).equal?(0) && !((self.attr_style & SWT::MULTI)).equal?(0))
          if (!(h_old_selection).equal?(0))
            tv_item = TVITEM.new
            tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
            tv_item.attr_h_item = lpht.attr_h_item
            OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
            if (!((tv_item.attr_state & OS::TVIS_EXPANDED)).equal?(0))
              fix_selection = true
              tv_item.attr_state_mask = OS::TVIS_SELECTED
              # long
              h_next = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXTVISIBLE, lpht.attr_h_item)
              while (!(h_next).equal?(0))
                if ((h_next).equal?(@h_anchor))
                  @h_anchor = 0
                end
                tv_item.attr_h_item = h_next
                OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
                if (!((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0))
                  deselected = true
                end
                tv_item.attr_state = 0
                OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
                # long
                h_item = h_next = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_NEXTVISIBLE, h_next)
                while (!(h_item).equal?(0) && !(h_item).equal?(lpht.attr_h_item))
                  h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_PARENT, h_item)
                end
                if ((h_item).equal?(0))
                  break
                end
              end
            end
          end
        end
        @drag_started = @gesture_completed = false
        if (fix_selection)
          @ignore_deselect = @ignore_select = @lock_selection = true
        end
        # long
        code = call_window_proc(self.attr_handle, OS::WM_LBUTTONDOWN, w_param, l_param)
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
          if (!(OS._get_focus).equal?(self.attr_handle))
            OS._set_focus(self.attr_handle)
          end
        end
        if (fix_selection)
          @ignore_deselect = @ignore_select = @lock_selection = false
        end
        # long
        h_new_selection = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
        if (!(h_old_selection).equal?(h_new_selection))
          @h_anchor = h_new_selection
        end
        if (@drag_started)
          if (!display.attr_capture_changed && !is_disposed)
            if (!(OS._get_capture).equal?(self.attr_handle))
              OS._set_capture(self.attr_handle)
            end
          end
        end
        # Bug in Windows.  When a tree has no images and an item is
        # expanded or collapsed, for some reason, Windows changes
        # the size of the selection.  When the user expands a tree
        # item, the selection rectangle is made a few pixels larger.
        # When the user collapses an item, the selection rectangle
        # is restored to the original size but the selection is not
        # redrawn, causing pixel corruption.  The fix is to detect
        # this case and redraw the item.
        if (!((lpht.attr_flags & OS::TVHT_ONITEMBUTTON)).equal?(0))
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          if (((bits & OS::TVS_FULLROWSELECT)).equal?(0))
            if ((OS._send_message(self.attr_handle, OS::TVM_GETIMAGELIST, OS::TVSIL_NORMAL, 0)).equal?(0))
              # long
              h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
              if (!(h_item).equal?(0))
                rect = RECT.new
                if (OS._tree_view_get_item_rect(self.attr_handle, h_item, rect, false))
                  OS._invalidate_rect(self.attr_handle, rect, true)
                end
              end
            end
          end
        end
        if (deselected)
          event = Event.new
          event.attr_item = __get_item(lpht.attr_h_item)
          post_event(SWT::Selection, event)
        end
        return LRESULT.new(code)
      end
      # Look for check/uncheck
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        if (!((lpht.attr_flags & OS::TVHT_ONITEMSTATEICON)).equal?(0))
          display = self.attr_display
          display.attr_capture_changed = false
          if (!send_mouse_event(SWT::MouseDown, 1, self.attr_handle, OS::WM_LBUTTONDOWN, w_param, l_param))
            if (!display.attr_capture_changed && !is_disposed)
              if (!(OS._get_capture).equal?(self.attr_handle))
                OS._set_capture(self.attr_handle)
              end
            end
            return LRESULT::ZERO
          end
          if (!display.attr_capture_changed && !is_disposed)
            if (!(OS._get_capture).equal?(self.attr_handle))
              OS._set_capture(self.attr_handle)
            end
          end
          OS._set_focus(self.attr_handle)
          tv_item = TVITEM.new
          tv_item.attr_h_item = lpht.attr_h_item
          tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM | OS::TVIF_STATE
          tv_item.attr_state_mask = OS::TVIS_STATEIMAGEMASK
          OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
          state = tv_item.attr_state >> 12
          if (!((state & 0x1)).equal?(0))
            state += 1
          else
            (state -= 1)
          end
          tv_item.attr_state = state << 12
          OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
          if (!OS::IsWinCE)
            # long
            id = tv_item.attr_h_item
            if (OS::COMCTL32_MAJOR >= 6)
              id = OS._send_message(self.attr_handle, OS::TVM_MAPHTREEITEMTOACCID, tv_item.attr_h_item, 0)
            end
            # 64
            OS._notify_win_event(OS::EVENT_OBJECT_FOCUS, self.attr_handle, OS::OBJID_CLIENT, RJava.cast_to_int(id))
          end
          event = Event.new
          # 64
          event.attr_item = __get_item(tv_item.attr_h_item, RJava.cast_to_int(tv_item.attr_l_param))
          event.attr_detail = SWT::CHECK
          post_event(SWT::Selection, event)
          return LRESULT::ZERO
        end
      end
      # Feature in Windows.  When the tree has the style
      # TVS_FULLROWSELECT, the background color for the
      # entire row is filled when an item is painted,
      # drawing on top of any custom drawing.  The fix
      # is to emulate TVS_FULLROWSELECT.
      selected = false
      fake_selection = false
      if (!(lpht.attr_h_item).equal?(0))
        if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          if (((bits & OS::TVS_FULLROWSELECT)).equal?(0))
            fake_selection = true
          end
        else
          if (hooks(SWT::MeasureItem))
            selected = hit_test_selection(lpht.attr_h_item, lpht.attr_x, lpht.attr_y)
            if (selected)
              if (((lpht.attr_flags & OS::TVHT_ONITEM)).equal?(0))
                fake_selection = true
              end
            end
          end
        end
      end
      # Process the mouse when an item is not selected
      if (!selected && ((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
        if (((lpht.attr_flags & OS::TVHT_ONITEM)).equal?(0))
          display = self.attr_display
          display.attr_capture_changed = false
          if (!send_mouse_event(SWT::MouseDown, 1, self.attr_handle, OS::WM_LBUTTONDOWN, w_param, l_param))
            if (!display.attr_capture_changed && !is_disposed)
              if (!(OS._get_capture).equal?(self.attr_handle))
                OS._set_capture(self.attr_handle)
              end
            end
            return LRESULT::ZERO
          end
          # long
          code = call_window_proc(self.attr_handle, OS::WM_LBUTTONDOWN, w_param, l_param)
          if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
            if (!(OS._get_focus).equal?(self.attr_handle))
              OS._set_focus(self.attr_handle)
            end
          end
          if (!display.attr_capture_changed && !is_disposed)
            if (!(OS._get_capture).equal?(self.attr_handle))
              OS._set_capture(self.attr_handle)
            end
          end
          return LRESULT.new(code)
        end
      end
      # Get the selected state of the item under the mouse
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
      tv_item.attr_state_mask = OS::TVIS_SELECTED
      hittest_selected = false
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        tv_item.attr_h_item = lpht.attr_h_item
        OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
        hittest_selected = !((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0)
      end
      # Get the selected state of the last selected item
      # long
      h_old_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        tv_item.attr_h_item = h_old_item
        OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
        # Check for CONTROL or drag selection
        if (hittest_selected || !((w_param & OS::MK_CONTROL)).equal?(0))
          # Feature in Windows.  When the tree is not drawing focus
          # and the user selects a tree item while the CONTROL key
          # is down, the tree window proc sends WM_UPDATEUISTATE
          # to the top level window, causing controls within the shell
          # to redraw.  When drag detect is enabled, the tree window
          # proc runs a modal loop that allows WM_PAINT messages to be
          # delivered during WM_LBUTTONDOWN.  When WM_SETREDRAW is used
          # to disable drawing for the tree and a WM_PAINT happens for
          # a parent of the tree (or a sibling that overlaps), the parent
          # will draw on top of the tree.  If WM_SETREDRAW is turned back
          # on without redrawing the entire tree, pixel corruption occurs.
          # This case only seems to happen when the tree has been given
          # focus from WM_MOUSEACTIVATE of the shell.  The fix is to
          # force the WM_UPDATEUISTATE to be sent before disabling
          # the drawing.
          # 
          # NOTE:  Any redraw of a parent (or sibling) will be dispatched
          # during the modal drag detect loop.  This code only fixes the
          # case where the tree causes a redraw from WM_UPDATEUISTATE.
          # In SWT, the InvalidateRect() that caused the pixel corruption
          # is found in Composite.WM_UPDATEUISTATE().
          # 
          # 64
          ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
          if (!((ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
            OS._send_message(self.attr_handle, OS::WM_CHANGEUISTATE, OS::UIS_INITIALIZE, 0)
          end
          OS._update_window(self.attr_handle)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        else
          deselect_all
        end
      end
      # Do the selection
      display = self.attr_display
      display.attr_capture_changed = false
      if (!send_mouse_event(SWT::MouseDown, 1, self.attr_handle, OS::WM_LBUTTONDOWN, w_param, l_param))
        if (!display.attr_capture_changed && !is_disposed)
          if (!(OS._get_capture).equal?(self.attr_handle))
            OS._set_capture(self.attr_handle)
          end
        end
        return LRESULT::ZERO
      end
      @h_select = lpht.attr_h_item
      @drag_started = @gesture_completed = false
      @ignore_deselect = @ignore_select = true
      # long
      code = call_window_proc(self.attr_handle, OS::WM_LBUTTONDOWN, w_param, l_param)
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        if (!(OS._get_focus).equal?(self.attr_handle))
          OS._set_focus(self.attr_handle)
        end
      end
      # long
      h_new_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
      if (fake_selection)
        if ((h_old_item).equal?(0) || ((h_new_item).equal?(h_old_item) && !(lpht.attr_h_item).equal?(h_old_item)))
          OS._send_message(self.attr_handle, OS::TVM_SELECTITEM, OS::TVGN_CARET, lpht.attr_h_item)
          h_new_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
        end
        if (!@drag_started && !((self.attr_state & DRAG_DETECT)).equal?(0) && hooks(SWT::DragDetect))
          @drag_started = drag_detect(self.attr_handle, lpht.attr_x, lpht.attr_y, false, nil, nil)
        end
      end
      @ignore_deselect = @ignore_select = false
      @h_select = 0
      if (@drag_started)
        if (!display.attr_capture_changed && !is_disposed)
          if (!(OS._get_capture).equal?(self.attr_handle))
            OS._set_capture(self.attr_handle)
          end
        end
      end
      # Feature in Windows.  When the old and new focused item
      # are the same, Windows does not check to make sure that
      # the item is actually selected, not just focused.  The
      # fix is to force the item to draw selected by setting
      # the state mask.  This is only necessary when the tree
      # is single select.
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        if ((h_old_item).equal?(h_new_item))
          tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
          tv_item.attr_state = OS::TVIS_SELECTED
          tv_item.attr_state_mask = OS::TVIS_SELECTED
          tv_item.attr_h_item = h_new_item
          OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
        end
      end
      # Reselect the last item that was unselected
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        # Check for CONTROL and reselect the last item
        if (hittest_selected || !((w_param & OS::MK_CONTROL)).equal?(0))
          if ((h_old_item).equal?(h_new_item) && (h_old_item).equal?(lpht.attr_h_item))
            if (!((w_param & OS::MK_CONTROL)).equal?(0))
              tv_item.attr_state ^= OS::TVIS_SELECTED
              if (@drag_started)
                tv_item.attr_state = OS::TVIS_SELECTED
              end
              OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
            end
          else
            if (!((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0))
              tv_item.attr_state = OS::TVIS_SELECTED
              OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
            end
            if (!((w_param & OS::MK_CONTROL)).equal?(0) && !@drag_started)
              if (hittest_selected)
                tv_item.attr_state = 0
                tv_item.attr_h_item = lpht.attr_h_item
                OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
              end
            end
          end
          rect1 = RECT.new
          rect2 = RECT.new
          f_item_rect = ((self.attr_style & SWT::FULL_SELECTION)).equal?(0)
          if (hooks(SWT::EraseItem) || hooks(SWT::PaintItem))
            f_item_rect = false
          end
          if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
            f_item_rect = false
          end
          OS._tree_view_get_item_rect(self.attr_handle, h_old_item, rect1, f_item_rect)
          OS._tree_view_get_item_rect(self.attr_handle, h_new_item, rect2, f_item_rect)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._invalidate_rect(self.attr_handle, rect1, true)
          OS._invalidate_rect(self.attr_handle, rect2, true)
          OS._update_window(self.attr_handle)
        end
        # Check for SHIFT or normal select and deselect/reselect items
        if (((w_param & OS::MK_CONTROL)).equal?(0))
          if (!hittest_selected || !@drag_started)
            tv_item.attr_state = 0
            # long
            old_proc = OS._get_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC)
            OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, TreeProc)
            if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
              # long
              h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
              deselect(h_item, tv_item, h_new_item)
            else
              i = 0
              while i < @items.attr_length
                item = @items[i]
                if (!(item).nil? && !(item.attr_handle).equal?(h_new_item))
                  tv_item.attr_h_item = item.attr_handle
                  OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
                end
                i += 1
              end
            end
            tv_item.attr_h_item = h_new_item
            tv_item.attr_state = OS::TVIS_SELECTED
            OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
            OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_proc)
            if (!((w_param & OS::MK_SHIFT)).equal?(0))
              rect1 = RECT.new
              if ((@h_anchor).equal?(0))
                @h_anchor = h_new_item
              end
              if (OS._tree_view_get_item_rect(self.attr_handle, @h_anchor, rect1, false))
                rect2 = RECT.new
                if (OS._tree_view_get_item_rect(self.attr_handle, h_new_item, rect2, false))
                  flags = rect1.attr_top < rect2.attr_top ? OS::TVGN_NEXTVISIBLE : OS::TVGN_PREVIOUSVISIBLE
                  tv_item.attr_state = OS::TVIS_SELECTED
                  # long
                  h_item = tv_item.attr_h_item = @h_anchor
                  OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
                  while (!(h_item).equal?(h_new_item))
                    tv_item.attr_h_item = h_item
                    OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
                    h_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, flags, h_item)
                  end
                end
              end
            end
          end
        end
      end
      if (((w_param & OS::MK_SHIFT)).equal?(0))
        @h_anchor = h_new_item
      end
      # Issue notification
      if (!@gesture_completed)
        tv_item.attr_h_item = h_new_item
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
        OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
        event = Event.new
        # 64
        event.attr_item = __get_item(tv_item.attr_h_item, RJava.cast_to_int(tv_item.attr_l_param))
        post_event(SWT::Selection, event)
      end
      @gesture_completed = false
      # Feature in Windows.  Inside WM_LBUTTONDOWN and WM_RBUTTONDOWN,
      # the widget starts a modal loop to determine if the user wants
      # to begin a drag/drop operation or marquee select.  Unfortunately,
      # this modal loop eats the corresponding mouse up.  The fix is to
      # detect the cases when the modal loop has eaten the mouse up and
      # issue a fake mouse up.
      if (@drag_started)
        send_drag_event(1, OS._get_x_lparam(l_param), OS._get_y_lparam(l_param))
      else
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (((bits & OS::TVS_DISABLEDRAGDROP)).equal?(0))
          send_mouse_event(SWT::MouseUp, 1, self.attr_handle, OS::WM_LBUTTONUP, w_param, l_param)
        end
      end
      @drag_started = false
      return LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousemove(w_param, l_param)
      display = self.attr_display
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!(@item_tool_tip_handle).equal?(0))
        # Bug in Windows.  On some machines that do not have XBUTTONs,
        # the MK_XBUTTON1 and OS.MK_XBUTTON2 bits are sometimes set,
        # causing mouse capture to become stuck.  The fix is to test
        # for the extra buttons only when they exist.
        mask = OS::MK_LBUTTON | OS::MK_MBUTTON | OS::MK_RBUTTON
        if (display.attr_x_mouse)
          mask |= OS::MK_XBUTTON1 | OS::MK_XBUTTON2
        end
        if (((w_param & mask)).equal?(0))
          x = OS._get_x_lparam(l_param)
          y = OS._get_y_lparam(l_param)
          index = Array.typed(::Java::Int).new(1) { 0 }
          item = Array.typed(TreeItem).new(1) { nil }
          cell_rect = Array.typed(RECT).new(1) { nil }
          item_rect = Array.typed(RECT).new(1) { nil }
          if (find_cell(x, y, item, index, cell_rect, item_rect))
            # Feature in Windows.  When the new tool rectangle is
            # set using TTM_NEWTOOLRECT and the tooltip is visible,
            # Windows draws the tooltip right away and the sends
            # WM_NOTIFY with TTN_SHOW.  This means that the tooltip
            # shows first at the wrong location and then moves to
            # the right one.  The fix is to hide the tooltip window.
            if ((OS._send_message(@item_tool_tip_handle, OS::TTM_GETCURRENTTOOL, 0, 0)).equal?(0))
              if (OS._is_window_visible(@item_tool_tip_handle))
                OS._show_window(@item_tool_tip_handle, OS::SW_HIDE)
              end
            end
            lpti = TOOLINFO.new
            lpti.attr_cb_size = TOOLINFO.attr_sizeof
            lpti.attr_hwnd = self.attr_handle
            lpti.attr_u_id = self.attr_handle
            lpti.attr_u_flags = OS::TTF_SUBCLASS | OS::TTF_TRANSPARENT
            lpti.attr_left = cell_rect[0].attr_left
            lpti.attr_top = cell_rect[0].attr_top
            lpti.attr_right = cell_rect[0].attr_right
            lpti.attr_bottom = cell_rect[0].attr_bottom
            OS._send_message(@item_tool_tip_handle, OS::TTM_NEWTOOLRECT, 0, lpti)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_move(w_param, l_param)
      if (@ignore_resize)
        return nil
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_rbuttondown(w_param, l_param)
      # Feature in Windows.  The receiver uses WM_RBUTTONDOWN
      # to initiate a drag/drop operation depending on how the
      # user moves the mouse.  If the user clicks the right button,
      # without moving the mouse, the tree consumes the corresponding
      # WM_RBUTTONUP.  The fix is to avoid calling the window proc for
      # the tree.
      display = self.attr_display
      display.attr_capture_changed = false
      if (!send_mouse_event(SWT::MouseDown, 3, self.attr_handle, OS::WM_RBUTTONDOWN, w_param, l_param))
        if (!display.attr_capture_changed && !is_disposed)
          if (!(OS._get_capture).equal?(self.attr_handle))
            OS._set_capture(self.attr_handle)
          end
        end
        return LRESULT::ZERO
      end
      # This code is intentionally commented.
      # 
      # if (OS.GetCapture () != handle) OS.SetCapture (handle);
      if (!(OS._get_focus).equal?(self.attr_handle))
        OS._set_focus(self.attr_handle)
      end
      # Feature in Windows.  When the user selects a tree item
      # with the right mouse button, the item remains selected
      # only as long as the user does not release or move the
      # mouse.  As soon as this happens, the selection snaps
      # back to the previous selection.  This behavior can be
      # observed in the Explorer but is not instantly apparent
      # because the Explorer explicitly sets the selection when
      # the user chooses a menu item.  If the user cancels the
      # menu, the selection snaps back.  The fix is to avoid
      # calling the window proc and do the selection ourselves.
      # This behavior is consistent with the table.
      lpht = TVHITTESTINFO.new
      lpht.attr_x = OS._get_x_lparam(l_param)
      lpht.attr_y = OS._get_y_lparam(l_param)
      OS._send_message(self.attr_handle, OS::TVM_HITTEST, 0, lpht)
      if (!(lpht.attr_h_item).equal?(0))
        fake_selection = !((self.attr_style & SWT::FULL_SELECTION)).equal?(0)
        if (!fake_selection)
          if (hooks(SWT::MeasureItem))
            fake_selection = hit_test_selection(lpht.attr_h_item, lpht.attr_x, lpht.attr_y)
          else
            flags = OS::TVHT_ONITEMICON | OS::TVHT_ONITEMLABEL
            fake_selection = !((lpht.attr_flags & flags)).equal?(0)
          end
        end
        if (fake_selection)
          if (((w_param & (OS::MK_CONTROL | OS::MK_SHIFT))).equal?(0))
            tv_item = TVITEM.new
            tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
            tv_item.attr_state_mask = OS::TVIS_SELECTED
            tv_item.attr_h_item = lpht.attr_h_item
            OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
            if (((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0))
              @ignore_select = true
              OS._send_message(self.attr_handle, OS::TVM_SELECTITEM, OS::TVGN_CARET, 0)
              @ignore_select = false
              OS._send_message(self.attr_handle, OS::TVM_SELECTITEM, OS::TVGN_CARET, lpht.attr_h_item)
            end
          end
        end
      end
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_paint(w_param, l_param)
      if (@shrink && !@ignore_shrink)
        # Resize the item array to fit the last item
        count = @items.attr_length - 1
        while (count >= 0)
          if (!(@items[count]).nil?)
            break
          end
          (count -= 1)
        end
        count += 1
        if (@items.attr_length > 4 && @items.attr_length - count > 3)
          length_ = Math.max(4, (count + 3) / 4 * 4)
          new_items = Array.typed(TreeItem).new(length_) { nil }
          System.arraycopy(@items, 0, new_items, 0, count)
          @items = new_items
        end
        @shrink = false
      end
      if (!((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0) || !(find_image_control).nil?)
        double_buffer = true
        if (@explorer_theme)
          # 64
          ex_style = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TVM_GETEXTENDEDSTYLE, 0, 0))
          if (!((ex_style & OS::TVS_EX_DOUBLEBUFFER)).equal?(0))
            double_buffer = false
          end
        end
        if (double_buffer)
          gc = nil
          # long
          paint_dc = 0
          ps = PAINTSTRUCT.new
          hooks_paint = hooks(SWT::Paint)
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
            rect = RECT.new
            OS._set_rect(rect, ps.attr_left, ps.attr_top, ps.attr_right, ps.attr_bottom)
            draw_background(h_dc, rect)
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
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_printclient(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  For some reason, when WM_PRINT is used
      # to capture an image of a hierarchy that contains a tree with
      # columns, the clipping that is used to stop the first column
      # from drawing on top of subsequent columns stops the first
      # column and the tree lines from drawing.  This does not happen
      # during WM_PAINT.  The fix is to draw without clipping and
      # then draw the rest of the columns on top.  Since the drawing
      # is happening in WM_PRINTCLIENT, the redrawing is not visible.
      @print_client = true
      # long
      code = call_window_proc(self.attr_handle, OS::WM_PRINTCLIENT, w_param, l_param)
      @print_client = false
      return LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfocus(w_param, l_param)
      # Bug in Windows.  When a tree item that has an image
      # with alpha is expanded or collapsed, the area where
      # the image is drawn is not erased before it is drawn.
      # This means that the image gets darker each time.
      # The fix is to redraw the selection.
      # 
      # Feature in Windows.  When multiple item have
      # the TVIS_SELECTED state, Windows redraws only
      # the focused item in the color used to show the
      # selection when the tree loses or gains focus.
      # The fix is to force Windows to redraw the
      # selection when focus is gained or lost.
      redraw_ = !((self.attr_style & SWT::MULTI)).equal?(0)
      if (!redraw_)
        if (!OS::IsWinCE && OS::COMCTL32_MAJOR >= 6)
          if (!(@image_list).nil?)
            bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
            if (((bits & OS::TVS_FULLROWSELECT)).equal?(0))
              redraw_ = true
            end
          end
        end
      end
      if (redraw_)
        redraw_selection
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfont(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!(@hwnd_header).equal?(0))
        # Bug in Windows.  When a header has a sort indicator
        # triangle, Windows resizes the indicator based on the
        # size of the n-1th font.  The fix is to always make
        # the n-1th font be the default.  This makes the sort
        # indicator always be the default size.
        OS._send_message(@hwnd_header, OS::WM_SETFONT, 0, l_param)
        OS._send_message(@hwnd_header, OS::WM_SETFONT, w_param, l_param)
      end
      if (!(@item_tool_tip_handle).equal?(0))
        OS._send_message(@item_tool_tip_handle, OS::WM_SETFONT, w_param, l_param)
      end
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
      # Bug in Windows.  Under certain circumstances, when
      # WM_SETREDRAW is used to turn off drawing and then
      # TVM_GETITEMRECT is sent to get the bounds of an item
      # that is not inside the client area, Windows segment
      # faults.  The fix is to call the default window proc
      # rather than the default tree proc.
      # 
      # NOTE:  This problem is intermittent and happens on
      # Windows Vista running under the theme manager.
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        # long
        code = OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, w_param, l_param)
        return (code).equal?(0) ? LRESULT::ZERO : LRESULT.new(code)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      # Bug in Windows.  When TVS_NOHSCROLL is set when the
      # size of the tree is zero, the scroll bar is shown the
      # next time the tree resizes.  The fix is to hide the
      # scroll bar every time the tree is resized.
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (!((bits & OS::TVS_NOHSCROLL)).equal?(0))
        if (!OS::IsWinCE)
          OS._show_scroll_bar(self.attr_handle, OS::SB_HORZ, false)
        end
      end
      # Bug in Windows.  On Vista, when the Explorer theme
      # is used with a full selection tree, when the tree
      # is resized to be smaller, the rounded right edge
      # of the selected items is not drawn.  The fix is the
      # redraw the entire tree.
      if (@explorer_theme && !((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
        OS._invalidate_rect(self.attr_handle, nil, false)
      end
      if (@ignore_resize)
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
      # Bug in Windows.  When the tree is using the explorer
      # theme, it does not use COLOR_WINDOW_TEXT for the
      # default foreground color.  The fix is to explicitly
      # set the foreground.
      if (@explorer_theme)
        if ((self.attr_foreground).equal?(-1))
          set_foreground_pixel(-1)
        end
      end
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        set_checkbox_image_list
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_vscroll(w_param, l_param)
      fix_scroll = false
      if (!((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0))
        code = OS._loword(w_param)
        case (code)
        when OS::SB_TOP, OS::SB_BOTTOM, OS::SB_LINEDOWN, OS::SB_LINEUP, OS::SB_PAGEDOWN, OS::SB_PAGEUP
          fix_scroll = !((self.attr_style & SWT::VIRTUAL)).equal?(0) || hooks(SWT::EraseItem) || hooks(SWT::PaintItem)
        end
      end
      if (fix_scroll)
        self.attr_style &= ~SWT::DOUBLE_BUFFERED
        if (@explorer_theme)
          OS._send_message(self.attr_handle, OS::TVM_SETEXTENDEDSTYLE, OS::TVS_EX_DOUBLEBUFFER, 0)
        end
      end
      result = super(w_param, l_param)
      if (fix_scroll)
        self.attr_style |= SWT::DOUBLE_BUFFERED
        if (@explorer_theme)
          OS._send_message(self.attr_handle, OS::TVM_SETEXTENDEDSTYLE, OS::TVS_EX_DOUBLEBUFFER, OS::TVS_EX_DOUBLEBUFFER)
        end
      end
      if (!(result).nil?)
        return result
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_color_child(w_param, l_param)
      if (!(find_image_control).nil?)
        if (OS::COMCTL32_MAJOR < 6)
          return super(w_param, l_param)
        end
        return LRESULT.new(OS._get_stock_object(OS::NULL_BRUSH))
      end
      # Feature in Windows.  Tree controls send WM_CTLCOLOREDIT
      # to allow application code to change the default colors.
      # This is undocumented and conflicts with TVM_SETTEXTCOLOR
      # and TVM_SETBKCOLOR, the documented way to do this.  The
      # fix is to ignore WM_CTLCOLOREDIT messages from trees.
      return nil
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify(hdr, w_param, l_param)
      if ((hdr.attr_hwnd_from).equal?(@item_tool_tip_handle))
        result = wm_notify_tool_tip(hdr, w_param, l_param)
        if (!(result).nil?)
          return result
        end
      end
      if ((hdr.attr_hwnd_from).equal?(@hwnd_header))
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
        # Bug in Windows.  On Vista, when TVM_SELECTITEM is called
        # with TVGN_CARET in order to set the selection, for some
        # reason, Windows deselects the previous two items that
        # were selected.  The fix is to stop the selection from
        # changing on all but the item that is supposed to be
        # selected.
        # 
        # FALL THROUGH
        when OS::TVN_GETDISPINFOA, OS::TVN_GETDISPINFOW
          lptvdi = NMTVDISPINFO.new
          OS._move_memory(lptvdi, l_param, NMTVDISPINFO.attr_sizeof)
          if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
            # Feature in Windows.  When a new tree item is inserted
            # using TVM_INSERTITEM, a TVN_GETDISPINFO is sent before
            # TVM_INSERTITEM returns and before the item is added to
            # the items array.  The fix is to check for null.
            # 
            # NOTE: This only happens on XP with the version 6.00 of
            # COMCTL32.DLL.
            check_visible = true
            # When an item is being deleted from a virtual tree, do not
            # allow the application to provide data for a new item that
            # becomes visible until the item has been removed from the
            # items array.  Because arbitrary application code can run
            # during the callback, the items array might be accessed
            # in an inconsistent state.  Rather than answering the data
            # right away, queue a redraw for later.
            if (!@ignore_shrink)
              if (!(@items).nil? && !(lptvdi.attr_l_param).equal?(-1))
                # 64
                # 64
                if (!(@items[RJava.cast_to_int(lptvdi.attr_l_param)]).nil? && @items[RJava.cast_to_int(lptvdi.attr_l_param)].attr_cached)
                  check_visible = false
                end
              end
            end
            if (check_visible)
              if (!(self.attr_draw_count).equal?(0) || !OS._is_window_visible(self.attr_handle))
                throw :break_case, :thrown
              end
              item_rect = RECT.new
              if (!OS._tree_view_get_item_rect(self.attr_handle, lptvdi.attr_h_item, item_rect, false))
                throw :break_case, :thrown
              end
              rect = RECT.new
              OS._get_client_rect(self.attr_handle, rect)
              if (!OS._intersect_rect(rect, rect, item_rect))
                throw :break_case, :thrown
              end
              if (@ignore_shrink)
                OS._invalidate_rect(self.attr_handle, rect, true)
                throw :break_case, :thrown
              end
            end
          end
          if ((@items).nil?)
            throw :break_case, :thrown
          end
          # Bug in Windows.  If the lParam field of TVITEM
          # is changed during custom draw using TVM_SETITEM,
          # the lItemlParam field of the NMTVCUSTOMDRAW struct
          # is not updated until the next custom draw.  The
          # fix is to query the field from the item instead
          # of using the struct.
          # 
          # 64
          id = RJava.cast_to_int(lptvdi.attr_l_param)
          if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
            if ((id).equal?(-1))
              tv_item = TVITEM.new
              tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
              tv_item.attr_h_item = lptvdi.attr_h_item
              OS._send_message(self.attr_handle, OS::TVM_GETITEM, 0, tv_item)
              # 64
              id = RJava.cast_to_int(tv_item.attr_l_param)
            end
          end
          item = __get_item(lptvdi.attr_h_item, id)
          # Feature in Windows.  When a new tree item is inserted
          # using TVM_INSERTITEM, a TVN_GETDISPINFO is sent before
          # TVM_INSERTITEM returns and before the item is added to
          # the items array.  The fix is to check for null.
          # 
          # NOTE: This only happens on XP with the version 6.00 of
          # COMCTL32.DLL.
          # 
          # Feature in Windows.  When TVM_DELETEITEM is called with
          # TVI_ROOT to remove all items from a tree, under certain
          # circumstances, the tree sends TVN_GETDISPINFO for items
          # that are about to be disposed.  The fix is to check for
          # disposed items.
          if ((item).nil?)
            throw :break_case, :thrown
          end
          if (item.is_disposed)
            throw :break_case, :thrown
          end
          if (!item.attr_cached)
            if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
              if (!check_data(item, false))
                throw :break_case, :thrown
              end
            end
            if (@painted)
              item.attr_cached = true
            end
          end
          index = 0
          if (!(@hwnd_header).equal?(0))
            # 64
            index = RJava.cast_to_int(OS._send_message(@hwnd_header, OS::HDM_ORDERTOINDEX, 0, 0))
          end
          if (!((lptvdi.attr_mask & OS::TVIF_TEXT)).equal?(0))
            string = nil
            if ((index).equal?(0))
              string = RJava.cast_to_string(item.attr_text)
            else
              strings = item.attr_strings
              if (!(strings).nil?)
                string = RJava.cast_to_string(strings[index])
              end
            end
            if (!(string).nil?)
              buffer = TCHAR.new(get_code_page, string, false)
              byte_count = Math.min(buffer.length, lptvdi.attr_cch_text_max - 1) * TCHAR.attr_sizeof
              OS._move_memory(lptvdi.attr_psz_text, buffer, byte_count)
              OS._move_memory(lptvdi.attr_psz_text + byte_count, Array.typed(::Java::Byte).new(TCHAR.attr_sizeof) { 0 }, TCHAR.attr_sizeof)
              lptvdi.attr_cch_text_max = Math.min(lptvdi.attr_cch_text_max, string.length + 1)
            end
          end
          if (!((lptvdi.attr_mask & (OS::TVIF_IMAGE | OS::TVIF_SELECTEDIMAGE))).equal?(0))
            image = nil
            if ((index).equal?(0))
              image = item.attr_image
            else
              images = item.attr_images
              if (!(images).nil?)
                image = images[index]
              end
            end
            lptvdi.attr_i_image = lptvdi.attr_i_selected_image = OS::I_IMAGENONE
            if (!(image).nil?)
              lptvdi.attr_i_image = lptvdi.attr_i_selected_image = image_index(image, index)
            end
            if (@explorer_theme && OS._is_window_enabled(self.attr_handle))
              if (!(find_image_control).nil?)
                lptvdi.attr_i_image = lptvdi.attr_i_selected_image = OS::I_IMAGENONE
              end
            end
          end
          OS._move_memory(l_param, lptvdi, NMTVDISPINFO.attr_sizeof)
        when OS::NM_CUSTOMDRAW
          if ((hdr.attr_hwnd_from).equal?(@hwnd_header))
            throw :break_case, :thrown
          end
          if (hooks(SWT::MeasureItem))
            if ((@hwnd_header).equal?(0))
              create_parent
            end
          end
          if (!@custom_draw && (find_image_control).nil?)
            if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
              if ((@sort_column).nil? || (@sort_direction).equal?(SWT::NONE))
                throw :break_case, :thrown
              end
            end
          end
          nmcd = NMTVCUSTOMDRAW.new
          OS._move_memory(nmcd, l_param, NMTVCUSTOMDRAW.attr_sizeof)
          case (nmcd.attr_dw_draw_stage)
          when OS::CDDS_PREPAINT
            return _cdds_prepaint(nmcd, w_param, l_param)
          when OS::CDDS_ITEMPREPAINT
            return _cdds_itemprepaint(nmcd, w_param, l_param)
          when OS::CDDS_ITEMPOSTPAINT
            return _cdds_itempostpaint(nmcd, w_param, l_param)
          when OS::CDDS_POSTPAINT
            return _cdds_postpaint(nmcd, w_param, l_param)
          end
        when OS::NM_DBLCLK
          # When the user double clicks on a tree item
          # or a line beside the item, the window proc
          # for the tree collapses or expand the branch.
          # When application code associates an action
          # with double clicking, then the tree expand
          # is unexpected and unwanted.  The fix is to
          # avoid the operation by testing to see whether
          # the mouse was inside a tree item.
          if (hooks(SWT::MeasureItem))
            return LRESULT::ONE
          end
          if (hooks(SWT::DefaultSelection))
            pt = POINT.new
            pos = OS._get_message_pos
            OS._pointstopoint(pt, pos)
            OS._screen_to_client(self.attr_handle, pt)
            lpht = TVHITTESTINFO.new
            lpht.attr_x = pt.attr_x
            lpht.attr_y = pt.attr_y
            OS._send_message(self.attr_handle, OS::TVM_HITTEST, 0, lpht)
            if (!(lpht.attr_h_item).equal?(0) && !((lpht.attr_flags & OS::TVHT_ONITEM)).equal?(0))
              return LRESULT::ONE
            end
          end
        when OS::TVN_ITEMCHANGINGA, OS::TVN_ITEMCHANGINGW
          if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
            if (!((self.attr_style & SWT::MULTI)).equal?(0))
              if (!(@h_select).equal?(0))
                pnm = NMTVITEMCHANGE.new
                OS._move_memory(pnm, l_param, NMTVITEMCHANGE.attr_sizeof)
                if ((@h_select).equal?(pnm.attr_h_item))
                  throw :break_case, :thrown
                end
                return LRESULT::ONE
              end
            end
          end
        when OS::TVN_SELCHANGINGA, OS::TVN_SELCHANGINGW
          if (!((self.attr_style & SWT::MULTI)).equal?(0))
            if (@lock_selection)
              # Save the old selection state for both items
              tree_view = NMTREEVIEW.new
              OS._move_memory(tree_view, l_param, NMTREEVIEW.attr_sizeof)
              tv_item = tree_view.attr_item_old
              @old_selected = !((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0)
              tv_item = tree_view.attr_item_new
              @new_selected = !((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0)
            end
          end
          if (!@ignore_select && !@ignore_deselect)
            @h_anchor = 0
            if (!((self.attr_style & SWT::MULTI)).equal?(0))
              deselect_all
            end
          end
        when OS::TVN_SELCHANGEDA, OS::TVN_SELCHANGEDW
          tree_view = nil
          if (!((self.attr_style & SWT::MULTI)).equal?(0))
            if (@lock_selection)
              # Restore the old selection state of both items
              if (@old_selected)
                if ((tree_view).nil?)
                  tree_view = NMTREEVIEW.new
                  OS._move_memory(tree_view, l_param, NMTREEVIEW.attr_sizeof)
                end
                tv_item = tree_view.attr_item_old
                tv_item.attr_mask = OS::TVIF_STATE
                tv_item.attr_state_mask = OS::TVIS_SELECTED
                tv_item.attr_state = OS::TVIS_SELECTED
                OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
              end
              if (!@new_selected && @ignore_select)
                if ((tree_view).nil?)
                  tree_view = NMTREEVIEW.new
                  OS._move_memory(tree_view, l_param, NMTREEVIEW.attr_sizeof)
                end
                tv_item = tree_view.attr_item_new
                tv_item.attr_mask = OS::TVIF_STATE
                tv_item.attr_state_mask = OS::TVIS_SELECTED
                tv_item.attr_state = 0
                OS._send_message(self.attr_handle, OS::TVM_SETITEM, 0, tv_item)
              end
            end
          end
          if (!@ignore_select)
            if ((tree_view).nil?)
              tree_view = NMTREEVIEW.new
              OS._move_memory(tree_view, l_param, NMTREEVIEW.attr_sizeof)
            end
            tv_item = tree_view.attr_item_new
            @h_anchor = tv_item.attr_h_item
            event = Event.new
            # 64
            event.attr_item = __get_item(tv_item.attr_h_item, RJava.cast_to_int(tv_item.attr_l_param))
            post_event(SWT::Selection, event)
          end
          update_scroll_bar
        when OS::TVN_ITEMEXPANDINGA, OS::TVN_ITEMEXPANDINGW
          run_expanded = false
          if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
            self.attr_style &= ~SWT::DOUBLE_BUFFERED
          end
          if (hooks(SWT::EraseItem) || hooks(SWT::PaintItem))
            self.attr_style &= ~SWT::DOUBLE_BUFFERED
          end
          if (!(find_image_control).nil? && (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle))
            OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
          end
          # Bug in Windows.  When TVM_SETINSERTMARK is used to set
          # an insert mark for a tree and an item is expanded or
          # collapsed near the insert mark, the tree does not redraw
          # the insert mark properly.  The fix is to hide and show
          # the insert mark whenever an item is expanded or collapsed.
          if (!(@h_insert).equal?(0))
            OS._send_message(self.attr_handle, OS::TVM_SETINSERTMARK, 0, 0)
          end
          if (!@ignore_expand)
            tree_view = NMTREEVIEW.new
            OS._move_memory(tree_view, l_param, NMTREEVIEW.attr_sizeof)
            tv_item = tree_view.attr_item_new
            # Feature in Windows.  In some cases, TVM_ITEMEXPANDING
            # is sent from within TVM_DELETEITEM for the tree item
            # being destroyed.  By the time the message is sent,
            # the item has already been removed from the list of
            # items.  The fix is to check for null.
            if ((@items).nil?)
              throw :break_case, :thrown
            end
            # 64
            item = __get_item(tv_item.attr_h_item, RJava.cast_to_int(tv_item.attr_l_param))
            if ((item).nil?)
              throw :break_case, :thrown
            end
            event = Event.new
            event.attr_item = item
            case (tree_view.attr_action)
            when OS::TVE_EXPAND
              # Bug in Windows.  When the numeric keypad asterisk
              # key is used to expand every item in the tree, Windows
              # sends TVN_ITEMEXPANDING to items in the tree that
              # have already been expanded.  The fix is to detect
              # that the item is already expanded and ignore the
              # notification.
              if (((tv_item.attr_state & OS::TVIS_EXPANDED)).equal?(0))
                send_event(SWT::Expand, event)
                if (is_disposed)
                  return LRESULT::ZERO
                end
              end
            when OS::TVE_COLLAPSE
              send_event(SWT::Collapse, event)
              if (is_disposed)
                return LRESULT::ZERO
              end
            end
            # Bug in Windows.  When all of the items are deleted during
            # TVN_ITEMEXPANDING, Windows does not send TVN_ITEMEXPANDED.
            # The fix is to detect this case and run the TVN_ITEMEXPANDED
            # code in this method.
            # 
            # long
            h_first_item = OS._send_message(self.attr_handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, tv_item.attr_h_item)
            run_expanded = (h_first_item).equal?(0)
          end
          if (!run_expanded)
          end
          # FALL THROUGH
        when OS::TVN_ITEMEXPANDEDA, OS::TVN_ITEMEXPANDEDW
          if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
            self.attr_style |= SWT::DOUBLE_BUFFERED
          end
          if (hooks(SWT::EraseItem) || hooks(SWT::PaintItem))
            self.attr_style |= SWT::DOUBLE_BUFFERED
          end
          # && OS.IsWindowVisible (handle)
          if (!(find_image_control).nil? && (self.attr_draw_count).equal?(0))
            OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
            OS._invalidate_rect(self.attr_handle, nil, true)
          end
          # Bug in Windows.  When TVM_SETINSERTMARK is used to set
          # an insert mark for a tree and an item is expanded or
          # collapsed near the insert mark, the tree does not redraw
          # the insert mark properly.  The fix is to hide and show
          # the insert mark whenever an item is expanded or collapsed.
          if (!(@h_insert).equal?(0))
            OS._send_message(self.attr_handle, OS::TVM_SETINSERTMARK, @insert_after ? 1 : 0, @h_insert)
          end
          # Bug in Windows.  When a tree item that has an image
          # with alpha is expanded or collapsed, the area where
          # the image is drawn is not erased before it is drawn.
          # This means that the image gets darker each time.
          # The fix is to redraw the item.
          if (!OS::IsWinCE && OS::COMCTL32_MAJOR >= 6)
            if (!(@image_list).nil?)
              tree_view = NMTREEVIEW.new
              OS._move_memory(tree_view, l_param, NMTREEVIEW.attr_sizeof)
              tv_item = tree_view.attr_item_new
              if (!(tv_item.attr_h_item).equal?(0))
                bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
                if (((bits & OS::TVS_FULLROWSELECT)).equal?(0))
                  rect = RECT.new
                  if (OS._tree_view_get_item_rect(self.attr_handle, tv_item.attr_h_item, rect, false))
                    OS._invalidate_rect(self.attr_handle, rect, true)
                  end
                end
              end
            end
          end
          update_scroll_bar
        when OS::TVN_BEGINDRAGA, OS::TVN_BEGINDRAGW
          if (OS._get_key_state(OS::VK_LBUTTON) >= 0)
          end
        when OS::TVN_BEGINRDRAGA, OS::TVN_BEGINRDRAGW
          @drag_started = true
          tree_view = NMTREEVIEW.new
          OS._move_memory(tree_view, l_param, NMTREEVIEW.attr_sizeof)
          tv_item = tree_view.attr_item_new
          if (!(tv_item.attr_h_item).equal?(0) && ((tv_item.attr_state & OS::TVIS_SELECTED)).equal?(0))
            @h_select = tv_item.attr_h_item
            @ignore_select = @ignore_deselect = true
            OS._send_message(self.attr_handle, OS::TVM_SELECTITEM, OS::TVGN_CARET, tv_item.attr_h_item)
            @ignore_select = @ignore_deselect = false
            @h_select = 0
          end
        when OS::NM_RECOGNIZEGESTURE
          # Feature in Pocket PC.  The tree and table controls detect the tap
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
              @gesture_completed = true
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
          phdn = NMHEADER.new
          OS._move_memory(phdn, l_param, NMHEADER.attr_sizeof)
          column = @columns[phdn.attr_i_item]
          if (!(column).nil? && !column.get_resizable)
            return LRESULT::ONE
          end
          @ignore_column_move = true
          case (hdr.attr_code)
          when OS::HDN_DIVIDERDBLCLICKW, OS::HDN_DIVIDERDBLCLICKA
            if (!(column).nil?)
              column.pack
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
            update_image_list
          end
          @ignore_column_move = false
        when OS::HDN_BEGINDRAG
          if (@ignore_column_move)
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
          phdn = NMHEADER.new
          OS._move_memory(phdn, l_param, NMHEADER.attr_sizeof)
          if (!(phdn.attr_i_item).equal?(-1) && !(phdn.attr_pitem).equal?(0))
            pitem = HDITEM.new
            OS._move_memory(pitem, phdn.attr_pitem, HDITEM.attr_sizeof)
            if (!((pitem.attr_mask & OS::HDI_ORDER)).equal?(0) && !(pitem.attr_i_order).equal?(-1))
              order = Array.typed(::Java::Int).new(@column_count) { 0 }
              OS._send_message(@hwnd_header, OS::HDM_GETORDERARRAY, @column_count, order)
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
              rect = RECT.new
              header_rect = RECT.new
              OS._get_client_rect(self.attr_handle, rect)
              OS._send_message(@hwnd_header, OS::HDM_GETITEMRECT, order[start], header_rect)
              rect.attr_left = Math.max(rect.attr_left, header_rect.attr_left)
              OS._send_message(@hwnd_header, OS::HDM_GETITEMRECT, order[end_], header_rect)
              rect.attr_right = Math.min(rect.attr_right, header_rect.attr_right)
              OS._invalidate_rect(self.attr_handle, rect, true)
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
        when OS::HDN_ITEMCHANGINGW, OS::HDN_ITEMCHANGINGA
          phdn = NMHEADER.new
          OS._move_memory(phdn, l_param, NMHEADER.attr_sizeof)
          if (!(phdn.attr_pitem).equal?(0))
            new_item = HDITEM.new
            OS._move_memory(new_item, phdn.attr_pitem, HDITEM.attr_sizeof)
            if (!((new_item.attr_mask & OS::HDI_WIDTH)).equal?(0))
              rect = RECT.new
              OS._get_client_rect(self.attr_handle, rect)
              old_item = HDITEM.new
              old_item.attr_mask = OS::HDI_WIDTH
              OS._send_message(@hwnd_header, OS::HDM_GETITEM, phdn.attr_i_item, old_item)
              delta_x = new_item.attr_cxy - old_item.attr_cxy
              header_rect = RECT.new
              OS._send_message(@hwnd_header, OS::HDM_GETITEMRECT, phdn.attr_i_item, header_rect)
              grid_width = @lines_visible ? GRID_WIDTH : 0
              rect.attr_left = header_rect.attr_right - grid_width
              new_x = rect.attr_left + delta_x
              rect.attr_right = Math.max(rect.attr_right, rect.attr_left + Math.abs(delta_x))
              if (@explorer_theme || (!(find_image_control).nil? || hooks(SWT::MeasureItem) || hooks(SWT::EraseItem) || hooks(SWT::PaintItem)))
                rect.attr_left -= OS._get_system_metrics(OS::SM_CXFOCUSBORDER)
                OS._invalidate_rect(self.attr_handle, rect, true)
                OS._offset_rect(rect, delta_x, 0)
                OS._invalidate_rect(self.attr_handle, rect, true)
              else
                flags = OS::SW_INVALIDATE | OS::SW_ERASE
                OS._scroll_window_ex(self.attr_handle, delta_x, 0, rect, nil, 0, nil, flags)
              end
              if (!(OS._send_message(@hwnd_header, OS::HDM_ORDERTOINDEX, phdn.attr_i_item, 0)).equal?(0))
                rect.attr_left = header_rect.attr_left
                rect.attr_right = new_x
                OS._invalidate_rect(self.attr_handle, rect, true)
              end
              set_scroll_width
            end
          end
        when OS::HDN_ITEMCHANGEDW, OS::HDN_ITEMCHANGEDA
          phdn = NMHEADER.new
          OS._move_memory(phdn, l_param, NMHEADER.attr_sizeof)
          if (!(phdn.attr_pitem).equal?(0))
            pitem = HDITEM.new
            OS._move_memory(pitem, phdn.attr_pitem, HDITEM.attr_sizeof)
            if (!((pitem.attr_mask & OS::HDI_WIDTH)).equal?(0))
              if (@ignore_column_move)
                if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
                  flags = OS::RDW_UPDATENOW | OS::RDW_ALLCHILDREN
                  OS._redraw_window(self.attr_handle, nil, 0, flags)
                else
                  if (((self.attr_style & SWT::DOUBLE_BUFFERED)).equal?(0))
                    old_style = self.attr_style
                    self.attr_style |= SWT::DOUBLE_BUFFERED
                    OS._update_window(self.attr_handle)
                    self.attr_style = old_style
                  end
                end
              end
              column = @columns[phdn.attr_i_item]
              if (!(column).nil?)
                column.update_tool_tip(phdn.attr_i_item)
                column.send_event(SWT::Resize)
                if (is_disposed)
                  return LRESULT::ZERO
                end
                new_columns = Array.typed(TreeColumn).new(@column_count) { nil }
                System.arraycopy(@columns, 0, new_columns, 0, @column_count)
                order = Array.typed(::Java::Int).new(@column_count) { 0 }
                OS._send_message(@hwnd_header, OS::HDM_GETORDERARRAY, @column_count, order)
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
            set_scroll_width
          end
        when OS::HDN_ITEMCLICKW, OS::HDN_ITEMCLICKA
          phdn = NMHEADER.new
          OS._move_memory(phdn, l_param, NMHEADER.attr_sizeof)
          column = @columns[phdn.attr_i_item]
          if (!(column).nil?)
            column.post_event(SWT::Selection)
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
      case (hdr.attr_code)
      when OS::NM_CUSTOMDRAW
        nmcd = NMTTCUSTOMDRAW.new
        OS._move_memory(nmcd, l_param, NMTTCUSTOMDRAW.attr_sizeof)
        return wm_notify_tool_tip(nmcd, l_param)
      when OS::TTN_SHOW
        result = Composite.instance_method(:wm_notify).bind(self).call(hdr, w_param, l_param)
        if (!(result).nil?)
          return result
        end
        pos = OS._get_message_pos
        pt = POINT.new
        OS._pointstopoint(pt, pos)
        OS._screen_to_client(self.attr_handle, pt)
        index = Array.typed(::Java::Int).new(1) { 0 }
        item = Array.typed(TreeItem).new(1) { nil }
        cell_rect = Array.typed(RECT).new(1) { nil }
        item_rect = Array.typed(RECT).new(1) { nil }
        if (find_cell(pt.attr_x, pt.attr_y, item, index, cell_rect, item_rect))
          tool_rect = tool_tip_rect(item_rect[0])
          OS._map_window_points(self.attr_handle, 0, tool_rect, 2)
          width = tool_rect.attr_right - tool_rect.attr_left
          height = tool_rect.attr_bottom - tool_rect.attr_top
          flags = OS::SWP_NOACTIVATE | OS::SWP_NOZORDER | OS::SWP_NOSIZE
          if (is_custom_tool_tip)
            flags &= ~OS::SWP_NOSIZE
          end
          _set_window_pos(@item_tool_tip_handle, 0, tool_rect.attr_left, tool_rect.attr_top, width, height, flags)
          return LRESULT::ONE
        end
        return result
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
            if (!OS::IsWinCE && OS::WIN32_VERSION < OS._version(6, 0))
              OS._set_text_color(nmcd.attr_hdc, OS._get_sys_color(OS::COLOR_INFOBK))
            end
            return LRESULT.new(OS::CDRF_NOTIFYPOSTPAINT | OS::CDRF_NEWFONT)
          end
        when OS::CDDS_POSTPAINT
          if (!OS::IsWinCE && OS::WIN32_VERSION < OS._version(6, 0))
            OS._set_text_color(nmcd.attr_hdc, OS._get_sys_color(OS::COLOR_INFOTEXT))
          end
          if (!(OS._send_message(@item_tool_tip_handle, OS::TTM_GETCURRENTTOOL, 0, 0)).equal?(0))
            lpti = TOOLINFO.new
            lpti.attr_cb_size = TOOLINFO.attr_sizeof
            if (!(OS._send_message(@item_tool_tip_handle, OS::TTM_GETCURRENTTOOL, 0, lpti)).equal?(0))
              index = Array.typed(::Java::Int).new(1) { 0 }
              item = Array.typed(TreeItem).new(1) { nil }
              cell_rect = Array.typed(RECT).new(1) { nil }
              item_rect = Array.typed(RECT).new(1) { nil }
              pos = OS._get_message_pos
              pt = POINT.new
              OS._pointstopoint(pt, pos)
              OS._screen_to_client(self.attr_handle, pt)
              if (find_cell(pt.attr_x, pt.attr_y, item, index, cell_rect, item_rect))
                # long
                h_dc = OS._get_dc(self.attr_handle)
                # long
                h_font = item[0].font_handle(index[0])
                if ((h_font).equal?(-1))
                  h_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
                end
                # long
                old_font = OS._select_object(h_dc, h_font)
                result = nil
                draw_foreground = true
                cell_rect[0] = item[0].get_bounds(index[0], true, true, false, false, false, h_dc)
                if (hooks(SWT::EraseItem))
                  event = send_erase_item_event(item[0], nmcd, index[0], cell_rect[0])
                  if (is_disposed || item[0].is_disposed)
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
                  inset_rect = tool_tip_inset(cell_rect[0])
                  OS._set_window_org_ex(nmcd.attr_hdc, inset_rect.attr_left, inset_rect.attr_top, nil)
                  data = SwtGCData.new
                  data.attr_device = self.attr_display
                  data.attr_foreground = OS._get_text_color(nmcd.attr_hdc)
                  data.attr_background = OS._get_bk_color(nmcd.attr_hdc)
                  data.attr_font = Font.win32_new(self.attr_display, h_font)
                  gc = SwtGC.win32_new(nmcd.attr_hdc, data)
                  x = cell_rect[0].attr_left + INSET
                  if (!(index[0]).equal?(0))
                    x -= grid_width
                  end
                  image = item[0].get_image(index[0])
                  if (!(image).nil? || (index[0]).equal?(0))
                    size = get_image_size
                    image_rect = item[0].get_bounds(index[0], false, true, false, false, false, h_dc)
                    if ((@image_list).nil?)
                      size.attr_x = image_rect.attr_right - image_rect.attr_left
                    end
                    if (!(image).nil?)
                      rect = image.get_bounds
                      gc.draw_image(image, rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height, x, image_rect.attr_top, size.attr_x, size.attr_y)
                      x += INSET + ((index[0]).equal?(0) ? 1 : 0)
                    end
                    x += size.attr_x
                  else
                    x += INSET
                  end
                  string = item[0].get_text(index[0])
                  if (!(string).nil?)
                    flags = OS::DT_NOPREFIX | OS::DT_SINGLELINE | OS::DT_VCENTER
                    column = !(@columns).nil? ? @columns[index[0]] : nil
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
                    OS._set_rect(text_rect, x, cell_rect[0].attr_top, cell_rect[0].attr_right, cell_rect[0].attr_bottom)
                    OS._draw_text(nmcd.attr_hdc, buffer, buffer.length, text_rect, flags)
                  end
                  gc.dispose
                  OS._restore_dc(nmcd.attr_hdc, n_saved_dc)
                end
                if (hooks(SWT::PaintItem))
                  item_rect[0] = item[0].get_bounds(index[0], true, true, false, false, false, h_dc)
                  send_paint_item_event(item[0], nmcd, index[0], item_rect[0])
                end
                OS._select_object(h_dc, old_font)
                OS._release_dc(self.attr_handle, h_dc)
                if (!(result).nil?)
                  return result
                end
              end
              throw :break_case, :thrown
            end
          end
        end
      end
      return nil
    end
    
    private
    alias_method :initialize__tree, :initialize
  end
  
end
