require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Accessibility
  module AccessibleObjectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Accessibility
      include ::Java::Util
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Accessibility::Gtk
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class AccessibleObject 
    include_class_members AccessibleObjectImports
    
    # long
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    # long
    attr_accessor :parent_type
    alias_method :attr_parent_type, :parent_type
    undef_method :parent_type
    alias_method :attr_parent_type=, :parent_type=
    undef_method :parent_type=
    
    attr_accessor :index
    alias_method :attr_index, :index
    undef_method :index
    alias_method :attr_index=, :index=
    undef_method :index=
    
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
    attr_accessor :accessible
    alias_method :attr_accessible, :accessible
    undef_method :accessible
    alias_method :attr_accessible=, :accessible=
    undef_method :accessible=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :children
    alias_method :attr_children, :children
    undef_method :children
    alias_method :attr_children=, :children=
    undef_method :children=
    
    # a lightweight object does not correspond to a concrete gtk widget, but
    # to a logical child of a widget (eg.- a CTabItem, which is simply drawn)
    attr_accessor :is_lightweight
    alias_method :attr_is_lightweight, :is_lightweight
    undef_method :is_lightweight
    alias_method :attr_is_lightweight=, :is_lightweight=
    undef_method :is_lightweight=
    
    class_module.module_eval {
      # long
      
      def action_name_ptr
        defined?(@@action_name_ptr) ? @@action_name_ptr : @@action_name_ptr= -1
      end
      alias_method :attr_action_name_ptr, :action_name_ptr
      
      def action_name_ptr=(value)
        @@action_name_ptr = value
      end
      alias_method :attr_action_name_ptr=, :action_name_ptr=
      
      # long
      
      def description_ptr
        defined?(@@description_ptr) ? @@description_ptr : @@description_ptr= -1
      end
      alias_method :attr_description_ptr, :description_ptr
      
      def description_ptr=(value)
        @@description_ptr = value
      end
      alias_method :attr_description_ptr=, :description_ptr=
      
      # long
      
      def keybinding_ptr
        defined?(@@keybinding_ptr) ? @@keybinding_ptr : @@keybinding_ptr= -1
      end
      alias_method :attr_keybinding_ptr, :keybinding_ptr
      
      def keybinding_ptr=(value)
        @@keybinding_ptr = value
      end
      alias_method :attr_keybinding_ptr=, :keybinding_ptr=
      
      # long
      
      def name_ptr
        defined?(@@name_ptr) ? @@name_ptr : @@name_ptr= -1
      end
      alias_method :attr_name_ptr, :name_ptr
      
      def name_ptr=(value)
        @@name_ptr = value
      end
      alias_method :attr_name_ptr=, :name_ptr=
      
      const_set_lazy(:AccessibleObjects) { Hashtable.new(9) }
      const_attr_reader  :AccessibleObjects
      
      # long
      const_set_lazy(:ATK_ACTION_TYPE) { ATK.g_type_from_name(Converter.wcs_to_mbcs(nil, "AtkAction", true)) }
      const_attr_reader  :ATK_ACTION_TYPE
      
      # long
      const_set_lazy(:ATK_COMPONENT_TYPE) { ATK.g_type_from_name(Converter.wcs_to_mbcs(nil, "AtkComponent", true)) }
      const_attr_reader  :ATK_COMPONENT_TYPE
      
      # long
      const_set_lazy(:ATK_HYPERTEXT_TYPE) { ATK.g_type_from_name(Converter.wcs_to_mbcs(nil, "AtkHypertext", true)) }
      const_attr_reader  :ATK_HYPERTEXT_TYPE
      
      # long
      const_set_lazy(:ATK_SELECTION_TYPE) { ATK.g_type_from_name(Converter.wcs_to_mbcs(nil, "AtkSelection", true)) }
      const_attr_reader  :ATK_SELECTION_TYPE
      
      # long
      const_set_lazy(:ATK_TEXT_TYPE) { ATK.g_type_from_name(Converter.wcs_to_mbcs(nil, "AtkText", true)) }
      const_attr_reader  :ATK_TEXT_TYPE
      
      const_set_lazy(:DEBUG) { Display.attr_debug }
      const_attr_reader  :DEBUG
    }
    
    typesig { [::Java::Int, ::Java::Int, Accessible, ::Java::Int, ::Java::Boolean] }
    # long
    # long
    # long
    def initialize(type, widget, accessible, parent_type, is_lightweight)
      @handle = 0
      @parent_type = 0
      @index = -1
      @id = ACC::CHILDID_SELF
      @accessible = nil
      @parent = nil
      @children = Hashtable.new(9)
      @is_lightweight = false
      @handle = ATK.g_object_new(type, 0)
      @parent_type = parent_type
      ATK.atk_object_initialize(@handle, widget)
      @accessible = accessible
      @is_lightweight = is_lightweight
      AccessibleObjects.put(SwtLONG.new(@handle), self)
      if (DEBUG)
        System.out.println("new AccessibleObject: " + RJava.cast_to_string(@handle))
      end
    end
    
    typesig { [AccessibleObject] }
    def add_child(child)
      @children.put(SwtLONG.new(child.attr_handle), child)
      child.set_parent(self)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def atk_action_get_keybinding(atk_object, index)
        if (DEBUG)
          System.out.println("-->atkAction_get_keybinding")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # long
        parent_result = 0
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_ACTION_TYPE))
          # long
          super_type = ATK.g_type_interface_peek_parent(ATK._atk_action_get_iface(object.attr_handle))
          action_iface = AtkActionIface.new
          ATK.memmove(action_iface, super_type)
          if (!(action_iface.attr_get_keybinding).equal?(0))
            parent_result = ATK.call(action_iface.attr_get_keybinding, object.attr_handle, index)
          end
        end
        listeners = object.get_accessible_listeners
        if ((listeners.attr_length).equal?(0))
          return parent_result
        end
        event = AccessibleEvent.new(object)
        event.attr_child_id = object.attr_id
        if (!(parent_result).equal?(0))
          length = OS.strlen(parent_result)
          buffer = Array.typed(::Java::Byte).new(length) { 0 }
          OS.memmove(buffer, parent_result, length)
          event.attr_result = String.new(Converter.mbcs_to_wcs(nil, buffer))
        end
        i = 0
        while i < listeners.attr_length
          listeners[i].get_keyboard_shortcut(event)
          i += 1
        end
        if ((event.attr_result).nil?)
          return parent_result
        end
        if (!(self.attr_keybinding_ptr).equal?(-1))
          OS.g_free(self.attr_keybinding_ptr)
        end
        name = Converter.wcs_to_mbcs(nil, event.attr_result, true)
        self.attr_keybinding_ptr = OS.g_malloc(name.attr_length)
        OS.memmove(self.attr_keybinding_ptr, name, name.attr_length)
        return self.attr_keybinding_ptr
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def atk_action_get_name(atk_object, index)
        if (DEBUG)
          System.out.println("-->atkAction_get_name")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # long
        parent_result = 0
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_ACTION_TYPE))
          # long
          super_type = ATK.g_type_interface_peek_parent(ATK._atk_action_get_iface(object.attr_handle))
          action_iface = AtkActionIface.new
          ATK.memmove(action_iface, super_type)
          if (!(action_iface.attr_get_name).equal?(0))
            parent_result = ATK.call(action_iface.attr_get_name, object.attr_handle, index)
          end
        end
        listeners = object.get_control_listeners
        if ((listeners.attr_length).equal?(0))
          return parent_result
        end
        event = AccessibleControlEvent.new(object)
        event.attr_child_id = object.attr_id
        if (!(parent_result).equal?(0))
          length = OS.strlen(parent_result)
          buffer = Array.typed(::Java::Byte).new(length) { 0 }
          OS.memmove(buffer, parent_result, length)
          event.attr_result = String.new(Converter.mbcs_to_wcs(nil, buffer))
        end
        i = 0
        while i < listeners.attr_length
          listeners[i].get_default_action(event)
          i += 1
        end
        if ((event.attr_result).nil?)
          return parent_result
        end
        if (!(self.attr_action_name_ptr).equal?(-1))
          OS.g_free(self.attr_action_name_ptr)
        end
        name = Converter.wcs_to_mbcs(nil, event.attr_result, true)
        self.attr_action_name_ptr = OS.g_malloc(name.attr_length)
        OS.memmove(self.attr_action_name_ptr, name, name.attr_length)
        return self.attr_action_name_ptr
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def atk_component_get_extents(atk_object, x, y, width, height, coord_type)
        if (DEBUG)
          System.out.println("-->atkComponent_get_extents")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        OS.memmove(x, Array.typed(::Java::Int).new([0]), 4)
        OS.memmove(y, Array.typed(::Java::Int).new([0]), 4)
        OS.memmove(width, Array.typed(::Java::Int).new([0]), 4)
        OS.memmove(height, Array.typed(::Java::Int).new([0]), 4)
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_COMPONENT_TYPE))
          # long
          super_type = ATK.g_type_interface_peek_parent(ATK._atk_component_get_iface(object.attr_handle))
          component_iface = AtkComponentIface.new
          ATK.memmove(component_iface, super_type)
          if (!(component_iface.attr_get_extents).equal?(0))
            ATK.call(component_iface.attr_get_extents, object.attr_handle, x, y, width, height, coord_type)
          end
        end
        listeners = object.get_control_listeners
        if ((listeners.attr_length).equal?(0))
          return 0
        end
        parent_x = Array.typed(::Java::Int).new(1) { 0 }
        parent_y = Array.typed(::Java::Int).new(1) { 0 }
        parent_width = Array.typed(::Java::Int).new(1) { 0 }
        parent_height = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(parent_x, x, 4)
        OS.memmove(parent_y, y, 4)
        OS.memmove(parent_width, width, 4)
        OS.memmove(parent_height, height, 4)
        event = AccessibleControlEvent.new(object)
        event.attr_child_id = object.attr_id
        event.attr_x = parent_x[0]
        event.attr_y = parent_y[0]
        event.attr_width = parent_width[0]
        event.attr_height = parent_height[0]
        if ((coord_type).equal?(ATK::ATK_XY_WINDOW))
          # translate control -> display, for filling in event to be dispatched
          # long
          gtk_accessible_handle = ATK._gtk_accessible(object.attr_handle)
          gtk_accessible = GtkAccessible.new
          ATK.memmove(gtk_accessible, gtk_accessible_handle)
          # long
          top_level = ATK.gtk_widget_get_toplevel(gtk_accessible.attr_widget)
          # long
          window = OS._gtk_widget_window(top_level)
          top_window_x = Array.typed(::Java::Int).new(1) { 0 }
          top_window_y = Array.typed(::Java::Int).new(1) { 0 }
          OS.gdk_window_get_origin(window, top_window_x, top_window_y)
          event.attr_x += top_window_x[0]
          event.attr_y += top_window_y[0]
        end
        i = 0
        while i < listeners.attr_length
          listeners[i].get_location(event)
          i += 1
        end
        if ((coord_type).equal?(ATK::ATK_XY_WINDOW))
          # translate display -> control, for answering to the OS
          # long
          gtk_accessible_handle = ATK._gtk_accessible(object.attr_handle)
          gtk_accessible = GtkAccessible.new
          ATK.memmove(gtk_accessible, gtk_accessible_handle)
          # long
          top_level = ATK.gtk_widget_get_toplevel(gtk_accessible.attr_widget)
          # long
          window = OS._gtk_widget_window(top_level)
          top_window_x = Array.typed(::Java::Int).new(1) { 0 }
          top_window_y = Array.typed(::Java::Int).new(1) { 0 }
          OS.gdk_window_get_origin(window, top_window_x, top_window_y)
          event.attr_x -= top_window_x[0]
          event.attr_y -= top_window_y[0]
        end
        OS.memmove(x, Array.typed(::Java::Int).new([event.attr_x]), 4)
        OS.memmove(y, Array.typed(::Java::Int).new([event.attr_y]), 4)
        OS.memmove(width, Array.typed(::Java::Int).new([event.attr_width]), 4)
        OS.memmove(height, Array.typed(::Java::Int).new([event.attr_height]), 4)
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def atk_component_get_position(atk_object, x, y, coord_type)
        if (DEBUG)
          System.out.println("-->atkComponent_get_position, object: " + RJava.cast_to_string(atk_object) + " x: " + RJava.cast_to_string(x) + " y: " + RJava.cast_to_string(y) + " coord: " + RJava.cast_to_string(coord_type))
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        OS.memmove(x, Array.typed(::Java::Int).new([0]), 4)
        OS.memmove(y, Array.typed(::Java::Int).new([0]), 4)
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_COMPONENT_TYPE))
          # long
          super_type = ATK.g_type_interface_peek_parent(ATK._atk_component_get_iface(object.attr_handle))
          component_iface = AtkComponentIface.new
          ATK.memmove(component_iface, super_type)
          if (!(component_iface.attr_get_extents).equal?(0))
            ATK.call(component_iface.attr_get_position, object.attr_handle, x, y, coord_type)
          end
        end
        listeners = object.get_control_listeners
        if ((listeners.attr_length).equal?(0))
          return 0
        end
        parent_x = Array.typed(::Java::Int).new(1) { 0 }
        parent_y = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(parent_x, x, 4)
        OS.memmove(parent_y, y, 4)
        event = AccessibleControlEvent.new(object)
        event.attr_child_id = object.attr_id
        event.attr_x = parent_x[0]
        event.attr_y = parent_y[0]
        if ((coord_type).equal?(ATK::ATK_XY_WINDOW))
          # translate control -> display, for filling in event to be dispatched
          # long
          gtk_accessible_handle = ATK._gtk_accessible(object.attr_handle)
          gtk_accessible = GtkAccessible.new
          ATK.memmove(gtk_accessible, gtk_accessible_handle)
          # long
          top_level = ATK.gtk_widget_get_toplevel(gtk_accessible.attr_widget)
          # long
          window = OS._gtk_widget_window(top_level)
          top_window_x = Array.typed(::Java::Int).new(1) { 0 }
          top_window_y = Array.typed(::Java::Int).new(1) { 0 }
          OS.gdk_window_get_origin(window, top_window_x, top_window_y)
          event.attr_x += top_window_x[0]
          event.attr_y += top_window_y[0]
        end
        i = 0
        while i < listeners.attr_length
          listeners[i].get_location(event)
          i += 1
        end
        if ((coord_type).equal?(ATK::ATK_XY_WINDOW))
          # translate display -> control, for answering to the OS
          # long
          gtk_accessible_handle = ATK._gtk_accessible(object.attr_handle)
          gtk_accessible = GtkAccessible.new
          ATK.memmove(gtk_accessible, gtk_accessible_handle)
          # long
          top_level = ATK.gtk_widget_get_toplevel(gtk_accessible.attr_widget)
          # long
          window = OS._gtk_widget_window(top_level)
          top_window_x = Array.typed(::Java::Int).new(1) { 0 }
          top_window_y = Array.typed(::Java::Int).new(1) { 0 }
          OS.gdk_window_get_origin(window, top_window_x, top_window_y)
          event.attr_x -= top_window_x[0]
          event.attr_y -= top_window_y[0]
        end
        OS.memmove(x, Array.typed(::Java::Int).new([event.attr_x]), 4)
        OS.memmove(y, Array.typed(::Java::Int).new([event.attr_y]), 4)
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def atk_component_get_size(atk_object, width, height, coord_type)
        if (DEBUG)
          System.out.println("-->atkComponent_get_size")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        OS.memmove(width, Array.typed(::Java::Int).new([0]), 4)
        OS.memmove(height, Array.typed(::Java::Int).new([0]), 4)
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_COMPONENT_TYPE))
          # long
          super_type = ATK.g_type_interface_peek_parent(ATK._atk_component_get_iface(object.attr_handle))
          component_iface = AtkComponentIface.new
          ATK.memmove(component_iface, super_type)
          if (!(component_iface.attr_get_extents).equal?(0))
            ATK.call(component_iface.attr_get_size, object.attr_handle, width, height, coord_type)
          end
        end
        listeners = object.get_control_listeners
        if ((listeners.attr_length).equal?(0))
          return 0
        end
        parent_width = Array.typed(::Java::Int).new(1) { 0 }
        parent_height = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(parent_width, width, 4)
        OS.memmove(parent_height, height, 4)
        event = AccessibleControlEvent.new(object)
        event.attr_child_id = object.attr_id
        event.attr_width = parent_width[0]
        event.attr_height = parent_height[0]
        i = 0
        while i < listeners.attr_length
          listeners[i].get_location(event)
          i += 1
        end
        OS.memmove(width, Array.typed(::Java::Int).new([event.attr_width]), 4)
        OS.memmove(height, Array.typed(::Java::Int).new([event.attr_height]), 4)
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def atk_component_ref_accessible_at_point(atk_object, x, y, coord_type)
        if (DEBUG)
          System.out.println("-->atkComponent_ref_accessible_at_point")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # long
        parent_result = 0
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_COMPONENT_TYPE))
          # long
          super_type = ATK.g_type_interface_peek_parent(ATK._atk_component_get_iface(object.attr_handle))
          component_iface = AtkComponentIface.new
          ATK.memmove(component_iface, super_type)
          if (!(component_iface.attr_ref_accessible_at_point).equal?(0))
            parent_result = ATK.call(component_iface.attr_ref_accessible_at_point, object.attr_handle, x, y, coord_type)
          end
        end
        listeners = object.get_control_listeners
        if ((listeners.attr_length).equal?(0))
          return parent_result
        end
        event = AccessibleControlEvent.new(object)
        event.attr_child_id = object.attr_id
        # 64
        event.attr_x = RJava.cast_to_int(x)
        # 64
        event.attr_y = RJava.cast_to_int(y)
        if ((coord_type).equal?(ATK::ATK_XY_WINDOW))
          # translate control -> display, for filling in the event to be dispatched
          # long
          gtk_accessible_handle = ATK._gtk_accessible(object.attr_handle)
          gtk_accessible = GtkAccessible.new
          ATK.memmove(gtk_accessible, gtk_accessible_handle)
          # long
          top_level = ATK.gtk_widget_get_toplevel(gtk_accessible.attr_widget)
          # long
          window = OS._gtk_widget_window(top_level)
          top_window_x = Array.typed(::Java::Int).new(1) { 0 }
          top_window_y = Array.typed(::Java::Int).new(1) { 0 }
          OS.gdk_window_get_origin(window, top_window_x, top_window_y)
          event.attr_x += top_window_x[0]
          event.attr_y += top_window_y[0]
        end
        i = 0
        while i < listeners.attr_length
          listeners[i].get_child_at_point(event)
          i += 1
        end
        if ((event.attr_child_id).equal?(object.attr_id))
          event.attr_child_id = ACC::CHILDID_SELF
        end
        acc_obj = object.get_child_by_id(event.attr_child_id)
        if (!(acc_obj).nil?)
          if (parent_result > 0)
            OS.g_object_unref(parent_result)
          end
          OS.g_object_ref(acc_obj.attr_handle)
          return acc_obj.attr_handle
        end
        return parent_result
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def atk_hypertext_get_link(atk_object, link_index)
        if (DEBUG)
          System.out.println("-->atkHypertext_get_link")
        end
        return 0
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def atk_hypertext_get_n_links(atk_object)
        if (DEBUG)
          System.out.println("-->atkHypertext_get_n_links")
        end
        return 0
        # read hyperlink's name
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def atk_hypertext_get_link_index(atk_object, char_index)
        if (DEBUG)
          System.out.println("-->atkHypertext_get_link_index")
        end
        return 0
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def atk_object_get_description(atk_object)
        if (DEBUG)
          System.out.println("-->atkObject_get_description")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # long
        parent_result = 0
        # long
        super_type = ATK.g_type_class_peek(object.attr_parent_type)
        object_class = AtkObjectClass.new
        ATK.memmove(object_class, super_type)
        if (!(object_class.attr_get_description).equal?(0))
          parent_result = ATK.call(object_class.attr_get_description, object.attr_handle)
        end
        listeners = object.get_accessible_listeners
        if ((listeners.attr_length).equal?(0))
          return parent_result
        end
        event = AccessibleEvent.new(object)
        event.attr_child_id = object.attr_id
        if (!(parent_result).equal?(0))
          length = OS.strlen(parent_result)
          buffer = Array.typed(::Java::Byte).new(length) { 0 }
          OS.memmove(buffer, parent_result, length)
          event.attr_result = String.new(Converter.mbcs_to_wcs(nil, buffer))
        end
        i = 0
        while i < listeners.attr_length
          listeners[i].get_description(event)
          i += 1
        end
        if ((event.attr_result).nil?)
          return parent_result
        end
        if (!(self.attr_description_ptr).equal?(-1))
          OS.g_free(self.attr_description_ptr)
        end
        name = Converter.wcs_to_mbcs(nil, event.attr_result, true)
        self.attr_description_ptr = OS.g_malloc(name.attr_length)
        OS.memmove(self.attr_description_ptr, name, name.attr_length)
        return self.attr_description_ptr
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def atk_object_get_name(atk_object)
        if (DEBUG)
          System.out.println("-->atkObject_get_name: " + RJava.cast_to_string(atk_object))
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # long
        parent_result = 0
        # long
        super_type = ATK.g_type_class_peek(object.attr_parent_type)
        object_class = AtkObjectClass.new
        ATK.memmove(object_class, super_type)
        if (!(object_class.attr_get_name).equal?(0))
          parent_result = ATK.call(object_class.attr_get_name, object.attr_handle)
        end
        listeners = object.get_accessible_listeners
        if ((listeners.attr_length).equal?(0))
          return parent_result
        end
        event = AccessibleEvent.new(object)
        event.attr_child_id = object.attr_id
        if (!(parent_result).equal?(0))
          length = OS.strlen(parent_result)
          buffer = Array.typed(::Java::Byte).new(length) { 0 }
          OS.memmove(buffer, parent_result, length)
          event.attr_result = String.new(Converter.mbcs_to_wcs(nil, buffer))
        end
        i = 0
        while i < listeners.attr_length
          listeners[i].get_name(event)
          i += 1
        end
        if ((event.attr_result).nil?)
          return parent_result
        end
        if (!(self.attr_name_ptr).equal?(-1))
          OS.g_free(self.attr_name_ptr)
        end
        name = Converter.wcs_to_mbcs(nil, event.attr_result, true)
        self.attr_name_ptr = OS.g_malloc(name.attr_length)
        OS.memmove(self.attr_name_ptr, name, name.attr_length)
        return self.attr_name_ptr
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def atk_object_get_n_children(atk_object)
        if (DEBUG)
          System.out.println("-->atkObject_get_n_children: " + RJava.cast_to_string(atk_object))
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # long
        parent_result = 0
        # long
        super_type = ATK.g_type_class_peek(object.attr_parent_type)
        object_class = AtkObjectClass.new
        ATK.memmove(object_class, super_type)
        if (!(object_class.attr_get_n_children).equal?(0))
          parent_result = ATK.call(object_class.attr_get_n_children, object.attr_handle)
        end
        listeners = object.get_control_listeners
        if ((listeners.attr_length).equal?(0))
          return parent_result
        end
        event = AccessibleControlEvent.new(object)
        event.attr_child_id = object.attr_id
        # 64
        event.attr_detail = RJava.cast_to_int(parent_result)
        i = 0
        while i < listeners.attr_length
          listeners[i].get_child_count(event)
          i += 1
        end
        return event.attr_detail
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def atk_object_get_index_in_parent(atk_object)
        if (DEBUG)
          System.out.println("-->atkObjectCB_get_index_in_parent.  ")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        if (!(object.attr_index).equal?(-1))
          return object.attr_index
        end
        # long
        super_type = ATK.g_type_class_peek(object.attr_parent_type)
        object_class = AtkObjectClass.new
        ATK.memmove(object_class, super_type)
        if ((object_class.attr_get_index_in_parent).equal?(0))
          return 0
        end
        return ATK.call(object_class.attr_get_index_in_parent, object.attr_handle)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def atk_object_get_parent(atk_object)
        if (DEBUG)
          System.out.println("-->atkObject_get_parent: " + RJava.cast_to_string(atk_object))
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        if (!(object.attr_parent).nil?)
          return object.attr_parent.attr_handle
        end
        # long
        super_type = ATK.g_type_class_peek(object.attr_parent_type)
        object_class = AtkObjectClass.new
        ATK.memmove(object_class, super_type)
        if ((object_class.attr_get_parent).equal?(0))
          return 0
        end
        return ATK.call(object_class.attr_get_parent, object.attr_handle)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def atk_object_get_role(atk_object)
        if (DEBUG)
          System.out.println("-->atkObject_get_role: " + RJava.cast_to_string(atk_object))
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        if (!(object.get_accessible_listeners.attr_length).equal?(0))
          listeners = object.get_control_listeners
          event = AccessibleControlEvent.new(object)
          event.attr_child_id = object.attr_id
          event.attr_detail = -1
          i = 0
          while i < listeners.attr_length
            listeners[i].get_role(event)
            i += 1
          end
          if (!(event.attr_detail).equal?(-1))
            case (event.attr_detail)
            # Convert from win32 role values to atk role values
            when ACC::ROLE_CHECKBUTTON
              return ATK::ATK_ROLE_CHECK_BOX
            when ACC::ROLE_CLIENT_AREA
              return ATK::ATK_ROLE_DRAWING_AREA
            when ACC::ROLE_COMBOBOX
              return ATK::ATK_ROLE_COMBO_BOX
            when ACC::ROLE_DIALOG
              return ATK::ATK_ROLE_DIALOG
            when ACC::ROLE_LABEL
              return ATK::ATK_ROLE_LABEL
            when ACC::ROLE_LINK
              return ATK::ATK_ROLE_TEXT
            when ACC::ROLE_LIST
              return ATK::ATK_ROLE_LIST
            when ACC::ROLE_LISTITEM
              return ATK::ATK_ROLE_LIST_ITEM
            when ACC::ROLE_MENU
              return ATK::ATK_ROLE_MENU
            when ACC::ROLE_MENUBAR
              return ATK::ATK_ROLE_MENU_BAR
            when ACC::ROLE_MENUITEM
              return ATK::ATK_ROLE_MENU_ITEM
            when ACC::ROLE_PROGRESSBAR
              return ATK::ATK_ROLE_PROGRESS_BAR
            when ACC::ROLE_PUSHBUTTON
              return ATK::ATK_ROLE_PUSH_BUTTON
            when ACC::ROLE_SCROLLBAR
              return ATK::ATK_ROLE_SCROLL_BAR
            when ACC::ROLE_SEPARATOR
              return ATK::ATK_ROLE_SEPARATOR
            when ACC::ROLE_SLIDER
              return ATK::ATK_ROLE_SLIDER
            when ACC::ROLE_TABLE
              return ATK::ATK_ROLE_LIST
            when ACC::ROLE_TABLECELL
              return ATK::ATK_ROLE_LIST_ITEM
            when ACC::ROLE_TABLECOLUMNHEADER
              return ATK::ATK_ROLE_TABLE_COLUMN_HEADER
            when ACC::ROLE_TABLEROWHEADER
              return ATK::ATK_ROLE_TABLE_ROW_HEADER
            when ACC::ROLE_TABFOLDER
              return ATK::ATK_ROLE_PAGE_TAB_LIST
            when ACC::ROLE_TABITEM
              return ATK::ATK_ROLE_PAGE_TAB
            when ACC::ROLE_TEXT
              return ATK::ATK_ROLE_TEXT
            when ACC::ROLE_TOOLBAR
              return ATK::ATK_ROLE_TOOL_BAR
            when ACC::ROLE_TOOLTIP
              return ATK::ATK_ROLE_TOOL_TIP
            when ACC::ROLE_TREE
              return ATK::ATK_ROLE_TREE
            when ACC::ROLE_TREEITEM
              return ATK::ATK_ROLE_LIST_ITEM
            when ACC::ROLE_RADIOBUTTON
              return ATK::ATK_ROLE_RADIO_BUTTON
            when ACC::ROLE_WINDOW
              return ATK::ATK_ROLE_WINDOW
            end
          end
        end
        # long
        super_type = ATK.g_type_class_peek(object.attr_parent_type)
        object_class = AtkObjectClass.new
        ATK.memmove(object_class, super_type)
        if ((object_class.attr_get_role).equal?(0))
          return 0
        end
        return ATK.call(object_class.attr_get_role, object.attr_handle)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def atk_object_ref_child(atk_object, index)
        if (DEBUG)
          System.out.println("-->atkObject_ref_child: " + RJava.cast_to_string(index) + " of: " + RJava.cast_to_string(atk_object))
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        object.update_children
        # 64
        acc_object = object.get_child_by_index(RJava.cast_to_int(index))
        if (!(acc_object).nil?)
          OS.g_object_ref(acc_object.attr_handle)
          return acc_object.attr_handle
        end
        # long
        super_type = ATK.g_type_class_peek(object.attr_parent_type)
        object_class = AtkObjectClass.new
        ATK.memmove(object_class, super_type)
        if ((object_class.attr_ref_child).equal?(0))
          return 0
        end
        return ATK.call(object_class.attr_ref_child, object.attr_handle, index)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def atk_object_ref_state_set(atk_object)
        if (DEBUG)
          System.out.println("-->atkObject_ref_state_set")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # long
        parent_result = 0
        # long
        super_type = ATK.g_type_class_peek(object.attr_parent_type)
        object_class = AtkObjectClass.new
        ATK.memmove(object_class, super_type)
        if (!(object_class.attr_ref_state_set).equal?(0))
          parent_result = ATK.call(object_class.attr_ref_state_set, object.attr_handle)
        end
        listeners = object.get_control_listeners
        if ((listeners.attr_length).equal?(0))
          return parent_result
        end
        # long
        set = parent_result
        event = AccessibleControlEvent.new(object)
        event.attr_child_id = object.attr_id
        event.attr_detail = -1
        i = 0
        while i < listeners.attr_length
          listeners[i].get_state(event)
          i += 1
        end
        if (!(event.attr_detail).equal?(-1))
          # Convert from win32 state values to atk state values
          state = event.attr_detail
          if (!((state & ACC::STATE_BUSY)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_BUSY)
          end
          if (!((state & ACC::STATE_CHECKED)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_CHECKED)
          end
          if (!((state & ACC::STATE_EXPANDED)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_EXPANDED)
          end
          if (!((state & ACC::STATE_FOCUSABLE)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_FOCUSABLE)
          end
          if (!((state & ACC::STATE_FOCUSED)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_FOCUSED)
          end
          if (!((state & ACC::STATE_HOTTRACKED)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_ARMED)
          end
          if (((state & ACC::STATE_INVISIBLE)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_VISIBLE)
          end
          if (!((state & ACC::STATE_MULTISELECTABLE)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_MULTISELECTABLE)
          end
          if (((state & ACC::STATE_OFFSCREEN)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_SHOWING)
          end
          if (!((state & ACC::STATE_PRESSED)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_PRESSED)
          end
          if (((state & ACC::STATE_READONLY)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_EDITABLE)
          end
          if (!((state & ACC::STATE_SELECTABLE)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_SELECTABLE)
          end
          if (!((state & ACC::STATE_SELECTED)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_SELECTED)
          end
          if (!((state & ACC::STATE_SIZEABLE)).equal?(0))
            ATK.atk_state_set_add_state(set, ATK::ATK_STATE_RESIZABLE)
          end
          # Note: STATE_COLLAPSED, STATE_LINKED and STATE_NORMAL have no ATK equivalents
        end
        return set
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def atk_selection_is_child_selected(atk_object, index)
        if (DEBUG)
          System.out.println("-->atkSelection_is_child_selected")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # long
        parent_result = 0
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_SELECTION_TYPE))
          # long
          super_type = ATK.g_type_interface_peek_parent(ATK._atk_selection_get_iface(object.attr_handle))
          selection_iface = AtkSelectionIface.new
          ATK.memmove(selection_iface, super_type)
          if (!(selection_iface.attr_is_child_selected).equal?(0))
            parent_result = ATK.call(selection_iface.attr_is_child_selected, object.attr_handle, index)
          end
        end
        listeners = object.get_control_listeners
        if ((listeners.attr_length).equal?(0))
          return parent_result
        end
        event = AccessibleControlEvent.new(object)
        event.attr_child_id = object.attr_id
        i = 0
        while i < listeners.attr_length
          listeners[i].get_selection(event)
          i += 1
        end
        accessible_object = object.get_child_by_id(event.attr_child_id)
        if (!(accessible_object).nil?)
          return (accessible_object.attr_index).equal?(index) ? 1 : 0
        end
        return parent_result
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def atk_selection_ref_selection(atk_object, index)
        if (DEBUG)
          System.out.println("-->atkSelection_ref_selection")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # long
        parent_result = 0
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_SELECTION_TYPE))
          # long
          super_type = ATK.g_type_interface_peek_parent(ATK._atk_selection_get_iface(object.attr_handle))
          selection_iface = AtkSelectionIface.new
          ATK.memmove(selection_iface, super_type)
          if (!(selection_iface.attr_ref_selection).equal?(0))
            parent_result = ATK.call(selection_iface.attr_ref_selection, object.attr_handle, index)
          end
        end
        listeners = object.get_control_listeners
        if ((listeners.attr_length).equal?(0))
          return parent_result
        end
        event = AccessibleControlEvent.new(object)
        event.attr_child_id = object.attr_id
        i = 0
        while i < listeners.attr_length
          listeners[i].get_selection(event)
          i += 1
        end
        acc_obj = object.get_child_by_id(event.attr_child_id)
        if (!(acc_obj).nil?)
          if (parent_result > 0)
            OS.g_object_unref(parent_result)
          end
          OS.g_object_ref(acc_obj.attr_handle)
          return acc_obj.attr_handle
        end
        return parent_result
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def atk_text_get_caret_offset(atk_object)
        if (DEBUG)
          System.out.println("-->atkText_get_caret_offset")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # long
        parent_result = 0
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_TEXT_TYPE))
          # long
          super_type = ATK.g_type_interface_peek_parent(ATK._atk_text_get_iface(object.attr_handle))
          text_iface = AtkTextIface.new
          ATK.memmove(text_iface, super_type)
          if (!(text_iface.attr_get_caret_offset).equal?(0))
            parent_result = ATK.call(text_iface.attr_get_caret_offset, object.attr_handle)
          end
        end
        listeners = object.get_text_listeners
        if ((listeners.attr_length).equal?(0))
          return parent_result
        end
        event = AccessibleTextEvent.new(object)
        event.attr_child_id = object.attr_id
        # 64
        event.attr_offset = RJava.cast_to_int(parent_result)
        i = 0
        while i < listeners.attr_length
          listeners[i].get_caret_offset(event)
          i += 1
        end
        return event.attr_offset
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def atk_text_get_character_at_offset(atk_object, offset)
        if (DEBUG)
          System.out.println("-->atkText_get_character_at_offset")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        text = object.get_text
        if (!(text).nil?)
          # 64
          return text.char_at(RJava.cast_to_int(offset))
        end # TODO
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_TEXT_TYPE))
          # long
          super_type = ATK.g_type_class_peek(object.attr_parent_type)
          text_iface = AtkTextIface.new
          ATK.memmove(text_iface, super_type)
          if (!(text_iface.attr_get_character_at_offset).equal?(0))
            return ATK.call(text_iface.attr_get_character_at_offset, object.attr_handle, offset)
          end
        end
        return 0
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def atk_text_get_character_count(atk_object)
        if (DEBUG)
          System.out.println("-->atkText_get_character_count")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        text = object.get_text
        if (!(text).nil?)
          return text.length
        end
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_TEXT_TYPE))
          # long
          super_type = ATK.g_type_class_peek(object.attr_parent_type)
          text_iface = AtkTextIface.new
          ATK.memmove(text_iface, super_type)
          if (!(text_iface.attr_get_character_count).equal?(0))
            return ATK.call(text_iface.attr_get_character_count, object.attr_handle)
          end
        end
        return 0
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def atk_text_get_n_selections(atk_object)
        if (DEBUG)
          System.out.println("-->atkText_get_n_selections")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # long
        parent_result = 0
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_TEXT_TYPE))
          # long
          super_type = ATK.g_type_interface_peek_parent(ATK._atk_text_get_iface(object.attr_handle))
          text_iface = AtkTextIface.new
          ATK.memmove(text_iface, super_type)
          if (!(text_iface.attr_get_n_selections).equal?(0))
            parent_result = ATK.call(text_iface.attr_get_n_selections, object.attr_handle)
          end
        end
        listeners = object.get_text_listeners
        if ((listeners.attr_length).equal?(0))
          return parent_result
        end
        event = AccessibleTextEvent.new(object)
        event.attr_child_id = object.attr_id
        i = 0
        while i < listeners.attr_length
          listeners[i].get_selection_range(event)
          i += 1
        end
        return (event.attr_length).equal?(0) ? parent_result : 1
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def atk_text_get_selection(atk_object, selection_num, start_offset, end_offset)
        if (DEBUG)
          System.out.println("-->atkText_get_selection")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        OS.memmove(start_offset, Array.typed(::Java::Int).new([0]), 4)
        OS.memmove(end_offset, Array.typed(::Java::Int).new([0]), 4)
        if (ATK.g_type_is_a(object.attr_parent_type, ATK_TEXT_TYPE))
          # long
          super_type = ATK.g_type_interface_peek_parent(ATK._atk_text_get_iface(object.attr_handle))
          text_iface = AtkTextIface.new
          ATK.memmove(text_iface, super_type)
          if (!(text_iface.attr_get_selection).equal?(0))
            ATK.call(text_iface.attr_get_selection, object.attr_handle, selection_num, start_offset, end_offset)
          end
        end
        listeners = object.get_text_listeners
        if ((listeners.attr_length).equal?(0))
          return 0
        end
        event = AccessibleTextEvent.new(object)
        event.attr_child_id = object.attr_id
        parent_start = Array.typed(::Java::Int).new(1) { 0 }
        parent_end = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(parent_start, start_offset, 4)
        OS.memmove(parent_end, end_offset, 4)
        event.attr_offset = parent_start[0]
        event.attr_length = parent_end[0] - parent_start[0]
        i = 0
        while i < listeners.attr_length
          listeners[i].get_selection_range(event)
          i += 1
        end
        OS.memmove(start_offset, Array.typed(::Java::Int).new([event.attr_offset]), 4)
        OS.memmove(end_offset, Array.typed(::Java::Int).new([event.attr_offset + event.attr_length]), 4)
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def atk_text_get_text(atk_object, start_offset, end_offset)
        if (DEBUG)
          System.out.println("-->atkText_get_text: " + RJava.cast_to_string(start_offset) + "," + RJava.cast_to_string(end_offset))
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        text = object.get_text
        if (text.length > 0)
          if ((end_offset).equal?(-1))
            end_offset = text.length
          else
            end_offset = Math.min(end_offset, text.length)
          end
          start_offset = Math.min(start_offset, end_offset)
          # 64
          # 64
          text = RJava.cast_to_string(text.substring(RJava.cast_to_int(start_offset), RJava.cast_to_int(end_offset)))
          bytes = Converter.wcs_to_mbcs(nil, text, true)
          # long
          result = OS.g_malloc(bytes.attr_length)
          OS.memmove(result, bytes, bytes.attr_length)
          return result
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      def atk_text_get_text_after_offset(atk_object, offset_value, boundary_type, start_offset, end_offset)
        if (DEBUG)
          System.out.println("-->atkText_get_text_after_offset")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # 64
        offset = RJava.cast_to_int(offset_value)
        text = object.get_text
        if (text.length > 0)
          length_ = text.length
          offset = Math.min(offset, length_ - 1)
          start_bounds = offset
          end_bounds = offset
          catch(:break_case) do
            # 64
            case (RJava.cast_to_int(boundary_type))
            when ATK::ATK_TEXT_BOUNDARY_CHAR
              if (length_ > offset)
                end_bounds += 1
              end
            when ATK::ATK_TEXT_BOUNDARY_WORD_START
              word_start1 = next_index_of_char(text, " !?.\n", offset - 1)
              if ((word_start1).equal?(-1))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              word_start1 = next_index_of_not_char(text, " !?.\n", word_start1)
              if ((word_start1).equal?(length_))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              start_bounds = word_start1
              word_start2 = next_index_of_char(text, " !?.\n", word_start1)
              if ((word_start2).equal?(-1))
                end_bounds = length_
                throw :break_case, :thrown
              end
              end_bounds = next_index_of_not_char(text, " !?.\n", word_start2)
            when ATK::ATK_TEXT_BOUNDARY_WORD_END
              previous_word_end = previous_index_of_not_char(text, " \n", offset)
              if ((previous_word_end).equal?(-1) || !(previous_word_end).equal?(offset - 1))
                offset = next_index_of_not_char(text, " \n", offset)
              end
              if ((offset).equal?(-1))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              # 64
              word_end1 = next_index_of_char(text, " !?.\n", RJava.cast_to_int(offset))
              if ((word_end1).equal?(-1))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              word_end1 = next_index_of_not_char(text, "!?.", word_end1)
              if ((word_end1).equal?(length_))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              start_bounds = word_end1
              word_end2 = next_index_of_not_char(text, " \n", word_end1)
              if ((word_end2).equal?(length_))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              word_end2 = next_index_of_char(text, " !?.\n", word_end2)
              if ((word_end2).equal?(-1))
                end_bounds = length_
                throw :break_case, :thrown
              end
              end_bounds = next_index_of_not_char(text, "!?.", word_end2)
            when ATK::ATK_TEXT_BOUNDARY_SENTENCE_START
              previous_sentence_end = previous_index_of_char(text, "!?.", offset)
              previous_text = previous_index_of_not_char(text, " !?.\n", offset)
              sentence_start1 = 0
              if (previous_sentence_end >= previous_text)
                sentence_start1 = next_index_of_not_char(text, " !?.\n", offset)
              else
                sentence_start1 = next_index_of_char(text, "!?.", offset)
                if ((sentence_start1).equal?(-1))
                  start_bounds = end_bounds = length_
                  throw :break_case, :thrown
                end
                sentence_start1 = next_index_of_not_char(text, " !?.\n", sentence_start1)
              end
              if ((sentence_start1).equal?(length_))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              start_bounds = sentence_start1
              sentence_start2 = next_index_of_char(text, "!?.", sentence_start1)
              if ((sentence_start2).equal?(-1))
                end_bounds = length_
                throw :break_case, :thrown
              end
              end_bounds = next_index_of_not_char(text, " !?.\n", sentence_start2)
            when ATK::ATK_TEXT_BOUNDARY_SENTENCE_END
              sentence_end1 = next_index_of_char(text, "!?.", offset)
              if ((sentence_end1).equal?(-1))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              sentence_end1 = next_index_of_not_char(text, "!?.", sentence_end1)
              if ((sentence_end1).equal?(length_))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              start_bounds = sentence_end1
              sentence_end2 = next_index_of_not_char(text, " \n", sentence_end1)
              if ((sentence_end2).equal?(length_))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              sentence_end2 = next_index_of_char(text, "!?.", sentence_end2)
              if ((sentence_end2).equal?(-1))
                end_bounds = length_
                throw :break_case, :thrown
              end
              end_bounds = next_index_of_not_char(text, "!?.", sentence_end2)
            when ATK::ATK_TEXT_BOUNDARY_LINE_START
              line_start1 = text.index_of(Character.new(?\n.ord), offset - 1)
              if ((line_start1).equal?(-1))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              line_start1 = next_index_of_not_char(text, "\n", line_start1)
              if ((line_start1).equal?(length_))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              start_bounds = line_start1
              line_start2 = text.index_of(Character.new(?\n.ord), line_start1)
              if ((line_start2).equal?(-1))
                end_bounds = length_
                throw :break_case, :thrown
              end
              line_start2 = next_index_of_not_char(text, "\n", line_start2)
              end_bounds = line_start2
            when ATK::ATK_TEXT_BOUNDARY_LINE_END
              line_end1 = next_index_of_char(text, "\n", offset)
              if ((line_end1).equal?(-1))
                start_bounds = end_bounds = length_
                throw :break_case, :thrown
              end
              start_bounds = line_end1
              if ((start_bounds).equal?(length_))
                end_bounds = length_
                throw :break_case, :thrown
              end
              line_end2 = next_index_of_char(text, "\n", line_end1 + 1)
              if ((line_end2).equal?(-1))
                end_bounds = length_
                throw :break_case, :thrown
              end
              end_bounds = line_end2
            end
          end
          OS.memmove(start_offset, Array.typed(::Java::Int).new([start_bounds]), 4)
          OS.memmove(end_offset, Array.typed(::Java::Int).new([end_bounds]), 4)
          text = RJava.cast_to_string(text.substring(start_bounds, end_bounds))
          bytes = Converter.wcs_to_mbcs(nil, text, true)
          # long
          result = OS.g_malloc(bytes.attr_length)
          OS.memmove(result, bytes, bytes.attr_length)
          return result
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      def atk_text_get_text_at_offset(atk_object, offset_value, boundary_type, start_offset, end_offset)
        if (DEBUG)
          System.out.println("-->atkText_get_text_at_offset: " + RJava.cast_to_string(offset_value) + " start: " + RJava.cast_to_string(start_offset) + " end: " + RJava.cast_to_string(end_offset))
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # 64
        offset = RJava.cast_to_int(offset_value)
        text = object.get_text
        if (text.length > 0)
          length_ = text.length
          offset = Math.min(offset, length_ - 1)
          start_bounds = offset
          end_bounds = offset
          catch(:break_case) do
            # 64
            case (RJava.cast_to_int(boundary_type))
            when ATK::ATK_TEXT_BOUNDARY_CHAR
              if (length_ > offset)
                end_bounds += 1
              end
            when ATK::ATK_TEXT_BOUNDARY_WORD_START
              word_start1 = previous_index_of_not_char(text, " !?.\n", offset)
              if ((word_start1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              word_start1 = previous_index_of_char(text, " !?.\n", word_start1) + 1
              if ((word_start1).equal?(-1))
                start_bounds = 0
                throw :break_case, :thrown
              end
              start_bounds = word_start1
              word_start2 = next_index_of_char(text, " !?.\n", word_start1)
              end_bounds = next_index_of_not_char(text, " !?.\n", word_start2)
            when ATK::ATK_TEXT_BOUNDARY_WORD_END
              word_end1 = previous_index_of_not_char(text, "!?.", offset + 1)
              word_end1 = previous_index_of_char(text, " !?.\n", word_end1)
              word_end1 = previous_index_of_not_char(text, " \n", word_end1 + 1)
              if ((word_end1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              start_bounds = word_end1 + 1
              word_end2 = next_index_of_not_char(text, " \n", start_bounds)
              if ((word_end2).equal?(length_))
                end_bounds = start_bounds
                throw :break_case, :thrown
              end
              word_end2 = next_index_of_char(text, " !?.\n", word_end2)
              if ((word_end2).equal?(-1))
                end_bounds = start_bounds
                throw :break_case, :thrown
              end
              end_bounds = next_index_of_not_char(text, "!?.", word_end2)
            when ATK::ATK_TEXT_BOUNDARY_SENTENCE_START
              sentence_start1 = previous_index_of_not_char(text, " !?.\n", offset + 1)
              if ((sentence_start1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              sentence_start1 = previous_index_of_char(text, "!?.", sentence_start1) + 1
              start_bounds = next_index_of_not_char(text, " \n", sentence_start1)
              sentence_start2 = next_index_of_char(text, "!?.", start_bounds)
              end_bounds = next_index_of_not_char(text, " !?.\n", sentence_start2)
            when ATK::ATK_TEXT_BOUNDARY_SENTENCE_END
              sentence_end1 = previous_index_of_not_char(text, "!?.", offset + 1)
              sentence_end1 = previous_index_of_char(text, "!?.", sentence_end1)
              sentence_end1 = previous_index_of_not_char(text, " \n", sentence_end1 + 1)
              if ((sentence_end1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              start_bounds = sentence_end1 + 1
              sentence_end2 = next_index_of_not_char(text, " \n", start_bounds)
              if ((sentence_end2).equal?(length_))
                end_bounds = start_bounds
                throw :break_case, :thrown
              end
              sentence_end2 = next_index_of_char(text, "!?.", sentence_end2)
              if ((sentence_end2).equal?(-1))
                end_bounds = start_bounds
                throw :break_case, :thrown
              end
              end_bounds = next_index_of_not_char(text, "!?.", sentence_end2)
            when ATK::ATK_TEXT_BOUNDARY_LINE_START
              start_bounds = previous_index_of_char(text, "\n", offset) + 1
              line_end2 = next_index_of_char(text, "\n", start_bounds)
              if (line_end2 < length_)
                line_end2 += 1
              end
              end_bounds = line_end2
            when ATK::ATK_TEXT_BOUNDARY_LINE_END
              line_end1 = previous_index_of_char(text, "\n", offset)
              if ((line_end1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              start_bounds = line_end1
              end_bounds = next_index_of_char(text, "\n", line_end1 + 1)
            end
          end
          OS.memmove(start_offset, Array.typed(::Java::Int).new([start_bounds]), 4)
          OS.memmove(end_offset, Array.typed(::Java::Int).new([end_bounds]), 4)
          text = RJava.cast_to_string(text.substring(start_bounds, end_bounds))
          bytes = Converter.wcs_to_mbcs(nil, text, true)
          # long
          result = OS.g_malloc(bytes.attr_length)
          OS.memmove(result, bytes, bytes.attr_length)
          return result
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      def atk_text_get_text_before_offset(atk_object, offset_value, boundary_type, start_offset, end_offset)
        if (DEBUG)
          System.out.println("-->atkText_get_text_before_offset")
        end
        object = get_accessible_object(atk_object)
        if ((object).nil?)
          return 0
        end
        # 64
        offset = RJava.cast_to_int(offset_value)
        text = object.get_text
        if (text.length > 0)
          length_ = text.length
          offset = Math.min(offset, length_ - 1)
          start_bounds = offset
          end_bounds = offset
          catch(:break_case) do
            # 64
            case (RJava.cast_to_int(boundary_type))
            when ATK::ATK_TEXT_BOUNDARY_CHAR
              if (length_ >= offset && offset > 0)
                start_bounds -= 1
              end
            when ATK::ATK_TEXT_BOUNDARY_WORD_START
              word_start1 = previous_index_of_char(text, " !?.\n", offset - 1)
              if ((word_start1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              word_start2 = previous_index_of_not_char(text, " !?.\n", word_start1)
              if ((word_start2).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              end_bounds = word_start1 + 1
              start_bounds = previous_index_of_char(text, " !?.\n", word_start2) + 1
            when ATK::ATK_TEXT_BOUNDARY_WORD_END
              word_end1 = previous_index_of_char(text, " !?.\n", offset)
              if ((word_end1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              word_end1 = previous_index_of_not_char(text, " \n", word_end1 + 1)
              if ((word_end1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              end_bounds = word_end1 + 1
              word_end2 = previous_index_of_not_char(text, " !?.\n", end_bounds)
              word_end2 = previous_index_of_char(text, " !?.\n", word_end2)
              if ((word_end2).equal?(-1))
                start_bounds = 0
                throw :break_case, :thrown
              end
              start_bounds = previous_index_of_not_char(text, " \n", word_end2 + 1) + 1
            when ATK::ATK_TEXT_BOUNDARY_SENTENCE_START
              sentence_start1 = previous_index_of_char(text, "!?.", offset)
              if ((sentence_start1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              sentence_start2 = previous_index_of_not_char(text, "!?.", sentence_start1)
              if ((sentence_start2).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              end_bounds = sentence_start1 + 1
              start_bounds = previous_index_of_char(text, "!?.", sentence_start2) + 1
            when ATK::ATK_TEXT_BOUNDARY_SENTENCE_END
              sentence_end1 = previous_index_of_char(text, "!?.", offset)
              if ((sentence_end1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              sentence_end1 = previous_index_of_not_char(text, " \n", sentence_end1 + 1)
              if ((sentence_end1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              end_bounds = sentence_end1 + 1
              sentence_end2 = previous_index_of_not_char(text, "!?.", end_bounds)
              sentence_end2 = previous_index_of_char(text, "!?.", sentence_end2)
              if ((sentence_end2).equal?(-1))
                start_bounds = 0
                throw :break_case, :thrown
              end
              start_bounds = previous_index_of_not_char(text, " \n", sentence_end2 + 1) + 1
            when ATK::ATK_TEXT_BOUNDARY_LINE_START
              line_start1 = previous_index_of_char(text, "\n", offset)
              if ((line_start1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              end_bounds = line_start1 + 1
              start_bounds = previous_index_of_char(text, "\n", line_start1) + 1
            when ATK::ATK_TEXT_BOUNDARY_LINE_END
              line_end1 = previous_index_of_char(text, "\n", offset)
              if ((line_end1).equal?(-1))
                start_bounds = end_bounds = 0
                throw :break_case, :thrown
              end
              end_bounds = line_end1
              start_bounds = previous_index_of_char(text, "\n", line_end1)
              if ((start_bounds).equal?(-1))
                start_bounds = 0
              end
            end
          end
          OS.memmove(start_offset, Array.typed(::Java::Int).new([start_bounds]), 4)
          OS.memmove(end_offset, Array.typed(::Java::Int).new([end_bounds]), 4)
          text = RJava.cast_to_string(text.substring(start_bounds, end_bounds))
          bytes = Converter.wcs_to_mbcs(nil, text, true)
          # long
          result = OS.g_malloc(bytes.attr_length)
          OS.memmove(result, bytes, bytes.attr_length)
          return result
        end
        return 0
      end
    }
    
    typesig { [] }
    def get_accessible_listeners
      if ((@accessible).nil?)
        return Array.typed(AccessibleListener).new(0) { nil }
      end
      result = @accessible.get_accessible_listeners
      return !(result).nil? ? result : Array.typed(AccessibleListener).new(0) { nil }
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      # long
      def get_accessible_object(atk_object)
        return AccessibleObjects.get(SwtLONG.new(atk_object))
      end
    }
    
    typesig { [::Java::Int] }
    # long
    def get_child_by_handle(handle)
      return @children.get(SwtLONG.new(handle))
    end
    
    typesig { [::Java::Int] }
    def get_child_by_id(child_id)
      if ((child_id).equal?(ACC::CHILDID_SELF))
        return self
      end
      elements_ = @children.elements
      while (elements_.has_more_elements)
        object = elements_.next_element
        if ((object.attr_id).equal?(child_id))
          return object
        end
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    def get_child_by_index(child_index)
      elements_ = @children.elements
      while (elements_.has_more_elements)
        object = elements_.next_element
        if ((object.attr_index).equal?(child_index))
          return object
        end
      end
      return nil
    end
    
    typesig { [] }
    def get_control_listeners
      if ((@accessible).nil?)
        return Array.typed(AccessibleControlListener).new(0) { nil }
      end
      result = @accessible.get_control_listeners
      return !(result).nil? ? result : Array.typed(AccessibleControlListener).new(0) { nil }
    end
    
    typesig { [] }
    def get_text
      # long
      parent_result = 0
      parent_text = "" # $NON-NLS-1$
      if (ATK.g_type_is_a(@parent_type, ATK_TEXT_TYPE))
        # long
        super_type = ATK.g_type_interface_peek_parent(ATK._atk_text_get_iface(@handle))
        text_iface = AtkTextIface.new
        ATK.memmove(text_iface, super_type)
        # long
        character_count = 0
        if (!(text_iface.attr_get_character_count).equal?(0))
          character_count = ATK.call(text_iface.attr_get_character_count, @handle)
        end
        if (character_count > 0 && !(text_iface.attr_get_text).equal?(0))
          parent_result = ATK.call(text_iface.attr_get_text, @handle, 0, character_count)
          if (!(parent_result).equal?(0))
            length_ = OS.strlen(parent_result)
            buffer = Array.typed(::Java::Byte).new(length_) { 0 }
            OS.memmove(buffer, parent_result, length_)
            parent_text = RJava.cast_to_string(String.new(Converter.mbcs_to_wcs(nil, buffer)))
          end
        end
      end
      control_listeners = get_control_listeners
      if ((control_listeners.attr_length).equal?(0))
        return parent_text
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = @id
      event.attr_result = parent_text
      i = 0
      while i < control_listeners.attr_length
        control_listeners[i].get_value(event)
        i += 1
      end
      return event.attr_result
    end
    
    typesig { [] }
    def get_text_listeners
      if ((@accessible).nil?)
        return Array.typed(AccessibleTextListener).new(0) { nil }
      end
      result = @accessible.get_text_listeners
      return !(result).nil? ? result : Array.typed(AccessibleTextListener).new(0) { nil }
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      # long
      # long
      def g_object_class_finalize(atk_object)
        # long
        super_type = ATK.g_type_class_peek_parent(ATK._g_object_get_class(atk_object))
        # long
        g_object_class = ATK._g_object_class(super_type)
        object_class_struct = GObjectClass.new
        ATK.memmove(object_class_struct, g_object_class)
        ATK.call(object_class_struct.attr_finalize, atk_object)
        object = get_accessible_object(atk_object)
        if (!(object).nil?)
          AccessibleObjects.remove(SwtLONG.new(atk_object))
          object.release
        end
        return 0
      end
      
      typesig { [String, String, ::Java::Int] }
      def next_index_of_char(string, search_chars, start_index)
        result = string.length
        i = 0
        while i < search_chars.length
          current = search_chars.char_at(i)
          index = string.index_of(current, start_index)
          if (!(index).equal?(-1))
            result = Math.min(result, index)
          end
          i += 1
        end
        return result
      end
      
      typesig { [String, String, ::Java::Int] }
      def next_index_of_not_char(string, search_chars, start_index)
        length_ = string.length
        index = start_index
        while (index < length_)
          current = string.char_at(index)
          if ((search_chars.index_of(current)).equal?(-1))
            break
          end
          index += 1
        end
        return index
      end
      
      typesig { [String, String, ::Java::Int] }
      def previous_index_of_char(string, search_chars, start_index)
        result = -1
        if (start_index < 0)
          return result
        end
        string = RJava.cast_to_string(string.substring(0, start_index))
        i = 0
        while i < search_chars.length
          current = search_chars.char_at(i)
          index = string.last_index_of(current)
          if (!(index).equal?(-1))
            result = Math.max(result, index)
          end
          i += 1
        end
        return result
      end
      
      typesig { [String, String, ::Java::Int] }
      def previous_index_of_not_char(string, search_chars, start_index)
        if (start_index < 0)
          return -1
        end
        index = start_index - 1
        while (index >= 0)
          current = string.char_at(index)
          if ((search_chars.index_of(current)).equal?(-1))
            break
          end
          index -= 1
        end
        return index
      end
    }
    
    typesig { [] }
    def release
      if (DEBUG)
        System.out.println("AccessibleObject.release: " + RJava.cast_to_string(@handle))
      end
      @accessible = nil
      elements_ = @children.elements
      while (elements_.has_more_elements)
        child = elements_.next_element
        if (child.attr_is_lightweight)
          OS.g_object_unref(child.attr_handle)
        end
      end
      if (!(@parent).nil?)
        @parent.remove_child(self, false)
      end
    end
    
    typesig { [AccessibleObject, ::Java::Boolean] }
    def remove_child(child, unref)
      @children.remove(SwtLONG.new(child.attr_handle))
      if (unref && child.attr_is_lightweight)
        OS.g_object_unref(child.attr_handle)
      end
    end
    
    typesig { [] }
    def selection_changed
      OS.g_signal_emit_by_name(@handle, ATK.attr_selection_changed)
    end
    
    typesig { [::Java::Int] }
    def set_focus(child_id)
      update_children
      acc_object = get_child_by_id(child_id)
      if (!(acc_object).nil?)
        ATK.atk_focus_tracker_notify(acc_object.attr_handle)
      end
    end
    
    typesig { [AccessibleObject] }
    def set_parent(parent)
      @parent = parent
    end
    
    typesig { [::Java::Int] }
    def text_caret_moved(index)
      OS.g_signal_emit_by_name(@handle, ATK.attr_text_caret_moved, index)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def text_changed(type, start_index, length_)
      if ((type).equal?(ACC::TEXT_DELETE))
        OS.g_signal_emit_by_name(@handle, ATK.attr_text_changed_delete, start_index, length_)
      else
        OS.g_signal_emit_by_name(@handle, ATK.attr_text_changed_insert, start_index, length_)
      end
    end
    
    typesig { [] }
    def text_selection_changed
      OS.g_signal_emit_by_name(@handle, ATK.attr_text_selection_changed)
    end
    
    typesig { [] }
    def update_children
      if (@is_lightweight)
        return
      end
      listeners = get_control_listeners
      if ((listeners.attr_length).equal?(0))
        return
      end
      event = AccessibleControlEvent.new(self)
      i = 0
      while i < listeners.attr_length
        listeners[i].get_children(event)
        i += 1
      end
      if (!(event.attr_children).nil? && event.attr_children.attr_length > 0)
        ids_to_keep = Vector.new(@children.size)
        if (event.attr_children[0].is_a?(JavaInteger))
          # an array of child id's (Integers) was answered
          # long
          parent_type = AccessibleFactory.get_default_parent_type
          i_ = 0
          while i_ < event.attr_children.attr_length
            object = get_child_by_index(i_)
            if ((object).nil?)
              # long
              child_type = AccessibleFactory.get_child_type(@accessible, i_)
              object = AccessibleObject.new(child_type, 0, @accessible, parent_type, true)
              AccessibleObjects.put(SwtLONG.new(object.attr_handle), object)
              add_child(object)
              object.attr_index = i_
            end
            begin
              object.attr_id = (event.attr_children[i_]).int_value
            rescue ClassCastException => e
              # a non-ID value was given so don't set the ID
            end
            ids_to_keep.add_element(SwtLONG.new(object.attr_handle))
            i_ += 1
          end
        else
          # an array of Accessible children was answered
          child_index = 0
          i_ = 0
          while i_ < event.attr_children.attr_length
            object = nil
            begin
              object = (event.attr_children[i_]).attr_accessible_object
            rescue ClassCastException => e
              # a non-Accessible value was given so nothing to do here
            end
            if (!(object).nil?)
              object.attr_index = ((child_index += 1) - 1)
              ids_to_keep.add_element(SwtLONG.new(object.attr_handle))
            end
            i_ += 1
          end
        end
        # remove old children that were not provided as children anymore
        ids = @children.keys
        while (ids.has_more_elements)
          id = ids.next_element
          if (!ids_to_keep.contains(id))
            object = @children.get(id)
            remove_child(object, true)
          end
        end
      end
    end
    
    private
    alias_method :initialize__accessible_object, :initialize
  end
  
end
