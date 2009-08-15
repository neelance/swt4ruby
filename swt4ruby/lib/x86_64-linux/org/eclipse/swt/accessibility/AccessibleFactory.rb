require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Accessibility
  module AccessibleFactoryImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Accessibility
      include ::Java::Util
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Accessibility::Gtk
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt
    }
  end
  
  class AccessibleFactory 
    include_class_members AccessibleFactoryImports
    
    # int
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    # int
    attr_accessor :object_parent_type
    alias_method :attr_object_parent_type, :object_parent_type
    undef_method :object_parent_type
    alias_method :attr_object_parent_type=, :object_parent_type=
    undef_method :object_parent_type=
    
    # int
    attr_accessor :widget_type_name
    alias_method :attr_widget_type_name, :widget_type_name
    undef_method :widget_type_name
    alias_method :attr_widget_type_name=, :widget_type_name=
    undef_method :widget_type_name=
    
    attr_accessor :atk_object_factory_cb_create_accessible
    alias_method :attr_atk_object_factory_cb_create_accessible, :atk_object_factory_cb_create_accessible
    undef_method :atk_object_factory_cb_create_accessible
    alias_method :attr_atk_object_factory_cb_create_accessible=, :atk_object_factory_cb_create_accessible=
    undef_method :atk_object_factory_cb_create_accessible=
    
    attr_accessor :g_type_info_base_init_factory
    alias_method :attr_g_type_info_base_init_factory, :g_type_info_base_init_factory
    undef_method :g_type_info_base_init_factory
    alias_method :attr_g_type_info_base_init_factory=, :g_type_info_base_init_factory=
    undef_method :g_type_info_base_init_factory=
    
    attr_accessor :accessibles
    alias_method :attr_accessibles, :accessibles
    undef_method :accessibles
    alias_method :attr_accessibles=, :accessibles=
    undef_method :accessibles=
    
    class_module.module_eval {
      const_set_lazy(:Types) { Hashtable.new(9) }
      const_attr_reader  :Types
      
      const_set_lazy(:Factories) { Hashtable.new(9) }
      const_attr_reader  :Factories
      
      # int
      const_set_lazy(:DefaultParentType) { OS.g_type_from_name(Converter.wcs_to_mbcs(nil, "GtkAccessible", true)) }
      const_attr_reader  :DefaultParentType
      
      # $NON-NLS-1$
      const_set_lazy(:FACTORY_PARENTTYPENAME) { Converter.wcs_to_mbcs(nil, "AtkObjectFactory", true) }
      const_attr_reader  :FACTORY_PARENTTYPENAME
      
      # $NON-NLS-1$
      const_set_lazy(:SWT_TYPE_PREFIX) { Converter.wcs_to_mbcs(nil, "SWT", false) }
      const_attr_reader  :SWT_TYPE_PREFIX
      
      # $NON-NLS-1$
      const_set_lazy(:CHILD_TYPENAME) { Converter.wcs_to_mbcs(nil, "Child", false) }
      const_attr_reader  :CHILD_TYPENAME
      
      # $NON-NLS-1$
      const_set_lazy(:FACTORY_TYPENAME) { Converter.wcs_to_mbcs(nil, "SWTFactory", true) }
      const_attr_reader  :FACTORY_TYPENAME
      
      # $NON-NLS-1$
      const_set_lazy(:ActionRoles) { Array.typed(::Java::Int).new([ACC::ROLE_CHECKBUTTON, ACC::ROLE_COMBOBOX, ACC::ROLE_LINK, ACC::ROLE_MENUITEM, ACC::ROLE_PUSHBUTTON, ACC::ROLE_RADIOBUTTON, ]) }
      const_attr_reader  :ActionRoles
      
      const_set_lazy(:HypertextRoles) { Array.typed(::Java::Int).new([ACC::ROLE_LINK]) }
      const_attr_reader  :HypertextRoles
      
      const_set_lazy(:SelectionRoles) { Array.typed(::Java::Int).new([ACC::ROLE_LIST, ACC::ROLE_TABFOLDER, ACC::ROLE_TABLE, ACC::ROLE_TREE, ]) }
      const_attr_reader  :SelectionRoles
      
      const_set_lazy(:TextRoles) { Array.typed(::Java::Int).new([ACC::ROLE_COMBOBOX, ACC::ROLE_LINK, ACC::ROLE_LABEL, ACC::ROLE_TEXT, ]) }
      const_attr_reader  :TextRoles
      
      # interface definitions
      # int
      
      def object_iface_definition
        defined?(@@object_iface_definition) ? @@object_iface_definition : @@object_iface_definition= 0
      end
      alias_method :attr_object_iface_definition, :object_iface_definition
      
      def object_iface_definition=(value)
        @@object_iface_definition = value
      end
      alias_method :attr_object_iface_definition=, :object_iface_definition=
      
      when_class_loaded do
        const_set :AtkActionCB_get_keybinding, new_callback(AccessibleObject, "atkAction_get_keybinding", 2) # $NON-NLS-1$
        const_set :AtkActionCB_get_name, new_callback(AccessibleObject, "atkAction_get_name", 2) # $NON-NLS-1$
        const_set :AtkComponentCB_get_extents, new_callback(AccessibleObject, "atkComponent_get_extents", 6) # $NON-NLS-1$
        const_set :AtkComponentCB_get_position, new_callback(AccessibleObject, "atkComponent_get_position", 4) # $NON-NLS-1$
        const_set :AtkComponentCB_get_size, new_callback(AccessibleObject, "atkComponent_get_size", 4) # $NON-NLS-1$
        const_set :AtkComponentCB_ref_accessible_at_point, new_callback(AccessibleObject, "atkComponent_ref_accessible_at_point", 4) # $NON-NLS-1$
        const_set :AtkHypertextCB_get_link, new_callback(AccessibleObject, "atkHypertext_get_link", 2) # $NON-NLS-1$
        const_set :AtkHypertextCB_get_n_links, new_callback(AccessibleObject, "atkHypertext_get_n_links", 1) # $NON-NLS-1$
        const_set :AtkHypertextCB_get_link_index, new_callback(AccessibleObject, "atkHypertext_get_link_index", 2) # $NON-NLS-1$
        const_set :AtkObjectCB_get_name, new_callback(AccessibleObject, "atkObject_get_name", 1) # $NON-NLS-1$
        const_set :AtkObjectCB_get_description, new_callback(AccessibleObject, "atkObject_get_description", 1) # $NON-NLS-1$
        const_set :AtkObjectCB_get_n_children, new_callback(AccessibleObject, "atkObject_get_n_children", 1) # $NON-NLS-1$
        const_set :AtkObjectCB_get_role, new_callback(AccessibleObject, "atkObject_get_role", 1) # $NON-NLS-1$
        const_set :AtkObjectCB_get_parent, new_callback(AccessibleObject, "atkObject_get_parent", 1) # $NON-NLS-1$
        const_set :AtkObjectCB_ref_state_set, new_callback(AccessibleObject, "atkObject_ref_state_set", 1) # $NON-NLS-1$
        const_set :AtkObjectCB_get_index_in_parent, new_callback(AccessibleObject, "atkObject_get_index_in_parent", 1) # $NON-NLS-1$
        const_set :AtkObjectCB_ref_child, new_callback(AccessibleObject, "atkObject_ref_child", 2) # $NON-NLS-1$
        const_set :AtkSelectionCB_is_child_selected, new_callback(AccessibleObject, "atkSelection_is_child_selected", 2) # $NON-NLS-1$
        const_set :AtkSelectionCB_ref_selection, new_callback(AccessibleObject, "atkSelection_ref_selection", 2) # $NON-NLS-1$
        const_set :AtkTextCB_get_caret_offset, new_callback(AccessibleObject, "atkText_get_caret_offset", 1) # $NON-NLS-1$
        const_set :AtkTextCB_get_n_selections, new_callback(AccessibleObject, "atkText_get_n_selections", 1) # $NON-NLS-1$
        const_set :AtkTextCB_get_selection, new_callback(AccessibleObject, "atkText_get_selection", 4) # $NON-NLS-1$
        const_set :AtkTextCB_get_text, new_callback(AccessibleObject, "atkText_get_text", 3) # $NON-NLS-1$
        const_set :AtkTextCB_get_text_after_offset, new_callback(AccessibleObject, "atkText_get_text_after_offset", 5) # $NON-NLS-1$
        const_set :AtkTextCB_get_text_at_offset, new_callback(AccessibleObject, "atkText_get_text_at_offset", 5) # $NON-NLS-1$
        const_set :AtkTextCB_get_text_before_offset, new_callback(AccessibleObject, "atkText_get_text_before_offset", 5) # $NON-NLS-1$
        const_set :AtkTextCB_get_character_at_offset, new_callback(AccessibleObject, "atkText_get_character_at_offset", 2) # $NON-NLS-1$
        const_set :AtkTextCB_get_character_count, new_callback(AccessibleObject, "atkText_get_character_count", 1) # $NON-NLS-1$
        const_set :GObjectClass_finalize, new_callback(AccessibleObject, "gObjectClass_finalize", 1) # $NON-NLS-1$
        const_set :GTypeInfo_base_init_type, new_callback(AccessibleFactory, "gTypeInfo_base_init_type", 1) # $NON-NLS-1$
        # Action interface
        const_set :InitActionIfaceCB, new_callback(AccessibleFactory, "initActionIfaceCB", 1) # $NON-NLS-1$
        interface_info = GInterfaceInfo.new
        interface_info.attr_interface_init = InitActionIfaceCB.get_address
        const_set :ActionIfaceDefinition, OS.g_malloc(GInterfaceInfo.attr_sizeof)
        OS.memmove(ActionIfaceDefinition, interface_info, GInterfaceInfo.attr_sizeof)
        # Component interface
        const_set :InitComponentIfaceCB, new_callback(AccessibleFactory, "initComponentIfaceCB", 1) # $NON-NLS-1$
        interface_info = GInterfaceInfo.new
        interface_info.attr_interface_init = InitComponentIfaceCB.get_address
        const_set :ComponentIfaceDefinition, OS.g_malloc(GInterfaceInfo.attr_sizeof)
        OS.memmove(ComponentIfaceDefinition, interface_info, GInterfaceInfo.attr_sizeof)
        # Hypertext interface
        const_set :InitHypertextIfaceCB, new_callback(AccessibleFactory, "initHypertextIfaceCB", 1) # $NON-NLS-1$
        interface_info = GInterfaceInfo.new
        interface_info.attr_interface_init = InitHypertextIfaceCB.get_address
        const_set :HypertextIfaceDefinition, OS.g_malloc(GInterfaceInfo.attr_sizeof)
        OS.memmove(HypertextIfaceDefinition, interface_info, GInterfaceInfo.attr_sizeof)
        # Selection interface
        const_set :InitSelectionIfaceCB, new_callback(AccessibleFactory, "initSelectionIfaceCB", 1) # $NON-NLS-1$
        interface_info = GInterfaceInfo.new
        interface_info.attr_interface_init = InitSelectionIfaceCB.get_address
        const_set :SelectionIfaceDefinition, OS.g_malloc(GInterfaceInfo.attr_sizeof)
        OS.memmove(SelectionIfaceDefinition, interface_info, GInterfaceInfo.attr_sizeof)
        # Text interface
        const_set :InitTextIfaceCB, new_callback(AccessibleFactory, "initTextIfaceCB", 1) # $NON-NLS-1$
        interface_info = GInterfaceInfo.new
        interface_info.attr_interface_init = InitTextIfaceCB.get_address
        const_set :TextIfaceDefinition, OS.g_malloc(GInterfaceInfo.attr_sizeof)
        OS.memmove(TextIfaceDefinition, interface_info, GInterfaceInfo.attr_sizeof)
      end
      
      typesig { [Object, String, ::Java::Int] }
      def new_callback(object, method, arg_count)
        callback = Callback.new(object, method, arg_count)
        if ((callback.get_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        return callback
      end
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(widget_type)
      @handle = 0
      @object_parent_type = 0
      @widget_type_name = 0
      @atk_object_factory_cb_create_accessible = nil
      @g_type_info_base_init_factory = nil
      @accessibles = Hashtable.new(9)
      @widget_type_name = OS.g_type_name(widget_type)
      widget_type_name_length = OS.strlen(@widget_type_name) + 1
      buffer = Array.typed(::Java::Byte).new(widget_type_name_length) { 0 }
      OS.memmove(buffer, @widget_type_name, widget_type_name_length)
      factory_name = Array.typed(::Java::Byte).new(FACTORY_TYPENAME.attr_length + widget_type_name_length - 1) { 0 }
      System.arraycopy(FACTORY_TYPENAME, 0, factory_name, 0, FACTORY_TYPENAME.attr_length)
      System.arraycopy(buffer, 0, factory_name, FACTORY_TYPENAME.attr_length - 1, widget_type_name_length)
      if ((OS.g_type_from_name(factory_name)).equal?(0))
        # register the factory
        # int
        registry = ATK.atk_get_default_registry
        # int
        previous_factory = ATK.atk_registry_get_factory(registry, widget_type)
        @object_parent_type = ATK.atk_object_factory_get_accessible_type(previous_factory)
        if ((@object_parent_type).equal?(0))
          @object_parent_type = DefaultParentType
        end
        # int
        factory_parent_type = OS.g_type_from_name(FACTORY_PARENTTYPENAME)
        @g_type_info_base_init_factory = Callback.new(self, "gTypeInfo_base_init_factory", 1) # $NON-NLS-1$
        # int
        address = @g_type_info_base_init_factory.get_address
        if ((address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        type_info = GTypeInfo.new
        type_info.attr_base_init = address
        type_info.attr_class_size = RJava.cast_to_short(ATK._atk_object_factory_class_sizeof)
        type_info.attr_instance_size = RJava.cast_to_short(ATK._atk_object_factory_sizeof)
        # int
        info = OS.g_malloc(GTypeInfo.attr_sizeof)
        OS.memmove(info, type_info, GTypeInfo.attr_sizeof)
        # int
        swt_factory_type = OS.g_type_register_static(factory_parent_type, factory_name, info, 0)
        ATK.atk_registry_set_factory_type(registry, widget_type, swt_factory_type)
        @handle = ATK.atk_registry_get_factory(registry, widget_type)
      end
    end
    
    typesig { [Accessible] }
    def add_accessible(accessible)
      # int
      control_handle = accessible.get_control_handle
      @accessibles.put(SwtLONG.new(control_handle), accessible)
      ATK.atk_object_factory_create_accessible(@handle, control_handle)
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def atk_object_factory_create_accessible(widget)
      accessible = @accessibles.get(SwtLONG.new(widget))
      if ((accessible).nil?)
        # we don't care about this control, so create it with the parent's
        # type so that its accessibility callbacks will not pass though here
        # 
        # int
        result = OS.g_object_new(@object_parent_type, 0)
        ATK.atk_object_initialize(result, widget)
        return result
      end
      # if an atk object has already been created for this widget then just return it
      if (!(accessible.attr_accessible_object).nil?)
        return accessible.attr_accessible_object.attr_handle
      end
      type_name_length = OS.strlen(@widget_type_name)
      buffer = Array.typed(::Java::Byte).new(type_name_length) { 0 }
      OS.memmove(buffer, @widget_type_name, type_name_length)
      # int
      type = get_type(buffer, accessible, @object_parent_type, ACC::CHILDID_SELF)
      object = AccessibleObject.new(type, widget, accessible, @object_parent_type, false)
      accessible.attr_accessible_object = object
      return object.attr_handle
    end
    
    class_module.module_eval {
      typesig { [Accessible, ::Java::Int] }
      # int
      def get_child_type(accessible, child_index)
        return get_type(CHILD_TYPENAME, accessible, DefaultParentType, child_index)
      end
      
      typesig { [] }
      # int
      def get_default_parent_type
        return DefaultParentType
      end
      
      typesig { [Array.typed(::Java::Byte), Accessible, ::Java::Long, ::Java::Int] }
      # int
      # int
      def get_type(widget_type_name, accessible, parent_type, child_id)
        event = AccessibleControlEvent.new(accessible)
        event.attr_child_id = child_id
        listeners = accessible.get_control_listeners
        i = 0
        while i < listeners.attr_length
          listeners[i].get_role(event)
          i += 1
        end
        action = false
        hypertext = false
        selection = false
        text = false
        if (!(event.attr_detail).equal?(0))
          # a role was specified
          i_ = 0
          while i_ < ActionRoles.attr_length
            if ((event.attr_detail).equal?(ActionRoles[i_]))
              action = true
              break
            end
            i_ += 1
          end
          i__ = 0
          while i__ < HypertextRoles.attr_length
            if ((event.attr_detail).equal?(HypertextRoles[i__]))
              hypertext = true
              break
            end
            i__ += 1
          end
          i___ = 0
          while i___ < SelectionRoles.attr_length
            if ((event.attr_detail).equal?(SelectionRoles[i___]))
              selection = true
              break
            end
            i___ += 1
          end
          i____ = 0
          while i____ < TextRoles.attr_length
            if ((event.attr_detail).equal?(TextRoles[i____]))
              text = true
              break
            end
            i____ += 1
          end
        else
          action = hypertext = selection = text = true
        end
        swt_type_name = String.new(SWT_TYPE_PREFIX)
        swt_type_name += RJava.cast_to_string(String.new(widget_type_name))
        if (action)
          swt_type_name += "Action"
        end # $NON-NLS-1$
        if (hypertext)
          swt_type_name += "Hypertext"
        end # $NON-NLS-1$
        if (selection)
          swt_type_name += "Selection"
        end # $NON-NLS-1$
        if (text)
          swt_type_name += "Text"
        end # $NON-NLS-1$
        # int
        type = 0
        type_int = Types.get(swt_type_name)
        if (!(type_int).nil?)
          type = type_int.attr_value
        else
          # define the type
          # int
          query_ptr = OS.g_malloc(GTypeQuery.attr_sizeof)
          OS.g_type_query(parent_type, query_ptr)
          query = GTypeQuery.new
          OS.memmove(query, query_ptr, GTypeQuery.attr_sizeof)
          OS.g_free(query_ptr)
          type_info = GTypeInfo.new
          type_info.attr_base_init = GTypeInfo_base_init_type.get_address
          type_info.attr_class_size = RJava.cast_to_short(query.attr_class_size)
          type_info.attr_instance_size = RJava.cast_to_short(query.attr_instance_size)
          self.attr_object_iface_definition = OS.g_malloc(GTypeInfo.attr_sizeof)
          OS.memmove(self.attr_object_iface_definition, type_info, GTypeInfo.attr_sizeof)
          name_bytes = Converter.wcs_to_mbcs(nil, swt_type_name, true)
          type = OS.g_type_register_static(parent_type, name_bytes, self.attr_object_iface_definition, 0)
          OS.g_type_add_interface_static(type, AccessibleObject::ATK_COMPONENT_TYPE, ComponentIfaceDefinition)
          if (action)
            OS.g_type_add_interface_static(type, AccessibleObject::ATK_ACTION_TYPE, ActionIfaceDefinition)
          end
          if (hypertext)
            OS.g_type_add_interface_static(type, AccessibleObject::ATK_HYPERTEXT_TYPE, HypertextIfaceDefinition)
          end
          if (selection)
            OS.g_type_add_interface_static(type, AccessibleObject::ATK_SELECTION_TYPE, SelectionIfaceDefinition)
          end
          if (text)
            OS.g_type_add_interface_static(type, AccessibleObject::ATK_TEXT_TYPE, TextIfaceDefinition)
          end
          Types.put(swt_type_name, SwtLONG.new(type))
        end
        return type
      end
    }
    
    typesig { [::Java::Long] }
    # int
    # int
    def g_type_info_base_init_factory(klass)
      # int
      atk_object_factory_class = ATK._atk_object_factory_class(klass)
      object_factory_class_struct = AtkObjectFactoryClass.new
      ATK.memmove(object_factory_class_struct, atk_object_factory_class)
      @atk_object_factory_cb_create_accessible = Callback.new(self, "atkObjectFactory_create_accessible", 1) # $NON-NLS-1$
      # int
      address = @atk_object_factory_cb_create_accessible.get_address
      if ((address).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      object_factory_class_struct.attr_create_accessible = address
      ATK.memmove(atk_object_factory_class, object_factory_class_struct)
      return 0
    end
    
    class_module.module_eval {
      typesig { [::Java::Long] }
      # int
      # int
      def g_type_info_base_init_type(klass)
        object_class = AtkObjectClass.new
        ATK.memmove(object_class, klass)
        object_class.attr_get_name = AtkObjectCB_get_name.get_address
        object_class.attr_get_description = AtkObjectCB_get_description.get_address
        object_class.attr_get_n_children = AtkObjectCB_get_n_children.get_address
        object_class.attr_get_role = AtkObjectCB_get_role.get_address
        object_class.attr_get_parent = AtkObjectCB_get_parent.get_address
        object_class.attr_ref_state_set = AtkObjectCB_ref_state_set.get_address
        object_class.attr_get_index_in_parent = AtkObjectCB_get_index_in_parent.get_address
        object_class.attr_ref_child = AtkObjectCB_ref_child.get_address
        # int
        g_object_class = OS._g_object_class(klass)
        object_class_struct = GObjectClass.new
        OS.memmove(object_class_struct, g_object_class)
        object_class_struct.attr_finalize = GObjectClass_finalize.get_address
        OS.memmove(g_object_class, object_class_struct)
        ATK.memmove(klass, object_class)
        return 0
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def init_action_iface_cb(iface)
        action_iface = AtkActionIface.new
        ATK.memmove(action_iface, iface)
        action_iface.attr_get_keybinding = AtkActionCB_get_keybinding.get_address
        action_iface.attr_get_name = AtkActionCB_get_name.get_address
        ATK.memmove(iface, action_iface)
        return 0
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def init_component_iface_cb(iface)
        component_iface = AtkComponentIface.new
        ATK.memmove(component_iface, iface)
        component_iface.attr_get_extents = AtkComponentCB_get_extents.get_address
        component_iface.attr_get_position = AtkComponentCB_get_position.get_address
        component_iface.attr_get_size = AtkComponentCB_get_size.get_address
        component_iface.attr_ref_accessible_at_point = AtkComponentCB_ref_accessible_at_point.get_address
        ATK.memmove(iface, component_iface)
        return 0
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def init_hypertext_iface_cb(iface)
        hypertext_iface = AtkHypertextIface.new
        ATK.memmove(hypertext_iface, iface)
        hypertext_iface.attr_get_link = AtkHypertextCB_get_link.get_address
        hypertext_iface.attr_get_link_index = AtkHypertextCB_get_link_index.get_address
        hypertext_iface.attr_get_n_links = AtkHypertextCB_get_n_links.get_address
        ATK.memmove(iface, hypertext_iface)
        return 0
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def init_selection_iface_cb(iface)
        selection_iface = AtkSelectionIface.new
        ATK.memmove(selection_iface, iface)
        selection_iface.attr_is_child_selected = AtkSelectionCB_is_child_selected.get_address
        selection_iface.attr_ref_selection = AtkSelectionCB_ref_selection.get_address
        ATK.memmove(iface, selection_iface)
        return 0
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def init_text_iface_cb(iface)
        text_interface = AtkTextIface.new
        ATK.memmove(text_interface, iface)
        text_interface.attr_get_caret_offset = AtkTextCB_get_caret_offset.get_address
        text_interface.attr_get_character_at_offset = AtkTextCB_get_character_at_offset.get_address
        text_interface.attr_get_character_count = AtkTextCB_get_character_count.get_address
        text_interface.attr_get_n_selections = AtkTextCB_get_n_selections.get_address
        text_interface.attr_get_selection = AtkTextCB_get_selection.get_address
        text_interface.attr_get_text = AtkTextCB_get_text.get_address
        text_interface.attr_get_text_after_offset = AtkTextCB_get_text_after_offset.get_address
        text_interface.attr_get_text_at_offset = AtkTextCB_get_text_at_offset.get_address
        text_interface.attr_get_text_before_offset = AtkTextCB_get_text_before_offset.get_address
        ATK.memmove(iface, text_interface)
        return 0
      end
      
      typesig { [Accessible] }
      def register_accessible(accessible)
        # If DefaultParentType is 0 then OS accessibility is not active
        if ((DefaultParentType).equal?(0))
          return
        end
        # int
        control_handle = accessible.get_control_handle
        # int
        widget_type = OS._g_object_type(control_handle)
        factory = Factories.get(SwtLONG.new(widget_type))
        if ((factory).nil?)
          factory = AccessibleFactory.new(widget_type)
          Factories.put(SwtLONG.new(widget_type), factory)
        end
        factory.add_accessible(accessible)
      end
    }
    
    typesig { [Accessible] }
    def remove_accessible(accessible)
      @accessibles.remove(SwtLONG.new(accessible.get_control_handle))
    end
    
    class_module.module_eval {
      typesig { [Accessible] }
      def unregister_accessible(accessible)
        # int
        control_handle = accessible.get_control_handle
        # int
        widget_type = OS._g_object_type(control_handle)
        factory = Factories.get(SwtLONG.new(widget_type))
        if (!(factory).nil?)
          factory.remove_accessible(accessible)
        end
      end
    }
    
    private
    alias_method :initialize__accessible_factory, :initialize
  end
  
end
