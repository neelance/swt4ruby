require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module TableCursorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # A TableCursor provides a way for the user to navigate around a Table
  # using the keyboard.  It also provides a mechanism for selecting an
  # individual cell in a table.
  # 
  # <p> Here is an example of using a TableCursor to navigate to a cell and then edit it.
  # 
  # <code><pre>
  # public static void main(String[] args) {
  # Display display = new Display();
  # Shell shell = new Shell(display);
  # shell.setLayout(new GridLayout());
  # 
  # // create a a table with 3 columns and fill with data
  # final Table table = new Table(shell, SWT.BORDER | SWT.MULTI | SWT.FULL_SELECTION);
  # table.setLayoutData(new GridData(GridData.FILL_BOTH));
  # TableColumn column1 = new TableColumn(table, SWT.NONE);
  # TableColumn column2 = new TableColumn(table, SWT.NONE);
  # TableColumn column3 = new TableColumn(table, SWT.NONE);
  # for (int i = 0; i &lt; 100; i++) {
  # TableItem item = new TableItem(table, SWT.NONE);
  # item.setText(new String[] { "cell "+i+" 0", "cell "+i+" 1", "cell "+i+" 2"});
  # }
  # column1.pack();
  # column2.pack();
  # column3.pack();
  # 
  # // create a TableCursor to navigate around the table
  # final TableCursor cursor = new TableCursor(table, SWT.NONE);
  # // create an editor to edit the cell when the user hits "ENTER"
  # // while over a cell in the table
  # final ControlEditor editor = new ControlEditor(cursor);
  # editor.grabHorizontal = true;
  # editor.grabVertical = true;
  # 
  # cursor.addSelectionListener(new SelectionAdapter() {
  # // when the TableEditor is over a cell, select the corresponding row in
  # // the table
  # public void widgetSelected(SelectionEvent e) {
  # table.setSelection(new TableItem[] {cursor.getRow()});
  # }
  # // when the user hits "ENTER" in the TableCursor, pop up a text editor so that
  # // they can change the text of the cell
  # public void widgetDefaultSelected(SelectionEvent e){
  # final Text text = new Text(cursor, SWT.NONE);
  # TableItem row = cursor.getRow();
  # int column = cursor.getColumn();
  # text.setText(row.getText(column));
  # text.addKeyListener(new KeyAdapter() {
  # public void keyPressed(KeyEvent e) {
  # // close the text editor and copy the data over
  # // when the user hits "ENTER"
  # if (e.character == SWT.CR) {
  # TableItem row = cursor.getRow();
  # int column = cursor.getColumn();
  # row.setText(column, text.getText());
  # text.dispose();
  # }
  # // close the text editor when the user hits "ESC"
  # if (e.character == SWT.ESC) {
  # text.dispose();
  # }
  # }
  # });
  # editor.setEditor(text);
  # text.setFocus();
  # }
  # });
  # // Hide the TableCursor when the user hits the "MOD1" or "MOD2" key.
  # // This allows the user to select multiple items in the table.
  # cursor.addKeyListener(new KeyAdapter() {
  # public void keyPressed(KeyEvent e) {
  # if (e.keyCode == SWT.MOD1 ||
  # e.keyCode == SWT.MOD2 ||
  # (e.stateMask & SWT.MOD1) != 0 ||
  # (e.stateMask & SWT.MOD2) != 0) {
  # cursor.setVisible(false);
  # }
  # }
  # });
  # // Show the TableCursor when the user releases the "MOD2" or "MOD1" key.
  # // This signals the end of the multiple selection task.
  # table.addKeyListener(new KeyAdapter() {
  # public void keyReleased(KeyEvent e) {
  # if (e.keyCode == SWT.MOD1 && (e.stateMask & SWT.MOD2) != 0) return;
  # if (e.keyCode == SWT.MOD2 && (e.stateMask & SWT.MOD1) != 0) return;
  # if (e.keyCode != SWT.MOD1 && (e.stateMask & SWT.MOD1) != 0) return;
  # if (e.keyCode != SWT.MOD2 && (e.stateMask & SWT.MOD2) != 0) return;
  # 
  # TableItem[] selection = table.getSelection();
  # TableItem row = (selection.length == 0) ? table.getItem(table.getTopIndex()) : selection[0];
  # table.showItem(row);
  # cursor.setSelection(row, 0);
  # cursor.setVisible(true);
  # cursor.setFocus();
  # }
  # });
  # 
  # shell.open();
  # while (!shell.isDisposed()) {
  # if (!display.readAndDispatch())
  # display.sleep();
  # }
  # display.dispose();
  # }
  # </pre></code>
  # 
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>BORDER</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection, DefaultSelection</dd>
  # </dl>
  # 
  # @since 2.0
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tablecursor">TableCursor snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class TableCursor < TableCursorImports.const_get :Canvas
    include_class_members TableCursorImports
    
    attr_accessor :table
    alias_method :attr_table, :table
    undef_method :table
    alias_method :attr_table=, :table=
    undef_method :table=
    
    attr_accessor :row
    alias_method :attr_row, :row
    undef_method :row
    alias_method :attr_row=, :row=
    undef_method :row=
    
    attr_accessor :column
    alias_method :attr_column, :column
    undef_method :column
    alias_method :attr_column=, :column=
    undef_method :column=
    
    attr_accessor :table_listener
    alias_method :attr_table_listener, :table_listener
    undef_method :table_listener
    alias_method :attr_table_listener=, :table_listener=
    undef_method :table_listener=
    
    attr_accessor :resize_listener
    alias_method :attr_resize_listener, :resize_listener
    undef_method :resize_listener
    alias_method :attr_resize_listener=, :resize_listener=
    undef_method :resize_listener=
    
    attr_accessor :dispose_item_listener
    alias_method :attr_dispose_item_listener, :dispose_item_listener
    undef_method :dispose_item_listener
    alias_method :attr_dispose_item_listener=, :dispose_item_listener=
    undef_method :dispose_item_listener=
    
    attr_accessor :dispose_column_listener
    alias_method :attr_dispose_column_listener, :dispose_column_listener
    undef_method :dispose_column_listener
    alias_method :attr_dispose_column_listener=, :dispose_column_listener=
    undef_method :dispose_column_listener=
    
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    class_module.module_eval {
      # By default, invert the list selection colors
      const_set_lazy(:BACKGROUND) { SWT::COLOR_LIST_SELECTION_TEXT }
      const_attr_reader  :BACKGROUND
      
      const_set_lazy(:FOREGROUND) { SWT::COLOR_LIST_SELECTION }
      const_attr_reader  :FOREGROUND
    }
    
    typesig { [Table, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # table and a style value describing its behavior and appearance.
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
    # @param parent a Table control which will be the parent of the new instance (cannot be null)
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
    # @see SWT#BORDER
    # @see Widget#checkSubclass()
    # @see Widget#getStyle()
    def initialize(parent, style)
      @table = nil
      @row = nil
      @column = nil
      @table_listener = nil
      @resize_listener = nil
      @dispose_item_listener = nil
      @dispose_column_listener = nil
      @background = nil
      @foreground = nil
      super(parent, style)
      @row = nil
      @column = nil
      @background = nil
      @foreground = nil
      @table = parent
      set_background(nil)
      set_foreground(nil)
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members TableCursor
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_type)
          when SWT::Dispose
            dispose(event)
          when SWT::FocusIn, SWT::FocusOut
            redraw
          when SWT::KeyDown
            key_down(event)
          when SWT::Paint
            paint(event)
          when SWT::Traverse
            event.attr_doit = true
            case (event.attr_detail)
            when SWT::TRAVERSE_ARROW_NEXT, SWT::TRAVERSE_ARROW_PREVIOUS, SWT::TRAVERSE_RETURN
              event.attr_doit = false
            end
          end
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      events = Array.typed(::Java::Int).new([SWT::Dispose, SWT::FocusIn, SWT::FocusOut, SWT::KeyDown, SWT::Paint, SWT::Traverse])
      i = 0
      while i < events.attr_length
        add_listener(events[i], listener)
        i += 1
      end
      @table_listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members TableCursor
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_type)
          when SWT::MouseDown
            table_mouse_down(event)
          when SWT::FocusIn
            table_focus_in(event)
          end
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @table.add_listener(SWT::FocusIn, @table_listener)
      @table.add_listener(SWT::MouseDown, @table_listener)
      @dispose_item_listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members TableCursor
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          unhook_row_column_listeners
          self.attr_row = nil
          self.attr_column = nil
          __resize
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @dispose_column_listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members TableCursor
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          unhook_row_column_listeners
          self.attr_row = nil
          self.attr_column = nil
          __resize
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @resize_listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members TableCursor
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          __resize
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      h_bar = @table.get_horizontal_bar
      if (!(h_bar).nil?)
        h_bar.add_listener(SWT::Selection, @resize_listener)
      end
      v_bar = @table.get_vertical_bar
      if (!(v_bar).nil?)
        v_bar.add_listener(SWT::Selection, @resize_listener)
      end
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the item field of the event object is valid.
    # If the receiver has <code>SWT.CHECK</code> style set and the check selection changes,
    # the event object detail field contains the value <code>SWT.CHECK</code>.
    # <code>widgetDefaultSelected</code> is typically called when an item is double-clicked.
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
    # @see SelectionEvent
    # @see #removeSelectionListener(SelectionListener)
    def add_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Selection, typed_listener)
      add_listener(SWT::DefaultSelection, typed_listener)
    end
    
    typesig { [Event] }
    def dispose(event)
      @table.remove_listener(SWT::FocusIn, @table_listener)
      @table.remove_listener(SWT::MouseDown, @table_listener)
      unhook_row_column_listeners
      h_bar = @table.get_horizontal_bar
      if (!(h_bar).nil?)
        h_bar.remove_listener(SWT::Selection, @resize_listener)
      end
      v_bar = @table.get_vertical_bar
      if (!(v_bar).nil?)
        v_bar.remove_listener(SWT::Selection, @resize_listener)
      end
    end
    
    typesig { [Event] }
    def key_down(event)
      if ((@row).nil?)
        return
      end
      case (event.attr_character)
      when SWT::CR
        notify_listeners(SWT::DefaultSelection, Event.new)
        return
      end
      row_index = @table.index_of(@row)
      column_index = (@column).nil? ? 0 : @table.index_of(@column)
      catch(:break_case) do
        case (event.attr_key_code)
        when SWT::ARROW_UP
          set_row_column(Math.max(0, row_index - 1), column_index, true)
        when SWT::ARROW_DOWN
          set_row_column(Math.min(row_index + 1, @table.get_item_count - 1), column_index, true)
        when SWT::ARROW_LEFT, SWT::ARROW_RIGHT
          column_count = @table.get_column_count
          if ((column_count).equal?(0))
            throw :break_case, :thrown
          end
          order = @table.get_column_order
          index = 0
          while (index < order.attr_length)
            if ((order[index]).equal?(column_index))
              break
            end
            index += 1
          end
          if ((index).equal?(order.attr_length))
            index = 0
          end
          lead_key = !((get_style & SWT::RIGHT_TO_LEFT)).equal?(0) ? SWT::ARROW_RIGHT : SWT::ARROW_LEFT
          if ((event.attr_key_code).equal?(lead_key))
            set_row_column(row_index, order[Math.max(0, index - 1)], true)
          else
            set_row_column(row_index, order[Math.min(column_count - 1, index + 1)], true)
          end
        when SWT::HOME
          set_row_column(0, column_index, true)
        when SWT::END_
          i = @table.get_item_count - 1
          set_row_column(i, column_index, true)
        when SWT::PAGE_UP
          index = @table.get_top_index
          if ((index).equal?(row_index))
            rect = @table.get_client_area
            item = @table.get_item(index)
            item_rect = item.get_bounds(0)
            rect.attr_height -= item_rect.attr_y
            height = @table.get_item_height
            page = Math.max(1, rect.attr_height / height)
            index = Math.max(0, index - page + 1)
          end
          set_row_column(index, column_index, true)
        when SWT::PAGE_DOWN
          index = @table.get_top_index
          rect = @table.get_client_area
          item = @table.get_item(index)
          item_rect = item.get_bounds(0)
          rect.attr_height -= item_rect.attr_y
          height = @table.get_item_height
          page = Math.max(1, rect.attr_height / height)
          end_ = @table.get_item_count - 1
          index = Math.min(end_, index + page - 1)
          if ((index).equal?(row_index))
            index = Math.min(end_, index + page - 1)
          end
          set_row_column(index, column_index, true)
        end
      end
    end
    
    typesig { [Event] }
    def paint(event)
      if ((@row).nil?)
        return
      end
      column_index = (@column).nil? ? 0 : @table.index_of(@column)
      gc = event.attr_gc
      display = get_display
      gc.set_background(get_background)
      gc.set_foreground(get_foreground)
      gc.fill_rectangle(event.attr_x, event.attr_y, event.attr_width, event.attr_height)
      x = 0
      size = get_size
      image = @row.get_image(column_index)
      if (!(image).nil?)
        image_size = image.get_bounds
        image_y = (size.attr_y - image_size.attr_height) / 2
        gc.draw_image(image, x, image_y)
        x += image_size.attr_width
      end
      text = @row.get_text(column_index)
      if (text.length > 0)
        bounds = @row.get_bounds(column_index)
        extent = gc.string_extent(text)
        # Temporary code - need a better way to determine table trim
        platform = SWT.get_platform
        if (("win32" == platform))
          # $NON-NLS-1$
          if ((@table.get_column_count).equal?(0) || (column_index).equal?(0))
            x += 2
          else
            alignmnent = @column.get_alignment
            case (alignmnent)
            when SWT::LEFT
              x += 6
            when SWT::RIGHT
              x = bounds.attr_width - extent.attr_x - 6
            when SWT::CENTER
              x += (bounds.attr_width - x - extent.attr_x) / 2
            end
          end
        else
          if ((@table.get_column_count).equal?(0))
            x += 5
          else
            alignmnent = @column.get_alignment
            case (alignmnent)
            when SWT::LEFT
              x += 5
            when SWT::RIGHT
              x = bounds.attr_width - extent.attr_x - 2
            when SWT::CENTER
              x += (bounds.attr_width - x - extent.attr_x) / 2 + 2
            end
          end
        end
        text_y = (size.attr_y - extent.attr_y) / 2
        gc.draw_string(text, x, text_y)
      end
      if (is_focus_control)
        gc.set_background(display.get_system_color(SWT::COLOR_BLACK))
        gc.set_foreground(display.get_system_color(SWT::COLOR_WHITE))
        gc.draw_focus(0, 0, size.attr_x, size.attr_y)
      end
    end
    
    typesig { [Event] }
    def table_focus_in(event)
      if (is_disposed)
        return
      end
      if (is_visible)
        if ((@row).nil? && (@column).nil?)
          return
        end
        set_focus
      end
    end
    
    typesig { [Event] }
    def table_mouse_down(event)
      if (is_disposed || !is_visible)
        return
      end
      pt = Point.new(event.attr_x, event.attr_y)
      line_width = @table.get_lines_visible ? @table.get_grid_line_width : 0
      item = @table.get_item(pt)
      if (!((@table.get_style & SWT::FULL_SELECTION)).equal?(0))
        if ((item).nil?)
          return
        end
      else
        start = !(item).nil? ? @table.index_of(item) : @table.get_top_index
        end_ = @table.get_item_count
        client_rect = @table.get_client_area
        i = start
        while i < end_
          next_item = @table.get_item(i)
          rect = next_item.get_bounds(0)
          if (pt.attr_y >= rect.attr_y && pt.attr_y < rect.attr_y + rect.attr_height + line_width)
            item = next_item
            break
          end
          if (rect.attr_y > client_rect.attr_y + client_rect.attr_height)
            return
          end
          i += 1
        end
        if ((item).nil?)
          return
        end
      end
      new_column = nil
      column_count = @table.get_column_count
      if ((column_count).equal?(0))
        if (((@table.get_style & SWT::FULL_SELECTION)).equal?(0))
          rect = item.get_bounds(0)
          rect.attr_width += line_width
          rect.attr_height += line_width
          if (!rect.contains(pt))
            return
          end
        end
      else
        i = 0
        while i < column_count
          rect = item.get_bounds(i)
          rect.attr_width += line_width
          rect.attr_height += line_width
          if (rect.contains(pt))
            new_column = @table.get_column(i)
            break
          end
          i += 1
        end
        if ((new_column).nil?)
          if (((@table.get_style & SWT::FULL_SELECTION)).equal?(0))
            return
          end
          new_column = @table.get_column(0)
        end
      end
      set_row_column(item, new_column, true)
      set_focus
      return
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_row_column(row, column, notify)
      item = (row).equal?(-1) ? nil : @table.get_item(row)
      col = (column).equal?(-1) || (@table.get_column_count).equal?(0) ? nil : @table.get_column(column)
      set_row_column(item, col, notify)
    end
    
    typesig { [TableItem, TableColumn, ::Java::Boolean] }
    def set_row_column(row, column, notify)
      if ((@row).equal?(row) && (@column).equal?(column))
        return
      end
      if (!(@row).nil? && !(@row).equal?(row))
        @row.remove_listener(SWT::Dispose, @dispose_item_listener)
        @row = nil
      end
      if (!(@column).nil? && !(@column).equal?(column))
        @column.remove_listener(SWT::Dispose, @dispose_column_listener)
        @column.remove_listener(SWT::Move, @resize_listener)
        @column.remove_listener(SWT::Resize, @resize_listener)
        @column = nil
      end
      if (!(row).nil?)
        if (!(@row).equal?(row))
          @row = row
          row.add_listener(SWT::Dispose, @dispose_item_listener)
          @table.show_item(row)
        end
        if (!(@column).equal?(column) && !(column).nil?)
          @column = column
          column.add_listener(SWT::Dispose, @dispose_column_listener)
          column.add_listener(SWT::Move, @resize_listener)
          column.add_listener(SWT::Resize, @resize_listener)
          @table.show_column(column)
        end
        column_index = (column).nil? ? 0 : @table.index_of(column)
        set_bounds(row.get_bounds(column_index))
        redraw
        if (notify)
          notify_listeners(SWT::Selection, Event.new)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_visible(visible)
      check_widget
      if (visible)
        __resize
      end
      super(visible)
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
    # 
    # @since 3.0
    def remove_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(SWT::Selection, listener)
      remove_listener(SWT::DefaultSelection, listener)
    end
    
    typesig { [] }
    def __resize
      if ((@row).nil?)
        set_bounds(-200, -200, 0, 0)
      else
        column_index = (@column).nil? ? 0 : @table.index_of(@column)
        set_bounds(@row.get_bounds(column_index))
      end
    end
    
    typesig { [] }
    # Returns the column over which the TableCursor is positioned.
    # 
    # @return the column for the current position
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_column
      check_widget
      return (@column).nil? ? 0 : @table.index_of(@column)
    end
    
    typesig { [] }
    # Returns the background color that the receiver will use to draw.
    # 
    # @return the receiver's background color
    def get_background
      check_widget
      if ((@background).nil?)
        return get_display.get_system_color(BACKGROUND)
      end
      return @background
    end
    
    typesig { [] }
    # Returns the foreground color that the receiver will use to draw.
    # 
    # @return the receiver's foreground color
    def get_foreground
      check_widget
      if ((@foreground).nil?)
        return get_display.get_system_color(FOREGROUND)
      end
      return @foreground
    end
    
    typesig { [] }
    # Returns the row over which the TableCursor is positioned.
    # 
    # @return the item for the current position
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_row
      check_widget
      return @row
    end
    
    typesig { [Color] }
    # Sets the receiver's background color to the color specified
    # by the argument, or to the default system color for the control
    # if the argument is null.
    # <p>
    # Note: This operation is a hint and may be overridden by the platform.
    # For example, on Windows the background of a Button cannot be changed.
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
    def set_background(color)
      @background = color
      super(get_background)
      redraw
    end
    
    typesig { [Color] }
    # Sets the receiver's foreground color to the color specified
    # by the argument, or to the default system color for the control
    # if the argument is null.
    # <p>
    # Note: This operation is a hint and may be overridden by the platform.
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
    def set_foreground(color)
      @foreground = color
      super(get_foreground)
      redraw
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Positions the TableCursor over the cell at the given row and column in the parent table.
    # 
    # @param row the index of the row for the cell to select
    # @param column the index of column for the cell to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(row, column)
      check_widget
      column_count = @table.get_column_count
      max_column_index = (column_count).equal?(0) ? 0 : column_count - 1
      if (row < 0 || row >= @table.get_item_count || column < 0 || column > max_column_index)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      set_row_column(row, column, false)
    end
    
    typesig { [TableItem, ::Java::Int] }
    # Positions the TableCursor over the cell at the given row and column in the parent table.
    # 
    # @param row the TableItem of the row for the cell to select
    # @param column the index of column for the cell to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(row, column)
      check_widget
      column_count = @table.get_column_count
      max_column_index = (column_count).equal?(0) ? 0 : column_count - 1
      if ((row).nil? || row.is_disposed || column < 0 || column > max_column_index)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      set_row_column(@table.index_of(row), column, false)
    end
    
    typesig { [] }
    def unhook_row_column_listeners
      if (!(@column).nil?)
        @column.remove_listener(SWT::Dispose, @dispose_column_listener)
        @column.remove_listener(SWT::Move, @resize_listener)
        @column.remove_listener(SWT::Resize, @resize_listener)
        @column = nil
      end
      if (!(@row).nil?)
        @row.remove_listener(SWT::Dispose, @dispose_item_listener)
        @row = nil
      end
    end
    
    private
    alias_method :initialize__table_cursor, :initialize
  end
  
end
