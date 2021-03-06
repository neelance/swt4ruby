require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others. All rights reserved.
# The contents of this file are made available under the terms
# of the GNU Lesser General Public License (LGPL) Version 2.1 that
# accompanies this distribution (lgpl-v21.txt).  The LGPL is also
# available at http://www.gnu.org/licenses/lgpl.html.  If the version
# of the LGPL at http://www.gnu.org is different to the version of
# the LGPL accompanying this distribution and there is any conflict
# between the two license versions, the terms of the LGPL accompanying
# this distribution shall govern.
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Accessibility::Gtk
  module ATKImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Accessibility::Gtk
      include_const ::Org::Eclipse::Swt::Internal, :Library
      include_const ::Org::Eclipse::Swt::Internal::Gtk, :OS
    }
  end
  
  class ATK < ATKImports.const_get :OS
    include_class_members ATKImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt-atk")
      end
      
      # Constants
      const_set_lazy(:ATK_RELATION_LABELLED_BY) { 4 }
      const_attr_reader  :ATK_RELATION_LABELLED_BY
      
      const_set_lazy(:ATK_ROLE_CHECK_BOX) { 7 }
      const_attr_reader  :ATK_ROLE_CHECK_BOX
      
      const_set_lazy(:ATK_ROLE_COMBO_BOX) { 11 }
      const_attr_reader  :ATK_ROLE_COMBO_BOX
      
      const_set_lazy(:ATK_ROLE_DIALOG) { 16 }
      const_attr_reader  :ATK_ROLE_DIALOG
      
      const_set_lazy(:ATK_ROLE_DRAWING_AREA) { 18 }
      const_attr_reader  :ATK_ROLE_DRAWING_AREA
      
      const_set_lazy(:ATK_ROLE_WINDOW) { 68 }
      const_attr_reader  :ATK_ROLE_WINDOW
      
      const_set_lazy(:ATK_ROLE_LABEL) { 28 }
      const_attr_reader  :ATK_ROLE_LABEL
      
      const_set_lazy(:ATK_ROLE_LIST) { 30 }
      const_attr_reader  :ATK_ROLE_LIST
      
      const_set_lazy(:ATK_ROLE_LIST_ITEM) { 31 }
      const_attr_reader  :ATK_ROLE_LIST_ITEM
      
      const_set_lazy(:ATK_ROLE_MENU) { 32 }
      const_attr_reader  :ATK_ROLE_MENU
      
      const_set_lazy(:ATK_ROLE_MENU_BAR) { 33 }
      const_attr_reader  :ATK_ROLE_MENU_BAR
      
      const_set_lazy(:ATK_ROLE_MENU_ITEM) { 34 }
      const_attr_reader  :ATK_ROLE_MENU_ITEM
      
      const_set_lazy(:ATK_ROLE_PAGE_TAB) { 36 }
      const_attr_reader  :ATK_ROLE_PAGE_TAB
      
      const_set_lazy(:ATK_ROLE_PAGE_TAB_LIST) { 37 }
      const_attr_reader  :ATK_ROLE_PAGE_TAB_LIST
      
      const_set_lazy(:ATK_ROLE_PROGRESS_BAR) { 41 }
      const_attr_reader  :ATK_ROLE_PROGRESS_BAR
      
      const_set_lazy(:ATK_ROLE_PUSH_BUTTON) { 42 }
      const_attr_reader  :ATK_ROLE_PUSH_BUTTON
      
      const_set_lazy(:ATK_ROLE_RADIO_BUTTON) { 43 }
      const_attr_reader  :ATK_ROLE_RADIO_BUTTON
      
      const_set_lazy(:ATK_ROLE_SCROLL_BAR) { 47 }
      const_attr_reader  :ATK_ROLE_SCROLL_BAR
      
      const_set_lazy(:ATK_ROLE_SEPARATOR) { 49 }
      const_attr_reader  :ATK_ROLE_SEPARATOR
      
      const_set_lazy(:ATK_ROLE_SLIDER) { 50 }
      const_attr_reader  :ATK_ROLE_SLIDER
      
      const_set_lazy(:ATK_ROLE_TABLE) { 54 }
      const_attr_reader  :ATK_ROLE_TABLE
      
      const_set_lazy(:ATK_ROLE_TABLE_CELL) { 55 }
      const_attr_reader  :ATK_ROLE_TABLE_CELL
      
      const_set_lazy(:ATK_ROLE_TABLE_COLUMN_HEADER) { 56 }
      const_attr_reader  :ATK_ROLE_TABLE_COLUMN_HEADER
      
      const_set_lazy(:ATK_ROLE_TABLE_ROW_HEADER) { 57 }
      const_attr_reader  :ATK_ROLE_TABLE_ROW_HEADER
      
      const_set_lazy(:ATK_ROLE_TEXT) { 60 }
      const_attr_reader  :ATK_ROLE_TEXT
      
      const_set_lazy(:ATK_ROLE_TOOL_BAR) { 62 }
      const_attr_reader  :ATK_ROLE_TOOL_BAR
      
      const_set_lazy(:ATK_ROLE_TOOL_TIP) { 63 }
      const_attr_reader  :ATK_ROLE_TOOL_TIP
      
      const_set_lazy(:ATK_ROLE_TREE) { 64 }
      const_attr_reader  :ATK_ROLE_TREE
      
      const_set_lazy(:ATK_STATE_ARMED) { 2 }
      const_attr_reader  :ATK_STATE_ARMED
      
      const_set_lazy(:ATK_STATE_BUSY) { 3 }
      const_attr_reader  :ATK_STATE_BUSY
      
      const_set_lazy(:ATK_STATE_CHECKED) { 4 }
      const_attr_reader  :ATK_STATE_CHECKED
      
      const_set_lazy(:ATK_STATE_DEFUNCT) { 5 }
      const_attr_reader  :ATK_STATE_DEFUNCT
      
      const_set_lazy(:ATK_STATE_EDITABLE) { 6 }
      const_attr_reader  :ATK_STATE_EDITABLE
      
      const_set_lazy(:ATK_STATE_ENABLED) { 7 }
      const_attr_reader  :ATK_STATE_ENABLED
      
      const_set_lazy(:ATK_STATE_EXPANDED) { 9 }
      const_attr_reader  :ATK_STATE_EXPANDED
      
      const_set_lazy(:ATK_STATE_FOCUSABLE) { 10 }
      const_attr_reader  :ATK_STATE_FOCUSABLE
      
      const_set_lazy(:ATK_STATE_FOCUSED) { 11 }
      const_attr_reader  :ATK_STATE_FOCUSED
      
      const_set_lazy(:ATK_STATE_MULTISELECTABLE) { 16 }
      const_attr_reader  :ATK_STATE_MULTISELECTABLE
      
      const_set_lazy(:ATK_STATE_PRESSED) { 18 }
      const_attr_reader  :ATK_STATE_PRESSED
      
      const_set_lazy(:ATK_STATE_RESIZABLE) { 19 }
      const_attr_reader  :ATK_STATE_RESIZABLE
      
      const_set_lazy(:ATK_STATE_SELECTABLE) { 20 }
      const_attr_reader  :ATK_STATE_SELECTABLE
      
      const_set_lazy(:ATK_STATE_SELECTED) { 21 }
      const_attr_reader  :ATK_STATE_SELECTED
      
      const_set_lazy(:ATK_STATE_SHOWING) { 23 }
      const_attr_reader  :ATK_STATE_SHOWING
      
      const_set_lazy(:ATK_STATE_TRANSIENT) { 26 }
      const_attr_reader  :ATK_STATE_TRANSIENT
      
      const_set_lazy(:ATK_STATE_VISIBLE) { 28 }
      const_attr_reader  :ATK_STATE_VISIBLE
      
      const_set_lazy(:ATK_TEXT_BOUNDARY_CHAR) { 0 }
      const_attr_reader  :ATK_TEXT_BOUNDARY_CHAR
      
      const_set_lazy(:ATK_TEXT_BOUNDARY_WORD_START) { 1 }
      const_attr_reader  :ATK_TEXT_BOUNDARY_WORD_START
      
      const_set_lazy(:ATK_TEXT_BOUNDARY_WORD_END) { 2 }
      const_attr_reader  :ATK_TEXT_BOUNDARY_WORD_END
      
      const_set_lazy(:ATK_TEXT_BOUNDARY_SENTENCE_START) { 3 }
      const_attr_reader  :ATK_TEXT_BOUNDARY_SENTENCE_START
      
      const_set_lazy(:ATK_TEXT_BOUNDARY_SENTENCE_END) { 4 }
      const_attr_reader  :ATK_TEXT_BOUNDARY_SENTENCE_END
      
      const_set_lazy(:ATK_TEXT_BOUNDARY_LINE_START) { 5 }
      const_attr_reader  :ATK_TEXT_BOUNDARY_LINE_START
      
      const_set_lazy(:ATK_TEXT_BOUNDARY_LINE_END) { 6 }
      const_attr_reader  :ATK_TEXT_BOUNDARY_LINE_END
      
      const_set_lazy(:ATK_XY_WINDOW) { 1 }
      const_attr_reader  :ATK_XY_WINDOW
      
      # Signals
      const_set_lazy(:Selection_changed) { OS.ascii("selection_changed") }
      const_attr_reader  :Selection_changed
      
      const_set_lazy(:Text_changed_insert) { OS.ascii("text_changed::insert") }
      const_attr_reader  :Text_changed_insert
      
      const_set_lazy(:Text_changed_delete) { OS.ascii("text_changed::delete") }
      const_attr_reader  :Text_changed_delete
      
      const_set_lazy(:Text_caret_moved) { OS.ascii("text_caret_moved") }
      const_attr_reader  :Text_caret_moved
      
      const_set_lazy(:Text_selection_changed) { OS.ascii("text_selection_changed") }
      const_attr_reader  :Text_selection_changed
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK_AtkObjectFactory_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      # 64 bit
      def _atk_object_factory_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK_AtkObjectFactory_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK_AtkObjectFactoryClass_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _atk_object_factory_class_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK_AtkObjectFactoryClass_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1ATK_1ACTION_1GET_1IFACE, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # Natives
      # int
      # int
      def ___atk_action_get_iface(obj)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1ATK_1ACTION_1GET_1IFACE, JNI.env, self.jni_id, obj.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def _atk_action_get_iface(obj)
        PLATFORM_LOCK.lock
        begin
          return ___atk_action_get_iface(obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1ATK_1COMPONENT_1GET_1IFACE, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # int
      # int
      def ___atk_component_get_iface(atk_handle)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1ATK_1COMPONENT_1GET_1IFACE, JNI.env, self.jni_id, atk_handle.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def _atk_component_get_iface(atk_handle)
        PLATFORM_LOCK.lock
        begin
          return ___atk_component_get_iface(atk_handle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1ATK_1OBJECT_1FACTORY_1CLASS, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # int
      # int
      def ___atk_object_factory_class(klass)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1ATK_1OBJECT_1FACTORY_1CLASS, JNI.env, self.jni_id, klass.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def _atk_object_factory_class(klass)
        PLATFORM_LOCK.lock
        begin
          return ___atk_object_factory_class(klass)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1ATK_1SELECTION_1GET_1IFACE, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # int
      # int
      def ___atk_selection_get_iface(obj)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1ATK_1SELECTION_1GET_1IFACE, JNI.env, self.jni_id, obj.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def _atk_selection_get_iface(obj)
        PLATFORM_LOCK.lock
        begin
          return ___atk_selection_get_iface(obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1ATK_1TEXT_1GET_1IFACE, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # int
      # int
      def ___atk_text_get_iface(handle)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1ATK_1TEXT_1GET_1IFACE, JNI.env, self.jni_id, handle.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def _atk_text_get_iface(handle)
        PLATFORM_LOCK.lock
        begin
          return ___atk_text_get_iface(handle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1GTK_1ACCESSIBLE, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # int
      # int
      def ___gtk_accessible(handle)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1GTK_1ACCESSIBLE, JNI.env, self.jni_id, handle.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def _gtk_accessible(handle)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_accessible(handle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1focus_1tracker_1notify, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param object cast=(AtkObject *)
      # int
      def __atk_focus_tracker_notify(object)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1focus_1tracker_1notify, JNI.env, self.jni_id, object.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def atk_focus_tracker_notify(object)
        PLATFORM_LOCK.lock
        begin
          __atk_focus_tracker_notify(object)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1get_1default_1registry, [:pointer, :long], :int64
      typesig { [] }
      # int
      def __atk_get_default_registry
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1get_1default_1registry, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # int
      def atk_get_default_registry
        PLATFORM_LOCK.lock
        begin
          return __atk_get_default_registry
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1object_1factory_1create_1accessible, [:pointer, :long, :int64, :int64], :int64
      typesig { [::Java::Long, ::Java::Long] }
      # @param factory cast=(AtkObjectFactory *)
      # @param obj cast=(GObject *)
      # 
      # int
      # int
      # int
      def __atk_object_factory_create_accessible(factory, obj)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1object_1factory_1create_1accessible, JNI.env, self.jni_id, factory.to_int, obj.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def atk_object_factory_create_accessible(factory, obj)
        PLATFORM_LOCK.lock
        begin
          return __atk_object_factory_create_accessible(factory, obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1object_1factory_1get_1accessible_1type, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # @param factory cast=(AtkObjectFactory *)
      # int
      # int
      def __atk_object_factory_get_accessible_type(factory)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1object_1factory_1get_1accessible_1type, JNI.env, self.jni_id, factory.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def atk_object_factory_get_accessible_type(factory)
        PLATFORM_LOCK.lock
        begin
          return __atk_object_factory_get_accessible_type(factory)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1object_1initialize, [:pointer, :long, :int64, :int64], :void
      typesig { [::Java::Long, ::Java::Long] }
      # @param accessible cast=(AtkObject *)
      # @param data cast=(gpointer)
      # 
      # int
      # int
      def __atk_object_initialize(accessible, data)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1object_1initialize, JNI.env, self.jni_id, accessible.to_int, data.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      def atk_object_initialize(accessible, data)
        PLATFORM_LOCK.lock
        begin
          __atk_object_initialize(accessible, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1object_1ref_1relation_1set, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # @param accessible cast=(AtkObject *)
      # int
      # int
      def __atk_object_ref_relation_set(accessible)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1object_1ref_1relation_1set, JNI.env, self.jni_id, accessible.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def atk_object_ref_relation_set(accessible)
        PLATFORM_LOCK.lock
        begin
          return __atk_object_ref_relation_set(accessible)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1registry_1get_1factory, [:pointer, :long, :int64, :int64], :int64
      typesig { [::Java::Long, ::Java::Long] }
      # @param registry cast=(AtkRegistry *)
      # @param type cast=(GType)
      # 
      # int
      # int
      # int
      def __atk_registry_get_factory(registry, type)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1registry_1get_1factory, JNI.env, self.jni_id, registry.to_int, type.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def atk_registry_get_factory(registry, type)
        PLATFORM_LOCK.lock
        begin
          return __atk_registry_get_factory(registry, type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1registry_1set_1factory_1type, [:pointer, :long, :int64, :int64, :int64], :void
      typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
      # @param registry cast=(AtkRegistry *)
      # @param type cast=(GType)
      # @param factory_type cast=(GType)
      # 
      # int
      # int
      # int
      def __atk_registry_set_factory_type(registry, type, factory_type)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1registry_1set_1factory_1type, JNI.env, self.jni_id, registry.to_int, type.to_int, factory_type.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def atk_registry_set_factory_type(registry, type, factory_type)
        PLATFORM_LOCK.lock
        begin
          __atk_registry_set_factory_type(registry, type, factory_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1relation_1set_1get_1n_1relations, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param set cast=(AtkRelationSet *)
      # int
      def __atk_relation_set_get_n_relations(set)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1relation_1set_1get_1n_1relations, JNI.env, self.jni_id, set.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def atk_relation_set_get_n_relations(set)
        PLATFORM_LOCK.lock
        begin
          return __atk_relation_set_get_n_relations(set)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1relation_1set_1get_1relation, [:pointer, :long, :int64, :int32], :int64
      typesig { [::Java::Long, ::Java::Int] }
      # @param set cast=(AtkRelationSet *)
      # int
      # int
      def __atk_relation_set_get_relation(set, i)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1relation_1set_1get_1relation, JNI.env, self.jni_id, set.to_int, i.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int] }
      # int
      # int
      def atk_relation_set_get_relation(set, i)
        PLATFORM_LOCK.lock
        begin
          return __atk_relation_set_get_relation(set, i)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1relation_1set_1remove, [:pointer, :long, :int64, :int64], :void
      typesig { [::Java::Long, ::Java::Long] }
      # @param set cast=(AtkRelationSet *)
      # @param relation cast=(AtkRelation *)
      # 
      # int
      # int
      def __atk_relation_set_remove(set, relation)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1relation_1set_1remove, JNI.env, self.jni_id, set.to_int, relation.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      def atk_relation_set_remove(set, relation)
        PLATFORM_LOCK.lock
        begin
          __atk_relation_set_remove(set, relation)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1state_1set_1add_1state, [:pointer, :long, :int64, :int32], :int8
      typesig { [::Java::Long, ::Java::Int] }
      # @param set cast=(AtkStateSet *)
      # @param type cast=(AtkStateType)
      # 
      # int
      def __atk_state_set_add_state(set, type)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1state_1set_1add_1state, JNI.env, self.jni_id, set.to_int, type.to_int) != 0
      end
      
      typesig { [::Java::Long, ::Java::Int] }
      # int
      def atk_state_set_add_state(set, type)
        PLATFORM_LOCK.lock
        begin
          return __atk_state_set_add_state(set, type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1state_1set_1new, [:pointer, :long], :int64
      typesig { [] }
      # int
      def __atk_state_set_new
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1atk_1state_1set_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # int
      def atk_state_set_new
        PLATFORM_LOCK.lock
        begin
          return __atk_state_set_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJ, [:pointer, :long, :int64, :int64], :int64
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def __call(function, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJ, JNI.env, self.jni_id, function.to_int, arg0.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def call(function, arg0)
        PLATFORM_LOCK.lock
        begin
          return __call(function, arg0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJJ, [:pointer, :long, :int64, :int64, :int64], :int64
      typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      def __call(function, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJJ, JNI.env, self.jni_id, function.to_int, arg0.to_int, arg1.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      def call(function, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return __call(function, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJJJ, [:pointer, :long, :int64, :int64, :int64, :int64], :int64
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      def __call(function, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJJJ, JNI.env, self.jni_id, function.to_int, arg0.to_int, arg1.to_int, arg2.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      def call(function, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return __call(function, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJJJJ, [:pointer, :long, :int64, :int64, :int64, :int64, :int64], :int64
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      # int
      def __call(function, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJJJJ, JNI.env, self.jni_id, function.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      # int
      def call(function, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return __call(function, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJJJJJ, [:pointer, :long, :int64, :int64, :int64, :int64, :int64, :int64], :int64
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      def __call(function, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJJJJJ, JNI.env, self.jni_id, function.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      def call(function, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return __call(function, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJJJJJJ, [:pointer, :long, :int64, :int64, :int64, :int64, :int64, :int64, :int64], :int64
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      def __call(function, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_accessibility_gtk_ATK__1call__JJJJJJJ, JNI.env, self.jni_id, function.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      def call(function, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return __call(function, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkActionIface.jni_package_name}_AtkActionIface_2J".to_sym, [:pointer, :long, :long, :int64], :void
      typesig { [AtkActionIface, ::Java::Long] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkActionIface.jni_package_name}_AtkActionIface_2J".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkComponentIface.jni_package_name}_AtkComponentIface_2J".to_sym, [:pointer, :long, :long, :int64], :void
      typesig { [AtkComponentIface, ::Java::Long] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkComponentIface.jni_package_name}_AtkComponentIface_2J".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkHypertextIface.jni_package_name}_AtkHypertextIface_2J".to_sym, [:pointer, :long, :long, :int64], :void
      typesig { [AtkHypertextIface, ::Java::Long] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkHypertextIface.jni_package_name}_AtkHypertextIface_2J".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkObjectClass.jni_package_name}_AtkObjectClass_2J".to_sym, [:pointer, :long, :long, :int64], :void
      typesig { [AtkObjectClass, ::Java::Long] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkObjectClass.jni_package_name}_AtkObjectClass_2J".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkObjectFactoryClass.jni_package_name}_AtkObjectFactoryClass_2J".to_sym, [:pointer, :long, :long, :int64], :void
      typesig { [AtkObjectFactoryClass, ::Java::Long] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkObjectFactoryClass.jni_package_name}_AtkObjectFactoryClass_2J".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkSelectionIface.jni_package_name}_AtkSelectionIface_2J".to_sym, [:pointer, :long, :long, :int64], :void
      typesig { [AtkSelectionIface, ::Java::Long] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkSelectionIface.jni_package_name}_AtkSelectionIface_2J".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkTextIface.jni_package_name}_AtkTextIface_2J".to_sym, [:pointer, :long, :long, :int64], :void
      typesig { [AtkTextIface, ::Java::Long] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{AtkTextIface.jni_package_name}_AtkTextIface_2J".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{GtkAccessible.jni_package_name}_GtkAccessible_2J".to_sym, [:pointer, :long, :long, :int64], :void
      typesig { [GtkAccessible, ::Java::Long] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__L#{GtkAccessible.jni_package_name}_GtkAccessible_2J".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkActionIface.jni_package_name}_AtkActionIface_2".to_sym, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, AtkActionIface] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkActionIface.jni_package_name}_AtkActionIface_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkComponentIface.jni_package_name}_AtkComponentIface_2".to_sym, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, AtkComponentIface] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkComponentIface.jni_package_name}_AtkComponentIface_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkHypertextIface.jni_package_name}_AtkHypertextIface_2".to_sym, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, AtkHypertextIface] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkHypertextIface.jni_package_name}_AtkHypertextIface_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkObjectClass.jni_package_name}_AtkObjectClass_2".to_sym, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, AtkObjectClass] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkObjectClass.jni_package_name}_AtkObjectClass_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkObjectFactoryClass.jni_package_name}_AtkObjectFactoryClass_2".to_sym, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, AtkObjectFactoryClass] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkObjectFactoryClass.jni_package_name}_AtkObjectFactoryClass_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkSelectionIface.jni_package_name}_AtkSelectionIface_2".to_sym, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, AtkSelectionIface] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkSelectionIface.jni_package_name}_AtkSelectionIface_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkTextIface.jni_package_name}_AtkTextIface_2".to_sym, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, AtkTextIface] }
      # int
      def memmove(dest, src)
        JNI.call_native_method("Java_org_eclipse_swt_internal_accessibility_gtk_ATK_memmove__JL#{AtkTextIface.jni_package_name}_AtkTextIface_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__atk, :initialize
  end
  
end
