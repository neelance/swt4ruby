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
  module ControlEditorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # A ControlEditor is a manager for a Control that appears above a composite and tracks with the
  # moving and resizing of that composite.  It can be used to display one control above
  # another control.  This could be used when editing a control that does not have editing
  # capabilities by using a text editor or for launching a dialog by placing a button
  # above a control.
  # 
  # <p> Here is an example of using a ControlEditor:
  # 
  # <code><pre>
  # Canvas canvas = new Canvas(shell, SWT.BORDER);
  # canvas.setBounds(10, 10, 300, 300);
  # Color color = new Color(null, 255, 0, 0);
  # canvas.setBackground(color);
  # ControlEditor editor = new ControlEditor (canvas);
  # // The editor will be a button in the bottom right corner of the canvas.
  # // When selected, it will launch a Color dialog that will change the background
  # // of the canvas.
  # Button button = new Button(canvas, SWT.PUSH);
  # button.setText("Select Color...");
  # button.addSelectionListener (new SelectionAdapter() {
  # public void widgetSelected(SelectionEvent e) {
  # ColorDialog dialog = new ColorDialog(shell);
  # dialog.open();
  # RGB rgb = dialog.getRGB();
  # if (rgb != null) {
  # if (color != null) color.dispose();
  # color = new Color(null, rgb);
  # canvas.setBackground(color);
  # }
  # 
  # }
  # });
  # 
  # editor.horizontalAlignment = SWT.RIGHT;
  # editor.verticalAlignment = SWT.BOTTOM;
  # editor.grabHorizontal = false;
  # editor.grabVertical = false;
  # Point size = button.computeSize(SWT.DEFAULT, SWT.DEFAULT);
  # editor.minimumWidth = size.x;
  # editor.minimumHeight = size.y;
  # editor.setEditor (button);
  # </pre></code>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ControlEditor 
    include_class_members ControlEditorImports
    
    # Specifies how the editor should be aligned relative to the control.  Allowed values
    # are SWT.LEFT, SWT.RIGHT and SWT.CENTER.  The default value is SWT.CENTER.
    attr_accessor :horizontal_alignment
    alias_method :attr_horizontal_alignment, :horizontal_alignment
    undef_method :horizontal_alignment
    alias_method :attr_horizontal_alignment=, :horizontal_alignment=
    undef_method :horizontal_alignment=
    
    # Specifies whether the editor should be sized to use the entire width of the control.
    # True means resize the editor to the same width as the cell.  False means do not adjust
    # the width of the editor.	The default value is false.
    attr_accessor :grab_horizontal
    alias_method :attr_grab_horizontal, :grab_horizontal
    undef_method :grab_horizontal
    alias_method :attr_grab_horizontal=, :grab_horizontal=
    undef_method :grab_horizontal=
    
    # Specifies the minimum width the editor can have.  This is used in association with
    # a true value of grabHorizontal.  If the cell becomes smaller than the minimumWidth, the
    # editor will not made smaller than the minimum width value.  The default value is 0.
    attr_accessor :minimum_width
    alias_method :attr_minimum_width, :minimum_width
    undef_method :minimum_width
    alias_method :attr_minimum_width=, :minimum_width=
    undef_method :minimum_width=
    
    # Specifies how the editor should be aligned relative to the control.  Allowed values
    # are SWT.TOP, SWT.BOTTOM and SWT.CENTER.  The default value is SWT.CENTER.
    attr_accessor :vertical_alignment
    alias_method :attr_vertical_alignment, :vertical_alignment
    undef_method :vertical_alignment
    alias_method :attr_vertical_alignment=, :vertical_alignment=
    undef_method :vertical_alignment=
    
    # Specifies whether the editor should be sized to use the entire height of the control.
    # True means resize the editor to the same height as the underlying control.  False means do not adjust
    # the height of the editor.	The default value is false.
    attr_accessor :grab_vertical
    alias_method :attr_grab_vertical, :grab_vertical
    undef_method :grab_vertical
    alias_method :attr_grab_vertical=, :grab_vertical=
    undef_method :grab_vertical=
    
    # Specifies the minimum height the editor can have.  This is used in association with
    # a true value of grabVertical.  If the control becomes smaller than the minimumHeight, the
    # editor will not made smaller than the minimum height value.  The default value is 0.
    attr_accessor :minimum_height
    alias_method :attr_minimum_height, :minimum_height
    undef_method :minimum_height
    alias_method :attr_minimum_height=, :minimum_height=
    undef_method :minimum_height=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :editor
    alias_method :attr_editor, :editor
    undef_method :editor
    alias_method :attr_editor=, :editor=
    undef_method :editor=
    
    attr_accessor :had_focus
    alias_method :attr_had_focus, :had_focus
    undef_method :had_focus
    alias_method :attr_had_focus=, :had_focus=
    undef_method :had_focus=
    
    attr_accessor :control_listener
    alias_method :attr_control_listener, :control_listener
    undef_method :control_listener
    alias_method :attr_control_listener=, :control_listener=
    undef_method :control_listener=
    
    attr_accessor :scrollbar_listener
    alias_method :attr_scrollbar_listener, :scrollbar_listener
    undef_method :scrollbar_listener
    alias_method :attr_scrollbar_listener=, :scrollbar_listener=
    undef_method :scrollbar_listener=
    
    class_module.module_eval {
      const_set_lazy(:EVENTS) { Array.typed(::Java::Int).new([SWT::KeyDown, SWT::KeyUp, SWT::MouseDown, SWT::MouseUp, SWT::Resize]) }
      const_attr_reader  :EVENTS
    }
    
    typesig { [Composite] }
    # Creates a ControlEditor for the specified Composite.
    # 
    # @param parent the Composite above which this editor will be displayed
    def initialize(parent)
      @horizontal_alignment = SWT::CENTER
      @grab_horizontal = false
      @minimum_width = 0
      @vertical_alignment = SWT::CENTER
      @grab_vertical = false
      @minimum_height = 0
      @parent = nil
      @editor = nil
      @had_focus = false
      @control_listener = nil
      @scrollbar_listener = nil
      @parent = parent
      @control_listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members ControlEditor
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          layout
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      i = 0
      while i < EVENTS.attr_length
        parent.add_listener(EVENTS[i], @control_listener)
        i += 1
      end
      @scrollbar_listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members ControlEditor
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          scroll(e)
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      h_bar = parent.get_horizontal_bar
      if (!(h_bar).nil?)
        h_bar.add_listener(SWT::Selection, @scrollbar_listener)
      end
      v_bar = parent.get_vertical_bar
      if (!(v_bar).nil?)
        v_bar.add_listener(SWT::Selection, @scrollbar_listener)
      end
    end
    
    typesig { [] }
    def compute_bounds
      client_area = @parent.get_client_area
      editor_rect = Rectangle.new(client_area.attr_x, client_area.attr_y, @minimum_width, @minimum_height)
      if (@grab_horizontal)
        editor_rect.attr_width = Math.max(client_area.attr_width, @minimum_width)
      end
      if (@grab_vertical)
        editor_rect.attr_height = Math.max(client_area.attr_height, @minimum_height)
      end
      case (@horizontal_alignment)
      when SWT::RIGHT
        editor_rect.attr_x += client_area.attr_width - editor_rect.attr_width
      when SWT::LEFT
        # do nothing - clientArea.x is the right answer
      else
        # default is CENTER
        editor_rect.attr_x += (client_area.attr_width - editor_rect.attr_width) / 2
      end
      case (@vertical_alignment)
      when SWT::BOTTOM
        editor_rect.attr_y += client_area.attr_height - editor_rect.attr_height
      when SWT::TOP
        # do nothing - clientArea.y is the right answer
      else
        # default is CENTER
        editor_rect.attr_y += (client_area.attr_height - editor_rect.attr_height) / 2
      end
      return editor_rect
    end
    
    typesig { [] }
    # Removes all associations between the Editor and the underlying composite.  The
    # composite and the editor Control are <b>not</b> disposed.
    def dispose
      if (!(@parent).nil? && !@parent.is_disposed)
        i = 0
        while i < EVENTS.attr_length
          @parent.remove_listener(EVENTS[i], @control_listener)
          i += 1
        end
        h_bar = @parent.get_horizontal_bar
        if (!(h_bar).nil?)
          h_bar.remove_listener(SWT::Selection, @scrollbar_listener)
        end
        v_bar = @parent.get_vertical_bar
        if (!(v_bar).nil?)
          v_bar.remove_listener(SWT::Selection, @scrollbar_listener)
        end
      end
      @parent = nil
      @editor = nil
      @had_focus = false
      @control_listener = nil
      @scrollbar_listener = nil
    end
    
    typesig { [] }
    # Returns the Control that is displayed above the composite being edited.
    # 
    # @return the Control that is displayed above the composite being edited
    def get_editor
      return @editor
    end
    
    typesig { [] }
    # Lays out the control within the underlying composite.  This
    # method should be called after changing one or more fields to
    # force the Editor to resize.
    # 
    # @since 2.1
    def layout
      if ((@editor).nil? || @editor.is_disposed)
        return
      end
      if (@editor.get_visible)
        @had_focus = @editor.is_focus_control
      end # this doesn't work because
      # resizing the column takes the focus away
      # before we get here
      @editor.set_bounds(compute_bounds)
      if (@had_focus)
        if ((@editor).nil? || @editor.is_disposed)
          return
        end
        @editor.set_focus
      end
    end
    
    typesig { [Event] }
    def scroll(e)
      if ((@editor).nil? || @editor.is_disposed)
        return
      end
      layout
    end
    
    typesig { [Control] }
    # Specify the Control that is to be displayed.
    # 
    # <p>Note: The Control provided as the editor <b>must</b> be created with its parent
    # being the Composite specified in the ControlEditor constructor.
    # 
    # @param editor the Control that is displayed above the composite being edited
    def set_editor(editor)
      if ((editor).nil?)
        # this is the case where the caller is setting the editor to be blank
        # set all the values accordingly
        @editor = nil
        return
      end
      @editor = editor
      layout
      if ((@editor).nil? || @editor.is_disposed)
        return
      end
      editor.set_visible(true)
    end
    
    private
    alias_method :initialize__control_editor, :initialize
  end
  
end
