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
module Org::Eclipse::Swt::Internal::Gnome
  module GNOMEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gnome
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class GNOME < GNOMEImports.const_get :Platform
    include_class_members GNOMEImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt-gnome")
      end
      
      const_set_lazy(:GNOME_FILE_DOMAIN_PIXMAP) { 4 }
      const_attr_reader  :GNOME_FILE_DOMAIN_PIXMAP
      
      const_set_lazy(:GNOME_ICON_LOOKUP_FLAGS_NONE) { 0 }
      const_attr_reader  :GNOME_ICON_LOOKUP_FLAGS_NONE
      
      const_set_lazy(:GNOME_PARAM_NONE) { 0 }
      const_attr_reader  :GNOME_PARAM_NONE
      
      const_set_lazy(:GNOME_VFS_MIME_APPLICATION_ARGUMENT_TYPE_URIS) { 0 }
      const_attr_reader  :GNOME_VFS_MIME_APPLICATION_ARGUMENT_TYPE_URIS
      
      const_set_lazy(:GNOME_VFS_OK) { 0 }
      const_attr_reader  :GNOME_VFS_OK
      
      const_set_lazy(:GNOME_VFS_MAKE_URI_DIR_NONE) { 0 }
      const_attr_reader  :GNOME_VFS_MAKE_URI_DIR_NONE
      
      const_set_lazy(:GNOME_VFS_MAKE_URI_DIR_HOMEDIR) { 1 << 0 }
      const_attr_reader  :GNOME_VFS_MAKE_URI_DIR_HOMEDIR
      
      const_set_lazy(:GNOME_VFS_MAKE_URI_DIR_CURRENT) { 1 << 1 }
      const_attr_reader  :GNOME_VFS_MAKE_URI_DIR_CURRENT
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME_GnomeVFSMimeApplication_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      # 64 bit
      def _gnome_vfsmime_application_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME_GnomeVFSMimeApplication_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1g_1free, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # Natives
      # @param mem cast=(gpointer)
      # int
      def __g_free(mem)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1g_1free, JNI.env, self.jni_id, mem.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def g_free(mem)
        PLATFORM_LOCK.lock
        begin
          __g_free(mem)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1g_1list_1append, [:pointer, :long, :int64, :int64], :int64
      typesig { [::Java::Long, ::Java::Long] }
      # @param list cast=(GList *)
      # @param data cast=(gpointer)
      # 
      # int
      # int
      # int
      def __g_list_append(list, data)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1g_1list_1append, JNI.env, self.jni_id, list.to_int, data.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def g_list_append(list, data)
        PLATFORM_LOCK.lock
        begin
          return __g_list_append(list, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1g_1list_1free, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param list cast=(GList *)
      # int
      def __g_list_free(list)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1g_1list_1free, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def g_list_free(list)
        PLATFORM_LOCK.lock
        begin
          __g_list_free(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1g_1list_1next, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # int
      # int
      def __g_list_next(list)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1g_1list_1next, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def g_list_next(list)
        PLATFORM_LOCK.lock
        begin
          return __g_list_next(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1g_1object_1unref, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param object cast=(gpointer)
      # int
      def __g_object_unref(object)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1g_1object_1unref, JNI.env, self.jni_id, object.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def g_object_unref(object)
        PLATFORM_LOCK.lock
        begin
          __g_object_unref(object)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1icon_1lookup, [:pointer, :long, :int64, :int64, :long, :long, :int64, :long, :int32, :long], :int64
      typesig { [::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # @param icon_theme cast=(GnomeIconTheme *)
      # @param thumbnail_factory cast=(GnomeThumbnailFactory *)
      # @param file_uri cast=(const char *)
      # @param custom_icon cast=(const char *)
      # @param file_info cast=(GnomeVFSFileInfo *)
      # @param mime_type cast=(const char *)
      # @param flags cast=(GnomeIconLookupFlags)
      # @param result cast=(GnomeIconLookupResultFlags *)
      # 
      # int
      # int
      # int
      # int
      def __gnome_icon_lookup(icon_theme, thumbnail_factory, file_uri, custom_icon, file_info, mime_type, flags, result)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1icon_1lookup, JNI.env, self.jni_id, icon_theme.to_int, thumbnail_factory.to_int, file_uri.jni_id, custom_icon.jni_id, file_info.to_int, mime_type.jni_id, flags.to_int, result.jni_id)
      end
      
      typesig { [::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # int
      # int
      # int
      # int
      def gnome_icon_lookup(icon_theme, thumbnail_factory, file_uri, custom_icon, file_info, mime_type, flags, result)
        PLATFORM_LOCK.lock
        begin
          return __gnome_icon_lookup(icon_theme, thumbnail_factory, file_uri, custom_icon, file_info, mime_type, flags, result)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1icon_1theme_1lookup_1icon, [:pointer, :long, :int64, :int64, :int32, :long, :long], :int64
      typesig { [::Java::Long, ::Java::Long, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # @param theme cast=(GnomeIconTheme *)
      # @param icon_name cast=(const char *)
      # @param icon_data cast=(const GnomeIconData **)
      # 
      # int
      # int
      # int
      # int
      def __gnome_icon_theme_lookup_icon(theme, icon_name, size, icon_data, base_size)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1icon_1theme_1lookup_1icon, JNI.env, self.jni_id, theme.to_int, icon_name.to_int, size.to_int, icon_data.jni_id, base_size.jni_id)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # int
      # int
      # int
      # int
      def gnome_icon_theme_lookup_icon(theme, icon_name, size, icon_data, base_size)
        PLATFORM_LOCK.lock
        begin
          return __gnome_icon_theme_lookup_icon(theme, icon_name, size, icon_data, base_size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1icon_1theme_1new, [:pointer, :long], :int64
      typesig { [] }
      # int
      def __gnome_icon_theme_new
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1icon_1theme_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # int
      def gnome_icon_theme_new
        PLATFORM_LOCK.lock
        begin
          return __gnome_icon_theme_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1get_1registered_1mime_1types, [:pointer, :long], :int64
      typesig { [] }
      # int
      def __gnome_vfs_get_registered_mime_types
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1get_1registered_1mime_1types, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # int
      def gnome_vfs_get_registered_mime_types
        PLATFORM_LOCK.lock
        begin
          return __gnome_vfs_get_registered_mime_types
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1init, [:pointer, :long], :int8
      typesig { [] }
      def __gnome_vfs_init
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1init, JNI.env, self.jni_id) != 0
      end
      
      typesig { [] }
      def gnome_vfs_init
        PLATFORM_LOCK.lock
        begin
          return __gnome_vfs_init
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1make_1uri_1from_1input, [:pointer, :long, :long], :int64
      typesig { [Array.typed(::Java::Byte)] }
      # @param uri cast=(const char *)
      # int
      def __gnome_vfs_make_uri_from_input(uri)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1make_1uri_1from_1input, JNI.env, self.jni_id, uri.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # int
      def gnome_vfs_make_uri_from_input(uri)
        PLATFORM_LOCK.lock
        begin
          return __gnome_vfs_make_uri_from_input(uri)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1make_1uri_1from_1input_1with_1dirs, [:pointer, :long, :long, :int32], :int64
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # @method flags=dynamic
      # @param uri cast=(const char *)
      # 
      # int
      def __gnome_vfs_make_uri_from_input_with_dirs(uri, dirs)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1make_1uri_1from_1input_1with_1dirs, JNI.env, self.jni_id, uri.jni_id, dirs.to_int)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # int
      def gnome_vfs_make_uri_from_input_with_dirs(uri, dirs)
        PLATFORM_LOCK.lock
        begin
          return __gnome_vfs_make_uri_from_input_with_dirs(uri, dirs)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1application_1free, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param application cast=(GnomeVFSMimeApplication *)
      # int
      def __gnome_vfs_mime_application_free(application)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1application_1free, JNI.env, self.jni_id, application.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def gnome_vfs_mime_application_free(application)
        PLATFORM_LOCK.lock
        begin
          __gnome_vfs_mime_application_free(application)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1application_1launch, [:pointer, :long, :int64, :int64], :int32
      typesig { [::Java::Long, ::Java::Long] }
      # @method flags=dynamic
      # @param application cast=(GnomeVFSMimeApplication *)
      # @param uris cast=(GList *)
      # 
      # int
      # int
      def __gnome_vfs_mime_application_launch(application, uris)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1application_1launch, JNI.env, self.jni_id, application.to_int, uris.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      def gnome_vfs_mime_application_launch(application, uris)
        PLATFORM_LOCK.lock
        begin
          return __gnome_vfs_mime_application_launch(application, uris)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1extensions_1list_1free, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param list cast=(GList *)
      # int
      def __gnome_vfs_mime_extensions_list_free(list)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1extensions_1list_1free, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def gnome_vfs_mime_extensions_list_free(list)
        PLATFORM_LOCK.lock
        begin
          __gnome_vfs_mime_extensions_list_free(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1get_1default_1application, [:pointer, :long, :long], :int64
      typesig { [Array.typed(::Java::Byte)] }
      # @param mimeType cast=(const char *)
      # int
      def __gnome_vfs_mime_get_default_application(mime_type)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1get_1default_1application, JNI.env, self.jni_id, mime_type.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # int
      def gnome_vfs_mime_get_default_application(mime_type)
        PLATFORM_LOCK.lock
        begin
          return __gnome_vfs_mime_get_default_application(mime_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1get_1extensions_1list, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # @param mime_type cast=(const char *)
      # int
      # int
      def __gnome_vfs_mime_get_extensions_list(mime_type)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1get_1extensions_1list, JNI.env, self.jni_id, mime_type.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def gnome_vfs_mime_get_extensions_list(mime_type)
        PLATFORM_LOCK.lock
        begin
          return __gnome_vfs_mime_get_extensions_list(mime_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1registered_1mime_1type_1list_1free, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param list cast=(GList *)
      # int
      def __gnome_vfs_mime_registered_mime_type_list_free(list)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1registered_1mime_1type_1list_1free, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def gnome_vfs_mime_registered_mime_type_list_free(list)
        PLATFORM_LOCK.lock
        begin
          __gnome_vfs_mime_registered_mime_type_list_free(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1type_1from_1name, [:pointer, :long, :long], :int64
      typesig { [Array.typed(::Java::Byte)] }
      # @param file cast=(const char *)
      # int
      def __gnome_vfs_mime_type_from_name(file)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1mime_1type_1from_1name, JNI.env, self.jni_id, file.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # int
      def gnome_vfs_mime_type_from_name(file)
        PLATFORM_LOCK.lock
        begin
          return __gnome_vfs_mime_type_from_name(file)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1url_1show, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @method flags=dynamic
      # @param url cast=(const char *)
      # 
      # int
      def __gnome_vfs_url_show(url)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME__1gnome_1vfs_1url_1show, JNI.env, self.jni_id, url.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def gnome_vfs_url_show(url)
        PLATFORM_LOCK.lock
        begin
          return __gnome_vfs_url_show(url)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_gnome_GNOME_memmove, [:pointer, :long, :long, :int64, :int64], :void
      typesig { [GnomeVFSMimeApplication, ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *),flags=no_in
      # @param src cast=(const void *)
      # @param count cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, count)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_gnome_GNOME_memmove, JNI.env, self.jni_id, dest.jni_id, src.to_int, count.to_int)
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__gnome, :initialize
  end
  
end
