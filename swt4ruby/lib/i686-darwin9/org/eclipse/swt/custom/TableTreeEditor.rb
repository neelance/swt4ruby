require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module TableTreeEditorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # A TableTreeEditor is a manager for a Control that appears above a cell in a TableTree
  # and tracks with the moving and resizing of that cell.  It can be used to display a
  # text widget above a cell in a TableTree so that the user can edit the contents of
  # that cell.  It can also be used to display a button that can launch a dialog for
  # modifying the contents of the associated cell.
  # 
  # <p> Here is an example of using a TableTreeEditor:
  # <code><pre>
  # final TableTree tableTree = new TableTree(shell, SWT.FULL_SELECTION | SWT.HIDE_SELECTION);
  # final Table table = tableTree.getTable();
  # TableColumn column1 = new TableColumn(table, SWT.NONE);
  # TableColumn column2 = new TableColumn(table, SWT.NONE);
  # for (int i = 0; i &lt; 10; i++) {
  # TableTreeItem item = new TableTreeItem(tableTree, SWT.NONE);
  # item.setText(0, "item " + i);
  # item.setText(1, "edit this value");
  # for (int j = 0; j &lt; 3; j++) {
  # TableTreeItem subitem = new TableTreeItem(item, SWT.NONE);
  # subitem.setText(0, "subitem " + i + " " + j);
  # subitem.setText(1, "edit this value");
  # }
  # }
  # column1.setWidth(100);
  # column2.pack();
  # 
  # final TableTreeEditor editor = new TableTreeEditor(tableTree);
  # //The editor must have the same size as the cell and must
  # //not be any smaller than 50 pixels.
  # editor.horizontalAlignment = SWT.LEFT;
  # editor.grabHorizontal = true;
  # editor.minimumWidth = 50;
  # // editing the second column
  # final int EDITABLECOLUMN = 1;
  # 
  # tableTree.addSelectionListener(new SelectionAdapter() {
  # public void widgetSelected(SelectionEvent e) {
  # // Clean up any previous editor control
  # Control oldEditor = editor.getEditor();
  # if (oldEditor != null) oldEditor.dispose();
  # 
  # // Identify the selected row
  # TableTreeItem item = (TableTreeItem)e.item;
  # if (item == null) return;
  # 
  # // The control that will be the editor must be a child of the Table
  # Text newEditor = new Text(table, SWT.NONE);
  # newEditor.setText(item.getText(EDITABLECOLUMN));
  # newEditor.addModifyListener(new ModifyListener() {
  # public void modifyText(ModifyEvent e) {
  # Text text = (Text)editor.getEditor();
  # editor.getItem().setText(EDITABLECOLUMN, text.getText());
  # }
  # });
  # newEditor.selectAll();
  # newEditor.setFocus();
  # editor.setEditor(newEditor, item, EDITABLECOLUMN);
  # }
  # });
  # </pre></code>
  # 
  # @deprecated As of 3.1 use TreeEditor with Tree, TreeItem and TreeColumn
  class TableTreeEditor < TableTreeEditorImports.const_get :ControlEditor
    include_class_members TableTreeEditorImports
    
    attr_accessor :table_tree
    alias_method :attr_table_tree, :table_tree
    undef_method :table_tree
    alias_method :attr_table_tree=, :table_tree=
    undef_method :table_tree=
    
    attr_accessor :item
    alias_method :attr_item, :item
    undef_method :item
    alias_method :attr_item=, :item=
    undef_method :item=
    
    attr_accessor :column
    alias_method :attr_column, :column
    undef_method :column
    alias_method :attr_column=, :column=
    undef_method :column=
    
    attr_accessor :column_listener
    alias_method :attr_column_listener, :column_listener
    undef_method :column_listener
    alias_method :attr_column_listener=, :column_listener=
    undef_method :column_listener=
    
    attr_accessor :tree_listener
    alias_method :attr_tree_listener, :tree_listener
    undef_method :tree_listener
    alias_method :attr_tree_listener=, :tree_listener=
    undef_method :tree_listener=
    
    typesig { [TableTree] }
    # Creates a TableTreeEditor for the specified TableTree.
    # 
    # @param tableTree the TableTree Control above which this editor will be displayed
    def initialize(table_tree)
      @table_tree = nil
      @item = nil
      @column = 0
      @column_listener = nil
      @tree_listener = nil
      super(table_tree.get_table)
      @column = -1
      @table_tree = table_tree
      @tree_listener = Class.new(TreeListener.class == Class ? TreeListener : Object) do
        extend LocalClass
        include_class_members TableTreeEditor
        include TreeListener if TreeListener.class == Module
        
        attr_accessor :runnable
        alias_method :attr_runnable, :runnable
        undef_method :runnable
        alias_method :attr_runnable=, :runnable=
        undef_method :runnable=
        
        typesig { [TreeEvent] }
        define_method :tree_collapsed do |e|
          if ((self.attr_editor).nil? || self.attr_editor.is_disposed)
            return
          end
          self.attr_editor.set_visible(false)
          e.attr_display.async_exec(@runnable)
        end
        
        typesig { [TreeEvent] }
        define_method :tree_expanded do |e|
          if ((self.attr_editor).nil? || self.attr_editor.is_disposed)
            return
          end
          self.attr_editor.set_visible(false)
          e.attr_display.async_exec(@runnable)
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          @runnable = nil
          super(*args)
          tree_listener_class = self.class
          @runnable = Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
            extend LocalClass
            include_class_members tree_listener_class
            include class_self::Runnable if class_self::Runnable.class == Module
            
            typesig { [] }
            define_method :run do
              if ((self.attr_editor).nil? || self.attr_editor.is_disposed)
                return
              end
              if (@local_class_parent.local_class_parent.attr_table_tree.is_disposed)
                return
              end
              layout
              self.attr_editor.set_visible(true)
            end
            
            typesig { [Vararg.new(Object)] }
            define_method :initialize do |*args|
              super(*args)
            end
            
            private
            alias_method :initialize_anonymous, :initialize
          end.new_local(self)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      table_tree.add_tree_listener(@tree_listener)
      @column_listener = Class.new(ControlListener.class == Class ? ControlListener : Object) do
        extend LocalClass
        include_class_members TableTreeEditor
        include ControlListener if ControlListener.class == Module
        
        typesig { [ControlEvent] }
        define_method :control_moved do |e|
          layout
        end
        
        typesig { [ControlEvent] }
        define_method :control_resized do |e|
          layout
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      # To be consistent with older versions of SWT, grabVertical defaults to true
      self.attr_grab_vertical = true
    end
    
    typesig { [] }
    def compute_bounds
      if ((@item).nil? || (@column).equal?(-1) || @item.is_disposed || (@item.attr_table_item).nil?)
        return Rectangle.new(0, 0, 0, 0)
      end
      cell = @item.get_bounds(@column)
      area = @table_tree.get_client_area
      if (cell.attr_x < area.attr_x + area.attr_width)
        if (cell.attr_x + cell.attr_width > area.attr_x + area.attr_width)
          cell.attr_width = area.attr_x + area.attr_width - cell.attr_x
        end
      end
      editor_rect = Rectangle.new(cell.attr_x, cell.attr_y, self.attr_minimum_width, self.attr_minimum_height)
      if (self.attr_grab_horizontal)
        editor_rect.attr_width = Math.max(cell.attr_width, self.attr_minimum_width)
      end
      if (self.attr_grab_vertical)
        editor_rect.attr_height = Math.max(cell.attr_height, self.attr_minimum_height)
      end
      if ((self.attr_horizontal_alignment).equal?(SWT::RIGHT))
        editor_rect.attr_x += cell.attr_width - editor_rect.attr_width
      else
        if ((self.attr_horizontal_alignment).equal?(SWT::LEFT))
          # do nothing - cell.x is the right answer
        else
          # default is CENTER
          editor_rect.attr_x += (cell.attr_width - editor_rect.attr_width) / 2
        end
      end
      if ((self.attr_vertical_alignment).equal?(SWT::BOTTOM))
        editor_rect.attr_y += cell.attr_height - editor_rect.attr_height
      else
        if ((self.attr_vertical_alignment).equal?(SWT::TOP))
          # do nothing - cell.y is the right answer
        else
          # default is CENTER
          editor_rect.attr_y += (cell.attr_height - editor_rect.attr_height) / 2
        end
      end
      return editor_rect
    end
    
    typesig { [] }
    # Removes all associations between the TableTreeEditor and the cell in the table tree.  The
    # TableTree and the editor Control are <b>not</b> disposed.
    def dispose
      if (!(@table_tree).nil? && !@table_tree.is_disposed)
        table = @table_tree.get_table
        if (!(table).nil? && !table.is_disposed)
          if (@column > -1 && @column < table.get_column_count)
            table_column = table.get_column(@column)
            table_column.remove_control_listener(@column_listener)
          end
        end
        if (!(@tree_listener).nil?)
          @table_tree.remove_tree_listener(@tree_listener)
        end
      end
      @tree_listener = nil
      @column_listener = nil
      @table_tree = nil
      @item = nil
      @column = -1
      super
    end
    
    typesig { [] }
    # Returns the zero based index of the column of the cell being tracked by this editor.
    # 
    # @return the zero based index of the column of the cell being tracked by this editor
    def get_column
      return @column
    end
    
    typesig { [] }
    # Returns the TableTreeItem for the row of the cell being tracked by this editor.
    # 
    # @return the TableTreeItem for the row of the cell being tracked by this editor
    def get_item
      return @item
    end
    
    typesig { [::Java::Int] }
    def set_column(column)
      table = @table_tree.get_table
      column_count = table.get_column_count
      # Separately handle the case where the table has no TableColumns.
      # In this situation, there is a single default column.
      if ((column_count).equal?(0))
        @column = ((column).equal?(0)) ? 0 : -1
        layout
        return
      end
      if (@column > -1 && @column < column_count)
        table_column = table.get_column(@column)
        table_column.remove_control_listener(@column_listener)
        @column = -1
      end
      if (column < 0 || column >= table.get_column_count)
        return
      end
      @column = column
      table_column = table.get_column(@column)
      table_column.add_control_listener(@column_listener)
      layout
    end
    
    typesig { [TableTreeItem] }
    def set_item(item)
      @item = item
      layout
    end
    
    typesig { [Control, TableTreeItem, ::Java::Int] }
    # Specify the Control that is to be displayed and the cell in the table that it is to be positioned above.
    # 
    # <p>Note: The Control provided as the editor <b>must</b> be created with its parent being the Table control
    # specified in the TableEditor constructor.
    # 
    # @param editor the Control that is displayed above the cell being edited
    # @param item the TableItem for the row of the cell being tracked by this editor
    # @param column the zero based index of the column of the cell being tracked by this editor
    def set_editor(editor, item, column)
      set_item(item)
      set_column(column)
      set_editor(editor)
    end
    
    typesig { [] }
    def layout
      if ((@table_tree).nil? || @table_tree.is_disposed)
        return
      end
      if ((@item).nil? || @item.is_disposed)
        return
      end
      table = @table_tree.get_table
      column_count = table.get_column_count
      if ((column_count).equal?(0) && !(@column).equal?(0))
        return
      end
      if (column_count > 0 && (@column < 0 || @column >= column_count))
        return
      end
      super
    end
    
    private
    alias_method :initialize__table_tree_editor, :initialize
  end
  
end
