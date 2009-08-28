require "rjava"

# Copyright (c) 2003, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module PromptDialogImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class PromptDialog < PromptDialogImports.const_get :Dialog
    include_class_members PromptDialogImports
    
    typesig { [Shell, ::Java::Int] }
    def initialize(parent, style)
      super(parent, style)
    end
    
    typesig { [Shell] }
    def initialize(parent)
      initialize__prompt_dialog(parent, 0)
    end
    
    typesig { [String, String, String, Array.typed(::Java::Int)] }
    def alert_check(title, text, check, check_value)
      parent = get_parent
      shell = Shell.new(parent, SWT::DIALOG_TRIM | SWT::APPLICATION_MODAL)
      if (!(title).nil?)
        shell.set_text(title)
      end
      grid_layout = GridLayout.new
      shell.set_layout(grid_layout)
      label = Label.new(shell, SWT::WRAP)
      label.set_text(text)
      data = GridData.new
      monitor = parent.get_monitor
      max_width = monitor.get_bounds.attr_width * 2 / 3
      width = label.compute_size(SWT::DEFAULT, SWT::DEFAULT).attr_x
      data.attr_width_hint = Math.min(width, max_width)
      data.attr_horizontal_alignment = GridData::FILL
      data.attr_grab_excess_horizontal_space = true
      label.set_layout_data(data)
      check_button = !(check).nil? ? Button.new(shell, SWT::CHECK) : nil
      if (!(check_button).nil?)
        check_button.set_text(check)
        check_button.set_selection(!(check_value[0]).equal?(0))
        data = GridData.new
        data.attr_horizontal_alignment = GridData::BEGINNING
        check_button.set_layout_data(data)
      end
      ok_button = Button.new(shell, SWT::PUSH)
      ok_button.set_text(SWT.get_message("SWT_OK")) # $NON-NLS-1$
      data = GridData.new
      data.attr_horizontal_alignment = GridData::CENTER
      ok_button.set_layout_data(data)
      ok_button.add_listener(SWT::Selection, Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members PromptDialog
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if (!(check_button).nil?)
            check_value[0] = check_button.get_selection ? 1 : 0
          end
          shell.close
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      shell.pack
      shell.open
      display = parent.get_display
      while (!shell.is_disposed)
        if (!display.read_and_dispatch)
          display.sleep
        end
      end
    end
    
    typesig { [String, String, String, String, String, String, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    def confirm_ex(title, text, check, button0, button1, button2, default_index, check_value, result)
      parent = get_parent
      shell = Shell.new(parent, SWT::DIALOG_TRIM | SWT::APPLICATION_MODAL)
      shell.set_text(title)
      grid_layout = GridLayout.new
      shell.set_layout(grid_layout)
      label = Label.new(shell, SWT::WRAP)
      label.set_text(text)
      data = GridData.new
      monitor = parent.get_monitor
      max_width = monitor.get_bounds.attr_width * 2 / 3
      width = label.compute_size(SWT::DEFAULT, SWT::DEFAULT).attr_x
      data.attr_width_hint = Math.min(width, max_width)
      data.attr_horizontal_alignment = GridData::FILL
      data.attr_grab_excess_horizontal_space = true
      label.set_layout_data(data)
      buttons = Array.typed(Button).new(4) { nil }
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members PromptDialog
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if (!(buttons[0]).nil?)
            check_value[0] = buttons[0].get_selection ? 1 : 0
          end
          widget = event.attr_widget
          i = 1
          while i < buttons.attr_length
            if ((widget).equal?(buttons[i]))
              result[0] = i - 1
              break
            end
            i += 1
          end
          shell.close
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      if (!(check).nil?)
        buttons[0] = Button.new(shell, SWT::CHECK)
        buttons[0].set_text(check)
        buttons[0].set_selection(!(check_value[0]).equal?(0))
        data = GridData.new
        data.attr_horizontal_alignment = GridData::BEGINNING
        buttons[0].set_layout_data(data)
      end
      composite = Composite.new(shell, SWT::NONE)
      data = GridData.new
      data.attr_horizontal_alignment = GridData::CENTER
      composite.set_layout_data(data)
      layout = GridLayout.new
      layout.attr_make_columns_equal_width = true
      composite.set_layout(layout)
      button_count = 0
      if (!(button0).nil?)
        buttons[1] = Button.new(composite, SWT::PUSH)
        buttons[1].set_text(button0)
        buttons[1].add_listener(SWT::Selection, listener)
        buttons[1].set_layout_data(GridData.new(GridData::FILL_HORIZONTAL))
        button_count += 1
      end
      if (!(button1).nil?)
        buttons[2] = Button.new(composite, SWT::PUSH)
        buttons[2].set_text(button1)
        buttons[2].add_listener(SWT::Selection, listener)
        buttons[2].set_layout_data(GridData.new(GridData::FILL_HORIZONTAL))
        button_count += 1
      end
      if (!(button2).nil?)
        buttons[3] = Button.new(composite, SWT::PUSH)
        buttons[3].set_text(button2)
        buttons[3].add_listener(SWT::Selection, listener)
        buttons[3].set_layout_data(GridData.new(GridData::FILL_HORIZONTAL))
        button_count += 1
      end
      layout.attr_num_columns = button_count
      default_button = buttons[default_index + 1]
      if (!(default_button).nil?)
        shell.set_default_button(default_button)
      end
      shell.pack
      shell.open
      display = parent.get_display
      while (!shell.is_disposed)
        if (!display.read_and_dispatch)
          display.sleep
        end
      end
    end
    
    typesig { [String, String, String, Array.typed(String), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    def prompt(title, text, check, value, check_value, result)
      parent = get_parent
      shell = Shell.new(parent, SWT::DIALOG_TRIM | SWT::APPLICATION_MODAL)
      if (!(title).nil?)
        shell.set_text(title)
      end
      grid_layout = GridLayout.new
      shell.set_layout(grid_layout)
      label = Label.new(shell, SWT::WRAP)
      label.set_text(text)
      data = GridData.new
      monitor = parent.get_monitor
      max_width = monitor.get_bounds.attr_width * 2 / 3
      width = label.compute_size(SWT::DEFAULT, SWT::DEFAULT).attr_x
      data.attr_width_hint = Math.min(width, max_width)
      data.attr_horizontal_alignment = GridData::FILL
      data.attr_grab_excess_horizontal_space = true
      label.set_layout_data(data)
      value_text = Text.new(shell, SWT::BORDER)
      if (!(value[0]).nil?)
        value_text.set_text(value[0])
      end
      data = GridData.new
      width = value_text.compute_size(SWT::DEFAULT, SWT::DEFAULT).attr_x
      if (width > max_width)
        data.attr_width_hint = max_width
      end
      data.attr_horizontal_alignment = GridData::FILL
      data.attr_grab_excess_horizontal_space = true
      value_text.set_layout_data(data)
      buttons = Array.typed(Button).new(3) { nil }
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members PromptDialog
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if (!(buttons[0]).nil?)
            check_value[0] = buttons[0].get_selection ? 1 : 0
          end
          value[0] = value_text.get_text
          result[0] = (event.attr_widget).equal?(buttons[1]) ? 1 : 0
          shell.close
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      if (!(check).nil?)
        buttons[0] = Button.new(shell, SWT::CHECK)
        buttons[0].set_text(check)
        buttons[0].set_selection(!(check_value[0]).equal?(0))
        data = GridData.new
        data.attr_horizontal_alignment = GridData::BEGINNING
        buttons[0].set_layout_data(data)
      end
      composite = Composite.new(shell, SWT::NONE)
      data = GridData.new
      data.attr_horizontal_alignment = GridData::CENTER
      composite.set_layout_data(data)
      composite.set_layout(GridLayout.new(2, true))
      buttons[1] = Button.new(composite, SWT::PUSH)
      buttons[1].set_text(SWT.get_message("SWT_OK")) # $NON-NLS-1$
      buttons[1].set_layout_data(GridData.new(GridData::FILL_HORIZONTAL))
      buttons[1].add_listener(SWT::Selection, listener)
      buttons[2] = Button.new(composite, SWT::PUSH)
      buttons[2].set_text(SWT.get_message("SWT_Cancel")) # $NON-NLS-1$
      buttons[2].set_layout_data(GridData.new(GridData::FILL_HORIZONTAL))
      buttons[2].add_listener(SWT::Selection, listener)
      shell.pack
      shell.open
      display = parent.get_display
      while (!shell.is_disposed)
        if (!display.read_and_dispatch)
          display.sleep
        end
      end
    end
    
    typesig { [String, String, String, Array.typed(String), Array.typed(String), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    def prompt_username_and_password(title, text, check, user, pass, check_value, result)
      parent = get_parent
      shell = Shell.new(parent, SWT::DIALOG_TRIM | SWT::APPLICATION_MODAL)
      shell.set_text(title)
      grid_layout = GridLayout.new
      shell.set_layout(grid_layout)
      label = Label.new(shell, SWT::WRAP)
      label.set_text(text)
      data = GridData.new
      monitor = parent.get_monitor
      max_width = monitor.get_bounds.attr_width * 2 / 3
      width = label.compute_size(SWT::DEFAULT, SWT::DEFAULT).attr_x
      data.attr_width_hint = Math.min(width, max_width)
      data.attr_horizontal_alignment = GridData::FILL
      data.attr_grab_excess_horizontal_space = true
      label.set_layout_data(data)
      user_label = Label.new(shell, SWT::NONE)
      user_label.set_text(SWT.get_message("SWT_Username")) # $NON-NLS-1$
      user_text = Text.new(shell, SWT::BORDER)
      if (!(user[0]).nil?)
        user_text.set_text(user[0])
      end
      data = GridData.new
      data.attr_horizontal_alignment = GridData::FILL
      data.attr_grab_excess_horizontal_space = true
      user_text.set_layout_data(data)
      password_label = Label.new(shell, SWT::NONE)
      password_label.set_text(SWT.get_message("SWT_Password")) # $NON-NLS-1$
      password_text = Text.new(shell, SWT::PASSWORD | SWT::BORDER)
      if (!(pass[0]).nil?)
        password_text.set_text(pass[0])
      end
      data = GridData.new
      data.attr_horizontal_alignment = GridData::FILL
      data.attr_grab_excess_horizontal_space = true
      password_text.set_layout_data(data)
      buttons = Array.typed(Button).new(3) { nil }
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members PromptDialog
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if (!(buttons[0]).nil?)
            check_value[0] = buttons[0].get_selection ? 1 : 0
          end
          user[0] = user_text.get_text
          pass[0] = password_text.get_text
          result[0] = (event.attr_widget).equal?(buttons[1]) ? 1 : 0
          shell.close
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      if (!(check).nil?)
        buttons[0] = Button.new(shell, SWT::CHECK)
        buttons[0].set_text(check)
        buttons[0].set_selection(!(check_value[0]).equal?(0))
        data = GridData.new
        data.attr_horizontal_alignment = GridData::BEGINNING
        buttons[0].set_layout_data(data)
      end
      composite = Composite.new(shell, SWT::NONE)
      data = GridData.new
      data.attr_horizontal_alignment = GridData::CENTER
      composite.set_layout_data(data)
      composite.set_layout(GridLayout.new(2, true))
      buttons[1] = Button.new(composite, SWT::PUSH)
      buttons[1].set_text(SWT.get_message("SWT_OK")) # $NON-NLS-1$
      buttons[1].set_layout_data(GridData.new(GridData::FILL_HORIZONTAL))
      buttons[1].add_listener(SWT::Selection, listener)
      buttons[2] = Button.new(composite, SWT::PUSH)
      buttons[2].set_text(SWT.get_message("SWT_Cancel")) # $NON-NLS-1$
      buttons[2].set_layout_data(GridData.new(GridData::FILL_HORIZONTAL))
      buttons[2].add_listener(SWT::Selection, listener)
      shell.set_default_button(buttons[1])
      shell.pack
      shell.open
      display = parent.get_display
      while (!shell.is_disposed)
        if (!display.read_and_dispatch)
          display.sleep
        end
      end
    end
    
    private
    alias_method :initialize__prompt_dialog, :initialize
  end
  
end
