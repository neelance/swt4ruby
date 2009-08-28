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
  module TreeEditorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # A TreeEditor is a manager for a Control that appears above a cell in a Tree and tracks with the
  # moving and resizing of that cell.  It can be used to display a text widget above a cell
  # in a Tree so that the user can edit the contents of that cell.  It can also be used to display
  # a button that can launch a dialog for modifying the contents of the associated cell.
  # 
  # <p> Here is an example of using a TreeEditor:
  # <code><pre>
  # final Tree tree = new Tree(shell, SWT.BORDER);
  # for (int i = 0; i &lt; 3; i++) {
  # TreeItem item = new TreeItem(tree, SWT.NONE);
  # item.setText("item " + i);
  # for (int j = 0; j &lt; 3; j++) {
  # TreeItem subItem = new TreeItem(item, SWT.NONE);
  # subItem.setText("item " + i + " " + j);
  # }
  # }
  # 
  # final TreeEditor editor = new TreeEditor(tree);
  # //The editor must have the same size as the cell and must
  # //not be any smaller than 50 pixels.
  # editor.horizontalAlignment = SWT.LEFT;
  # editor.grabHorizontal = true;
  # editor.minimumWidth = 50;
  # 
  # tree.addSelectionListener(new SelectionAdapter() {
  # public void widgetSelected(SelectionEvent e) {
  # // Clean up any previous editor control
  # Control oldEditor = editor.getEditor();
  # if (oldEditor != null) oldEditor.dispose();
  # 
  # // Identify the selected row
  # TreeItem item = (TreeItem)e.item;
  # if (item == null) return;
  # 
  # // The control that will be the editor must be a child of the Tree
  # Text newEditor = new Text(tree, SWT.NONE);
  # newEditor.setText(item.getText());
  # newEditor.addModifyListener(new ModifyListener() {
  # public void modifyText(ModifyEvent e) {
  # Text text = (Text)editor.getEditor();
  # editor.getItem().setText(text.getText());
  # }
  # });
  # newEditor.selectAll();
  # newEditor.setFocus();
  # editor.setEditor(newEditor, item);
  # }
  # });
  # </pre></code>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#treeeditor">TreeEditor snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class TreeEditor < TreeEditorImports.const_get :ControlEditor
    include_class_members TreeEditorImports
    
    attr_accessor :tree
    alias_method :attr_tree, :tree
    undef_method :tree
    alias_method :attr_tree=, :tree=
    undef_method :tree=
    
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
    
    attr_accessor :timer
    alias_method :attr_timer, :timer
    undef_method :timer
    alias_method :attr_timer=, :timer=
    undef_method :timer=
    
    class_module.module_eval {
      const_set_lazy(:TIMEOUT) { 1500 }
      const_attr_reader  :TIMEOUT
    }
    
    typesig { [Tree] }
    # Creates a TreeEditor for the specified Tree.
    # 
    # @param tree the Tree Control above which this editor will be displayed
    def initialize(tree)
      @tree = nil
      @item = nil
      @column = 0
      @column_listener = nil
      @tree_listener = nil
      @timer = nil
      super(tree)
      @column = 0
      @tree = tree
      @column_listener = Class.new(ControlListener.class == Class ? ControlListener : Object) do
        extend LocalClass
        include_class_members TreeEditor
        include ControlListener if ControlListener.class == Module
        
        typesig { [ControlEvent] }
        define_method :control_moved do |e|
          layout
        end
        
        typesig { [ControlEvent] }
        define_method :control_resized do |e|
          layout
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @timer = Class.new(Runnable.class == Class ? Runnable : Object) do
        extend LocalClass
        include_class_members TreeEditor
        include Runnable if Runnable.class == Module
        
        typesig { [] }
        define_method :run do
          layout
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @tree_listener = Class.new(TreeListener.class == Class ? TreeListener : Object) do
        extend LocalClass
        include_class_members TreeEditor
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
        
        typesig { [] }
        define_method :initialize do
          @runnable = nil
          super()
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
              if (@local_class_parent.local_class_parent.attr_tree.is_disposed)
                return
              end
              layout
              self.attr_editor.set_visible(true)
            end
            
            typesig { [] }
            define_method :initialize do
              super()
            end
            
            private
            alias_method :initialize_anonymous, :initialize
          end.new_local(self)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      tree.add_tree_listener(@tree_listener)
      # To be consistent with older versions of SWT, grabVertical defaults to true
      self.attr_grab_vertical = true
    end
    
    typesig { [] }
    def compute_bounds
      if ((@item).nil? || (@column).equal?(-1) || @item.is_disposed)
        return Rectangle.new(0, 0, 0, 0)
      end
      cell = @item.get_bounds(@column)
      rect = @item.get_image_bounds(@column)
      cell.attr_x = rect.attr_x + rect.attr_width
      cell.attr_width -= rect.attr_width
      area = @tree.get_client_area
      if (cell.attr_x < area.attr_x + area.attr_width)
        if (cell.attr_x + cell.attr_width > area.attr_x + area.attr_width)
          cell.attr_width = area.attr_x + area.attr_width - cell.attr_x
        end
      end
      editor_rect = Rectangle.new(cell.attr_x, cell.attr_y, self.attr_minimum_width, self.attr_minimum_height)
      if (self.attr_grab_horizontal)
        if ((@tree.get_column_count).equal?(0))
          # Bounds of tree item only include the text area - stretch out to include
          # entire client area
          cell.attr_width = area.attr_x + area.attr_width - cell.attr_x
        end
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
      # don't let the editor overlap with the +/- of the tree
      editor_rect.attr_x = Math.max(cell.attr_x, editor_rect.attr_x)
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
    # Removes all associations between the TreeEditor and the row in the tree.  The
    # tree and the editor Control are <b>not</b> disposed.
    def dispose
      if (!(@tree).nil? && !@tree.is_disposed)
        if (@column > -1 && @column < @tree.get_column_count)
          tree_column = @tree.get_column(@column)
          tree_column.remove_control_listener(@column_listener)
        end
        if (!(@tree_listener).nil?)
          @tree.remove_tree_listener(@tree_listener)
        end
      end
      @column_listener = nil
      @tree_listener = nil
      @tree = nil
      @item = nil
      @column = 0
      @timer = nil
      super
    end
    
    typesig { [] }
    # Returns the zero based index of the column of the cell being tracked by this editor.
    # 
    # @return the zero based index of the column of the cell being tracked by this editor
    # 
    # @since 3.1
    def get_column
      return @column
    end
    
    typesig { [] }
    # Returns the TreeItem for the row of the cell being tracked by this editor.
    # 
    # @return the TreeItem for the row of the cell being tracked by this editor
    def get_item
      return @item
    end
    
    typesig { [] }
    def resize
      layout
      # On some platforms, the table scrolls when an item that
      # is partially visible at the bottom of the table is
      # selected.  Ensure that the correct row is edited by
      # laying out one more time in a timerExec().
      if (!(@tree).nil?)
        display = @tree.get_display
        display.timer_exec(-1, @timer)
        display.timer_exec(TIMEOUT, @timer)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the zero based index of the column of the cell being tracked by this editor.
    # 
    # @param column the zero based index of the column of the cell being tracked by this editor
    # 
    # @since 3.1
    def set_column(column)
      column_count = @tree.get_column_count
      # Separately handle the case where the tree has no TreeColumns.
      # In this situation, there is a single default column.
      if ((column_count).equal?(0))
        @column = ((column).equal?(0)) ? 0 : -1
        resize
        return
      end
      if (@column > -1 && @column < column_count)
        tree_column = @tree.get_column(@column)
        tree_column.remove_control_listener(@column_listener)
        @column = -1
      end
      if (column < 0 || column >= @tree.get_column_count)
        return
      end
      @column = column
      tree_column = @tree.get_column(@column)
      tree_column.add_control_listener(@column_listener)
      resize
    end
    
    typesig { [TreeItem] }
    # Specifies the <code>TreeItem</code> that is to be edited.
    # 
    # @param item the item to be edited
    def set_item(item)
      @item = item
      resize
    end
    
    typesig { [Control, TreeItem, ::Java::Int] }
    # Specify the Control that is to be displayed and the cell in the tree that it is to be positioned above.
    # 
    # <p>Note: The Control provided as the editor <b>must</b> be created with its parent being the Tree control
    # specified in the TreeEditor constructor.
    # 
    # @param editor the Control that is displayed above the cell being edited
    # @param item the TreeItem for the row of the cell being tracked by this editor
    # @param column the zero based index of the column of the cell being tracked by this editor
    # 
    # @since 3.1
    def set_editor(editor, item, column)
      set_item(item)
      set_column(column)
      set_editor(editor)
    end
    
    typesig { [Control] }
    def set_editor(editor)
      super(editor)
      resize
    end
    
    typesig { [Control, TreeItem] }
    # Specify the Control that is to be displayed and the cell in the tree that it is to be positioned above.
    # 
    # <p>Note: The Control provided as the editor <b>must</b> be created with its parent being the Tree control
    # specified in the TreeEditor constructor.
    # 
    # @param editor the Control that is displayed above the cell being edited
    # @param item the TreeItem for the row of the cell being tracked by this editor
    def set_editor(editor, item)
      set_item(item)
      set_editor(editor)
    end
    
    typesig { [] }
    def layout
      if ((@tree).nil? || @tree.is_disposed)
        return
      end
      if ((@item).nil? || @item.is_disposed)
        return
      end
      column_count = @tree.get_column_count
      if ((column_count).equal?(0) && !(@column).equal?(0))
        return
      end
      if (column_count > 0 && (@column < 0 || @column >= column_count))
        return
      end
      super
    end
    
    private
    alias_method :initialize__tree_editor, :initialize
  end
  
end
