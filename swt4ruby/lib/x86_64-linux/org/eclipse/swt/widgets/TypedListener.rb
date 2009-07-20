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
  module TypedListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class are <em>internal SWT implementation</em>
  # objects which provide a mapping between the typed and untyped
  # listener mechanisms that SWT supports.
  # <p>
  # <b>IMPORTANT:</b> This class is <em>not</em> part of the SWT
  # public API. It is marked public only so that it can be shared
  # within the packages provided by SWT. It should never be
  # referenced from application code.
  # </p>
  # 
  # @see Listener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class TypedListener 
    include_class_members TypedListenerImports
    include Listener
    
    # The receiver's event listener
    attr_accessor :event_listener
    alias_method :attr_event_listener, :event_listener
    undef_method :event_listener
    alias_method :attr_event_listener=, :event_listener=
    undef_method :event_listener=
    
    typesig { [SWTEventListener] }
    # Constructs a new instance of this class for the given event listener.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It should never be
    # referenced from application code.
    # </p>
    # 
    # @param listener the event listener to store in the receiver
    def initialize(listener)
      @event_listener = nil
      @event_listener = listener
    end
    
    typesig { [] }
    # Returns the receiver's event listener.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It should never be
    # referenced from application code.
    # </p>
    # 
    # @return the receiver's event listener
    def get_event_listener
      return @event_listener
    end
    
    typesig { [Event] }
    # Handles the given event.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It should never be
    # referenced from application code.
    # </p>
    # @param e the event to handle
    def handle_event(e)
      case (e.attr_type)
      when SWT::Activate
        (@event_listener).shell_activated(ShellEvent.new(e))
      when SWT::Arm
        (@event_listener).widget_armed(ArmEvent.new(e))
      when SWT::Close
        # Fields set by Decorations
        event = ShellEvent.new(e)
        (@event_listener).shell_closed(event)
        e.attr_doit = event.attr_doit
      when SWT::Collapse
        if (@event_listener.is_a?(TreeListener))
          (@event_listener).tree_collapsed(TreeEvent.new(e))
        else
          (@event_listener).item_collapsed(ExpandEvent.new(e))
        end
      when SWT::Deactivate
        (@event_listener).shell_deactivated(ShellEvent.new(e))
      when SWT::Deiconify
        (@event_listener).shell_deiconified(ShellEvent.new(e))
      when SWT::DefaultSelection
        (@event_listener).widget_default_selected(SelectionEvent.new(e))
      when SWT::Dispose
        (@event_listener).widget_disposed(DisposeEvent.new(e))
      when SWT::DragDetect
        (@event_listener).drag_detected(DragDetectEvent.new(e))
      when SWT::Expand
        if (@event_listener.is_a?(TreeListener))
          (@event_listener).tree_expanded(TreeEvent.new(e))
        else
          (@event_listener).item_expanded(ExpandEvent.new(e))
        end
      when SWT::FocusIn
        (@event_listener).focus_gained(FocusEvent.new(e))
      when SWT::FocusOut
        (@event_listener).focus_lost(FocusEvent.new(e))
      when SWT::Help
        (@event_listener).help_requested(HelpEvent.new(e))
      when SWT::Hide
        (@event_listener).menu_hidden(MenuEvent.new(e))
      when SWT::Iconify
        (@event_listener).shell_iconified(ShellEvent.new(e))
      when SWT::KeyDown
        # Fields set by Control
        event = KeyEvent.new(e)
        (@event_listener).key_pressed(event)
        e.attr_doit = event.attr_doit
      when SWT::KeyUp
        # Fields set by Control
        event = KeyEvent.new(e)
        (@event_listener).key_released(event)
        e.attr_doit = event.attr_doit
      when SWT::Modify
        (@event_listener).modify_text(ModifyEvent.new(e))
      when SWT::MenuDetect
        event = MenuDetectEvent.new(e)
        (@event_listener).menu_detected(event)
        e.attr_x = event.attr_x
        e.attr_y = event.attr_y
        e.attr_doit = event.attr_doit
      when SWT::MouseDown
        (@event_listener).mouse_down(MouseEvent.new(e))
      when SWT::MouseDoubleClick
        (@event_listener).mouse_double_click(MouseEvent.new(e))
      when SWT::MouseEnter
        (@event_listener).mouse_enter(MouseEvent.new(e))
      when SWT::MouseExit
        (@event_listener).mouse_exit(MouseEvent.new(e))
      when SWT::MouseHover
        (@event_listener).mouse_hover(MouseEvent.new(e))
      when SWT::MouseMove
        (@event_listener).mouse_move(MouseEvent.new(e))
        return
      when SWT::MouseWheel
        (@event_listener).mouse_scrolled(MouseEvent.new(e))
        return
      when SWT::MouseUp
        (@event_listener).mouse_up(MouseEvent.new(e))
      when SWT::Move
        (@event_listener).control_moved(ControlEvent.new(e))
      when SWT::Paint
        # Fields set by Control
        event = PaintEvent.new(e)
        (@event_listener).paint_control(event)
        e.attr_gc = event.attr_gc
      when SWT::Resize
        (@event_listener).control_resized(ControlEvent.new(e))
      when SWT::Selection
        # Fields set by Sash
        event = SelectionEvent.new(e)
        (@event_listener).widget_selected(event)
        e.attr_x = event.attr_x
        e.attr_y = event.attr_y
        e.attr_doit = event.attr_doit
      when SWT::Show
        (@event_listener).menu_shown(MenuEvent.new(e))
      when SWT::Traverse
        # Fields set by Control
        event = TraverseEvent.new(e)
        (@event_listener).key_traversed(event)
        e.attr_detail = event.attr_detail
        e.attr_doit = event.attr_doit
      when SWT::Verify
        # Fields set by Text, RichText
        event = VerifyEvent.new(e)
        (@event_listener).verify_text(event)
        e.attr_text = event.attr_text
        e.attr_doit = event.attr_doit
      end
    end
    
    private
    alias_method :initialize__typed_listener, :initialize
  end
  
end
