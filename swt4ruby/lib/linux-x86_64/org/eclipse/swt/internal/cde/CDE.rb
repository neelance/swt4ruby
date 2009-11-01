require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cde
  module CDEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cde
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class CDE < CDEImports.const_get :Platform
    include_class_members CDEImports
    
    class_module.module_eval {
      # Constants
      const_set_lazy(:DtACTION_FILE) { 1 }
      const_attr_reader  :DtACTION_FILE
      
      const_set_lazy(:DtDTS_DA_ACTION_LIST) { "ACTIONS" }
      const_attr_reader  :DtDTS_DA_ACTION_LIST
      
      const_set_lazy(:DtDTS_DA_ICON) { "ICON" }
      const_attr_reader  :DtDTS_DA_ICON
      
      const_set_lazy(:DtDTS_DA_MIME_TYPE) { "MIME_TYPE" }
      const_attr_reader  :DtDTS_DA_MIME_TYPE
      
      const_set_lazy(:DtDTS_DA_NAME_TEMPLATE) { "NAME_TEMPLATE" }
      const_attr_reader  :DtDTS_DA_NAME_TEMPLATE
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE_DtActionArg_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      # 64 bit
      def _dt_action_arg_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE_DtActionArg_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1DtAppInitialize, [:pointer, :long, :int64, :int64, :int64, :long, :long], :int8
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # Natives
      # 
      # @param appContext cast=(XtAppContext)
      # @param display cast=(Display *)
      # @param topWiget cast=(Widget)
      # @param appName cast=(char *)
      # @param appClass cast=(char *)
      # 
      # int
      # int
      # int
      def ___dt_app_initialize(app_context, display, top_wiget, app_name, app_class)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1DtAppInitialize, JNI.env, self.jni_id, app_context.to_int, display.to_int, top_wiget.to_int, app_name.jni_id, app_class.jni_id) != 0
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # int
      # int
      # int
      def _dt_app_initialize(app_context, display, top_wiget, app_name, app_class)
        PLATFORM_LOCK.lock
        begin
          return ___dt_app_initialize(app_context, display, top_wiget, app_name, app_class)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1DtDbLoad, [:pointer, :long], :void
      typesig { [] }
      def ___dt_db_load
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1DtDbLoad, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _dt_db_load
        PLATFORM_LOCK.lock
        begin
          ___dt_db_load
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1DtDtsDataTypeNames, [:pointer, :long], :int64
      typesig { [] }
      # int
      def ___dt_dts_data_type_names
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1DtDtsDataTypeNames, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # int
      def _dt_dts_data_type_names
        PLATFORM_LOCK.lock
        begin
          return ___dt_dts_data_type_names
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1DtDtsFileToDataType, [:pointer, :long, :long], :int64
      typesig { [Array.typed(::Java::Byte)] }
      # @param fileName cast=(char *)
      # int
      def ___dt_dts_file_to_data_type(file_name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1DtDtsFileToDataType, JNI.env, self.jni_id, file_name.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # int
      def _dt_dts_file_to_data_type(file_name)
        PLATFORM_LOCK.lock
        begin
          return ___dt_dts_file_to_data_type(file_name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1DtDtsDataTypeIsAction, [:pointer, :long, :long], :int8
      typesig { [Array.typed(::Java::Byte)] }
      # @param dataType cast=(char *)
      def ___dt_dts_data_type_is_action(data_type)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1DtDtsDataTypeIsAction, JNI.env, self.jni_id, data_type.jni_id) != 0
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def _dt_dts_data_type_is_action(data_type)
        PLATFORM_LOCK.lock
        begin
          return ___dt_dts_data_type_is_action(data_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1DtDtsDataTypeToAttributeValue, [:pointer, :long, :long, :long, :long], :int64
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # @param dataType cast=(char *)
      # @param attrName cast=(char *)
      # @param optName cast=(char *)
      # 
      # int
      def ___dt_dts_data_type_to_attribute_value(data_type, attr_name, opt_name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1DtDtsDataTypeToAttributeValue, JNI.env, self.jni_id, data_type.jni_id, attr_name.jni_id, opt_name.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # int
      def _dt_dts_data_type_to_attribute_value(data_type, attr_name, opt_name)
        PLATFORM_LOCK.lock
        begin
          return ___dt_dts_data_type_to_attribute_value(data_type, attr_name, opt_name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1DtDtsFreeDataType, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param dataType cast=(char *)
      # int
      def ___dt_dts_free_data_type(data_type)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1DtDtsFreeDataType, JNI.env, self.jni_id, data_type.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def _dt_dts_free_data_type(data_type)
        PLATFORM_LOCK.lock
        begin
          ___dt_dts_free_data_type(data_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1DtDtsFreeDataTypeNames, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param dataTypeList cast=(char **)
      # int
      def ___dt_dts_free_data_type_names(data_type_list)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1DtDtsFreeDataTypeNames, JNI.env, self.jni_id, data_type_list.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def _dt_dts_free_data_type_names(data_type_list)
        PLATFORM_LOCK.lock
        begin
          ___dt_dts_free_data_type_names(data_type_list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1DtDtsFreeAttributeValue, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param attrValue cast=(char *)
      # int
      def ___dt_dts_free_attribute_value(attr_value)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1DtDtsFreeAttributeValue, JNI.env, self.jni_id, attr_value.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def _dt_dts_free_attribute_value(attr_value)
        PLATFORM_LOCK.lock
        begin
          ___dt_dts_free_attribute_value(attr_value)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1DtActionInvoke, [:pointer, :long, :int64, :long, :long, :int32, :long, :long, :long, :int32, :int64, :int64], :int64
      typesig { [::Java::Long, Array.typed(::Java::Byte), DtActionArg, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Long, ::Java::Long] }
      # @param topWidget cast=(Widget)
      # @param action cast=(char *)
      # @param termOpts cast=(char *)
      # @param execHost cast=(char *)
      # @param contextDir cast=(char *)
      # @param callback cast=(DtActionCallbackProc)
      # @param clientData cast=(XtPointer)
      # 
      # int
      # int
      # int
      def ___dt_action_invoke(top_widget, action, args, arg_count, term_opts, exec_host, context_dir, use_indicator, callback, client_data)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1DtActionInvoke, JNI.env, self.jni_id, top_widget.to_int, action.jni_id, args.jni_id, arg_count.to_int, term_opts.jni_id, exec_host.jni_id, context_dir.jni_id, use_indicator.to_int, callback.to_int, client_data.to_int)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Byte), DtActionArg, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def _dt_action_invoke(top_widget, action, args, arg_count, term_opts, exec_host, context_dir, use_indicator, callback, client_data)
        PLATFORM_LOCK.lock
        begin
          return ___dt_action_invoke(top_widget, action, args, arg_count, term_opts, exec_host, context_dir, use_indicator, callback, client_data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1topLevelShellWidgetClass, [:pointer, :long], :int64
      typesig { [] }
      # @method flags=const
      # int
      def __top_level_shell_widget_class
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1topLevelShellWidgetClass, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # int
      def top_level_shell_widget_class
        PLATFORM_LOCK.lock
        begin
          return __top_level_shell_widget_class
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1XtAppCreateShell, [:pointer, :long, :long, :long, :int64, :int64, :long, :int32], :int64
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long, ::Java::Long, Array.typed(::Java::Long), ::Java::Int] }
      # @param appName cast=(String)
      # @param appClass cast=(String)
      # @param widgetClass cast=(WidgetClass)
      # @param display cast=(Display *)
      # @param argList cast=(ArgList)
      # 
      # int
      # int
      # int
      # int
      def ___xt_app_create_shell(app_name, app_class, widget_class, display, arg_list, arg_count)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1XtAppCreateShell, JNI.env, self.jni_id, app_name.jni_id, app_class.jni_id, widget_class.to_int, display.to_int, arg_list.jni_id, arg_count.to_int)
      end
      
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long, ::Java::Long, Array.typed(::Java::Long), ::Java::Int] }
      # int
      # int
      # int
      # int
      def _xt_app_create_shell(app_name, app_class, widget_class, display, arg_list, arg_count)
        PLATFORM_LOCK.lock
        begin
          return ___xt_app_create_shell(app_name, app_class, widget_class, display, arg_list, arg_count)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1XtCreateApplicationContext, [:pointer, :long], :int64
      typesig { [] }
      # int
      def ___xt_create_application_context
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1XtCreateApplicationContext, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # int
      def _xt_create_application_context
        PLATFORM_LOCK.lock
        begin
          return ___xt_create_application_context
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1XtDisplayInitialize, [:pointer, :long, :int64, :int64, :long, :long, :int64, :int32, :long, :int32], :void
      typesig { [::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long, ::Java::Int, Array.typed(::Java::Long), ::Java::Int] }
      # @param app_context cast=(XtAppContext)
      # @param display cast=(Display *)
      # @param appName cast=(String)
      # @param appClass cast=(String)
      # @param options cast=(XrmOptionDescRec *)
      # @param num_options cast=(Cardinal)
      # @param argc cast=(int *)
      # @param argv cast=(String *)
      # 
      # int
      # int
      # int
      # int
      def ___xt_display_initialize(app_context, display, app_name, app_class, options, num_options, argc, argv)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1XtDisplayInitialize, JNI.env, self.jni_id, app_context.to_int, display.to_int, app_name.jni_id, app_class.jni_id, options.to_int, num_options.to_int, argc.jni_id, argv.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long, ::Java::Int, Array.typed(::Java::Long), ::Java::Int] }
      # int
      # int
      # int
      # int
      def _xt_display_initialize(app_context, display, app_name, app_class, options, num_options, argc, argv)
        PLATFORM_LOCK.lock
        begin
          ___xt_display_initialize(app_context, display, app_name, app_class, options, num_options, argc, argv)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1XtRealizeWidget, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param widget cast=(Widget)
      # int
      def ___xt_realize_widget(widget)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1XtRealizeWidget, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def _xt_realize_widget(widget)
        PLATFORM_LOCK.lock
        begin
          ___xt_realize_widget(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1XtResizeWidget, [:pointer, :long, :int64, :int32, :int32, :int32], :void
      typesig { [::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param widget cast=(Widget)
      # int
      def ___xt_resize_widget(widget, width, height, border_width)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1XtResizeWidget, JNI.env, self.jni_id, widget.to_int, width.to_int, height.to_int, border_width.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int] }
      # int
      def _xt_resize_widget(widget, width, height, border_width)
        PLATFORM_LOCK.lock
        begin
          ___xt_resize_widget(widget, width, height, border_width)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1XtSetMappedWhenManaged, [:pointer, :long, :int64, :int8], :void
      typesig { [::Java::Long, ::Java::Boolean] }
      # @param widget cast=(Widget)
      # int
      def ___xt_set_mapped_when_managed(widget, flag)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1XtSetMappedWhenManaged, JNI.env, self.jni_id, widget.to_int, flag ? 1 : 0)
      end
      
      typesig { [::Java::Long, ::Java::Boolean] }
      # int
      def _xt_set_mapped_when_managed(widget, flag)
        PLATFORM_LOCK.lock
        begin
          ___xt_set_mapped_when_managed(widget, flag)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cde_CDE__1XtToolkitInitialize, [:pointer, :long], :void
      typesig { [] }
      def ___xt_toolkit_initialize
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cde_CDE__1XtToolkitInitialize, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _xt_toolkit_initialize
        PLATFORM_LOCK.lock
        begin
          ___xt_toolkit_initialize
        ensure
          PLATFORM_LOCK.unlock
        end
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__cde, :initialize
  end
  
end
