require "rjava"

# Copyright (c) 2007, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module OSImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  # This section is auto generated
  class OS < OSImports.const_get :C
    include_class_members OSImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt-pi") # $NON-NLS-1$
      end
      
      when_class_loaded do
        response = Array.typed(::Java::Int).new(1) { 0 }
        OS._gestalt(OS.attr_gestalt_system_version, response)
        const_set :VERSION, response[0] & 0xffff
      end
      
      const_set_lazy(:GestaltSystemVersion) { (Character.new(?s.ord) << 24) + (Character.new(?y.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?v.ord) }
      const_attr_reader  :GestaltSystemVersion
      
      const_set_lazy(:NoErr) { 0 }
      const_attr_reader  :NoErr
      
      const_set_lazy(:K_ProcessTransformToForegroundApplication) { 1 }
      const_attr_reader  :K_ProcessTransformToForegroundApplication
      
      const_set_lazy(:K_AlertCautionIcon) { (Character.new(?c.ord) << 24) + (Character.new(?a.ord) << 16) + (Character.new(?u.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_AlertCautionIcon
      
      const_set_lazy(:K_AlertNoteIcon) { (Character.new(?n.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_AlertNoteIcon
      
      const_set_lazy(:K_AlertStopIcon) { (Character.new(?s.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?p.ord) }
      const_attr_reader  :K_AlertStopIcon
      
      const_set_lazy(:ShiftKey) { 1 << 9 }
      const_attr_reader  :ShiftKey
      
      const_set_lazy(:K_ThemeMetricFocusRectOutset) { 7 }
      const_attr_reader  :K_ThemeMetricFocusRectOutset
      
      const_set_lazy(:K_HIThemeOrientationNormal) { 0 }
      const_attr_reader  :K_HIThemeOrientationNormal
      
      const_set_lazy(:K_UIModeNormal) { 0 }
      const_attr_reader  :K_UIModeNormal
      
      const_set_lazy(:K_UIModeContentHidden) { 2 }
      const_attr_reader  :K_UIModeContentHidden
      
      const_set_lazy(:K_UIModeAllHidden) { 3 }
      const_attr_reader  :K_UIModeAllHidden
      
      # long
      const_set_lazy(:Sel_sendSearchSelection) { sel_register_name("sendSearchSelection") }
      const_attr_reader  :Sel_sendSearchSelection
      
      # long
      const_set_lazy(:Sel_sendCancelSelection) { sel_register_name("sendCancelSelection") }
      const_attr_reader  :Sel_sendCancelSelection
      
      # long
      const_set_lazy(:Sel_sendSelection) { sel_register_name("sendSelection") }
      const_attr_reader  :Sel_sendSelection
      
      # long
      const_set_lazy(:Sel_sendSelection_) { sel_register_name("sendSelection:") }
      const_attr_reader  :Sel_sendSelection_
      
      # long
      const_set_lazy(:Sel_sendDoubleSelection) { sel_register_name("sendDoubleSelection") }
      const_attr_reader  :Sel_sendDoubleSelection
      
      # long
      const_set_lazy(:Sel_sendVerticalSelection) { sel_register_name("sendVerticalSelection") }
      const_attr_reader  :Sel_sendVerticalSelection
      
      # long
      const_set_lazy(:Sel_sendHorizontalSelection) { sel_register_name("sendHorizontalSelection") }
      const_attr_reader  :Sel_sendHorizontalSelection
      
      # long
      const_set_lazy(:Sel_timerProc_) { sel_register_name("timerProc:") }
      const_attr_reader  :Sel_timerProc_
      
      # long
      const_set_lazy(:Sel_handleNotification_) { sel_register_name("handleNotification:") }
      const_attr_reader  :Sel_handleNotification_
      
      # long
      const_set_lazy(:Sel_callJava) { sel_register_name("callJava:index:arg:") }
      const_attr_reader  :Sel_callJava
      
      # long
      const_set_lazy(:Sel_quitRequested_) { sel_register_name("quitRequested:") }
      const_attr_reader  :Sel_quitRequested_
      
      # long
      const_set_lazy(:Sel_systemSettingsChanged_) { sel_register_name("systemSettingsChanged:") }
      const_attr_reader  :Sel_systemSettingsChanged_
      
      # long
      const_set_lazy(:Sel_panelDidEnd_returnCode_contextInfo_) { sel_register_name("panelDidEnd:returnCode:contextInfo:") }
      const_attr_reader  :Sel_panelDidEnd_returnCode_contextInfo_
      
      # long
      const_set_lazy(:Sel_updateOpenGLContext_) { sel_register_name("updateOpenGLContext:") }
      const_attr_reader  :Sel_updateOpenGLContext_
      
      # long
      const_set_lazy(:Sel_overwriteExistingFileCheck) { sel_register_name("_overwriteExistingFileCheck:") }
      const_attr_reader  :Sel_overwriteExistingFileCheck
      
      # long
      const_set_lazy(:Sel_setMovable_) { OS.sel_register_name("setMovable:") }
      const_attr_reader  :Sel_setMovable_
      
      # long
      const_set_lazy(:Sel_contextID) { OS.sel_register_name("contextID") }
      const_attr_reader  :Sel_contextID
      
      # long
      const_set_lazy(:Sel__drawThemeProgressArea_) { OS.sel_register_name("_drawThemeProgressArea:") }
      const_attr_reader  :Sel__drawThemeProgressArea_
      
      # long
      const_set_lazy(:Sel__setNeedsToUseHeartBeatWindow_) { OS.sel_register_name("_setNeedsToUseHeartBeatWindow:") }
      const_attr_reader  :Sel__setNeedsToUseHeartBeatWindow_
      
      # long
      const_set_lazy(:Class_WebPanelAuthenticationHandler) { OS.objc_get_class("WebPanelAuthenticationHandler") }
      const_attr_reader  :Class_WebPanelAuthenticationHandler
      
      # long
      const_set_lazy(:Sel_sharedHandler) { sel_register_name("sharedHandler") }
      const_attr_reader  :Sel_sharedHandler
      
      # long
      const_set_lazy(:Sel_startAuthentication) { sel_register_name("startAuthentication:window:") }
      const_attr_reader  :Sel_startAuthentication
      
      # These are not generated in order to avoid creating static methods on all classes
      # long
      const_set_lazy(:Sel_isSelectorExcludedFromWebScript_) { sel_register_name("isSelectorExcludedFromWebScript:") }
      const_attr_reader  :Sel_isSelectorExcludedFromWebScript_
      
      # long
      const_set_lazy(:Sel_webScriptNameForSelector_) { sel_register_name("webScriptNameForSelector:") }
      const_attr_reader  :Sel_webScriptNameForSelector_
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NewGlobalRef, [:pointer, :long, :long], :int32
      typesig { [Object] }
      # JNI natives
      # @method flags=jni
      # long
      def _new_global_ref(object)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NewGlobalRef, JNI.env, self.jni_id, object.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_DeleteGlobalRef, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @method flags=jni
      # @param globalRef cast=(jobject)
      # 
      # long
      def _delete_global_ref(global_ref)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_DeleteGlobalRef, JNI.env, self.jni_id, global_ref.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_JNIGetObject, [:pointer, :long, :int32], :long
      typesig { [::Java::Int] }
      # @method flags=no_gen
      # long
      def _jniget_object(global_ref)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_JNIGetObject, JNI.env, self.jni_id, global_ref.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_Gestalt, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # Carbon calls
      def _gestalt(selector, response)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_Gestalt, JNI.env, self.jni_id, selector.to_int, response.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_GetCurrentProcess, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      # @param psn cast=(ProcessSerialNumber *)
      def _get_current_process(psn)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_GetCurrentProcess, JNI.env, self.jni_id, psn.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_SetFrontProcess, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      # @param psn cast=(ProcessSerialNumber *)
      def _set_front_process(psn)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_SetFrontProcess, JNI.env, self.jni_id, psn.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_TransformProcessType, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Int), ::Java::Int] }
      # @param psn cast=(ProcessSerialNumber *)
      def _transform_process_type(psn, transform_state)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_TransformProcessType, JNI.env, self.jni_id, psn.jni_id, transform_state.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CPSSetProcessName, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Int), ::Java::Int] }
      # long
      def _cpsset_process_name(psn, name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CPSSetProcessName, JNI.env, self.jni_id, psn.jni_id, name.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_SetThemeCursor, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method flags=dynamic
      def _set_theme_cursor(theme_cursor)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_SetThemeCursor, JNI.env, self.jni_id, theme_cursor.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_GetCurrentButtonState, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=dynamic
      def _get_current_button_state
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_GetCurrentButtonState, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_GetDblTime, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=dynamic
      def _get_dbl_time
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_GetDblTime, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextCopyPath, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method flags=dynamic
      # @param  cast=(CGContextRef)
      # long
      # long
      def _cgcontext_copy_path(context)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextCopyPath, JNI.env, self.jni_id, context.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_TISCopyCurrentKeyboardInputSource, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=dynamic
      # long
      def _tiscopy_current_keyboard_input_source
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_TISCopyCurrentKeyboardInputSource, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_TISGetInputSourceProperty, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # @param  cast=(TISInputSourceRef)
      # @param  cast=(CFStringRef)
      # long
      # long
      # long
      def _tisget_input_source_property(input_source, property_key)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_TISGetInputSourceProperty, JNI.env, self.jni_id, input_source.to_int, property_key.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_kTISPropertyUnicodeKeyLayoutData, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=no_gen
      # long
      def k_tisproperty_unicode_key_layout_data
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_kTISPropertyUnicodeKeyLayoutData, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_SetSystemUIMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # @param inMode cast=(UInt32)
      # @param inOptions cast=(UInt32)
      def _set_system_uimode(in_mode, in_options)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_SetSystemUIMode, JNI.env, self.jni_id, in_mode.to_int, in_options.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_UCKeyTranslate, [:pointer, :long, :int32, :int16, :int16, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Short, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Char)] }
      # @method flags=dynamic
      # @param keyLayoutPtr cast=(const UCKeyboardLayout *)
      # @param virtualKeyCode cast=(UInt16)
      # @param keyAction cast=(UInt16)
      # @param modifierKeyState cast=(UInt32)
      # @param keyboardType cast=(UInt32)
      # @param keyTranslateOptions cast=(OptionBits)
      # @param deadKeyState cast=(UInt32 *)
      # @param maxStringLength cast=(UniCharCount)
      # @param actualStringLength cast=(UniCharCount *)
      # @param unicodeString cast=(UniChar *)
      # 
      # long
      def _uckey_translate(key_layout_ptr, virtual_key_code, key_action, modifier_key_state, keyboard_type, key_translate_options, dead_key_state, max_string_length, actual_string_length, unicode_string)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_UCKeyTranslate, JNI.env, self.jni_id, key_layout_ptr.to_int, virtual_key_code.to_int, key_action.to_int, modifier_key_state.to_int, keyboard_type.to_int, key_translate_options.to_int, dead_key_state.jni_id, max_string_length.to_int, actual_string_length.jni_id, unicode_string.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_GetThemeMetric, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # @method flags=dynamic
      # @param metric cast=(SInt32 *)
      def _get_theme_metric(theme_constant, metric)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_GetThemeMetric, JNI.env, self.jni_id, theme_constant.to_int, metric.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_HIThemeDrawFocusRect, [:pointer, :long, :long, :int8, :int32, :int32], :int32
      typesig { [CGRect, ::Java::Boolean, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # @param inContext cast=(CGContextRef)
      # 
      # long
      def _hitheme_draw_focus_rect(in_rect, in_has_focus, in_context, in_orientation)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_HIThemeDrawFocusRect, JNI.env, self.jni_id, in_rect.jni_id, in_has_focus ? 1 : 0, in_context.to_int, in_orientation.to_int)
      end
      
      const_set_lazy(:K_UCKeyActionDown) { 0 }
      const_attr_reader  :K_UCKeyActionDown
      
      const_set_lazy(:K_UCKeyActionUp) { 1 }
      const_attr_reader  :K_UCKeyActionUp
      
      const_set_lazy(:K_ThemeCopyArrowCursor) { 1 }
      const_attr_reader  :K_ThemeCopyArrowCursor
      
      const_set_lazy(:K_ThemeNotAllowedCursor) { 18 }
      const_attr_reader  :K_ThemeNotAllowedCursor
      
      const_set_lazy(:K_ThemeAliasArrowCursor) { 2 }
      const_attr_reader  :K_ThemeAliasArrowCursor
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_ATSFontActivateFromFileReference, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @method flags=dynamic
      # @param iFile cast=(const FSRef *)
      # @param iContext cast=(ATSFontContext)
      # @param iFormat cast=(ATSFontFormat)
      # @param iReserved cast=(void *)
      # @param iOptions cast=(ATSOptionFlags)
      # @param oContainer cast=(ATSFontContainerRef *)
      # 
      # long
      # long
      def _atsfont_activate_from_file_reference(i_file, i_context, i_format, i_reserved, i_options, o_container)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_ATSFontActivateFromFileReference, JNI.env, self.jni_id, i_file.jni_id, i_context.to_int, i_format.to_int, i_reserved.to_int, i_options.to_int, o_container.jni_id)
      end
      
      const_set_lazy(:K_ATSFontContextLocal) { 2 }
      const_attr_reader  :K_ATSFontContextLocal
      
      const_set_lazy(:K_ATSOptionFlagsDefault) { 0 }
      const_attr_reader  :K_ATSOptionFlagsDefault
      
      const_set_lazy(:K_ATSFontFormatUnspecified) { 0 }
      const_attr_reader  :K_ATSFontFormatUnspecified
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_FSPathMakeRef, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Boolean)] }
      # @method flags=dynamic
      # @param path cast=(const UInt8 *)
      # @param ref cast=(FSRef *)
      # @param isDirectory cast=(Boolean *)
      # 
      # long
      def _fspath_make_ref(path, ref, is_directory)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_FSPathMakeRef, JNI.env, self.jni_id, path.to_int, ref.jni_id, is_directory.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_LMGetKbdType, [:pointer, :long], :int8
      typesig { [] }
      # @method flags=dynamic
      def _lmget_kbd_type
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_LMGetKbdType, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_AcquireRootMenu, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=dynamic
      # long
      def _acquire_root_menu
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_AcquireRootMenu, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CancelMenuTracking, [:pointer, :long, :int32, :int8, :int32], :int32
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int] }
      # @method flags=dynamic
      # long
      def _cancel_menu_tracking(in_root_menu, in_immediate, in_dismissal_reason)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CancelMenuTracking, JNI.env, self.jni_id, in_root_menu.to_int, in_immediate ? 1 : 0, in_dismissal_reason.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_getpid, [:pointer, :long], :int32
      typesig { [] }
      # C calls
      def getpid
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_getpid, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_call, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def call(proc, id, sel)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_call, JNI.env, self.jni_id, proc.to_int, id.to_int, sel.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS__1_1BIG_1ENDIAN_1_1, [:pointer, :long], :int8
      typesig { [] }
      # @method flags=no_gen
      def ____big_endian__
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS__1_1BIG_1ENDIAN_1_1, JNI.env, self.jni_id) != 0
      end
      
      const_set_lazy(:K_CGBitmapByteOrderDefault) { 0 << 12 }
      const_attr_reader  :K_CGBitmapByteOrderDefault
      
      const_set_lazy(:K_CGBitmapByteOrder16Little) { 1 << 12 }
      const_attr_reader  :K_CGBitmapByteOrder16Little
      
      const_set_lazy(:K_CGBitmapByteOrder32Little) { 2 << 12 }
      const_attr_reader  :K_CGBitmapByteOrder32Little
      
      const_set_lazy(:K_CGBitmapByteOrder16Big) { 3 << 12 }
      const_attr_reader  :K_CGBitmapByteOrder16Big
      
      const_set_lazy(:K_CGBitmapByteOrder32Big) { 4 << 12 }
      const_attr_reader  :K_CGBitmapByteOrder32Big
      
      const_set_lazy(:K_CGBitmapByteOrder16Host) { ____big_endian__ ? K_CGBitmapByteOrder16Big : K_CGBitmapByteOrder16Little }
      const_attr_reader  :K_CGBitmapByteOrder16Host
      
      const_set_lazy(:K_CGBitmapByteOrder32Host) { ____big_endian__ ? K_CGBitmapByteOrder32Big : K_CGBitmapByteOrder32Little }
      const_attr_reader  :K_CGBitmapByteOrder32Host
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextCopyWindowContentsToRect, [:pointer, :long, :int32, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, CGRect, ::Java::Int, ::Java::Int, CGRect] }
      # @method flags=dynamic
      # @param destRect flags=struct
      # @param srcRect flags=struct
      # 
      # long
      # long
      # long
      def _cgcontext_copy_window_contents_to_rect(context, dest_rect, context_id, window_number, src_rect)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextCopyWindowContentsToRect, JNI.env, self.jni_id, context.to_int, dest_rect.jni_id, context_id.to_int, window_number.to_int, src_rect.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NewRgn, [:pointer, :long], :int32
      typesig { [] }
      # QuickDraw calls
      # @method flags=dynamic
      # long
      def _new_rgn
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NewRgn, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_RectRgn, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Short)] }
      # @method flags=dynamic
      # long
      def _rect_rgn(rgn_handle, rect)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_RectRgn, JNI.env, self.jni_id, rgn_handle.to_int, rect.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_OpenRgn, [:pointer, :long], :void
      typesig { [] }
      # @method flags=dynamic
      def _open_rgn
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_OpenRgn, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_OffsetRgn, [:pointer, :long, :int32, :int16, :int16], :void
      typesig { [::Java::Int, ::Java::Short, ::Java::Short] }
      # @method flags=dynamic
      # long
      def _offset_rgn(rgn_handle, dh, dv)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_OffsetRgn, JNI.env, self.jni_id, rgn_handle.to_int, dh.to_int, dv.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_MoveTo, [:pointer, :long, :int16, :int16], :void
      typesig { [::Java::Short, ::Java::Short] }
      # @method flags=dynamic
      def _move_to(h, v)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_MoveTo, JNI.env, self.jni_id, h.to_int, v.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_LineTo, [:pointer, :long, :int16, :int16], :void
      typesig { [::Java::Short, ::Java::Short] }
      # @method flags=dynamic
      def _line_to(h, v)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_LineTo, JNI.env, self.jni_id, h.to_int, v.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_UnionRgn, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # long
      # long
      # long
      def _union_rgn(src_rgn_a, src_rgn_b, dst_rgn)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_UnionRgn, JNI.env, self.jni_id, src_rgn_a.to_int, src_rgn_b.to_int, dst_rgn.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CloseRgn, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @method flags=dynamic
      # long
      def _close_rgn(dst_rgn)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CloseRgn, JNI.env, self.jni_id, dst_rgn.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_DisposeRgn, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @method flags=dynamic
      # long
      def _dispose_rgn(rgn_handle)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_DisposeRgn, JNI.env, self.jni_id, rgn_handle.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_PtInRgn, [:pointer, :long, :long, :int32], :int8
      typesig { [Array.typed(::Java::Short), ::Java::Int] }
      # @method flags=dynamic
      # @param pt flags=struct,cast=(Point *)
      # 
      # long
      def _pt_in_rgn(pt, rgn_handle)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_PtInRgn, JNI.env, self.jni_id, pt.jni_id, rgn_handle.to_int) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_GetRegionBounds, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Short)] }
      # @method flags=dynamic
      # long
      def _get_region_bounds(rgn_handle, bounds)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_GetRegionBounds, JNI.env, self.jni_id, rgn_handle.to_int, bounds.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_SectRgn, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # long
      # long
      # long
      def _sect_rgn(src_rgn_a, src_rgn_b, dst_rgn)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_SectRgn, JNI.env, self.jni_id, src_rgn_a.to_int, src_rgn_b.to_int, dst_rgn.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_EmptyRgn, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @method flags=dynamic
      # long
      def _empty_rgn(rgn_handle)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_EmptyRgn, JNI.env, self.jni_id, rgn_handle.to_int) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_DiffRgn, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # long
      # long
      # long
      def _diff_rgn(src_rgn_a, src_rgn_b, dst_rgn)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_DiffRgn, JNI.env, self.jni_id, src_rgn_a.to_int, src_rgn_b.to_int, dst_rgn.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_RectInRgn, [:pointer, :long, :long, :int32], :int8
      typesig { [Array.typed(::Java::Short), ::Java::Int] }
      # @method flags=dynamic
      # long
      def _rect_in_rgn(rect, rgn_handle)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_RectInRgn, JNI.env, self.jni_id, rect.jni_id, rgn_handle.to_int) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_QDRegionToRects, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # long
      # long
      # long
      def _qdregion_to_rects(rgn, dir, proc, user_data)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_QDRegionToRects, JNI.env, self.jni_id, rgn.to_int, dir.to_int, proc.to_int, user_data.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CopyRgn, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # long
      # long
      def _copy_rgn(src_rgn_handle, dst_rgn_handle)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CopyRgn, JNI.env, self.jni_id, src_rgn_handle.to_int, dst_rgn_handle.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_SetRect, [:pointer, :long, :long, :int16, :int16, :int16, :int16], :void
      typesig { [Array.typed(::Java::Short), ::Java::Short, ::Java::Short, ::Java::Short, ::Java::Short] }
      # @method flags=dynamic
      def _set_rect(r, left, top, right, bottom)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_SetRect, JNI.env, self.jni_id, r.jni_id, left.to_int, top.to_int, right.to_int, bottom.to_int)
      end
      
      const_set_lazy(:K_QDParseRegionFromTop) { (1 << 0) }
      const_attr_reader  :K_QDParseRegionFromTop
      
      const_set_lazy(:K_QDParseRegionFromBottom) { (1 << 1) }
      const_attr_reader  :K_QDParseRegionFromBottom
      
      const_set_lazy(:K_QDParseRegionFromLeft) { (1 << 2) }
      const_attr_reader  :K_QDParseRegionFromLeft
      
      const_set_lazy(:K_QDParseRegionFromRight) { (1 << 3) }
      const_attr_reader  :K_QDParseRegionFromRight
      
      const_set_lazy(:K_QDParseRegionFromTopLeft) { K_QDParseRegionFromTop | K_QDParseRegionFromLeft }
      const_attr_reader  :K_QDParseRegionFromTopLeft
      
      const_set_lazy(:K_QDRegionToRectsMsgParse) { 2 }
      const_attr_reader  :K_QDRegionToRectsMsgParse
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_isFlipped_1CALLBACK, [:pointer, :long], :int32
      typesig { [] }
      # Custom callbacks
      # @method flags=no_gen
      # long
      def is_flipped_callback
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_isFlipped_1CALLBACK, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSIntersectionRect, [:pointer, :long, :long, :long, :long], :void
      typesig { [NSRect, NSRect, NSRect] }
      # Custom structure return
      # @method flags=no_gen
      def _nsintersection_rect(result, a_rect, b_rect)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSIntersectionRect, JNI.env, self.jni_id, result.jni_id, a_rect.jni_id, b_rect.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayBounds, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, CGRect] }
      # @method flags=no_gen
      # @param display cast=(CGDirectDisplayID)
      def _cgdisplay_bounds(display, rect)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayBounds, JNI.env, self.jni_id, display.to_int, rect.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_class_1addIvar, [:pointer, :long, :int32, :long, :int32, :int8, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Byte, Array.typed(::Java::Byte)] }
      # Objective-C runtime
      # 
      # @param cls cast=(Class)
      # @param name cast=(const char *),flags=critical
      # @param types cast=(const char *),flags=critical
      # 
      # long
      # long
      def class_add_ivar(cls, name, size, alignment, types)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_class_1addIvar, JNI.env, self.jni_id, cls.to_int, name.jni_id, size.to_int, alignment.to_int, types.jni_id) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_class_1addMethod, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, String] }
      # @param cls cast=(Class)
      # @param name cast=(SEL)
      # @param imp cast=(IMP)
      # 
      # long
      # long
      # long
      def class_add_method(cls, name, imp, types)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_class_1addMethod, JNI.env, self.jni_id, cls.to_int, name.to_int, imp.to_int, types.jni_id) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_class_1addProtocol, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param cls cast=(Class)
      # @param protocol cast=(Protocol *)
      # 
      # long
      # long
      def class_add_protocol(cls, protocol)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_class_1addProtocol, JNI.env, self.jni_id, cls.to_int, protocol.to_int) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_class_1getClassMethod, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param method cast=(Method)
      # @param aClass cast=(Class)
      # @param aSelector cast=(SEL)
      # 
      # long
      # long
      # long
      def class_get_class_method(a_class, a_selector)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_class_1getClassMethod, JNI.env, self.jni_id, a_class.to_int, a_selector.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_class_1getMethodImplementation, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param cls cast=(Class)
      # @param name cast=(SEL)
      # 
      # long
      # long
      # long
      def class_get_method_implementation(cls, name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_class_1getMethodImplementation, JNI.env, self.jni_id, cls.to_int, name.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_class_1getInstanceMethod, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param cls cast=(Class)
      # @param name cast=(SEL)
      # 
      # long
      # long
      # long
      def class_get_instance_method(cls, name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_class_1getInstanceMethod, JNI.env, self.jni_id, cls.to_int, name.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_class_1getSuperclass, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param cls cast=(Class)
      # long
      # long
      def class_get_superclass(cls)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_class_1getSuperclass, JNI.env, self.jni_id, cls.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_method_1setImplementation, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param method cast=(Method)
      # @param imp cast=(IMP)
      # 
      # long
      # long
      # long
      def method_set_implementation(method, imp)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_method_1setImplementation, JNI.env, self.jni_id, method.to_int, imp.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_class_1createInstance, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param cls cast=(Class)
      # @param extraBytes cast=(size_t)
      # 
      # long
      # long
      # long
      def class_create_instance(cls, extra_bytes)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_class_1createInstance, JNI.env, self.jni_id, cls.to_int, extra_bytes.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_class_1getName, [:pointer, :long, :int32], :long
      typesig { [::Java::Int] }
      # @method flags=no_gen
      # long
      def class_get_name(cls)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_class_1getName, JNI.env, self.jni_id, cls.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_instrumentObjcMessageSends, [:pointer, :long, :int8], :void
      typesig { [::Java::Boolean] }
      # @method flags=dynamic
      def instrument_objc_message_sends(val)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_instrumentObjcMessageSends, JNI.env, self.jni_id, val ? 1 : 0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1allocateClassPair, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, String, ::Java::Int] }
      # @param superclass cast=(Class)
      # long
      # long
      # long
      def objc_allocate_class_pair(superclass, name, extra_bytes)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1allocateClassPair, JNI.env, self.jni_id, superclass.to_int, name.jni_id, extra_bytes.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1getClass, [:pointer, :long, :long], :int32
      typesig { [String] }
      # long
      def objc_get_class(class_name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1getClass, JNI.env, self.jni_id, class_name.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1getMetaClass, [:pointer, :long, :long], :int32
      typesig { [String] }
      # long
      def objc_get_meta_class(name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1getMetaClass, JNI.env, self.jni_id, name.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1getProtocol, [:pointer, :long, :long], :int32
      typesig { [String] }
      # long
      def objc_get_protocol(name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1getProtocol, JNI.env, self.jni_id, name.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1lookUpClass, [:pointer, :long, :long], :int32
      typesig { [String] }
      # long
      def objc_look_up_class(class_name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1lookUpClass, JNI.env, self.jni_id, class_name.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1registerClassPair, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param cls cast=(Class)
      # long
      def objc_register_class_pair(cls)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1registerClassPair, JNI.env, self.jni_id, cls.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_object_1getClassName, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param obj cast=(id)
      # long
      # long
      def object_get_class_name(obj)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_object_1getClassName, JNI.env, self.jni_id, obj.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_object_1getClass, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param obj cast=(id)
      # long
      # long
      def object_get_class(obj)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_object_1getClass, JNI.env, self.jni_id, obj.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_object_1getInstanceVariable, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # @param obj cast=(id)
      # @param name cast=(const char*),flags=critical
      # @param outValue cast=(void **),flags=critical
      # 
      # long
      # long
      # long
      def object_get_instance_variable(obj, name, out_value)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_object_1getInstanceVariable, JNI.env, self.jni_id, obj.to_int, name.jni_id, out_value.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_object_1setInstanceVariable, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param obj cast=(id)
      # @param name cast=(const char*),flags=critical
      # @param value cast=(void *),flags=critical
      # 
      # long
      # long
      # long
      def object_set_instance_variable(obj, name, value)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_object_1setInstanceVariable, JNI.env, self.jni_id, obj.to_int, name.jni_id, value.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_object_1setClass, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param obj cast=(id)
      # @param clazz cast=(Class)
      # 
      # long
      # long
      # long
      def object_set_class(obj, clazz)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_object_1setClass, JNI.env, self.jni_id, obj.to_int, clazz.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_sel_1registerName, [:pointer, :long, :long], :int32
      typesig { [String] }
      # long
      def sel_register_name(selector_name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_sel_1registerName, JNI.env, self.jni_id, selector_name.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1super_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def objc_super_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1super_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1accessibilityHitTest_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # This section is auto generated
      # Custom callbacks
      # @method callback_types=id;id;SEL;NSPoint;,callback_flags=none;none;none;struct;
      # long
      # long
      def _callback_accessibility_hit_test_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1accessibilityHitTest_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1attributedSubstringFromRange_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSAttributedString*;id;SEL;NSRange;,callback_flags=none;none;none;struct;
      # long
      # long
      def _callback_attributed_substring_from_range_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1attributedSubstringFromRange_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1canDragRowsWithIndexes_1atPoint_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=BOOL;id;SEL;NSIndexSet*;NSPoint;,callback_flags=none;none;none;none;struct;
      # long
      # long
      def _callback_can_drag_rows_with_indexes_at_point_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1canDragRowsWithIndexes_1atPoint_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1cellSize, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSSize;id;SEL;,callback_flags=struct;none;none;
      # long
      # long
      def _callback_cell_size(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1cellSize, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1characterIndexForPoint_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSUInteger;id;SEL;NSPoint;,callback_flags=none;none;none;struct;
      # long
      # long
      def _callback_character_index_for_point_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1characterIndexForPoint_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1dragSelectionWithEvent_1offset_1slideBack_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=BOOL;id;SEL;NSEvent*;NSSize;BOOL;,callback_flags=none;none;none;none;struct;none;
      # long
      # long
      def _callback_drag_selection_with_event_offset_slide_back_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1dragSelectionWithEvent_1offset_1slideBack_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1draggedImage_1beganAt_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;NSImage*;NSPoint;,callback_flags=none;none;none;none;struct;
      # long
      # long
      def _callback_dragged_image_began_at_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1draggedImage_1beganAt_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1draggedImage_1endedAt_1operation_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;NSImage*;NSPoint;NSDragOperation;,callback_flags=none;none;none;none;struct;none;
      # long
      # long
      def _callback_dragged_image_ended_at_operation_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1draggedImage_1endedAt_1operation_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1drawImage_1withFrame_1inView_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;NSImage*;NSRect;NSView*;,callback_flags=none;none;none;none;struct;none;
      # long
      # long
      def _callback_draw_image_with_frame_in_view_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1drawImage_1withFrame_1inView_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1drawInteriorWithFrame_1inView_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;NSRect;NSView*;,callback_flags=none;none;none;struct;none;
      # long
      # long
      def _callback_draw_interior_with_frame_in_view_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1drawInteriorWithFrame_1inView_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1drawRect_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;NSRect;,callback_flags=none;none;none;struct;
      # long
      # long
      def _callback_draw_rect_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1drawRect_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1drawWithExpansionFrame_1inView_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;NSRect;NSView*;,callback_flags=none;none;none;struct;none;
      # long
      # long
      def _callback_draw_with_expansion_frame_in_view_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1drawWithExpansionFrame_1inView_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1expansionFrameWithFrame_1inView_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSRect;id;SEL;NSRect;NSView*;,callback_flags=struct;none;none;struct;none;
      # long
      # long
      def _callback_expansion_frame_with_frame_in_view_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1expansionFrameWithFrame_1inView_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1firstRectForCharacterRange_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSRect;id;SEL;NSRange;,callback_flags=struct;none;none;struct;
      # long
      # long
      def _callback_first_rect_for_character_range_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1firstRectForCharacterRange_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1highlightSelectionInClipRect_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;NSRect;,callback_flags=none;none;none;struct;
      # long
      # long
      def _callback_highlight_selection_in_clip_rect_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1highlightSelectionInClipRect_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1hitTest_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSView*;id;SEL;NSPoint;,callback_flags=none;none;none;struct;
      # long
      # long
      def _callback_hit_test_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1hitTest_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1hitTestForEvent_1inRect_1ofView_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSUInteger;id;SEL;NSEvent*;NSRect;NSView*;,callback_flags=none;none;none;none;struct;none;
      # long
      # long
      def _callback_hit_test_for_event_in_rect_of_view_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1hitTestForEvent_1inRect_1ofView_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1imageRectForBounds_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSRect;id;SEL;NSRect;,callback_flags=struct;none;none;struct;
      # long
      # long
      def _callback_image_rect_for_bounds_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1imageRectForBounds_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1markedRange, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSRange;id;SEL;,callback_flags=struct;none;none;
      # long
      # long
      def _callback_marked_range(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1markedRange, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1selectedRange, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSRange;id;SEL;,callback_flags=struct;none;none;
      # long
      # long
      def _callback_selected_range(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1selectedRange, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1setFrame_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;NSRect;,callback_flags=none;none;none;struct;
      # long
      # long
      def _callback_set_frame_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1setFrame_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1setFrameOrigin_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;NSPoint;,callback_flags=none;none;none;struct;
      # long
      # long
      def _callback_set_frame_origin_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1setFrameOrigin_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1setFrameSize_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;NSSize;,callback_flags=none;none;none;struct;
      # long
      # long
      def _callback_set_frame_size_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1setFrameSize_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1setMarkedText_1selectedRange_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;id;NSRange;,callback_flags=none;none;none;none;struct;
      # long
      # long
      def _callback_set_marked_text_selected_range_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1setMarkedText_1selectedRange_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1setNeedsDisplayInRect_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;NSRect;,callback_flags=none;none;none;struct;
      # long
      # long
      def _callback_set_needs_display_in_rect_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1setNeedsDisplayInRect_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1shouldChangeTextInRange_1replacementString_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=BOOL;id;SEL;NSRange;NSString*;,callback_flags=none;none;none;struct;none;
      # long
      # long
      def _callback_should_change_text_in_range_replacement_string_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1shouldChangeTextInRange_1replacementString_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1textView_1willChangeSelectionFromCharacterRange_1toCharacterRange_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSRange;id;SEL;NSTextView*;NSRange;NSRange;,callback_flags=struct;none;none;none;struct;struct;
      # long
      # long
      def _callback_text_view_will_change_selection_from_character_range_to_character_range_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1textView_1willChangeSelectionFromCharacterRange_1toCharacterRange_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1titleRectForBounds_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSRect;id;SEL;NSRect;,callback_flags=struct;none;none;struct;
      # long
      # long
      def _callback_title_rect_for_bounds_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1titleRectForBounds_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1view_1stringForToolTip_1point_1userData_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=NSString*;id;SEL;NSView*;NSToolTipTag;NSPoint;void*;,callback_flags=none;none;none;none;none;struct;none;
      # long
      # long
      def _callback_view_string_for_tool_tip_point_user_data_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1view_1stringForToolTip_1point_1userData_1, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1webView_1setFrame_1, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method callback_types=void;id;SEL;WebView*;NSRect;,callback_flags=none;none;none;none;struct;
      # long
      # long
      def _callback_web_view_set_frame_(func)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CALLBACK_1webView_1setFrame_1, JNI.env, self.jni_id, func.to_int)
      end
      
      # Classes
      # long
      const_set_lazy(:Class_DOMDocument) { objc_get_class("DOMDocument") }
      const_attr_reader  :Class_DOMDocument
      
      # long
      const_set_lazy(:Class_DOMEvent) { objc_get_class("DOMEvent") }
      const_attr_reader  :Class_DOMEvent
      
      # long
      const_set_lazy(:Class_DOMKeyboardEvent) { objc_get_class("DOMKeyboardEvent") }
      const_attr_reader  :Class_DOMKeyboardEvent
      
      # long
      const_set_lazy(:Class_DOMMouseEvent) { objc_get_class("DOMMouseEvent") }
      const_attr_reader  :Class_DOMMouseEvent
      
      # long
      const_set_lazy(:Class_DOMUIEvent) { objc_get_class("DOMUIEvent") }
      const_attr_reader  :Class_DOMUIEvent
      
      # long
      const_set_lazy(:Class_DOMWheelEvent) { objc_get_class("DOMWheelEvent") }
      const_attr_reader  :Class_DOMWheelEvent
      
      # long
      const_set_lazy(:Class_NSActionCell) { objc_get_class("NSActionCell") }
      const_attr_reader  :Class_NSActionCell
      
      # long
      const_set_lazy(:Class_NSAffineTransform) { objc_get_class("NSAffineTransform") }
      const_attr_reader  :Class_NSAffineTransform
      
      # long
      const_set_lazy(:Class_NSAlert) { objc_get_class("NSAlert") }
      const_attr_reader  :Class_NSAlert
      
      # long
      const_set_lazy(:Class_NSAppleEventDescriptor) { objc_get_class("NSAppleEventDescriptor") }
      const_attr_reader  :Class_NSAppleEventDescriptor
      
      # long
      const_set_lazy(:Class_NSApplication) { objc_get_class("NSApplication") }
      const_attr_reader  :Class_NSApplication
      
      # long
      const_set_lazy(:Class_NSArray) { objc_get_class("NSArray") }
      const_attr_reader  :Class_NSArray
      
      # long
      const_set_lazy(:Class_NSAttributedString) { objc_get_class("NSAttributedString") }
      const_attr_reader  :Class_NSAttributedString
      
      # long
      const_set_lazy(:Class_NSAutoreleasePool) { objc_get_class("NSAutoreleasePool") }
      const_attr_reader  :Class_NSAutoreleasePool
      
      # long
      const_set_lazy(:Class_NSBezierPath) { objc_get_class("NSBezierPath") }
      const_attr_reader  :Class_NSBezierPath
      
      # long
      const_set_lazy(:Class_NSBitmapImageRep) { objc_get_class("NSBitmapImageRep") }
      const_attr_reader  :Class_NSBitmapImageRep
      
      # long
      const_set_lazy(:Class_NSBox) { objc_get_class("NSBox") }
      const_attr_reader  :Class_NSBox
      
      # long
      const_set_lazy(:Class_NSBrowserCell) { objc_get_class("NSBrowserCell") }
      const_attr_reader  :Class_NSBrowserCell
      
      # long
      const_set_lazy(:Class_NSBundle) { objc_get_class("NSBundle") }
      const_attr_reader  :Class_NSBundle
      
      # long
      const_set_lazy(:Class_NSButton) { objc_get_class("NSButton") }
      const_attr_reader  :Class_NSButton
      
      # long
      const_set_lazy(:Class_NSButtonCell) { objc_get_class("NSButtonCell") }
      const_attr_reader  :Class_NSButtonCell
      
      # long
      const_set_lazy(:Class_NSCalendarDate) { objc_get_class("NSCalendarDate") }
      const_attr_reader  :Class_NSCalendarDate
      
      # long
      const_set_lazy(:Class_NSCell) { objc_get_class("NSCell") }
      const_attr_reader  :Class_NSCell
      
      # long
      const_set_lazy(:Class_NSCharacterSet) { objc_get_class("NSCharacterSet") }
      const_attr_reader  :Class_NSCharacterSet
      
      # long
      const_set_lazy(:Class_NSClipView) { objc_get_class("NSClipView") }
      const_attr_reader  :Class_NSClipView
      
      # long
      const_set_lazy(:Class_NSCoder) { objc_get_class("NSCoder") }
      const_attr_reader  :Class_NSCoder
      
      # long
      const_set_lazy(:Class_NSColor) { objc_get_class("NSColor") }
      const_attr_reader  :Class_NSColor
      
      # long
      const_set_lazy(:Class_NSColorPanel) { objc_get_class("NSColorPanel") }
      const_attr_reader  :Class_NSColorPanel
      
      # long
      const_set_lazy(:Class_NSColorSpace) { objc_get_class("NSColorSpace") }
      const_attr_reader  :Class_NSColorSpace
      
      # long
      const_set_lazy(:Class_NSComboBox) { objc_get_class("NSComboBox") }
      const_attr_reader  :Class_NSComboBox
      
      # long
      const_set_lazy(:Class_NSComboBoxCell) { objc_get_class("NSComboBoxCell") }
      const_attr_reader  :Class_NSComboBoxCell
      
      # long
      const_set_lazy(:Class_NSControl) { objc_get_class("NSControl") }
      const_attr_reader  :Class_NSControl
      
      # long
      const_set_lazy(:Class_NSCursor) { objc_get_class("NSCursor") }
      const_attr_reader  :Class_NSCursor
      
      # long
      const_set_lazy(:Class_NSData) { objc_get_class("NSData") }
      const_attr_reader  :Class_NSData
      
      # long
      const_set_lazy(:Class_NSDate) { objc_get_class("NSDate") }
      const_attr_reader  :Class_NSDate
      
      # long
      const_set_lazy(:Class_NSDatePicker) { objc_get_class("NSDatePicker") }
      const_attr_reader  :Class_NSDatePicker
      
      # long
      const_set_lazy(:Class_NSDictionary) { objc_get_class("NSDictionary") }
      const_attr_reader  :Class_NSDictionary
      
      # long
      const_set_lazy(:Class_NSDirectoryEnumerator) { objc_get_class("NSDirectoryEnumerator") }
      const_attr_reader  :Class_NSDirectoryEnumerator
      
      # long
      const_set_lazy(:Class_NSEnumerator) { objc_get_class("NSEnumerator") }
      const_attr_reader  :Class_NSEnumerator
      
      # long
      const_set_lazy(:Class_NSError) { objc_get_class("NSError") }
      const_attr_reader  :Class_NSError
      
      # long
      const_set_lazy(:Class_NSEvent) { objc_get_class("NSEvent") }
      const_attr_reader  :Class_NSEvent
      
      # long
      const_set_lazy(:Class_NSFileManager) { objc_get_class("NSFileManager") }
      const_attr_reader  :Class_NSFileManager
      
      # long
      const_set_lazy(:Class_NSFileWrapper) { objc_get_class("NSFileWrapper") }
      const_attr_reader  :Class_NSFileWrapper
      
      # long
      const_set_lazy(:Class_NSFont) { objc_get_class("NSFont") }
      const_attr_reader  :Class_NSFont
      
      # long
      const_set_lazy(:Class_NSFontManager) { objc_get_class("NSFontManager") }
      const_attr_reader  :Class_NSFontManager
      
      # long
      const_set_lazy(:Class_NSFontPanel) { objc_get_class("NSFontPanel") }
      const_attr_reader  :Class_NSFontPanel
      
      # long
      const_set_lazy(:Class_NSFormatter) { objc_get_class("NSFormatter") }
      const_attr_reader  :Class_NSFormatter
      
      # long
      const_set_lazy(:Class_NSGradient) { objc_get_class("NSGradient") }
      const_attr_reader  :Class_NSGradient
      
      # long
      const_set_lazy(:Class_NSGraphicsContext) { objc_get_class("NSGraphicsContext") }
      const_attr_reader  :Class_NSGraphicsContext
      
      # long
      const_set_lazy(:Class_NSHTTPCookie) { objc_get_class("NSHTTPCookie") }
      const_attr_reader  :Class_NSHTTPCookie
      
      # long
      const_set_lazy(:Class_NSHTTPCookieStorage) { objc_get_class("NSHTTPCookieStorage") }
      const_attr_reader  :Class_NSHTTPCookieStorage
      
      # long
      const_set_lazy(:Class_NSImage) { objc_get_class("NSImage") }
      const_attr_reader  :Class_NSImage
      
      # long
      const_set_lazy(:Class_NSImageRep) { objc_get_class("NSImageRep") }
      const_attr_reader  :Class_NSImageRep
      
      # long
      const_set_lazy(:Class_NSImageView) { objc_get_class("NSImageView") }
      const_attr_reader  :Class_NSImageView
      
      # long
      const_set_lazy(:Class_NSIndexSet) { objc_get_class("NSIndexSet") }
      const_attr_reader  :Class_NSIndexSet
      
      # long
      const_set_lazy(:Class_NSInputManager) { objc_get_class("NSInputManager") }
      const_attr_reader  :Class_NSInputManager
      
      # long
      const_set_lazy(:Class_NSKeyedArchiver) { objc_get_class("NSKeyedArchiver") }
      const_attr_reader  :Class_NSKeyedArchiver
      
      # long
      const_set_lazy(:Class_NSKeyedUnarchiver) { objc_get_class("NSKeyedUnarchiver") }
      const_attr_reader  :Class_NSKeyedUnarchiver
      
      # long
      const_set_lazy(:Class_NSLayoutManager) { objc_get_class("NSLayoutManager") }
      const_attr_reader  :Class_NSLayoutManager
      
      # long
      const_set_lazy(:Class_NSMenu) { objc_get_class("NSMenu") }
      const_attr_reader  :Class_NSMenu
      
      # long
      const_set_lazy(:Class_NSMenuItem) { objc_get_class("NSMenuItem") }
      const_attr_reader  :Class_NSMenuItem
      
      # long
      const_set_lazy(:Class_NSMutableArray) { objc_get_class("NSMutableArray") }
      const_attr_reader  :Class_NSMutableArray
      
      # long
      const_set_lazy(:Class_NSMutableAttributedString) { objc_get_class("NSMutableAttributedString") }
      const_attr_reader  :Class_NSMutableAttributedString
      
      # long
      const_set_lazy(:Class_NSMutableDictionary) { objc_get_class("NSMutableDictionary") }
      const_attr_reader  :Class_NSMutableDictionary
      
      # long
      const_set_lazy(:Class_NSMutableIndexSet) { objc_get_class("NSMutableIndexSet") }
      const_attr_reader  :Class_NSMutableIndexSet
      
      # long
      const_set_lazy(:Class_NSMutableParagraphStyle) { objc_get_class("NSMutableParagraphStyle") }
      const_attr_reader  :Class_NSMutableParagraphStyle
      
      # long
      const_set_lazy(:Class_NSMutableSet) { objc_get_class("NSMutableSet") }
      const_attr_reader  :Class_NSMutableSet
      
      # long
      const_set_lazy(:Class_NSMutableString) { objc_get_class("NSMutableString") }
      const_attr_reader  :Class_NSMutableString
      
      # long
      const_set_lazy(:Class_NSMutableURLRequest) { objc_get_class("NSMutableURLRequest") }
      const_attr_reader  :Class_NSMutableURLRequest
      
      # long
      const_set_lazy(:Class_NSNotification) { objc_get_class("NSNotification") }
      const_attr_reader  :Class_NSNotification
      
      # long
      const_set_lazy(:Class_NSNotificationCenter) { objc_get_class("NSNotificationCenter") }
      const_attr_reader  :Class_NSNotificationCenter
      
      # long
      const_set_lazy(:Class_NSNumber) { objc_get_class("NSNumber") }
      const_attr_reader  :Class_NSNumber
      
      # long
      const_set_lazy(:Class_NSNumberFormatter) { objc_get_class("NSNumberFormatter") }
      const_attr_reader  :Class_NSNumberFormatter
      
      # long
      const_set_lazy(:Class_NSObject) { objc_get_class("NSObject") }
      const_attr_reader  :Class_NSObject
      
      # long
      const_set_lazy(:Class_NSOpenGLContext) { objc_get_class("NSOpenGLContext") }
      const_attr_reader  :Class_NSOpenGLContext
      
      # long
      const_set_lazy(:Class_NSOpenGLPixelFormat) { objc_get_class("NSOpenGLPixelFormat") }
      const_attr_reader  :Class_NSOpenGLPixelFormat
      
      # long
      const_set_lazy(:Class_NSOpenPanel) { objc_get_class("NSOpenPanel") }
      const_attr_reader  :Class_NSOpenPanel
      
      # long
      const_set_lazy(:Class_NSOutlineView) { objc_get_class("NSOutlineView") }
      const_attr_reader  :Class_NSOutlineView
      
      # long
      const_set_lazy(:Class_NSPanel) { objc_get_class("NSPanel") }
      const_attr_reader  :Class_NSPanel
      
      # long
      const_set_lazy(:Class_NSParagraphStyle) { objc_get_class("NSParagraphStyle") }
      const_attr_reader  :Class_NSParagraphStyle
      
      # long
      const_set_lazy(:Class_NSPasteboard) { objc_get_class("NSPasteboard") }
      const_attr_reader  :Class_NSPasteboard
      
      # long
      const_set_lazy(:Class_NSPopUpButton) { objc_get_class("NSPopUpButton") }
      const_attr_reader  :Class_NSPopUpButton
      
      # long
      const_set_lazy(:Class_NSPrintInfo) { objc_get_class("NSPrintInfo") }
      const_attr_reader  :Class_NSPrintInfo
      
      # long
      const_set_lazy(:Class_NSPrintOperation) { objc_get_class("NSPrintOperation") }
      const_attr_reader  :Class_NSPrintOperation
      
      # long
      const_set_lazy(:Class_NSPrintPanel) { objc_get_class("NSPrintPanel") }
      const_attr_reader  :Class_NSPrintPanel
      
      # long
      const_set_lazy(:Class_NSPrinter) { objc_get_class("NSPrinter") }
      const_attr_reader  :Class_NSPrinter
      
      # long
      const_set_lazy(:Class_NSProgressIndicator) { objc_get_class("NSProgressIndicator") }
      const_attr_reader  :Class_NSProgressIndicator
      
      # long
      const_set_lazy(:Class_NSResponder) { objc_get_class("NSResponder") }
      const_attr_reader  :Class_NSResponder
      
      # long
      const_set_lazy(:Class_NSRunLoop) { objc_get_class("NSRunLoop") }
      const_attr_reader  :Class_NSRunLoop
      
      # long
      const_set_lazy(:Class_NSSavePanel) { objc_get_class("NSSavePanel") }
      const_attr_reader  :Class_NSSavePanel
      
      # long
      const_set_lazy(:Class_NSScreen) { objc_get_class("NSScreen") }
      const_attr_reader  :Class_NSScreen
      
      # long
      const_set_lazy(:Class_NSScrollView) { objc_get_class("NSScrollView") }
      const_attr_reader  :Class_NSScrollView
      
      # long
      const_set_lazy(:Class_NSScroller) { objc_get_class("NSScroller") }
      const_attr_reader  :Class_NSScroller
      
      # long
      const_set_lazy(:Class_NSSearchField) { objc_get_class("NSSearchField") }
      const_attr_reader  :Class_NSSearchField
      
      # long
      const_set_lazy(:Class_NSSearchFieldCell) { objc_get_class("NSSearchFieldCell") }
      const_attr_reader  :Class_NSSearchFieldCell
      
      # long
      const_set_lazy(:Class_NSSecureTextField) { objc_get_class("NSSecureTextField") }
      const_attr_reader  :Class_NSSecureTextField
      
      # long
      const_set_lazy(:Class_NSSegmentedCell) { objc_get_class("NSSegmentedCell") }
      const_attr_reader  :Class_NSSegmentedCell
      
      # long
      const_set_lazy(:Class_NSSet) { objc_get_class("NSSet") }
      const_attr_reader  :Class_NSSet
      
      # long
      const_set_lazy(:Class_NSSlider) { objc_get_class("NSSlider") }
      const_attr_reader  :Class_NSSlider
      
      # long
      const_set_lazy(:Class_NSStatusBar) { objc_get_class("NSStatusBar") }
      const_attr_reader  :Class_NSStatusBar
      
      # long
      const_set_lazy(:Class_NSStatusItem) { objc_get_class("NSStatusItem") }
      const_attr_reader  :Class_NSStatusItem
      
      # long
      const_set_lazy(:Class_NSStepper) { objc_get_class("NSStepper") }
      const_attr_reader  :Class_NSStepper
      
      # long
      const_set_lazy(:Class_NSString) { objc_get_class("NSString") }
      const_attr_reader  :Class_NSString
      
      # long
      const_set_lazy(:Class_NSTabView) { objc_get_class("NSTabView") }
      const_attr_reader  :Class_NSTabView
      
      # long
      const_set_lazy(:Class_NSTabViewItem) { objc_get_class("NSTabViewItem") }
      const_attr_reader  :Class_NSTabViewItem
      
      # long
      const_set_lazy(:Class_NSTableColumn) { objc_get_class("NSTableColumn") }
      const_attr_reader  :Class_NSTableColumn
      
      # long
      const_set_lazy(:Class_NSTableHeaderCell) { objc_get_class("NSTableHeaderCell") }
      const_attr_reader  :Class_NSTableHeaderCell
      
      # long
      const_set_lazy(:Class_NSTableHeaderView) { objc_get_class("NSTableHeaderView") }
      const_attr_reader  :Class_NSTableHeaderView
      
      # long
      const_set_lazy(:Class_NSTableView) { objc_get_class("NSTableView") }
      const_attr_reader  :Class_NSTableView
      
      # long
      const_set_lazy(:Class_NSText) { objc_get_class("NSText") }
      const_attr_reader  :Class_NSText
      
      # long
      const_set_lazy(:Class_NSTextAttachment) { objc_get_class("NSTextAttachment") }
      const_attr_reader  :Class_NSTextAttachment
      
      # long
      const_set_lazy(:Class_NSTextContainer) { objc_get_class("NSTextContainer") }
      const_attr_reader  :Class_NSTextContainer
      
      # long
      const_set_lazy(:Class_NSTextField) { objc_get_class("NSTextField") }
      const_attr_reader  :Class_NSTextField
      
      # long
      const_set_lazy(:Class_NSTextFieldCell) { objc_get_class("NSTextFieldCell") }
      const_attr_reader  :Class_NSTextFieldCell
      
      # long
      const_set_lazy(:Class_NSTextStorage) { objc_get_class("NSTextStorage") }
      const_attr_reader  :Class_NSTextStorage
      
      # long
      const_set_lazy(:Class_NSTextTab) { objc_get_class("NSTextTab") }
      const_attr_reader  :Class_NSTextTab
      
      # long
      const_set_lazy(:Class_NSTextView) { objc_get_class("NSTextView") }
      const_attr_reader  :Class_NSTextView
      
      # long
      const_set_lazy(:Class_NSThread) { objc_get_class("NSThread") }
      const_attr_reader  :Class_NSThread
      
      # long
      const_set_lazy(:Class_NSTimeZone) { objc_get_class("NSTimeZone") }
      const_attr_reader  :Class_NSTimeZone
      
      # long
      const_set_lazy(:Class_NSTimer) { objc_get_class("NSTimer") }
      const_attr_reader  :Class_NSTimer
      
      # long
      const_set_lazy(:Class_NSToolbar) { objc_get_class("NSToolbar") }
      const_attr_reader  :Class_NSToolbar
      
      # long
      const_set_lazy(:Class_NSToolbarItem) { objc_get_class("NSToolbarItem") }
      const_attr_reader  :Class_NSToolbarItem
      
      # long
      const_set_lazy(:Class_NSTrackingArea) { objc_get_class("NSTrackingArea") }
      const_attr_reader  :Class_NSTrackingArea
      
      # long
      const_set_lazy(:Class_NSTypesetter) { objc_get_class("NSTypesetter") }
      const_attr_reader  :Class_NSTypesetter
      
      # long
      const_set_lazy(:Class_NSURL) { objc_get_class("NSURL") }
      const_attr_reader  :Class_NSURL
      
      # long
      const_set_lazy(:Class_NSURLAuthenticationChallenge) { objc_get_class("NSURLAuthenticationChallenge") }
      const_attr_reader  :Class_NSURLAuthenticationChallenge
      
      # long
      const_set_lazy(:Class_NSURLCredential) { objc_get_class("NSURLCredential") }
      const_attr_reader  :Class_NSURLCredential
      
      # long
      const_set_lazy(:Class_NSURLDownload) { objc_get_class("NSURLDownload") }
      const_attr_reader  :Class_NSURLDownload
      
      # long
      const_set_lazy(:Class_NSURLProtectionSpace) { objc_get_class("NSURLProtectionSpace") }
      const_attr_reader  :Class_NSURLProtectionSpace
      
      # long
      const_set_lazy(:Class_NSURLRequest) { objc_get_class("NSURLRequest") }
      const_attr_reader  :Class_NSURLRequest
      
      # long
      const_set_lazy(:Class_NSValue) { objc_get_class("NSValue") }
      const_attr_reader  :Class_NSValue
      
      # long
      const_set_lazy(:Class_NSView) { objc_get_class("NSView") }
      const_attr_reader  :Class_NSView
      
      # long
      const_set_lazy(:Class_NSWindow) { objc_get_class("NSWindow") }
      const_attr_reader  :Class_NSWindow
      
      # long
      const_set_lazy(:Class_NSWorkspace) { objc_get_class("NSWorkspace") }
      const_attr_reader  :Class_NSWorkspace
      
      # long
      const_set_lazy(:Class_WebDataSource) { objc_get_class("WebDataSource") }
      const_attr_reader  :Class_WebDataSource
      
      # long
      const_set_lazy(:Class_WebFrame) { objc_get_class("WebFrame") }
      const_attr_reader  :Class_WebFrame
      
      # long
      const_set_lazy(:Class_WebFrameView) { objc_get_class("WebFrameView") }
      const_attr_reader  :Class_WebFrameView
      
      # long
      const_set_lazy(:Class_WebPreferences) { objc_get_class("WebPreferences") }
      const_attr_reader  :Class_WebPreferences
      
      # long
      const_set_lazy(:Class_WebScriptObject) { objc_get_class("WebScriptObject") }
      const_attr_reader  :Class_WebScriptObject
      
      # long
      const_set_lazy(:Class_WebUndefined) { objc_get_class("WebUndefined") }
      const_attr_reader  :Class_WebUndefined
      
      # long
      const_set_lazy(:Class_WebView) { objc_get_class("WebView") }
      const_attr_reader  :Class_WebView
      
      # Protocols
      # long
      const_set_lazy(:Protocol_NSAccessibility) { objc_get_protocol("NSAccessibility") }
      const_attr_reader  :Protocol_NSAccessibility
      
      # long
      const_set_lazy(:Protocol_NSAccessibilityAdditions) { objc_get_protocol("NSAccessibilityAdditions") }
      const_attr_reader  :Protocol_NSAccessibilityAdditions
      
      # long
      const_set_lazy(:Protocol_NSApplicationDelegate) { objc_get_protocol("NSApplicationDelegate") }
      const_attr_reader  :Protocol_NSApplicationDelegate
      
      # long
      const_set_lazy(:Protocol_NSApplicationNotifications) { objc_get_protocol("NSApplicationNotifications") }
      const_attr_reader  :Protocol_NSApplicationNotifications
      
      # long
      const_set_lazy(:Protocol_NSColorPanelResponderMethod) { objc_get_protocol("NSColorPanelResponderMethod") }
      const_attr_reader  :Protocol_NSColorPanelResponderMethod
      
      # long
      const_set_lazy(:Protocol_NSComboBoxNotifications) { objc_get_protocol("NSComboBoxNotifications") }
      const_attr_reader  :Protocol_NSComboBoxNotifications
      
      # long
      const_set_lazy(:Protocol_NSDraggingDestination) { objc_get_protocol("NSDraggingDestination") }
      const_attr_reader  :Protocol_NSDraggingDestination
      
      # long
      const_set_lazy(:Protocol_NSDraggingSource) { objc_get_protocol("NSDraggingSource") }
      const_attr_reader  :Protocol_NSDraggingSource
      
      # long
      const_set_lazy(:Protocol_NSFontManagerResponderMethod) { objc_get_protocol("NSFontManagerResponderMethod") }
      const_attr_reader  :Protocol_NSFontManagerResponderMethod
      
      # long
      const_set_lazy(:Protocol_NSMenuDelegate) { objc_get_protocol("NSMenuDelegate") }
      const_attr_reader  :Protocol_NSMenuDelegate
      
      # long
      const_set_lazy(:Protocol_NSOutlineViewDataSource) { objc_get_protocol("NSOutlineViewDataSource") }
      const_attr_reader  :Protocol_NSOutlineViewDataSource
      
      # long
      const_set_lazy(:Protocol_NSOutlineViewDelegate) { objc_get_protocol("NSOutlineViewDelegate") }
      const_attr_reader  :Protocol_NSOutlineViewDelegate
      
      # long
      const_set_lazy(:Protocol_NSOutlineViewNotifications) { objc_get_protocol("NSOutlineViewNotifications") }
      const_attr_reader  :Protocol_NSOutlineViewNotifications
      
      # long
      const_set_lazy(:Protocol_NSPasteboardOwner) { objc_get_protocol("NSPasteboardOwner") }
      const_attr_reader  :Protocol_NSPasteboardOwner
      
      # long
      const_set_lazy(:Protocol_NSSavePanelDelegate) { objc_get_protocol("NSSavePanelDelegate") }
      const_attr_reader  :Protocol_NSSavePanelDelegate
      
      # long
      const_set_lazy(:Protocol_NSTabViewDelegate) { objc_get_protocol("NSTabViewDelegate") }
      const_attr_reader  :Protocol_NSTabViewDelegate
      
      # long
      const_set_lazy(:Protocol_NSTableDataSource) { objc_get_protocol("NSTableDataSource") }
      const_attr_reader  :Protocol_NSTableDataSource
      
      # long
      const_set_lazy(:Protocol_NSTableViewDelegate) { objc_get_protocol("NSTableViewDelegate") }
      const_attr_reader  :Protocol_NSTableViewDelegate
      
      # long
      const_set_lazy(:Protocol_NSTableViewNotifications) { objc_get_protocol("NSTableViewNotifications") }
      const_attr_reader  :Protocol_NSTableViewNotifications
      
      # long
      const_set_lazy(:Protocol_NSTextDelegate) { objc_get_protocol("NSTextDelegate") }
      const_attr_reader  :Protocol_NSTextDelegate
      
      # long
      const_set_lazy(:Protocol_NSTextInput) { objc_get_protocol("NSTextInput") }
      const_attr_reader  :Protocol_NSTextInput
      
      # long
      const_set_lazy(:Protocol_NSTextViewDelegate) { objc_get_protocol("NSTextViewDelegate") }
      const_attr_reader  :Protocol_NSTextViewDelegate
      
      # long
      const_set_lazy(:Protocol_NSToolTipOwner) { objc_get_protocol("NSToolTipOwner") }
      const_attr_reader  :Protocol_NSToolTipOwner
      
      # long
      const_set_lazy(:Protocol_NSToolbarDelegate) { objc_get_protocol("NSToolbarDelegate") }
      const_attr_reader  :Protocol_NSToolbarDelegate
      
      # long
      const_set_lazy(:Protocol_NSToolbarNotifications) { objc_get_protocol("NSToolbarNotifications") }
      const_attr_reader  :Protocol_NSToolbarNotifications
      
      # long
      const_set_lazy(:Protocol_NSURLDownloadDelegate) { objc_get_protocol("NSURLDownloadDelegate") }
      const_attr_reader  :Protocol_NSURLDownloadDelegate
      
      # long
      const_set_lazy(:Protocol_NSWindowDelegate) { objc_get_protocol("NSWindowDelegate") }
      const_attr_reader  :Protocol_NSWindowDelegate
      
      # long
      const_set_lazy(:Protocol_NSWindowNotifications) { objc_get_protocol("NSWindowNotifications") }
      const_attr_reader  :Protocol_NSWindowNotifications
      
      # long
      const_set_lazy(:Protocol_WebDocumentRepresentation) { objc_get_protocol("WebDocumentRepresentation") }
      const_attr_reader  :Protocol_WebDocumentRepresentation
      
      # long
      const_set_lazy(:Protocol_WebFrameLoadDelegate) { objc_get_protocol("WebFrameLoadDelegate") }
      const_attr_reader  :Protocol_WebFrameLoadDelegate
      
      # long
      const_set_lazy(:Protocol_WebOpenPanelResultListener) { objc_get_protocol("WebOpenPanelResultListener") }
      const_attr_reader  :Protocol_WebOpenPanelResultListener
      
      # long
      const_set_lazy(:Protocol_WebPolicyDecisionListener) { objc_get_protocol("WebPolicyDecisionListener") }
      const_attr_reader  :Protocol_WebPolicyDecisionListener
      
      # long
      const_set_lazy(:Protocol_WebPolicyDelegate) { objc_get_protocol("WebPolicyDelegate") }
      const_attr_reader  :Protocol_WebPolicyDelegate
      
      # long
      const_set_lazy(:Protocol_WebResourceLoadDelegate) { objc_get_protocol("WebResourceLoadDelegate") }
      const_attr_reader  :Protocol_WebResourceLoadDelegate
      
      # long
      const_set_lazy(:Protocol_WebUIDelegate) { objc_get_protocol("WebUIDelegate") }
      const_attr_reader  :Protocol_WebUIDelegate
      
      # Selectors
      # long
      const_set_lazy(:Sel_CGEvent) { sel_register_name("CGEvent") }
      const_attr_reader  :Sel_CGEvent
      
      # long
      const_set_lazy(:Sel_DOMDocument) { sel_register_name("DOMDocument") }
      const_attr_reader  :Sel_DOMDocument
      
      # long
      const_set_lazy(:Sel_IBeamCursor) { sel_register_name("IBeamCursor") }
      const_attr_reader  :Sel_IBeamCursor
      
      # long
      const_set_lazy(:Sel_TIFFRepresentation) { sel_register_name("TIFFRepresentation") }
      const_attr_reader  :Sel_TIFFRepresentation
      
      # long
      const_set_lazy(:Sel_URL) { sel_register_name("URL") }
      const_attr_reader  :Sel_URL
      
      # long
      const_set_lazy(:Sel_URLFromPasteboard_) { sel_register_name("URLFromPasteboard:") }
      const_attr_reader  :Sel_URLFromPasteboard_
      
      # long
      const_set_lazy(:Sel_URLWithString_) { sel_register_name("URLWithString:") }
      const_attr_reader  :Sel_URLWithString_
      
      # long
      const_set_lazy(:Sel_UTF8String) { sel_register_name("UTF8String") }
      const_attr_reader  :Sel_UTF8String
      
      # long
      const_set_lazy(:Sel_abortEditing) { sel_register_name("abortEditing") }
      const_attr_reader  :Sel_abortEditing
      
      # long
      const_set_lazy(:Sel_absoluteString) { sel_register_name("absoluteString") }
      const_attr_reader  :Sel_absoluteString
      
      # long
      const_set_lazy(:Sel_acceptsFirstMouse_) { sel_register_name("acceptsFirstMouse:") }
      const_attr_reader  :Sel_acceptsFirstMouse_
      
      # long
      const_set_lazy(:Sel_acceptsFirstResponder) { sel_register_name("acceptsFirstResponder") }
      const_attr_reader  :Sel_acceptsFirstResponder
      
      # long
      const_set_lazy(:Sel_accessibilityActionDescription_) { sel_register_name("accessibilityActionDescription:") }
      const_attr_reader  :Sel_accessibilityActionDescription_
      
      # long
      const_set_lazy(:Sel_accessibilityActionNames) { sel_register_name("accessibilityActionNames") }
      const_attr_reader  :Sel_accessibilityActionNames
      
      # long
      const_set_lazy(:Sel_accessibilityAttributeNames) { sel_register_name("accessibilityAttributeNames") }
      const_attr_reader  :Sel_accessibilityAttributeNames
      
      # long
      const_set_lazy(:Sel_accessibilityAttributeValue_) { sel_register_name("accessibilityAttributeValue:") }
      const_attr_reader  :Sel_accessibilityAttributeValue_
      
      # long
      const_set_lazy(:Sel_accessibilityAttributeValue_forParameter_) { sel_register_name("accessibilityAttributeValue:forParameter:") }
      const_attr_reader  :Sel_accessibilityAttributeValue_forParameter_
      
      # long
      const_set_lazy(:Sel_accessibilityFocusedUIElement) { sel_register_name("accessibilityFocusedUIElement") }
      const_attr_reader  :Sel_accessibilityFocusedUIElement
      
      # long
      const_set_lazy(:Sel_accessibilityHitTest_) { sel_register_name("accessibilityHitTest:") }
      const_attr_reader  :Sel_accessibilityHitTest_
      
      # long
      const_set_lazy(:Sel_accessibilityIsAttributeSettable_) { sel_register_name("accessibilityIsAttributeSettable:") }
      const_attr_reader  :Sel_accessibilityIsAttributeSettable_
      
      # long
      const_set_lazy(:Sel_accessibilityIsIgnored) { sel_register_name("accessibilityIsIgnored") }
      const_attr_reader  :Sel_accessibilityIsIgnored
      
      # long
      const_set_lazy(:Sel_accessibilityParameterizedAttributeNames) { sel_register_name("accessibilityParameterizedAttributeNames") }
      const_attr_reader  :Sel_accessibilityParameterizedAttributeNames
      
      # long
      const_set_lazy(:Sel_accessibilityPerformAction_) { sel_register_name("accessibilityPerformAction:") }
      const_attr_reader  :Sel_accessibilityPerformAction_
      
      # long
      const_set_lazy(:Sel_accessibilitySetOverrideValue_forAttribute_) { sel_register_name("accessibilitySetOverrideValue:forAttribute:") }
      const_attr_reader  :Sel_accessibilitySetOverrideValue_forAttribute_
      
      # long
      const_set_lazy(:Sel_accessibilitySetValue_forAttribute_) { sel_register_name("accessibilitySetValue:forAttribute:") }
      const_attr_reader  :Sel_accessibilitySetValue_forAttribute_
      
      # long
      const_set_lazy(:Sel_action) { sel_register_name("action") }
      const_attr_reader  :Sel_action
      
      # long
      const_set_lazy(:Sel_activateIgnoringOtherApps_) { sel_register_name("activateIgnoringOtherApps:") }
      const_attr_reader  :Sel_activateIgnoringOtherApps_
      
      # long
      const_set_lazy(:Sel_addAttribute_value_range_) { sel_register_name("addAttribute:value:range:") }
      const_attr_reader  :Sel_addAttribute_value_range_
      
      # long
      const_set_lazy(:Sel_addButtonWithTitle_) { sel_register_name("addButtonWithTitle:") }
      const_attr_reader  :Sel_addButtonWithTitle_
      
      # long
      const_set_lazy(:Sel_addChildWindow_ordered_) { sel_register_name("addChildWindow:ordered:") }
      const_attr_reader  :Sel_addChildWindow_ordered_
      
      # long
      const_set_lazy(:Sel_addClip) { sel_register_name("addClip") }
      const_attr_reader  :Sel_addClip
      
      # long
      const_set_lazy(:Sel_addEventListener_listener_useCapture_) { sel_register_name("addEventListener:listener:useCapture:") }
      const_attr_reader  :Sel_addEventListener_listener_useCapture_
      
      # long
      const_set_lazy(:Sel_addIndex_) { sel_register_name("addIndex:") }
      const_attr_reader  :Sel_addIndex_
      
      # long
      const_set_lazy(:Sel_addItem_) { sel_register_name("addItem:") }
      const_attr_reader  :Sel_addItem_
      
      # long
      const_set_lazy(:Sel_addItemWithObjectValue_) { sel_register_name("addItemWithObjectValue:") }
      const_attr_reader  :Sel_addItemWithObjectValue_
      
      # long
      const_set_lazy(:Sel_addItemWithTitle_action_keyEquivalent_) { sel_register_name("addItemWithTitle:action:keyEquivalent:") }
      const_attr_reader  :Sel_addItemWithTitle_action_keyEquivalent_
      
      # long
      const_set_lazy(:Sel_addLayoutManager_) { sel_register_name("addLayoutManager:") }
      const_attr_reader  :Sel_addLayoutManager_
      
      # long
      const_set_lazy(:Sel_addObject_) { sel_register_name("addObject:") }
      const_attr_reader  :Sel_addObject_
      
      # long
      const_set_lazy(:Sel_addObjectsFromArray_) { sel_register_name("addObjectsFromArray:") }
      const_attr_reader  :Sel_addObjectsFromArray_
      
      # long
      const_set_lazy(:Sel_addObserver_selector_name_object_) { sel_register_name("addObserver:selector:name:object:") }
      const_attr_reader  :Sel_addObserver_selector_name_object_
      
      # long
      const_set_lazy(:Sel_addRepresentation_) { sel_register_name("addRepresentation:") }
      const_attr_reader  :Sel_addRepresentation_
      
      # long
      const_set_lazy(:Sel_addSubview_) { sel_register_name("addSubview:") }
      const_attr_reader  :Sel_addSubview_
      
      # long
      const_set_lazy(:Sel_addSubview_positioned_relativeTo_) { sel_register_name("addSubview:positioned:relativeTo:") }
      const_attr_reader  :Sel_addSubview_positioned_relativeTo_
      
      # long
      const_set_lazy(:Sel_addTabStop_) { sel_register_name("addTabStop:") }
      const_attr_reader  :Sel_addTabStop_
      
      # long
      const_set_lazy(:Sel_addTabViewItem_) { sel_register_name("addTabViewItem:") }
      const_attr_reader  :Sel_addTabViewItem_
      
      # long
      const_set_lazy(:Sel_addTableColumn_) { sel_register_name("addTableColumn:") }
      const_attr_reader  :Sel_addTableColumn_
      
      # long
      const_set_lazy(:Sel_addTemporaryAttribute_value_forCharacterRange_) { sel_register_name("addTemporaryAttribute:value:forCharacterRange:") }
      const_attr_reader  :Sel_addTemporaryAttribute_value_forCharacterRange_
      
      # long
      const_set_lazy(:Sel_addTextContainer_) { sel_register_name("addTextContainer:") }
      const_attr_reader  :Sel_addTextContainer_
      
      # long
      const_set_lazy(:Sel_addTimer_forMode_) { sel_register_name("addTimer:forMode:") }
      const_attr_reader  :Sel_addTimer_forMode_
      
      # long
      const_set_lazy(:Sel_addToolTipRect_owner_userData_) { sel_register_name("addToolTipRect:owner:userData:") }
      const_attr_reader  :Sel_addToolTipRect_owner_userData_
      
      # long
      const_set_lazy(:Sel_addTypes_owner_) { sel_register_name("addTypes:owner:") }
      const_attr_reader  :Sel_addTypes_owner_
      
      # long
      const_set_lazy(:Sel_alignment) { sel_register_name("alignment") }
      const_attr_reader  :Sel_alignment
      
      # long
      const_set_lazy(:Sel_allKeys) { sel_register_name("allKeys") }
      const_attr_reader  :Sel_allKeys
      
      # long
      const_set_lazy(:Sel_alloc) { sel_register_name("alloc") }
      const_attr_reader  :Sel_alloc
      
      # long
      const_set_lazy(:Sel_allowsColumnReordering) { sel_register_name("allowsColumnReordering") }
      const_attr_reader  :Sel_allowsColumnReordering
      
      # long
      const_set_lazy(:Sel_allowsFloats) { sel_register_name("allowsFloats") }
      const_attr_reader  :Sel_allowsFloats
      
      # long
      const_set_lazy(:Sel_alphaComponent) { sel_register_name("alphaComponent") }
      const_attr_reader  :Sel_alphaComponent
      
      # long
      const_set_lazy(:Sel_alphaValue) { sel_register_name("alphaValue") }
      const_attr_reader  :Sel_alphaValue
      
      # long
      const_set_lazy(:Sel_altKey) { sel_register_name("altKey") }
      const_attr_reader  :Sel_altKey
      
      # long
      const_set_lazy(:Sel_alternateSelectedControlColor) { sel_register_name("alternateSelectedControlColor") }
      const_attr_reader  :Sel_alternateSelectedControlColor
      
      # long
      const_set_lazy(:Sel_alternateSelectedControlTextColor) { sel_register_name("alternateSelectedControlTextColor") }
      const_attr_reader  :Sel_alternateSelectedControlTextColor
      
      # long
      const_set_lazy(:Sel_alwaysShowsDecimalSeparator) { sel_register_name("alwaysShowsDecimalSeparator") }
      const_attr_reader  :Sel_alwaysShowsDecimalSeparator
      
      # long
      const_set_lazy(:Sel_appendAttributedString_) { sel_register_name("appendAttributedString:") }
      const_attr_reader  :Sel_appendAttributedString_
      
      # long
      const_set_lazy(:Sel_appendBezierPath_) { sel_register_name("appendBezierPath:") }
      const_attr_reader  :Sel_appendBezierPath_
      
      # long
      const_set_lazy(:Sel_appendBezierPathWithArcWithCenter_radius_startAngle_endAngle_) { sel_register_name("appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:") }
      const_attr_reader  :Sel_appendBezierPathWithArcWithCenter_radius_startAngle_endAngle_
      
      # long
      const_set_lazy(:Sel_appendBezierPathWithArcWithCenter_radius_startAngle_endAngle_clockwise_) { sel_register_name("appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:") }
      const_attr_reader  :Sel_appendBezierPathWithArcWithCenter_radius_startAngle_endAngle_clockwise_
      
      # long
      const_set_lazy(:Sel_appendBezierPathWithGlyphs_count_inFont_) { sel_register_name("appendBezierPathWithGlyphs:count:inFont:") }
      const_attr_reader  :Sel_appendBezierPathWithGlyphs_count_inFont_
      
      # long
      const_set_lazy(:Sel_appendBezierPathWithOvalInRect_) { sel_register_name("appendBezierPathWithOvalInRect:") }
      const_attr_reader  :Sel_appendBezierPathWithOvalInRect_
      
      # long
      const_set_lazy(:Sel_appendBezierPathWithRect_) { sel_register_name("appendBezierPathWithRect:") }
      const_attr_reader  :Sel_appendBezierPathWithRect_
      
      # long
      const_set_lazy(:Sel_appendBezierPathWithRoundedRect_xRadius_yRadius_) { sel_register_name("appendBezierPathWithRoundedRect:xRadius:yRadius:") }
      const_attr_reader  :Sel_appendBezierPathWithRoundedRect_xRadius_yRadius_
      
      # long
      const_set_lazy(:Sel_appendString_) { sel_register_name("appendString:") }
      const_attr_reader  :Sel_appendString_
      
      # long
      const_set_lazy(:Sel_applicationDidBecomeActive_) { sel_register_name("applicationDidBecomeActive:") }
      const_attr_reader  :Sel_applicationDidBecomeActive_
      
      # long
      const_set_lazy(:Sel_applicationDidFinishLaunching_) { sel_register_name("applicationDidFinishLaunching:") }
      const_attr_reader  :Sel_applicationDidFinishLaunching_
      
      # long
      const_set_lazy(:Sel_applicationDidResignActive_) { sel_register_name("applicationDidResignActive:") }
      const_attr_reader  :Sel_applicationDidResignActive_
      
      # long
      const_set_lazy(:Sel_applicationShouldTerminate_) { sel_register_name("applicationShouldTerminate:") }
      const_attr_reader  :Sel_applicationShouldTerminate_
      
      # long
      const_set_lazy(:Sel_applicationWillFinishLaunching_) { sel_register_name("applicationWillFinishLaunching:") }
      const_attr_reader  :Sel_applicationWillFinishLaunching_
      
      # long
      const_set_lazy(:Sel_applicationWillTerminate_) { sel_register_name("applicationWillTerminate:") }
      const_attr_reader  :Sel_applicationWillTerminate_
      
      # long
      const_set_lazy(:Sel_archivedDataWithRootObject_) { sel_register_name("archivedDataWithRootObject:") }
      const_attr_reader  :Sel_archivedDataWithRootObject_
      
      # long
      const_set_lazy(:Sel_areCursorRectsEnabled) { sel_register_name("areCursorRectsEnabled") }
      const_attr_reader  :Sel_areCursorRectsEnabled
      
      # long
      const_set_lazy(:Sel_array) { sel_register_name("array") }
      const_attr_reader  :Sel_array
      
      # long
      const_set_lazy(:Sel_arrayWithCapacity_) { sel_register_name("arrayWithCapacity:") }
      const_attr_reader  :Sel_arrayWithCapacity_
      
      # long
      const_set_lazy(:Sel_arrayWithObject_) { sel_register_name("arrayWithObject:") }
      const_attr_reader  :Sel_arrayWithObject_
      
      # long
      const_set_lazy(:Sel_arrowCursor) { sel_register_name("arrowCursor") }
      const_attr_reader  :Sel_arrowCursor
      
      # long
      const_set_lazy(:Sel_ascender) { sel_register_name("ascender") }
      const_attr_reader  :Sel_ascender
      
      # long
      const_set_lazy(:Sel_attributedStringValue) { sel_register_name("attributedStringValue") }
      const_attr_reader  :Sel_attributedStringValue
      
      # long
      const_set_lazy(:Sel_attributedStringWithAttachment_) { sel_register_name("attributedStringWithAttachment:") }
      const_attr_reader  :Sel_attributedStringWithAttachment_
      
      # long
      const_set_lazy(:Sel_attributedSubstringFromRange_) { sel_register_name("attributedSubstringFromRange:") }
      const_attr_reader  :Sel_attributedSubstringFromRange_
      
      # long
      const_set_lazy(:Sel_attributedTitle) { sel_register_name("attributedTitle") }
      const_attr_reader  :Sel_attributedTitle
      
      # long
      const_set_lazy(:Sel_attributesAtIndex_longestEffectiveRange_inRange_) { sel_register_name("attributesAtIndex:longestEffectiveRange:inRange:") }
      const_attr_reader  :Sel_attributesAtIndex_longestEffectiveRange_inRange_
      
      # long
      const_set_lazy(:Sel_autorelease) { sel_register_name("autorelease") }
      const_attr_reader  :Sel_autorelease
      
      # long
      const_set_lazy(:Sel_availableFontFamilies) { sel_register_name("availableFontFamilies") }
      const_attr_reader  :Sel_availableFontFamilies
      
      # long
      const_set_lazy(:Sel_availableFonts) { sel_register_name("availableFonts") }
      const_attr_reader  :Sel_availableFonts
      
      # long
      const_set_lazy(:Sel_availableMembersOfFontFamily_) { sel_register_name("availableMembersOfFontFamily:") }
      const_attr_reader  :Sel_availableMembersOfFontFamily_
      
      # long
      const_set_lazy(:Sel_availableTypeFromArray_) { sel_register_name("availableTypeFromArray:") }
      const_attr_reader  :Sel_availableTypeFromArray_
      
      # long
      const_set_lazy(:Sel_baselineOffsetInLayoutManager_glyphIndex_) { sel_register_name("baselineOffsetInLayoutManager:glyphIndex:") }
      const_attr_reader  :Sel_baselineOffsetInLayoutManager_glyphIndex_
      
      # long
      const_set_lazy(:Sel_becomeFirstResponder) { sel_register_name("becomeFirstResponder") }
      const_attr_reader  :Sel_becomeFirstResponder
      
      # long
      const_set_lazy(:Sel_becomeKeyWindow) { sel_register_name("becomeKeyWindow") }
      const_attr_reader  :Sel_becomeKeyWindow
      
      # long
      const_set_lazy(:Sel_beginDocument) { sel_register_name("beginDocument") }
      const_attr_reader  :Sel_beginDocument
      
      # long
      const_set_lazy(:Sel_beginEditing) { sel_register_name("beginEditing") }
      const_attr_reader  :Sel_beginEditing
      
      # long
      const_set_lazy(:Sel_beginPageInRect_atPlacement_) { sel_register_name("beginPageInRect:atPlacement:") }
      const_attr_reader  :Sel_beginPageInRect_atPlacement_
      
      # long
      const_set_lazy(:Sel_beginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo_) { sel_register_name("beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:") }
      const_attr_reader  :Sel_beginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo_
      
      # long
      const_set_lazy(:Sel_beginSheetModalForWindow_modalDelegate_didEndSelector_contextInfo_) { sel_register_name("beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:") }
      const_attr_reader  :Sel_beginSheetModalForWindow_modalDelegate_didEndSelector_contextInfo_
      
      # long
      const_set_lazy(:Sel_beginSheetWithPrintInfo_modalForWindow_delegate_didEndSelector_contextInfo_) { sel_register_name("beginSheetWithPrintInfo:modalForWindow:delegate:didEndSelector:contextInfo:") }
      const_attr_reader  :Sel_beginSheetWithPrintInfo_modalForWindow_delegate_didEndSelector_contextInfo_
      
      # long
      const_set_lazy(:Sel_bestRepresentationForDevice_) { sel_register_name("bestRepresentationForDevice:") }
      const_attr_reader  :Sel_bestRepresentationForDevice_
      
      # long
      const_set_lazy(:Sel_bezierPath) { sel_register_name("bezierPath") }
      const_attr_reader  :Sel_bezierPath
      
      # long
      const_set_lazy(:Sel_bezierPathByFlatteningPath) { sel_register_name("bezierPathByFlatteningPath") }
      const_attr_reader  :Sel_bezierPathByFlatteningPath
      
      # long
      const_set_lazy(:Sel_bezierPathWithRect_) { sel_register_name("bezierPathWithRect:") }
      const_attr_reader  :Sel_bezierPathWithRect_
      
      # long
      const_set_lazy(:Sel_bitmapData) { sel_register_name("bitmapData") }
      const_attr_reader  :Sel_bitmapData
      
      # long
      const_set_lazy(:Sel_bitmapFormat) { sel_register_name("bitmapFormat") }
      const_attr_reader  :Sel_bitmapFormat
      
      # long
      const_set_lazy(:Sel_bitsPerPixel) { sel_register_name("bitsPerPixel") }
      const_attr_reader  :Sel_bitsPerPixel
      
      # long
      const_set_lazy(:Sel_bitsPerSample) { sel_register_name("bitsPerSample") }
      const_attr_reader  :Sel_bitsPerSample
      
      # long
      const_set_lazy(:Sel_blackColor) { sel_register_name("blackColor") }
      const_attr_reader  :Sel_blackColor
      
      # long
      const_set_lazy(:Sel_blueComponent) { sel_register_name("blueComponent") }
      const_attr_reader  :Sel_blueComponent
      
      # long
      const_set_lazy(:Sel_boolValue) { sel_register_name("boolValue") }
      const_attr_reader  :Sel_boolValue
      
      # long
      const_set_lazy(:Sel_borderWidth) { sel_register_name("borderWidth") }
      const_attr_reader  :Sel_borderWidth
      
      # long
      const_set_lazy(:Sel_boundingRectForGlyphRange_inTextContainer_) { sel_register_name("boundingRectForGlyphRange:inTextContainer:") }
      const_attr_reader  :Sel_boundingRectForGlyphRange_inTextContainer_
      
      # long
      const_set_lazy(:Sel_bounds) { sel_register_name("bounds") }
      const_attr_reader  :Sel_bounds
      
      # long
      const_set_lazy(:Sel_bundleIdentifier) { sel_register_name("bundleIdentifier") }
      const_attr_reader  :Sel_bundleIdentifier
      
      # long
      const_set_lazy(:Sel_bundlePath) { sel_register_name("bundlePath") }
      const_attr_reader  :Sel_bundlePath
      
      # long
      const_set_lazy(:Sel_bundleWithIdentifier_) { sel_register_name("bundleWithIdentifier:") }
      const_attr_reader  :Sel_bundleWithIdentifier_
      
      # long
      const_set_lazy(:Sel_bundleWithPath_) { sel_register_name("bundleWithPath:") }
      const_attr_reader  :Sel_bundleWithPath_
      
      # long
      const_set_lazy(:Sel_button) { sel_register_name("button") }
      const_attr_reader  :Sel_button
      
      # long
      const_set_lazy(:Sel_buttonNumber) { sel_register_name("buttonNumber") }
      const_attr_reader  :Sel_buttonNumber
      
      # long
      const_set_lazy(:Sel_bytes) { sel_register_name("bytes") }
      const_attr_reader  :Sel_bytes
      
      # long
      const_set_lazy(:Sel_bytesPerPlane) { sel_register_name("bytesPerPlane") }
      const_attr_reader  :Sel_bytesPerPlane
      
      # long
      const_set_lazy(:Sel_bytesPerRow) { sel_register_name("bytesPerRow") }
      const_attr_reader  :Sel_bytesPerRow
      
      # long
      const_set_lazy(:Sel_calendarDate) { sel_register_name("calendarDate") }
      const_attr_reader  :Sel_calendarDate
      
      # long
      const_set_lazy(:Sel_canBecomeKeyView) { sel_register_name("canBecomeKeyView") }
      const_attr_reader  :Sel_canBecomeKeyView
      
      # long
      const_set_lazy(:Sel_canBecomeKeyWindow) { sel_register_name("canBecomeKeyWindow") }
      const_attr_reader  :Sel_canBecomeKeyWindow
      
      # long
      const_set_lazy(:Sel_canDragRowsWithIndexes_atPoint_) { sel_register_name("canDragRowsWithIndexes:atPoint:") }
      const_attr_reader  :Sel_canDragRowsWithIndexes_atPoint_
      
      # long
      const_set_lazy(:Sel_canGoBack) { sel_register_name("canGoBack") }
      const_attr_reader  :Sel_canGoBack
      
      # long
      const_set_lazy(:Sel_canGoForward) { sel_register_name("canGoForward") }
      const_attr_reader  :Sel_canGoForward
      
      # long
      const_set_lazy(:Sel_canShowMIMEType_) { sel_register_name("canShowMIMEType:") }
      const_attr_reader  :Sel_canShowMIMEType_
      
      # long
      const_set_lazy(:Sel_cancel) { sel_register_name("cancel") }
      const_attr_reader  :Sel_cancel
      
      # long
      const_set_lazy(:Sel_cancelAuthenticationChallenge_) { sel_register_name("cancelAuthenticationChallenge:") }
      const_attr_reader  :Sel_cancelAuthenticationChallenge_
      
      # long
      const_set_lazy(:Sel_cancelButtonCell) { sel_register_name("cancelButtonCell") }
      const_attr_reader  :Sel_cancelButtonCell
      
      # long
      const_set_lazy(:Sel_cancelTracking) { sel_register_name("cancelTracking") }
      const_attr_reader  :Sel_cancelTracking
      
      # long
      const_set_lazy(:Sel_cascadeTopLeftFromPoint_) { sel_register_name("cascadeTopLeftFromPoint:") }
      const_attr_reader  :Sel_cascadeTopLeftFromPoint_
      
      # long
      const_set_lazy(:Sel_cell) { sel_register_name("cell") }
      const_attr_reader  :Sel_cell
      
      # long
      const_set_lazy(:Sel_cellClass) { sel_register_name("cellClass") }
      const_attr_reader  :Sel_cellClass
      
      # long
      const_set_lazy(:Sel_cellSize) { sel_register_name("cellSize") }
      const_attr_reader  :Sel_cellSize
      
      # long
      const_set_lazy(:Sel_cellSizeForBounds_) { sel_register_name("cellSizeForBounds:") }
      const_attr_reader  :Sel_cellSizeForBounds_
      
      # long
      const_set_lazy(:Sel_changeColor_) { sel_register_name("changeColor:") }
      const_attr_reader  :Sel_changeColor_
      
      # long
      const_set_lazy(:Sel_changeFont_) { sel_register_name("changeFont:") }
      const_attr_reader  :Sel_changeFont_
      
      # long
      const_set_lazy(:Sel_charCode) { sel_register_name("charCode") }
      const_attr_reader  :Sel_charCode
      
      # long
      const_set_lazy(:Sel_characterAtIndex_) { sel_register_name("characterAtIndex:") }
      const_attr_reader  :Sel_characterAtIndex_
      
      # long
      const_set_lazy(:Sel_characterIndexForGlyphAtIndex_) { sel_register_name("characterIndexForGlyphAtIndex:") }
      const_attr_reader  :Sel_characterIndexForGlyphAtIndex_
      
      # long
      const_set_lazy(:Sel_characterIndexForInsertionAtPoint_) { sel_register_name("characterIndexForInsertionAtPoint:") }
      const_attr_reader  :Sel_characterIndexForInsertionAtPoint_
      
      # long
      const_set_lazy(:Sel_characterIndexForPoint_) { sel_register_name("characterIndexForPoint:") }
      const_attr_reader  :Sel_characterIndexForPoint_
      
      # long
      const_set_lazy(:Sel_characterIsMember_) { sel_register_name("characterIsMember:") }
      const_attr_reader  :Sel_characterIsMember_
      
      # long
      const_set_lazy(:Sel_characters) { sel_register_name("characters") }
      const_attr_reader  :Sel_characters
      
      # long
      const_set_lazy(:Sel_charactersIgnoringModifiers) { sel_register_name("charactersIgnoringModifiers") }
      const_attr_reader  :Sel_charactersIgnoringModifiers
      
      # long
      const_set_lazy(:Sel_chooseFilename_) { sel_register_name("chooseFilename:") }
      const_attr_reader  :Sel_chooseFilename_
      
      # long
      const_set_lazy(:Sel_className) { sel_register_name("className") }
      const_attr_reader  :Sel_className
      
      # long
      const_set_lazy(:Sel_cleanUpOperation) { sel_register_name("cleanUpOperation") }
      const_attr_reader  :Sel_cleanUpOperation
      
      # long
      const_set_lazy(:Sel_clearColor) { sel_register_name("clearColor") }
      const_attr_reader  :Sel_clearColor
      
      # long
      const_set_lazy(:Sel_clearCurrentContext) { sel_register_name("clearCurrentContext") }
      const_attr_reader  :Sel_clearCurrentContext
      
      # long
      const_set_lazy(:Sel_clearDrawable) { sel_register_name("clearDrawable") }
      const_attr_reader  :Sel_clearDrawable
      
      # long
      const_set_lazy(:Sel_clickCount) { sel_register_name("clickCount") }
      const_attr_reader  :Sel_clickCount
      
      # long
      const_set_lazy(:Sel_clickedColumn) { sel_register_name("clickedColumn") }
      const_attr_reader  :Sel_clickedColumn
      
      # long
      const_set_lazy(:Sel_clickedRow) { sel_register_name("clickedRow") }
      const_attr_reader  :Sel_clickedRow
      
      # long
      const_set_lazy(:Sel_clientX) { sel_register_name("clientX") }
      const_attr_reader  :Sel_clientX
      
      # long
      const_set_lazy(:Sel_clientY) { sel_register_name("clientY") }
      const_attr_reader  :Sel_clientY
      
      # long
      const_set_lazy(:Sel_close) { sel_register_name("close") }
      const_attr_reader  :Sel_close
      
      # long
      const_set_lazy(:Sel_closePath) { sel_register_name("closePath") }
      const_attr_reader  :Sel_closePath
      
      # long
      const_set_lazy(:Sel_code) { sel_register_name("code") }
      const_attr_reader  :Sel_code
      
      # long
      const_set_lazy(:Sel_collapseItem_) { sel_register_name("collapseItem:") }
      const_attr_reader  :Sel_collapseItem_
      
      # long
      const_set_lazy(:Sel_collapseItem_collapseChildren_) { sel_register_name("collapseItem:collapseChildren:") }
      const_attr_reader  :Sel_collapseItem_collapseChildren_
      
      # long
      const_set_lazy(:Sel_color) { sel_register_name("color") }
      const_attr_reader  :Sel_color
      
      # long
      const_set_lazy(:Sel_colorAtX_y_) { sel_register_name("colorAtX:y:") }
      const_attr_reader  :Sel_colorAtX_y_
      
      # long
      const_set_lazy(:Sel_colorSpaceName) { sel_register_name("colorSpaceName") }
      const_attr_reader  :Sel_colorSpaceName
      
      # long
      const_set_lazy(:Sel_colorUsingColorSpace_) { sel_register_name("colorUsingColorSpace:") }
      const_attr_reader  :Sel_colorUsingColorSpace_
      
      # long
      const_set_lazy(:Sel_colorUsingColorSpaceName_) { sel_register_name("colorUsingColorSpaceName:") }
      const_attr_reader  :Sel_colorUsingColorSpaceName_
      
      # long
      const_set_lazy(:Sel_colorWithDeviceRed_green_blue_alpha_) { sel_register_name("colorWithDeviceRed:green:blue:alpha:") }
      const_attr_reader  :Sel_colorWithDeviceRed_green_blue_alpha_
      
      # long
      const_set_lazy(:Sel_colorWithPatternImage_) { sel_register_name("colorWithPatternImage:") }
      const_attr_reader  :Sel_colorWithPatternImage_
      
      # long
      const_set_lazy(:Sel_columnAtPoint_) { sel_register_name("columnAtPoint:") }
      const_attr_reader  :Sel_columnAtPoint_
      
      # long
      const_set_lazy(:Sel_columnIndexesInRect_) { sel_register_name("columnIndexesInRect:") }
      const_attr_reader  :Sel_columnIndexesInRect_
      
      # long
      const_set_lazy(:Sel_columnWithIdentifier_) { sel_register_name("columnWithIdentifier:") }
      const_attr_reader  :Sel_columnWithIdentifier_
      
      # long
      const_set_lazy(:Sel_comboBoxSelectionDidChange_) { sel_register_name("comboBoxSelectionDidChange:") }
      const_attr_reader  :Sel_comboBoxSelectionDidChange_
      
      # long
      const_set_lazy(:Sel_comboBoxWillDismiss_) { sel_register_name("comboBoxWillDismiss:") }
      const_attr_reader  :Sel_comboBoxWillDismiss_
      
      # long
      const_set_lazy(:Sel_compare_) { sel_register_name("compare:") }
      const_attr_reader  :Sel_compare_
      
      # long
      const_set_lazy(:Sel_concat) { sel_register_name("concat") }
      const_attr_reader  :Sel_concat
      
      # long
      const_set_lazy(:Sel_conformsToProtocol_) { sel_register_name("conformsToProtocol:") }
      const_attr_reader  :Sel_conformsToProtocol_
      
      # long
      const_set_lazy(:Sel_containerSize) { sel_register_name("containerSize") }
      const_attr_reader  :Sel_containerSize
      
      # long
      const_set_lazy(:Sel_containsIndex_) { sel_register_name("containsIndex:") }
      const_attr_reader  :Sel_containsIndex_
      
      # long
      const_set_lazy(:Sel_containsObject_) { sel_register_name("containsObject:") }
      const_attr_reader  :Sel_containsObject_
      
      # long
      const_set_lazy(:Sel_containsPoint_) { sel_register_name("containsPoint:") }
      const_attr_reader  :Sel_containsPoint_
      
      # long
      const_set_lazy(:Sel_contentRect) { sel_register_name("contentRect") }
      const_attr_reader  :Sel_contentRect
      
      # long
      const_set_lazy(:Sel_contentRectForFrameRect_) { sel_register_name("contentRectForFrameRect:") }
      const_attr_reader  :Sel_contentRectForFrameRect_
      
      # long
      const_set_lazy(:Sel_contentSize) { sel_register_name("contentSize") }
      const_attr_reader  :Sel_contentSize
      
      # long
      const_set_lazy(:Sel_contentSizeForFrameSize_hasHorizontalScroller_hasVerticalScroller_borderType_) { sel_register_name("contentSizeForFrameSize:hasHorizontalScroller:hasVerticalScroller:borderType:") }
      const_attr_reader  :Sel_contentSizeForFrameSize_hasHorizontalScroller_hasVerticalScroller_borderType_
      
      # long
      const_set_lazy(:Sel_contentView) { sel_register_name("contentView") }
      const_attr_reader  :Sel_contentView
      
      # long
      const_set_lazy(:Sel_contentViewMargins) { sel_register_name("contentViewMargins") }
      const_attr_reader  :Sel_contentViewMargins
      
      # long
      const_set_lazy(:Sel_context) { sel_register_name("context") }
      const_attr_reader  :Sel_context
      
      # long
      const_set_lazy(:Sel_controlBackgroundColor) { sel_register_name("controlBackgroundColor") }
      const_attr_reader  :Sel_controlBackgroundColor
      
      # long
      const_set_lazy(:Sel_controlContentFontOfSize_) { sel_register_name("controlContentFontOfSize:") }
      const_attr_reader  :Sel_controlContentFontOfSize_
      
      # long
      const_set_lazy(:Sel_controlDarkShadowColor) { sel_register_name("controlDarkShadowColor") }
      const_attr_reader  :Sel_controlDarkShadowColor
      
      # long
      const_set_lazy(:Sel_controlHighlightColor) { sel_register_name("controlHighlightColor") }
      const_attr_reader  :Sel_controlHighlightColor
      
      # long
      const_set_lazy(:Sel_controlLightHighlightColor) { sel_register_name("controlLightHighlightColor") }
      const_attr_reader  :Sel_controlLightHighlightColor
      
      # long
      const_set_lazy(:Sel_controlPointBounds) { sel_register_name("controlPointBounds") }
      const_attr_reader  :Sel_controlPointBounds
      
      # long
      const_set_lazy(:Sel_controlShadowColor) { sel_register_name("controlShadowColor") }
      const_attr_reader  :Sel_controlShadowColor
      
      # long
      const_set_lazy(:Sel_controlSize) { sel_register_name("controlSize") }
      const_attr_reader  :Sel_controlSize
      
      # long
      const_set_lazy(:Sel_controlTextColor) { sel_register_name("controlTextColor") }
      const_attr_reader  :Sel_controlTextColor
      
      # long
      const_set_lazy(:Sel_convertBaseToScreen_) { sel_register_name("convertBaseToScreen:") }
      const_attr_reader  :Sel_convertBaseToScreen_
      
      # long
      const_set_lazy(:Sel_convertFont_toHaveTrait_) { sel_register_name("convertFont:toHaveTrait:") }
      const_attr_reader  :Sel_convertFont_toHaveTrait_
      
      # long
      const_set_lazy(:Sel_convertPoint_fromView_) { sel_register_name("convertPoint:fromView:") }
      const_attr_reader  :Sel_convertPoint_fromView_
      
      # long
      const_set_lazy(:Sel_convertPoint_toView_) { sel_register_name("convertPoint:toView:") }
      const_attr_reader  :Sel_convertPoint_toView_
      
      # long
      const_set_lazy(:Sel_convertPointFromBase_) { sel_register_name("convertPointFromBase:") }
      const_attr_reader  :Sel_convertPointFromBase_
      
      # long
      const_set_lazy(:Sel_convertPointToBase_) { sel_register_name("convertPointToBase:") }
      const_attr_reader  :Sel_convertPointToBase_
      
      # long
      const_set_lazy(:Sel_convertRect_fromView_) { sel_register_name("convertRect:fromView:") }
      const_attr_reader  :Sel_convertRect_fromView_
      
      # long
      const_set_lazy(:Sel_convertRect_toView_) { sel_register_name("convertRect:toView:") }
      const_attr_reader  :Sel_convertRect_toView_
      
      # long
      const_set_lazy(:Sel_convertRectFromBase_) { sel_register_name("convertRectFromBase:") }
      const_attr_reader  :Sel_convertRectFromBase_
      
      # long
      const_set_lazy(:Sel_convertRectToBase_) { sel_register_name("convertRectToBase:") }
      const_attr_reader  :Sel_convertRectToBase_
      
      # long
      const_set_lazy(:Sel_convertScreenToBase_) { sel_register_name("convertScreenToBase:") }
      const_attr_reader  :Sel_convertScreenToBase_
      
      # long
      const_set_lazy(:Sel_convertSize_fromView_) { sel_register_name("convertSize:fromView:") }
      const_attr_reader  :Sel_convertSize_fromView_
      
      # long
      const_set_lazy(:Sel_convertSize_toView_) { sel_register_name("convertSize:toView:") }
      const_attr_reader  :Sel_convertSize_toView_
      
      # long
      const_set_lazy(:Sel_convertSizeFromBase_) { sel_register_name("convertSizeFromBase:") }
      const_attr_reader  :Sel_convertSizeFromBase_
      
      # long
      const_set_lazy(:Sel_convertSizeToBase_) { sel_register_name("convertSizeToBase:") }
      const_attr_reader  :Sel_convertSizeToBase_
      
      # long
      const_set_lazy(:Sel_cookies) { sel_register_name("cookies") }
      const_attr_reader  :Sel_cookies
      
      # long
      const_set_lazy(:Sel_cookiesForURL_) { sel_register_name("cookiesForURL:") }
      const_attr_reader  :Sel_cookiesForURL_
      
      # long
      const_set_lazy(:Sel_cookiesWithResponseHeaderFields_forURL_) { sel_register_name("cookiesWithResponseHeaderFields:forURL:") }
      const_attr_reader  :Sel_cookiesWithResponseHeaderFields_forURL_
      
      # long
      const_set_lazy(:Sel_copiesOnScroll) { sel_register_name("copiesOnScroll") }
      const_attr_reader  :Sel_copiesOnScroll
      
      # long
      const_set_lazy(:Sel_copy) { sel_register_name("copy") }
      const_attr_reader  :Sel_copy
      
      # long
      const_set_lazy(:Sel_copy_) { sel_register_name("copy:") }
      const_attr_reader  :Sel_copy_
      
      # long
      const_set_lazy(:Sel_count) { sel_register_name("count") }
      const_attr_reader  :Sel_count
      
      # long
      const_set_lazy(:Sel_createContext) { sel_register_name("createContext") }
      const_attr_reader  :Sel_createContext
      
      # long
      const_set_lazy(:Sel_createFileAtPath_contents_attributes_) { sel_register_name("createFileAtPath:contents:attributes:") }
      const_attr_reader  :Sel_createFileAtPath_contents_attributes_
      
      # long
      const_set_lazy(:Sel_credentialWithUser_password_persistence_) { sel_register_name("credentialWithUser:password:persistence:") }
      const_attr_reader  :Sel_credentialWithUser_password_persistence_
      
      # long
      const_set_lazy(:Sel_crosshairCursor) { sel_register_name("crosshairCursor") }
      const_attr_reader  :Sel_crosshairCursor
      
      # long
      const_set_lazy(:Sel_ctrlKey) { sel_register_name("ctrlKey") }
      const_attr_reader  :Sel_ctrlKey
      
      # long
      const_set_lazy(:Sel_currentContext) { sel_register_name("currentContext") }
      const_attr_reader  :Sel_currentContext
      
      # long
      const_set_lazy(:Sel_currentCursor) { sel_register_name("currentCursor") }
      const_attr_reader  :Sel_currentCursor
      
      # long
      const_set_lazy(:Sel_currentEditor) { sel_register_name("currentEditor") }
      const_attr_reader  :Sel_currentEditor
      
      # long
      const_set_lazy(:Sel_currentEvent) { sel_register_name("currentEvent") }
      const_attr_reader  :Sel_currentEvent
      
      # long
      const_set_lazy(:Sel_currentInputManager) { sel_register_name("currentInputManager") }
      const_attr_reader  :Sel_currentInputManager
      
      # long
      const_set_lazy(:Sel_currentPoint) { sel_register_name("currentPoint") }
      const_attr_reader  :Sel_currentPoint
      
      # long
      const_set_lazy(:Sel_currentRunLoop) { sel_register_name("currentRunLoop") }
      const_attr_reader  :Sel_currentRunLoop
      
      # long
      const_set_lazy(:Sel_currentThread) { sel_register_name("currentThread") }
      const_attr_reader  :Sel_currentThread
      
      # long
      const_set_lazy(:Sel_cursorUpdate_) { sel_register_name("cursorUpdate:") }
      const_attr_reader  :Sel_cursorUpdate_
      
      # long
      const_set_lazy(:Sel_curveToPoint_controlPoint1_controlPoint2_) { sel_register_name("curveToPoint:controlPoint1:controlPoint2:") }
      const_attr_reader  :Sel_curveToPoint_controlPoint1_controlPoint2_
      
      # long
      const_set_lazy(:Sel_cut_) { sel_register_name("cut:") }
      const_attr_reader  :Sel_cut_
      
      # long
      const_set_lazy(:Sel_dataCell) { sel_register_name("dataCell") }
      const_attr_reader  :Sel_dataCell
      
      # long
      const_set_lazy(:Sel_dataForType_) { sel_register_name("dataForType:") }
      const_attr_reader  :Sel_dataForType_
      
      # long
      const_set_lazy(:Sel_dataSource) { sel_register_name("dataSource") }
      const_attr_reader  :Sel_dataSource
      
      # long
      const_set_lazy(:Sel_dataWithBytes_length_) { sel_register_name("dataWithBytes:length:") }
      const_attr_reader  :Sel_dataWithBytes_length_
      
      # long
      const_set_lazy(:Sel_dateValue) { sel_register_name("dateValue") }
      const_attr_reader  :Sel_dateValue
      
      # long
      const_set_lazy(:Sel_dateWithCalendarFormat_timeZone_) { sel_register_name("dateWithCalendarFormat:timeZone:") }
      const_attr_reader  :Sel_dateWithCalendarFormat_timeZone_
      
      # long
      const_set_lazy(:Sel_dateWithTimeIntervalSinceNow_) { sel_register_name("dateWithTimeIntervalSinceNow:") }
      const_attr_reader  :Sel_dateWithTimeIntervalSinceNow_
      
      # long
      const_set_lazy(:Sel_dateWithYear_month_day_hour_minute_second_timeZone_) { sel_register_name("dateWithYear:month:day:hour:minute:second:timeZone:") }
      const_attr_reader  :Sel_dateWithYear_month_day_hour_minute_second_timeZone_
      
      # long
      const_set_lazy(:Sel_dayOfMonth) { sel_register_name("dayOfMonth") }
      const_attr_reader  :Sel_dayOfMonth
      
      # long
      const_set_lazy(:Sel_decimalDigitCharacterSet) { sel_register_name("decimalDigitCharacterSet") }
      const_attr_reader  :Sel_decimalDigitCharacterSet
      
      # long
      const_set_lazy(:Sel_decimalSeparator) { sel_register_name("decimalSeparator") }
      const_attr_reader  :Sel_decimalSeparator
      
      # long
      const_set_lazy(:Sel_declareTypes_owner_) { sel_register_name("declareTypes:owner:") }
      const_attr_reader  :Sel_declareTypes_owner_
      
      # long
      const_set_lazy(:Sel_defaultBaselineOffsetForFont_) { sel_register_name("defaultBaselineOffsetForFont:") }
      const_attr_reader  :Sel_defaultBaselineOffsetForFont_
      
      # long
      const_set_lazy(:Sel_defaultButtonCell) { sel_register_name("defaultButtonCell") }
      const_attr_reader  :Sel_defaultButtonCell
      
      # long
      const_set_lazy(:Sel_defaultCenter) { sel_register_name("defaultCenter") }
      const_attr_reader  :Sel_defaultCenter
      
      # long
      const_set_lazy(:Sel_defaultFlatness) { sel_register_name("defaultFlatness") }
      const_attr_reader  :Sel_defaultFlatness
      
      # long
      const_set_lazy(:Sel_defaultLineHeightForFont_) { sel_register_name("defaultLineHeightForFont:") }
      const_attr_reader  :Sel_defaultLineHeightForFont_
      
      # long
      const_set_lazy(:Sel_defaultManager) { sel_register_name("defaultManager") }
      const_attr_reader  :Sel_defaultManager
      
      # long
      const_set_lazy(:Sel_defaultParagraphStyle) { sel_register_name("defaultParagraphStyle") }
      const_attr_reader  :Sel_defaultParagraphStyle
      
      # long
      const_set_lazy(:Sel_defaultPrinter) { sel_register_name("defaultPrinter") }
      const_attr_reader  :Sel_defaultPrinter
      
      # long
      const_set_lazy(:Sel_defaultTimeZone) { sel_register_name("defaultTimeZone") }
      const_attr_reader  :Sel_defaultTimeZone
      
      # long
      const_set_lazy(:Sel_delegate) { sel_register_name("delegate") }
      const_attr_reader  :Sel_delegate
      
      # long
      const_set_lazy(:Sel_deleteCookie_) { sel_register_name("deleteCookie:") }
      const_attr_reader  :Sel_deleteCookie_
      
      # long
      const_set_lazy(:Sel_deliverResult) { sel_register_name("deliverResult") }
      const_attr_reader  :Sel_deliverResult
      
      # long
      const_set_lazy(:Sel_deltaX) { sel_register_name("deltaX") }
      const_attr_reader  :Sel_deltaX
      
      # long
      const_set_lazy(:Sel_deltaY) { sel_register_name("deltaY") }
      const_attr_reader  :Sel_deltaY
      
      # long
      const_set_lazy(:Sel_deminiaturize_) { sel_register_name("deminiaturize:") }
      const_attr_reader  :Sel_deminiaturize_
      
      # long
      const_set_lazy(:Sel_depth) { sel_register_name("depth") }
      const_attr_reader  :Sel_depth
      
      # long
      const_set_lazy(:Sel_descender) { sel_register_name("descender") }
      const_attr_reader  :Sel_descender
      
      # long
      const_set_lazy(:Sel_description) { sel_register_name("description") }
      const_attr_reader  :Sel_description
      
      # long
      const_set_lazy(:Sel_deselectAll_) { sel_register_name("deselectAll:") }
      const_attr_reader  :Sel_deselectAll_
      
      # long
      const_set_lazy(:Sel_deselectItemAtIndex_) { sel_register_name("deselectItemAtIndex:") }
      const_attr_reader  :Sel_deselectItemAtIndex_
      
      # long
      const_set_lazy(:Sel_deselectRow_) { sel_register_name("deselectRow:") }
      const_attr_reader  :Sel_deselectRow_
      
      # long
      const_set_lazy(:Sel_destroyContext) { sel_register_name("destroyContext") }
      const_attr_reader  :Sel_destroyContext
      
      # long
      const_set_lazy(:Sel_detail) { sel_register_name("detail") }
      const_attr_reader  :Sel_detail
      
      # long
      const_set_lazy(:Sel_deviceDescription) { sel_register_name("deviceDescription") }
      const_attr_reader  :Sel_deviceDescription
      
      # long
      const_set_lazy(:Sel_deviceRGBColorSpace) { sel_register_name("deviceRGBColorSpace") }
      const_attr_reader  :Sel_deviceRGBColorSpace
      
      # long
      const_set_lazy(:Sel_dictionary) { sel_register_name("dictionary") }
      const_attr_reader  :Sel_dictionary
      
      # long
      const_set_lazy(:Sel_dictionaryWithCapacity_) { sel_register_name("dictionaryWithCapacity:") }
      const_attr_reader  :Sel_dictionaryWithCapacity_
      
      # long
      const_set_lazy(:Sel_dictionaryWithObject_forKey_) { sel_register_name("dictionaryWithObject:forKey:") }
      const_attr_reader  :Sel_dictionaryWithObject_forKey_
      
      # long
      const_set_lazy(:Sel_disableCursorRects) { sel_register_name("disableCursorRects") }
      const_attr_reader  :Sel_disableCursorRects
      
      # long
      const_set_lazy(:Sel_disabledControlTextColor) { sel_register_name("disabledControlTextColor") }
      const_attr_reader  :Sel_disabledControlTextColor
      
      # long
      const_set_lazy(:Sel_discardCursorRects) { sel_register_name("discardCursorRects") }
      const_attr_reader  :Sel_discardCursorRects
      
      # long
      const_set_lazy(:Sel_display) { sel_register_name("display") }
      const_attr_reader  :Sel_display
      
      # long
      const_set_lazy(:Sel_displayIfNeeded) { sel_register_name("displayIfNeeded") }
      const_attr_reader  :Sel_displayIfNeeded
      
      # long
      const_set_lazy(:Sel_displayRectIgnoringOpacity_inContext_) { sel_register_name("displayRectIgnoringOpacity:inContext:") }
      const_attr_reader  :Sel_displayRectIgnoringOpacity_inContext_
      
      # long
      const_set_lazy(:Sel_distantFuture) { sel_register_name("distantFuture") }
      const_attr_reader  :Sel_distantFuture
      
      # long
      const_set_lazy(:Sel_doCommandBySelector_) { sel_register_name("doCommandBySelector:") }
      const_attr_reader  :Sel_doCommandBySelector_
      
      # long
      const_set_lazy(:Sel_documentCursor) { sel_register_name("documentCursor") }
      const_attr_reader  :Sel_documentCursor
      
      # long
      const_set_lazy(:Sel_documentSource) { sel_register_name("documentSource") }
      const_attr_reader  :Sel_documentSource
      
      # long
      const_set_lazy(:Sel_documentView) { sel_register_name("documentView") }
      const_attr_reader  :Sel_documentView
      
      # long
      const_set_lazy(:Sel_documentViewShouldHandlePrint) { sel_register_name("documentViewShouldHandlePrint") }
      const_attr_reader  :Sel_documentViewShouldHandlePrint
      
      # long
      const_set_lazy(:Sel_documentVisibleRect) { sel_register_name("documentVisibleRect") }
      const_attr_reader  :Sel_documentVisibleRect
      
      # long
      const_set_lazy(:Sel_doubleClickAtIndex_) { sel_register_name("doubleClickAtIndex:") }
      const_attr_reader  :Sel_doubleClickAtIndex_
      
      # long
      const_set_lazy(:Sel_doubleValue) { sel_register_name("doubleValue") }
      const_attr_reader  :Sel_doubleValue
      
      # long
      const_set_lazy(:Sel_download) { sel_register_name("download") }
      const_attr_reader  :Sel_download
      
      # long
      const_set_lazy(:Sel_download_decideDestinationWithSuggestedFilename_) { sel_register_name("download:decideDestinationWithSuggestedFilename:") }
      const_attr_reader  :Sel_download_decideDestinationWithSuggestedFilename_
      
      # long
      const_set_lazy(:Sel_dragImage_at_offset_event_pasteboard_source_slideBack_) { sel_register_name("dragImage:at:offset:event:pasteboard:source:slideBack:") }
      const_attr_reader  :Sel_dragImage_at_offset_event_pasteboard_source_slideBack_
      
      # long
      const_set_lazy(:Sel_dragImageForRowsWithIndexes_tableColumns_event_offset_) { sel_register_name("dragImageForRowsWithIndexes:tableColumns:event:offset:") }
      const_attr_reader  :Sel_dragImageForRowsWithIndexes_tableColumns_event_offset_
      
      # long
      const_set_lazy(:Sel_dragSelectionWithEvent_offset_slideBack_) { sel_register_name("dragSelectionWithEvent:offset:slideBack:") }
      const_attr_reader  :Sel_dragSelectionWithEvent_offset_slideBack_
      
      # long
      const_set_lazy(:Sel_draggedImage_beganAt_) { sel_register_name("draggedImage:beganAt:") }
      const_attr_reader  :Sel_draggedImage_beganAt_
      
      # long
      const_set_lazy(:Sel_draggedImage_endedAt_operation_) { sel_register_name("draggedImage:endedAt:operation:") }
      const_attr_reader  :Sel_draggedImage_endedAt_operation_
      
      # long
      const_set_lazy(:Sel_draggingDestinationWindow) { sel_register_name("draggingDestinationWindow") }
      const_attr_reader  :Sel_draggingDestinationWindow
      
      # long
      const_set_lazy(:Sel_draggingEnded_) { sel_register_name("draggingEnded:") }
      const_attr_reader  :Sel_draggingEnded_
      
      # long
      const_set_lazy(:Sel_draggingEntered_) { sel_register_name("draggingEntered:") }
      const_attr_reader  :Sel_draggingEntered_
      
      # long
      const_set_lazy(:Sel_draggingExited_) { sel_register_name("draggingExited:") }
      const_attr_reader  :Sel_draggingExited_
      
      # long
      const_set_lazy(:Sel_draggingLocation) { sel_register_name("draggingLocation") }
      const_attr_reader  :Sel_draggingLocation
      
      # long
      const_set_lazy(:Sel_draggingPasteboard) { sel_register_name("draggingPasteboard") }
      const_attr_reader  :Sel_draggingPasteboard
      
      # long
      const_set_lazy(:Sel_draggingSourceOperationMask) { sel_register_name("draggingSourceOperationMask") }
      const_attr_reader  :Sel_draggingSourceOperationMask
      
      # long
      const_set_lazy(:Sel_draggingSourceOperationMaskForLocal_) { sel_register_name("draggingSourceOperationMaskForLocal:") }
      const_attr_reader  :Sel_draggingSourceOperationMaskForLocal_
      
      # long
      const_set_lazy(:Sel_draggingUpdated_) { sel_register_name("draggingUpdated:") }
      const_attr_reader  :Sel_draggingUpdated_
      
      # long
      const_set_lazy(:Sel_drawAtPoint_) { sel_register_name("drawAtPoint:") }
      const_attr_reader  :Sel_drawAtPoint_
      
      # long
      const_set_lazy(:Sel_drawAtPoint_fromRect_operation_fraction_) { sel_register_name("drawAtPoint:fromRect:operation:fraction:") }
      const_attr_reader  :Sel_drawAtPoint_fromRect_operation_fraction_
      
      # long
      const_set_lazy(:Sel_drawBackgroundForGlyphRange_atPoint_) { sel_register_name("drawBackgroundForGlyphRange:atPoint:") }
      const_attr_reader  :Sel_drawBackgroundForGlyphRange_atPoint_
      
      # long
      const_set_lazy(:Sel_drawFromPoint_toPoint_options_) { sel_register_name("drawFromPoint:toPoint:options:") }
      const_attr_reader  :Sel_drawFromPoint_toPoint_options_
      
      # long
      const_set_lazy(:Sel_drawGlyphsForGlyphRange_atPoint_) { sel_register_name("drawGlyphsForGlyphRange:atPoint:") }
      const_attr_reader  :Sel_drawGlyphsForGlyphRange_atPoint_
      
      # long
      const_set_lazy(:Sel_drawImage_withFrame_inView_) { sel_register_name("drawImage:withFrame:inView:") }
      const_attr_reader  :Sel_drawImage_withFrame_inView_
      
      # long
      const_set_lazy(:Sel_drawInRect_) { sel_register_name("drawInRect:") }
      const_attr_reader  :Sel_drawInRect_
      
      # long
      const_set_lazy(:Sel_drawInRect_angle_) { sel_register_name("drawInRect:angle:") }
      const_attr_reader  :Sel_drawInRect_angle_
      
      # long
      const_set_lazy(:Sel_drawInRect_fromRect_operation_fraction_) { sel_register_name("drawInRect:fromRect:operation:fraction:") }
      const_attr_reader  :Sel_drawInRect_fromRect_operation_fraction_
      
      # long
      const_set_lazy(:Sel_drawInteriorWithFrame_inView_) { sel_register_name("drawInteriorWithFrame:inView:") }
      const_attr_reader  :Sel_drawInteriorWithFrame_inView_
      
      # long
      const_set_lazy(:Sel_drawRect_) { sel_register_name("drawRect:") }
      const_attr_reader  :Sel_drawRect_
      
      # long
      const_set_lazy(:Sel_drawSortIndicatorWithFrame_inView_ascending_priority_) { sel_register_name("drawSortIndicatorWithFrame:inView:ascending:priority:") }
      const_attr_reader  :Sel_drawSortIndicatorWithFrame_inView_ascending_priority_
      
      # long
      const_set_lazy(:Sel_drawStatusBarBackgroundInRect_withHighlight_) { sel_register_name("drawStatusBarBackgroundInRect:withHighlight:") }
      const_attr_reader  :Sel_drawStatusBarBackgroundInRect_withHighlight_
      
      # long
      const_set_lazy(:Sel_drawWithExpansionFrame_inView_) { sel_register_name("drawWithExpansionFrame:inView:") }
      const_attr_reader  :Sel_drawWithExpansionFrame_inView_
      
      # long
      const_set_lazy(:Sel_drawingRectForBounds_) { sel_register_name("drawingRectForBounds:") }
      const_attr_reader  :Sel_drawingRectForBounds_
      
      # long
      const_set_lazy(:Sel_elementAtIndex_associatedPoints_) { sel_register_name("elementAtIndex:associatedPoints:") }
      const_attr_reader  :Sel_elementAtIndex_associatedPoints_
      
      # long
      const_set_lazy(:Sel_elementCount) { sel_register_name("elementCount") }
      const_attr_reader  :Sel_elementCount
      
      # long
      const_set_lazy(:Sel_enableCursorRects) { sel_register_name("enableCursorRects") }
      const_attr_reader  :Sel_enableCursorRects
      
      # long
      const_set_lazy(:Sel_enableFreedObjectCheck_) { sel_register_name("enableFreedObjectCheck:") }
      const_attr_reader  :Sel_enableFreedObjectCheck_
      
      # long
      const_set_lazy(:Sel_endDocument) { sel_register_name("endDocument") }
      const_attr_reader  :Sel_endDocument
      
      # long
      const_set_lazy(:Sel_endEditing) { sel_register_name("endEditing") }
      const_attr_reader  :Sel_endEditing
      
      # long
      const_set_lazy(:Sel_endPage) { sel_register_name("endPage") }
      const_attr_reader  :Sel_endPage
      
      # long
      const_set_lazy(:Sel_endSheet_returnCode_) { sel_register_name("endSheet:returnCode:") }
      const_attr_reader  :Sel_endSheet_returnCode_
      
      # long
      const_set_lazy(:Sel_enterExitEventWithType_location_modifierFlags_timestamp_windowNumber_context_eventNumber_trackingNumber_userData_) { sel_register_name("enterExitEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:trackingNumber:userData:") }
      const_attr_reader  :Sel_enterExitEventWithType_location_modifierFlags_timestamp_windowNumber_context_eventNumber_trackingNumber_userData_
      
      # long
      const_set_lazy(:Sel_enumeratorAtPath_) { sel_register_name("enumeratorAtPath:") }
      const_attr_reader  :Sel_enumeratorAtPath_
      
      # long
      const_set_lazy(:Sel_expandItem_) { sel_register_name("expandItem:") }
      const_attr_reader  :Sel_expandItem_
      
      # long
      const_set_lazy(:Sel_expandItem_expandChildren_) { sel_register_name("expandItem:expandChildren:") }
      const_attr_reader  :Sel_expandItem_expandChildren_
      
      # long
      const_set_lazy(:Sel_expansionFrameWithFrame_inView_) { sel_register_name("expansionFrameWithFrame:inView:") }
      const_attr_reader  :Sel_expansionFrameWithFrame_inView_
      
      # long
      const_set_lazy(:Sel_familyName) { sel_register_name("familyName") }
      const_attr_reader  :Sel_familyName
      
      # long
      const_set_lazy(:Sel_fieldEditor_forObject_) { sel_register_name("fieldEditor:forObject:") }
      const_attr_reader  :Sel_fieldEditor_forObject_
      
      # long
      const_set_lazy(:Sel_fileExistsAtPath_isDirectory_) { sel_register_name("fileExistsAtPath:isDirectory:") }
      const_attr_reader  :Sel_fileExistsAtPath_isDirectory_
      
      # long
      const_set_lazy(:Sel_fileSystemRepresentation) { sel_register_name("fileSystemRepresentation") }
      const_attr_reader  :Sel_fileSystemRepresentation
      
      # long
      const_set_lazy(:Sel_fileURLWithPath_) { sel_register_name("fileURLWithPath:") }
      const_attr_reader  :Sel_fileURLWithPath_
      
      # long
      const_set_lazy(:Sel_filename) { sel_register_name("filename") }
      const_attr_reader  :Sel_filename
      
      # long
      const_set_lazy(:Sel_filenames) { sel_register_name("filenames") }
      const_attr_reader  :Sel_filenames
      
      # long
      const_set_lazy(:Sel_fill) { sel_register_name("fill") }
      const_attr_reader  :Sel_fill
      
      # long
      const_set_lazy(:Sel_fillRect_) { sel_register_name("fillRect:") }
      const_attr_reader  :Sel_fillRect_
      
      # long
      const_set_lazy(:Sel_finishLaunching) { sel_register_name("finishLaunching") }
      const_attr_reader  :Sel_finishLaunching
      
      # long
      const_set_lazy(:Sel_firstIndex) { sel_register_name("firstIndex") }
      const_attr_reader  :Sel_firstIndex
      
      # long
      const_set_lazy(:Sel_firstRectForCharacterRange_) { sel_register_name("firstRectForCharacterRange:") }
      const_attr_reader  :Sel_firstRectForCharacterRange_
      
      # long
      const_set_lazy(:Sel_firstResponder) { sel_register_name("firstResponder") }
      const_attr_reader  :Sel_firstResponder
      
      # long
      const_set_lazy(:Sel_flagsChanged_) { sel_register_name("flagsChanged:") }
      const_attr_reader  :Sel_flagsChanged_
      
      # long
      const_set_lazy(:Sel_floatValue) { sel_register_name("floatValue") }
      const_attr_reader  :Sel_floatValue
      
      # long
      const_set_lazy(:Sel_flushBuffer) { sel_register_name("flushBuffer") }
      const_attr_reader  :Sel_flushBuffer
      
      # long
      const_set_lazy(:Sel_flushGraphics) { sel_register_name("flushGraphics") }
      const_attr_reader  :Sel_flushGraphics
      
      # long
      const_set_lazy(:Sel_font) { sel_register_name("font") }
      const_attr_reader  :Sel_font
      
      # long
      const_set_lazy(:Sel_fontName) { sel_register_name("fontName") }
      const_attr_reader  :Sel_fontName
      
      # long
      const_set_lazy(:Sel_fontWithFamily_traits_weight_size_) { sel_register_name("fontWithFamily:traits:weight:size:") }
      const_attr_reader  :Sel_fontWithFamily_traits_weight_size_
      
      # long
      const_set_lazy(:Sel_fontWithName_size_) { sel_register_name("fontWithName:size:") }
      const_attr_reader  :Sel_fontWithName_size_
      
      # long
      const_set_lazy(:Sel_frame) { sel_register_name("frame") }
      const_attr_reader  :Sel_frame
      
      # long
      const_set_lazy(:Sel_frameOfCellAtColumn_row_) { sel_register_name("frameOfCellAtColumn:row:") }
      const_attr_reader  :Sel_frameOfCellAtColumn_row_
      
      # long
      const_set_lazy(:Sel_frameOfOutlineCellAtRow_) { sel_register_name("frameOfOutlineCellAtRow:") }
      const_attr_reader  :Sel_frameOfOutlineCellAtRow_
      
      # long
      const_set_lazy(:Sel_frameRectForContentRect_) { sel_register_name("frameRectForContentRect:") }
      const_attr_reader  :Sel_frameRectForContentRect_
      
      # long
      const_set_lazy(:Sel_frameSizeForContentSize_hasHorizontalScroller_hasVerticalScroller_borderType_) { sel_register_name("frameSizeForContentSize:hasHorizontalScroller:hasVerticalScroller:borderType:") }
      const_attr_reader  :Sel_frameSizeForContentSize_hasHorizontalScroller_hasVerticalScroller_borderType_
      
      # long
      const_set_lazy(:Sel_fullPathForApplication_) { sel_register_name("fullPathForApplication:") }
      const_attr_reader  :Sel_fullPathForApplication_
      
      # long
      const_set_lazy(:Sel_generalPasteboard) { sel_register_name("generalPasteboard") }
      const_attr_reader  :Sel_generalPasteboard
      
      # long
      const_set_lazy(:Sel_getBitmapDataPlanes_) { sel_register_name("getBitmapDataPlanes:") }
      const_attr_reader  :Sel_getBitmapDataPlanes_
      
      # long
      const_set_lazy(:Sel_getBytes_) { sel_register_name("getBytes:") }
      const_attr_reader  :Sel_getBytes_
      
      # long
      const_set_lazy(:Sel_getBytes_length_) { sel_register_name("getBytes:length:") }
      const_attr_reader  :Sel_getBytes_length_
      
      # long
      const_set_lazy(:Sel_getCharacters_) { sel_register_name("getCharacters:") }
      const_attr_reader  :Sel_getCharacters_
      
      # long
      const_set_lazy(:Sel_getCharacters_range_) { sel_register_name("getCharacters:range:") }
      const_attr_reader  :Sel_getCharacters_range_
      
      # long
      const_set_lazy(:Sel_getComponents_) { sel_register_name("getComponents:") }
      const_attr_reader  :Sel_getComponents_
      
      # long
      const_set_lazy(:Sel_getGlyphs_range_) { sel_register_name("getGlyphs:range:") }
      const_attr_reader  :Sel_getGlyphs_range_
      
      # long
      const_set_lazy(:Sel_getGlyphsInRange_glyphs_characterIndexes_glyphInscriptions_elasticBits_bidiLevels_) { sel_register_name("getGlyphsInRange:glyphs:characterIndexes:glyphInscriptions:elasticBits:bidiLevels:") }
      const_attr_reader  :Sel_getGlyphsInRange_glyphs_characterIndexes_glyphInscriptions_elasticBits_bidiLevels_
      
      # long
      const_set_lazy(:Sel_getIndexes_maxCount_inIndexRange_) { sel_register_name("getIndexes:maxCount:inIndexRange:") }
      const_attr_reader  :Sel_getIndexes_maxCount_inIndexRange_
      
      # long
      const_set_lazy(:Sel_getInfoForFile_application_type_) { sel_register_name("getInfoForFile:application:type:") }
      const_attr_reader  :Sel_getInfoForFile_application_type_
      
      # long
      const_set_lazy(:Sel_getValues_forAttribute_forVirtualScreen_) { sel_register_name("getValues:forAttribute:forVirtualScreen:") }
      const_attr_reader  :Sel_getValues_forAttribute_forVirtualScreen_
      
      # long
      const_set_lazy(:Sel_glyphIndexForCharacterAtIndex_) { sel_register_name("glyphIndexForCharacterAtIndex:") }
      const_attr_reader  :Sel_glyphIndexForCharacterAtIndex_
      
      # long
      const_set_lazy(:Sel_glyphIndexForPoint_inTextContainer_fractionOfDistanceThroughGlyph_) { sel_register_name("glyphIndexForPoint:inTextContainer:fractionOfDistanceThroughGlyph:") }
      const_attr_reader  :Sel_glyphIndexForPoint_inTextContainer_fractionOfDistanceThroughGlyph_
      
      # long
      const_set_lazy(:Sel_glyphRangeForCharacterRange_actualCharacterRange_) { sel_register_name("glyphRangeForCharacterRange:actualCharacterRange:") }
      const_attr_reader  :Sel_glyphRangeForCharacterRange_actualCharacterRange_
      
      # long
      const_set_lazy(:Sel_glyphRangeForTextContainer_) { sel_register_name("glyphRangeForTextContainer:") }
      const_attr_reader  :Sel_glyphRangeForTextContainer_
      
      # long
      const_set_lazy(:Sel_goBack) { sel_register_name("goBack") }
      const_attr_reader  :Sel_goBack
      
      # long
      const_set_lazy(:Sel_goForward) { sel_register_name("goForward") }
      const_attr_reader  :Sel_goForward
      
      # long
      const_set_lazy(:Sel_graphicsContext) { sel_register_name("graphicsContext") }
      const_attr_reader  :Sel_graphicsContext
      
      # long
      const_set_lazy(:Sel_graphicsContextWithBitmapImageRep_) { sel_register_name("graphicsContextWithBitmapImageRep:") }
      const_attr_reader  :Sel_graphicsContextWithBitmapImageRep_
      
      # long
      const_set_lazy(:Sel_graphicsContextWithGraphicsPort_flipped_) { sel_register_name("graphicsContextWithGraphicsPort:flipped:") }
      const_attr_reader  :Sel_graphicsContextWithGraphicsPort_flipped_
      
      # long
      const_set_lazy(:Sel_graphicsContextWithWindow_) { sel_register_name("graphicsContextWithWindow:") }
      const_attr_reader  :Sel_graphicsContextWithWindow_
      
      # long
      const_set_lazy(:Sel_graphicsPort) { sel_register_name("graphicsPort") }
      const_attr_reader  :Sel_graphicsPort
      
      # long
      const_set_lazy(:Sel_greenComponent) { sel_register_name("greenComponent") }
      const_attr_reader  :Sel_greenComponent
      
      # long
      const_set_lazy(:Sel_handleEvent_) { sel_register_name("handleEvent:") }
      const_attr_reader  :Sel_handleEvent_
      
      # long
      const_set_lazy(:Sel_handleMouseEvent_) { sel_register_name("handleMouseEvent:") }
      const_attr_reader  :Sel_handleMouseEvent_
      
      # long
      const_set_lazy(:Sel_hasAlpha) { sel_register_name("hasAlpha") }
      const_attr_reader  :Sel_hasAlpha
      
      # long
      const_set_lazy(:Sel_hasMarkedText) { sel_register_name("hasMarkedText") }
      const_attr_reader  :Sel_hasMarkedText
      
      # long
      const_set_lazy(:Sel_hasPassword) { sel_register_name("hasPassword") }
      const_attr_reader  :Sel_hasPassword
      
      # long
      const_set_lazy(:Sel_hasShadow) { sel_register_name("hasShadow") }
      const_attr_reader  :Sel_hasShadow
      
      # long
      const_set_lazy(:Sel_headerCell) { sel_register_name("headerCell") }
      const_attr_reader  :Sel_headerCell
      
      # long
      const_set_lazy(:Sel_headerRectOfColumn_) { sel_register_name("headerRectOfColumn:") }
      const_attr_reader  :Sel_headerRectOfColumn_
      
      # long
      const_set_lazy(:Sel_headerView) { sel_register_name("headerView") }
      const_attr_reader  :Sel_headerView
      
      # long
      const_set_lazy(:Sel_helpRequested_) { sel_register_name("helpRequested:") }
      const_attr_reader  :Sel_helpRequested_
      
      # long
      const_set_lazy(:Sel_hide_) { sel_register_name("hide:") }
      const_attr_reader  :Sel_hide_
      
      # long
      const_set_lazy(:Sel_hideOtherApplications_) { sel_register_name("hideOtherApplications:") }
      const_attr_reader  :Sel_hideOtherApplications_
      
      # long
      const_set_lazy(:Sel_highlightColorInView_) { sel_register_name("highlightColorInView:") }
      const_attr_reader  :Sel_highlightColorInView_
      
      # long
      const_set_lazy(:Sel_highlightColorWithFrame_inView_) { sel_register_name("highlightColorWithFrame:inView:") }
      const_attr_reader  :Sel_highlightColorWithFrame_inView_
      
      # long
      const_set_lazy(:Sel_highlightSelectionInClipRect_) { sel_register_name("highlightSelectionInClipRect:") }
      const_attr_reader  :Sel_highlightSelectionInClipRect_
      
      # long
      const_set_lazy(:Sel_hitPart) { sel_register_name("hitPart") }
      const_attr_reader  :Sel_hitPart
      
      # long
      const_set_lazy(:Sel_hitTest_) { sel_register_name("hitTest:") }
      const_attr_reader  :Sel_hitTest_
      
      # long
      const_set_lazy(:Sel_hitTestForEvent_inRect_ofView_) { sel_register_name("hitTestForEvent:inRect:ofView:") }
      const_attr_reader  :Sel_hitTestForEvent_inRect_ofView_
      
      # long
      const_set_lazy(:Sel_host) { sel_register_name("host") }
      const_attr_reader  :Sel_host
      
      # long
      const_set_lazy(:Sel_hourOfDay) { sel_register_name("hourOfDay") }
      const_attr_reader  :Sel_hourOfDay
      
      # long
      const_set_lazy(:Sel_iconForFile_) { sel_register_name("iconForFile:") }
      const_attr_reader  :Sel_iconForFile_
      
      # long
      const_set_lazy(:Sel_iconForFileType_) { sel_register_name("iconForFileType:") }
      const_attr_reader  :Sel_iconForFileType_
      
      # long
      const_set_lazy(:Sel_ignore) { sel_register_name("ignore") }
      const_attr_reader  :Sel_ignore
      
      # long
      const_set_lazy(:Sel_ignoreModifierKeysWhileDragging) { sel_register_name("ignoreModifierKeysWhileDragging") }
      const_attr_reader  :Sel_ignoreModifierKeysWhileDragging
      
      # long
      const_set_lazy(:Sel_image) { sel_register_name("image") }
      const_attr_reader  :Sel_image
      
      # long
      const_set_lazy(:Sel_imageInterpolation) { sel_register_name("imageInterpolation") }
      const_attr_reader  :Sel_imageInterpolation
      
      # long
      const_set_lazy(:Sel_imageNamed_) { sel_register_name("imageNamed:") }
      const_attr_reader  :Sel_imageNamed_
      
      # long
      const_set_lazy(:Sel_imageRectForBounds_) { sel_register_name("imageRectForBounds:") }
      const_attr_reader  :Sel_imageRectForBounds_
      
      # long
      const_set_lazy(:Sel_imageRepWithData_) { sel_register_name("imageRepWithData:") }
      const_attr_reader  :Sel_imageRepWithData_
      
      # long
      const_set_lazy(:Sel_imageablePageBounds) { sel_register_name("imageablePageBounds") }
      const_attr_reader  :Sel_imageablePageBounds
      
      # long
      const_set_lazy(:Sel_increment) { sel_register_name("increment") }
      const_attr_reader  :Sel_increment
      
      # long
      const_set_lazy(:Sel_indentationPerLevel) { sel_register_name("indentationPerLevel") }
      const_attr_reader  :Sel_indentationPerLevel
      
      # long
      const_set_lazy(:Sel_indexOfItemWithTarget_andAction_) { sel_register_name("indexOfItemWithTarget:andAction:") }
      const_attr_reader  :Sel_indexOfItemWithTarget_andAction_
      
      # long
      const_set_lazy(:Sel_indexOfObjectIdenticalTo_) { sel_register_name("indexOfObjectIdenticalTo:") }
      const_attr_reader  :Sel_indexOfObjectIdenticalTo_
      
      # long
      const_set_lazy(:Sel_indexOfSelectedItem) { sel_register_name("indexOfSelectedItem") }
      const_attr_reader  :Sel_indexOfSelectedItem
      
      # long
      const_set_lazy(:Sel_infoDictionary) { sel_register_name("infoDictionary") }
      const_attr_reader  :Sel_infoDictionary
      
      # long
      const_set_lazy(:Sel_init) { sel_register_name("init") }
      const_attr_reader  :Sel_init
      
      # long
      const_set_lazy(:Sel_initByReferencingFile_) { sel_register_name("initByReferencingFile:") }
      const_attr_reader  :Sel_initByReferencingFile_
      
      # long
      const_set_lazy(:Sel_initListDescriptor) { sel_register_name("initListDescriptor") }
      const_attr_reader  :Sel_initListDescriptor
      
      # long
      const_set_lazy(:Sel_initWithAttributes_) { sel_register_name("initWithAttributes:") }
      const_attr_reader  :Sel_initWithAttributes_
      
      # long
      const_set_lazy(:Sel_initWithBitmapDataPlanes_pixelsWide_pixelsHigh_bitsPerSample_samplesPerPixel_hasAlpha_isPlanar_colorSpaceName_bitmapFormat_bytesPerRow_bitsPerPixel_) { sel_register_name("initWithBitmapDataPlanes:pixelsWide:pixelsHigh:bitsPerSample:samplesPerPixel:hasAlpha:isPlanar:colorSpaceName:bitmapFormat:bytesPerRow:bitsPerPixel:") }
      const_attr_reader  :Sel_initWithBitmapDataPlanes_pixelsWide_pixelsHigh_bitsPerSample_samplesPerPixel_hasAlpha_isPlanar_colorSpaceName_bitmapFormat_bytesPerRow_bitsPerPixel_
      
      # long
      const_set_lazy(:Sel_initWithBitmapDataPlanes_pixelsWide_pixelsHigh_bitsPerSample_samplesPerPixel_hasAlpha_isPlanar_colorSpaceName_bytesPerRow_bitsPerPixel_) { sel_register_name("initWithBitmapDataPlanes:pixelsWide:pixelsHigh:bitsPerSample:samplesPerPixel:hasAlpha:isPlanar:colorSpaceName:bytesPerRow:bitsPerPixel:") }
      const_attr_reader  :Sel_initWithBitmapDataPlanes_pixelsWide_pixelsHigh_bitsPerSample_samplesPerPixel_hasAlpha_isPlanar_colorSpaceName_bytesPerRow_bitsPerPixel_
      
      # long
      const_set_lazy(:Sel_initWithCapacity_) { sel_register_name("initWithCapacity:") }
      const_attr_reader  :Sel_initWithCapacity_
      
      # long
      const_set_lazy(:Sel_initWithCharacters_length_) { sel_register_name("initWithCharacters:length:") }
      const_attr_reader  :Sel_initWithCharacters_length_
      
      # long
      const_set_lazy(:Sel_initWithContainerSize_) { sel_register_name("initWithContainerSize:") }
      const_attr_reader  :Sel_initWithContainerSize_
      
      # long
      const_set_lazy(:Sel_initWithContentRect_styleMask_backing_defer_) { sel_register_name("initWithContentRect:styleMask:backing:defer:") }
      const_attr_reader  :Sel_initWithContentRect_styleMask_backing_defer_
      
      # long
      const_set_lazy(:Sel_initWithContentRect_styleMask_backing_defer_screen_) { sel_register_name("initWithContentRect:styleMask:backing:defer:screen:") }
      const_attr_reader  :Sel_initWithContentRect_styleMask_backing_defer_screen_
      
      # long
      const_set_lazy(:Sel_initWithContentsOfFile_) { sel_register_name("initWithContentsOfFile:") }
      const_attr_reader  :Sel_initWithContentsOfFile_
      
      # long
      const_set_lazy(:Sel_initWithData_) { sel_register_name("initWithData:") }
      const_attr_reader  :Sel_initWithData_
      
      # long
      const_set_lazy(:Sel_initWithDictionary_) { sel_register_name("initWithDictionary:") }
      const_attr_reader  :Sel_initWithDictionary_
      
      # long
      const_set_lazy(:Sel_initWithFileWrapper_) { sel_register_name("initWithFileWrapper:") }
      const_attr_reader  :Sel_initWithFileWrapper_
      
      # long
      const_set_lazy(:Sel_initWithFocusedViewRect_) { sel_register_name("initWithFocusedViewRect:") }
      const_attr_reader  :Sel_initWithFocusedViewRect_
      
      # long
      const_set_lazy(:Sel_initWithFormat_shareContext_) { sel_register_name("initWithFormat:shareContext:") }
      const_attr_reader  :Sel_initWithFormat_shareContext_
      
      # long
      const_set_lazy(:Sel_initWithFrame_) { sel_register_name("initWithFrame:") }
      const_attr_reader  :Sel_initWithFrame_
      
      # long
      const_set_lazy(:Sel_initWithFrame_frameName_groupName_) { sel_register_name("initWithFrame:frameName:groupName:") }
      const_attr_reader  :Sel_initWithFrame_frameName_groupName_
      
      # long
      const_set_lazy(:Sel_initWithFrame_pullsDown_) { sel_register_name("initWithFrame:pullsDown:") }
      const_attr_reader  :Sel_initWithFrame_pullsDown_
      
      # long
      const_set_lazy(:Sel_initWithIdentifier_) { sel_register_name("initWithIdentifier:") }
      const_attr_reader  :Sel_initWithIdentifier_
      
      # long
      const_set_lazy(:Sel_initWithImage_hotSpot_) { sel_register_name("initWithImage:hotSpot:") }
      const_attr_reader  :Sel_initWithImage_hotSpot_
      
      # long
      const_set_lazy(:Sel_initWithIndex_) { sel_register_name("initWithIndex:") }
      const_attr_reader  :Sel_initWithIndex_
      
      # long
      const_set_lazy(:Sel_initWithIndexesInRange_) { sel_register_name("initWithIndexesInRange:") }
      const_attr_reader  :Sel_initWithIndexesInRange_
      
      # long
      const_set_lazy(:Sel_initWithItemIdentifier_) { sel_register_name("initWithItemIdentifier:") }
      const_attr_reader  :Sel_initWithItemIdentifier_
      
      # long
      const_set_lazy(:Sel_initWithRect_options_owner_userInfo_) { sel_register_name("initWithRect:options:owner:userInfo:") }
      const_attr_reader  :Sel_initWithRect_options_owner_userInfo_
      
      # long
      const_set_lazy(:Sel_initWithSize_) { sel_register_name("initWithSize:") }
      const_attr_reader  :Sel_initWithSize_
      
      # long
      const_set_lazy(:Sel_initWithStartingColor_endingColor_) { sel_register_name("initWithStartingColor:endingColor:") }
      const_attr_reader  :Sel_initWithStartingColor_endingColor_
      
      # long
      const_set_lazy(:Sel_initWithString_) { sel_register_name("initWithString:") }
      const_attr_reader  :Sel_initWithString_
      
      # long
      const_set_lazy(:Sel_initWithString_attributes_) { sel_register_name("initWithString:attributes:") }
      const_attr_reader  :Sel_initWithString_attributes_
      
      # long
      const_set_lazy(:Sel_initWithTitle_) { sel_register_name("initWithTitle:") }
      const_attr_reader  :Sel_initWithTitle_
      
      # long
      const_set_lazy(:Sel_initWithTitle_action_keyEquivalent_) { sel_register_name("initWithTitle:action:keyEquivalent:") }
      const_attr_reader  :Sel_initWithTitle_action_keyEquivalent_
      
      # long
      const_set_lazy(:Sel_initWithTransform_) { sel_register_name("initWithTransform:") }
      const_attr_reader  :Sel_initWithTransform_
      
      # long
      const_set_lazy(:Sel_initWithType_location_) { sel_register_name("initWithType:location:") }
      const_attr_reader  :Sel_initWithType_location_
      
      # long
      const_set_lazy(:Sel_initWithURL_) { sel_register_name("initWithURL:") }
      const_attr_reader  :Sel_initWithURL_
      
      # long
      const_set_lazy(:Sel_insertItem_atIndex_) { sel_register_name("insertItem:atIndex:") }
      const_attr_reader  :Sel_insertItem_atIndex_
      
      # long
      const_set_lazy(:Sel_insertItemWithItemIdentifier_atIndex_) { sel_register_name("insertItemWithItemIdentifier:atIndex:") }
      const_attr_reader  :Sel_insertItemWithItemIdentifier_atIndex_
      
      # long
      const_set_lazy(:Sel_insertItemWithObjectValue_atIndex_) { sel_register_name("insertItemWithObjectValue:atIndex:") }
      const_attr_reader  :Sel_insertItemWithObjectValue_atIndex_
      
      # long
      const_set_lazy(:Sel_insertTabViewItem_atIndex_) { sel_register_name("insertTabViewItem:atIndex:") }
      const_attr_reader  :Sel_insertTabViewItem_atIndex_
      
      # long
      const_set_lazy(:Sel_insertText_) { sel_register_name("insertText:") }
      const_attr_reader  :Sel_insertText_
      
      # long
      const_set_lazy(:Sel_intValue) { sel_register_name("intValue") }
      const_attr_reader  :Sel_intValue
      
      # long
      const_set_lazy(:Sel_integerValue) { sel_register_name("integerValue") }
      const_attr_reader  :Sel_integerValue
      
      # long
      const_set_lazy(:Sel_intercellSpacing) { sel_register_name("intercellSpacing") }
      const_attr_reader  :Sel_intercellSpacing
      
      # long
      const_set_lazy(:Sel_interpretKeyEvents_) { sel_register_name("interpretKeyEvents:") }
      const_attr_reader  :Sel_interpretKeyEvents_
      
      # long
      const_set_lazy(:Sel_invalidate) { sel_register_name("invalidate") }
      const_attr_reader  :Sel_invalidate
      
      # long
      const_set_lazy(:Sel_invalidateShadow) { sel_register_name("invalidateShadow") }
      const_attr_reader  :Sel_invalidateShadow
      
      # long
      const_set_lazy(:Sel_invert) { sel_register_name("invert") }
      const_attr_reader  :Sel_invert
      
      # long
      const_set_lazy(:Sel_isActive) { sel_register_name("isActive") }
      const_attr_reader  :Sel_isActive
      
      # long
      const_set_lazy(:Sel_isDocumentEdited) { sel_register_name("isDocumentEdited") }
      const_attr_reader  :Sel_isDocumentEdited
      
      # long
      const_set_lazy(:Sel_isDrawingToScreen) { sel_register_name("isDrawingToScreen") }
      const_attr_reader  :Sel_isDrawingToScreen
      
      # long
      const_set_lazy(:Sel_isEmpty) { sel_register_name("isEmpty") }
      const_attr_reader  :Sel_isEmpty
      
      # long
      const_set_lazy(:Sel_isEnabled) { sel_register_name("isEnabled") }
      const_attr_reader  :Sel_isEnabled
      
      # long
      const_set_lazy(:Sel_isEqual_) { sel_register_name("isEqual:") }
      const_attr_reader  :Sel_isEqual_
      
      # long
      const_set_lazy(:Sel_isEqualTo_) { sel_register_name("isEqualTo:") }
      const_attr_reader  :Sel_isEqualTo_
      
      # long
      const_set_lazy(:Sel_isEqualToString_) { sel_register_name("isEqualToString:") }
      const_attr_reader  :Sel_isEqualToString_
      
      # long
      const_set_lazy(:Sel_isFilePackageAtPath_) { sel_register_name("isFilePackageAtPath:") }
      const_attr_reader  :Sel_isFilePackageAtPath_
      
      # long
      const_set_lazy(:Sel_isFileURL) { sel_register_name("isFileURL") }
      const_attr_reader  :Sel_isFileURL
      
      # long
      const_set_lazy(:Sel_isFlipped) { sel_register_name("isFlipped") }
      const_attr_reader  :Sel_isFlipped
      
      # long
      const_set_lazy(:Sel_isHidden) { sel_register_name("isHidden") }
      const_attr_reader  :Sel_isHidden
      
      # long
      const_set_lazy(:Sel_isHiddenOrHasHiddenAncestor) { sel_register_name("isHiddenOrHasHiddenAncestor") }
      const_attr_reader  :Sel_isHiddenOrHasHiddenAncestor
      
      # long
      const_set_lazy(:Sel_isHighlighted) { sel_register_name("isHighlighted") }
      const_attr_reader  :Sel_isHighlighted
      
      # long
      const_set_lazy(:Sel_isItemExpanded_) { sel_register_name("isItemExpanded:") }
      const_attr_reader  :Sel_isItemExpanded_
      
      # long
      const_set_lazy(:Sel_isKeyWindow) { sel_register_name("isKeyWindow") }
      const_attr_reader  :Sel_isKeyWindow
      
      # long
      const_set_lazy(:Sel_isKindOfClass_) { sel_register_name("isKindOfClass:") }
      const_attr_reader  :Sel_isKindOfClass_
      
      # long
      const_set_lazy(:Sel_isMainThread) { sel_register_name("isMainThread") }
      const_attr_reader  :Sel_isMainThread
      
      # long
      const_set_lazy(:Sel_isMiniaturized) { sel_register_name("isMiniaturized") }
      const_attr_reader  :Sel_isMiniaturized
      
      # long
      const_set_lazy(:Sel_isOpaque) { sel_register_name("isOpaque") }
      const_attr_reader  :Sel_isOpaque
      
      # long
      const_set_lazy(:Sel_isPlanar) { sel_register_name("isPlanar") }
      const_attr_reader  :Sel_isPlanar
      
      # long
      const_set_lazy(:Sel_isRowSelected_) { sel_register_name("isRowSelected:") }
      const_attr_reader  :Sel_isRowSelected_
      
      # long
      const_set_lazy(:Sel_isRunning) { sel_register_name("isRunning") }
      const_attr_reader  :Sel_isRunning
      
      # long
      const_set_lazy(:Sel_isSessionOnly) { sel_register_name("isSessionOnly") }
      const_attr_reader  :Sel_isSessionOnly
      
      # long
      const_set_lazy(:Sel_isSheet) { sel_register_name("isSheet") }
      const_attr_reader  :Sel_isSheet
      
      # long
      const_set_lazy(:Sel_isVisible) { sel_register_name("isVisible") }
      const_attr_reader  :Sel_isVisible
      
      # long
      const_set_lazy(:Sel_isZoomed) { sel_register_name("isZoomed") }
      const_attr_reader  :Sel_isZoomed
      
      # long
      const_set_lazy(:Sel_itemArray) { sel_register_name("itemArray") }
      const_attr_reader  :Sel_itemArray
      
      # long
      const_set_lazy(:Sel_itemAtIndex_) { sel_register_name("itemAtIndex:") }
      const_attr_reader  :Sel_itemAtIndex_
      
      # long
      const_set_lazy(:Sel_itemAtRow_) { sel_register_name("itemAtRow:") }
      const_attr_reader  :Sel_itemAtRow_
      
      # long
      const_set_lazy(:Sel_itemIdentifier) { sel_register_name("itemIdentifier") }
      const_attr_reader  :Sel_itemIdentifier
      
      # long
      const_set_lazy(:Sel_itemObjectValueAtIndex_) { sel_register_name("itemObjectValueAtIndex:") }
      const_attr_reader  :Sel_itemObjectValueAtIndex_
      
      # long
      const_set_lazy(:Sel_itemTitleAtIndex_) { sel_register_name("itemTitleAtIndex:") }
      const_attr_reader  :Sel_itemTitleAtIndex_
      
      # long
      const_set_lazy(:Sel_jobDisposition) { sel_register_name("jobDisposition") }
      const_attr_reader  :Sel_jobDisposition
      
      # long
      const_set_lazy(:Sel_keyCode) { sel_register_name("keyCode") }
      const_attr_reader  :Sel_keyCode
      
      # long
      const_set_lazy(:Sel_keyDown_) { sel_register_name("keyDown:") }
      const_attr_reader  :Sel_keyDown_
      
      # long
      const_set_lazy(:Sel_keyEquivalent) { sel_register_name("keyEquivalent") }
      const_attr_reader  :Sel_keyEquivalent
      
      # long
      const_set_lazy(:Sel_keyEquivalentModifierMask) { sel_register_name("keyEquivalentModifierMask") }
      const_attr_reader  :Sel_keyEquivalentModifierMask
      
      # long
      const_set_lazy(:Sel_keyUp_) { sel_register_name("keyUp:") }
      const_attr_reader  :Sel_keyUp_
      
      # long
      const_set_lazy(:Sel_keyWindow) { sel_register_name("keyWindow") }
      const_attr_reader  :Sel_keyWindow
      
      # long
      const_set_lazy(:Sel_knobThickness) { sel_register_name("knobThickness") }
      const_attr_reader  :Sel_knobThickness
      
      # long
      const_set_lazy(:Sel_lastPathComponent) { sel_register_name("lastPathComponent") }
      const_attr_reader  :Sel_lastPathComponent
      
      # long
      const_set_lazy(:Sel_layoutManager) { sel_register_name("layoutManager") }
      const_attr_reader  :Sel_layoutManager
      
      # long
      const_set_lazy(:Sel_leading) { sel_register_name("leading") }
      const_attr_reader  :Sel_leading
      
      # long
      const_set_lazy(:Sel_length) { sel_register_name("length") }
      const_attr_reader  :Sel_length
      
      # long
      const_set_lazy(:Sel_levelForItem_) { sel_register_name("levelForItem:") }
      const_attr_reader  :Sel_levelForItem_
      
      # long
      const_set_lazy(:Sel_lineFragmentUsedRectForGlyphAtIndex_effectiveRange_) { sel_register_name("lineFragmentUsedRectForGlyphAtIndex:effectiveRange:") }
      const_attr_reader  :Sel_lineFragmentUsedRectForGlyphAtIndex_effectiveRange_
      
      # long
      const_set_lazy(:Sel_lineFragmentUsedRectForGlyphAtIndex_effectiveRange_withoutAdditionalLayout_) { sel_register_name("lineFragmentUsedRectForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:") }
      const_attr_reader  :Sel_lineFragmentUsedRectForGlyphAtIndex_effectiveRange_withoutAdditionalLayout_
      
      # long
      const_set_lazy(:Sel_lineToPoint_) { sel_register_name("lineToPoint:") }
      const_attr_reader  :Sel_lineToPoint_
      
      # long
      const_set_lazy(:Sel_linkTextAttributes) { sel_register_name("linkTextAttributes") }
      const_attr_reader  :Sel_linkTextAttributes
      
      # long
      const_set_lazy(:Sel_loadHTMLString_baseURL_) { sel_register_name("loadHTMLString:baseURL:") }
      const_attr_reader  :Sel_loadHTMLString_baseURL_
      
      # long
      const_set_lazy(:Sel_loadNibFile_externalNameTable_withZone_) { sel_register_name("loadNibFile:externalNameTable:withZone:") }
      const_attr_reader  :Sel_loadNibFile_externalNameTable_withZone_
      
      # long
      const_set_lazy(:Sel_loadRequest_) { sel_register_name("loadRequest:") }
      const_attr_reader  :Sel_loadRequest_
      
      # long
      const_set_lazy(:Sel_localizedDescription) { sel_register_name("localizedDescription") }
      const_attr_reader  :Sel_localizedDescription
      
      # long
      const_set_lazy(:Sel_location) { sel_register_name("location") }
      const_attr_reader  :Sel_location
      
      # long
      const_set_lazy(:Sel_locationForGlyphAtIndex_) { sel_register_name("locationForGlyphAtIndex:") }
      const_attr_reader  :Sel_locationForGlyphAtIndex_
      
      # long
      const_set_lazy(:Sel_locationInWindow) { sel_register_name("locationInWindow") }
      const_attr_reader  :Sel_locationInWindow
      
      # long
      const_set_lazy(:Sel_lockFocus) { sel_register_name("lockFocus") }
      const_attr_reader  :Sel_lockFocus
      
      # long
      const_set_lazy(:Sel_lowercaseString) { sel_register_name("lowercaseString") }
      const_attr_reader  :Sel_lowercaseString
      
      # long
      const_set_lazy(:Sel_mainBundle) { sel_register_name("mainBundle") }
      const_attr_reader  :Sel_mainBundle
      
      # long
      const_set_lazy(:Sel_mainFrame) { sel_register_name("mainFrame") }
      const_attr_reader  :Sel_mainFrame
      
      # long
      const_set_lazy(:Sel_mainMenu) { sel_register_name("mainMenu") }
      const_attr_reader  :Sel_mainMenu
      
      # long
      const_set_lazy(:Sel_mainRunLoop) { sel_register_name("mainRunLoop") }
      const_attr_reader  :Sel_mainRunLoop
      
      # long
      const_set_lazy(:Sel_mainScreen) { sel_register_name("mainScreen") }
      const_attr_reader  :Sel_mainScreen
      
      # long
      const_set_lazy(:Sel_makeCurrentContext) { sel_register_name("makeCurrentContext") }
      const_attr_reader  :Sel_makeCurrentContext
      
      # long
      const_set_lazy(:Sel_makeFirstResponder_) { sel_register_name("makeFirstResponder:") }
      const_attr_reader  :Sel_makeFirstResponder_
      
      # long
      const_set_lazy(:Sel_makeKeyAndOrderFront_) { sel_register_name("makeKeyAndOrderFront:") }
      const_attr_reader  :Sel_makeKeyAndOrderFront_
      
      # long
      const_set_lazy(:Sel_markedRange) { sel_register_name("markedRange") }
      const_attr_reader  :Sel_markedRange
      
      # long
      const_set_lazy(:Sel_markedTextAttributes) { sel_register_name("markedTextAttributes") }
      const_attr_reader  :Sel_markedTextAttributes
      
      # long
      const_set_lazy(:Sel_maxValue) { sel_register_name("maxValue") }
      const_attr_reader  :Sel_maxValue
      
      # long
      const_set_lazy(:Sel_maximum) { sel_register_name("maximum") }
      const_attr_reader  :Sel_maximum
      
      # long
      const_set_lazy(:Sel_maximumFractionDigits) { sel_register_name("maximumFractionDigits") }
      const_attr_reader  :Sel_maximumFractionDigits
      
      # long
      const_set_lazy(:Sel_maximumIntegerDigits) { sel_register_name("maximumIntegerDigits") }
      const_attr_reader  :Sel_maximumIntegerDigits
      
      # long
      const_set_lazy(:Sel_menu) { sel_register_name("menu") }
      const_attr_reader  :Sel_menu
      
      # long
      const_set_lazy(:Sel_menu_willHighlightItem_) { sel_register_name("menu:willHighlightItem:") }
      const_attr_reader  :Sel_menu_willHighlightItem_
      
      # long
      const_set_lazy(:Sel_menuDidClose_) { sel_register_name("menuDidClose:") }
      const_attr_reader  :Sel_menuDidClose_
      
      # long
      const_set_lazy(:Sel_menuForEvent_) { sel_register_name("menuForEvent:") }
      const_attr_reader  :Sel_menuForEvent_
      
      # long
      const_set_lazy(:Sel_menuNeedsUpdate_) { sel_register_name("menuNeedsUpdate:") }
      const_attr_reader  :Sel_menuNeedsUpdate_
      
      # long
      const_set_lazy(:Sel_menuWillOpen_) { sel_register_name("menuWillOpen:") }
      const_attr_reader  :Sel_menuWillOpen_
      
      # long
      const_set_lazy(:Sel_metaKey) { sel_register_name("metaKey") }
      const_attr_reader  :Sel_metaKey
      
      # long
      const_set_lazy(:Sel_minFrameWidthWithTitle_styleMask_) { sel_register_name("minFrameWidthWithTitle:styleMask:") }
      const_attr_reader  :Sel_minFrameWidthWithTitle_styleMask_
      
      # long
      const_set_lazy(:Sel_minSize) { sel_register_name("minSize") }
      const_attr_reader  :Sel_minSize
      
      # long
      const_set_lazy(:Sel_minValue) { sel_register_name("minValue") }
      const_attr_reader  :Sel_minValue
      
      # long
      const_set_lazy(:Sel_miniaturize_) { sel_register_name("miniaturize:") }
      const_attr_reader  :Sel_miniaturize_
      
      # long
      const_set_lazy(:Sel_minimum) { sel_register_name("minimum") }
      const_attr_reader  :Sel_minimum
      
      # long
      const_set_lazy(:Sel_minimumSize) { sel_register_name("minimumSize") }
      const_attr_reader  :Sel_minimumSize
      
      # long
      const_set_lazy(:Sel_minuteOfHour) { sel_register_name("minuteOfHour") }
      const_attr_reader  :Sel_minuteOfHour
      
      # long
      const_set_lazy(:Sel_modifierFlags) { sel_register_name("modifierFlags") }
      const_attr_reader  :Sel_modifierFlags
      
      # long
      const_set_lazy(:Sel_monthOfYear) { sel_register_name("monthOfYear") }
      const_attr_reader  :Sel_monthOfYear
      
      # long
      const_set_lazy(:Sel_mouseDown_) { sel_register_name("mouseDown:") }
      const_attr_reader  :Sel_mouseDown_
      
      # long
      const_set_lazy(:Sel_mouseDragged_) { sel_register_name("mouseDragged:") }
      const_attr_reader  :Sel_mouseDragged_
      
      # long
      const_set_lazy(:Sel_mouseEntered_) { sel_register_name("mouseEntered:") }
      const_attr_reader  :Sel_mouseEntered_
      
      # long
      const_set_lazy(:Sel_mouseExited_) { sel_register_name("mouseExited:") }
      const_attr_reader  :Sel_mouseExited_
      
      # long
      const_set_lazy(:Sel_mouseLocation) { sel_register_name("mouseLocation") }
      const_attr_reader  :Sel_mouseLocation
      
      # long
      const_set_lazy(:Sel_mouseLocationOutsideOfEventStream) { sel_register_name("mouseLocationOutsideOfEventStream") }
      const_attr_reader  :Sel_mouseLocationOutsideOfEventStream
      
      # long
      const_set_lazy(:Sel_mouseMoved_) { sel_register_name("mouseMoved:") }
      const_attr_reader  :Sel_mouseMoved_
      
      # long
      const_set_lazy(:Sel_mouseUp_) { sel_register_name("mouseUp:") }
      const_attr_reader  :Sel_mouseUp_
      
      # long
      const_set_lazy(:Sel_moveColumn_toColumn_) { sel_register_name("moveColumn:toColumn:") }
      const_attr_reader  :Sel_moveColumn_toColumn_
      
      # long
      const_set_lazy(:Sel_moveToBeginningOfParagraph_) { sel_register_name("moveToBeginningOfParagraph:") }
      const_attr_reader  :Sel_moveToBeginningOfParagraph_
      
      # long
      const_set_lazy(:Sel_moveToEndOfParagraph_) { sel_register_name("moveToEndOfParagraph:") }
      const_attr_reader  :Sel_moveToEndOfParagraph_
      
      # long
      const_set_lazy(:Sel_moveToPoint_) { sel_register_name("moveToPoint:") }
      const_attr_reader  :Sel_moveToPoint_
      
      # long
      const_set_lazy(:Sel_moveUp_) { sel_register_name("moveUp:") }
      const_attr_reader  :Sel_moveUp_
      
      # long
      const_set_lazy(:Sel_mutableCopy) { sel_register_name("mutableCopy") }
      const_attr_reader  :Sel_mutableCopy
      
      # long
      const_set_lazy(:Sel_mutableString) { sel_register_name("mutableString") }
      const_attr_reader  :Sel_mutableString
      
      # long
      const_set_lazy(:Sel_name) { sel_register_name("name") }
      const_attr_reader  :Sel_name
      
      # long
      const_set_lazy(:Sel_nextEventMatchingMask_untilDate_inMode_dequeue_) { sel_register_name("nextEventMatchingMask:untilDate:inMode:dequeue:") }
      const_attr_reader  :Sel_nextEventMatchingMask_untilDate_inMode_dequeue_
      
      # long
      const_set_lazy(:Sel_nextObject) { sel_register_name("nextObject") }
      const_attr_reader  :Sel_nextObject
      
      # long
      const_set_lazy(:Sel_nextState) { sel_register_name("nextState") }
      const_attr_reader  :Sel_nextState
      
      # long
      const_set_lazy(:Sel_nextWordFromIndex_forward_) { sel_register_name("nextWordFromIndex:forward:") }
      const_attr_reader  :Sel_nextWordFromIndex_forward_
      
      # long
      const_set_lazy(:Sel_noResponderFor_) { sel_register_name("noResponderFor:") }
      const_attr_reader  :Sel_noResponderFor_
      
      # long
      const_set_lazy(:Sel_noteNumberOfRowsChanged) { sel_register_name("noteNumberOfRowsChanged") }
      const_attr_reader  :Sel_noteNumberOfRowsChanged
      
      # long
      const_set_lazy(:Sel_numberOfColumns) { sel_register_name("numberOfColumns") }
      const_attr_reader  :Sel_numberOfColumns
      
      # long
      const_set_lazy(:Sel_numberOfComponents) { sel_register_name("numberOfComponents") }
      const_attr_reader  :Sel_numberOfComponents
      
      # long
      const_set_lazy(:Sel_numberOfGlyphs) { sel_register_name("numberOfGlyphs") }
      const_attr_reader  :Sel_numberOfGlyphs
      
      # long
      const_set_lazy(:Sel_numberOfItems) { sel_register_name("numberOfItems") }
      const_attr_reader  :Sel_numberOfItems
      
      # long
      const_set_lazy(:Sel_numberOfPlanes) { sel_register_name("numberOfPlanes") }
      const_attr_reader  :Sel_numberOfPlanes
      
      # long
      const_set_lazy(:Sel_numberOfRows) { sel_register_name("numberOfRows") }
      const_attr_reader  :Sel_numberOfRows
      
      # long
      const_set_lazy(:Sel_numberOfRowsInTableView_) { sel_register_name("numberOfRowsInTableView:") }
      const_attr_reader  :Sel_numberOfRowsInTableView_
      
      # long
      const_set_lazy(:Sel_numberOfSelectedRows) { sel_register_name("numberOfSelectedRows") }
      const_attr_reader  :Sel_numberOfSelectedRows
      
      # long
      const_set_lazy(:Sel_numberOfVisibleItems) { sel_register_name("numberOfVisibleItems") }
      const_attr_reader  :Sel_numberOfVisibleItems
      
      # long
      const_set_lazy(:Sel_numberWithBool_) { sel_register_name("numberWithBool:") }
      const_attr_reader  :Sel_numberWithBool_
      
      # long
      const_set_lazy(:Sel_numberWithDouble_) { sel_register_name("numberWithDouble:") }
      const_attr_reader  :Sel_numberWithDouble_
      
      # long
      const_set_lazy(:Sel_numberWithInt_) { sel_register_name("numberWithInt:") }
      const_attr_reader  :Sel_numberWithInt_
      
      # long
      const_set_lazy(:Sel_numberWithInteger_) { sel_register_name("numberWithInteger:") }
      const_attr_reader  :Sel_numberWithInteger_
      
      # long
      const_set_lazy(:Sel_objCType) { sel_register_name("objCType") }
      const_attr_reader  :Sel_objCType
      
      # long
      const_set_lazy(:Sel_object) { sel_register_name("object") }
      const_attr_reader  :Sel_object
      
      # long
      const_set_lazy(:Sel_objectAtIndex_) { sel_register_name("objectAtIndex:") }
      const_attr_reader  :Sel_objectAtIndex_
      
      # long
      const_set_lazy(:Sel_objectEnumerator) { sel_register_name("objectEnumerator") }
      const_attr_reader  :Sel_objectEnumerator
      
      # long
      const_set_lazy(:Sel_objectForInfoDictionaryKey_) { sel_register_name("objectForInfoDictionaryKey:") }
      const_attr_reader  :Sel_objectForInfoDictionaryKey_
      
      # long
      const_set_lazy(:Sel_objectForKey_) { sel_register_name("objectForKey:") }
      const_attr_reader  :Sel_objectForKey_
      
      # long
      const_set_lazy(:Sel_objectValues) { sel_register_name("objectValues") }
      const_attr_reader  :Sel_objectValues
      
      # long
      const_set_lazy(:Sel_openFile_withApplication_) { sel_register_name("openFile:withApplication:") }
      const_attr_reader  :Sel_openFile_withApplication_
      
      # long
      const_set_lazy(:Sel_openPanel) { sel_register_name("openPanel") }
      const_attr_reader  :Sel_openPanel
      
      # long
      const_set_lazy(:Sel_openURL_) { sel_register_name("openURL:") }
      const_attr_reader  :Sel_openURL_
      
      # long
      const_set_lazy(:Sel_openURLs_withAppBundleIdentifier_options_additionalEventParamDescriptor_launchIdentifiers_) { sel_register_name("openURLs:withAppBundleIdentifier:options:additionalEventParamDescriptor:launchIdentifiers:") }
      const_attr_reader  :Sel_openURLs_withAppBundleIdentifier_options_additionalEventParamDescriptor_launchIdentifiers_
      
      # long
      const_set_lazy(:Sel_options) { sel_register_name("options") }
      const_attr_reader  :Sel_options
      
      # long
      const_set_lazy(:Sel_orderBack_) { sel_register_name("orderBack:") }
      const_attr_reader  :Sel_orderBack_
      
      # long
      const_set_lazy(:Sel_orderFront_) { sel_register_name("orderFront:") }
      const_attr_reader  :Sel_orderFront_
      
      # long
      const_set_lazy(:Sel_orderFrontRegardless) { sel_register_name("orderFrontRegardless") }
      const_attr_reader  :Sel_orderFrontRegardless
      
      # long
      const_set_lazy(:Sel_orderFrontStandardAboutPanel_) { sel_register_name("orderFrontStandardAboutPanel:") }
      const_attr_reader  :Sel_orderFrontStandardAboutPanel_
      
      # long
      const_set_lazy(:Sel_orderOut_) { sel_register_name("orderOut:") }
      const_attr_reader  :Sel_orderOut_
      
      # long
      const_set_lazy(:Sel_orderWindow_relativeTo_) { sel_register_name("orderWindow:relativeTo:") }
      const_attr_reader  :Sel_orderWindow_relativeTo_
      
      # long
      const_set_lazy(:Sel_orderedWindows) { sel_register_name("orderedWindows") }
      const_attr_reader  :Sel_orderedWindows
      
      # long
      const_set_lazy(:Sel_orientation) { sel_register_name("orientation") }
      const_attr_reader  :Sel_orientation
      
      # long
      const_set_lazy(:Sel_otherEventWithType_location_modifierFlags_timestamp_windowNumber_context_subtype_data1_data2_) { sel_register_name("otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:") }
      const_attr_reader  :Sel_otherEventWithType_location_modifierFlags_timestamp_windowNumber_context_subtype_data1_data2_
      
      # long
      const_set_lazy(:Sel_otherMouseDown_) { sel_register_name("otherMouseDown:") }
      const_attr_reader  :Sel_otherMouseDown_
      
      # long
      const_set_lazy(:Sel_otherMouseDragged_) { sel_register_name("otherMouseDragged:") }
      const_attr_reader  :Sel_otherMouseDragged_
      
      # long
      const_set_lazy(:Sel_otherMouseUp_) { sel_register_name("otherMouseUp:") }
      const_attr_reader  :Sel_otherMouseUp_
      
      # long
      const_set_lazy(:Sel_outlineTableColumn) { sel_register_name("outlineTableColumn") }
      const_attr_reader  :Sel_outlineTableColumn
      
      # long
      const_set_lazy(:Sel_outlineView_acceptDrop_item_childIndex_) { sel_register_name("outlineView:acceptDrop:item:childIndex:") }
      const_attr_reader  :Sel_outlineView_acceptDrop_item_childIndex_
      
      # long
      const_set_lazy(:Sel_outlineView_child_ofItem_) { sel_register_name("outlineView:child:ofItem:") }
      const_attr_reader  :Sel_outlineView_child_ofItem_
      
      # long
      const_set_lazy(:Sel_outlineView_didClickTableColumn_) { sel_register_name("outlineView:didClickTableColumn:") }
      const_attr_reader  :Sel_outlineView_didClickTableColumn_
      
      # long
      const_set_lazy(:Sel_outlineView_isItemExpandable_) { sel_register_name("outlineView:isItemExpandable:") }
      const_attr_reader  :Sel_outlineView_isItemExpandable_
      
      # long
      const_set_lazy(:Sel_outlineView_numberOfChildrenOfItem_) { sel_register_name("outlineView:numberOfChildrenOfItem:") }
      const_attr_reader  :Sel_outlineView_numberOfChildrenOfItem_
      
      # long
      const_set_lazy(:Sel_outlineView_objectValueForTableColumn_byItem_) { sel_register_name("outlineView:objectValueForTableColumn:byItem:") }
      const_attr_reader  :Sel_outlineView_objectValueForTableColumn_byItem_
      
      # long
      const_set_lazy(:Sel_outlineView_setObjectValue_forTableColumn_byItem_) { sel_register_name("outlineView:setObjectValue:forTableColumn:byItem:") }
      const_attr_reader  :Sel_outlineView_setObjectValue_forTableColumn_byItem_
      
      # long
      const_set_lazy(:Sel_outlineView_shouldCollapseItem_) { sel_register_name("outlineView:shouldCollapseItem:") }
      const_attr_reader  :Sel_outlineView_shouldCollapseItem_
      
      # long
      const_set_lazy(:Sel_outlineView_shouldExpandItem_) { sel_register_name("outlineView:shouldExpandItem:") }
      const_attr_reader  :Sel_outlineView_shouldExpandItem_
      
      # long
      const_set_lazy(:Sel_outlineView_validateDrop_proposedItem_proposedChildIndex_) { sel_register_name("outlineView:validateDrop:proposedItem:proposedChildIndex:") }
      const_attr_reader  :Sel_outlineView_validateDrop_proposedItem_proposedChildIndex_
      
      # long
      const_set_lazy(:Sel_outlineView_willDisplayCell_forTableColumn_item_) { sel_register_name("outlineView:willDisplayCell:forTableColumn:item:") }
      const_attr_reader  :Sel_outlineView_willDisplayCell_forTableColumn_item_
      
      # long
      const_set_lazy(:Sel_outlineView_writeItems_toPasteboard_) { sel_register_name("outlineView:writeItems:toPasteboard:") }
      const_attr_reader  :Sel_outlineView_writeItems_toPasteboard_
      
      # long
      const_set_lazy(:Sel_outlineViewColumnDidMove_) { sel_register_name("outlineViewColumnDidMove:") }
      const_attr_reader  :Sel_outlineViewColumnDidMove_
      
      # long
      const_set_lazy(:Sel_outlineViewColumnDidResize_) { sel_register_name("outlineViewColumnDidResize:") }
      const_attr_reader  :Sel_outlineViewColumnDidResize_
      
      # long
      const_set_lazy(:Sel_outlineViewItemDidExpand_) { sel_register_name("outlineViewItemDidExpand:") }
      const_attr_reader  :Sel_outlineViewItemDidExpand_
      
      # long
      const_set_lazy(:Sel_outlineViewSelectionDidChange_) { sel_register_name("outlineViewSelectionDidChange:") }
      const_attr_reader  :Sel_outlineViewSelectionDidChange_
      
      # long
      const_set_lazy(:Sel_owner) { sel_register_name("owner") }
      const_attr_reader  :Sel_owner
      
      # long
      const_set_lazy(:Sel_pageDown_) { sel_register_name("pageDown:") }
      const_attr_reader  :Sel_pageDown_
      
      # long
      const_set_lazy(:Sel_pageTitle) { sel_register_name("pageTitle") }
      const_attr_reader  :Sel_pageTitle
      
      # long
      const_set_lazy(:Sel_pageUp_) { sel_register_name("pageUp:") }
      const_attr_reader  :Sel_pageUp_
      
      # long
      const_set_lazy(:Sel_panel_shouldShowFilename_) { sel_register_name("panel:shouldShowFilename:") }
      const_attr_reader  :Sel_panel_shouldShowFilename_
      
      # long
      const_set_lazy(:Sel_panelConvertFont_) { sel_register_name("panelConvertFont:") }
      const_attr_reader  :Sel_panelConvertFont_
      
      # long
      const_set_lazy(:Sel_paperSize) { sel_register_name("paperSize") }
      const_attr_reader  :Sel_paperSize
      
      # long
      const_set_lazy(:Sel_paragraphs) { sel_register_name("paragraphs") }
      const_attr_reader  :Sel_paragraphs
      
      # long
      const_set_lazy(:Sel_parentWindow) { sel_register_name("parentWindow") }
      const_attr_reader  :Sel_parentWindow
      
      # long
      const_set_lazy(:Sel_password) { sel_register_name("password") }
      const_attr_reader  :Sel_password
      
      # long
      const_set_lazy(:Sel_paste_) { sel_register_name("paste:") }
      const_attr_reader  :Sel_paste_
      
      # long
      const_set_lazy(:Sel_pasteboard_provideDataForType_) { sel_register_name("pasteboard:provideDataForType:") }
      const_attr_reader  :Sel_pasteboard_provideDataForType_
      
      # long
      const_set_lazy(:Sel_pasteboardWithName_) { sel_register_name("pasteboardWithName:") }
      const_attr_reader  :Sel_pasteboardWithName_
      
      # long
      const_set_lazy(:Sel_pathExtension) { sel_register_name("pathExtension") }
      const_attr_reader  :Sel_pathExtension
      
      # long
      const_set_lazy(:Sel_pathForResource_ofType_) { sel_register_name("pathForResource:ofType:") }
      const_attr_reader  :Sel_pathForResource_ofType_
      
      # long
      const_set_lazy(:Sel_performDragOperation_) { sel_register_name("performDragOperation:") }
      const_attr_reader  :Sel_performDragOperation_
      
      # long
      const_set_lazy(:Sel_performSelectorOnMainThread_withObject_waitUntilDone_) { sel_register_name("performSelectorOnMainThread:withObject:waitUntilDone:") }
      const_attr_reader  :Sel_performSelectorOnMainThread_withObject_waitUntilDone_
      
      # long
      const_set_lazy(:Sel_pixelsHigh) { sel_register_name("pixelsHigh") }
      const_attr_reader  :Sel_pixelsHigh
      
      # long
      const_set_lazy(:Sel_pixelsWide) { sel_register_name("pixelsWide") }
      const_attr_reader  :Sel_pixelsWide
      
      # long
      const_set_lazy(:Sel_pointSize) { sel_register_name("pointSize") }
      const_attr_reader  :Sel_pointSize
      
      # long
      const_set_lazy(:Sel_pointValue) { sel_register_name("pointValue") }
      const_attr_reader  :Sel_pointValue
      
      # long
      const_set_lazy(:Sel_pointingHandCursor) { sel_register_name("pointingHandCursor") }
      const_attr_reader  :Sel_pointingHandCursor
      
      # long
      const_set_lazy(:Sel_pop) { sel_register_name("pop") }
      const_attr_reader  :Sel_pop
      
      # long
      const_set_lazy(:Sel_popUpContextMenu_withEvent_forView_) { sel_register_name("popUpContextMenu:withEvent:forView:") }
      const_attr_reader  :Sel_popUpContextMenu_withEvent_forView_
      
      # long
      const_set_lazy(:Sel_popUpStatusItemMenu_) { sel_register_name("popUpStatusItemMenu:") }
      const_attr_reader  :Sel_popUpStatusItemMenu_
      
      # long
      const_set_lazy(:Sel_port) { sel_register_name("port") }
      const_attr_reader  :Sel_port
      
      # long
      const_set_lazy(:Sel_postEvent_atStart_) { sel_register_name("postEvent:atStart:") }
      const_attr_reader  :Sel_postEvent_atStart_
      
      # long
      const_set_lazy(:Sel_prependTransform_) { sel_register_name("prependTransform:") }
      const_attr_reader  :Sel_prependTransform_
      
      # long
      const_set_lazy(:Sel_preventDefault) { sel_register_name("preventDefault") }
      const_attr_reader  :Sel_preventDefault
      
      # long
      const_set_lazy(:Sel_previousFailureCount) { sel_register_name("previousFailureCount") }
      const_attr_reader  :Sel_previousFailureCount
      
      # long
      const_set_lazy(:Sel_printDocumentView) { sel_register_name("printDocumentView") }
      const_attr_reader  :Sel_printDocumentView
      
      # long
      const_set_lazy(:Sel_printOperationWithPrintInfo_) { sel_register_name("printOperationWithPrintInfo:") }
      const_attr_reader  :Sel_printOperationWithPrintInfo_
      
      # long
      const_set_lazy(:Sel_printOperationWithView_printInfo_) { sel_register_name("printOperationWithView:printInfo:") }
      const_attr_reader  :Sel_printOperationWithView_printInfo_
      
      # long
      const_set_lazy(:Sel_printPanel) { sel_register_name("printPanel") }
      const_attr_reader  :Sel_printPanel
      
      # long
      const_set_lazy(:Sel_printer) { sel_register_name("printer") }
      const_attr_reader  :Sel_printer
      
      # long
      const_set_lazy(:Sel_printerNames) { sel_register_name("printerNames") }
      const_attr_reader  :Sel_printerNames
      
      # long
      const_set_lazy(:Sel_printerWithName_) { sel_register_name("printerWithName:") }
      const_attr_reader  :Sel_printerWithName_
      
      # long
      const_set_lazy(:Sel_propertyListForType_) { sel_register_name("propertyListForType:") }
      const_attr_reader  :Sel_propertyListForType_
      
      # long
      const_set_lazy(:Sel_proposedCredential) { sel_register_name("proposedCredential") }
      const_attr_reader  :Sel_proposedCredential
      
      # long
      const_set_lazy(:Sel_protectionSpace) { sel_register_name("protectionSpace") }
      const_attr_reader  :Sel_protectionSpace
      
      # long
      const_set_lazy(:Sel_push) { sel_register_name("push") }
      const_attr_reader  :Sel_push
      
      # long
      const_set_lazy(:Sel_rangeValue) { sel_register_name("rangeValue") }
      const_attr_reader  :Sel_rangeValue
      
      # long
      const_set_lazy(:Sel_realm) { sel_register_name("realm") }
      const_attr_reader  :Sel_realm
      
      # long
      const_set_lazy(:Sel_recentSearches) { sel_register_name("recentSearches") }
      const_attr_reader  :Sel_recentSearches
      
      # long
      const_set_lazy(:Sel_rectArrayForCharacterRange_withinSelectedCharacterRange_inTextContainer_rectCount_) { sel_register_name("rectArrayForCharacterRange:withinSelectedCharacterRange:inTextContainer:rectCount:") }
      const_attr_reader  :Sel_rectArrayForCharacterRange_withinSelectedCharacterRange_inTextContainer_rectCount_
      
      # long
      const_set_lazy(:Sel_rectOfColumn_) { sel_register_name("rectOfColumn:") }
      const_attr_reader  :Sel_rectOfColumn_
      
      # long
      const_set_lazy(:Sel_rectOfRow_) { sel_register_name("rectOfRow:") }
      const_attr_reader  :Sel_rectOfRow_
      
      # long
      const_set_lazy(:Sel_rectValue) { sel_register_name("rectValue") }
      const_attr_reader  :Sel_rectValue
      
      # long
      const_set_lazy(:Sel_redComponent) { sel_register_name("redComponent") }
      const_attr_reader  :Sel_redComponent
      
      # long
      const_set_lazy(:Sel_reflectScrolledClipView_) { sel_register_name("reflectScrolledClipView:") }
      const_attr_reader  :Sel_reflectScrolledClipView_
      
      # long
      const_set_lazy(:Sel_registerForDraggedTypes_) { sel_register_name("registerForDraggedTypes:") }
      const_attr_reader  :Sel_registerForDraggedTypes_
      
      # long
      const_set_lazy(:Sel_release) { sel_register_name("release") }
      const_attr_reader  :Sel_release
      
      # long
      const_set_lazy(:Sel_reload_) { sel_register_name("reload:") }
      const_attr_reader  :Sel_reload_
      
      # long
      const_set_lazy(:Sel_reloadData) { sel_register_name("reloadData") }
      const_attr_reader  :Sel_reloadData
      
      # long
      const_set_lazy(:Sel_reloadItem_reloadChildren_) { sel_register_name("reloadItem:reloadChildren:") }
      const_attr_reader  :Sel_reloadItem_reloadChildren_
      
      # long
      const_set_lazy(:Sel_removeAllItems) { sel_register_name("removeAllItems") }
      const_attr_reader  :Sel_removeAllItems
      
      # long
      const_set_lazy(:Sel_removeAllPoints) { sel_register_name("removeAllPoints") }
      const_attr_reader  :Sel_removeAllPoints
      
      # long
      const_set_lazy(:Sel_removeAttribute_range_) { sel_register_name("removeAttribute:range:") }
      const_attr_reader  :Sel_removeAttribute_range_
      
      # long
      const_set_lazy(:Sel_removeChildWindow_) { sel_register_name("removeChildWindow:") }
      const_attr_reader  :Sel_removeChildWindow_
      
      # long
      const_set_lazy(:Sel_removeFromSuperview) { sel_register_name("removeFromSuperview") }
      const_attr_reader  :Sel_removeFromSuperview
      
      # long
      const_set_lazy(:Sel_removeItem_) { sel_register_name("removeItem:") }
      const_attr_reader  :Sel_removeItem_
      
      # long
      const_set_lazy(:Sel_removeItemAtIndex_) { sel_register_name("removeItemAtIndex:") }
      const_attr_reader  :Sel_removeItemAtIndex_
      
      # long
      const_set_lazy(:Sel_removeItemAtPath_error_) { sel_register_name("removeItemAtPath:error:") }
      const_attr_reader  :Sel_removeItemAtPath_error_
      
      # long
      const_set_lazy(:Sel_removeLastObject) { sel_register_name("removeLastObject") }
      const_attr_reader  :Sel_removeLastObject
      
      # long
      const_set_lazy(:Sel_removeObject_) { sel_register_name("removeObject:") }
      const_attr_reader  :Sel_removeObject_
      
      # long
      const_set_lazy(:Sel_removeObjectAtIndex_) { sel_register_name("removeObjectAtIndex:") }
      const_attr_reader  :Sel_removeObjectAtIndex_
      
      # long
      const_set_lazy(:Sel_removeObjectForKey_) { sel_register_name("removeObjectForKey:") }
      const_attr_reader  :Sel_removeObjectForKey_
      
      # long
      const_set_lazy(:Sel_removeObjectIdenticalTo_) { sel_register_name("removeObjectIdenticalTo:") }
      const_attr_reader  :Sel_removeObjectIdenticalTo_
      
      # long
      const_set_lazy(:Sel_removeObserver_) { sel_register_name("removeObserver:") }
      const_attr_reader  :Sel_removeObserver_
      
      # long
      const_set_lazy(:Sel_removeRepresentation_) { sel_register_name("removeRepresentation:") }
      const_attr_reader  :Sel_removeRepresentation_
      
      # long
      const_set_lazy(:Sel_removeStatusItem_) { sel_register_name("removeStatusItem:") }
      const_attr_reader  :Sel_removeStatusItem_
      
      # long
      const_set_lazy(:Sel_removeTabViewItem_) { sel_register_name("removeTabViewItem:") }
      const_attr_reader  :Sel_removeTabViewItem_
      
      # long
      const_set_lazy(:Sel_removeTableColumn_) { sel_register_name("removeTableColumn:") }
      const_attr_reader  :Sel_removeTableColumn_
      
      # long
      const_set_lazy(:Sel_removeTemporaryAttribute_forCharacterRange_) { sel_register_name("removeTemporaryAttribute:forCharacterRange:") }
      const_attr_reader  :Sel_removeTemporaryAttribute_forCharacterRange_
      
      # long
      const_set_lazy(:Sel_removeTrackingArea_) { sel_register_name("removeTrackingArea:") }
      const_attr_reader  :Sel_removeTrackingArea_
      
      # long
      const_set_lazy(:Sel_replaceCharactersInRange_withString_) { sel_register_name("replaceCharactersInRange:withString:") }
      const_attr_reader  :Sel_replaceCharactersInRange_withString_
      
      # long
      const_set_lazy(:Sel_representation) { sel_register_name("representation") }
      const_attr_reader  :Sel_representation
      
      # long
      const_set_lazy(:Sel_representations) { sel_register_name("representations") }
      const_attr_reader  :Sel_representations
      
      # long
      const_set_lazy(:Sel_request) { sel_register_name("request") }
      const_attr_reader  :Sel_request
      
      # long
      const_set_lazy(:Sel_requestWithURL_) { sel_register_name("requestWithURL:") }
      const_attr_reader  :Sel_requestWithURL_
      
      # long
      const_set_lazy(:Sel_resetCursorRects) { sel_register_name("resetCursorRects") }
      const_attr_reader  :Sel_resetCursorRects
      
      # long
      const_set_lazy(:Sel_resignFirstResponder) { sel_register_name("resignFirstResponder") }
      const_attr_reader  :Sel_resignFirstResponder
      
      # long
      const_set_lazy(:Sel_resizeDownCursor) { sel_register_name("resizeDownCursor") }
      const_attr_reader  :Sel_resizeDownCursor
      
      # long
      const_set_lazy(:Sel_resizeLeftCursor) { sel_register_name("resizeLeftCursor") }
      const_attr_reader  :Sel_resizeLeftCursor
      
      # long
      const_set_lazy(:Sel_resizeLeftRightCursor) { sel_register_name("resizeLeftRightCursor") }
      const_attr_reader  :Sel_resizeLeftRightCursor
      
      # long
      const_set_lazy(:Sel_resizeRightCursor) { sel_register_name("resizeRightCursor") }
      const_attr_reader  :Sel_resizeRightCursor
      
      # long
      const_set_lazy(:Sel_resizeUpCursor) { sel_register_name("resizeUpCursor") }
      const_attr_reader  :Sel_resizeUpCursor
      
      # long
      const_set_lazy(:Sel_resizeUpDownCursor) { sel_register_name("resizeUpDownCursor") }
      const_attr_reader  :Sel_resizeUpDownCursor
      
      # long
      const_set_lazy(:Sel_resizingMask) { sel_register_name("resizingMask") }
      const_attr_reader  :Sel_resizingMask
      
      # long
      const_set_lazy(:Sel_resourcePath) { sel_register_name("resourcePath") }
      const_attr_reader  :Sel_resourcePath
      
      # long
      const_set_lazy(:Sel_respondsToSelector_) { sel_register_name("respondsToSelector:") }
      const_attr_reader  :Sel_respondsToSelector_
      
      # long
      const_set_lazy(:Sel_restoreGraphicsState) { sel_register_name("restoreGraphicsState") }
      const_attr_reader  :Sel_restoreGraphicsState
      
      # long
      const_set_lazy(:Sel_retain) { sel_register_name("retain") }
      const_attr_reader  :Sel_retain
      
      # long
      const_set_lazy(:Sel_retainCount) { sel_register_name("retainCount") }
      const_attr_reader  :Sel_retainCount
      
      # long
      const_set_lazy(:Sel_rightMouseDown_) { sel_register_name("rightMouseDown:") }
      const_attr_reader  :Sel_rightMouseDown_
      
      # long
      const_set_lazy(:Sel_rightMouseDragged_) { sel_register_name("rightMouseDragged:") }
      const_attr_reader  :Sel_rightMouseDragged_
      
      # long
      const_set_lazy(:Sel_rightMouseUp_) { sel_register_name("rightMouseUp:") }
      const_attr_reader  :Sel_rightMouseUp_
      
      # long
      const_set_lazy(:Sel_rotateByDegrees_) { sel_register_name("rotateByDegrees:") }
      const_attr_reader  :Sel_rotateByDegrees_
      
      # long
      const_set_lazy(:Sel_rowAtPoint_) { sel_register_name("rowAtPoint:") }
      const_attr_reader  :Sel_rowAtPoint_
      
      # long
      const_set_lazy(:Sel_rowForItem_) { sel_register_name("rowForItem:") }
      const_attr_reader  :Sel_rowForItem_
      
      # long
      const_set_lazy(:Sel_rowHeight) { sel_register_name("rowHeight") }
      const_attr_reader  :Sel_rowHeight
      
      # long
      const_set_lazy(:Sel_rowsInRect_) { sel_register_name("rowsInRect:") }
      const_attr_reader  :Sel_rowsInRect_
      
      # long
      const_set_lazy(:Sel_run) { sel_register_name("run") }
      const_attr_reader  :Sel_run
      
      # long
      const_set_lazy(:Sel_runModal) { sel_register_name("runModal") }
      const_attr_reader  :Sel_runModal
      
      # long
      const_set_lazy(:Sel_runModalForDirectory_file_) { sel_register_name("runModalForDirectory:file:") }
      const_attr_reader  :Sel_runModalForDirectory_file_
      
      # long
      const_set_lazy(:Sel_runModalForWindow_) { sel_register_name("runModalForWindow:") }
      const_attr_reader  :Sel_runModalForWindow_
      
      # long
      const_set_lazy(:Sel_runModalWithPrintInfo_) { sel_register_name("runModalWithPrintInfo:") }
      const_attr_reader  :Sel_runModalWithPrintInfo_
      
      # long
      const_set_lazy(:Sel_runMode_beforeDate_) { sel_register_name("runMode:beforeDate:") }
      const_attr_reader  :Sel_runMode_beforeDate_
      
      # long
      const_set_lazy(:Sel_runOperation) { sel_register_name("runOperation") }
      const_attr_reader  :Sel_runOperation
      
      # long
      const_set_lazy(:Sel_samplesPerPixel) { sel_register_name("samplesPerPixel") }
      const_attr_reader  :Sel_samplesPerPixel
      
      # long
      const_set_lazy(:Sel_saveGraphicsState) { sel_register_name("saveGraphicsState") }
      const_attr_reader  :Sel_saveGraphicsState
      
      # long
      const_set_lazy(:Sel_savePanel) { sel_register_name("savePanel") }
      const_attr_reader  :Sel_savePanel
      
      # long
      const_set_lazy(:Sel_scaleXBy_yBy_) { sel_register_name("scaleXBy:yBy:") }
      const_attr_reader  :Sel_scaleXBy_yBy_
      
      # long
      const_set_lazy(:Sel_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_) { sel_register_name("scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:") }
      const_attr_reader  :Sel_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_
      
      # long
      const_set_lazy(:Sel_screen) { sel_register_name("screen") }
      const_attr_reader  :Sel_screen
      
      # long
      const_set_lazy(:Sel_screens) { sel_register_name("screens") }
      const_attr_reader  :Sel_screens
      
      # long
      const_set_lazy(:Sel_scrollColumnToVisible_) { sel_register_name("scrollColumnToVisible:") }
      const_attr_reader  :Sel_scrollColumnToVisible_
      
      # long
      const_set_lazy(:Sel_scrollPoint_) { sel_register_name("scrollPoint:") }
      const_attr_reader  :Sel_scrollPoint_
      
      # long
      const_set_lazy(:Sel_scrollRangeToVisible_) { sel_register_name("scrollRangeToVisible:") }
      const_attr_reader  :Sel_scrollRangeToVisible_
      
      # long
      const_set_lazy(:Sel_scrollRectToVisible_) { sel_register_name("scrollRectToVisible:") }
      const_attr_reader  :Sel_scrollRectToVisible_
      
      # long
      const_set_lazy(:Sel_scrollRowToVisible_) { sel_register_name("scrollRowToVisible:") }
      const_attr_reader  :Sel_scrollRowToVisible_
      
      # long
      const_set_lazy(:Sel_scrollToPoint_) { sel_register_name("scrollToPoint:") }
      const_attr_reader  :Sel_scrollToPoint_
      
      # long
      const_set_lazy(:Sel_scrollWheel_) { sel_register_name("scrollWheel:") }
      const_attr_reader  :Sel_scrollWheel_
      
      # long
      const_set_lazy(:Sel_scrollerWidth) { sel_register_name("scrollerWidth") }
      const_attr_reader  :Sel_scrollerWidth
      
      # long
      const_set_lazy(:Sel_scrollerWidthForControlSize_) { sel_register_name("scrollerWidthForControlSize:") }
      const_attr_reader  :Sel_scrollerWidthForControlSize_
      
      # long
      const_set_lazy(:Sel_searchButtonCell) { sel_register_name("searchButtonCell") }
      const_attr_reader  :Sel_searchButtonCell
      
      # long
      const_set_lazy(:Sel_searchTextRectForBounds_) { sel_register_name("searchTextRectForBounds:") }
      const_attr_reader  :Sel_searchTextRectForBounds_
      
      # long
      const_set_lazy(:Sel_secondOfMinute) { sel_register_name("secondOfMinute") }
      const_attr_reader  :Sel_secondOfMinute
      
      # long
      const_set_lazy(:Sel_secondarySelectedControlColor) { sel_register_name("secondarySelectedControlColor") }
      const_attr_reader  :Sel_secondarySelectedControlColor
      
      # long
      const_set_lazy(:Sel_selectAll_) { sel_register_name("selectAll:") }
      const_attr_reader  :Sel_selectAll_
      
      # long
      const_set_lazy(:Sel_selectItem_) { sel_register_name("selectItem:") }
      const_attr_reader  :Sel_selectItem_
      
      # long
      const_set_lazy(:Sel_selectItemAtIndex_) { sel_register_name("selectItemAtIndex:") }
      const_attr_reader  :Sel_selectItemAtIndex_
      
      # long
      const_set_lazy(:Sel_selectRowIndexes_byExtendingSelection_) { sel_register_name("selectRowIndexes:byExtendingSelection:") }
      const_attr_reader  :Sel_selectRowIndexes_byExtendingSelection_
      
      # long
      const_set_lazy(:Sel_selectTabViewItemAtIndex_) { sel_register_name("selectTabViewItemAtIndex:") }
      const_attr_reader  :Sel_selectTabViewItemAtIndex_
      
      # long
      const_set_lazy(:Sel_selectText_) { sel_register_name("selectText:") }
      const_attr_reader  :Sel_selectText_
      
      # long
      const_set_lazy(:Sel_selectedControlColor) { sel_register_name("selectedControlColor") }
      const_attr_reader  :Sel_selectedControlColor
      
      # long
      const_set_lazy(:Sel_selectedControlTextColor) { sel_register_name("selectedControlTextColor") }
      const_attr_reader  :Sel_selectedControlTextColor
      
      # long
      const_set_lazy(:Sel_selectedRange) { sel_register_name("selectedRange") }
      const_attr_reader  :Sel_selectedRange
      
      # long
      const_set_lazy(:Sel_selectedRow) { sel_register_name("selectedRow") }
      const_attr_reader  :Sel_selectedRow
      
      # long
      const_set_lazy(:Sel_selectedRowIndexes) { sel_register_name("selectedRowIndexes") }
      const_attr_reader  :Sel_selectedRowIndexes
      
      # long
      const_set_lazy(:Sel_selectedTabViewItem) { sel_register_name("selectedTabViewItem") }
      const_attr_reader  :Sel_selectedTabViewItem
      
      # long
      const_set_lazy(:Sel_selectedTextBackgroundColor) { sel_register_name("selectedTextBackgroundColor") }
      const_attr_reader  :Sel_selectedTextBackgroundColor
      
      # long
      const_set_lazy(:Sel_selectedTextColor) { sel_register_name("selectedTextColor") }
      const_attr_reader  :Sel_selectedTextColor
      
      # long
      const_set_lazy(:Sel_sendAction_to_) { sel_register_name("sendAction:to:") }
      const_attr_reader  :Sel_sendAction_to_
      
      # long
      const_set_lazy(:Sel_sendEvent_) { sel_register_name("sendEvent:") }
      const_attr_reader  :Sel_sendEvent_
      
      # long
      const_set_lazy(:Sel_sender) { sel_register_name("sender") }
      const_attr_reader  :Sel_sender
      
      # long
      const_set_lazy(:Sel_separatorItem) { sel_register_name("separatorItem") }
      const_attr_reader  :Sel_separatorItem
      
      # long
      const_set_lazy(:Sel_set) { sel_register_name("set") }
      const_attr_reader  :Sel_set
      
      # long
      const_set_lazy(:Sel_setAcceptsMouseMovedEvents_) { sel_register_name("setAcceptsMouseMovedEvents:") }
      const_attr_reader  :Sel_setAcceptsMouseMovedEvents_
      
      # long
      const_set_lazy(:Sel_setAccessoryView_) { sel_register_name("setAccessoryView:") }
      const_attr_reader  :Sel_setAccessoryView_
      
      # long
      const_set_lazy(:Sel_setAction_) { sel_register_name("setAction:") }
      const_attr_reader  :Sel_setAction_
      
      # long
      const_set_lazy(:Sel_setAlertStyle_) { sel_register_name("setAlertStyle:") }
      const_attr_reader  :Sel_setAlertStyle_
      
      # long
      const_set_lazy(:Sel_setAlignment_) { sel_register_name("setAlignment:") }
      const_attr_reader  :Sel_setAlignment_
      
      # long
      const_set_lazy(:Sel_setAllowsColumnReordering_) { sel_register_name("setAllowsColumnReordering:") }
      const_attr_reader  :Sel_setAllowsColumnReordering_
      
      # long
      const_set_lazy(:Sel_setAllowsFloats_) { sel_register_name("setAllowsFloats:") }
      const_attr_reader  :Sel_setAllowsFloats_
      
      # long
      const_set_lazy(:Sel_setAllowsMixedState_) { sel_register_name("setAllowsMixedState:") }
      const_attr_reader  :Sel_setAllowsMixedState_
      
      # long
      const_set_lazy(:Sel_setAllowsMultipleSelection_) { sel_register_name("setAllowsMultipleSelection:") }
      const_attr_reader  :Sel_setAllowsMultipleSelection_
      
      # long
      const_set_lazy(:Sel_setAllowsUserCustomization_) { sel_register_name("setAllowsUserCustomization:") }
      const_attr_reader  :Sel_setAllowsUserCustomization_
      
      # long
      const_set_lazy(:Sel_setAlpha_) { sel_register_name("setAlpha:") }
      const_attr_reader  :Sel_setAlpha_
      
      # long
      const_set_lazy(:Sel_setAlphaValue_) { sel_register_name("setAlphaValue:") }
      const_attr_reader  :Sel_setAlphaValue_
      
      # long
      const_set_lazy(:Sel_setApplicationIconImage_) { sel_register_name("setApplicationIconImage:") }
      const_attr_reader  :Sel_setApplicationIconImage_
      
      # long
      const_set_lazy(:Sel_setApplicationNameForUserAgent_) { sel_register_name("setApplicationNameForUserAgent:") }
      const_attr_reader  :Sel_setApplicationNameForUserAgent_
      
      # long
      const_set_lazy(:Sel_setAttributedString_) { sel_register_name("setAttributedString:") }
      const_attr_reader  :Sel_setAttributedString_
      
      # long
      const_set_lazy(:Sel_setAttributedStringValue_) { sel_register_name("setAttributedStringValue:") }
      const_attr_reader  :Sel_setAttributedStringValue_
      
      # long
      const_set_lazy(:Sel_setAttributedTitle_) { sel_register_name("setAttributedTitle:") }
      const_attr_reader  :Sel_setAttributedTitle_
      
      # long
      const_set_lazy(:Sel_setAutoenablesItems_) { sel_register_name("setAutoenablesItems:") }
      const_attr_reader  :Sel_setAutoenablesItems_
      
      # long
      const_set_lazy(:Sel_setAutohidesScrollers_) { sel_register_name("setAutohidesScrollers:") }
      const_attr_reader  :Sel_setAutohidesScrollers_
      
      # long
      const_set_lazy(:Sel_setAutoresizesOutlineColumn_) { sel_register_name("setAutoresizesOutlineColumn:") }
      const_attr_reader  :Sel_setAutoresizesOutlineColumn_
      
      # long
      const_set_lazy(:Sel_setAutoresizesSubviews_) { sel_register_name("setAutoresizesSubviews:") }
      const_attr_reader  :Sel_setAutoresizesSubviews_
      
      # long
      const_set_lazy(:Sel_setAutoresizingMask_) { sel_register_name("setAutoresizingMask:") }
      const_attr_reader  :Sel_setAutoresizingMask_
      
      # long
      const_set_lazy(:Sel_setAutosaveExpandedItems_) { sel_register_name("setAutosaveExpandedItems:") }
      const_attr_reader  :Sel_setAutosaveExpandedItems_
      
      # long
      const_set_lazy(:Sel_setBackgroundColor_) { sel_register_name("setBackgroundColor:") }
      const_attr_reader  :Sel_setBackgroundColor_
      
      # long
      const_set_lazy(:Sel_setBackgroundLayoutEnabled_) { sel_register_name("setBackgroundLayoutEnabled:") }
      const_attr_reader  :Sel_setBackgroundLayoutEnabled_
      
      # long
      const_set_lazy(:Sel_setBezelStyle_) { sel_register_name("setBezelStyle:") }
      const_attr_reader  :Sel_setBezelStyle_
      
      # long
      const_set_lazy(:Sel_setBorderType_) { sel_register_name("setBorderType:") }
      const_attr_reader  :Sel_setBorderType_
      
      # long
      const_set_lazy(:Sel_setBorderWidth_) { sel_register_name("setBorderWidth:") }
      const_attr_reader  :Sel_setBorderWidth_
      
      # long
      const_set_lazy(:Sel_setBordered_) { sel_register_name("setBordered:") }
      const_attr_reader  :Sel_setBordered_
      
      # long
      const_set_lazy(:Sel_setBoxType_) { sel_register_name("setBoxType:") }
      const_attr_reader  :Sel_setBoxType_
      
      # long
      const_set_lazy(:Sel_setButtonType_) { sel_register_name("setButtonType:") }
      const_attr_reader  :Sel_setButtonType_
      
      # long
      const_set_lazy(:Sel_setCacheMode_) { sel_register_name("setCacheMode:") }
      const_attr_reader  :Sel_setCacheMode_
      
      # long
      const_set_lazy(:Sel_setCachePolicy_) { sel_register_name("setCachePolicy:") }
      const_attr_reader  :Sel_setCachePolicy_
      
      # long
      const_set_lazy(:Sel_setCanChooseDirectories_) { sel_register_name("setCanChooseDirectories:") }
      const_attr_reader  :Sel_setCanChooseDirectories_
      
      # long
      const_set_lazy(:Sel_setCanChooseFiles_) { sel_register_name("setCanChooseFiles:") }
      const_attr_reader  :Sel_setCanChooseFiles_
      
      # long
      const_set_lazy(:Sel_setCanCreateDirectories_) { sel_register_name("setCanCreateDirectories:") }
      const_attr_reader  :Sel_setCanCreateDirectories_
      
      # long
      const_set_lazy(:Sel_setCancelButtonCell_) { sel_register_name("setCancelButtonCell:") }
      const_attr_reader  :Sel_setCancelButtonCell_
      
      # long
      const_set_lazy(:Sel_setCell_) { sel_register_name("setCell:") }
      const_attr_reader  :Sel_setCell_
      
      # long
      const_set_lazy(:Sel_setCellClass_) { sel_register_name("setCellClass:") }
      const_attr_reader  :Sel_setCellClass_
      
      # long
      const_set_lazy(:Sel_setClip) { sel_register_name("setClip") }
      const_attr_reader  :Sel_setClip
      
      # long
      const_set_lazy(:Sel_setColor_) { sel_register_name("setColor:") }
      const_attr_reader  :Sel_setColor_
      
      # long
      const_set_lazy(:Sel_setColumnAutoresizingStyle_) { sel_register_name("setColumnAutoresizingStyle:") }
      const_attr_reader  :Sel_setColumnAutoresizingStyle_
      
      # long
      const_set_lazy(:Sel_setCompositingOperation_) { sel_register_name("setCompositingOperation:") }
      const_attr_reader  :Sel_setCompositingOperation_
      
      # long
      const_set_lazy(:Sel_setContainerSize_) { sel_register_name("setContainerSize:") }
      const_attr_reader  :Sel_setContainerSize_
      
      # long
      const_set_lazy(:Sel_setContentView_) { sel_register_name("setContentView:") }
      const_attr_reader  :Sel_setContentView_
      
      # long
      const_set_lazy(:Sel_setContentViewMargins_) { sel_register_name("setContentViewMargins:") }
      const_attr_reader  :Sel_setContentViewMargins_
      
      # long
      const_set_lazy(:Sel_setControlSize_) { sel_register_name("setControlSize:") }
      const_attr_reader  :Sel_setControlSize_
      
      # long
      const_set_lazy(:Sel_setCookie_) { sel_register_name("setCookie:") }
      const_attr_reader  :Sel_setCookie_
      
      # long
      const_set_lazy(:Sel_setCopiesOnScroll_) { sel_register_name("setCopiesOnScroll:") }
      const_attr_reader  :Sel_setCopiesOnScroll_
      
      # long
      const_set_lazy(:Sel_setCurrentContext_) { sel_register_name("setCurrentContext:") }
      const_attr_reader  :Sel_setCurrentContext_
      
      # long
      const_set_lazy(:Sel_setCurrentOperation_) { sel_register_name("setCurrentOperation:") }
      const_attr_reader  :Sel_setCurrentOperation_
      
      # long
      const_set_lazy(:Sel_setData_forType_) { sel_register_name("setData:forType:") }
      const_attr_reader  :Sel_setData_forType_
      
      # long
      const_set_lazy(:Sel_setDataCell_) { sel_register_name("setDataCell:") }
      const_attr_reader  :Sel_setDataCell_
      
      # long
      const_set_lazy(:Sel_setDataSource_) { sel_register_name("setDataSource:") }
      const_attr_reader  :Sel_setDataSource_
      
      # long
      const_set_lazy(:Sel_setDatePickerElements_) { sel_register_name("setDatePickerElements:") }
      const_attr_reader  :Sel_setDatePickerElements_
      
      # long
      const_set_lazy(:Sel_setDatePickerStyle_) { sel_register_name("setDatePickerStyle:") }
      const_attr_reader  :Sel_setDatePickerStyle_
      
      # long
      const_set_lazy(:Sel_setDateValue_) { sel_register_name("setDateValue:") }
      const_attr_reader  :Sel_setDateValue_
      
      # long
      const_set_lazy(:Sel_setDefaultButtonCell_) { sel_register_name("setDefaultButtonCell:") }
      const_attr_reader  :Sel_setDefaultButtonCell_
      
      # long
      const_set_lazy(:Sel_setDefaultFlatness_) { sel_register_name("setDefaultFlatness:") }
      const_attr_reader  :Sel_setDefaultFlatness_
      
      # long
      const_set_lazy(:Sel_setDefaultParagraphStyle_) { sel_register_name("setDefaultParagraphStyle:") }
      const_attr_reader  :Sel_setDefaultParagraphStyle_
      
      # long
      const_set_lazy(:Sel_setDefaultTabInterval_) { sel_register_name("setDefaultTabInterval:") }
      const_attr_reader  :Sel_setDefaultTabInterval_
      
      # long
      const_set_lazy(:Sel_setDelegate_) { sel_register_name("setDelegate:") }
      const_attr_reader  :Sel_setDelegate_
      
      # long
      const_set_lazy(:Sel_setDestination_allowOverwrite_) { sel_register_name("setDestination:allowOverwrite:") }
      const_attr_reader  :Sel_setDestination_allowOverwrite_
      
      # long
      const_set_lazy(:Sel_setDictionary_) { sel_register_name("setDictionary:") }
      const_attr_reader  :Sel_setDictionary_
      
      # long
      const_set_lazy(:Sel_setDirectory_) { sel_register_name("setDirectory:") }
      const_attr_reader  :Sel_setDirectory_
      
      # long
      const_set_lazy(:Sel_setDisplayMode_) { sel_register_name("setDisplayMode:") }
      const_attr_reader  :Sel_setDisplayMode_
      
      # long
      const_set_lazy(:Sel_setDocumentCursor_) { sel_register_name("setDocumentCursor:") }
      const_attr_reader  :Sel_setDocumentCursor_
      
      # long
      const_set_lazy(:Sel_setDocumentEdited_) { sel_register_name("setDocumentEdited:") }
      const_attr_reader  :Sel_setDocumentEdited_
      
      # long
      const_set_lazy(:Sel_setDocumentView_) { sel_register_name("setDocumentView:") }
      const_attr_reader  :Sel_setDocumentView_
      
      # long
      const_set_lazy(:Sel_setDoubleAction_) { sel_register_name("setDoubleAction:") }
      const_attr_reader  :Sel_setDoubleAction_
      
      # long
      const_set_lazy(:Sel_setDoubleValue_) { sel_register_name("setDoubleValue:") }
      const_attr_reader  :Sel_setDoubleValue_
      
      # long
      const_set_lazy(:Sel_setDownloadDelegate_) { sel_register_name("setDownloadDelegate:") }
      const_attr_reader  :Sel_setDownloadDelegate_
      
      # long
      const_set_lazy(:Sel_setDrawsBackground_) { sel_register_name("setDrawsBackground:") }
      const_attr_reader  :Sel_setDrawsBackground_
      
      # long
      const_set_lazy(:Sel_setDropItem_dropChildIndex_) { sel_register_name("setDropItem:dropChildIndex:") }
      const_attr_reader  :Sel_setDropItem_dropChildIndex_
      
      # long
      const_set_lazy(:Sel_setDropRow_dropOperation_) { sel_register_name("setDropRow:dropOperation:") }
      const_attr_reader  :Sel_setDropRow_dropOperation_
      
      # long
      const_set_lazy(:Sel_setEditable_) { sel_register_name("setEditable:") }
      const_attr_reader  :Sel_setEditable_
      
      # long
      const_set_lazy(:Sel_setEnabled_) { sel_register_name("setEnabled:") }
      const_attr_reader  :Sel_setEnabled_
      
      # long
      const_set_lazy(:Sel_setEnabled_forSegment_) { sel_register_name("setEnabled:forSegment:") }
      const_attr_reader  :Sel_setEnabled_forSegment_
      
      # long
      const_set_lazy(:Sel_setFill) { sel_register_name("setFill") }
      const_attr_reader  :Sel_setFill
      
      # long
      const_set_lazy(:Sel_setFillColor_) { sel_register_name("setFillColor:") }
      const_attr_reader  :Sel_setFillColor_
      
      # long
      const_set_lazy(:Sel_setFireDate_) { sel_register_name("setFireDate:") }
      const_attr_reader  :Sel_setFireDate_
      
      # long
      const_set_lazy(:Sel_setFirstLineHeadIndent_) { sel_register_name("setFirstLineHeadIndent:") }
      const_attr_reader  :Sel_setFirstLineHeadIndent_
      
      # long
      const_set_lazy(:Sel_setFloatValue_knobProportion_) { sel_register_name("setFloatValue:knobProportion:") }
      const_attr_reader  :Sel_setFloatValue_knobProportion_
      
      # long
      const_set_lazy(:Sel_setFocusRingType_) { sel_register_name("setFocusRingType:") }
      const_attr_reader  :Sel_setFocusRingType_
      
      # long
      const_set_lazy(:Sel_setFont_) { sel_register_name("setFont:") }
      const_attr_reader  :Sel_setFont_
      
      # long
      const_set_lazy(:Sel_setFormatter_) { sel_register_name("setFormatter:") }
      const_attr_reader  :Sel_setFormatter_
      
      # long
      const_set_lazy(:Sel_setFrame_) { sel_register_name("setFrame:") }
      const_attr_reader  :Sel_setFrame_
      
      # long
      const_set_lazy(:Sel_setFrame_display_) { sel_register_name("setFrame:display:") }
      const_attr_reader  :Sel_setFrame_display_
      
      # long
      const_set_lazy(:Sel_setFrame_display_animate_) { sel_register_name("setFrame:display:animate:") }
      const_attr_reader  :Sel_setFrame_display_animate_
      
      # long
      const_set_lazy(:Sel_setFrameLoadDelegate_) { sel_register_name("setFrameLoadDelegate:") }
      const_attr_reader  :Sel_setFrameLoadDelegate_
      
      # long
      const_set_lazy(:Sel_setFrameOrigin_) { sel_register_name("setFrameOrigin:") }
      const_attr_reader  :Sel_setFrameOrigin_
      
      # long
      const_set_lazy(:Sel_setFrameSize_) { sel_register_name("setFrameSize:") }
      const_attr_reader  :Sel_setFrameSize_
      
      # long
      const_set_lazy(:Sel_setHasHorizontalScroller_) { sel_register_name("setHasHorizontalScroller:") }
      const_attr_reader  :Sel_setHasHorizontalScroller_
      
      # long
      const_set_lazy(:Sel_setHasShadow_) { sel_register_name("setHasShadow:") }
      const_attr_reader  :Sel_setHasShadow_
      
      # long
      const_set_lazy(:Sel_setHasVerticalScroller_) { sel_register_name("setHasVerticalScroller:") }
      const_attr_reader  :Sel_setHasVerticalScroller_
      
      # long
      const_set_lazy(:Sel_setHeaderCell_) { sel_register_name("setHeaderCell:") }
      const_attr_reader  :Sel_setHeaderCell_
      
      # long
      const_set_lazy(:Sel_setHeaderView_) { sel_register_name("setHeaderView:") }
      const_attr_reader  :Sel_setHeaderView_
      
      # long
      const_set_lazy(:Sel_setHidden_) { sel_register_name("setHidden:") }
      const_attr_reader  :Sel_setHidden_
      
      # long
      const_set_lazy(:Sel_setHiddenUntilMouseMoves_) { sel_register_name("setHiddenUntilMouseMoves:") }
      const_attr_reader  :Sel_setHiddenUntilMouseMoves_
      
      # long
      const_set_lazy(:Sel_setHighlightMode_) { sel_register_name("setHighlightMode:") }
      const_attr_reader  :Sel_setHighlightMode_
      
      # long
      const_set_lazy(:Sel_setHighlighted_) { sel_register_name("setHighlighted:") }
      const_attr_reader  :Sel_setHighlighted_
      
      # long
      const_set_lazy(:Sel_setHighlightedTableColumn_) { sel_register_name("setHighlightedTableColumn:") }
      const_attr_reader  :Sel_setHighlightedTableColumn_
      
      # long
      const_set_lazy(:Sel_setHorizontalScroller_) { sel_register_name("setHorizontalScroller:") }
      const_attr_reader  :Sel_setHorizontalScroller_
      
      # long
      const_set_lazy(:Sel_setHorizontallyResizable_) { sel_register_name("setHorizontallyResizable:") }
      const_attr_reader  :Sel_setHorizontallyResizable_
      
      # long
      const_set_lazy(:Sel_setIcon_) { sel_register_name("setIcon:") }
      const_attr_reader  :Sel_setIcon_
      
      # long
      const_set_lazy(:Sel_setIdentifier_) { sel_register_name("setIdentifier:") }
      const_attr_reader  :Sel_setIdentifier_
      
      # long
      const_set_lazy(:Sel_setImage_) { sel_register_name("setImage:") }
      const_attr_reader  :Sel_setImage_
      
      # long
      const_set_lazy(:Sel_setImage_forSegment_) { sel_register_name("setImage:forSegment:") }
      const_attr_reader  :Sel_setImage_forSegment_
      
      # long
      const_set_lazy(:Sel_setImageAlignment_) { sel_register_name("setImageAlignment:") }
      const_attr_reader  :Sel_setImageAlignment_
      
      # long
      const_set_lazy(:Sel_setImageInterpolation_) { sel_register_name("setImageInterpolation:") }
      const_attr_reader  :Sel_setImageInterpolation_
      
      # long
      const_set_lazy(:Sel_setImagePosition_) { sel_register_name("setImagePosition:") }
      const_attr_reader  :Sel_setImagePosition_
      
      # long
      const_set_lazy(:Sel_setImageScaling_) { sel_register_name("setImageScaling:") }
      const_attr_reader  :Sel_setImageScaling_
      
      # long
      const_set_lazy(:Sel_setIncrement_) { sel_register_name("setIncrement:") }
      const_attr_reader  :Sel_setIncrement_
      
      # long
      const_set_lazy(:Sel_setIndeterminate_) { sel_register_name("setIndeterminate:") }
      const_attr_reader  :Sel_setIndeterminate_
      
      # long
      const_set_lazy(:Sel_setIndicatorImage_inTableColumn_) { sel_register_name("setIndicatorImage:inTableColumn:") }
      const_attr_reader  :Sel_setIndicatorImage_inTableColumn_
      
      # long
      const_set_lazy(:Sel_setIntercellSpacing_) { sel_register_name("setIntercellSpacing:") }
      const_attr_reader  :Sel_setIntercellSpacing_
      
      # long
      const_set_lazy(:Sel_setJavaEnabled_) { sel_register_name("setJavaEnabled:") }
      const_attr_reader  :Sel_setJavaEnabled_
      
      # long
      const_set_lazy(:Sel_setJavaScriptEnabled_) { sel_register_name("setJavaScriptEnabled:") }
      const_attr_reader  :Sel_setJavaScriptEnabled_
      
      # long
      const_set_lazy(:Sel_setJobDisposition_) { sel_register_name("setJobDisposition:") }
      const_attr_reader  :Sel_setJobDisposition_
      
      # long
      const_set_lazy(:Sel_setJobTitle_) { sel_register_name("setJobTitle:") }
      const_attr_reader  :Sel_setJobTitle_
      
      # long
      const_set_lazy(:Sel_setKeyEquivalent_) { sel_register_name("setKeyEquivalent:") }
      const_attr_reader  :Sel_setKeyEquivalent_
      
      # long
      const_set_lazy(:Sel_setKeyEquivalentModifierMask_) { sel_register_name("setKeyEquivalentModifierMask:") }
      const_attr_reader  :Sel_setKeyEquivalentModifierMask_
      
      # long
      const_set_lazy(:Sel_setLabel_) { sel_register_name("setLabel:") }
      const_attr_reader  :Sel_setLabel_
      
      # long
      const_set_lazy(:Sel_setLabel_forSegment_) { sel_register_name("setLabel:forSegment:") }
      const_attr_reader  :Sel_setLabel_forSegment_
      
      # long
      const_set_lazy(:Sel_setLeaf_) { sel_register_name("setLeaf:") }
      const_attr_reader  :Sel_setLeaf_
      
      # long
      const_set_lazy(:Sel_setLength_) { sel_register_name("setLength:") }
      const_attr_reader  :Sel_setLength_
      
      # long
      const_set_lazy(:Sel_setLevel_) { sel_register_name("setLevel:") }
      const_attr_reader  :Sel_setLevel_
      
      # long
      const_set_lazy(:Sel_setLineBreakMode_) { sel_register_name("setLineBreakMode:") }
      const_attr_reader  :Sel_setLineBreakMode_
      
      # long
      const_set_lazy(:Sel_setLineCapStyle_) { sel_register_name("setLineCapStyle:") }
      const_attr_reader  :Sel_setLineCapStyle_
      
      # long
      const_set_lazy(:Sel_setLineDash_count_phase_) { sel_register_name("setLineDash:count:phase:") }
      const_attr_reader  :Sel_setLineDash_count_phase_
      
      # long
      const_set_lazy(:Sel_setLineFragmentPadding_) { sel_register_name("setLineFragmentPadding:") }
      const_attr_reader  :Sel_setLineFragmentPadding_
      
      # long
      const_set_lazy(:Sel_setLineFragmentRect_forGlyphRange_usedRect_) { sel_register_name("setLineFragmentRect:forGlyphRange:usedRect:") }
      const_attr_reader  :Sel_setLineFragmentRect_forGlyphRange_usedRect_
      
      # long
      const_set_lazy(:Sel_setLineJoinStyle_) { sel_register_name("setLineJoinStyle:") }
      const_attr_reader  :Sel_setLineJoinStyle_
      
      # long
      const_set_lazy(:Sel_setLineSpacing_) { sel_register_name("setLineSpacing:") }
      const_attr_reader  :Sel_setLineSpacing_
      
      # long
      const_set_lazy(:Sel_setLineWidth_) { sel_register_name("setLineWidth:") }
      const_attr_reader  :Sel_setLineWidth_
      
      # long
      const_set_lazy(:Sel_setLinkTextAttributes_) { sel_register_name("setLinkTextAttributes:") }
      const_attr_reader  :Sel_setLinkTextAttributes_
      
      # long
      const_set_lazy(:Sel_setMainMenu_) { sel_register_name("setMainMenu:") }
      const_attr_reader  :Sel_setMainMenu_
      
      # long
      const_set_lazy(:Sel_setMarkedText_selectedRange_) { sel_register_name("setMarkedText:selectedRange:") }
      const_attr_reader  :Sel_setMarkedText_selectedRange_
      
      # long
      const_set_lazy(:Sel_setMaxSize_) { sel_register_name("setMaxSize:") }
      const_attr_reader  :Sel_setMaxSize_
      
      # long
      const_set_lazy(:Sel_setMaxValue_) { sel_register_name("setMaxValue:") }
      const_attr_reader  :Sel_setMaxValue_
      
      # long
      const_set_lazy(:Sel_setMaximum_) { sel_register_name("setMaximum:") }
      const_attr_reader  :Sel_setMaximum_
      
      # long
      const_set_lazy(:Sel_setMaximumFractionDigits_) { sel_register_name("setMaximumFractionDigits:") }
      const_attr_reader  :Sel_setMaximumFractionDigits_
      
      # long
      const_set_lazy(:Sel_setMaximumIntegerDigits_) { sel_register_name("setMaximumIntegerDigits:") }
      const_attr_reader  :Sel_setMaximumIntegerDigits_
      
      # long
      const_set_lazy(:Sel_setMenu_) { sel_register_name("setMenu:") }
      const_attr_reader  :Sel_setMenu_
      
      # long
      const_set_lazy(:Sel_setMenu_forSegment_) { sel_register_name("setMenu:forSegment:") }
      const_attr_reader  :Sel_setMenu_forSegment_
      
      # long
      const_set_lazy(:Sel_setMessage_) { sel_register_name("setMessage:") }
      const_attr_reader  :Sel_setMessage_
      
      # long
      const_set_lazy(:Sel_setMessageText_) { sel_register_name("setMessageText:") }
      const_attr_reader  :Sel_setMessageText_
      
      # long
      const_set_lazy(:Sel_setMinSize_) { sel_register_name("setMinSize:") }
      const_attr_reader  :Sel_setMinSize_
      
      # long
      const_set_lazy(:Sel_setMinValue_) { sel_register_name("setMinValue:") }
      const_attr_reader  :Sel_setMinValue_
      
      # long
      const_set_lazy(:Sel_setMinWidth_) { sel_register_name("setMinWidth:") }
      const_attr_reader  :Sel_setMinWidth_
      
      # long
      const_set_lazy(:Sel_setMinimum_) { sel_register_name("setMinimum:") }
      const_attr_reader  :Sel_setMinimum_
      
      # long
      const_set_lazy(:Sel_setMinimumFractionDigits_) { sel_register_name("setMinimumFractionDigits:") }
      const_attr_reader  :Sel_setMinimumFractionDigits_
      
      # long
      const_set_lazy(:Sel_setMinimumIntegerDigits_) { sel_register_name("setMinimumIntegerDigits:") }
      const_attr_reader  :Sel_setMinimumIntegerDigits_
      
      # long
      const_set_lazy(:Sel_setMiterLimit_) { sel_register_name("setMiterLimit:") }
      const_attr_reader  :Sel_setMiterLimit_
      
      # long
      const_set_lazy(:Sel_setNeedsDisplay_) { sel_register_name("setNeedsDisplay:") }
      const_attr_reader  :Sel_setNeedsDisplay_
      
      # long
      const_set_lazy(:Sel_setNeedsDisplayInRect_) { sel_register_name("setNeedsDisplayInRect:") }
      const_attr_reader  :Sel_setNeedsDisplayInRect_
      
      # long
      const_set_lazy(:Sel_setNumberOfVisibleItems_) { sel_register_name("setNumberOfVisibleItems:") }
      const_attr_reader  :Sel_setNumberOfVisibleItems_
      
      # long
      const_set_lazy(:Sel_setNumberStyle_) { sel_register_name("setNumberStyle:") }
      const_attr_reader  :Sel_setNumberStyle_
      
      # long
      const_set_lazy(:Sel_setObject_forKey_) { sel_register_name("setObject:forKey:") }
      const_attr_reader  :Sel_setObject_forKey_
      
      # long
      const_set_lazy(:Sel_setObjectValue_) { sel_register_name("setObjectValue:") }
      const_attr_reader  :Sel_setObjectValue_
      
      # long
      const_set_lazy(:Sel_setOnMouseEntered_) { sel_register_name("setOnMouseEntered:") }
      const_attr_reader  :Sel_setOnMouseEntered_
      
      # long
      const_set_lazy(:Sel_setOpaque_) { sel_register_name("setOpaque:") }
      const_attr_reader  :Sel_setOpaque_
      
      # long
      const_set_lazy(:Sel_setOptions_) { sel_register_name("setOptions:") }
      const_attr_reader  :Sel_setOptions_
      
      # long
      const_set_lazy(:Sel_setOrientation_) { sel_register_name("setOrientation:") }
      const_attr_reader  :Sel_setOrientation_
      
      # long
      const_set_lazy(:Sel_setOutlineTableColumn_) { sel_register_name("setOutlineTableColumn:") }
      const_attr_reader  :Sel_setOutlineTableColumn_
      
      # long
      const_set_lazy(:Sel_setPaletteLabel_) { sel_register_name("setPaletteLabel:") }
      const_attr_reader  :Sel_setPaletteLabel_
      
      # long
      const_set_lazy(:Sel_setPanelFont_isMultiple_) { sel_register_name("setPanelFont:isMultiple:") }
      const_attr_reader  :Sel_setPanelFont_isMultiple_
      
      # long
      const_set_lazy(:Sel_setPartialStringValidationEnabled_) { sel_register_name("setPartialStringValidationEnabled:") }
      const_attr_reader  :Sel_setPartialStringValidationEnabled_
      
      # long
      const_set_lazy(:Sel_setPatternPhase_) { sel_register_name("setPatternPhase:") }
      const_attr_reader  :Sel_setPatternPhase_
      
      # long
      const_set_lazy(:Sel_setPlaceholderString_) { sel_register_name("setPlaceholderString:") }
      const_attr_reader  :Sel_setPlaceholderString_
      
      # long
      const_set_lazy(:Sel_setPolicyDelegate_) { sel_register_name("setPolicyDelegate:") }
      const_attr_reader  :Sel_setPolicyDelegate_
      
      # long
      const_set_lazy(:Sel_setPreferences_) { sel_register_name("setPreferences:") }
      const_attr_reader  :Sel_setPreferences_
      
      # long
      const_set_lazy(:Sel_setPrinter_) { sel_register_name("setPrinter:") }
      const_attr_reader  :Sel_setPrinter_
      
      # long
      const_set_lazy(:Sel_setPropertyList_forType_) { sel_register_name("setPropertyList:forType:") }
      const_attr_reader  :Sel_setPropertyList_forType_
      
      # long
      const_set_lazy(:Sel_setPullsDown_) { sel_register_name("setPullsDown:") }
      const_attr_reader  :Sel_setPullsDown_
      
      # long
      const_set_lazy(:Sel_setReleasedWhenClosed_) { sel_register_name("setReleasedWhenClosed:") }
      const_attr_reader  :Sel_setReleasedWhenClosed_
      
      # long
      const_set_lazy(:Sel_setResizingMask_) { sel_register_name("setResizingMask:") }
      const_attr_reader  :Sel_setResizingMask_
      
      # long
      const_set_lazy(:Sel_setResourceLoadDelegate_) { sel_register_name("setResourceLoadDelegate:") }
      const_attr_reader  :Sel_setResourceLoadDelegate_
      
      # long
      const_set_lazy(:Sel_setRichText_) { sel_register_name("setRichText:") }
      const_attr_reader  :Sel_setRichText_
      
      # long
      const_set_lazy(:Sel_setRowHeight_) { sel_register_name("setRowHeight:") }
      const_attr_reader  :Sel_setRowHeight_
      
      # long
      const_set_lazy(:Sel_setScrollable_) { sel_register_name("setScrollable:") }
      const_attr_reader  :Sel_setScrollable_
      
      # long
      const_set_lazy(:Sel_setSearchButtonCell_) { sel_register_name("setSearchButtonCell:") }
      const_attr_reader  :Sel_setSearchButtonCell_
      
      # long
      const_set_lazy(:Sel_setSegmentCount_) { sel_register_name("setSegmentCount:") }
      const_attr_reader  :Sel_setSegmentCount_
      
      # long
      const_set_lazy(:Sel_setSegmentStyle_) { sel_register_name("setSegmentStyle:") }
      const_attr_reader  :Sel_setSegmentStyle_
      
      # long
      const_set_lazy(:Sel_setSelectable_) { sel_register_name("setSelectable:") }
      const_attr_reader  :Sel_setSelectable_
      
      # long
      const_set_lazy(:Sel_setSelected_forSegment_) { sel_register_name("setSelected:forSegment:") }
      const_attr_reader  :Sel_setSelected_forSegment_
      
      # long
      const_set_lazy(:Sel_setSelectedRange_) { sel_register_name("setSelectedRange:") }
      const_attr_reader  :Sel_setSelectedRange_
      
      # long
      const_set_lazy(:Sel_setSelectedSegment_) { sel_register_name("setSelectedSegment:") }
      const_attr_reader  :Sel_setSelectedSegment_
      
      # long
      const_set_lazy(:Sel_setServicesMenu_) { sel_register_name("setServicesMenu:") }
      const_attr_reader  :Sel_setServicesMenu_
      
      # long
      const_set_lazy(:Sel_setShouldAntialias_) { sel_register_name("setShouldAntialias:") }
      const_attr_reader  :Sel_setShouldAntialias_
      
      # long
      const_set_lazy(:Sel_setShowsPrintPanel_) { sel_register_name("setShowsPrintPanel:") }
      const_attr_reader  :Sel_setShowsPrintPanel_
      
      # long
      const_set_lazy(:Sel_setShowsProgressPanel_) { sel_register_name("setShowsProgressPanel:") }
      const_attr_reader  :Sel_setShowsProgressPanel_
      
      # long
      const_set_lazy(:Sel_setShowsResizeIndicator_) { sel_register_name("setShowsResizeIndicator:") }
      const_attr_reader  :Sel_setShowsResizeIndicator_
      
      # long
      const_set_lazy(:Sel_setShowsToolbarButton_) { sel_register_name("setShowsToolbarButton:") }
      const_attr_reader  :Sel_setShowsToolbarButton_
      
      # long
      const_set_lazy(:Sel_setSize_) { sel_register_name("setSize:") }
      const_attr_reader  :Sel_setSize_
      
      # long
      const_set_lazy(:Sel_setState_) { sel_register_name("setState:") }
      const_attr_reader  :Sel_setState_
      
      # long
      const_set_lazy(:Sel_setString_) { sel_register_name("setString:") }
      const_attr_reader  :Sel_setString_
      
      # long
      const_set_lazy(:Sel_setString_forType_) { sel_register_name("setString:forType:") }
      const_attr_reader  :Sel_setString_forType_
      
      # long
      const_set_lazy(:Sel_setStringValue_) { sel_register_name("setStringValue:") }
      const_attr_reader  :Sel_setStringValue_
      
      # long
      const_set_lazy(:Sel_setStroke) { sel_register_name("setStroke") }
      const_attr_reader  :Sel_setStroke
      
      # long
      const_set_lazy(:Sel_setSubmenu_) { sel_register_name("setSubmenu:") }
      const_attr_reader  :Sel_setSubmenu_
      
      # long
      const_set_lazy(:Sel_setSubmenu_forItem_) { sel_register_name("setSubmenu:forItem:") }
      const_attr_reader  :Sel_setSubmenu_forItem_
      
      # long
      const_set_lazy(:Sel_setTabStops_) { sel_register_name("setTabStops:") }
      const_attr_reader  :Sel_setTabStops_
      
      # long
      const_set_lazy(:Sel_setTabViewType_) { sel_register_name("setTabViewType:") }
      const_attr_reader  :Sel_setTabViewType_
      
      # long
      const_set_lazy(:Sel_setTag_forSegment_) { sel_register_name("setTag:forSegment:") }
      const_attr_reader  :Sel_setTag_forSegment_
      
      # long
      const_set_lazy(:Sel_setTarget_) { sel_register_name("setTarget:") }
      const_attr_reader  :Sel_setTarget_
      
      # long
      const_set_lazy(:Sel_setTextColor_) { sel_register_name("setTextColor:") }
      const_attr_reader  :Sel_setTextColor_
      
      # long
      const_set_lazy(:Sel_setTextStorage_) { sel_register_name("setTextStorage:") }
      const_attr_reader  :Sel_setTextStorage_
      
      # long
      const_set_lazy(:Sel_setTitle_) { sel_register_name("setTitle:") }
      const_attr_reader  :Sel_setTitle_
      
      # long
      const_set_lazy(:Sel_setTitleFont_) { sel_register_name("setTitleFont:") }
      const_attr_reader  :Sel_setTitleFont_
      
      # long
      const_set_lazy(:Sel_setTitlePosition_) { sel_register_name("setTitlePosition:") }
      const_attr_reader  :Sel_setTitlePosition_
      
      # long
      const_set_lazy(:Sel_setToolTip_) { sel_register_name("setToolTip:") }
      const_attr_reader  :Sel_setToolTip_
      
      # long
      const_set_lazy(:Sel_setToolTip_forSegment_) { sel_register_name("setToolTip:forSegment:") }
      const_attr_reader  :Sel_setToolTip_forSegment_
      
      # long
      const_set_lazy(:Sel_setToolbar_) { sel_register_name("setToolbar:") }
      const_attr_reader  :Sel_setToolbar_
      
      # long
      const_set_lazy(:Sel_setTrackingMode_) { sel_register_name("setTrackingMode:") }
      const_attr_reader  :Sel_setTrackingMode_
      
      # long
      const_set_lazy(:Sel_setTransformStruct_) { sel_register_name("setTransformStruct:") }
      const_attr_reader  :Sel_setTransformStruct_
      
      # long
      const_set_lazy(:Sel_setUIDelegate_) { sel_register_name("setUIDelegate:") }
      const_attr_reader  :Sel_setUIDelegate_
      
      # long
      const_set_lazy(:Sel_setURL_) { sel_register_name("setURL:") }
      const_attr_reader  :Sel_setURL_
      
      # long
      const_set_lazy(:Sel_setUpPrintOperationDefaultValues) { sel_register_name("setUpPrintOperationDefaultValues") }
      const_attr_reader  :Sel_setUpPrintOperationDefaultValues
      
      # long
      const_set_lazy(:Sel_setUsesAlternatingRowBackgroundColors_) { sel_register_name("setUsesAlternatingRowBackgroundColors:") }
      const_attr_reader  :Sel_setUsesAlternatingRowBackgroundColors_
      
      # long
      const_set_lazy(:Sel_setUsesThreadedAnimation_) { sel_register_name("setUsesThreadedAnimation:") }
      const_attr_reader  :Sel_setUsesThreadedAnimation_
      
      # long
      const_set_lazy(:Sel_setValue_forKey_) { sel_register_name("setValue:forKey:") }
      const_attr_reader  :Sel_setValue_forKey_
      
      # long
      const_set_lazy(:Sel_setValueWraps_) { sel_register_name("setValueWraps:") }
      const_attr_reader  :Sel_setValueWraps_
      
      # long
      const_set_lazy(:Sel_setVerticalScroller_) { sel_register_name("setVerticalScroller:") }
      const_attr_reader  :Sel_setVerticalScroller_
      
      # long
      const_set_lazy(:Sel_setView_) { sel_register_name("setView:") }
      const_attr_reader  :Sel_setView_
      
      # long
      const_set_lazy(:Sel_setVisible_) { sel_register_name("setVisible:") }
      const_attr_reader  :Sel_setVisible_
      
      # long
      const_set_lazy(:Sel_setWidth_) { sel_register_name("setWidth:") }
      const_attr_reader  :Sel_setWidth_
      
      # long
      const_set_lazy(:Sel_setWidth_forSegment_) { sel_register_name("setWidth:forSegment:") }
      const_attr_reader  :Sel_setWidth_forSegment_
      
      # long
      const_set_lazy(:Sel_setWidthTracksTextView_) { sel_register_name("setWidthTracksTextView:") }
      const_attr_reader  :Sel_setWidthTracksTextView_
      
      # long
      const_set_lazy(:Sel_setWindingRule_) { sel_register_name("setWindingRule:") }
      const_attr_reader  :Sel_setWindingRule_
      
      # long
      const_set_lazy(:Sel_setWorksWhenModal_) { sel_register_name("setWorksWhenModal:") }
      const_attr_reader  :Sel_setWorksWhenModal_
      
      # long
      const_set_lazy(:Sel_setWraps_) { sel_register_name("setWraps:") }
      const_attr_reader  :Sel_setWraps_
      
      # long
      const_set_lazy(:Sel_sharedApplication) { sel_register_name("sharedApplication") }
      const_attr_reader  :Sel_sharedApplication
      
      # long
      const_set_lazy(:Sel_sharedColorPanel) { sel_register_name("sharedColorPanel") }
      const_attr_reader  :Sel_sharedColorPanel
      
      # long
      const_set_lazy(:Sel_sharedFontManager) { sel_register_name("sharedFontManager") }
      const_attr_reader  :Sel_sharedFontManager
      
      # long
      const_set_lazy(:Sel_sharedFontPanel) { sel_register_name("sharedFontPanel") }
      const_attr_reader  :Sel_sharedFontPanel
      
      # long
      const_set_lazy(:Sel_sharedHTTPCookieStorage) { sel_register_name("sharedHTTPCookieStorage") }
      const_attr_reader  :Sel_sharedHTTPCookieStorage
      
      # long
      const_set_lazy(:Sel_sharedPrintInfo) { sel_register_name("sharedPrintInfo") }
      const_attr_reader  :Sel_sharedPrintInfo
      
      # long
      const_set_lazy(:Sel_sharedWorkspace) { sel_register_name("sharedWorkspace") }
      const_attr_reader  :Sel_sharedWorkspace
      
      # long
      const_set_lazy(:Sel_shiftKey) { sel_register_name("shiftKey") }
      const_attr_reader  :Sel_shiftKey
      
      # long
      const_set_lazy(:Sel_shouldAntialias) { sel_register_name("shouldAntialias") }
      const_attr_reader  :Sel_shouldAntialias
      
      # long
      const_set_lazy(:Sel_shouldChangeTextInRange_replacementString_) { sel_register_name("shouldChangeTextInRange:replacementString:") }
      const_attr_reader  :Sel_shouldChangeTextInRange_replacementString_
      
      # long
      const_set_lazy(:Sel_shouldDelayWindowOrderingForEvent_) { sel_register_name("shouldDelayWindowOrderingForEvent:") }
      const_attr_reader  :Sel_shouldDelayWindowOrderingForEvent_
      
      # long
      const_set_lazy(:Sel_size) { sel_register_name("size") }
      const_attr_reader  :Sel_size
      
      # long
      const_set_lazy(:Sel_sizeToFit) { sel_register_name("sizeToFit") }
      const_attr_reader  :Sel_sizeToFit
      
      # long
      const_set_lazy(:Sel_sizeValue) { sel_register_name("sizeValue") }
      const_attr_reader  :Sel_sizeValue
      
      # long
      const_set_lazy(:Sel_skipDescendents) { sel_register_name("skipDescendents") }
      const_attr_reader  :Sel_skipDescendents
      
      # long
      const_set_lazy(:Sel_smallSystemFontSize) { sel_register_name("smallSystemFontSize") }
      const_attr_reader  :Sel_smallSystemFontSize
      
      # long
      const_set_lazy(:Sel_sortIndicatorRectForBounds_) { sel_register_name("sortIndicatorRectForBounds:") }
      const_attr_reader  :Sel_sortIndicatorRectForBounds_
      
      # long
      const_set_lazy(:Sel_standardPreferences) { sel_register_name("standardPreferences") }
      const_attr_reader  :Sel_standardPreferences
      
      # long
      const_set_lazy(:Sel_standardWindowButton_) { sel_register_name("standardWindowButton:") }
      const_attr_reader  :Sel_standardWindowButton_
      
      # long
      const_set_lazy(:Sel_startAnimation_) { sel_register_name("startAnimation:") }
      const_attr_reader  :Sel_startAnimation_
      
      # long
      const_set_lazy(:Sel_state) { sel_register_name("state") }
      const_attr_reader  :Sel_state
      
      # long
      const_set_lazy(:Sel_statusItemWithLength_) { sel_register_name("statusItemWithLength:") }
      const_attr_reader  :Sel_statusItemWithLength_
      
      # long
      const_set_lazy(:Sel_stop_) { sel_register_name("stop:") }
      const_attr_reader  :Sel_stop_
      
      # long
      const_set_lazy(:Sel_stopAnimation_) { sel_register_name("stopAnimation:") }
      const_attr_reader  :Sel_stopAnimation_
      
      # long
      const_set_lazy(:Sel_stopLoading_) { sel_register_name("stopLoading:") }
      const_attr_reader  :Sel_stopLoading_
      
      # long
      const_set_lazy(:Sel_string) { sel_register_name("string") }
      const_attr_reader  :Sel_string
      
      # long
      const_set_lazy(:Sel_stringByAddingPercentEscapesUsingEncoding_) { sel_register_name("stringByAddingPercentEscapesUsingEncoding:") }
      const_attr_reader  :Sel_stringByAddingPercentEscapesUsingEncoding_
      
      # long
      const_set_lazy(:Sel_stringByAppendingPathComponent_) { sel_register_name("stringByAppendingPathComponent:") }
      const_attr_reader  :Sel_stringByAppendingPathComponent_
      
      # long
      const_set_lazy(:Sel_stringByAppendingString_) { sel_register_name("stringByAppendingString:") }
      const_attr_reader  :Sel_stringByAppendingString_
      
      # long
      const_set_lazy(:Sel_stringByDeletingLastPathComponent) { sel_register_name("stringByDeletingLastPathComponent") }
      const_attr_reader  :Sel_stringByDeletingLastPathComponent
      
      # long
      const_set_lazy(:Sel_stringByDeletingPathExtension) { sel_register_name("stringByDeletingPathExtension") }
      const_attr_reader  :Sel_stringByDeletingPathExtension
      
      # long
      const_set_lazy(:Sel_stringByEvaluatingJavaScriptFromString_) { sel_register_name("stringByEvaluatingJavaScriptFromString:") }
      const_attr_reader  :Sel_stringByEvaluatingJavaScriptFromString_
      
      # long
      const_set_lazy(:Sel_stringByReplacingOccurrencesOfString_withString_) { sel_register_name("stringByReplacingOccurrencesOfString:withString:") }
      const_attr_reader  :Sel_stringByReplacingOccurrencesOfString_withString_
      
      # long
      const_set_lazy(:Sel_stringForObjectValue_) { sel_register_name("stringForObjectValue:") }
      const_attr_reader  :Sel_stringForObjectValue_
      
      # long
      const_set_lazy(:Sel_stringForType_) { sel_register_name("stringForType:") }
      const_attr_reader  :Sel_stringForType_
      
      # long
      const_set_lazy(:Sel_stringValue) { sel_register_name("stringValue") }
      const_attr_reader  :Sel_stringValue
      
      # long
      const_set_lazy(:Sel_stringWithCharacters_length_) { sel_register_name("stringWithCharacters:length:") }
      const_attr_reader  :Sel_stringWithCharacters_length_
      
      # long
      const_set_lazy(:Sel_stringWithFormat_) { sel_register_name("stringWithFormat:") }
      const_attr_reader  :Sel_stringWithFormat_
      
      # long
      const_set_lazy(:Sel_stringWithUTF8String_) { sel_register_name("stringWithUTF8String:") }
      const_attr_reader  :Sel_stringWithUTF8String_
      
      # long
      const_set_lazy(:Sel_stroke) { sel_register_name("stroke") }
      const_attr_reader  :Sel_stroke
      
      # long
      const_set_lazy(:Sel_strokeRect_) { sel_register_name("strokeRect:") }
      const_attr_reader  :Sel_strokeRect_
      
      # long
      const_set_lazy(:Sel_styleMask) { sel_register_name("styleMask") }
      const_attr_reader  :Sel_styleMask
      
      # long
      const_set_lazy(:Sel_submenu) { sel_register_name("submenu") }
      const_attr_reader  :Sel_submenu
      
      # long
      const_set_lazy(:Sel_subviews) { sel_register_name("subviews") }
      const_attr_reader  :Sel_subviews
      
      # long
      const_set_lazy(:Sel_superclass) { sel_register_name("superclass") }
      const_attr_reader  :Sel_superclass
      
      # long
      const_set_lazy(:Sel_superview) { sel_register_name("superview") }
      const_attr_reader  :Sel_superview
      
      # long
      const_set_lazy(:Sel_systemFontOfSize_) { sel_register_name("systemFontOfSize:") }
      const_attr_reader  :Sel_systemFontOfSize_
      
      # long
      const_set_lazy(:Sel_systemFontSize) { sel_register_name("systemFontSize") }
      const_attr_reader  :Sel_systemFontSize
      
      # long
      const_set_lazy(:Sel_systemFontSizeForControlSize_) { sel_register_name("systemFontSizeForControlSize:") }
      const_attr_reader  :Sel_systemFontSizeForControlSize_
      
      # long
      const_set_lazy(:Sel_systemStatusBar) { sel_register_name("systemStatusBar") }
      const_attr_reader  :Sel_systemStatusBar
      
      # long
      const_set_lazy(:Sel_systemVersion) { sel_register_name("systemVersion") }
      const_attr_reader  :Sel_systemVersion
      
      # long
      const_set_lazy(:Sel_tabStopType) { sel_register_name("tabStopType") }
      const_attr_reader  :Sel_tabStopType
      
      # long
      const_set_lazy(:Sel_tabStops) { sel_register_name("tabStops") }
      const_attr_reader  :Sel_tabStops
      
      # long
      const_set_lazy(:Sel_tabView_didSelectTabViewItem_) { sel_register_name("tabView:didSelectTabViewItem:") }
      const_attr_reader  :Sel_tabView_didSelectTabViewItem_
      
      # long
      const_set_lazy(:Sel_tabView_shouldSelectTabViewItem_) { sel_register_name("tabView:shouldSelectTabViewItem:") }
      const_attr_reader  :Sel_tabView_shouldSelectTabViewItem_
      
      # long
      const_set_lazy(:Sel_tabView_willSelectTabViewItem_) { sel_register_name("tabView:willSelectTabViewItem:") }
      const_attr_reader  :Sel_tabView_willSelectTabViewItem_
      
      # long
      const_set_lazy(:Sel_tabViewItemAtPoint_) { sel_register_name("tabViewItemAtPoint:") }
      const_attr_reader  :Sel_tabViewItemAtPoint_
      
      # long
      const_set_lazy(:Sel_tableColumns) { sel_register_name("tableColumns") }
      const_attr_reader  :Sel_tableColumns
      
      # long
      const_set_lazy(:Sel_tableView_acceptDrop_row_dropOperation_) { sel_register_name("tableView:acceptDrop:row:dropOperation:") }
      const_attr_reader  :Sel_tableView_acceptDrop_row_dropOperation_
      
      # long
      const_set_lazy(:Sel_tableView_didClickTableColumn_) { sel_register_name("tableView:didClickTableColumn:") }
      const_attr_reader  :Sel_tableView_didClickTableColumn_
      
      # long
      const_set_lazy(:Sel_tableView_objectValueForTableColumn_row_) { sel_register_name("tableView:objectValueForTableColumn:row:") }
      const_attr_reader  :Sel_tableView_objectValueForTableColumn_row_
      
      # long
      const_set_lazy(:Sel_tableView_setObjectValue_forTableColumn_row_) { sel_register_name("tableView:setObjectValue:forTableColumn:row:") }
      const_attr_reader  :Sel_tableView_setObjectValue_forTableColumn_row_
      
      # long
      const_set_lazy(:Sel_tableView_shouldEditTableColumn_row_) { sel_register_name("tableView:shouldEditTableColumn:row:") }
      const_attr_reader  :Sel_tableView_shouldEditTableColumn_row_
      
      # long
      const_set_lazy(:Sel_tableView_validateDrop_proposedRow_proposedDropOperation_) { sel_register_name("tableView:validateDrop:proposedRow:proposedDropOperation:") }
      const_attr_reader  :Sel_tableView_validateDrop_proposedRow_proposedDropOperation_
      
      # long
      const_set_lazy(:Sel_tableView_willDisplayCell_forTableColumn_row_) { sel_register_name("tableView:willDisplayCell:forTableColumn:row:") }
      const_attr_reader  :Sel_tableView_willDisplayCell_forTableColumn_row_
      
      # long
      const_set_lazy(:Sel_tableView_writeRowsWithIndexes_toPasteboard_) { sel_register_name("tableView:writeRowsWithIndexes:toPasteboard:") }
      const_attr_reader  :Sel_tableView_writeRowsWithIndexes_toPasteboard_
      
      # long
      const_set_lazy(:Sel_tableViewColumnDidMove_) { sel_register_name("tableViewColumnDidMove:") }
      const_attr_reader  :Sel_tableViewColumnDidMove_
      
      # long
      const_set_lazy(:Sel_tableViewColumnDidResize_) { sel_register_name("tableViewColumnDidResize:") }
      const_attr_reader  :Sel_tableViewColumnDidResize_
      
      # long
      const_set_lazy(:Sel_tableViewSelectionDidChange_) { sel_register_name("tableViewSelectionDidChange:") }
      const_attr_reader  :Sel_tableViewSelectionDidChange_
      
      # long
      const_set_lazy(:Sel_target) { sel_register_name("target") }
      const_attr_reader  :Sel_target
      
      # long
      const_set_lazy(:Sel_terminate_) { sel_register_name("terminate:") }
      const_attr_reader  :Sel_terminate_
      
      # long
      const_set_lazy(:Sel_textBackgroundColor) { sel_register_name("textBackgroundColor") }
      const_attr_reader  :Sel_textBackgroundColor
      
      # long
      const_set_lazy(:Sel_textColor) { sel_register_name("textColor") }
      const_attr_reader  :Sel_textColor
      
      # long
      const_set_lazy(:Sel_textContainer) { sel_register_name("textContainer") }
      const_attr_reader  :Sel_textContainer
      
      # long
      const_set_lazy(:Sel_textDidChange_) { sel_register_name("textDidChange:") }
      const_attr_reader  :Sel_textDidChange_
      
      # long
      const_set_lazy(:Sel_textDidEndEditing_) { sel_register_name("textDidEndEditing:") }
      const_attr_reader  :Sel_textDidEndEditing_
      
      # long
      const_set_lazy(:Sel_textStorage) { sel_register_name("textStorage") }
      const_attr_reader  :Sel_textStorage
      
      # long
      const_set_lazy(:Sel_textView_clickedOnLink_atIndex_) { sel_register_name("textView:clickedOnLink:atIndex:") }
      const_attr_reader  :Sel_textView_clickedOnLink_atIndex_
      
      # long
      const_set_lazy(:Sel_textView_willChangeSelectionFromCharacterRange_toCharacterRange_) { sel_register_name("textView:willChangeSelectionFromCharacterRange:toCharacterRange:") }
      const_attr_reader  :Sel_textView_willChangeSelectionFromCharacterRange_toCharacterRange_
      
      # long
      const_set_lazy(:Sel_textViewDidChangeSelection_) { sel_register_name("textViewDidChangeSelection:") }
      const_attr_reader  :Sel_textViewDidChangeSelection_
      
      # long
      const_set_lazy(:Sel_threadDictionary) { sel_register_name("threadDictionary") }
      const_attr_reader  :Sel_threadDictionary
      
      # long
      const_set_lazy(:Sel_tile) { sel_register_name("tile") }
      const_attr_reader  :Sel_tile
      
      # long
      const_set_lazy(:Sel_timeZone) { sel_register_name("timeZone") }
      const_attr_reader  :Sel_timeZone
      
      # long
      const_set_lazy(:Sel_timestamp) { sel_register_name("timestamp") }
      const_attr_reader  :Sel_timestamp
      
      # long
      const_set_lazy(:Sel_title) { sel_register_name("title") }
      const_attr_reader  :Sel_title
      
      # long
      const_set_lazy(:Sel_titleCell) { sel_register_name("titleCell") }
      const_attr_reader  :Sel_titleCell
      
      # long
      const_set_lazy(:Sel_titleFont) { sel_register_name("titleFont") }
      const_attr_reader  :Sel_titleFont
      
      # long
      const_set_lazy(:Sel_titleOfSelectedItem) { sel_register_name("titleOfSelectedItem") }
      const_attr_reader  :Sel_titleOfSelectedItem
      
      # long
      const_set_lazy(:Sel_titleRectForBounds_) { sel_register_name("titleRectForBounds:") }
      const_attr_reader  :Sel_titleRectForBounds_
      
      # long
      const_set_lazy(:Sel_toggleToolbarShown_) { sel_register_name("toggleToolbarShown:") }
      const_attr_reader  :Sel_toggleToolbarShown_
      
      # long
      const_set_lazy(:Sel_toolbar) { sel_register_name("toolbar") }
      const_attr_reader  :Sel_toolbar
      
      # long
      const_set_lazy(:Sel_toolbar_itemForItemIdentifier_willBeInsertedIntoToolbar_) { sel_register_name("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:") }
      const_attr_reader  :Sel_toolbar_itemForItemIdentifier_willBeInsertedIntoToolbar_
      
      # long
      const_set_lazy(:Sel_toolbarAllowedItemIdentifiers_) { sel_register_name("toolbarAllowedItemIdentifiers:") }
      const_attr_reader  :Sel_toolbarAllowedItemIdentifiers_
      
      # long
      const_set_lazy(:Sel_toolbarDefaultItemIdentifiers_) { sel_register_name("toolbarDefaultItemIdentifiers:") }
      const_attr_reader  :Sel_toolbarDefaultItemIdentifiers_
      
      # long
      const_set_lazy(:Sel_toolbarDidRemoveItem_) { sel_register_name("toolbarDidRemoveItem:") }
      const_attr_reader  :Sel_toolbarDidRemoveItem_
      
      # long
      const_set_lazy(:Sel_toolbarSelectableItemIdentifiers_) { sel_register_name("toolbarSelectableItemIdentifiers:") }
      const_attr_reader  :Sel_toolbarSelectableItemIdentifiers_
      
      # long
      const_set_lazy(:Sel_toolbarWillAddItem_) { sel_register_name("toolbarWillAddItem:") }
      const_attr_reader  :Sel_toolbarWillAddItem_
      
      # long
      const_set_lazy(:Sel_trackingAreas) { sel_register_name("trackingAreas") }
      const_attr_reader  :Sel_trackingAreas
      
      # long
      const_set_lazy(:Sel_traitsOfFont_) { sel_register_name("traitsOfFont:") }
      const_attr_reader  :Sel_traitsOfFont_
      
      # long
      const_set_lazy(:Sel_transform) { sel_register_name("transform") }
      const_attr_reader  :Sel_transform
      
      # long
      const_set_lazy(:Sel_transformPoint_) { sel_register_name("transformPoint:") }
      const_attr_reader  :Sel_transformPoint_
      
      # long
      const_set_lazy(:Sel_transformSize_) { sel_register_name("transformSize:") }
      const_attr_reader  :Sel_transformSize_
      
      # long
      const_set_lazy(:Sel_transformStruct) { sel_register_name("transformStruct") }
      const_attr_reader  :Sel_transformStruct
      
      # long
      const_set_lazy(:Sel_transformUsingAffineTransform_) { sel_register_name("transformUsingAffineTransform:") }
      const_attr_reader  :Sel_transformUsingAffineTransform_
      
      # long
      const_set_lazy(:Sel_translateXBy_yBy_) { sel_register_name("translateXBy:yBy:") }
      const_attr_reader  :Sel_translateXBy_yBy_
      
      # long
      const_set_lazy(:Sel_type) { sel_register_name("type") }
      const_attr_reader  :Sel_type
      
      # long
      const_set_lazy(:Sel_types) { sel_register_name("types") }
      const_attr_reader  :Sel_types
      
      # long
      const_set_lazy(:Sel_typesetter) { sel_register_name("typesetter") }
      const_attr_reader  :Sel_typesetter
      
      # long
      const_set_lazy(:Sel_unarchiveObjectWithData_) { sel_register_name("unarchiveObjectWithData:") }
      const_attr_reader  :Sel_unarchiveObjectWithData_
      
      # long
      const_set_lazy(:Sel_undefined) { sel_register_name("undefined") }
      const_attr_reader  :Sel_undefined
      
      # long
      const_set_lazy(:Sel_unhideAllApplications_) { sel_register_name("unhideAllApplications:") }
      const_attr_reader  :Sel_unhideAllApplications_
      
      # long
      const_set_lazy(:Sel_unlockFocus) { sel_register_name("unlockFocus") }
      const_attr_reader  :Sel_unlockFocus
      
      # long
      const_set_lazy(:Sel_unmarkText) { sel_register_name("unmarkText") }
      const_attr_reader  :Sel_unmarkText
      
      # long
      const_set_lazy(:Sel_unregisterDraggedTypes) { sel_register_name("unregisterDraggedTypes") }
      const_attr_reader  :Sel_unregisterDraggedTypes
      
      # long
      const_set_lazy(:Sel_update) { sel_register_name("update") }
      const_attr_reader  :Sel_update
      
      # long
      const_set_lazy(:Sel_updateTrackingAreas) { sel_register_name("updateTrackingAreas") }
      const_attr_reader  :Sel_updateTrackingAreas
      
      # long
      const_set_lazy(:Sel_use) { sel_register_name("use") }
      const_attr_reader  :Sel_use
      
      # long
      const_set_lazy(:Sel_useCredential_forAuthenticationChallenge_) { sel_register_name("useCredential:forAuthenticationChallenge:") }
      const_attr_reader  :Sel_useCredential_forAuthenticationChallenge_
      
      # long
      const_set_lazy(:Sel_usedRectForTextContainer_) { sel_register_name("usedRectForTextContainer:") }
      const_attr_reader  :Sel_usedRectForTextContainer_
      
      # long
      const_set_lazy(:Sel_user) { sel_register_name("user") }
      const_attr_reader  :Sel_user
      
      # long
      const_set_lazy(:Sel_userInfo) { sel_register_name("userInfo") }
      const_attr_reader  :Sel_userInfo
      
      # long
      const_set_lazy(:Sel_usesAlternatingRowBackgroundColors) { sel_register_name("usesAlternatingRowBackgroundColors") }
      const_attr_reader  :Sel_usesAlternatingRowBackgroundColors
      
      # long
      const_set_lazy(:Sel_validAttributesForMarkedText) { sel_register_name("validAttributesForMarkedText") }
      const_attr_reader  :Sel_validAttributesForMarkedText
      
      # long
      const_set_lazy(:Sel_validateVisibleColumns) { sel_register_name("validateVisibleColumns") }
      const_attr_reader  :Sel_validateVisibleColumns
      
      # long
      const_set_lazy(:Sel_value) { sel_register_name("value") }
      const_attr_reader  :Sel_value
      
      # long
      const_set_lazy(:Sel_valueForKey_) { sel_register_name("valueForKey:") }
      const_attr_reader  :Sel_valueForKey_
      
      # long
      const_set_lazy(:Sel_valueWithPoint_) { sel_register_name("valueWithPoint:") }
      const_attr_reader  :Sel_valueWithPoint_
      
      # long
      const_set_lazy(:Sel_valueWithRange_) { sel_register_name("valueWithRange:") }
      const_attr_reader  :Sel_valueWithRange_
      
      # long
      const_set_lazy(:Sel_valueWithRect_) { sel_register_name("valueWithRect:") }
      const_attr_reader  :Sel_valueWithRect_
      
      # long
      const_set_lazy(:Sel_valueWithSize_) { sel_register_name("valueWithSize:") }
      const_attr_reader  :Sel_valueWithSize_
      
      # long
      const_set_lazy(:Sel_view) { sel_register_name("view") }
      const_attr_reader  :Sel_view
      
      # long
      const_set_lazy(:Sel_view_stringForToolTip_point_userData_) { sel_register_name("view:stringForToolTip:point:userData:") }
      const_attr_reader  :Sel_view_stringForToolTip_point_userData_
      
      # long
      const_set_lazy(:Sel_viewDidMoveToWindow) { sel_register_name("viewDidMoveToWindow") }
      const_attr_reader  :Sel_viewDidMoveToWindow
      
      # long
      const_set_lazy(:Sel_visibleFrame) { sel_register_name("visibleFrame") }
      const_attr_reader  :Sel_visibleFrame
      
      # long
      const_set_lazy(:Sel_visibleRect) { sel_register_name("visibleRect") }
      const_attr_reader  :Sel_visibleRect
      
      # long
      const_set_lazy(:Sel_wantsPeriodicDraggingUpdates) { sel_register_name("wantsPeriodicDraggingUpdates") }
      const_attr_reader  :Sel_wantsPeriodicDraggingUpdates
      
      # long
      const_set_lazy(:Sel_wantsToHandleMouseEvents) { sel_register_name("wantsToHandleMouseEvents") }
      const_attr_reader  :Sel_wantsToHandleMouseEvents
      
      # long
      const_set_lazy(:Sel_webFrame) { sel_register_name("webFrame") }
      const_attr_reader  :Sel_webFrame
      
      # long
      const_set_lazy(:Sel_webScriptValueAtIndex_) { sel_register_name("webScriptValueAtIndex:") }
      const_attr_reader  :Sel_webScriptValueAtIndex_
      
      # long
      const_set_lazy(:Sel_webView_contextMenuItemsForElement_defaultMenuItems_) { sel_register_name("webView:contextMenuItemsForElement:defaultMenuItems:") }
      const_attr_reader  :Sel_webView_contextMenuItemsForElement_defaultMenuItems_
      
      # long
      const_set_lazy(:Sel_webView_createWebViewWithRequest_) { sel_register_name("webView:createWebViewWithRequest:") }
      const_attr_reader  :Sel_webView_createWebViewWithRequest_
      
      # long
      const_set_lazy(:Sel_webView_decidePolicyForMIMEType_request_frame_decisionListener_) { sel_register_name("webView:decidePolicyForMIMEType:request:frame:decisionListener:") }
      const_attr_reader  :Sel_webView_decidePolicyForMIMEType_request_frame_decisionListener_
      
      # long
      const_set_lazy(:Sel_webView_decidePolicyForNavigationAction_request_frame_decisionListener_) { sel_register_name("webView:decidePolicyForNavigationAction:request:frame:decisionListener:") }
      const_attr_reader  :Sel_webView_decidePolicyForNavigationAction_request_frame_decisionListener_
      
      # long
      const_set_lazy(:Sel_webView_decidePolicyForNewWindowAction_request_newFrameName_decisionListener_) { sel_register_name("webView:decidePolicyForNewWindowAction:request:newFrameName:decisionListener:") }
      const_attr_reader  :Sel_webView_decidePolicyForNewWindowAction_request_newFrameName_decisionListener_
      
      # long
      const_set_lazy(:Sel_webView_didChangeLocationWithinPageForFrame_) { sel_register_name("webView:didChangeLocationWithinPageForFrame:") }
      const_attr_reader  :Sel_webView_didChangeLocationWithinPageForFrame_
      
      # long
      const_set_lazy(:Sel_webView_didCommitLoadForFrame_) { sel_register_name("webView:didCommitLoadForFrame:") }
      const_attr_reader  :Sel_webView_didCommitLoadForFrame_
      
      # long
      const_set_lazy(:Sel_webView_didFailProvisionalLoadWithError_forFrame_) { sel_register_name("webView:didFailProvisionalLoadWithError:forFrame:") }
      const_attr_reader  :Sel_webView_didFailProvisionalLoadWithError_forFrame_
      
      # long
      const_set_lazy(:Sel_webView_didFinishLoadForFrame_) { sel_register_name("webView:didFinishLoadForFrame:") }
      const_attr_reader  :Sel_webView_didFinishLoadForFrame_
      
      # long
      const_set_lazy(:Sel_webView_didReceiveTitle_forFrame_) { sel_register_name("webView:didReceiveTitle:forFrame:") }
      const_attr_reader  :Sel_webView_didReceiveTitle_forFrame_
      
      # long
      const_set_lazy(:Sel_webView_didStartProvisionalLoadForFrame_) { sel_register_name("webView:didStartProvisionalLoadForFrame:") }
      const_attr_reader  :Sel_webView_didStartProvisionalLoadForFrame_
      
      # long
      const_set_lazy(:Sel_webView_identifierForInitialRequest_fromDataSource_) { sel_register_name("webView:identifierForInitialRequest:fromDataSource:") }
      const_attr_reader  :Sel_webView_identifierForInitialRequest_fromDataSource_
      
      # long
      const_set_lazy(:Sel_webView_mouseDidMoveOverElement_modifierFlags_) { sel_register_name("webView:mouseDidMoveOverElement:modifierFlags:") }
      const_attr_reader  :Sel_webView_mouseDidMoveOverElement_modifierFlags_
      
      # long
      const_set_lazy(:Sel_webView_printFrameView_) { sel_register_name("webView:printFrameView:") }
      const_attr_reader  :Sel_webView_printFrameView_
      
      # long
      const_set_lazy(:Sel_webView_resource_didFailLoadingWithError_fromDataSource_) { sel_register_name("webView:resource:didFailLoadingWithError:fromDataSource:") }
      const_attr_reader  :Sel_webView_resource_didFailLoadingWithError_fromDataSource_
      
      # long
      const_set_lazy(:Sel_webView_resource_didFinishLoadingFromDataSource_) { sel_register_name("webView:resource:didFinishLoadingFromDataSource:") }
      const_attr_reader  :Sel_webView_resource_didFinishLoadingFromDataSource_
      
      # long
      const_set_lazy(:Sel_webView_resource_didReceiveAuthenticationChallenge_fromDataSource_) { sel_register_name("webView:resource:didReceiveAuthenticationChallenge:fromDataSource:") }
      const_attr_reader  :Sel_webView_resource_didReceiveAuthenticationChallenge_fromDataSource_
      
      # long
      const_set_lazy(:Sel_webView_resource_willSendRequest_redirectResponse_fromDataSource_) { sel_register_name("webView:resource:willSendRequest:redirectResponse:fromDataSource:") }
      const_attr_reader  :Sel_webView_resource_willSendRequest_redirectResponse_fromDataSource_
      
      # long
      const_set_lazy(:Sel_webView_runJavaScriptAlertPanelWithMessage_) { sel_register_name("webView:runJavaScriptAlertPanelWithMessage:") }
      const_attr_reader  :Sel_webView_runJavaScriptAlertPanelWithMessage_
      
      # long
      const_set_lazy(:Sel_webView_runJavaScriptConfirmPanelWithMessage_) { sel_register_name("webView:runJavaScriptConfirmPanelWithMessage:") }
      const_attr_reader  :Sel_webView_runJavaScriptConfirmPanelWithMessage_
      
      # long
      const_set_lazy(:Sel_webView_runOpenPanelForFileButtonWithResultListener_) { sel_register_name("webView:runOpenPanelForFileButtonWithResultListener:") }
      const_attr_reader  :Sel_webView_runOpenPanelForFileButtonWithResultListener_
      
      # long
      const_set_lazy(:Sel_webView_setFrame_) { sel_register_name("webView:setFrame:") }
      const_attr_reader  :Sel_webView_setFrame_
      
      # long
      const_set_lazy(:Sel_webView_setResizable_) { sel_register_name("webView:setResizable:") }
      const_attr_reader  :Sel_webView_setResizable_
      
      # long
      const_set_lazy(:Sel_webView_setStatusBarVisible_) { sel_register_name("webView:setStatusBarVisible:") }
      const_attr_reader  :Sel_webView_setStatusBarVisible_
      
      # long
      const_set_lazy(:Sel_webView_setStatusText_) { sel_register_name("webView:setStatusText:") }
      const_attr_reader  :Sel_webView_setStatusText_
      
      # long
      const_set_lazy(:Sel_webView_setToolbarsVisible_) { sel_register_name("webView:setToolbarsVisible:") }
      const_attr_reader  :Sel_webView_setToolbarsVisible_
      
      # long
      const_set_lazy(:Sel_webView_unableToImplementPolicyWithError_frame_) { sel_register_name("webView:unableToImplementPolicyWithError:frame:") }
      const_attr_reader  :Sel_webView_unableToImplementPolicyWithError_frame_
      
      # long
      const_set_lazy(:Sel_webView_windowScriptObjectAvailable_) { sel_register_name("webView:windowScriptObjectAvailable:") }
      const_attr_reader  :Sel_webView_windowScriptObjectAvailable_
      
      # long
      const_set_lazy(:Sel_webViewClose_) { sel_register_name("webViewClose:") }
      const_attr_reader  :Sel_webViewClose_
      
      # long
      const_set_lazy(:Sel_webViewFocus_) { sel_register_name("webViewFocus:") }
      const_attr_reader  :Sel_webViewFocus_
      
      # long
      const_set_lazy(:Sel_webViewShow_) { sel_register_name("webViewShow:") }
      const_attr_reader  :Sel_webViewShow_
      
      # long
      const_set_lazy(:Sel_webViewUnfocus_) { sel_register_name("webViewUnfocus:") }
      const_attr_reader  :Sel_webViewUnfocus_
      
      # long
      const_set_lazy(:Sel_weightOfFont_) { sel_register_name("weightOfFont:") }
      const_attr_reader  :Sel_weightOfFont_
      
      # long
      const_set_lazy(:Sel_wheelDelta) { sel_register_name("wheelDelta") }
      const_attr_reader  :Sel_wheelDelta
      
      # long
      const_set_lazy(:Sel_width) { sel_register_name("width") }
      const_attr_reader  :Sel_width
      
      # long
      const_set_lazy(:Sel_window) { sel_register_name("window") }
      const_attr_reader  :Sel_window
      
      # long
      const_set_lazy(:Sel_windowBackgroundColor) { sel_register_name("windowBackgroundColor") }
      const_attr_reader  :Sel_windowBackgroundColor
      
      # long
      const_set_lazy(:Sel_windowDidBecomeKey_) { sel_register_name("windowDidBecomeKey:") }
      const_attr_reader  :Sel_windowDidBecomeKey_
      
      # long
      const_set_lazy(:Sel_windowDidMove_) { sel_register_name("windowDidMove:") }
      const_attr_reader  :Sel_windowDidMove_
      
      # long
      const_set_lazy(:Sel_windowDidResignKey_) { sel_register_name("windowDidResignKey:") }
      const_attr_reader  :Sel_windowDidResignKey_
      
      # long
      const_set_lazy(:Sel_windowDidResize_) { sel_register_name("windowDidResize:") }
      const_attr_reader  :Sel_windowDidResize_
      
      # long
      const_set_lazy(:Sel_windowFrameColor) { sel_register_name("windowFrameColor") }
      const_attr_reader  :Sel_windowFrameColor
      
      # long
      const_set_lazy(:Sel_windowFrameTextColor) { sel_register_name("windowFrameTextColor") }
      const_attr_reader  :Sel_windowFrameTextColor
      
      # long
      const_set_lazy(:Sel_windowNumber) { sel_register_name("windowNumber") }
      const_attr_reader  :Sel_windowNumber
      
      # long
      const_set_lazy(:Sel_windowShouldClose_) { sel_register_name("windowShouldClose:") }
      const_attr_reader  :Sel_windowShouldClose_
      
      # long
      const_set_lazy(:Sel_windowWillClose_) { sel_register_name("windowWillClose:") }
      const_attr_reader  :Sel_windowWillClose_
      
      # long
      const_set_lazy(:Sel_windows) { sel_register_name("windows") }
      const_attr_reader  :Sel_windows
      
      # long
      const_set_lazy(:Sel_worksWhenModal) { sel_register_name("worksWhenModal") }
      const_attr_reader  :Sel_worksWhenModal
      
      # long
      const_set_lazy(:Sel_wraps) { sel_register_name("wraps") }
      const_attr_reader  :Sel_wraps
      
      # long
      const_set_lazy(:Sel_writeToPasteboard_) { sel_register_name("writeToPasteboard:") }
      const_attr_reader  :Sel_writeToPasteboard_
      
      # long
      const_set_lazy(:Sel_yearOfCommonEra) { sel_register_name("yearOfCommonEra") }
      const_attr_reader  :Sel_yearOfCommonEra
      
      # long
      const_set_lazy(:Sel_zoom_) { sel_register_name("zoom:") }
      const_attr_reader  :Sel_zoom_
      
      # Constants
      const_set_lazy(:NSAlertFirstButtonReturn) { 1000 }
      const_attr_reader  :NSAlertFirstButtonReturn
      
      const_set_lazy(:NSAlertSecondButtonReturn) { 1001 }
      const_attr_reader  :NSAlertSecondButtonReturn
      
      const_set_lazy(:NSAlertThirdButtonReturn) { 1002 }
      const_attr_reader  :NSAlertThirdButtonReturn
      
      const_set_lazy(:NSAlphaFirstBitmapFormat) { 1 }
      const_attr_reader  :NSAlphaFirstBitmapFormat
      
      const_set_lazy(:NSAlphaNonpremultipliedBitmapFormat) { 2 }
      const_attr_reader  :NSAlphaNonpremultipliedBitmapFormat
      
      const_set_lazy(:NSAlternateKeyMask) { 524288 }
      const_attr_reader  :NSAlternateKeyMask
      
      const_set_lazy(:NSApplicationDefined) { 15 }
      const_attr_reader  :NSApplicationDefined
      
      const_set_lazy(:NSAtTop) { 2 }
      const_attr_reader  :NSAtTop
      
      const_set_lazy(:NSBackingStoreBuffered) { 2 }
      const_attr_reader  :NSBackingStoreBuffered
      
      const_set_lazy(:NSBackspaceCharacter) { 8 }
      const_attr_reader  :NSBackspaceCharacter
      
      const_set_lazy(:NSBevelLineJoinStyle) { 2 }
      const_attr_reader  :NSBevelLineJoinStyle
      
      const_set_lazy(:NSBezelBorder) { 2 }
      const_attr_reader  :NSBezelBorder
      
      const_set_lazy(:NSBoldFontMask) { 2 }
      const_attr_reader  :NSBoldFontMask
      
      const_set_lazy(:NSBorderlessWindowMask) { 0 }
      const_attr_reader  :NSBorderlessWindowMask
      
      const_set_lazy(:NSBottomTabsBezelBorder) { 2 }
      const_attr_reader  :NSBottomTabsBezelBorder
      
      const_set_lazy(:NSBoxCustom) { 4 }
      const_attr_reader  :NSBoxCustom
      
      const_set_lazy(:NSBoxSeparator) { 2 }
      const_attr_reader  :NSBoxSeparator
      
      const_set_lazy(:NSButtLineCapStyle) { 0 }
      const_attr_reader  :NSButtLineCapStyle
      
      const_set_lazy(:NSCancelButton) { 0 }
      const_attr_reader  :NSCancelButton
      
      const_set_lazy(:NSCarriageReturnCharacter) { 13 }
      const_attr_reader  :NSCarriageReturnCharacter
      
      const_set_lazy(:NSCenterTextAlignment) { 2 }
      const_attr_reader  :NSCenterTextAlignment
      
      const_set_lazy(:NSClockAndCalendarDatePickerStyle) { 1 }
      const_attr_reader  :NSClockAndCalendarDatePickerStyle
      
      const_set_lazy(:NSClosableWindowMask) { 2 }
      const_attr_reader  :NSClosableWindowMask
      
      const_set_lazy(:NSClosePathBezierPathElement) { 3 }
      const_attr_reader  :NSClosePathBezierPathElement
      
      const_set_lazy(:NSCommandKeyMask) { 1048576 }
      const_attr_reader  :NSCommandKeyMask
      
      const_set_lazy(:NSCompositeClear) { 0 }
      const_attr_reader  :NSCompositeClear
      
      const_set_lazy(:NSCompositeCopy) { 1 }
      const_attr_reader  :NSCompositeCopy
      
      const_set_lazy(:NSCompositeSourceOver) { 2 }
      const_attr_reader  :NSCompositeSourceOver
      
      const_set_lazy(:NSCompositeXOR) { 10 }
      const_attr_reader  :NSCompositeXOR
      
      const_set_lazy(:NSControlKeyMask) { 262144 }
      const_attr_reader  :NSControlKeyMask
      
      const_set_lazy(:NSCriticalAlertStyle) { 2 }
      const_attr_reader  :NSCriticalAlertStyle
      
      const_set_lazy(:NSCurveToBezierPathElement) { 2 }
      const_attr_reader  :NSCurveToBezierPathElement
      
      const_set_lazy(:NSDeleteCharacter) { 127 }
      const_attr_reader  :NSDeleteCharacter
      
      const_set_lazy(:NSDeviceIndependentModifierFlagsMask) { -65536 }
      const_attr_reader  :NSDeviceIndependentModifierFlagsMask
      
      const_set_lazy(:NSDragOperationCopy) { 1 }
      const_attr_reader  :NSDragOperationCopy
      
      const_set_lazy(:NSDragOperationDelete) { 32 }
      const_attr_reader  :NSDragOperationDelete
      
      const_set_lazy(:NSDragOperationEvery) { -1 }
      const_attr_reader  :NSDragOperationEvery
      
      const_set_lazy(:NSDragOperationLink) { 2 }
      const_attr_reader  :NSDragOperationLink
      
      const_set_lazy(:NSDragOperationMove) { 16 }
      const_attr_reader  :NSDragOperationMove
      
      const_set_lazy(:NSDragOperationNone) { 0 }
      const_attr_reader  :NSDragOperationNone
      
      const_set_lazy(:NSEnterCharacter) { 3 }
      const_attr_reader  :NSEnterCharacter
      
      const_set_lazy(:NSEvenOddWindingRule) { 1 }
      const_attr_reader  :NSEvenOddWindingRule
      
      const_set_lazy(:NSFileHandlingPanelOKButton) { 1 }
      const_attr_reader  :NSFileHandlingPanelOKButton
      
      const_set_lazy(:NSFlagsChanged) { 12 }
      const_attr_reader  :NSFlagsChanged
      
      const_set_lazy(:NSFocusRingTypeNone) { 1 }
      const_attr_reader  :NSFocusRingTypeNone
      
      const_set_lazy(:NSHelpFunctionKey) { 63302 }
      const_attr_reader  :NSHelpFunctionKey
      
      const_set_lazy(:NSHelpKeyMask) { 4194304 }
      const_attr_reader  :NSHelpKeyMask
      
      const_set_lazy(:NSHourMinuteDatePickerElementFlag) { 12 }
      const_attr_reader  :NSHourMinuteDatePickerElementFlag
      
      const_set_lazy(:NSHourMinuteSecondDatePickerElementFlag) { 14 }
      const_attr_reader  :NSHourMinuteSecondDatePickerElementFlag
      
      const_set_lazy(:NSImageAbove) { 5 }
      const_attr_reader  :NSImageAbove
      
      const_set_lazy(:NSImageAlignCenter) { 0 }
      const_attr_reader  :NSImageAlignCenter
      
      const_set_lazy(:NSImageAlignLeft) { 4 }
      const_attr_reader  :NSImageAlignLeft
      
      const_set_lazy(:NSImageAlignRight) { 8 }
      const_attr_reader  :NSImageAlignRight
      
      const_set_lazy(:NSImageCacheNever) { 3 }
      const_attr_reader  :NSImageCacheNever
      
      const_set_lazy(:NSImageInterpolationDefault) { 0 }
      const_attr_reader  :NSImageInterpolationDefault
      
      const_set_lazy(:NSImageInterpolationHigh) { 3 }
      const_attr_reader  :NSImageInterpolationHigh
      
      const_set_lazy(:NSImageInterpolationLow) { 2 }
      const_attr_reader  :NSImageInterpolationLow
      
      const_set_lazy(:NSImageInterpolationNone) { 1 }
      const_attr_reader  :NSImageInterpolationNone
      
      const_set_lazy(:NSImageLeft) { 2 }
      const_attr_reader  :NSImageLeft
      
      const_set_lazy(:NSImageOnly) { 1 }
      const_attr_reader  :NSImageOnly
      
      const_set_lazy(:NSImageOverlaps) { 6 }
      const_attr_reader  :NSImageOverlaps
      
      const_set_lazy(:NSInformationalAlertStyle) { 1 }
      const_attr_reader  :NSInformationalAlertStyle
      
      const_set_lazy(:NSItalicFontMask) { 1 }
      const_attr_reader  :NSItalicFontMask
      
      const_set_lazy(:NSJustifiedTextAlignment) { 3 }
      const_attr_reader  :NSJustifiedTextAlignment
      
      const_set_lazy(:NSKeyDown) { 10 }
      const_attr_reader  :NSKeyDown
      
      const_set_lazy(:NSKeyUp) { 11 }
      const_attr_reader  :NSKeyUp
      
      const_set_lazy(:NSLandscapeOrientation) { 1 }
      const_attr_reader  :NSLandscapeOrientation
      
      const_set_lazy(:NSLeftMouseDown) { 1 }
      const_attr_reader  :NSLeftMouseDown
      
      const_set_lazy(:NSLeftMouseDownMask) { 2 }
      const_attr_reader  :NSLeftMouseDownMask
      
      const_set_lazy(:NSLeftMouseDragged) { 6 }
      const_attr_reader  :NSLeftMouseDragged
      
      const_set_lazy(:NSLeftMouseDraggedMask) { 64 }
      const_attr_reader  :NSLeftMouseDraggedMask
      
      const_set_lazy(:NSLeftMouseUp) { 2 }
      const_attr_reader  :NSLeftMouseUp
      
      const_set_lazy(:NSLeftMouseUpMask) { 4 }
      const_attr_reader  :NSLeftMouseUpMask
      
      const_set_lazy(:NSLeftTabStopType) { 0 }
      const_attr_reader  :NSLeftTabStopType
      
      const_set_lazy(:NSLeftTextAlignment) { 0 }
      const_attr_reader  :NSLeftTextAlignment
      
      const_set_lazy(:NSLineBreakByClipping) { 2 }
      const_attr_reader  :NSLineBreakByClipping
      
      const_set_lazy(:NSLineBreakByWordWrapping) { 0 }
      const_attr_reader  :NSLineBreakByWordWrapping
      
      const_set_lazy(:NSLineToBezierPathElement) { 1 }
      const_attr_reader  :NSLineToBezierPathElement
      
      const_set_lazy(:NSMiniaturizableWindowMask) { 4 }
      const_attr_reader  :NSMiniaturizableWindowMask
      
      const_set_lazy(:NSMiterLineJoinStyle) { 0 }
      const_attr_reader  :NSMiterLineJoinStyle
      
      const_set_lazy(:NSMixedState) { -1 }
      const_attr_reader  :NSMixedState
      
      const_set_lazy(:NSMomentaryLightButton) { 0 }
      const_attr_reader  :NSMomentaryLightButton
      
      const_set_lazy(:NSMouseEntered) { 8 }
      const_attr_reader  :NSMouseEntered
      
      const_set_lazy(:NSMouseExited) { 9 }
      const_attr_reader  :NSMouseExited
      
      const_set_lazy(:NSMouseMoved) { 5 }
      const_attr_reader  :NSMouseMoved
      
      const_set_lazy(:NSMoveToBezierPathElement) { 0 }
      const_attr_reader  :NSMoveToBezierPathElement
      
      const_set_lazy(:NSNewlineCharacter) { 10 }
      const_attr_reader  :NSNewlineCharacter
      
      const_set_lazy(:NSNoBorder) { 0 }
      const_attr_reader  :NSNoBorder
      
      const_set_lazy(:NSNoImage) { 0 }
      const_attr_reader  :NSNoImage
      
      const_set_lazy(:NSNoTitle) { 0 }
      const_attr_reader  :NSNoTitle
      
      const_set_lazy(:NSNonZeroWindingRule) { 0 }
      const_attr_reader  :NSNonZeroWindingRule
      
      const_set_lazy(:NSOffState) { 0 }
      const_attr_reader  :NSOffState
      
      const_set_lazy(:NSOnState) { 1 }
      const_attr_reader  :NSOnState
      
      const_set_lazy(:NSOpenGLPFAAccumSize) { 14 }
      const_attr_reader  :NSOpenGLPFAAccumSize
      
      const_set_lazy(:NSOpenGLPFAAlphaSize) { 11 }
      const_attr_reader  :NSOpenGLPFAAlphaSize
      
      const_set_lazy(:NSOpenGLPFAColorSize) { 8 }
      const_attr_reader  :NSOpenGLPFAColorSize
      
      const_set_lazy(:NSOpenGLPFADepthSize) { 12 }
      const_attr_reader  :NSOpenGLPFADepthSize
      
      const_set_lazy(:NSOpenGLPFADoubleBuffer) { 5 }
      const_attr_reader  :NSOpenGLPFADoubleBuffer
      
      const_set_lazy(:NSOpenGLPFASampleBuffers) { 55 }
      const_attr_reader  :NSOpenGLPFASampleBuffers
      
      const_set_lazy(:NSOpenGLPFASamples) { 56 }
      const_attr_reader  :NSOpenGLPFASamples
      
      const_set_lazy(:NSOpenGLPFAStencilSize) { 13 }
      const_attr_reader  :NSOpenGLPFAStencilSize
      
      const_set_lazy(:NSOpenGLPFAStereo) { 6 }
      const_attr_reader  :NSOpenGLPFAStereo
      
      const_set_lazy(:NSOtherMouseDown) { 25 }
      const_attr_reader  :NSOtherMouseDown
      
      const_set_lazy(:NSOtherMouseDragged) { 27 }
      const_attr_reader  :NSOtherMouseDragged
      
      const_set_lazy(:NSOtherMouseUp) { 26 }
      const_attr_reader  :NSOtherMouseUp
      
      const_set_lazy(:NSOutlineViewDropOnItemIndex) { -1 }
      const_attr_reader  :NSOutlineViewDropOnItemIndex
      
      const_set_lazy(:NSPageDownFunctionKey) { 63277 }
      const_attr_reader  :NSPageDownFunctionKey
      
      const_set_lazy(:NSPageUpFunctionKey) { 63276 }
      const_attr_reader  :NSPageUpFunctionKey
      
      const_set_lazy(:NSPortraitOrientation) { 0 }
      const_attr_reader  :NSPortraitOrientation
      
      const_set_lazy(:NSPrintPanelShowsPageSetupAccessory) { 256 }
      const_attr_reader  :NSPrintPanelShowsPageSetupAccessory
      
      const_set_lazy(:NSProgressIndicatorPreferredThickness) { 14 }
      const_attr_reader  :NSProgressIndicatorPreferredThickness
      
      const_set_lazy(:NSPushOnPushOffButton) { 1 }
      const_attr_reader  :NSPushOnPushOffButton
      
      const_set_lazy(:NSRadioButton) { 4 }
      const_attr_reader  :NSRadioButton
      
      const_set_lazy(:NSRegularControlSize) { 0 }
      const_attr_reader  :NSRegularControlSize
      
      const_set_lazy(:NSResizableWindowMask) { 8 }
      const_attr_reader  :NSResizableWindowMask
      
      const_set_lazy(:NSRightMouseDown) { 3 }
      const_attr_reader  :NSRightMouseDown
      
      const_set_lazy(:NSRightMouseDragged) { 7 }
      const_attr_reader  :NSRightMouseDragged
      
      const_set_lazy(:NSRightMouseUp) { 4 }
      const_attr_reader  :NSRightMouseUp
      
      const_set_lazy(:NSRightTextAlignment) { 1 }
      const_attr_reader  :NSRightTextAlignment
      
      const_set_lazy(:NSRoundLineCapStyle) { 1 }
      const_attr_reader  :NSRoundLineCapStyle
      
      const_set_lazy(:NSRoundLineJoinStyle) { 1 }
      const_attr_reader  :NSRoundLineJoinStyle
      
      const_set_lazy(:NSRoundedBezelStyle) { 1 }
      const_attr_reader  :NSRoundedBezelStyle
      
      const_set_lazy(:NSScaleNone) { 2 }
      const_attr_reader  :NSScaleNone
      
      const_set_lazy(:NSScrollWheel) { 22 }
      const_attr_reader  :NSScrollWheel
      
      const_set_lazy(:NSScrollerDecrementLine) { 4 }
      const_attr_reader  :NSScrollerDecrementLine
      
      const_set_lazy(:NSScrollerDecrementPage) { 1 }
      const_attr_reader  :NSScrollerDecrementPage
      
      const_set_lazy(:NSScrollerIncrementLine) { 5 }
      const_attr_reader  :NSScrollerIncrementLine
      
      const_set_lazy(:NSScrollerIncrementPage) { 3 }
      const_attr_reader  :NSScrollerIncrementPage
      
      const_set_lazy(:NSScrollerKnob) { 2 }
      const_attr_reader  :NSScrollerKnob
      
      const_set_lazy(:NSShadowlessSquareBezelStyle) { 6 }
      const_attr_reader  :NSShadowlessSquareBezelStyle
      
      const_set_lazy(:NSShiftKeyMask) { 131072 }
      const_attr_reader  :NSShiftKeyMask
      
      const_set_lazy(:NSSmallControlSize) { 1 }
      const_attr_reader  :NSSmallControlSize
      
      const_set_lazy(:NSSquareLineCapStyle) { 2 }
      const_attr_reader  :NSSquareLineCapStyle
      
      const_set_lazy(:NSStatusWindowLevel) { 25 }
      const_attr_reader  :NSStatusWindowLevel
      
      const_set_lazy(:NSSwitchButton) { 3 }
      const_attr_reader  :NSSwitchButton
      
      const_set_lazy(:NSSystemDefined) { 14 }
      const_attr_reader  :NSSystemDefined
      
      const_set_lazy(:NSTabCharacter) { 9 }
      const_attr_reader  :NSTabCharacter
      
      const_set_lazy(:NSTableColumnNoResizing) { 0 }
      const_attr_reader  :NSTableColumnNoResizing
      
      const_set_lazy(:NSTableColumnUserResizingMask) { 2 }
      const_attr_reader  :NSTableColumnUserResizingMask
      
      const_set_lazy(:NSTableViewDropAbove) { 1 }
      const_attr_reader  :NSTableViewDropAbove
      
      const_set_lazy(:NSTableViewDropOn) { 0 }
      const_attr_reader  :NSTableViewDropOn
      
      const_set_lazy(:NSTableViewNoColumnAutoresizing) { 0 }
      const_attr_reader  :NSTableViewNoColumnAutoresizing
      
      const_set_lazy(:NSTextFieldAndStepperDatePickerStyle) { 0 }
      const_attr_reader  :NSTextFieldAndStepperDatePickerStyle
      
      const_set_lazy(:NSTitledWindowMask) { 1 }
      const_attr_reader  :NSTitledWindowMask
      
      const_set_lazy(:NSUnderlineStyleDouble) { 9 }
      const_attr_reader  :NSUnderlineStyleDouble
      
      const_set_lazy(:NSUnderlineStyleNone) { 0 }
      const_attr_reader  :NSUnderlineStyleNone
      
      const_set_lazy(:NSUnderlineStyleSingle) { 1 }
      const_attr_reader  :NSUnderlineStyleSingle
      
      const_set_lazy(:NSUnderlineStyleThick) { 2 }
      const_attr_reader  :NSUnderlineStyleThick
      
      const_set_lazy(:NSViewHeightSizable) { 16 }
      const_attr_reader  :NSViewHeightSizable
      
      const_set_lazy(:NSViewWidthSizable) { 2 }
      const_attr_reader  :NSViewWidthSizable
      
      const_set_lazy(:NSWarningAlertStyle) { 0 }
      const_attr_reader  :NSWarningAlertStyle
      
      const_set_lazy(:NSWindowAbove) { 1 }
      const_attr_reader  :NSWindowAbove
      
      const_set_lazy(:NSWindowBelow) { -1 }
      const_attr_reader  :NSWindowBelow
      
      const_set_lazy(:NSYearMonthDatePickerElementFlag) { 192 }
      const_attr_reader  :NSYearMonthDatePickerElementFlag
      
      const_set_lazy(:NSYearMonthDayDatePickerElementFlag) { 224 }
      const_attr_reader  :NSYearMonthDayDatePickerElementFlag
      
      const_set_lazy(:K_CFRunLoopBeforeWaiting) { 32 }
      const_attr_reader  :K_CFRunLoopBeforeWaiting
      
      const_set_lazy(:K_CFStringEncodingUTF8) { 134217984 }
      const_attr_reader  :K_CFStringEncodingUTF8
      
      const_set_lazy(:K_CGBlendModeDifference) { 10 }
      const_attr_reader  :K_CGBlendModeDifference
      
      const_set_lazy(:K_CGEventFilterMaskPermitLocalKeyboardEvents) { 2 }
      const_attr_reader  :K_CGEventFilterMaskPermitLocalKeyboardEvents
      
      const_set_lazy(:K_CGEventFilterMaskPermitLocalMouseEvents) { 1 }
      const_attr_reader  :K_CGEventFilterMaskPermitLocalMouseEvents
      
      const_set_lazy(:K_CGEventFilterMaskPermitSystemDefinedEvents) { 4 }
      const_attr_reader  :K_CGEventFilterMaskPermitSystemDefinedEvents
      
      const_set_lazy(:K_CGEventSuppressionStateRemoteMouseDrag) { 1 }
      const_attr_reader  :K_CGEventSuppressionStateRemoteMouseDrag
      
      const_set_lazy(:K_CGEventSuppressionStateSuppressionInterval) { 0 }
      const_attr_reader  :K_CGEventSuppressionStateSuppressionInterval
      
      const_set_lazy(:K_CGImageAlphaFirst) { 4 }
      const_attr_reader  :K_CGImageAlphaFirst
      
      const_set_lazy(:K_CGImageAlphaNoneSkipFirst) { 6 }
      const_attr_reader  :K_CGImageAlphaNoneSkipFirst
      
      const_set_lazy(:K_CGImageAlphaOnly) { 7 }
      const_attr_reader  :K_CGImageAlphaOnly
      
      const_set_lazy(:K_CGKeyboardEventKeyboardType) { 10 }
      const_attr_reader  :K_CGKeyboardEventKeyboardType
      
      const_set_lazy(:K_CGLineCapButt) { 0 }
      const_attr_reader  :K_CGLineCapButt
      
      const_set_lazy(:K_CGLineCapRound) { 1 }
      const_attr_reader  :K_CGLineCapRound
      
      const_set_lazy(:K_CGLineCapSquare) { 2 }
      const_attr_reader  :K_CGLineCapSquare
      
      const_set_lazy(:K_CGLineJoinBevel) { 2 }
      const_attr_reader  :K_CGLineJoinBevel
      
      const_set_lazy(:K_CGLineJoinMiter) { 0 }
      const_attr_reader  :K_CGLineJoinMiter
      
      const_set_lazy(:K_CGLineJoinRound) { 1 }
      const_attr_reader  :K_CGLineJoinRound
      
      const_set_lazy(:K_CGPathElementAddCurveToPoint) { 3 }
      const_attr_reader  :K_CGPathElementAddCurveToPoint
      
      const_set_lazy(:K_CGPathElementAddLineToPoint) { 1 }
      const_attr_reader  :K_CGPathElementAddLineToPoint
      
      const_set_lazy(:K_CGPathElementAddQuadCurveToPoint) { 2 }
      const_attr_reader  :K_CGPathElementAddQuadCurveToPoint
      
      const_set_lazy(:K_CGPathElementCloseSubpath) { 4 }
      const_attr_reader  :K_CGPathElementCloseSubpath
      
      const_set_lazy(:K_CGPathElementMoveToPoint) { 0 }
      const_attr_reader  :K_CGPathElementMoveToPoint
      
      const_set_lazy(:K_CGPathStroke) { 2 }
      const_attr_reader  :K_CGPathStroke
      
      const_set_lazy(:K_CGSessionEventTap) { 1 }
      const_attr_reader  :K_CGSessionEventTap
      
      const_set_lazy(:NSAllApplicationsDirectory) { 100 }
      const_attr_reader  :NSAllApplicationsDirectory
      
      const_set_lazy(:NSAllDomainsMask) { 65535 }
      const_attr_reader  :NSAllDomainsMask
      
      const_set_lazy(:NSNotFound) { 2147483647 }
      const_attr_reader  :NSNotFound
      
      const_set_lazy(:NSOrderedSame) { 0 }
      const_attr_reader  :NSOrderedSame
      
      const_set_lazy(:NSURLCredentialPersistenceForSession) { 1 }
      const_attr_reader  :NSURLCredentialPersistenceForSession
      
      const_set_lazy(:NSURLErrorBadURL) { -1000 }
      const_attr_reader  :NSURLErrorBadURL
      
      const_set_lazy(:NSURLRequestReloadIgnoringLocalCacheData) { 1 }
      const_attr_reader  :NSURLRequestReloadIgnoringLocalCacheData
      
      const_set_lazy(:NSUTF8StringEncoding) { 4 }
      const_attr_reader  :NSUTF8StringEncoding
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityButtonRole, [:pointer, :long], :int32
      typesig { [] }
      # Globals
      # @method flags=const
      # long
      def _nsaccessibility_button_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityButtonRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityButtonRole) { NSString.new(_nsaccessibility_button_role) }
      const_attr_reader  :NSAccessibilityButtonRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityCheckBoxRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_check_box_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityCheckBoxRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityCheckBoxRole) { NSString.new(_nsaccessibility_check_box_role) }
      const_attr_reader  :NSAccessibilityCheckBoxRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityChildrenAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_children_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityChildrenAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityChildrenAttribute) { NSString.new(_nsaccessibility_children_attribute) }
      const_attr_reader  :NSAccessibilityChildrenAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityColumnRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_column_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityColumnRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityColumnRole) { NSString.new(_nsaccessibility_column_role) }
      const_attr_reader  :NSAccessibilityColumnRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityComboBoxRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_combo_box_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityComboBoxRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityComboBoxRole) { NSString.new(_nsaccessibility_combo_box_role) }
      const_attr_reader  :NSAccessibilityComboBoxRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityConfirmAction, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_confirm_action
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityConfirmAction, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityConfirmAction) { NSString.new(_nsaccessibility_confirm_action) }
      const_attr_reader  :NSAccessibilityConfirmAction
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityContentsAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_contents_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityContentsAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityContentsAttribute) { NSString.new(_nsaccessibility_contents_attribute) }
      const_attr_reader  :NSAccessibilityContentsAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityDescriptionAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_description_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityDescriptionAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityDescriptionAttribute) { NSString.new(_nsaccessibility_description_attribute) }
      const_attr_reader  :NSAccessibilityDescriptionAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityDialogSubrole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_dialog_subrole
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityDialogSubrole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityDialogSubrole) { NSString.new(_nsaccessibility_dialog_subrole) }
      const_attr_reader  :NSAccessibilityDialogSubrole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityEnabledAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_enabled_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityEnabledAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityEnabledAttribute) { NSString.new(_nsaccessibility_enabled_attribute) }
      const_attr_reader  :NSAccessibilityEnabledAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityExpandedAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_expanded_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityExpandedAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityExpandedAttribute) { NSString.new(_nsaccessibility_expanded_attribute) }
      const_attr_reader  :NSAccessibilityExpandedAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityFloatingWindowSubrole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_floating_window_subrole
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityFloatingWindowSubrole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityFloatingWindowSubrole) { NSString.new(_nsaccessibility_floating_window_subrole) }
      const_attr_reader  :NSAccessibilityFloatingWindowSubrole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityFocusedAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_focused_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityFocusedAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityFocusedAttribute) { NSString.new(_nsaccessibility_focused_attribute) }
      const_attr_reader  :NSAccessibilityFocusedAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityFocusedUIElementChangedNotification, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_focused_uielement_changed_notification
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityFocusedUIElementChangedNotification, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityFocusedUIElementChangedNotification) { NSString.new(_nsaccessibility_focused_uielement_changed_notification) }
      const_attr_reader  :NSAccessibilityFocusedUIElementChangedNotification
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityGridRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_grid_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityGridRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityGridRole) { NSString.new(_nsaccessibility_grid_role) }
      const_attr_reader  :NSAccessibilityGridRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityGroupRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_group_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityGroupRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityGroupRole) { NSString.new(_nsaccessibility_group_role) }
      const_attr_reader  :NSAccessibilityGroupRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityHelpAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_help_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityHelpAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityHelpAttribute) { NSString.new(_nsaccessibility_help_attribute) }
      const_attr_reader  :NSAccessibilityHelpAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityHelpTagRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_help_tag_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityHelpTagRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityHelpTagRole) { NSString.new(_nsaccessibility_help_tag_role) }
      const_attr_reader  :NSAccessibilityHelpTagRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityHorizontalOrientationValue, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_horizontal_orientation_value
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityHorizontalOrientationValue, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityHorizontalOrientationValue) { NSString.new(_nsaccessibility_horizontal_orientation_value) }
      const_attr_reader  :NSAccessibilityHorizontalOrientationValue
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityHorizontalScrollBarAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_horizontal_scroll_bar_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityHorizontalScrollBarAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityHorizontalScrollBarAttribute) { NSString.new(_nsaccessibility_horizontal_scroll_bar_attribute) }
      const_attr_reader  :NSAccessibilityHorizontalScrollBarAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityImageRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_image_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityImageRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityImageRole) { NSString.new(_nsaccessibility_image_role) }
      const_attr_reader  :NSAccessibilityImageRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityIncrementorRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_incrementor_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityIncrementorRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityIncrementorRole) { NSString.new(_nsaccessibility_incrementor_role) }
      const_attr_reader  :NSAccessibilityIncrementorRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityInsertionPointLineNumberAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_insertion_point_line_number_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityInsertionPointLineNumberAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityInsertionPointLineNumberAttribute) { NSString.new(_nsaccessibility_insertion_point_line_number_attribute) }
      const_attr_reader  :NSAccessibilityInsertionPointLineNumberAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityLabelValueAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_label_value_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityLabelValueAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityLabelValueAttribute) { NSString.new(_nsaccessibility_label_value_attribute) }
      const_attr_reader  :NSAccessibilityLabelValueAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityLineForIndexParameterizedAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_line_for_index_parameterized_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityLineForIndexParameterizedAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityLineForIndexParameterizedAttribute) { NSString.new(_nsaccessibility_line_for_index_parameterized_attribute) }
      const_attr_reader  :NSAccessibilityLineForIndexParameterizedAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityLinkRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_link_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityLinkRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityLinkRole) { NSString.new(_nsaccessibility_link_role) }
      const_attr_reader  :NSAccessibilityLinkRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityLinkTextAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_link_text_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityLinkTextAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityLinkTextAttribute) { NSString.new(_nsaccessibility_link_text_attribute) }
      const_attr_reader  :NSAccessibilityLinkTextAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityListRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_list_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityListRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityListRole) { NSString.new(_nsaccessibility_list_role) }
      const_attr_reader  :NSAccessibilityListRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMaxValueAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_max_value_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMaxValueAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityMaxValueAttribute) { NSString.new(_nsaccessibility_max_value_attribute) }
      const_attr_reader  :NSAccessibilityMaxValueAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMenuBarRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_menu_bar_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMenuBarRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityMenuBarRole) { NSString.new(_nsaccessibility_menu_bar_role) }
      const_attr_reader  :NSAccessibilityMenuBarRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMenuButtonRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_menu_button_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMenuButtonRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityMenuButtonRole) { NSString.new(_nsaccessibility_menu_button_role) }
      const_attr_reader  :NSAccessibilityMenuButtonRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMenuItemRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_menu_item_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMenuItemRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityMenuItemRole) { NSString.new(_nsaccessibility_menu_item_role) }
      const_attr_reader  :NSAccessibilityMenuItemRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMenuRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_menu_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMenuRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityMenuRole) { NSString.new(_nsaccessibility_menu_role) }
      const_attr_reader  :NSAccessibilityMenuRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMinValueAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_min_value_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityMinValueAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityMinValueAttribute) { NSString.new(_nsaccessibility_min_value_attribute) }
      const_attr_reader  :NSAccessibilityMinValueAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityNextContentsAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_next_contents_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityNextContentsAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityNextContentsAttribute) { NSString.new(_nsaccessibility_next_contents_attribute) }
      const_attr_reader  :NSAccessibilityNextContentsAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityNumberOfCharactersAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_number_of_characters_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityNumberOfCharactersAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityNumberOfCharactersAttribute) { NSString.new(_nsaccessibility_number_of_characters_attribute) }
      const_attr_reader  :NSAccessibilityNumberOfCharactersAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityOrientationAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_orientation_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityOrientationAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityOrientationAttribute) { NSString.new(_nsaccessibility_orientation_attribute) }
      const_attr_reader  :NSAccessibilityOrientationAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityOutlineRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_outline_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityOutlineRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityOutlineRole) { NSString.new(_nsaccessibility_outline_role) }
      const_attr_reader  :NSAccessibilityOutlineRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityOutlineRowSubrole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_outline_row_subrole
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityOutlineRowSubrole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityOutlineRowSubrole) { NSString.new(_nsaccessibility_outline_row_subrole) }
      const_attr_reader  :NSAccessibilityOutlineRowSubrole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityParentAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_parent_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityParentAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityParentAttribute) { NSString.new(_nsaccessibility_parent_attribute) }
      const_attr_reader  :NSAccessibilityParentAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityPopUpButtonRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_pop_up_button_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityPopUpButtonRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityPopUpButtonRole) { NSString.new(_nsaccessibility_pop_up_button_role) }
      const_attr_reader  :NSAccessibilityPopUpButtonRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityPositionAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_position_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityPositionAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityPositionAttribute) { NSString.new(_nsaccessibility_position_attribute) }
      const_attr_reader  :NSAccessibilityPositionAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityPressAction, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_press_action
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityPressAction, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityPressAction) { NSString.new(_nsaccessibility_press_action) }
      const_attr_reader  :NSAccessibilityPressAction
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityPreviousContentsAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_previous_contents_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityPreviousContentsAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityPreviousContentsAttribute) { NSString.new(_nsaccessibility_previous_contents_attribute) }
      const_attr_reader  :NSAccessibilityPreviousContentsAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityProgressIndicatorRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_progress_indicator_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityProgressIndicatorRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityProgressIndicatorRole) { NSString.new(_nsaccessibility_progress_indicator_role) }
      const_attr_reader  :NSAccessibilityProgressIndicatorRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRTFForRangeParameterizedAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_rtffor_range_parameterized_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRTFForRangeParameterizedAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityRTFForRangeParameterizedAttribute) { NSString.new(_nsaccessibility_rtffor_range_parameterized_attribute) }
      const_attr_reader  :NSAccessibilityRTFForRangeParameterizedAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRadioButtonRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_radio_button_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRadioButtonRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityRadioButtonRole) { NSString.new(_nsaccessibility_radio_button_role) }
      const_attr_reader  :NSAccessibilityRadioButtonRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRadioGroupRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_radio_group_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRadioGroupRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityRadioGroupRole) { NSString.new(_nsaccessibility_radio_group_role) }
      const_attr_reader  :NSAccessibilityRadioGroupRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRangeForIndexParameterizedAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_range_for_index_parameterized_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRangeForIndexParameterizedAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityRangeForIndexParameterizedAttribute) { NSString.new(_nsaccessibility_range_for_index_parameterized_attribute) }
      const_attr_reader  :NSAccessibilityRangeForIndexParameterizedAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRangeForLineParameterizedAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_range_for_line_parameterized_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRangeForLineParameterizedAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityRangeForLineParameterizedAttribute) { NSString.new(_nsaccessibility_range_for_line_parameterized_attribute) }
      const_attr_reader  :NSAccessibilityRangeForLineParameterizedAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRangeForPositionParameterizedAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_range_for_position_parameterized_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRangeForPositionParameterizedAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityRangeForPositionParameterizedAttribute) { NSString.new(_nsaccessibility_range_for_position_parameterized_attribute) }
      const_attr_reader  :NSAccessibilityRangeForPositionParameterizedAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRoleAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_role_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRoleAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityRoleAttribute) { NSString.new(_nsaccessibility_role_attribute) }
      const_attr_reader  :NSAccessibilityRoleAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRoleDescriptionAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_role_description_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRoleDescriptionAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityRoleDescriptionAttribute) { NSString.new(_nsaccessibility_role_description_attribute) }
      const_attr_reader  :NSAccessibilityRoleDescriptionAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRowRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_row_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRowRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityRowRole) { NSString.new(_nsaccessibility_row_role) }
      const_attr_reader  :NSAccessibilityRowRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityScrollAreaRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_scroll_area_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityScrollAreaRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityScrollAreaRole) { NSString.new(_nsaccessibility_scroll_area_role) }
      const_attr_reader  :NSAccessibilityScrollAreaRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityScrollBarRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_scroll_bar_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityScrollBarRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityScrollBarRole) { NSString.new(_nsaccessibility_scroll_bar_role) }
      const_attr_reader  :NSAccessibilityScrollBarRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_selected_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySelectedAttribute) { NSString.new(_nsaccessibility_selected_attribute) }
      const_attr_reader  :NSAccessibilitySelectedAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedChildrenAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_selected_children_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedChildrenAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySelectedChildrenAttribute) { NSString.new(_nsaccessibility_selected_children_attribute) }
      const_attr_reader  :NSAccessibilitySelectedChildrenAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedChildrenChangedNotification, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_selected_children_changed_notification
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedChildrenChangedNotification, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySelectedChildrenChangedNotification) { NSString.new(_nsaccessibility_selected_children_changed_notification) }
      const_attr_reader  :NSAccessibilitySelectedChildrenChangedNotification
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedTextAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_selected_text_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedTextAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySelectedTextAttribute) { NSString.new(_nsaccessibility_selected_text_attribute) }
      const_attr_reader  :NSAccessibilitySelectedTextAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedTextChangedNotification, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_selected_text_changed_notification
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedTextChangedNotification, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySelectedTextChangedNotification) { NSString.new(_nsaccessibility_selected_text_changed_notification) }
      const_attr_reader  :NSAccessibilitySelectedTextChangedNotification
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedTextRangeAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_selected_text_range_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedTextRangeAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySelectedTextRangeAttribute) { NSString.new(_nsaccessibility_selected_text_range_attribute) }
      const_attr_reader  :NSAccessibilitySelectedTextRangeAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedTextRangesAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_selected_text_ranges_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySelectedTextRangesAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySelectedTextRangesAttribute) { NSString.new(_nsaccessibility_selected_text_ranges_attribute) }
      const_attr_reader  :NSAccessibilitySelectedTextRangesAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityServesAsTitleForUIElementsAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_serves_as_title_for_uielements_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityServesAsTitleForUIElementsAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityServesAsTitleForUIElementsAttribute) { NSString.new(_nsaccessibility_serves_as_title_for_uielements_attribute) }
      const_attr_reader  :NSAccessibilityServesAsTitleForUIElementsAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySizeAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_size_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySizeAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySizeAttribute) { NSString.new(_nsaccessibility_size_attribute) }
      const_attr_reader  :NSAccessibilitySizeAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySliderRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_slider_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySliderRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySliderRole) { NSString.new(_nsaccessibility_slider_role) }
      const_attr_reader  :NSAccessibilitySliderRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySortButtonRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_sort_button_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySortButtonRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySortButtonRole) { NSString.new(_nsaccessibility_sort_button_role) }
      const_attr_reader  :NSAccessibilitySortButtonRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySplitterRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_splitter_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySplitterRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySplitterRole) { NSString.new(_nsaccessibility_splitter_role) }
      const_attr_reader  :NSAccessibilitySplitterRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityStandardWindowSubrole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_standard_window_subrole
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityStandardWindowSubrole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityStandardWindowSubrole) { NSString.new(_nsaccessibility_standard_window_subrole) }
      const_attr_reader  :NSAccessibilityStandardWindowSubrole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityStaticTextRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_static_text_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityStaticTextRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityStaticTextRole) { NSString.new(_nsaccessibility_static_text_role) }
      const_attr_reader  :NSAccessibilityStaticTextRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityStringForRangeParameterizedAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_string_for_range_parameterized_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityStringForRangeParameterizedAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityStringForRangeParameterizedAttribute) { NSString.new(_nsaccessibility_string_for_range_parameterized_attribute) }
      const_attr_reader  :NSAccessibilityStringForRangeParameterizedAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityStyleRangeForIndexParameterizedAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_style_range_for_index_parameterized_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityStyleRangeForIndexParameterizedAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityStyleRangeForIndexParameterizedAttribute) { NSString.new(_nsaccessibility_style_range_for_index_parameterized_attribute) }
      const_attr_reader  :NSAccessibilityStyleRangeForIndexParameterizedAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySubroleAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_subrole_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySubroleAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySubroleAttribute) { NSString.new(_nsaccessibility_subrole_attribute) }
      const_attr_reader  :NSAccessibilitySubroleAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySystemDialogSubrole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_system_dialog_subrole
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilitySystemDialogSubrole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilitySystemDialogSubrole) { NSString.new(_nsaccessibility_system_dialog_subrole) }
      const_attr_reader  :NSAccessibilitySystemDialogSubrole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTabGroupRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_tab_group_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTabGroupRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityTabGroupRole) { NSString.new(_nsaccessibility_tab_group_role) }
      const_attr_reader  :NSAccessibilityTabGroupRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTableRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_table_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTableRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityTableRole) { NSString.new(_nsaccessibility_table_role) }
      const_attr_reader  :NSAccessibilityTableRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTableRowSubrole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_table_row_subrole
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTableRowSubrole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityTableRowSubrole) { NSString.new(_nsaccessibility_table_row_subrole) }
      const_attr_reader  :NSAccessibilityTableRowSubrole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTabsAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_tabs_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTabsAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityTabsAttribute) { NSString.new(_nsaccessibility_tabs_attribute) }
      const_attr_reader  :NSAccessibilityTabsAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTextAreaRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_text_area_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTextAreaRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityTextAreaRole) { NSString.new(_nsaccessibility_text_area_role) }
      const_attr_reader  :NSAccessibilityTextAreaRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTextFieldRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_text_field_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTextFieldRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityTextFieldRole) { NSString.new(_nsaccessibility_text_field_role) }
      const_attr_reader  :NSAccessibilityTextFieldRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTextLinkSubrole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_text_link_subrole
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTextLinkSubrole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityTextLinkSubrole) { NSString.new(_nsaccessibility_text_link_subrole) }
      const_attr_reader  :NSAccessibilityTextLinkSubrole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTitleAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_title_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTitleAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityTitleAttribute) { NSString.new(_nsaccessibility_title_attribute) }
      const_attr_reader  :NSAccessibilityTitleAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTitleUIElementAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_title_uielement_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTitleUIElementAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityTitleUIElementAttribute) { NSString.new(_nsaccessibility_title_uielement_attribute) }
      const_attr_reader  :NSAccessibilityTitleUIElementAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityToolbarRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_toolbar_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityToolbarRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityToolbarRole) { NSString.new(_nsaccessibility_toolbar_role) }
      const_attr_reader  :NSAccessibilityToolbarRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTopLevelUIElementAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_top_level_uielement_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityTopLevelUIElementAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityTopLevelUIElementAttribute) { NSString.new(_nsaccessibility_top_level_uielement_attribute) }
      const_attr_reader  :NSAccessibilityTopLevelUIElementAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnknownRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_unknown_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnknownRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityUnknownRole) { NSString.new(_nsaccessibility_unknown_role) }
      const_attr_reader  :NSAccessibilityUnknownRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnknownSubrole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_unknown_subrole
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnknownSubrole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityUnknownSubrole) { NSString.new(_nsaccessibility_unknown_subrole) }
      const_attr_reader  :NSAccessibilityUnknownSubrole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityValueAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_value_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityValueAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityValueAttribute) { NSString.new(_nsaccessibility_value_attribute) }
      const_attr_reader  :NSAccessibilityValueAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityValueChangedNotification, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_value_changed_notification
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityValueChangedNotification, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityValueChangedNotification) { NSString.new(_nsaccessibility_value_changed_notification) }
      const_attr_reader  :NSAccessibilityValueChangedNotification
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityValueDescriptionAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_value_description_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityValueDescriptionAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityValueDescriptionAttribute) { NSString.new(_nsaccessibility_value_description_attribute) }
      const_attr_reader  :NSAccessibilityValueDescriptionAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityValueIndicatorRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_value_indicator_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityValueIndicatorRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityValueIndicatorRole) { NSString.new(_nsaccessibility_value_indicator_role) }
      const_attr_reader  :NSAccessibilityValueIndicatorRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityVerticalOrientationValue, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_vertical_orientation_value
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityVerticalOrientationValue, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityVerticalOrientationValue) { NSString.new(_nsaccessibility_vertical_orientation_value) }
      const_attr_reader  :NSAccessibilityVerticalOrientationValue
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityVerticalScrollBarAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_vertical_scroll_bar_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityVerticalScrollBarAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityVerticalScrollBarAttribute) { NSString.new(_nsaccessibility_vertical_scroll_bar_attribute) }
      const_attr_reader  :NSAccessibilityVerticalScrollBarAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityVisibleCharacterRangeAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_visible_character_range_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityVisibleCharacterRangeAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityVisibleCharacterRangeAttribute) { NSString.new(_nsaccessibility_visible_character_range_attribute) }
      const_attr_reader  :NSAccessibilityVisibleCharacterRangeAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityVisibleChildrenAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_visible_children_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityVisibleChildrenAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityVisibleChildrenAttribute) { NSString.new(_nsaccessibility_visible_children_attribute) }
      const_attr_reader  :NSAccessibilityVisibleChildrenAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityWindowAttribute, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_window_attribute
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityWindowAttribute, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityWindowAttribute) { NSString.new(_nsaccessibility_window_attribute) }
      const_attr_reader  :NSAccessibilityWindowAttribute
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityWindowRole, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsaccessibility_window_role
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityWindowRole, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSAccessibilityWindowRole) { NSString.new(_nsaccessibility_window_role) }
      const_attr_reader  :NSAccessibilityWindowRole
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSApplicationDidChangeScreenParametersNotification, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsapplication_did_change_screen_parameters_notification
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSApplicationDidChangeScreenParametersNotification, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSApplicationDidChangeScreenParametersNotification) { NSString.new(_nsapplication_did_change_screen_parameters_notification) }
      const_attr_reader  :NSApplicationDidChangeScreenParametersNotification
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSBackgroundColorAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsbackground_color_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSBackgroundColorAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSBackgroundColorAttributeName) { NSString.new(_nsbackground_color_attribute_name) }
      const_attr_reader  :NSBackgroundColorAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSBaselineOffsetAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsbaseline_offset_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSBaselineOffsetAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSBaselineOffsetAttributeName) { NSString.new(_nsbaseline_offset_attribute_name) }
      const_attr_reader  :NSBaselineOffsetAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSCalibratedRGBColorSpace, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nscalibrated_rgbcolor_space
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSCalibratedRGBColorSpace, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSCalibratedRGBColorSpace) { NSString.new(_nscalibrated_rgbcolor_space) }
      const_attr_reader  :NSCalibratedRGBColorSpace
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSDeviceRGBColorSpace, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsdevice_rgbcolor_space
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSDeviceRGBColorSpace, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSDeviceRGBColorSpace) { NSString.new(_nsdevice_rgbcolor_space) }
      const_attr_reader  :NSDeviceRGBColorSpace
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSDeviceResolution, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsdevice_resolution
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSDeviceResolution, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSDeviceResolution) { NSString.new(_nsdevice_resolution) }
      const_attr_reader  :NSDeviceResolution
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSDragPboard, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsdrag_pboard
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSDragPboard, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSDragPboard) { NSString.new(_nsdrag_pboard) }
      const_attr_reader  :NSDragPboard
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSEventTrackingRunLoopMode, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsevent_tracking_run_loop_mode
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSEventTrackingRunLoopMode, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSEventTrackingRunLoopMode) { NSString.new(_nsevent_tracking_run_loop_mode) }
      const_attr_reader  :NSEventTrackingRunLoopMode
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSFilenamesPboardType, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsfilenames_pboard_type
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSFilenamesPboardType, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSFilenamesPboardType) { NSString.new(_nsfilenames_pboard_type) }
      const_attr_reader  :NSFilenamesPboardType
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSFontAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsfont_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSFontAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSFontAttributeName) { NSString.new(_nsfont_attribute_name) }
      const_attr_reader  :NSFontAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSForegroundColorAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsforeground_color_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSForegroundColorAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSForegroundColorAttributeName) { NSString.new(_nsforeground_color_attribute_name) }
      const_attr_reader  :NSForegroundColorAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSHTMLPboardType, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nshtmlpboard_type
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSHTMLPboardType, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSHTMLPboardType) { NSString.new(_nshtmlpboard_type) }
      const_attr_reader  :NSHTMLPboardType
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSLinkAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nslink_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSLinkAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSLinkAttributeName) { NSString.new(_nslink_attribute_name) }
      const_attr_reader  :NSLinkAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSObliquenessAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsobliqueness_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSObliquenessAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSObliquenessAttributeName) { NSString.new(_nsobliqueness_attribute_name) }
      const_attr_reader  :NSObliquenessAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSParagraphStyleAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsparagraph_style_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSParagraphStyleAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSParagraphStyleAttributeName) { NSString.new(_nsparagraph_style_attribute_name) }
      const_attr_reader  :NSParagraphStyleAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPrintAllPages, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsprint_all_pages
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPrintAllPages, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSPrintAllPages) { NSString.new(_nsprint_all_pages) }
      const_attr_reader  :NSPrintAllPages
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPrintCopies, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsprint_copies
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPrintCopies, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSPrintCopies) { NSString.new(_nsprint_copies) }
      const_attr_reader  :NSPrintCopies
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPrintFirstPage, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsprint_first_page
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPrintFirstPage, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSPrintFirstPage) { NSString.new(_nsprint_first_page) }
      const_attr_reader  :NSPrintFirstPage
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPrintJobDisposition, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsprint_job_disposition
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPrintJobDisposition, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSPrintJobDisposition) { NSString.new(_nsprint_job_disposition) }
      const_attr_reader  :NSPrintJobDisposition
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPrintLastPage, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsprint_last_page
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPrintLastPage, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSPrintLastPage) { NSString.new(_nsprint_last_page) }
      const_attr_reader  :NSPrintLastPage
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPrintMustCollate, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsprint_must_collate
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPrintMustCollate, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSPrintMustCollate) { NSString.new(_nsprint_must_collate) }
      const_attr_reader  :NSPrintMustCollate
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPrintPreviewJob, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsprint_preview_job
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPrintPreviewJob, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSPrintPreviewJob) { NSString.new(_nsprint_preview_job) }
      const_attr_reader  :NSPrintPreviewJob
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPrintSaveJob, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsprint_save_job
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPrintSaveJob, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSPrintSaveJob) { NSString.new(_nsprint_save_job) }
      const_attr_reader  :NSPrintSaveJob
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPrintSavePath, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsprint_save_path
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPrintSavePath, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSPrintSavePath) { NSString.new(_nsprint_save_path) }
      const_attr_reader  :NSPrintSavePath
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPrintScalingFactor, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsprint_scaling_factor
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPrintScalingFactor, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSPrintScalingFactor) { NSString.new(_nsprint_scaling_factor) }
      const_attr_reader  :NSPrintScalingFactor
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPrintSpoolJob, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsprint_spool_job
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPrintSpoolJob, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSPrintSpoolJob) { NSString.new(_nsprint_spool_job) }
      const_attr_reader  :NSPrintSpoolJob
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSRTFPboardType, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsrtfpboard_type
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSRTFPboardType, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSRTFPboardType) { NSString.new(_nsrtfpboard_type) }
      const_attr_reader  :NSRTFPboardType
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSStrikethroughColorAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsstrikethrough_color_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSStrikethroughColorAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSStrikethroughColorAttributeName) { NSString.new(_nsstrikethrough_color_attribute_name) }
      const_attr_reader  :NSStrikethroughColorAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSStrikethroughStyleAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsstrikethrough_style_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSStrikethroughStyleAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSStrikethroughStyleAttributeName) { NSString.new(_nsstrikethrough_style_attribute_name) }
      const_attr_reader  :NSStrikethroughStyleAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSStringPboardType, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsstring_pboard_type
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSStringPboardType, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSStringPboardType) { NSString.new(_nsstring_pboard_type) }
      const_attr_reader  :NSStringPboardType
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSStrokeWidthAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsstroke_width_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSStrokeWidthAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSStrokeWidthAttributeName) { NSString.new(_nsstroke_width_attribute_name) }
      const_attr_reader  :NSStrokeWidthAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSSystemColorsDidChangeNotification, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nssystem_colors_did_change_notification
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSSystemColorsDidChangeNotification, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSSystemColorsDidChangeNotification) { NSString.new(_nssystem_colors_did_change_notification) }
      const_attr_reader  :NSSystemColorsDidChangeNotification
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSTIFFPboardType, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nstiffpboard_type
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSTIFFPboardType, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSTIFFPboardType) { NSString.new(_nstiffpboard_type) }
      const_attr_reader  :NSTIFFPboardType
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarCustomizeToolbarItemIdentifier, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nstoolbar_customize_toolbar_item_identifier
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarCustomizeToolbarItemIdentifier, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSToolbarCustomizeToolbarItemIdentifier) { NSString.new(_nstoolbar_customize_toolbar_item_identifier) }
      const_attr_reader  :NSToolbarCustomizeToolbarItemIdentifier
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarDidRemoveItemNotification, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nstoolbar_did_remove_item_notification
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarDidRemoveItemNotification, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSToolbarDidRemoveItemNotification) { NSString.new(_nstoolbar_did_remove_item_notification) }
      const_attr_reader  :NSToolbarDidRemoveItemNotification
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarFlexibleSpaceItemIdentifier, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nstoolbar_flexible_space_item_identifier
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarFlexibleSpaceItemIdentifier, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSToolbarFlexibleSpaceItemIdentifier) { NSString.new(_nstoolbar_flexible_space_item_identifier) }
      const_attr_reader  :NSToolbarFlexibleSpaceItemIdentifier
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarPrintItemIdentifier, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nstoolbar_print_item_identifier
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarPrintItemIdentifier, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSToolbarPrintItemIdentifier) { NSString.new(_nstoolbar_print_item_identifier) }
      const_attr_reader  :NSToolbarPrintItemIdentifier
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarSeparatorItemIdentifier, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nstoolbar_separator_item_identifier
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarSeparatorItemIdentifier, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSToolbarSeparatorItemIdentifier) { NSString.new(_nstoolbar_separator_item_identifier) }
      const_attr_reader  :NSToolbarSeparatorItemIdentifier
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarShowColorsItemIdentifier, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nstoolbar_show_colors_item_identifier
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarShowColorsItemIdentifier, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSToolbarShowColorsItemIdentifier) { NSString.new(_nstoolbar_show_colors_item_identifier) }
      const_attr_reader  :NSToolbarShowColorsItemIdentifier
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarShowFontsItemIdentifier, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nstoolbar_show_fonts_item_identifier
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarShowFontsItemIdentifier, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSToolbarShowFontsItemIdentifier) { NSString.new(_nstoolbar_show_fonts_item_identifier) }
      const_attr_reader  :NSToolbarShowFontsItemIdentifier
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarSpaceItemIdentifier, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nstoolbar_space_item_identifier
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarSpaceItemIdentifier, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSToolbarSpaceItemIdentifier) { NSString.new(_nstoolbar_space_item_identifier) }
      const_attr_reader  :NSToolbarSpaceItemIdentifier
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarWillAddItemNotification, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nstoolbar_will_add_item_notification
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSToolbarWillAddItemNotification, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSToolbarWillAddItemNotification) { NSString.new(_nstoolbar_will_add_item_notification) }
      const_attr_reader  :NSToolbarWillAddItemNotification
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSURLPboardType, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsurlpboard_type
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSURLPboardType, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSURLPboardType) { NSString.new(_nsurlpboard_type) }
      const_attr_reader  :NSURLPboardType
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSUnderlineColorAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsunderline_color_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSUnderlineColorAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSUnderlineColorAttributeName) { NSString.new(_nsunderline_color_attribute_name) }
      const_attr_reader  :NSUnderlineColorAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSUnderlineStyleAttributeName, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsunderline_style_attribute_name
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSUnderlineStyleAttributeName, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSUnderlineStyleAttributeName) { NSString.new(_nsunderline_style_attribute_name) }
      const_attr_reader  :NSUnderlineStyleAttributeName
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSViewGlobalFrameDidChangeNotification, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsview_global_frame_did_change_notification
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSViewGlobalFrameDidChangeNotification, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSViewGlobalFrameDidChangeNotification) { NSString.new(_nsview_global_frame_did_change_notification) }
      const_attr_reader  :NSViewGlobalFrameDidChangeNotification
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_kCFRunLoopCommonModes, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def k_cfrun_loop_common_modes
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_kCFRunLoopCommonModes, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSDefaultRunLoopMode, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nsdefault_run_loop_mode
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSDefaultRunLoopMode, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSDefaultRunLoopMode) { NSString.new(_nsdefault_run_loop_mode) }
      const_attr_reader  :NSDefaultRunLoopMode
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSErrorFailingURLStringKey, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      # long
      def _nserror_failing_urlstring_key
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSErrorFailingURLStringKey, JNI.env, self.jni_id)
      end
      
      const_set_lazy(:NSErrorFailingURLStringKey) { NSString.new(_nserror_failing_urlstring_key) }
      const_attr_reader  :NSErrorFailingURLStringKey
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityActionDescription, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # Functions
      # 
      # @param action cast=(NSString*)
      # 
      # long
      # long
      def _nsaccessibility_action_description(action)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityActionDescription, JNI.env, self.jni_id, action.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityPostNotification, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # @param element cast=(id)
      # @param notification cast=(NSString*)
      # 
      # long
      # long
      def _nsaccessibility_post_notification(element, notification)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityPostNotification, JNI.env, self.jni_id, element.to_int, notification.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRaiseBadArgumentException, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param element cast=(id)
      # @param attribute cast=(NSString*)
      # @param value cast=(id)
      # 
      # long
      # long
      # long
      def _nsaccessibility_raise_bad_argument_exception(element, attribute, value)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRaiseBadArgumentException, JNI.env, self.jni_id, element.to_int, attribute.to_int, value.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRoleDescription, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param role cast=(NSString*)
      # @param subrole cast=(NSString*)
      # 
      # long
      # long
      # long
      def _nsaccessibility_role_description(role, subrole)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRoleDescription, JNI.env, self.jni_id, role.to_int, subrole.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRoleDescriptionForUIElement, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param element cast=(id)
      # 
      # long
      # long
      def _nsaccessibility_role_description_for_uielement(element)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityRoleDescriptionForUIElement, JNI.env, self.jni_id, element.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnignoredAncestor, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param element cast=(id)
      # 
      # long
      # long
      def _nsaccessibility_unignored_ancestor(element)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnignoredAncestor, JNI.env, self.jni_id, element.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnignoredChildren, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param originalChildren cast=(NSArray*)
      # 
      # long
      # long
      def _nsaccessibility_unignored_children(original_children)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnignoredChildren, JNI.env, self.jni_id, original_children.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnignoredChildrenForOnlyChild, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param originalChild cast=(id)
      # 
      # long
      # long
      def _nsaccessibility_unignored_children_for_only_child(original_child)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnignoredChildrenForOnlyChild, JNI.env, self.jni_id, original_child.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnignoredDescendant, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param element cast=(id)
      # 
      # long
      # long
      def _nsaccessibility_unignored_descendant(element)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAccessibilityUnignoredDescendant, JNI.env, self.jni_id, element.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSBeep, [:pointer, :long], :void
      typesig { [] }
      def _nsbeep
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSBeep, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSBitsPerPixelFromDepth, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param depth cast=(NSWindowDepth)
      # 
      # long
      def _nsbits_per_pixel_from_depth(depth)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSBitsPerPixelFromDepth, JNI.env, self.jni_id, depth.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSCopyBits, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, NSRect, NSPoint] }
      # @param srcGState cast=(NSInteger)
      # @param srcRect flags=struct
      # @param destPoint flags=struct
      # 
      # long
      def _nscopy_bits(src_gstate, src_rect, dest_point)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSCopyBits, JNI.env, self.jni_id, src_gstate.to_int, src_rect.jni_id, dest_point.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSNumberOfColorComponents, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param colorSpaceName cast=(NSString*)
      # 
      # long
      # long
      def _nsnumber_of_color_components(color_space_name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSNumberOfColorComponents, JNI.env, self.jni_id, color_space_name.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CFDataGetBytePtr, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param theData cast=(CFDataRef)
      # 
      # long
      # long
      def _cfdata_get_byte_ptr(the_data)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CFDataGetBytePtr, JNI.env, self.jni_id, the_data.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CFDataGetLength, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param theData cast=(CFDataRef)
      # 
      # long
      # long
      def _cfdata_get_length(the_data)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CFDataGetLength, JNI.env, self.jni_id, the_data.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CFRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param cf cast=(CFTypeRef)
      # 
      # long
      def _cfrelease(cf)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CFRelease, JNI.env, self.jni_id, cf.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CFRunLoopAddObserver, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param rl cast=(CFRunLoopRef)
      # @param observer cast=(CFRunLoopObserverRef)
      # @param mode cast=(CFStringRef)
      # 
      # long
      # long
      # long
      def _cfrun_loop_add_observer(rl, observer, mode)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CFRunLoopAddObserver, JNI.env, self.jni_id, rl.to_int, observer.to_int, mode.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CFRunLoopGetCurrent, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _cfrun_loop_get_current
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CFRunLoopGetCurrent, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CFRunLoopObserverCreate, [:pointer, :long, :int32, :int32, :int8, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param allocator cast=(CFAllocatorRef)
      # @param activities cast=(CFOptionFlags)
      # @param repeats cast=(Boolean)
      # @param order cast=(CFIndex)
      # @param callout cast=(CFRunLoopObserverCallBack)
      # @param context cast=(CFRunLoopObserverContext*)
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      def _cfrun_loop_observer_create(allocator, activities, repeats, order, callout, context)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CFRunLoopObserverCreate, JNI.env, self.jni_id, allocator.to_int, activities.to_int, repeats ? 1 : 0, order.to_int, callout.to_int, context.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CFRunLoopObserverInvalidate, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param observer cast=(CFRunLoopObserverRef)
      # 
      # long
      def _cfrun_loop_observer_invalidate(observer)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CFRunLoopObserverInvalidate, JNI.env, self.jni_id, observer.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CFURLCreateStringByAddingPercentEscapes, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param allocator cast=(CFAllocatorRef)
      # @param originalString cast=(CFStringRef)
      # @param charactersToLeaveUnescaped cast=(CFStringRef)
      # @param legalURLCharactersToBeEscaped cast=(CFStringRef)
      # @param encoding cast=(CFStringEncoding)
      # 
      # long
      # long
      # long
      # long
      # long
      def _cfurlcreate_string_by_adding_percent_escapes(allocator, original_string, characters_to_leave_unescaped, legal_urlcharacters_to_be_escaped, encoding)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CFURLCreateStringByAddingPercentEscapes, JNI.env, self.jni_id, allocator.to_int, original_string.to_int, characters_to_leave_unescaped.to_int, legal_urlcharacters_to_be_escaped.to_int, encoding.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGBitmapContextCreate, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param data cast=(void*)
      # @param width cast=(size_t)
      # @param height cast=(size_t)
      # @param bitsPerComponent cast=(size_t)
      # @param bytesPerRow cast=(size_t)
      # @param colorspace cast=(CGColorSpaceRef)
      # @param bitmapInfo cast=(CGBitmapInfo)
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def _cgbitmap_context_create(data, width, height, bits_per_component, bytes_per_row, colorspace, bitmap_info)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGBitmapContextCreate, JNI.env, self.jni_id, data.to_int, width.to_int, height.to_int, bits_per_component.to_int, bytes_per_row.to_int, colorspace.to_int, bitmap_info.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGBitmapContextCreateImage, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param c cast=(CGContextRef)
      # 
      # long
      # long
      def _cgbitmap_context_create_image(c)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGBitmapContextCreateImage, JNI.env, self.jni_id, c.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGBitmapContextGetData, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param c cast=(CGContextRef)
      # 
      # long
      # long
      def _cgbitmap_context_get_data(c)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGBitmapContextGetData, JNI.env, self.jni_id, c.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGColorSpaceCreateDeviceRGB, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _cgcolor_space_create_device_rgb
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGColorSpaceCreateDeviceRGB, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGColorSpaceRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param space cast=(CGColorSpaceRef)
      # 
      # long
      def _cgcolor_space_release(space)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGColorSpaceRelease, JNI.env, self.jni_id, space.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextAddPath, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # @param context cast=(CGContextRef)
      # @param path cast=(CGPathRef)
      # 
      # long
      # long
      def _cgcontext_add_path(context, path)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextAddPath, JNI.env, self.jni_id, context.to_int, path.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextDrawImage, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, CGRect, ::Java::Int] }
      # @param c cast=(CGContextRef)
      # @param rect flags=struct
      # @param image cast=(CGImageRef)
      # 
      # long
      # long
      def _cgcontext_draw_image(c, rect, image)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextDrawImage, JNI.env, self.jni_id, c.to_int, rect.jni_id, image.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param c cast=(CGContextRef)
      # 
      # long
      def _cgcontext_release(c)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextRelease, JNI.env, self.jni_id, c.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextReplacePathWithStrokedPath, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param c cast=(CGContextRef)
      # 
      # long
      def _cgcontext_replace_path_with_stroked_path(c)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextReplacePathWithStrokedPath, JNI.env, self.jni_id, c.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextRestoreGState, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param c cast=(CGContextRef)
      # 
      # long
      def _cgcontext_restore_gstate(c)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextRestoreGState, JNI.env, self.jni_id, c.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextSaveGState, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param c cast=(CGContextRef)
      # 
      # long
      def _cgcontext_save_gstate(c)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextSaveGState, JNI.env, self.jni_id, c.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextScaleCTM, [:pointer, :long, :int32, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      # @param c cast=(CGContextRef)
      # @param sx cast=(CGFloat)
      # @param sy cast=(CGFloat)
      # 
      # long
      # double
      # double
      def _cgcontext_scale_ctm(c, sx, sy)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextScaleCTM, JNI.env, self.jni_id, c.to_int, sx, sy)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetBlendMode, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # @param context cast=(CGContextRef)
      # @param mode cast=(CGBlendMode)
      # 
      # long
      def _cgcontext_set_blend_mode(context, mode)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetBlendMode, JNI.env, self.jni_id, context.to_int, mode.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetLineCap, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # @param c cast=(CGContextRef)
      # @param cap cast=(CGLineCap)
      # 
      # long
      def _cgcontext_set_line_cap(c, cap)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetLineCap, JNI.env, self.jni_id, c.to_int, cap.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetLineDash, [:pointer, :long, :int32, :float, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Float, Array.typed(::Java::Float), ::Java::Int] }
      # @param c cast=(CGContextRef)
      # @param phase cast=(CGFloat)
      # @param lengths cast=(CGFloat*)
      # @param count cast=(size_t)
      # 
      # long
      # double
      # long
      def _cgcontext_set_line_dash(c, phase, lengths, count)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetLineDash, JNI.env, self.jni_id, c.to_int, phase, lengths.jni_id, count.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetLineJoin, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # @param c cast=(CGContextRef)
      # @param join cast=(CGLineJoin)
      # 
      # long
      def _cgcontext_set_line_join(c, join)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetLineJoin, JNI.env, self.jni_id, c.to_int, join.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetLineWidth, [:pointer, :long, :int32, :float], :void
      typesig { [::Java::Int, ::Java::Float] }
      # @param c cast=(CGContextRef)
      # @param width cast=(CGFloat)
      # 
      # long
      # double
      def _cgcontext_set_line_width(c, width)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetLineWidth, JNI.env, self.jni_id, c.to_int, width)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetMiterLimit, [:pointer, :long, :int32, :float], :void
      typesig { [::Java::Int, ::Java::Float] }
      # @param c cast=(CGContextRef)
      # @param limit cast=(CGFloat)
      # 
      # long
      # double
      def _cgcontext_set_miter_limit(c, limit)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextSetMiterLimit, JNI.env, self.jni_id, c.to_int, limit)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextStrokePath, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param c cast=(CGContextRef)
      # 
      # long
      def _cgcontext_stroke_path(c)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextStrokePath, JNI.env, self.jni_id, c.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGContextTranslateCTM, [:pointer, :long, :int32, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      # @param c cast=(CGContextRef)
      # @param tx cast=(CGFloat)
      # @param ty cast=(CGFloat)
      # 
      # long
      # double
      # double
      def _cgcontext_translate_ctm(c, tx, ty)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGContextTranslateCTM, JNI.env, self.jni_id, c.to_int, tx, ty)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGDataProviderCreateWithData, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param info cast=(void*)
      # @param data cast=(void*)
      # @param size cast=(size_t)
      # @param releaseData cast=(CGDataProviderReleaseDataCallback)
      # 
      # long
      # long
      # long
      # long
      # long
      def _cgdata_provider_create_with_data(info, data, size, release_data)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGDataProviderCreateWithData, JNI.env, self.jni_id, info.to_int, data.to_int, size.to_int, release_data.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGDataProviderRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param provider cast=(CGDataProviderRef)
      # 
      # long
      def _cgdata_provider_release(provider)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGDataProviderRelease, JNI.env, self.jni_id, provider.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayBaseAddress, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param display cast=(CGDirectDisplayID)
      # 
      # long
      def _cgdisplay_base_address(display)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayBaseAddress, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayBitsPerPixel, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param display cast=(CGDirectDisplayID)
      # 
      # long
      def _cgdisplay_bits_per_pixel(display)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayBitsPerPixel, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayBitsPerSample, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param display cast=(CGDirectDisplayID)
      # 
      # long
      def _cgdisplay_bits_per_sample(display)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayBitsPerSample, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayBytesPerRow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param display cast=(CGDirectDisplayID)
      # 
      # long
      def _cgdisplay_bytes_per_row(display)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayBytesPerRow, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayPixelsHigh, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param display cast=(CGDirectDisplayID)
      # 
      # long
      def _cgdisplay_pixels_high(display)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayPixelsHigh, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayPixelsWide, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param display cast=(CGDirectDisplayID)
      # 
      # long
      def _cgdisplay_pixels_wide(display)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGDisplayPixelsWide, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGEnableEventStateCombining, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param doCombineState cast=(boolean_t)
      def _cgenable_event_state_combining(do_combine_state)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGEnableEventStateCombining, JNI.env, self.jni_id, do_combine_state.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGEventCreateKeyboardEvent, [:pointer, :long, :int32, :int16, :int8], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Boolean] }
      # @param source cast=(CGEventSourceRef)
      # @param virtualKey cast=(CGKeyCode)
      # @param keyDown cast=(_Bool)
      # 
      # long
      # long
      def _cgevent_create_keyboard_event(source, virtual_key, key_down)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGEventCreateKeyboardEvent, JNI.env, self.jni_id, source.to_int, virtual_key.to_int, key_down ? 1 : 0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGEventGetIntegerValueField, [:pointer, :long, :int32, :int32], :int64
      typesig { [::Java::Int, ::Java::Int] }
      # @param event cast=(CGEventRef)
      # @param field cast=(CGEventField)
      # 
      # long
      def _cgevent_get_integer_value_field(event, field)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGEventGetIntegerValueField, JNI.env, self.jni_id, event.to_int, field.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGEventKeyboardSetUnicodeString, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # @param event cast=(CGEventRef)
      # @param stringLength cast=(UniCharCount)
      # @param unicodeString cast=(UniChar*)
      # 
      # long
      # long
      def _cgevent_keyboard_set_unicode_string(event, string_length, unicode_string)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGEventKeyboardSetUnicodeString, JNI.env, self.jni_id, event.to_int, string_length.to_int, unicode_string.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGEventPost, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # @param tap cast=(CGEventTapLocation)
      # @param event cast=(CGEventRef)
      # 
      # long
      def _cgevent_post(tap, event)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGEventPost, JNI.env, self.jni_id, tap.to_int, event.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGGetDisplaysWithRect, [:pointer, :long, :long, :int32, :int32, :int32], :int32
      typesig { [CGRect, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param rect flags=struct
      # @param maxDisplays cast=(CGDisplayCount)
      # @param dspys cast=(CGDirectDisplayID*)
      # @param dspyCnt cast=(CGDisplayCount*)
      # 
      # long
      # long
      def _cgget_displays_with_rect(rect, max_displays, dspys, dspy_cnt)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGGetDisplaysWithRect, JNI.env, self.jni_id, rect.jni_id, max_displays.to_int, dspys.to_int, dspy_cnt.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGImageCreate, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int8, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # @param width cast=(size_t)
      # @param height cast=(size_t)
      # @param bitsPerComponent cast=(size_t)
      # @param bitsPerPixel cast=(size_t)
      # @param bytesPerRow cast=(size_t)
      # @param colorspace cast=(CGColorSpaceRef)
      # @param bitmapInfo cast=(CGBitmapInfo)
      # @param provider cast=(CGDataProviderRef)
      # @param decode cast=(CGFloat*)
      # @param shouldInterpolate cast=(_Bool)
      # @param intent cast=(CGColorRenderingIntent)
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def _cgimage_create(width, height, bits_per_component, bits_per_pixel, bytes_per_row, colorspace, bitmap_info, provider, decode, should_interpolate, intent)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGImageCreate, JNI.env, self.jni_id, width.to_int, height.to_int, bits_per_component.to_int, bits_per_pixel.to_int, bytes_per_row.to_int, colorspace.to_int, bitmap_info.to_int, provider.to_int, decode.to_int, should_interpolate ? 1 : 0, intent.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGImageGetHeight, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param image cast=(CGImageRef)
      # 
      # long
      # long
      def _cgimage_get_height(image)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGImageGetHeight, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGImageGetWidth, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param image cast=(CGImageRef)
      # 
      # long
      # long
      def _cgimage_get_width(image)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGImageGetWidth, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGImageRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param image cast=(CGImageRef)
      # 
      # long
      def _cgimage_release(image)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGImageRelease, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPathAddCurveToPoint, [:pointer, :long, :int32, :int32, :float, :float, :float, :float, :float, :float], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      # @param path cast=(CGMutablePathRef)
      # @param m cast=(CGAffineTransform*)
      # @param cp1x cast=(CGFloat)
      # @param cp1y cast=(CGFloat)
      # @param cp2x cast=(CGFloat)
      # @param cp2y cast=(CGFloat)
      # @param x cast=(CGFloat)
      # @param y cast=(CGFloat)
      # 
      # long
      # long
      # double
      # double
      # double
      # double
      # double
      # double
      def _cgpath_add_curve_to_point(path, m, cp1x, cp1y, cp2x, cp2y, x, y)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPathAddCurveToPoint, JNI.env, self.jni_id, path.to_int, m.to_int, cp1x, cp1y, cp2x, cp2y, x, y)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPathAddLineToPoint, [:pointer, :long, :int32, :int32, :float, :float], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Float, ::Java::Float] }
      # @param path cast=(CGMutablePathRef)
      # @param m cast=(CGAffineTransform*)
      # @param x cast=(CGFloat)
      # @param y cast=(CGFloat)
      # 
      # long
      # long
      # double
      # double
      def _cgpath_add_line_to_point(path, m, x, y)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPathAddLineToPoint, JNI.env, self.jni_id, path.to_int, m.to_int, x, y)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPathApply, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param path cast=(CGPathRef)
      # @param info cast=(void*)
      # @param function cast=(CGPathApplierFunction)
      # 
      # long
      # long
      # long
      def _cgpath_apply(path, info, function)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPathApply, JNI.env, self.jni_id, path.to_int, info.to_int, function.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPathCloseSubpath, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param path cast=(CGMutablePathRef)
      # 
      # long
      def _cgpath_close_subpath(path)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPathCloseSubpath, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPathCreateCopy, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param path cast=(CGPathRef)
      # 
      # long
      # long
      def _cgpath_create_copy(path)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPathCreateCopy, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPathCreateMutable, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _cgpath_create_mutable
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPathCreateMutable, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPathMoveToPoint, [:pointer, :long, :int32, :int32, :float, :float], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Float, ::Java::Float] }
      # @param path cast=(CGMutablePathRef)
      # @param m cast=(CGAffineTransform*)
      # @param x cast=(CGFloat)
      # @param y cast=(CGFloat)
      # 
      # long
      # long
      # double
      # double
      def _cgpath_move_to_point(path, m, x, y)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPathMoveToPoint, JNI.env, self.jni_id, path.to_int, m.to_int, x, y)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPathRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param path cast=(CGPathRef)
      # 
      # long
      def _cgpath_release(path)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPathRelease, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPostKeyboardEvent, [:pointer, :long, :int16, :int16, :int8], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Boolean] }
      # @param keyChar cast=(CGCharCode)
      # @param virtualKey cast=(CGKeyCode)
      # @param keyDown cast=(boolean_t)
      def _cgpost_keyboard_event(key_char, virtual_key, key_down)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPostKeyboardEvent, JNI.env, self.jni_id, key_char.to_int, virtual_key.to_int, key_down ? 1 : 0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPostMouseEvent, [:pointer, :long, :long, :int8, :int32, :int8, :int8, :int8, :int8, :int8], :int32
      typesig { [CGPoint, ::Java::Boolean, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
      # @param mouseCursorPosition flags=struct
      # @param updateMouseCursorPosition cast=(boolean_t)
      # @param buttonCount cast=(CGButtonCount)
      # @param mouseButtonDown cast=(boolean_t)
      def _cgpost_mouse_event(mouse_cursor_position, update_mouse_cursor_position, button_count, mouse_button_down, var_arg0, var_arg1, var_arg2, var_arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPostMouseEvent, JNI.env, self.jni_id, mouse_cursor_position.jni_id, update_mouse_cursor_position ? 1 : 0, button_count.to_int, mouse_button_down ? 1 : 0, var_arg0 ? 1 : 0, var_arg1 ? 1 : 0, var_arg2 ? 1 : 0, var_arg3 ? 1 : 0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPostScrollWheelEvent, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param wheelCount cast=(CGWheelCount)
      # @param wheel1 cast=(int32_t)
      def _cgpost_scroll_wheel_event(wheel_count, wheel1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPostScrollWheelEvent, JNI.env, self.jni_id, wheel_count.to_int, wheel1.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGSetLocalEventsFilterDuringSuppressionState, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param filter cast=(CGEventFilterMask)
      # @param state cast=(CGEventSuppressionState)
      def _cgset_local_events_filter_during_suppression_state(filter, state)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGSetLocalEventsFilterDuringSuppressionState, JNI.env, self.jni_id, filter.to_int, state.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGSetLocalEventsSuppressionInterval, [:pointer, :long, :double], :int32
      typesig { [::Java::Double] }
      # @param seconds cast=(CFTimeInterval)
      def _cgset_local_events_suppression_interval(seconds)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGSetLocalEventsSuppressionInterval, JNI.env, self.jni_id, seconds)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGWarpMouseCursorPosition, [:pointer, :long, :long], :int32
      typesig { [CGPoint] }
      # @param newCursorPosition flags=struct
      def _cgwarp_mouse_cursor_position(new_cursor_position)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGWarpMouseCursorPosition, JNI.env, self.jni_id, new_cursor_position.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSEqualRects, [:pointer, :long, :long, :long], :int8
      typesig { [NSRect, NSRect] }
      # @param aRect flags=struct
      # @param bRect flags=struct
      def _nsequal_rects(a_rect, b_rect)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSEqualRects, JNI.env, self.jni_id, a_rect.jni_id, b_rect.jni_id) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSFileTypeForHFSTypeCode, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hfsFileTypeCode cast=(OSType)
      # 
      # long
      def _nsfile_type_for_hfstype_code(hfs_file_type_code)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSFileTypeForHFSTypeCode, JNI.env, self.jni_id, hfs_file_type_code.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSGetSizeAndAlignment, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @param typePtr cast=(char*)
      # @param sizep cast=(NSUInteger*)
      # @param alignp cast=(NSUInteger*)
      # 
      # long
      # long
      # long[]
      # long[]
      def _nsget_size_and_alignment(type_ptr, sizep, alignp)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSGetSizeAndAlignment, JNI.env, self.jni_id, type_ptr.to_int, sizep.jni_id, alignp.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPointInRect, [:pointer, :long, :long, :long], :int8
      typesig { [NSPoint, NSRect] }
      # @param aPoint flags=struct
      # @param aRect flags=struct
      def _nspoint_in_rect(a_point, a_rect)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPointInRect, JNI.env, self.jni_id, a_point.jni_id, a_rect.jni_id) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSSearchPathForDirectoriesInDomains, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @param directory cast=(NSSearchPathDirectory)
      # @param domainMask cast=(NSSearchPathDomainMask)
      # @param expandTilde cast=(BOOL)
      # 
      # long
      # long
      # long
      def _nssearch_path_for_directories_in_domains(directory, domain_mask, expand_tilde)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSSearchPathForDirectoriesInDomains, JNI.env, self.jni_id, directory.to_int, domain_mask.to_int, expand_tilde ? 1 : 0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSTemporaryDirectory, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _nstemporary_directory
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSTemporaryDirectory, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper_1bool, [:pointer, :long, :long, :int32, :long, :int32], :int8
      typesig { [Objc_super, ::Java::Int, NSRange, ::Java::Int] }
      # Super Sends
      # 
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_super_bool(super_id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper_1bool, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.jni_id, arg1.to_int) != 0
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2I".to_sym, [:pointer, :long, :long, :int32], :int32
      typesig { [Objc_super, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      def objc_msg_send_super(super_id, sel)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2I".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, [:pointer, :long, :long, :int32, :long], :int32
      typesig { [Objc_super, ::Java::Int, NSPoint] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IL#{NSRect.jni_package_name}_NSRect_2".to_sym, [:pointer, :long, :long, :int32, :long], :int32
      typesig { [Objc_super, ::Java::Int, NSRect] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IL#{NSRect.jni_package_name}_NSRect_2".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IL#{NSRect.jni_package_name}_NSRect_2I".to_sym, [:pointer, :long, :long, :int32, :long, :int32], :int32
      typesig { [Objc_super, ::Java::Int, NSRect, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IL#{NSRect.jni_package_name}_NSRect_2I".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IL#{NSSize.jni_package_name}_NSSize_2".to_sym, [:pointer, :long, :long, :int32, :long], :int32
      typesig { [Objc_super, ::Java::Int, NSSize] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IL#{NSSize.jni_package_name}_NSSize_2".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IZ".to_sym, [:pointer, :long, :long, :int32, :int8], :int32
      typesig { [Objc_super, ::Java::Int, ::Java::Boolean] }
      # @method flags=cast
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IZ".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0 ? 1 : 0)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :int32
      typesig { [Objc_super, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2II".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IIL#{NSPoint.jni_package_name}_NSPoint_2I".to_sym, [:pointer, :long, :long, :int32, :int32, :long, :int32], :int32
      typesig { [Objc_super, ::Java::Int, ::Java::Int, NSPoint, ::Java::Int] }
      # @method flags=cast
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IIL#{NSPoint.jni_package_name}_NSPoint_2I".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IIL#{NSRect.jni_package_name}_NSRect_2I".to_sym, [:pointer, :long, :long, :int32, :int32, :long, :int32], :int32
      typesig { [Objc_super, ::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
      # @method flags=cast
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IIL#{NSRect.jni_package_name}_NSRect_2I".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IIZ".to_sym, [:pointer, :long, :long, :int32, :int32, :int8], :int32
      typesig { [Objc_super, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IIZ".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.to_int, arg1 ? 1 : 0)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2III".to_sym, [:pointer, :long, :long, :int32, :int32, :int32], :int32
      typesig { [Objc_super, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2III".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.to_int, arg1.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IIIIZ".to_sym, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :int8], :int32
      typesig { [Objc_super, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IIIIZ".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3 ? 1 : 0)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IIIII".to_sym, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [Objc_super, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send_super(super_id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper__L#{Objc_super.jni_package_name}_objc_super_2IIIII".to_sym, JNI.env, self.jni_id, super_id.jni_id, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper_1stret__L#{NSRect.jni_package_name}_NSRect_2L#{Objc_super.jni_package_name}_objc_super_2IL#{NSRect.jni_package_name}_NSRect_2".to_sym, [:pointer, :long, :long, :long, :int32, :long], :void
      typesig { [NSRect, Objc_super, ::Java::Int, NSRect] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      def objc_msg_send_super_stret(result, super_id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper_1stret__L#{NSRect.jni_package_name}_NSRect_2L#{Objc_super.jni_package_name}_objc_super_2IL#{NSRect.jni_package_name}_NSRect_2".to_sym, JNI.env, self.jni_id, result.jni_id, super_id.jni_id, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper_1stret__L#{NSRect.jni_package_name}_NSRect_2L#{Objc_super.jni_package_name}_objc_super_2IL#{NSRect.jni_package_name}_NSRect_2I".to_sym, [:pointer, :long, :long, :long, :int32, :long, :int32], :void
      typesig { [NSRect, Objc_super, ::Java::Int, NSRect, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_super_stret(result, super_id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper_1stret__L#{NSRect.jni_package_name}_NSRect_2L#{Objc_super.jni_package_name}_objc_super_2IL#{NSRect.jni_package_name}_NSRect_2I".to_sym, JNI.env, self.jni_id, result.jni_id, super_id.jni_id, sel.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper_1stret__L#{NSSize.jni_package_name}_NSSize_2L#{Objc_super.jni_package_name}_objc_super_2I".to_sym, [:pointer, :long, :long, :long, :int32], :void
      typesig { [NSSize, Objc_super, ::Java::Int] }
      # @method flags=cast
      # long
      def objc_msg_send_super_stret(result, super_id, sel)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSendSuper_1stret__L#{NSSize.jni_package_name}_NSSize_2L#{Objc_super.jni_package_name}_objc_super_2I".to_sym, JNI.env, self.jni_id, result.jni_id, super_id.jni_id, sel.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__II, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # Sends
      # @method flags=cast
      # long
      # long
      def objc_msg_send_bool(id, sel)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__II, JNI.env, self.jni_id, id.to_int, sel.to_int) != 0
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, NSPoint] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_bool(id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id) != 0
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIL#{NSRange.jni_package_name}_NSRange_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, NSRange, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send_bool(id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIL#{NSRange.jni_package_name}_NSRange_2I".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int) != 0
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIL#{NSRect.jni_package_name}_NSRect_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, NSRect] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_bool(id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIL#{NSRect.jni_package_name}_NSRect_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__III, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send_bool(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__III, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int) != 0
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIIL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSPoint] }
      # @method flags=cast
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send_bool(id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIIL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.jni_id) != 0
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIIL#{NSSize.jni_package_name}_NSSize_2Z".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int8], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSSize, ::Java::Boolean] }
      # @method flags=cast
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send_bool(id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIIL#{NSSize.jni_package_name}_NSSize_2Z".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.jni_id, arg2 ? 1 : 0) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIII, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      def objc_msg_send_bool(id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIII, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send_bool(id, sel, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIIII, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send_bool(id, sel, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIIIIII, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIS, [:pointer, :long, :int32, :int32, :int16], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Short] }
      # @method flags=cast
      # long
      # long
      def objc_msg_send_bool(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1bool__IIS, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int) != 0
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1fpret__II, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      def objc_msg_send_fpret(id, sel)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1fpret__II, JNI.env, self.jni_id, id.to_int, sel.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1fpret__III, [:pointer, :long, :int32, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send_fpret(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1fpret__III, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1fpret__IIII, [:pointer, :long, :int32, :int32, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      def objc_msg_send_fpret(id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1fpret__IIII, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send(id, sel)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II, JNI.env, self.jni_id, id.to_int, sel.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSAffineTransformStruct.jni_package_name}_NSAffineTransformStruct_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSAffineTransformStruct] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSAffineTransformStruct.jni_package_name}_NSAffineTransformStruct_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSPoint] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2L#{NSPoint.jni_package_name}_NSPoint_2L#{NSPoint.jni_package_name}_NSPoint_2".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSPoint, NSPoint, NSPoint] }
      # @method flags=cast
      # @param arg0 flags=struct
      # @param arg1 flags=struct
      # @param arg2 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2L#{NSPoint.jni_package_name}_NSPoint_2L#{NSPoint.jni_package_name}_NSPoint_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2L#{NSPoint.jni_package_name}_NSPoint_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSPoint, NSPoint, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2L#{NSPoint.jni_package_name}_NSPoint_2I".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.jni_id, arg2.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2L#{NSRect.jni_package_name}_NSRect_2IXfloatX".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Int, NSPoint, NSRect, ::Java::Int, ::Java::Float] }
      # @method flags=cast
      # @param arg0 flags=struct
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      # double
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2L#{NSRect.jni_package_name}_NSRect_2IXfloatX".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.jni_id, arg2.to_int, arg3)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2XfloatXXfloatXXfloatX".to_sym, [:pointer, :long, :int32, :int32, :long, :float, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Int, NSPoint, ::Java::Float, ::Java::Float, ::Java::Float] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # double
      # double
      # double
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2XfloatXXfloatXXfloatX".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1, arg2, arg3)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2XfloatXXfloatXXfloatXZ".to_sym, [:pointer, :long, :int32, :int32, :long, :float, :float, :float, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, NSPoint, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Boolean] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # double
      # double
      # double
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2XfloatXXfloatXXfloatXZ".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1, arg2, arg3, arg4 ? 1 : 0)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2I_3XfloatX".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSPoint, ::Java::Int, Array.typed(::Java::Float)] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # long
      # double[]
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSPoint.jni_package_name}_NSPoint_2I_3XfloatX".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRange.jni_package_name}_NSRange_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSRange] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRange.jni_package_name}_NSRange_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRange.jni_package_name}_NSRange_2L#{NSPoint.jni_package_name}_NSPoint_2".to_sym, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSRange, NSPoint] }
      # @method flags=cast
      # @param arg0 flags=struct
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRange.jni_package_name}_NSRange_2L#{NSPoint.jni_package_name}_NSPoint_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRange.jni_package_name}_NSRange_2L#{NSRange.jni_package_name}_NSRange_2II".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSRange, NSRange, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRange.jni_package_name}_NSRange_2L#{NSRange.jni_package_name}_NSRange_2II".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.jni_id, arg2.to_int, arg3.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRange.jni_package_name}_NSRange_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSRange, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRange.jni_package_name}_NSRange_2I".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRange.jni_package_name}_NSRange_2IIIII".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSRange, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRange.jni_package_name}_NSRange_2IIIII".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2L#{NSPoint.jni_package_name}_NSPoint_2".to_sym, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, NSPoint] }
      # @method flags=cast
      # @param arg0 flags=struct
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2L#{NSPoint.jni_package_name}_NSPoint_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2L#{NSRange.jni_package_name}_NSRange_2L#{NSRect.jni_package_name}_NSRect_2".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, NSRange, NSRect] }
      # @method flags=cast
      # @param arg0 flags=struct
      # @param arg1 flags=struct
      # @param arg2 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2L#{NSRange.jni_package_name}_NSRange_2L#{NSRect.jni_package_name}_NSRect_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2L#{NSRect.jni_package_name}_NSRect_2IXfloatX".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, NSRect, ::Java::Int, ::Java::Float] }
      # @method flags=cast
      # @param arg0 flags=struct
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      # double
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2L#{NSRect.jni_package_name}_NSRect_2IXfloatX".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.jni_id, arg2.to_int, arg3)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2Z".to_sym, [:pointer, :long, :int32, :int32, :long, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Boolean] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2Z".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1 ? 1 : 0)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2ZZ".to_sym, [:pointer, :long, :int32, :int32, :long, :int8, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Boolean, ::Java::Boolean] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2ZZ".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1 ? 1 : 0, arg2 ? 1 : 0)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2XfloatX".to_sym, [:pointer, :long, :int32, :int32, :long, :float], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Float] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # double
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2XfloatX".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2XfloatXXfloatX".to_sym, [:pointer, :long, :int32, :int32, :long, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Float, ::Java::Float] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # double
      # double
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2XfloatXXfloatX".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1, arg2)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2I".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2IZI".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :int8, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2IZI".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int, arg2 ? 1 : 0, arg3.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2II".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2II".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int, arg2.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2IIZ".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2IIZ".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3 ? 1 : 0)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2IIZI".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int8, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2IIZI".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3 ? 1 : 0, arg4.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2III".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSRect.jni_package_name}_NSRect_2III".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSSize.jni_package_name}_NSSize_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSSize] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIL#{NSSize.jni_package_name}_NSSize_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIZ, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIZ, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0 ? 1 : 0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIZI, [:pointer, :long, :int32, :int32, :int8, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIZI, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0 ? 1 : 0, arg1.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3B, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3B, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3BI, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3BI, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3C, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3C, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3CL#{NSRange.jni_package_name}_NSRange_2".to_sym, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), NSRange] }
      # @method flags=cast
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3CL#{NSRange.jni_package_name}_NSRange_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3CI, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3CI, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXdoubleX, [:pointer, :long, :int32, :int32, :double], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Double] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXdoubleX, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXdoubleXIIIZ, [:pointer, :long, :int32, :int32, :double, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Double, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXdoubleXIIIZ, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0, arg1.to_int, arg2.to_int, arg3.to_int, arg4 ? 1 : 0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXfloatXXfloatX, [:pointer, :long, :int32, :int32, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Float, ::Java::Float] }
      # @method flags=cast
      # long
      # long
      # long
      # double
      # double
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXfloatXXfloatX, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0, arg1)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXfloatXXfloatXXfloatXXfloatX, [:pointer, :long, :int32, :int32, :float, :float, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      # @method flags=cast
      # long
      # long
      # long
      # double
      # double
      # double
      # double
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXfloatXXfloatXXfloatXXfloatX, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0, arg1, arg2, arg3)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXfloatXI, [:pointer, :long, :int32, :int32, :float, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Float, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # double
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXfloatXI, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0, arg1.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3XfloatX, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Float)] }
      # @method flags=cast
      # long
      # long
      # long
      # double[]
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3XfloatX, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3XfloatXIXfloatX, [:pointer, :long, :int32, :int32, :long, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Float), ::Java::Int, ::Java::Float] }
      # @method flags=cast
      # long
      # long
      # long
      # double[]
      # long
      # double
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3XfloatXIXfloatX, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int, arg2)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__III, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__III, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSPoint] }
      # @method flags=cast
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSPoint.jni_package_name}_NSPoint_2L#{NSSize.jni_package_name}_NSSize_2IIIZ".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :long, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSPoint, NSSize, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @method flags=cast
      # @param arg1 flags=struct
      # @param arg2 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSPoint.jni_package_name}_NSPoint_2L#{NSSize.jni_package_name}_NSSize_2IIIZ".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.to_int, arg4.to_int, arg5.to_int, arg6 ? 1 : 0)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSPoint.jni_package_name}_NSPoint_2I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSPoint, ::Java::Int] }
      # @method flags=cast
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSPoint.jni_package_name}_NSPoint_2I".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSPoint.jni_package_name}_NSPoint_2IXdoubleXIIIII".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :double, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSPoint, ::Java::Int, ::Java::Double, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSPoint.jni_package_name}_NSPoint_2IXdoubleXIIIII".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.jni_id, arg2.to_int, arg3, arg4.to_int, arg5.to_int, arg6.to_int, arg7.to_int, arg8.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSPoint.jni_package_name}_NSPoint_2IXdoubleXIISII".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :double, :int32, :int32, :int16, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSPoint, ::Java::Int, ::Java::Double, ::Java::Int, ::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSPoint.jni_package_name}_NSPoint_2IXdoubleXIISII".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.jni_id, arg2.to_int, arg3, arg4.to_int, arg5.to_int, arg6.to_int, arg7.to_int, arg8.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSRange.jni_package_name}_NSRange_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSRange] }
      # @method flags=cast
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSRange.jni_package_name}_NSRange_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSRect.jni_package_name}_NSRect_2I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
      # @method flags=cast
      # @param arg1 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIL#{NSRect.jni_package_name}_NSRect_2I".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIZ, [:pointer, :long, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIZ, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1 ? 1 : 0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIXfloatX, [:pointer, :long, :int32, :int32, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Float] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # double
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIXfloatX, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIII, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIII, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIL#{NSRange.jni_package_name}_NSRange_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, NSRange] }
      # @method flags=cast
      # @param arg2 flags=struct
      # 
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIL#{NSRange.jni_package_name}_NSRange_2".to_sym, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIZ, [:pointer, :long, :int32, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIZ, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2 ? 1 : 0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIII, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIZ, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIZ, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3 ? 1 : 0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIXfloatX, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Float] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      # long
      # double
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIXfloatX, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIII, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIII, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIIIZZIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int8, :int8, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIIIZZIII, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5 ? 1 : 0, arg6 ? 1 : 0, arg7.to_int, arg8.to_int, arg9.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIIIZZIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int8, :int8, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIIIZZIIII, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5 ? 1 : 0, arg6 ? 1 : 0, arg7.to_int, arg8.to_int, arg9.to_int, arg10.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def objc_msg_send(id, sel, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIIIIIIII, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3I, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @method flags=cast
      # long
      # long
      # long
      # long[]
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3I, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3III, [:pointer, :long, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long[]
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__II_3III, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int, arg2.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXfloatX, [:pointer, :long, :int32, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Float] }
      # @method flags=cast
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__IIXfloatX, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__JJXfloatXXdoubleX, [:pointer, :long, :int64, :int64, :float, :double], :int64
      typesig { [::Java::Long, ::Java::Long, ::Java::Float, ::Java::Double] }
      # @method flags=cast
      def objc_msg_send(id, sel, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__JJXfloatXXdoubleX, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0, arg1)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__JJI, [:pointer, :long, :int64, :int64, :int32], :int64
      typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
      # @method flags=cast
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__JJI, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__JJ_3I, [:pointer, :long, :int64, :int64, :long], :int64
      typesig { [::Java::Long, ::Java::Long, Array.typed(::Java::Int)] }
      # @method flags=cast
      def objc_msg_send(id, sel, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__JJ_3I, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__JJ_3JJJ, [:pointer, :long, :int64, :int64, :long, :int64, :int64], :int64
      typesig { [::Java::Long, ::Java::Long, Array.typed(::Java::Long), ::Java::Long, ::Java::Long] }
      # @method flags=cast
      def objc_msg_send(id, sel, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend__JJ_3JJJ, JNI.env, self.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int, arg2.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSAffineTransformStruct.jni_package_name}_NSAffineTransformStruct_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSAffineTransformStruct, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      def objc_msg_send_stret(result, id, sel)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSAffineTransformStruct.jni_package_name}_NSAffineTransformStruct_2II".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSPoint.jni_package_name}_NSPoint_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSPoint, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      def objc_msg_send_stret(result, id, sel)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSPoint.jni_package_name}_NSPoint_2II".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSPoint.jni_package_name}_NSPoint_2IIL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, [:pointer, :long, :long, :int32, :int32, :long], :void
      typesig { [NSPoint, ::Java::Int, ::Java::Int, NSPoint] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSPoint.jni_package_name}_NSPoint_2IIL#{NSPoint.jni_package_name}_NSPoint_2".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSPoint.jni_package_name}_NSPoint_2IIL#{NSPoint.jni_package_name}_NSPoint_2I".to_sym, [:pointer, :long, :long, :int32, :int32, :long, :int32], :void
      typesig { [NSPoint, ::Java::Int, ::Java::Int, NSPoint, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSPoint.jni_package_name}_NSPoint_2IIL#{NSPoint.jni_package_name}_NSPoint_2I".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSPoint.jni_package_name}_NSPoint_2III".to_sym, [:pointer, :long, :long, :int32, :int32, :int32], :void
      typesig { [NSPoint, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSPoint.jni_package_name}_NSPoint_2III".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRange.jni_package_name}_NSRange_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSRange, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      def objc_msg_send_stret(result, id, sel)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRange.jni_package_name}_NSRange_2II".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRange.jni_package_name}_NSRange_2IIL#{NSRange.jni_package_name}_NSRange_2I".to_sym, [:pointer, :long, :long, :int32, :int32, :long, :int32], :void
      typesig { [NSRange, ::Java::Int, ::Java::Int, NSRange, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRange.jni_package_name}_NSRange_2IIL#{NSRange.jni_package_name}_NSRange_2I".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRange.jni_package_name}_NSRange_2IIL#{NSRect.jni_package_name}_NSRect_2".to_sym, [:pointer, :long, :long, :int32, :int32, :long], :void
      typesig { [NSRange, ::Java::Int, ::Java::Int, NSRect] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRange.jni_package_name}_NSRange_2IIL#{NSRect.jni_package_name}_NSRect_2".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRange.jni_package_name}_NSRange_2III".to_sym, [:pointer, :long, :long, :int32, :int32, :int32], :void
      typesig { [NSRange, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRange.jni_package_name}_NSRange_2III".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSRect, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      def objc_msg_send_stret(result, id, sel)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2II".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2IIL#{NSRange.jni_package_name}_NSRange_2I".to_sym, [:pointer, :long, :long, :int32, :int32, :long, :int32], :void
      typesig { [NSRect, ::Java::Int, ::Java::Int, NSRange, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2IIL#{NSRange.jni_package_name}_NSRange_2I".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2IIL#{NSRect.jni_package_name}_NSRect_2".to_sym, [:pointer, :long, :long, :int32, :int32, :long], :void
      typesig { [NSRect, ::Java::Int, ::Java::Int, NSRect] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2IIL#{NSRect.jni_package_name}_NSRect_2".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2IIL#{NSRect.jni_package_name}_NSRect_2I".to_sym, [:pointer, :long, :long, :int32, :int32, :long, :int32], :void
      typesig { [NSRect, ::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2IIL#{NSRect.jni_package_name}_NSRect_2I".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2III".to_sym, [:pointer, :long, :long, :int32, :int32, :int32], :void
      typesig { [NSRect, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2III".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2IIII".to_sym, [:pointer, :long, :long, :int32, :int32, :int32, :int32], :void
      typesig { [NSRect, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2IIII".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2IIIIZ".to_sym, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :int8], :void
      typesig { [NSRect, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @method flags=cast
      # long
      # long
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSRect.jni_package_name}_NSRect_2IIIIZ".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.to_int, arg1.to_int, arg2 ? 1 : 0)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSSize.jni_package_name}_NSSize_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSSize, ::Java::Int, ::Java::Int] }
      # @method flags=cast
      # long
      # long
      def objc_msg_send_stret(result, id, sel)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSSize.jni_package_name}_NSSize_2II".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSSize.jni_package_name}_NSSize_2IIL#{NSRect.jni_package_name}_NSRect_2".to_sym, [:pointer, :long, :long, :int32, :int32, :long], :void
      typesig { [NSSize, ::Java::Int, ::Java::Int, NSRect] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSSize.jni_package_name}_NSSize_2IIL#{NSRect.jni_package_name}_NSRect_2".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSSize.jni_package_name}_NSSize_2IIL#{NSSize.jni_package_name}_NSSize_2".to_sym, [:pointer, :long, :long, :int32, :int32, :long], :void
      typesig { [NSSize, ::Java::Int, ::Java::Int, NSSize] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSSize.jni_package_name}_NSSize_2IIL#{NSSize.jni_package_name}_NSSize_2".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSSize.jni_package_name}_NSSize_2IIL#{NSSize.jni_package_name}_NSSize_2ZZI".to_sym, [:pointer, :long, :long, :int32, :int32, :long, :int8, :int8, :int32], :void
      typesig { [NSSize, ::Java::Int, ::Java::Int, NSSize, ::Java::Boolean, ::Java::Boolean, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSSize.jni_package_name}_NSSize_2IIL#{NSSize.jni_package_name}_NSSize_2ZZI".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1 ? 1 : 0, arg2 ? 1 : 0, arg3.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSSize.jni_package_name}_NSSize_2IIL#{NSSize.jni_package_name}_NSSize_2I".to_sym, [:pointer, :long, :long, :int32, :int32, :long, :int32], :void
      typesig { [NSSize, ::Java::Int, ::Java::Int, NSSize, ::Java::Int] }
      # @method flags=cast
      # @param arg0 flags=struct
      # 
      # long
      # long
      # long
      def objc_msg_send_stret(result, id, sel, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_objc_1msgSend_1stret__L#{NSSize.jni_package_name}_NSSize_2IIL#{NSSize.jni_package_name}_NSSize_2I".to_sym, JNI.env, self.jni_id, result.jni_id, id.to_int, sel.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPathElement_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      # Sizeof natives
      def _cgpath_element_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPathElement_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGPoint_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _cgpoint_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGPoint_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGRect_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _cgrect_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGRect_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_CGSize_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _cgsize_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_CGSize_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSAffineTransformStruct_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nsaffine_transform_struct_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSAffineTransformStruct_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSPoint_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nspoint_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSPoint_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSRange_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nsrange_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSRange_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSRect_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nsrect_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSRect_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_cocoa_OS_NSSize_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nssize_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_cocoa_OS_NSSize_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{CGPathElement.jni_package_name}_CGPathElement_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, CGPathElement, ::Java::Int] }
      # Memmove natives
      # 
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{CGPathElement.jni_package_name}_CGPathElement_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{CGPathElement.jni_package_name}_CGPathElement_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [CGPathElement, ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{CGPathElement.jni_package_name}_CGPathElement_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{CGPoint.jni_package_name}_CGPoint_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, CGPoint, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{CGPoint.jni_package_name}_CGPoint_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{CGPoint.jni_package_name}_CGPoint_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [CGPoint, ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{CGPoint.jni_package_name}_CGPoint_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{CGRect.jni_package_name}_CGRect_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, CGRect, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{CGRect.jni_package_name}_CGRect_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{CGRect.jni_package_name}_CGRect_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [CGRect, ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{CGRect.jni_package_name}_CGRect_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{CGSize.jni_package_name}_CGSize_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, CGSize, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{CGSize.jni_package_name}_CGSize_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{CGSize.jni_package_name}_CGSize_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [CGSize, ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{CGSize.jni_package_name}_CGSize_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{NSAffineTransformStruct.jni_package_name}_NSAffineTransformStruct_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NSAffineTransformStruct, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{NSAffineTransformStruct.jni_package_name}_NSAffineTransformStruct_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{NSAffineTransformStruct.jni_package_name}_NSAffineTransformStruct_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSAffineTransformStruct, ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{NSAffineTransformStruct.jni_package_name}_NSAffineTransformStruct_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{NSPoint.jni_package_name}_NSPoint_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NSPoint, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{NSPoint.jni_package_name}_NSPoint_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{NSPoint.jni_package_name}_NSPoint_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSPoint, ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{NSPoint.jni_package_name}_NSPoint_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{NSRange.jni_package_name}_NSRange_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NSRange, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{NSRange.jni_package_name}_NSRange_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{NSRange.jni_package_name}_NSRange_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSRange, ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{NSRange.jni_package_name}_NSRange_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{NSRect.jni_package_name}_NSRect_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NSRect, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{NSRect.jni_package_name}_NSRect_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{NSRect.jni_package_name}_NSRect_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSRect, ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{NSRect.jni_package_name}_NSRect_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{NSSize.jni_package_name}_NSSize_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NSSize, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__IL#{NSSize.jni_package_name}_NSSize_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{NSSize.jni_package_name}_NSSize_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSSize, ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(void *),flags=critical
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_cocoa_OS_memmove__L#{NSSize.jni_package_name}_NSSize_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__os, :initialize
  end
  
end
