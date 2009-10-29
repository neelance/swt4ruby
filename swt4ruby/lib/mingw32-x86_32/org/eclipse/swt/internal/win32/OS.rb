require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module OSImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class OS < OSImports.const_get :C
    include_class_members OSImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt") # $NON-NLS-1$
      end
      
      const_set_lazy(:NO_MANIFEST) { "org.eclipse.swt.internal.win32.OS.NO_MANIFEST" }
      const_attr_reader  :NO_MANIFEST
      
      # Flags for Window API GetVersionEx()
      const_set_lazy(:VER_PLATFORM_WIN32s) { 0 }
      const_attr_reader  :VER_PLATFORM_WIN32s
      
      const_set_lazy(:VER_PLATFORM_WIN32_WINDOWS) { 1 }
      const_attr_reader  :VER_PLATFORM_WIN32_WINDOWS
      
      const_set_lazy(:VER_PLATFORM_WIN32_NT) { 2 }
      const_attr_reader  :VER_PLATFORM_WIN32_NT
      
      const_set_lazy(:VER_PLATFORM_WIN32_CE) { 3 }
      const_attr_reader  :VER_PLATFORM_WIN32_CE
      
      # Forward references
      const_set_lazy(:HEAP_ZERO_MEMORY) { 0x8 }
      const_attr_reader  :HEAP_ZERO_MEMORY
      
      const_set_lazy(:ACTCTX_FLAG_RESOURCE_NAME_VALID) { 0x8 }
      const_attr_reader  :ACTCTX_FLAG_RESOURCE_NAME_VALID
      
      const_set_lazy(:ACTCTX_FLAG_SET_PROCESS_DEFAULT) { 0x10 }
      const_attr_reader  :ACTCTX_FLAG_SET_PROCESS_DEFAULT
      
      const_set_lazy(:MANIFEST_RESOURCE_ID) { 2 }
      const_attr_reader  :MANIFEST_RESOURCE_ID
      
      const_set_lazy(:SM_DBCSENABLED) { 0x2a }
      const_attr_reader  :SM_DBCSENABLED
      
      const_set_lazy(:SM_IMMENABLED) { 0x52 }
      const_attr_reader  :SM_IMMENABLED
      
      const_set_lazy(:LANG_KOREAN) { 0x12 }
      const_attr_reader  :LANG_KOREAN
      
      const_set_lazy(:MAX_PATH) { 260 }
      const_attr_reader  :MAX_PATH
      
      # Get the Windows version and the flags
      when_class_loaded do
        # Try the UNICODE version of GetVersionEx first
        # and then the ANSI version.  The UNICODE version
        # is present on all versions of Windows but is not
        # implemented on Win95/98/ME.
        # 
        # NOTE: The value of OSVERSIONINFO.sizeof cannot
        # be static final because it relies on the Windows
        # platform version to be initialized and IsUnicode
        # has not been calculated.  It must be initialized
        # here, after the platform is determined in order
        # for the value to be correct.
        info = OSVERSIONINFOW.new
        info.attr_dw_osversion_info_size = OSVERSIONINFOW.attr_sizeof
        if (!OS._get_version_ex_w(info))
          info = OSVERSIONINFOA.new
          info.attr_dw_osversion_info_size = OSVERSIONINFOA.attr_sizeof
          OS._get_version_ex_a(info)
        end
        OSVERSIONINFO.attr_sizeof = info.attr_dw_osversion_info_size
        const_set :IsWin32s, (info.attr_dw_platform_id).equal?(VER_PLATFORM_WIN32s)
        const_set :IsWin95, (info.attr_dw_platform_id).equal?(VER_PLATFORM_WIN32_WINDOWS)
        const_set :IsWinNT, (info.attr_dw_platform_id).equal?(VER_PLATFORM_WIN32_NT)
        const_set :IsWinCE, (info.attr_dw_platform_id).equal?(VER_PLATFORM_WIN32_CE)
        const_set :IsSP, _is_sp
        const_set :IsPPC, _is_ppc
        const_set :IsHPC, IsWinCE && !IsPPC && !IsSP
        const_set :WIN32_MAJOR, info.attr_dw_major_version
        const_set :WIN32_MINOR, info.attr_dw_minor_version
        const_set :WIN32_VERSION, _version(WIN32_MAJOR, WIN32_MINOR)
        const_set :IsUnicode, !IsWin32s && !IsWin95
        # Load the manifest to force the XP Theme
        if ((System.get_property(NO_MANIFEST)).nil?)
          if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1))
            buffer = TCHAR.new(0, MAX_PATH)
            # long
            h_module = OS._get_library_handle
            while ((OS._get_module_file_name(h_module, buffer, buffer.length)).equal?(buffer.length))
              buffer = TCHAR.new(0, buffer.length + MAX_PATH)
            end
            # long
            h_heap = OS._get_process_heap
            byte_count = buffer.length * (OS::IsUnicode ? 2 : 1)
            # long
            psz_text = OS._heap_alloc(h_heap, HEAP_ZERO_MEMORY, byte_count)
            OS._move_memory(psz_text, buffer, byte_count)
            p_act_ctx = ACTCTX.new
            p_act_ctx.attr_cb_size = ACTCTX.attr_sizeof
            p_act_ctx.attr_dw_flags = ACTCTX_FLAG_RESOURCE_NAME_VALID | ACTCTX_FLAG_SET_PROCESS_DEFAULT
            p_act_ctx.attr_lp_source = psz_text
            p_act_ctx.attr_lp_resource_name = MANIFEST_RESOURCE_ID
            # long
            h_act_ctx = OS._create_act_ctx(p_act_ctx)
            if (!(psz_text).equal?(0))
              OS._heap_free(h_heap, 0, psz_text)
            end
            # long
            # long
            lp_cookie = Array.typed(::Java::Int).new(1) { 0 }
            OS._activate_act_ctx(h_act_ctx, lp_cookie)
            # NOTE:  A single activation context is created and activated
            # for the entire lifetime of the program.  It is deactivated
            # and released by Windows when the program exits.
          end
        end
        # Make the process DPI aware for Windows Vista
        if (OS::WIN32_VERSION >= OS._version(6, 0))
          OS._set_process_dpiaware
        end
        # Get the DBCS flag
        dbcs_enabled = !(OS._get_system_metrics(SM_DBCSENABLED)).equal?(0)
        imm_enabled = !(OS._get_system_metrics(SM_IMMENABLED)).equal?(0)
        const_set :IsDBLocale, dbcs_enabled || imm_enabled
        # Bug in Windows.  On Korean Windows XP when the Text
        # Services Framework support for legacy applications
        # is enabled, certain legacy calls segment fault.
        # For example, when ImmSetCompositionWindow() is used
        # to move the composition window outside of the client
        # area, Windows crashes.  The fix is to disable legacy
        # support.
        # 
        # Note: The bug is fixed in Service Pack 2.
        if (!OS::IsWinCE && (OS::WIN32_VERSION).equal?(OS._version(5, 1)))
          lang_id = OS._get_system_default_uilanguage
          primary_lang = OS._primarylangid(lang_id)
          if ((primary_lang).equal?(LANG_KOREAN))
            infoex = IsUnicode ? OSVERSIONINFOEXW.new : OSVERSIONINFOEXA.new
            infoex.attr_dw_osversion_info_size = OSVERSIONINFOEX.attr_sizeof
            _get_version_ex(infoex)
            if (infoex.attr_w_service_pack_major < 2)
              OS._imm_disable_text_frame_service(0)
            end
          end
        end
      end
      
      # Get the COMCTL32.DLL version
      when_class_loaded do
        dvi = DLLVERSIONINFO.new
        dvi.attr_cb_size = DLLVERSIONINFO.attr_sizeof
        dvi.attr_dw_major_version = 4
        dvi.attr_dw_minor_version = 0
        lp_lib_file_name = TCHAR.new(0, "comctl32.dll", true) # $NON-NLS-1$
        # long
        h_module = OS._load_library(lp_lib_file_name)
        if (!(h_module).equal?(0))
          name = "DllGetVersion\0" # $NON-NLS-1$
          lp_proc_name = Array.typed(::Java::Byte).new(name.length) { 0 }
          i = 0
          while i < lp_proc_name.attr_length
            lp_proc_name[i] = name.char_at(i)
            i += 1
          end
          # long
          dll_get_version = OS._get_proc_address(h_module, lp_proc_name)
          if (!(dll_get_version).equal?(0))
            OS._call___org_eclipse_swt_internal_win32_os_1(dll_get_version, dvi)
          end
          OS._free_library(h_module)
        end
        const_set :COMCTL32_MAJOR, dvi.attr_dw_major_version
        const_set :COMCTL32_MINOR, dvi.attr_dw_minor_version
        const_set :COMCTL32_VERSION, _version(COMCTL32_MAJOR, COMCTL32_MINOR)
      end
      
      # Get the Shell32.DLL version
      when_class_loaded do
        dvi = DLLVERSIONINFO.new
        dvi.attr_cb_size = DLLVERSIONINFO.attr_sizeof
        dvi.attr_dw_major_version = 4
        lp_lib_file_name = TCHAR.new(0, "Shell32.dll", true) # $NON-NLS-1$
        # long
        h_module = OS._load_library(lp_lib_file_name)
        if (!(h_module).equal?(0))
          name = "DllGetVersion\0" # $NON-NLS-1$
          lp_proc_name = Array.typed(::Java::Byte).new(name.length) { 0 }
          i = 0
          while i < lp_proc_name.attr_length
            lp_proc_name[i] = name.char_at(i)
            i += 1
          end
          # long
          dll_get_version = OS._get_proc_address(h_module, lp_proc_name)
          if (!(dll_get_version).equal?(0))
            OS._call___org_eclipse_swt_internal_win32_os_3(dll_get_version, dvi)
          end
          OS._free_library(h_module)
        end
        const_set :SHELL32_MAJOR, dvi.attr_dw_major_version
        const_set :SHELL32_MINOR, dvi.attr_dw_minor_version
        const_set :SHELL32_VERSION, _version(SHELL32_MAJOR, SHELL32_MINOR)
      end
      
      # Flag used on WinCE
      const_set_lazy(:SYS_COLOR_INDEX_FLAG) { OS::IsWinCE ? 0x40000000 : 0x0 }
      const_attr_reader  :SYS_COLOR_INDEX_FLAG
      
      # NOTE:  There is a bug in JVM 1.2 where loading
      # a class with a large number of constants causes
      # a segment fault to occur sometime later after
      # the class is loaded.  The fix is to break the
      # class up into a hierarchy of classes that each
      # contain a smaller number of constants.  This
      # fix is not necessary at this time but is required
      # when all constants are uncommented.  We have not
      # done the research to determine the limit.
      # 
      # Constants
      const_set_lazy(:ABS_DOWNDISABLED) { 8 }
      const_attr_reader  :ABS_DOWNDISABLED
      
      const_set_lazy(:ABS_DOWNHOT) { 6 }
      const_attr_reader  :ABS_DOWNHOT
      
      const_set_lazy(:ABS_DOWNNORMAL) { 5 }
      const_attr_reader  :ABS_DOWNNORMAL
      
      const_set_lazy(:ABS_DOWNPRESSED) { 7 }
      const_attr_reader  :ABS_DOWNPRESSED
      
      const_set_lazy(:ABS_LEFTDISABLED) { 12 }
      const_attr_reader  :ABS_LEFTDISABLED
      
      const_set_lazy(:ABS_LEFTHOT) { 10 }
      const_attr_reader  :ABS_LEFTHOT
      
      const_set_lazy(:ABS_LEFTNORMAL) { 9 }
      const_attr_reader  :ABS_LEFTNORMAL
      
      const_set_lazy(:ABS_LEFTPRESSED) { 11 }
      const_attr_reader  :ABS_LEFTPRESSED
      
      const_set_lazy(:ABS_RIGHTDISABLED) { 16 }
      const_attr_reader  :ABS_RIGHTDISABLED
      
      const_set_lazy(:ABS_RIGHTHOT) { 14 }
      const_attr_reader  :ABS_RIGHTHOT
      
      const_set_lazy(:ABS_RIGHTNORMAL) { 13 }
      const_attr_reader  :ABS_RIGHTNORMAL
      
      const_set_lazy(:ABS_RIGHTPRESSED) { 15 }
      const_attr_reader  :ABS_RIGHTPRESSED
      
      const_set_lazy(:ABS_UPDISABLED) { 4 }
      const_attr_reader  :ABS_UPDISABLED
      
      const_set_lazy(:ABS_UPHOT) { 2 }
      const_attr_reader  :ABS_UPHOT
      
      const_set_lazy(:ABS_UPNORMAL) { 1 }
      const_attr_reader  :ABS_UPNORMAL
      
      const_set_lazy(:ABS_UPPRESSED) { 3 }
      const_attr_reader  :ABS_UPPRESSED
      
      const_set_lazy(:AC_SRC_OVER) { 0 }
      const_attr_reader  :AC_SRC_OVER
      
      const_set_lazy(:AC_SRC_ALPHA) { 1 }
      const_attr_reader  :AC_SRC_ALPHA
      
      # public static final int ACTCTX_FLAG_RESOURCE_NAME_VALID = 0x00000008;
      # public static final int ACTCTX_FLAG_SET_PROCESS_DEFAULT = 0x00000010;
      const_set_lazy(:ALTERNATE) { 1 }
      const_attr_reader  :ALTERNATE
      
      const_set_lazy(:ASSOCF_NOTRUNCATE) { 0x20 }
      const_attr_reader  :ASSOCF_NOTRUNCATE
      
      const_set_lazy(:ASSOCF_INIT_IGNOREUNKNOWN) { 0x400 }
      const_attr_reader  :ASSOCF_INIT_IGNOREUNKNOWN
      
      const_set_lazy(:ASSOCSTR_COMMAND) { 1 }
      const_attr_reader  :ASSOCSTR_COMMAND
      
      const_set_lazy(:ASSOCSTR_DEFAULTICON) { 15 }
      const_attr_reader  :ASSOCSTR_DEFAULTICON
      
      const_set_lazy(:ASSOCSTR_FRIENDLYAPPNAME) { 4 }
      const_attr_reader  :ASSOCSTR_FRIENDLYAPPNAME
      
      const_set_lazy(:ASSOCSTR_FRIENDLYDOCNAME) { 3 }
      const_attr_reader  :ASSOCSTR_FRIENDLYDOCNAME
      
      const_set_lazy(:AW_SLIDE) { 0x40000 }
      const_attr_reader  :AW_SLIDE
      
      const_set_lazy(:AW_ACTIVATE) { 0x20000 }
      const_attr_reader  :AW_ACTIVATE
      
      const_set_lazy(:AW_BLEND) { 0x80000 }
      const_attr_reader  :AW_BLEND
      
      const_set_lazy(:AW_HIDE) { 0x10000 }
      const_attr_reader  :AW_HIDE
      
      const_set_lazy(:AW_CENTER) { 0x10 }
      const_attr_reader  :AW_CENTER
      
      const_set_lazy(:AW_HOR_POSITIVE) { 0x1 }
      const_attr_reader  :AW_HOR_POSITIVE
      
      const_set_lazy(:AW_HOR_NEGATIVE) { 0x2 }
      const_attr_reader  :AW_HOR_NEGATIVE
      
      const_set_lazy(:AW_VER_POSITIVE) { 0x4 }
      const_attr_reader  :AW_VER_POSITIVE
      
      const_set_lazy(:AW_VER_NEGATIVE) { 0x8 }
      const_attr_reader  :AW_VER_NEGATIVE
      
      const_set_lazy(:ATTR_INPUT) { 0x0 }
      const_attr_reader  :ATTR_INPUT
      
      const_set_lazy(:ATTR_TARGET_CONVERTED) { 0x1 }
      const_attr_reader  :ATTR_TARGET_CONVERTED
      
      const_set_lazy(:ATTR_CONVERTED) { 0x2 }
      const_attr_reader  :ATTR_CONVERTED
      
      const_set_lazy(:ATTR_TARGET_NOTCONVERTED) { 0x3 }
      const_attr_reader  :ATTR_TARGET_NOTCONVERTED
      
      const_set_lazy(:ATTR_INPUT_ERROR) { 0x4 }
      const_attr_reader  :ATTR_INPUT_ERROR
      
      const_set_lazy(:ATTR_FIXEDCONVERTED) { 0x5 }
      const_attr_reader  :ATTR_FIXEDCONVERTED
      
      const_set_lazy(:BCM_FIRST) { 0x1600 }
      const_attr_reader  :BCM_FIRST
      
      const_set_lazy(:BCM_GETIDEALSIZE) { BCM_FIRST + 0x1 }
      const_attr_reader  :BCM_GETIDEALSIZE
      
      const_set_lazy(:BCM_GETIMAGELIST) { BCM_FIRST + 0x3 }
      const_attr_reader  :BCM_GETIMAGELIST
      
      const_set_lazy(:BCM_GETNOTE) { BCM_FIRST + 0xa }
      const_attr_reader  :BCM_GETNOTE
      
      const_set_lazy(:BCM_GETNOTELENGTH) { BCM_FIRST + 0xb }
      const_attr_reader  :BCM_GETNOTELENGTH
      
      const_set_lazy(:BCM_SETIMAGELIST) { BCM_FIRST + 0x2 }
      const_attr_reader  :BCM_SETIMAGELIST
      
      const_set_lazy(:BCM_SETNOTE) { BCM_FIRST + 0x9 }
      const_attr_reader  :BCM_SETNOTE
      
      const_set_lazy(:BDR_RAISEDOUTER) { 0x1 }
      const_attr_reader  :BDR_RAISEDOUTER
      
      const_set_lazy(:BDR_SUNKENOUTER) { 0x2 }
      const_attr_reader  :BDR_SUNKENOUTER
      
      const_set_lazy(:BDR_RAISEDINNER) { 0x4 }
      const_attr_reader  :BDR_RAISEDINNER
      
      const_set_lazy(:BDR_SUNKENINNER) { 0x8 }
      const_attr_reader  :BDR_SUNKENINNER
      
      const_set_lazy(:BDR_OUTER) { 0x3 }
      const_attr_reader  :BDR_OUTER
      
      const_set_lazy(:BDR_INNER) { 0xc }
      const_attr_reader  :BDR_INNER
      
      const_set_lazy(:BDR_RAISED) { 0x5 }
      const_attr_reader  :BDR_RAISED
      
      const_set_lazy(:BDR_SUNKEN) { 0xa }
      const_attr_reader  :BDR_SUNKEN
      
      const_set_lazy(:BFFM_INITIALIZED) { 0x1 }
      const_attr_reader  :BFFM_INITIALIZED
      
      const_set_lazy(:BFFM_SETSELECTION) { IsUnicode ? 0x467 : 0x466 }
      const_attr_reader  :BFFM_SETSELECTION
      
      const_set_lazy(:BFFM_VALIDATEFAILED) { IsUnicode ? 0x4 : 0x3 }
      const_attr_reader  :BFFM_VALIDATEFAILED
      
      const_set_lazy(:BFFM_VALIDATEFAILEDW) { 0x4 }
      const_attr_reader  :BFFM_VALIDATEFAILEDW
      
      const_set_lazy(:BFFM_VALIDATEFAILEDA) { 0x3 }
      const_attr_reader  :BFFM_VALIDATEFAILEDA
      
      const_set_lazy(:BF_ADJUST) { 0x2000 }
      const_attr_reader  :BF_ADJUST
      
      const_set_lazy(:BF_LEFT) { 0x1 }
      const_attr_reader  :BF_LEFT
      
      const_set_lazy(:BF_TOP) { 0x2 }
      const_attr_reader  :BF_TOP
      
      const_set_lazy(:BF_RIGHT) { 0x4 }
      const_attr_reader  :BF_RIGHT
      
      const_set_lazy(:BF_BOTTOM) { 0x8 }
      const_attr_reader  :BF_BOTTOM
      
      const_set_lazy(:BF_RECT) { (BF_LEFT | BF_TOP | BF_RIGHT | BF_BOTTOM) }
      const_attr_reader  :BF_RECT
      
      const_set_lazy(:BIF_EDITBOX) { 0x10 }
      const_attr_reader  :BIF_EDITBOX
      
      const_set_lazy(:BIF_NEWDIALOGSTYLE) { 0x40 }
      const_attr_reader  :BIF_NEWDIALOGSTYLE
      
      const_set_lazy(:BIF_RETURNONLYFSDIRS) { 0x1 }
      const_attr_reader  :BIF_RETURNONLYFSDIRS
      
      const_set_lazy(:BIF_VALIDATE) { 0x20 }
      const_attr_reader  :BIF_VALIDATE
      
      const_set_lazy(:BITSPIXEL) { 0xc }
      const_attr_reader  :BITSPIXEL
      
      const_set_lazy(:BI_BITFIELDS) { 3 }
      const_attr_reader  :BI_BITFIELDS
      
      const_set_lazy(:BI_RGB) { 0 }
      const_attr_reader  :BI_RGB
      
      const_set_lazy(:BLACKNESS) { 0x42 }
      const_attr_reader  :BLACKNESS
      
      const_set_lazy(:BLACK_BRUSH) { 4 }
      const_attr_reader  :BLACK_BRUSH
      
      const_set_lazy(:BUTTON_IMAGELIST_ALIGN_LEFT) { 0 }
      const_attr_reader  :BUTTON_IMAGELIST_ALIGN_LEFT
      
      const_set_lazy(:BUTTON_IMAGELIST_ALIGN_RIGHT) { 1 }
      const_attr_reader  :BUTTON_IMAGELIST_ALIGN_RIGHT
      
      const_set_lazy(:BUTTON_IMAGELIST_ALIGN_CENTER) { 4 }
      const_attr_reader  :BUTTON_IMAGELIST_ALIGN_CENTER
      
      const_set_lazy(:BM_CLICK) { 0xf5 }
      const_attr_reader  :BM_CLICK
      
      const_set_lazy(:BM_GETCHECK) { 0xf0 }
      const_attr_reader  :BM_GETCHECK
      
      const_set_lazy(:BM_SETCHECK) { 0xf1 }
      const_attr_reader  :BM_SETCHECK
      
      const_set_lazy(:BM_SETIMAGE) { 0xf7 }
      const_attr_reader  :BM_SETIMAGE
      
      const_set_lazy(:BM_SETSTYLE) { 0xf4 }
      const_attr_reader  :BM_SETSTYLE
      
      const_set_lazy(:BN_CLICKED) { 0x0 }
      const_attr_reader  :BN_CLICKED
      
      const_set_lazy(:BN_DOUBLECLICKED) { 0x5 }
      const_attr_reader  :BN_DOUBLECLICKED
      
      const_set_lazy(:BPBF_COMPATIBLEBITMAP) { 0 }
      const_attr_reader  :BPBF_COMPATIBLEBITMAP
      
      const_set_lazy(:BPBF_DIB) { 1 }
      const_attr_reader  :BPBF_DIB
      
      const_set_lazy(:BPBF_TOPDOWNDIB) { 2 }
      const_attr_reader  :BPBF_TOPDOWNDIB
      
      const_set_lazy(:BPBF_TOPDOWNMONODIB) { 3 }
      const_attr_reader  :BPBF_TOPDOWNMONODIB
      
      const_set_lazy(:BPPF_ERASE) { 0x1 }
      const_attr_reader  :BPPF_ERASE
      
      const_set_lazy(:BPPF_NOCLIP) { 0x2 }
      const_attr_reader  :BPPF_NOCLIP
      
      const_set_lazy(:BPPF_NONCLIENT) { 0x4 }
      const_attr_reader  :BPPF_NONCLIENT
      
      const_set_lazy(:BP_PUSHBUTTON) { 1 }
      const_attr_reader  :BP_PUSHBUTTON
      
      const_set_lazy(:BP_RADIOBUTTON) { 2 }
      const_attr_reader  :BP_RADIOBUTTON
      
      const_set_lazy(:BP_CHECKBOX) { 3 }
      const_attr_reader  :BP_CHECKBOX
      
      const_set_lazy(:BP_GROUPBOX) { 4 }
      const_attr_reader  :BP_GROUPBOX
      
      const_set_lazy(:BST_CHECKED) { 0x1 }
      const_attr_reader  :BST_CHECKED
      
      const_set_lazy(:BST_INDETERMINATE) { 0x2 }
      const_attr_reader  :BST_INDETERMINATE
      
      const_set_lazy(:BST_UNCHECKED) { 0x0 }
      const_attr_reader  :BST_UNCHECKED
      
      const_set_lazy(:BS_3STATE) { 0x5 }
      const_attr_reader  :BS_3STATE
      
      const_set_lazy(:BS_BITMAP) { 0x80 }
      const_attr_reader  :BS_BITMAP
      
      const_set_lazy(:BS_CENTER) { 0x300 }
      const_attr_reader  :BS_CENTER
      
      const_set_lazy(:BS_CHECKBOX) { 0x2 }
      const_attr_reader  :BS_CHECKBOX
      
      const_set_lazy(:BS_COMMANDLINK) { 0xe }
      const_attr_reader  :BS_COMMANDLINK
      
      const_set_lazy(:BS_DEFPUSHBUTTON) { 0x1 }
      const_attr_reader  :BS_DEFPUSHBUTTON
      
      const_set_lazy(:BS_FLAT) { 0x8000 }
      const_attr_reader  :BS_FLAT
      
      const_set_lazy(:BS_GROUPBOX) { 0x7 }
      const_attr_reader  :BS_GROUPBOX
      
      const_set_lazy(:BS_ICON) { 0x40 }
      const_attr_reader  :BS_ICON
      
      const_set_lazy(:BS_LEFT) { 0x100 }
      const_attr_reader  :BS_LEFT
      
      const_set_lazy(:BS_NOTIFY) { 0x4000 }
      const_attr_reader  :BS_NOTIFY
      
      const_set_lazy(:BS_OWNERDRAW) { 0xb }
      const_attr_reader  :BS_OWNERDRAW
      
      const_set_lazy(:BS_PATTERN) { 0x3 }
      const_attr_reader  :BS_PATTERN
      
      const_set_lazy(:BS_PUSHBUTTON) { 0x0 }
      const_attr_reader  :BS_PUSHBUTTON
      
      const_set_lazy(:BS_PUSHLIKE) { 0x1000 }
      const_attr_reader  :BS_PUSHLIKE
      
      const_set_lazy(:BS_RADIOBUTTON) { 0x4 }
      const_attr_reader  :BS_RADIOBUTTON
      
      const_set_lazy(:BS_RIGHT) { 0x200 }
      const_attr_reader  :BS_RIGHT
      
      const_set_lazy(:BS_SOLID) { 0x0 }
      const_attr_reader  :BS_SOLID
      
      const_set_lazy(:BTNS_AUTOSIZE) { 0x10 }
      const_attr_reader  :BTNS_AUTOSIZE
      
      const_set_lazy(:BTNS_BUTTON) { 0x0 }
      const_attr_reader  :BTNS_BUTTON
      
      const_set_lazy(:BTNS_CHECK) { 0x2 }
      const_attr_reader  :BTNS_CHECK
      
      const_set_lazy(:BTNS_CHECKGROUP) { 0x6 }
      const_attr_reader  :BTNS_CHECKGROUP
      
      const_set_lazy(:BTNS_DROPDOWN) { 0x8 }
      const_attr_reader  :BTNS_DROPDOWN
      
      const_set_lazy(:BTNS_GROUP) { 0x4 }
      const_attr_reader  :BTNS_GROUP
      
      const_set_lazy(:BTNS_SEP) { 0x1 }
      const_attr_reader  :BTNS_SEP
      
      const_set_lazy(:BTNS_SHOWTEXT) { 0x40 }
      const_attr_reader  :BTNS_SHOWTEXT
      
      const_set_lazy(:CBN_EDITCHANGE) { 0x5 }
      const_attr_reader  :CBN_EDITCHANGE
      
      const_set_lazy(:CBN_KILLFOCUS) { 0x4 }
      const_attr_reader  :CBN_KILLFOCUS
      
      const_set_lazy(:CBN_SELCHANGE) { 0x1 }
      const_attr_reader  :CBN_SELCHANGE
      
      const_set_lazy(:CBN_SETFOCUS) { 0x3 }
      const_attr_reader  :CBN_SETFOCUS
      
      const_set_lazy(:CBS_AUTOHSCROLL) { 0x40 }
      const_attr_reader  :CBS_AUTOHSCROLL
      
      const_set_lazy(:CBS_DROPDOWN) { 0x2 }
      const_attr_reader  :CBS_DROPDOWN
      
      const_set_lazy(:CBS_DROPDOWNLIST) { 0x3 }
      const_attr_reader  :CBS_DROPDOWNLIST
      
      const_set_lazy(:CBS_CHECKEDNORMAL) { 5 }
      const_attr_reader  :CBS_CHECKEDNORMAL
      
      const_set_lazy(:CBS_MIXEDNORMAL) { 9 }
      const_attr_reader  :CBS_MIXEDNORMAL
      
      const_set_lazy(:CBS_NOINTEGRALHEIGHT) { 0x400 }
      const_attr_reader  :CBS_NOINTEGRALHEIGHT
      
      const_set_lazy(:CBS_SIMPLE) { 0x1 }
      const_attr_reader  :CBS_SIMPLE
      
      const_set_lazy(:CBS_UNCHECKEDNORMAL) { 1 }
      const_attr_reader  :CBS_UNCHECKEDNORMAL
      
      const_set_lazy(:CBS_CHECKEDDISABLED) { 8 }
      const_attr_reader  :CBS_CHECKEDDISABLED
      
      const_set_lazy(:CBS_CHECKEDHOT) { 6 }
      const_attr_reader  :CBS_CHECKEDHOT
      
      const_set_lazy(:CBS_CHECKEDPRESSED) { 7 }
      const_attr_reader  :CBS_CHECKEDPRESSED
      
      const_set_lazy(:CBS_MIXEDDISABLED) { 0 }
      const_attr_reader  :CBS_MIXEDDISABLED
      
      const_set_lazy(:CBS_MIXEDHOT) { 0 }
      const_attr_reader  :CBS_MIXEDHOT
      
      const_set_lazy(:CBS_MIXEDPRESSED) { 0 }
      const_attr_reader  :CBS_MIXEDPRESSED
      
      const_set_lazy(:CBS_UNCHECKEDDISABLED) { 4 }
      const_attr_reader  :CBS_UNCHECKEDDISABLED
      
      const_set_lazy(:CBS_UNCHECKEDHOT) { 2 }
      const_attr_reader  :CBS_UNCHECKEDHOT
      
      const_set_lazy(:CBS_UNCHECKEDPRESSED) { 3 }
      const_attr_reader  :CBS_UNCHECKEDPRESSED
      
      const_set_lazy(:CB_ADDSTRING) { 0x143 }
      const_attr_reader  :CB_ADDSTRING
      
      const_set_lazy(:CB_DELETESTRING) { 0x144 }
      const_attr_reader  :CB_DELETESTRING
      
      const_set_lazy(:CB_ERR) { -0x1 }
      const_attr_reader  :CB_ERR
      
      const_set_lazy(:CB_ERRSPACE) { -0x2 }
      const_attr_reader  :CB_ERRSPACE
      
      const_set_lazy(:CB_FINDSTRINGEXACT) { 0x158 }
      const_attr_reader  :CB_FINDSTRINGEXACT
      
      const_set_lazy(:CB_GETCOUNT) { 0x146 }
      const_attr_reader  :CB_GETCOUNT
      
      const_set_lazy(:CB_GETCURSEL) { 0x147 }
      const_attr_reader  :CB_GETCURSEL
      
      const_set_lazy(:CB_GETDROPPEDCONTROLRECT) { 0x152 }
      const_attr_reader  :CB_GETDROPPEDCONTROLRECT
      
      const_set_lazy(:CB_GETDROPPEDSTATE) { 0x157 }
      const_attr_reader  :CB_GETDROPPEDSTATE
      
      const_set_lazy(:CB_GETDROPPEDWIDTH) { 0x15f }
      const_attr_reader  :CB_GETDROPPEDWIDTH
      
      const_set_lazy(:CB_GETEDITSEL) { 0x140 }
      const_attr_reader  :CB_GETEDITSEL
      
      const_set_lazy(:CB_GETHORIZONTALEXTENT) { 0x15d }
      const_attr_reader  :CB_GETHORIZONTALEXTENT
      
      const_set_lazy(:CB_GETITEMHEIGHT) { 0x154 }
      const_attr_reader  :CB_GETITEMHEIGHT
      
      const_set_lazy(:CB_GETLBTEXT) { 0x148 }
      const_attr_reader  :CB_GETLBTEXT
      
      const_set_lazy(:CB_GETLBTEXTLEN) { 0x149 }
      const_attr_reader  :CB_GETLBTEXTLEN
      
      const_set_lazy(:CB_INSERTSTRING) { 0x14a }
      const_attr_reader  :CB_INSERTSTRING
      
      const_set_lazy(:CB_LIMITTEXT) { 0x141 }
      const_attr_reader  :CB_LIMITTEXT
      
      const_set_lazy(:CB_RESETCONTENT) { 0x14b }
      const_attr_reader  :CB_RESETCONTENT
      
      const_set_lazy(:CB_SELECTSTRING) { 0x14d }
      const_attr_reader  :CB_SELECTSTRING
      
      const_set_lazy(:CB_SETCURSEL) { 0x14e }
      const_attr_reader  :CB_SETCURSEL
      
      const_set_lazy(:CB_SETDROPPEDWIDTH) { 0x160 }
      const_attr_reader  :CB_SETDROPPEDWIDTH
      
      const_set_lazy(:CB_SETEDITSEL) { 0x142 }
      const_attr_reader  :CB_SETEDITSEL
      
      const_set_lazy(:CB_SETHORIZONTALEXTENT) { 0x15e }
      const_attr_reader  :CB_SETHORIZONTALEXTENT
      
      const_set_lazy(:CB_SETITEMHEIGHT) { 0x153 }
      const_attr_reader  :CB_SETITEMHEIGHT
      
      const_set_lazy(:CB_SHOWDROPDOWN) { 0x14f }
      const_attr_reader  :CB_SHOWDROPDOWN
      
      const_set_lazy(:CBXS_NORMAL) { 1 }
      const_attr_reader  :CBXS_NORMAL
      
      const_set_lazy(:CBXS_HOT) { 2 }
      const_attr_reader  :CBXS_HOT
      
      const_set_lazy(:CBXS_PRESSED) { 3 }
      const_attr_reader  :CBXS_PRESSED
      
      const_set_lazy(:CBXS_DISABLED) { 4 }
      const_attr_reader  :CBXS_DISABLED
      
      const_set_lazy(:CCHDEVICENAME) { 32 }
      const_attr_reader  :CCHDEVICENAME
      
      const_set_lazy(:CCHFORMNAME) { 32 }
      const_attr_reader  :CCHFORMNAME
      
      const_set_lazy(:CCHILDREN_SCROLLBAR) { 5 }
      const_attr_reader  :CCHILDREN_SCROLLBAR
      
      const_set_lazy(:CCM_FIRST) { 0x2000 }
      const_attr_reader  :CCM_FIRST
      
      const_set_lazy(:CCM_SETBKCOLOR) { 0x2001 }
      const_attr_reader  :CCM_SETBKCOLOR
      
      const_set_lazy(:CCM_SETVERSION) { 0x2007 }
      const_attr_reader  :CCM_SETVERSION
      
      const_set_lazy(:CCS_NODIVIDER) { 0x40 }
      const_attr_reader  :CCS_NODIVIDER
      
      const_set_lazy(:CCS_NORESIZE) { 0x4 }
      const_attr_reader  :CCS_NORESIZE
      
      const_set_lazy(:CCS_VERT) { 0x80 }
      const_attr_reader  :CCS_VERT
      
      const_set_lazy(:CC_ANYCOLOR) { 0x100 }
      const_attr_reader  :CC_ANYCOLOR
      
      const_set_lazy(:CC_ENABLEHOOK) { 0x10 }
      const_attr_reader  :CC_ENABLEHOOK
      
      const_set_lazy(:CC_FULLOPEN) { 0x2 }
      const_attr_reader  :CC_FULLOPEN
      
      const_set_lazy(:CC_RGBINIT) { 0x1 }
      const_attr_reader  :CC_RGBINIT
      
      const_set_lazy(:CDDS_POSTERASE) { 0x4 }
      const_attr_reader  :CDDS_POSTERASE
      
      const_set_lazy(:CDDS_POSTPAINT) { 0x2 }
      const_attr_reader  :CDDS_POSTPAINT
      
      const_set_lazy(:CDDS_PREERASE) { 0x3 }
      const_attr_reader  :CDDS_PREERASE
      
      const_set_lazy(:CDDS_PREPAINT) { 0x1 }
      const_attr_reader  :CDDS_PREPAINT
      
      const_set_lazy(:CDDS_ITEM) { 0x10000 }
      const_attr_reader  :CDDS_ITEM
      
      const_set_lazy(:CDDS_ITEMPOSTPAINT) { CDDS_ITEM | CDDS_POSTPAINT }
      const_attr_reader  :CDDS_ITEMPOSTPAINT
      
      const_set_lazy(:CDDS_ITEMPREPAINT) { CDDS_ITEM | CDDS_PREPAINT }
      const_attr_reader  :CDDS_ITEMPREPAINT
      
      const_set_lazy(:CDDS_SUBITEM) { 0x20000 }
      const_attr_reader  :CDDS_SUBITEM
      
      const_set_lazy(:CDDS_SUBITEMPOSTPAINT) { CDDS_ITEMPOSTPAINT | CDDS_SUBITEM }
      const_attr_reader  :CDDS_SUBITEMPOSTPAINT
      
      const_set_lazy(:CDDS_SUBITEMPREPAINT) { CDDS_ITEMPREPAINT | CDDS_SUBITEM }
      const_attr_reader  :CDDS_SUBITEMPREPAINT
      
      const_set_lazy(:CDIS_SELECTED) { 0x1 }
      const_attr_reader  :CDIS_SELECTED
      
      const_set_lazy(:CDIS_GRAYED) { 0x2 }
      const_attr_reader  :CDIS_GRAYED
      
      const_set_lazy(:CDIS_DISABLED) { 0x4 }
      const_attr_reader  :CDIS_DISABLED
      
      const_set_lazy(:CDIS_CHECKED) { 0x8 }
      const_attr_reader  :CDIS_CHECKED
      
      const_set_lazy(:CDIS_FOCUS) { 0x10 }
      const_attr_reader  :CDIS_FOCUS
      
      const_set_lazy(:CDIS_DEFAULT) { 0x20 }
      const_attr_reader  :CDIS_DEFAULT
      
      const_set_lazy(:CDIS_HOT) { 0x40 }
      const_attr_reader  :CDIS_HOT
      
      const_set_lazy(:CDIS_MARKED) { 0x80 }
      const_attr_reader  :CDIS_MARKED
      
      const_set_lazy(:CDIS_INDETERMINATE) { 0x100 }
      const_attr_reader  :CDIS_INDETERMINATE
      
      const_set_lazy(:CDM_FIRST) { 0x400 + 100 }
      const_attr_reader  :CDM_FIRST
      
      const_set_lazy(:CDM_GETSPEC) { CDM_FIRST }
      const_attr_reader  :CDM_GETSPEC
      
      const_set_lazy(:CDN_FIRST) { -601 }
      const_attr_reader  :CDN_FIRST
      
      const_set_lazy(:CDN_SELCHANGE) { CDN_FIRST - 1 }
      const_attr_reader  :CDN_SELCHANGE
      
      const_set_lazy(:CDRF_DODEFAULT) { 0x0 }
      const_attr_reader  :CDRF_DODEFAULT
      
      const_set_lazy(:CDRF_DOERASE) { 0x8 }
      const_attr_reader  :CDRF_DOERASE
      
      const_set_lazy(:CDRF_NEWFONT) { 0x2 }
      const_attr_reader  :CDRF_NEWFONT
      
      const_set_lazy(:CDRF_NOTIFYITEMDRAW) { 0x20 }
      const_attr_reader  :CDRF_NOTIFYITEMDRAW
      
      const_set_lazy(:CDRF_NOTIFYPOSTERASE) { 0x40 }
      const_attr_reader  :CDRF_NOTIFYPOSTERASE
      
      const_set_lazy(:CDRF_NOTIFYPOSTPAINT) { 0x10 }
      const_attr_reader  :CDRF_NOTIFYPOSTPAINT
      
      const_set_lazy(:CDRF_NOTIFYSUBITEMDRAW) { 0x20 }
      const_attr_reader  :CDRF_NOTIFYSUBITEMDRAW
      
      const_set_lazy(:CDRF_SKIPDEFAULT) { 0x4 }
      const_attr_reader  :CDRF_SKIPDEFAULT
      
      const_set_lazy(:CDRF_SKIPPOSTPAINT) { 0x100 }
      const_attr_reader  :CDRF_SKIPPOSTPAINT
      
      const_set_lazy(:CFE_AUTOCOLOR) { 0x40000000 }
      const_attr_reader  :CFE_AUTOCOLOR
      
      const_set_lazy(:CFE_ITALIC) { 0x2 }
      const_attr_reader  :CFE_ITALIC
      
      const_set_lazy(:CFE_STRIKEOUT) { 0x8 }
      const_attr_reader  :CFE_STRIKEOUT
      
      const_set_lazy(:CFE_UNDERLINE) { 0x4 }
      const_attr_reader  :CFE_UNDERLINE
      
      const_set_lazy(:CFM_BOLD) { 0x1 }
      const_attr_reader  :CFM_BOLD
      
      const_set_lazy(:CFM_CHARSET) { 0x8000000 }
      const_attr_reader  :CFM_CHARSET
      
      const_set_lazy(:CFM_COLOR) { 0x40000000 }
      const_attr_reader  :CFM_COLOR
      
      const_set_lazy(:CFM_FACE) { 0x20000000 }
      const_attr_reader  :CFM_FACE
      
      const_set_lazy(:CFM_ITALIC) { 0x2 }
      const_attr_reader  :CFM_ITALIC
      
      const_set_lazy(:CFM_SIZE) { -0x80000000 }
      const_attr_reader  :CFM_SIZE
      
      const_set_lazy(:CFM_STRIKEOUT) { 0x8 }
      const_attr_reader  :CFM_STRIKEOUT
      
      const_set_lazy(:CFM_UNDERLINE) { 0x4 }
      const_attr_reader  :CFM_UNDERLINE
      
      const_set_lazy(:CFM_WEIGHT) { 0x400000 }
      const_attr_reader  :CFM_WEIGHT
      
      const_set_lazy(:CFS_POINT) { 0x2 }
      const_attr_reader  :CFS_POINT
      
      const_set_lazy(:CFS_RECT) { 0x1 }
      const_attr_reader  :CFS_RECT
      
      const_set_lazy(:CFS_CANDIDATEPOS) { 0x40 }
      const_attr_reader  :CFS_CANDIDATEPOS
      
      const_set_lazy(:CFS_EXCLUDE) { 0x80 }
      const_attr_reader  :CFS_EXCLUDE
      
      const_set_lazy(:CF_EFFECTS) { 0x100 }
      const_attr_reader  :CF_EFFECTS
      
      const_set_lazy(:CF_INITTOLOGFONTSTRUCT) { 0x40 }
      const_attr_reader  :CF_INITTOLOGFONTSTRUCT
      
      const_set_lazy(:CF_SCREENFONTS) { 0x1 }
      const_attr_reader  :CF_SCREENFONTS
      
      const_set_lazy(:CF_TEXT) { 0x1 }
      const_attr_reader  :CF_TEXT
      
      const_set_lazy(:CF_UNICODETEXT) { 13 }
      const_attr_reader  :CF_UNICODETEXT
      
      const_set_lazy(:CF_USESTYLE) { 0x80 }
      const_attr_reader  :CF_USESTYLE
      
      const_set_lazy(:CLR_DEFAULT) { -0x1000000 }
      const_attr_reader  :CLR_DEFAULT
      
      const_set_lazy(:CLR_INVALID) { -0x1 }
      const_attr_reader  :CLR_INVALID
      
      const_set_lazy(:CLR_NONE) { -0x1 }
      const_attr_reader  :CLR_NONE
      
      const_set_lazy(:CLSCTX_INPROC_SERVER) { 1 }
      const_attr_reader  :CLSCTX_INPROC_SERVER
      
      const_set_lazy(:COLORONCOLOR) { 0x3 }
      const_attr_reader  :COLORONCOLOR
      
      const_set_lazy(:COLOR_3DDKSHADOW) { 0x15 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_3DDKSHADOW
      
      const_set_lazy(:COLOR_3DFACE) { 0xf | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_3DFACE
      
      const_set_lazy(:COLOR_3DHIGHLIGHT) { 0x14 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_3DHIGHLIGHT
      
      const_set_lazy(:COLOR_3DHILIGHT) { 0x14 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_3DHILIGHT
      
      const_set_lazy(:COLOR_3DLIGHT) { 0x16 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_3DLIGHT
      
      const_set_lazy(:COLOR_3DSHADOW) { 0x10 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_3DSHADOW
      
      const_set_lazy(:COLOR_ACTIVECAPTION) { 0x2 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_ACTIVECAPTION
      
      const_set_lazy(:COLOR_BTNFACE) { 0xf | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_BTNFACE
      
      const_set_lazy(:COLOR_BTNHIGHLIGHT) { 0x14 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_BTNHIGHLIGHT
      
      const_set_lazy(:COLOR_BTNSHADOW) { 0x10 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_BTNSHADOW
      
      const_set_lazy(:COLOR_BTNTEXT) { 0x12 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_BTNTEXT
      
      const_set_lazy(:COLOR_CAPTIONTEXT) { 0x9 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_CAPTIONTEXT
      
      const_set_lazy(:COLOR_GRADIENTACTIVECAPTION) { 0x1b | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_GRADIENTACTIVECAPTION
      
      const_set_lazy(:COLOR_GRADIENTINACTIVECAPTION) { 0x1c | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_GRADIENTINACTIVECAPTION
      
      const_set_lazy(:COLOR_GRAYTEXT) { 0x11 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_GRAYTEXT
      
      const_set_lazy(:COLOR_HIGHLIGHT) { 0xd | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_HIGHLIGHT
      
      const_set_lazy(:COLOR_HIGHLIGHTTEXT) { 0xe | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_HIGHLIGHTTEXT
      
      const_set_lazy(:COLOR_HOTLIGHT) { 26 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_HOTLIGHT
      
      const_set_lazy(:COLOR_INACTIVECAPTION) { 0x3 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_INACTIVECAPTION
      
      const_set_lazy(:COLOR_INACTIVECAPTIONTEXT) { 0x13 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_INACTIVECAPTIONTEXT
      
      const_set_lazy(:COLOR_INFOBK) { 0x18 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_INFOBK
      
      const_set_lazy(:COLOR_INFOTEXT) { 0x17 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_INFOTEXT
      
      const_set_lazy(:COLOR_MENU) { 0x4 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_MENU
      
      const_set_lazy(:COLOR_MENUTEXT) { 0x7 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_MENUTEXT
      
      const_set_lazy(:COLOR_SCROLLBAR) { 0x0 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_SCROLLBAR
      
      const_set_lazy(:COLOR_WINDOW) { 0x5 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_WINDOW
      
      const_set_lazy(:COLOR_WINDOWFRAME) { 0x6 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_WINDOWFRAME
      
      const_set_lazy(:COLOR_WINDOWTEXT) { 0x8 | SYS_COLOR_INDEX_FLAG }
      const_attr_reader  :COLOR_WINDOWTEXT
      
      const_set_lazy(:COMPLEXREGION) { 0x3 }
      const_attr_reader  :COMPLEXREGION
      
      const_set_lazy(:CP_ACP) { 0x0 }
      const_attr_reader  :CP_ACP
      
      const_set_lazy(:CP_UTF8) { 65001 }
      const_attr_reader  :CP_UTF8
      
      const_set_lazy(:CP_DROPDOWNBUTTON) { 1 }
      const_attr_reader  :CP_DROPDOWNBUTTON
      
      const_set_lazy(:CP_INSTALLED) { 0x1 }
      const_attr_reader  :CP_INSTALLED
      
      const_set_lazy(:CPS_COMPLETE) { 0x1 }
      const_attr_reader  :CPS_COMPLETE
      
      const_set_lazy(:CS_BYTEALIGNWINDOW) { 0x2000 }
      const_attr_reader  :CS_BYTEALIGNWINDOW
      
      const_set_lazy(:CS_DBLCLKS) { 0x8 }
      const_attr_reader  :CS_DBLCLKS
      
      const_set_lazy(:CS_DROPSHADOW) { 0x20000 }
      const_attr_reader  :CS_DROPSHADOW
      
      const_set_lazy(:CS_GLOBALCLASS) { 0x4000 }
      const_attr_reader  :CS_GLOBALCLASS
      
      const_set_lazy(:CS_HREDRAW) { 0x2 }
      const_attr_reader  :CS_HREDRAW
      
      const_set_lazy(:CS_VREDRAW) { 0x1 }
      const_attr_reader  :CS_VREDRAW
      
      const_set_lazy(:CS_OWNDC) { 0x20 }
      const_attr_reader  :CS_OWNDC
      
      const_set_lazy(:CW_USEDEFAULT) { -0x80000000 }
      const_attr_reader  :CW_USEDEFAULT
      
      const_set_lazy(:DATETIMEPICK_CLASS) { "SysDateTimePick32" }
      const_attr_reader  :DATETIMEPICK_CLASS
      
      # $NON-NLS-1$
      const_set_lazy(:DATE_LONGDATE) { 0x2 }
      const_attr_reader  :DATE_LONGDATE
      
      const_set_lazy(:DATE_SHORTDATE) { 0x1 }
      const_attr_reader  :DATE_SHORTDATE
      
      const_set_lazy(:DATE_YEARMONTH) { 0x8 }
      const_attr_reader  :DATE_YEARMONTH
      
      # #if(WINVER >= 0x0500)
      const_set_lazy(:DCX_CACHE) { 0x2 }
      const_attr_reader  :DCX_CACHE
      
      const_set_lazy(:DCX_CLIPCHILDREN) { 0x8 }
      const_attr_reader  :DCX_CLIPCHILDREN
      
      const_set_lazy(:DCX_CLIPSIBLINGS) { 0x10 }
      const_attr_reader  :DCX_CLIPSIBLINGS
      
      const_set_lazy(:DCX_INTERSECTRGN) { 0x80 }
      const_attr_reader  :DCX_INTERSECTRGN
      
      const_set_lazy(:DCX_WINDOW) { 0x1 }
      const_attr_reader  :DCX_WINDOW
      
      const_set_lazy(:DEFAULT_CHARSET) { 0x1 }
      const_attr_reader  :DEFAULT_CHARSET
      
      const_set_lazy(:DEFAULT_GUI_FONT) { 0x11 }
      const_attr_reader  :DEFAULT_GUI_FONT
      
      const_set_lazy(:DFCS_BUTTONCHECK) { 0x0 }
      const_attr_reader  :DFCS_BUTTONCHECK
      
      const_set_lazy(:DFCS_CHECKED) { 0x400 }
      const_attr_reader  :DFCS_CHECKED
      
      const_set_lazy(:DFCS_FLAT) { 0x4000 }
      const_attr_reader  :DFCS_FLAT
      
      const_set_lazy(:DFCS_INACTIVE) { 0x100 }
      const_attr_reader  :DFCS_INACTIVE
      
      const_set_lazy(:DFCS_PUSHED) { 0x200 }
      const_attr_reader  :DFCS_PUSHED
      
      const_set_lazy(:DFCS_SCROLLDOWN) { 0x1 }
      const_attr_reader  :DFCS_SCROLLDOWN
      
      const_set_lazy(:DFCS_SCROLLLEFT) { 0x2 }
      const_attr_reader  :DFCS_SCROLLLEFT
      
      const_set_lazy(:DFCS_SCROLLRIGHT) { 0x3 }
      const_attr_reader  :DFCS_SCROLLRIGHT
      
      const_set_lazy(:DFCS_SCROLLUP) { 0x0 }
      const_attr_reader  :DFCS_SCROLLUP
      
      const_set_lazy(:DFC_BUTTON) { 0x4 }
      const_attr_reader  :DFC_BUTTON
      
      const_set_lazy(:DFC_SCROLL) { 0x3 }
      const_attr_reader  :DFC_SCROLL
      
      const_set_lazy(:DIB_RGB_COLORS) { 0x0 }
      const_attr_reader  :DIB_RGB_COLORS
      
      const_set_lazy(:DISP_E_EXCEPTION) { -0x7ffdfff7 }
      const_attr_reader  :DISP_E_EXCEPTION
      
      const_set_lazy(:DI_NORMAL) { 0x3 }
      const_attr_reader  :DI_NORMAL
      
      const_set_lazy(:DI_NOMIRROR) { 0x10 }
      const_attr_reader  :DI_NOMIRROR
      
      const_set_lazy(:DLGC_BUTTON) { 0x2000 }
      const_attr_reader  :DLGC_BUTTON
      
      const_set_lazy(:DLGC_HASSETSEL) { 0x8 }
      const_attr_reader  :DLGC_HASSETSEL
      
      const_set_lazy(:DLGC_STATIC) { 0x100 }
      const_attr_reader  :DLGC_STATIC
      
      const_set_lazy(:DLGC_WANTALLKEYS) { 0x4 }
      const_attr_reader  :DLGC_WANTALLKEYS
      
      const_set_lazy(:DLGC_WANTARROWS) { 0x1 }
      const_attr_reader  :DLGC_WANTARROWS
      
      const_set_lazy(:DLGC_WANTCHARS) { 0x80 }
      const_attr_reader  :DLGC_WANTCHARS
      
      const_set_lazy(:DLGC_WANTTAB) { 0x2 }
      const_attr_reader  :DLGC_WANTTAB
      
      const_set_lazy(:DMCOLLATE_FALSE) { 0 }
      const_attr_reader  :DMCOLLATE_FALSE
      
      const_set_lazy(:DMCOLLATE_TRUE) { 1 }
      const_attr_reader  :DMCOLLATE_TRUE
      
      const_set_lazy(:DM_SETDEFID) { 0x401 }
      const_attr_reader  :DM_SETDEFID
      
      const_set_lazy(:DM_COLLATE) { 0x8000 }
      const_attr_reader  :DM_COLLATE
      
      const_set_lazy(:DM_COPIES) { 0x100 }
      const_attr_reader  :DM_COPIES
      
      const_set_lazy(:DM_ORIENTATION) { 0x1 }
      const_attr_reader  :DM_ORIENTATION
      
      const_set_lazy(:DMORIENT_PORTRAIT) { 1 }
      const_attr_reader  :DMORIENT_PORTRAIT
      
      const_set_lazy(:DMORIENT_LANDSCAPE) { 2 }
      const_attr_reader  :DMORIENT_LANDSCAPE
      
      const_set_lazy(:DSS_DISABLED) { 0x20 }
      const_attr_reader  :DSS_DISABLED
      
      const_set_lazy(:DSTINVERT) { 0x550009 }
      const_attr_reader  :DSTINVERT
      
      const_set_lazy(:DST_BITMAP) { 0x4 }
      const_attr_reader  :DST_BITMAP
      
      const_set_lazy(:DST_ICON) { 0x3 }
      const_attr_reader  :DST_ICON
      
      const_set_lazy(:DT_BOTTOM) { 0x8 }
      const_attr_reader  :DT_BOTTOM
      
      const_set_lazy(:DT_CALCRECT) { 0x400 }
      const_attr_reader  :DT_CALCRECT
      
      const_set_lazy(:DT_CENTER) { 0x1 }
      const_attr_reader  :DT_CENTER
      
      const_set_lazy(:DT_EDITCONTROL) { 0x2000 }
      const_attr_reader  :DT_EDITCONTROL
      
      const_set_lazy(:DT_EXPANDTABS) { 0x40 }
      const_attr_reader  :DT_EXPANDTABS
      
      const_set_lazy(:DT_ENDELLIPSIS) { 32768 }
      const_attr_reader  :DT_ENDELLIPSIS
      
      const_set_lazy(:DT_HIDEPREFIX) { 0x100000 }
      const_attr_reader  :DT_HIDEPREFIX
      
      const_set_lazy(:DT_LEFT) { 0x0 }
      const_attr_reader  :DT_LEFT
      
      const_set_lazy(:DT_NOPREFIX) { 0x800 }
      const_attr_reader  :DT_NOPREFIX
      
      const_set_lazy(:DT_RASPRINTER) { 0x2 }
      const_attr_reader  :DT_RASPRINTER
      
      const_set_lazy(:DT_RIGHT) { 0x2 }
      const_attr_reader  :DT_RIGHT
      
      const_set_lazy(:DT_RTLREADING) { 0x20000 }
      const_attr_reader  :DT_RTLREADING
      
      const_set_lazy(:DT_SINGLELINE) { 0x20 }
      const_attr_reader  :DT_SINGLELINE
      
      const_set_lazy(:DT_TOP) { 0 }
      const_attr_reader  :DT_TOP
      
      const_set_lazy(:DT_VCENTER) { 4 }
      const_attr_reader  :DT_VCENTER
      
      const_set_lazy(:DT_WORDBREAK) { 0x10 }
      const_attr_reader  :DT_WORDBREAK
      
      const_set_lazy(:DTM_FIRST) { 0x1000 }
      const_attr_reader  :DTM_FIRST
      
      const_set_lazy(:DTM_GETSYSTEMTIME) { DTM_FIRST + 1 }
      const_attr_reader  :DTM_GETSYSTEMTIME
      
      const_set_lazy(:DTM_SETFORMAT) { IsUnicode ? DTM_FIRST + 50 : DTM_FIRST + 5 }
      const_attr_reader  :DTM_SETFORMAT
      
      const_set_lazy(:DTM_SETSYSTEMTIME) { DTM_FIRST + 2 }
      const_attr_reader  :DTM_SETSYSTEMTIME
      
      const_set_lazy(:DTN_FIRST) { -0x2f8 }
      const_attr_reader  :DTN_FIRST
      
      const_set_lazy(:DTN_DATETIMECHANGE) { DTN_FIRST + 1 }
      const_attr_reader  :DTN_DATETIMECHANGE
      
      const_set_lazy(:DTN_CLOSEUP) { DTN_FIRST + 7 }
      const_attr_reader  :DTN_CLOSEUP
      
      const_set_lazy(:DTN_DROPDOWN) { DTN_FIRST + 6 }
      const_attr_reader  :DTN_DROPDOWN
      
      const_set_lazy(:DTS_LONGDATEFORMAT) { 0x4 }
      const_attr_reader  :DTS_LONGDATEFORMAT
      
      const_set_lazy(:DTS_SHORTDATECENTURYFORMAT) { 0xc }
      const_attr_reader  :DTS_SHORTDATECENTURYFORMAT
      
      const_set_lazy(:DTS_SHORTDATEFORMAT) { 0x0 }
      const_attr_reader  :DTS_SHORTDATEFORMAT
      
      const_set_lazy(:DTS_TIMEFORMAT) { 0x9 }
      const_attr_reader  :DTS_TIMEFORMAT
      
      const_set_lazy(:DTS_UPDOWN) { 0x1 }
      const_attr_reader  :DTS_UPDOWN
      
      const_set_lazy(:DWM_BB_ENABLE) { 0x1 }
      const_attr_reader  :DWM_BB_ENABLE
      
      const_set_lazy(:DWM_BB_BLURREGION) { 0x2 }
      const_attr_reader  :DWM_BB_BLURREGION
      
      const_set_lazy(:DWM_BB_TRANSITIONONMAXIMIZED) { 0x4 }
      const_attr_reader  :DWM_BB_TRANSITIONONMAXIMIZED
      
      const_set_lazy(:E_POINTER) { -0x7fffbffd }
      const_attr_reader  :E_POINTER
      
      const_set_lazy(:EBP_NORMALGROUPBACKGROUND) { 5 }
      const_attr_reader  :EBP_NORMALGROUPBACKGROUND
      
      const_set_lazy(:EBP_NORMALGROUPCOLLAPSE) { 6 }
      const_attr_reader  :EBP_NORMALGROUPCOLLAPSE
      
      const_set_lazy(:EBP_NORMALGROUPEXPAND) { 7 }
      const_attr_reader  :EBP_NORMALGROUPEXPAND
      
      const_set_lazy(:EBP_NORMALGROUPHEAD) { 8 }
      const_attr_reader  :EBP_NORMALGROUPHEAD
      
      const_set_lazy(:EBNGC_NORMAL) { 1 }
      const_attr_reader  :EBNGC_NORMAL
      
      const_set_lazy(:EBNGC_HOT) { 2 }
      const_attr_reader  :EBNGC_HOT
      
      const_set_lazy(:EBNGC_PRESSED) { 3 }
      const_attr_reader  :EBNGC_PRESSED
      
      const_set_lazy(:EBP_HEADERBACKGROUND) { 1 }
      const_attr_reader  :EBP_HEADERBACKGROUND
      
      const_set_lazy(:EC_LEFTMARGIN) { 0x1 }
      const_attr_reader  :EC_LEFTMARGIN
      
      const_set_lazy(:EC_RIGHTMARGIN) { 0x2 }
      const_attr_reader  :EC_RIGHTMARGIN
      
      const_set_lazy(:ECOOP_AND) { 0x3 }
      const_attr_reader  :ECOOP_AND
      
      const_set_lazy(:ECOOP_OR) { 0x2 }
      const_attr_reader  :ECOOP_OR
      
      const_set_lazy(:ECO_AUTOHSCROLL) { 0x80 }
      const_attr_reader  :ECO_AUTOHSCROLL
      
      const_set_lazy(:EDGE_RAISED) { (BDR_RAISEDOUTER | BDR_RAISEDINNER) }
      const_attr_reader  :EDGE_RAISED
      
      const_set_lazy(:EDGE_SUNKEN) { (BDR_SUNKENOUTER | BDR_SUNKENINNER) }
      const_attr_reader  :EDGE_SUNKEN
      
      const_set_lazy(:EDGE_ETCHED) { (BDR_SUNKENOUTER | BDR_RAISEDINNER) }
      const_attr_reader  :EDGE_ETCHED
      
      const_set_lazy(:EDGE_BUMP) { (BDR_RAISEDOUTER | BDR_SUNKENINNER) }
      const_attr_reader  :EDGE_BUMP
      
      const_set_lazy(:ELF_VENDOR_SIZE) { 4 }
      const_attr_reader  :ELF_VENDOR_SIZE
      
      const_set_lazy(:EM_CANUNDO) { 0xc6 }
      const_attr_reader  :EM_CANUNDO
      
      const_set_lazy(:EM_CHARFROMPOS) { 0xd7 }
      const_attr_reader  :EM_CHARFROMPOS
      
      const_set_lazy(:EM_DISPLAYBAND) { 0x433 }
      const_attr_reader  :EM_DISPLAYBAND
      
      const_set_lazy(:EM_GETFIRSTVISIBLELINE) { 0xce }
      const_attr_reader  :EM_GETFIRSTVISIBLELINE
      
      const_set_lazy(:EM_GETLIMITTEXT) { 0xd5 }
      const_attr_reader  :EM_GETLIMITTEXT
      
      const_set_lazy(:EM_GETLINE) { 0xc4 }
      const_attr_reader  :EM_GETLINE
      
      const_set_lazy(:EM_GETLINECOUNT) { 0xba }
      const_attr_reader  :EM_GETLINECOUNT
      
      const_set_lazy(:EM_GETMARGINS) { 0xd4 }
      const_attr_reader  :EM_GETMARGINS
      
      const_set_lazy(:EM_GETPASSWORDCHAR) { 0xd2 }
      const_attr_reader  :EM_GETPASSWORDCHAR
      
      const_set_lazy(:EM_GETSCROLLPOS) { 0x4dd }
      const_attr_reader  :EM_GETSCROLLPOS
      
      const_set_lazy(:EM_GETSEL) { 0xb0 }
      const_attr_reader  :EM_GETSEL
      
      const_set_lazy(:EM_LIMITTEXT) { 0xc5 }
      const_attr_reader  :EM_LIMITTEXT
      
      const_set_lazy(:EM_LINEFROMCHAR) { 0xc9 }
      const_attr_reader  :EM_LINEFROMCHAR
      
      const_set_lazy(:EM_LINEINDEX) { 0xbb }
      const_attr_reader  :EM_LINEINDEX
      
      const_set_lazy(:EM_LINELENGTH) { 0xc1 }
      const_attr_reader  :EM_LINELENGTH
      
      const_set_lazy(:EM_LINESCROLL) { 0xb6 }
      const_attr_reader  :EM_LINESCROLL
      
      const_set_lazy(:EM_POSFROMCHAR) { 0xd6 }
      const_attr_reader  :EM_POSFROMCHAR
      
      const_set_lazy(:EM_REPLACESEL) { 0xc2 }
      const_attr_reader  :EM_REPLACESEL
      
      const_set_lazy(:EM_SCROLLCARET) { 0xb7 }
      const_attr_reader  :EM_SCROLLCARET
      
      const_set_lazy(:EM_SETBKGNDCOLOR) { 0x443 }
      const_attr_reader  :EM_SETBKGNDCOLOR
      
      const_set_lazy(:EM_SETLIMITTEXT) { 0xc5 }
      const_attr_reader  :EM_SETLIMITTEXT
      
      const_set_lazy(:EM_SETMARGINS) { 211 }
      const_attr_reader  :EM_SETMARGINS
      
      const_set_lazy(:EM_SETOPTIONS) { 0x44d }
      const_attr_reader  :EM_SETOPTIONS
      
      const_set_lazy(:EM_SETPARAFORMAT) { 0x447 }
      const_attr_reader  :EM_SETPARAFORMAT
      
      const_set_lazy(:EM_SETPASSWORDCHAR) { 0xcc }
      const_attr_reader  :EM_SETPASSWORDCHAR
      
      const_set_lazy(:EM_SETCUEBANNER) { 0x1500 + 1 }
      const_attr_reader  :EM_SETCUEBANNER
      
      const_set_lazy(:EM_SETREADONLY) { 0xcf }
      const_attr_reader  :EM_SETREADONLY
      
      const_set_lazy(:EM_SETRECT) { 0xb3 }
      const_attr_reader  :EM_SETRECT
      
      const_set_lazy(:EM_SETSEL) { 0xb1 }
      const_attr_reader  :EM_SETSEL
      
      const_set_lazy(:EM_SETTABSTOPS) { 0xcb }
      const_attr_reader  :EM_SETTABSTOPS
      
      const_set_lazy(:EM_UNDO) { 199 }
      const_attr_reader  :EM_UNDO
      
      const_set_lazy(:EMR_EXTCREATEFONTINDIRECTW) { 82 }
      const_attr_reader  :EMR_EXTCREATEFONTINDIRECTW
      
      const_set_lazy(:EMR_EXTTEXTOUTW) { 84 }
      const_attr_reader  :EMR_EXTTEXTOUTW
      
      const_set_lazy(:EN_ALIGN_LTR_EC) { 0x700 }
      const_attr_reader  :EN_ALIGN_LTR_EC
      
      const_set_lazy(:EN_ALIGN_RTL_EC) { 0x701 }
      const_attr_reader  :EN_ALIGN_RTL_EC
      
      const_set_lazy(:EN_CHANGE) { 0x300 }
      const_attr_reader  :EN_CHANGE
      
      const_set_lazy(:EP_EDITTEXT) { 1 }
      const_attr_reader  :EP_EDITTEXT
      
      const_set_lazy(:ERROR_NO_MORE_ITEMS) { 0x103 }
      const_attr_reader  :ERROR_NO_MORE_ITEMS
      
      const_set_lazy(:ESB_DISABLE_BOTH) { 0x3 }
      const_attr_reader  :ESB_DISABLE_BOTH
      
      const_set_lazy(:ESB_ENABLE_BOTH) { 0x0 }
      const_attr_reader  :ESB_ENABLE_BOTH
      
      const_set_lazy(:ES_AUTOHSCROLL) { 0x80 }
      const_attr_reader  :ES_AUTOHSCROLL
      
      const_set_lazy(:ES_AUTOVSCROLL) { 0x40 }
      const_attr_reader  :ES_AUTOVSCROLL
      
      const_set_lazy(:ES_CENTER) { 0x1 }
      const_attr_reader  :ES_CENTER
      
      const_set_lazy(:ES_MULTILINE) { 0x4 }
      const_attr_reader  :ES_MULTILINE
      
      const_set_lazy(:ES_NOHIDESEL) { 0x100 }
      const_attr_reader  :ES_NOHIDESEL
      
      const_set_lazy(:ES_PASSWORD) { 0x20 }
      const_attr_reader  :ES_PASSWORD
      
      const_set_lazy(:ES_READONLY) { 0x800 }
      const_attr_reader  :ES_READONLY
      
      const_set_lazy(:ES_RIGHT) { 0x2 }
      const_attr_reader  :ES_RIGHT
      
      const_set_lazy(:ETO_CLIPPED) { 0x4 }
      const_attr_reader  :ETO_CLIPPED
      
      const_set_lazy(:ETS_NORMAL) { 1 }
      const_attr_reader  :ETS_NORMAL
      
      const_set_lazy(:ETS_HOT) { 2 }
      const_attr_reader  :ETS_HOT
      
      const_set_lazy(:ETS_SELECTED) { 3 }
      const_attr_reader  :ETS_SELECTED
      
      const_set_lazy(:ETS_DISABLED) { 4 }
      const_attr_reader  :ETS_DISABLED
      
      const_set_lazy(:ETS_FOCUSED) { 5 }
      const_attr_reader  :ETS_FOCUSED
      
      const_set_lazy(:ETS_READONLY) { 6 }
      const_attr_reader  :ETS_READONLY
      
      const_set_lazy(:EVENT_OBJECT_FOCUS) { 0x8005 }
      const_attr_reader  :EVENT_OBJECT_FOCUS
      
      const_set_lazy(:EVENT_OBJECT_LOCATIONCHANGE) { 0x800b }
      const_attr_reader  :EVENT_OBJECT_LOCATIONCHANGE
      
      # public static final int EVENT_OBJECT_SELECTION = 0x8006;
      const_set_lazy(:EVENT_OBJECT_SELECTIONWITHIN) { 0x8009 }
      const_attr_reader  :EVENT_OBJECT_SELECTIONWITHIN
      
      # public static final int EVENT_OBJECT_STATECHANGE = 0x800A;
      const_set_lazy(:EVENT_OBJECT_VALUECHANGE) { 0x800e }
      const_attr_reader  :EVENT_OBJECT_VALUECHANGE
      
      const_set_lazy(:FALT) { 0x10 }
      const_attr_reader  :FALT
      
      const_set_lazy(:FCONTROL) { 0x8 }
      const_attr_reader  :FCONTROL
      
      const_set_lazy(:FE_FONTSMOOTHINGCLEARTYPE) { 0x2 }
      const_attr_reader  :FE_FONTSMOOTHINGCLEARTYPE
      
      const_set_lazy(:FEATURE_DISABLE_NAVIGATION_SOUNDS) { 21 }
      const_attr_reader  :FEATURE_DISABLE_NAVIGATION_SOUNDS
      
      const_set_lazy(:FILE_ATTRIBUTE_NORMAL) { 0x80 }
      const_attr_reader  :FILE_ATTRIBUTE_NORMAL
      
      const_set_lazy(:FNERR_INVALIDFILENAME) { 0x3002 }
      const_attr_reader  :FNERR_INVALIDFILENAME
      
      const_set_lazy(:FNERR_BUFFERTOOSMALL) { 0x3003 }
      const_attr_reader  :FNERR_BUFFERTOOSMALL
      
      const_set_lazy(:FORMAT_MESSAGE_ALLOCATE_BUFFER) { 0x100 }
      const_attr_reader  :FORMAT_MESSAGE_ALLOCATE_BUFFER
      
      const_set_lazy(:FORMAT_MESSAGE_FROM_SYSTEM) { 0x1000 }
      const_attr_reader  :FORMAT_MESSAGE_FROM_SYSTEM
      
      const_set_lazy(:FORMAT_MESSAGE_IGNORE_INSERTS) { 0x200 }
      const_attr_reader  :FORMAT_MESSAGE_IGNORE_INSERTS
      
      const_set_lazy(:FR_PRIVATE) { 0x10 }
      const_attr_reader  :FR_PRIVATE
      
      const_set_lazy(:FSHIFT) { 0x4 }
      const_attr_reader  :FSHIFT
      
      const_set_lazy(:FVIRTKEY) { 0x1 }
      const_attr_reader  :FVIRTKEY
      
      const_set_lazy(:GBS_NORMAL) { 1 }
      const_attr_reader  :GBS_NORMAL
      
      const_set_lazy(:GBS_DISABLED) { 2 }
      const_attr_reader  :GBS_DISABLED
      
      const_set_lazy(:GCP_REORDER) { 0x2 }
      const_attr_reader  :GCP_REORDER
      
      const_set_lazy(:GCP_GLYPHSHAPE) { 0x10 }
      const_attr_reader  :GCP_GLYPHSHAPE
      
      const_set_lazy(:GCP_CLASSIN) { 0x80000 }
      const_attr_reader  :GCP_CLASSIN
      
      const_set_lazy(:GCP_LIGATE) { 0x20 }
      const_attr_reader  :GCP_LIGATE
      
      const_set_lazy(:GCS_COMPSTR) { 0x8 }
      const_attr_reader  :GCS_COMPSTR
      
      const_set_lazy(:GCS_RESULTSTR) { 0x800 }
      const_attr_reader  :GCS_RESULTSTR
      
      const_set_lazy(:GCS_COMPATTR) { 0x10 }
      const_attr_reader  :GCS_COMPATTR
      
      const_set_lazy(:GCS_COMPCLAUSE) { 0x20 }
      const_attr_reader  :GCS_COMPCLAUSE
      
      const_set_lazy(:GCS_CURSORPOS) { 0x80 }
      const_attr_reader  :GCS_CURSORPOS
      
      const_set_lazy(:GDT_VALID) { 0 }
      const_attr_reader  :GDT_VALID
      
      const_set_lazy(:GET_FEATURE_FROM_PROCESS) { 0x2 }
      const_attr_reader  :GET_FEATURE_FROM_PROCESS
      
      const_set_lazy(:GLPS_CLOSED) { 1 }
      const_attr_reader  :GLPS_CLOSED
      
      const_set_lazy(:GLPS_OPENED) { 2 }
      const_attr_reader  :GLPS_OPENED
      
      const_set_lazy(:GM_ADVANCED) { 2 }
      const_attr_reader  :GM_ADVANCED
      
      const_set_lazy(:GMDI_USEDISABLED) { 0x1 }
      const_attr_reader  :GMDI_USEDISABLED
      
      const_set_lazy(:GMEM_FIXED) { 0x0 }
      const_attr_reader  :GMEM_FIXED
      
      const_set_lazy(:GMEM_ZEROINIT) { 0x40 }
      const_attr_reader  :GMEM_ZEROINIT
      
      const_set_lazy(:GN_CONTEXTMENU) { 1000 }
      const_attr_reader  :GN_CONTEXTMENU
      
      const_set_lazy(:GPTR) { 0x40 }
      const_attr_reader  :GPTR
      
      const_set_lazy(:GRADIENT_FILL_RECT_H) { 0x0 }
      const_attr_reader  :GRADIENT_FILL_RECT_H
      
      const_set_lazy(:GRADIENT_FILL_RECT_V) { 0x1 }
      const_attr_reader  :GRADIENT_FILL_RECT_V
      
      const_set_lazy(:GTL_NUMBYTES) { 0x10 }
      const_attr_reader  :GTL_NUMBYTES
      
      const_set_lazy(:GTL_NUMCHARS) { 0x8 }
      const_attr_reader  :GTL_NUMCHARS
      
      const_set_lazy(:GTL_PRECISE) { 0x2 }
      const_attr_reader  :GTL_PRECISE
      
      const_set_lazy(:GT_DEFAULT) { 0x0 }
      const_attr_reader  :GT_DEFAULT
      
      const_set_lazy(:GUI_16BITTASK) { 0x20 }
      const_attr_reader  :GUI_16BITTASK
      
      const_set_lazy(:GUI_CARETBLINKING) { 0x1 }
      const_attr_reader  :GUI_CARETBLINKING
      
      const_set_lazy(:GUI_INMENUMODE) { 0x4 }
      const_attr_reader  :GUI_INMENUMODE
      
      const_set_lazy(:GUI_INMOVESIZE) { 0x2 }
      const_attr_reader  :GUI_INMOVESIZE
      
      const_set_lazy(:GUI_POPUPMENUMODE) { 0x10 }
      const_attr_reader  :GUI_POPUPMENUMODE
      
      const_set_lazy(:GUI_SYSTEMMENUMODE) { 0x8 }
      const_attr_reader  :GUI_SYSTEMMENUMODE
      
      const_set_lazy(:GWL_EXSTYLE) { -0x14 }
      const_attr_reader  :GWL_EXSTYLE
      
      const_set_lazy(:GWL_ID) { -12 }
      const_attr_reader  :GWL_ID
      
      const_set_lazy(:GWL_HWNDPARENT) { -8 }
      const_attr_reader  :GWL_HWNDPARENT
      
      const_set_lazy(:GWL_STYLE) { -0x10 }
      const_attr_reader  :GWL_STYLE
      
      const_set_lazy(:GWL_USERDATA) { -0x15 }
      const_attr_reader  :GWL_USERDATA
      
      const_set_lazy(:GWL_WNDPROC) { -0x4 }
      const_attr_reader  :GWL_WNDPROC
      
      const_set_lazy(:GWLP_ID) { -12 }
      const_attr_reader  :GWLP_ID
      
      const_set_lazy(:GWLP_HWNDPARENT) { -8 }
      const_attr_reader  :GWLP_HWNDPARENT
      
      const_set_lazy(:GWLP_USERDATA) { -0x15 }
      const_attr_reader  :GWLP_USERDATA
      
      const_set_lazy(:GWLP_WNDPROC) { -0x4 }
      const_attr_reader  :GWLP_WNDPROC
      
      const_set_lazy(:GW_CHILD) { 0x5 }
      const_attr_reader  :GW_CHILD
      
      const_set_lazy(:GW_HWNDFIRST) { 0x0 }
      const_attr_reader  :GW_HWNDFIRST
      
      const_set_lazy(:GW_HWNDLAST) { 0x1 }
      const_attr_reader  :GW_HWNDLAST
      
      const_set_lazy(:GW_HWNDNEXT) { 0x2 }
      const_attr_reader  :GW_HWNDNEXT
      
      const_set_lazy(:GW_HWNDPREV) { 0x3 }
      const_attr_reader  :GW_HWNDPREV
      
      const_set_lazy(:GW_OWNER) { 0x4 }
      const_attr_reader  :GW_OWNER
      
      const_set_lazy(:HBMMENU_CALLBACK) { -0x1 }
      const_attr_reader  :HBMMENU_CALLBACK
      
      const_set_lazy(:HCBT_CREATEWND) { 3 }
      const_attr_reader  :HCBT_CREATEWND
      
      const_set_lazy(:HCF_HIGHCONTRASTON) { 0x1 }
      const_attr_reader  :HCF_HIGHCONTRASTON
      
      const_set_lazy(:HDF_BITMAP) { 0x2000 }
      const_attr_reader  :HDF_BITMAP
      
      const_set_lazy(:HDF_BITMAP_ON_RIGHT) { 0x1000 }
      const_attr_reader  :HDF_BITMAP_ON_RIGHT
      
      const_set_lazy(:HDF_CENTER) { 2 }
      const_attr_reader  :HDF_CENTER
      
      const_set_lazy(:HDF_JUSTIFYMASK) { 0x3 }
      const_attr_reader  :HDF_JUSTIFYMASK
      
      const_set_lazy(:HDF_IMAGE) { 0x800 }
      const_attr_reader  :HDF_IMAGE
      
      const_set_lazy(:HDF_LEFT) { 0 }
      const_attr_reader  :HDF_LEFT
      
      const_set_lazy(:HDF_RIGHT) { 1 }
      const_attr_reader  :HDF_RIGHT
      
      const_set_lazy(:HDF_SORTUP) { 0x400 }
      const_attr_reader  :HDF_SORTUP
      
      const_set_lazy(:HDF_SORTDOWN) { 0x200 }
      const_attr_reader  :HDF_SORTDOWN
      
      const_set_lazy(:HDI_BITMAP) { 0x10 }
      const_attr_reader  :HDI_BITMAP
      
      const_set_lazy(:HDI_IMAGE) { 32 }
      const_attr_reader  :HDI_IMAGE
      
      const_set_lazy(:HDI_ORDER) { 0x80 }
      const_attr_reader  :HDI_ORDER
      
      const_set_lazy(:HDI_TEXT) { 0x2 }
      const_attr_reader  :HDI_TEXT
      
      const_set_lazy(:HDI_WIDTH) { 0x1 }
      const_attr_reader  :HDI_WIDTH
      
      const_set_lazy(:HDI_FORMAT) { 0x4 }
      const_attr_reader  :HDI_FORMAT
      
      const_set_lazy(:HDM_FIRST) { 0x1200 }
      const_attr_reader  :HDM_FIRST
      
      const_set_lazy(:HDM_DELETEITEM) { HDM_FIRST + 2 }
      const_attr_reader  :HDM_DELETEITEM
      
      const_set_lazy(:HDM_GETBITMAPMARGIN) { HDM_FIRST + 21 }
      const_attr_reader  :HDM_GETBITMAPMARGIN
      
      const_set_lazy(:HDM_GETITEMCOUNT) { 0x1200 }
      const_attr_reader  :HDM_GETITEMCOUNT
      
      const_set_lazy(:HDM_GETITEMA) { HDM_FIRST + 3 }
      const_attr_reader  :HDM_GETITEMA
      
      const_set_lazy(:HDM_GETITEMW) { HDM_FIRST + 11 }
      const_attr_reader  :HDM_GETITEMW
      
      const_set_lazy(:HDM_GETITEM) { IsUnicode ? HDM_GETITEMW : HDM_GETITEMA }
      const_attr_reader  :HDM_GETITEM
      
      const_set_lazy(:HDM_GETITEMRECT) { HDM_FIRST + 7 }
      const_attr_reader  :HDM_GETITEMRECT
      
      const_set_lazy(:HDM_GETORDERARRAY) { HDM_FIRST + 17 }
      const_attr_reader  :HDM_GETORDERARRAY
      
      const_set_lazy(:HDM_HITTEST) { HDM_FIRST + 6 }
      const_attr_reader  :HDM_HITTEST
      
      const_set_lazy(:HDM_INSERTITEMA) { HDM_FIRST + 1 }
      const_attr_reader  :HDM_INSERTITEMA
      
      const_set_lazy(:HDM_INSERTITEMW) { HDM_FIRST + 10 }
      const_attr_reader  :HDM_INSERTITEMW
      
      const_set_lazy(:HDM_INSERTITEM) { IsUnicode ? HDM_INSERTITEMW : HDM_INSERTITEMA }
      const_attr_reader  :HDM_INSERTITEM
      
      const_set_lazy(:HDM_LAYOUT) { HDM_FIRST + 5 }
      const_attr_reader  :HDM_LAYOUT
      
      const_set_lazy(:HDM_ORDERTOINDEX) { HDM_FIRST + 15 }
      const_attr_reader  :HDM_ORDERTOINDEX
      
      const_set_lazy(:HDM_SETIMAGELIST) { HDM_FIRST + 8 }
      const_attr_reader  :HDM_SETIMAGELIST
      
      const_set_lazy(:HDM_SETITEMA) { HDM_FIRST + 4 }
      const_attr_reader  :HDM_SETITEMA
      
      const_set_lazy(:HDM_SETITEMW) { HDM_FIRST + 12 }
      const_attr_reader  :HDM_SETITEMW
      
      const_set_lazy(:HDM_SETITEM) { IsUnicode ? HDM_SETITEMW : HDM_SETITEMA }
      const_attr_reader  :HDM_SETITEM
      
      const_set_lazy(:HDM_SETORDERARRAY) { HDM_FIRST + 18 }
      const_attr_reader  :HDM_SETORDERARRAY
      
      const_set_lazy(:HDN_FIRST) { -0x12c }
      const_attr_reader  :HDN_FIRST
      
      const_set_lazy(:HDN_BEGINDRAG) { HDN_FIRST - 10 }
      const_attr_reader  :HDN_BEGINDRAG
      
      const_set_lazy(:HDN_BEGINTRACK) { IsUnicode ? -0x146 : -0x132 }
      const_attr_reader  :HDN_BEGINTRACK
      
      const_set_lazy(:HDN_BEGINTRACKW) { -0x146 }
      const_attr_reader  :HDN_BEGINTRACKW
      
      const_set_lazy(:HDN_BEGINTRACKA) { -0x132 }
      const_attr_reader  :HDN_BEGINTRACKA
      
      const_set_lazy(:HDN_DIVIDERDBLCLICKA) { HDN_FIRST - 5 }
      const_attr_reader  :HDN_DIVIDERDBLCLICKA
      
      const_set_lazy(:HDN_DIVIDERDBLCLICKW) { HDN_FIRST - 25 }
      const_attr_reader  :HDN_DIVIDERDBLCLICKW
      
      const_set_lazy(:HDN_DIVIDERDBLCLICK) { IsUnicode ? HDN_DIVIDERDBLCLICKW : HDN_DIVIDERDBLCLICKA }
      const_attr_reader  :HDN_DIVIDERDBLCLICK
      
      const_set_lazy(:HDN_ENDDRAG) { HDN_FIRST - 11 }
      const_attr_reader  :HDN_ENDDRAG
      
      const_set_lazy(:HDN_ITEMCHANGED) { IsUnicode ? -0x141 : -0x12d }
      const_attr_reader  :HDN_ITEMCHANGED
      
      const_set_lazy(:HDN_ITEMCHANGEDW) { -0x141 }
      const_attr_reader  :HDN_ITEMCHANGEDW
      
      const_set_lazy(:HDN_ITEMCHANGEDA) { -0x12d }
      const_attr_reader  :HDN_ITEMCHANGEDA
      
      const_set_lazy(:HDN_ITEMCHANGINGW) { HDN_FIRST - 20 }
      const_attr_reader  :HDN_ITEMCHANGINGW
      
      const_set_lazy(:HDN_ITEMCHANGINGA) { HDN_FIRST }
      const_attr_reader  :HDN_ITEMCHANGINGA
      
      const_set_lazy(:HDN_ITEMCLICKW) { HDN_FIRST - 22 }
      const_attr_reader  :HDN_ITEMCLICKW
      
      const_set_lazy(:HDN_ITEMCLICKA) { HDN_FIRST - 2 }
      const_attr_reader  :HDN_ITEMCLICKA
      
      const_set_lazy(:HDN_ITEMDBLCLICKW) { HDN_FIRST - 23 }
      const_attr_reader  :HDN_ITEMDBLCLICKW
      
      const_set_lazy(:HDN_ITEMDBLCLICKA) { HDN_FIRST - 3 }
      const_attr_reader  :HDN_ITEMDBLCLICKA
      
      const_set_lazy(:HDN_ITEMDBLCLICK) { IsUnicode ? HDN_ITEMDBLCLICKW : HDN_ITEMDBLCLICKA }
      const_attr_reader  :HDN_ITEMDBLCLICK
      
      const_set_lazy(:HDS_BUTTONS) { 0x2 }
      const_attr_reader  :HDS_BUTTONS
      
      const_set_lazy(:HDS_DRAGDROP) { 0x40 }
      const_attr_reader  :HDS_DRAGDROP
      
      const_set_lazy(:HDS_FULLDRAG) { 0x80 }
      const_attr_reader  :HDS_FULLDRAG
      
      const_set_lazy(:HDS_HIDDEN) { 0x8 }
      const_attr_reader  :HDS_HIDDEN
      
      # public static final int HEAP_ZERO_MEMORY = 0x8;
      const_set_lazy(:HELPINFO_MENUITEM) { 0x2 }
      const_attr_reader  :HELPINFO_MENUITEM
      
      const_set_lazy(:HHT_ONDIVIDER) { 0x4 }
      const_attr_reader  :HHT_ONDIVIDER
      
      const_set_lazy(:HHT_ONDIVOPEN) { 0x8 }
      const_attr_reader  :HHT_ONDIVOPEN
      
      const_set_lazy(:HICF_ARROWKEYS) { 0x2 }
      const_attr_reader  :HICF_ARROWKEYS
      
      const_set_lazy(:HICF_LEAVING) { 0x20 }
      const_attr_reader  :HICF_LEAVING
      
      const_set_lazy(:HICF_MOUSE) { 0x1 }
      const_attr_reader  :HICF_MOUSE
      
      const_set_lazy(:HINST_COMMCTRL) { -0x1 }
      const_attr_reader  :HINST_COMMCTRL
      
      const_set_lazy(:HKEY_CLASSES_ROOT) { -0x80000000 }
      const_attr_reader  :HKEY_CLASSES_ROOT
      
      const_set_lazy(:HKEY_CURRENT_USER) { -0x7fffffff }
      const_attr_reader  :HKEY_CURRENT_USER
      
      const_set_lazy(:HKEY_LOCAL_MACHINE) { -0x7ffffffe }
      const_attr_reader  :HKEY_LOCAL_MACHINE
      
      const_set_lazy(:HORZRES) { 0x8 }
      const_attr_reader  :HORZRES
      
      const_set_lazy(:HTBORDER) { 0x12 }
      const_attr_reader  :HTBORDER
      
      const_set_lazy(:HTCAPTION) { 0x2 }
      const_attr_reader  :HTCAPTION
      
      const_set_lazy(:HTCLIENT) { 0x1 }
      const_attr_reader  :HTCLIENT
      
      const_set_lazy(:HTERROR) { -2 }
      const_attr_reader  :HTERROR
      
      const_set_lazy(:HTHSCROLL) { 0x6 }
      const_attr_reader  :HTHSCROLL
      
      const_set_lazy(:HTMENU) { 0x5 }
      const_attr_reader  :HTMENU
      
      const_set_lazy(:HTNOWHERE) { 0x0 }
      const_attr_reader  :HTNOWHERE
      
      const_set_lazy(:HTSYSMENU) { 0x3 }
      const_attr_reader  :HTSYSMENU
      
      const_set_lazy(:HTTRANSPARENT) { -0x1 }
      const_attr_reader  :HTTRANSPARENT
      
      const_set_lazy(:HTVSCROLL) { 0x7 }
      const_attr_reader  :HTVSCROLL
      
      const_set_lazy(:HWND_BOTTOM) { 0x1 }
      const_attr_reader  :HWND_BOTTOM
      
      const_set_lazy(:HWND_TOP) { 0x0 }
      const_attr_reader  :HWND_TOP
      
      const_set_lazy(:HWND_TOPMOST) { -0x1 }
      const_attr_reader  :HWND_TOPMOST
      
      const_set_lazy(:HWND_NOTOPMOST) { -2 }
      const_attr_reader  :HWND_NOTOPMOST
      
      const_set_lazy(:ICC_COOL_CLASSES) { 0x400 }
      const_attr_reader  :ICC_COOL_CLASSES
      
      const_set_lazy(:ICC_DATE_CLASSES) { 0x100 }
      const_attr_reader  :ICC_DATE_CLASSES
      
      const_set_lazy(:ICM_NOTOPEN) { 0x0 }
      const_attr_reader  :ICM_NOTOPEN
      
      const_set_lazy(:ICON_BIG) { 0x1 }
      const_attr_reader  :ICON_BIG
      
      const_set_lazy(:ICON_SMALL) { 0x0 }
      const_attr_reader  :ICON_SMALL
      
      const_set_lazy(:I_IMAGECALLBACK) { -1 }
      const_attr_reader  :I_IMAGECALLBACK
      
      const_set_lazy(:I_IMAGENONE) { -2 }
      const_attr_reader  :I_IMAGENONE
      
      const_set_lazy(:IDABORT) { 0x3 }
      const_attr_reader  :IDABORT
      
      const_set_lazy(:IDANI_CAPTION) { 3 }
      const_attr_reader  :IDANI_CAPTION
      
      const_set_lazy(:IDB_STD_SMALL_COLOR) { 0x0 }
      const_attr_reader  :IDB_STD_SMALL_COLOR
      
      const_set_lazy(:IDC_APPSTARTING) { 0x7f8a }
      const_attr_reader  :IDC_APPSTARTING
      
      const_set_lazy(:IDC_ARROW) { 0x7f00 }
      const_attr_reader  :IDC_ARROW
      
      const_set_lazy(:IDC_CROSS) { 0x7f03 }
      const_attr_reader  :IDC_CROSS
      
      const_set_lazy(:IDC_HAND) { 0x7f89 }
      const_attr_reader  :IDC_HAND
      
      const_set_lazy(:IDC_HELP) { 0x7f8b }
      const_attr_reader  :IDC_HELP
      
      const_set_lazy(:IDC_IBEAM) { 0x7f01 }
      const_attr_reader  :IDC_IBEAM
      
      const_set_lazy(:IDC_NO) { 0x7f88 }
      const_attr_reader  :IDC_NO
      
      const_set_lazy(:IDC_SIZE) { 0x7f80 }
      const_attr_reader  :IDC_SIZE
      
      const_set_lazy(:IDC_SIZEALL) { 0x7f86 }
      const_attr_reader  :IDC_SIZEALL
      
      const_set_lazy(:IDC_SIZENESW) { 0x7f83 }
      const_attr_reader  :IDC_SIZENESW
      
      const_set_lazy(:IDC_SIZENS) { 0x7f85 }
      const_attr_reader  :IDC_SIZENS
      
      const_set_lazy(:IDC_SIZENWSE) { 0x7f82 }
      const_attr_reader  :IDC_SIZENWSE
      
      const_set_lazy(:IDC_SIZEWE) { 0x7f84 }
      const_attr_reader  :IDC_SIZEWE
      
      const_set_lazy(:IDC_UPARROW) { 0x7f04 }
      const_attr_reader  :IDC_UPARROW
      
      const_set_lazy(:IDC_WAIT) { 0x7f02 }
      const_attr_reader  :IDC_WAIT
      
      const_set_lazy(:IDI_APPLICATION) { 32512 }
      const_attr_reader  :IDI_APPLICATION
      
      const_set_lazy(:IDNO) { 0x7 }
      const_attr_reader  :IDNO
      
      const_set_lazy(:IDOK) { 0x1 }
      const_attr_reader  :IDOK
      
      const_set_lazy(:IDRETRY) { 0x4 }
      const_attr_reader  :IDRETRY
      
      const_set_lazy(:IDYES) { 0x6 }
      const_attr_reader  :IDYES
      
      const_set_lazy(:ILC_COLOR) { 0x0 }
      const_attr_reader  :ILC_COLOR
      
      const_set_lazy(:ILC_COLOR16) { 0x10 }
      const_attr_reader  :ILC_COLOR16
      
      const_set_lazy(:ILC_COLOR24) { 0x18 }
      const_attr_reader  :ILC_COLOR24
      
      const_set_lazy(:ILC_COLOR32) { 0x20 }
      const_attr_reader  :ILC_COLOR32
      
      const_set_lazy(:ILC_COLOR4) { 0x4 }
      const_attr_reader  :ILC_COLOR4
      
      const_set_lazy(:ILC_COLOR8) { 0x8 }
      const_attr_reader  :ILC_COLOR8
      
      const_set_lazy(:ILC_MASK) { 0x1 }
      const_attr_reader  :ILC_MASK
      
      const_set_lazy(:ILC_MIRROR) { 0x2000 }
      const_attr_reader  :ILC_MIRROR
      
      const_set_lazy(:ILD_NORMAL) { 0x0 }
      const_attr_reader  :ILD_NORMAL
      
      const_set_lazy(:ILD_SELECTED) { 0x4 }
      const_attr_reader  :ILD_SELECTED
      
      const_set_lazy(:IMAGE_BITMAP) { 0x0 }
      const_attr_reader  :IMAGE_BITMAP
      
      const_set_lazy(:IMAGE_CURSOR) { 0x2 }
      const_attr_reader  :IMAGE_CURSOR
      
      const_set_lazy(:IMAGE_ICON) { 0x1 }
      const_attr_reader  :IMAGE_ICON
      
      const_set_lazy(:IME_CMODE_FULLSHAPE) { 0x8 }
      const_attr_reader  :IME_CMODE_FULLSHAPE
      
      const_set_lazy(:IME_CMODE_KATAKANA) { 0x2 }
      const_attr_reader  :IME_CMODE_KATAKANA
      
      const_set_lazy(:IME_CMODE_NATIVE) { 0x1 }
      const_attr_reader  :IME_CMODE_NATIVE
      
      const_set_lazy(:IME_CMODE_ROMAN) { 0x10 }
      const_attr_reader  :IME_CMODE_ROMAN
      
      const_set_lazy(:IMEMOUSE_LDOWN) { 1 }
      const_attr_reader  :IMEMOUSE_LDOWN
      
      const_set_lazy(:INFINITE) { -0x1 }
      const_attr_reader  :INFINITE
      
      const_set_lazy(:INPUT_KEYBOARD) { 1 }
      const_attr_reader  :INPUT_KEYBOARD
      
      const_set_lazy(:INPUT_MOUSE) { 0 }
      const_attr_reader  :INPUT_MOUSE
      
      const_set_lazy(:INTERNET_OPTION_END_BROWSER_SESSION) { 42 }
      const_attr_reader  :INTERNET_OPTION_END_BROWSER_SESSION
      
      const_set_lazy(:KEY_ENUMERATE_SUB_KEYS) { 0x8 }
      const_attr_reader  :KEY_ENUMERATE_SUB_KEYS
      
      const_set_lazy(:KEY_NOTIFY) { 0x10 }
      const_attr_reader  :KEY_NOTIFY
      
      const_set_lazy(:KEY_QUERY_VALUE) { 0x1 }
      const_attr_reader  :KEY_QUERY_VALUE
      
      const_set_lazy(:KEY_READ) { 0x20019 }
      const_attr_reader  :KEY_READ
      
      const_set_lazy(:KEYEVENTF_KEYUP) { 0x2 }
      const_attr_reader  :KEYEVENTF_KEYUP
      
      const_set_lazy(:L_MAX_URL_LENGTH) { 2084 }
      const_attr_reader  :L_MAX_URL_LENGTH
      
      # public static final int LANG_KOREAN = 0x12;
      const_set_lazy(:LANG_NEUTRAL) { 0x0 }
      const_attr_reader  :LANG_NEUTRAL
      
      const_set_lazy(:LANG_USER_DEFAULT) { 1 << 10 }
      const_attr_reader  :LANG_USER_DEFAULT
      
      const_set_lazy(:LAYOUT_RTL) { 0x1 }
      const_attr_reader  :LAYOUT_RTL
      
      const_set_lazy(:LAYOUT_BITMAPORIENTATIONPRESERVED) { 0x8 }
      const_attr_reader  :LAYOUT_BITMAPORIENTATIONPRESERVED
      
      const_set_lazy(:LBN_DBLCLK) { 0x2 }
      const_attr_reader  :LBN_DBLCLK
      
      const_set_lazy(:LBN_SELCHANGE) { 0x1 }
      const_attr_reader  :LBN_SELCHANGE
      
      const_set_lazy(:LBS_EXTENDEDSEL) { 0x800 }
      const_attr_reader  :LBS_EXTENDEDSEL
      
      const_set_lazy(:LBS_MULTIPLESEL) { 0x8 }
      const_attr_reader  :LBS_MULTIPLESEL
      
      const_set_lazy(:LBS_NOINTEGRALHEIGHT) { 0x100 }
      const_attr_reader  :LBS_NOINTEGRALHEIGHT
      
      const_set_lazy(:LBS_NOTIFY) { 0x1 }
      const_attr_reader  :LBS_NOTIFY
      
      const_set_lazy(:LB_ADDSTRING) { 0x180 }
      const_attr_reader  :LB_ADDSTRING
      
      const_set_lazy(:LB_DELETESTRING) { 0x182 }
      const_attr_reader  :LB_DELETESTRING
      
      const_set_lazy(:LB_ERR) { -0x1 }
      const_attr_reader  :LB_ERR
      
      const_set_lazy(:LB_ERRSPACE) { -0x2 }
      const_attr_reader  :LB_ERRSPACE
      
      const_set_lazy(:LB_FINDSTRINGEXACT) { 0x1a2 }
      const_attr_reader  :LB_FINDSTRINGEXACT
      
      const_set_lazy(:LB_GETCARETINDEX) { 0x19f }
      const_attr_reader  :LB_GETCARETINDEX
      
      const_set_lazy(:LB_GETCOUNT) { 0x18b }
      const_attr_reader  :LB_GETCOUNT
      
      const_set_lazy(:LB_GETCURSEL) { 0x188 }
      const_attr_reader  :LB_GETCURSEL
      
      const_set_lazy(:LB_GETHORIZONTALEXTENT) { 0x193 }
      const_attr_reader  :LB_GETHORIZONTALEXTENT
      
      const_set_lazy(:LB_GETITEMHEIGHT) { 0x1a1 }
      const_attr_reader  :LB_GETITEMHEIGHT
      
      const_set_lazy(:LB_GETITEMRECT) { 0x198 }
      const_attr_reader  :LB_GETITEMRECT
      
      const_set_lazy(:LB_GETSEL) { 0x187 }
      const_attr_reader  :LB_GETSEL
      
      const_set_lazy(:LB_GETSELCOUNT) { 0x190 }
      const_attr_reader  :LB_GETSELCOUNT
      
      const_set_lazy(:LB_GETSELITEMS) { 0x191 }
      const_attr_reader  :LB_GETSELITEMS
      
      const_set_lazy(:LB_GETTEXT) { 0x189 }
      const_attr_reader  :LB_GETTEXT
      
      const_set_lazy(:LB_GETTEXTLEN) { 0x18a }
      const_attr_reader  :LB_GETTEXTLEN
      
      const_set_lazy(:LB_GETTOPINDEX) { 0x18e }
      const_attr_reader  :LB_GETTOPINDEX
      
      const_set_lazy(:LB_INITSTORAGE) { 0x1a8 }
      const_attr_reader  :LB_INITSTORAGE
      
      const_set_lazy(:LB_INSERTSTRING) { 0x181 }
      const_attr_reader  :LB_INSERTSTRING
      
      const_set_lazy(:LB_RESETCONTENT) { 0x184 }
      const_attr_reader  :LB_RESETCONTENT
      
      const_set_lazy(:LB_SELITEMRANGE) { 0x19b }
      const_attr_reader  :LB_SELITEMRANGE
      
      const_set_lazy(:LB_SELITEMRANGEEX) { 0x183 }
      const_attr_reader  :LB_SELITEMRANGEEX
      
      const_set_lazy(:LB_SETANCHORINDEX) { 0xf19c }
      const_attr_reader  :LB_SETANCHORINDEX
      
      const_set_lazy(:LB_SETCARETINDEX) { 0x19e }
      const_attr_reader  :LB_SETCARETINDEX
      
      const_set_lazy(:LB_SETCURSEL) { 0x186 }
      const_attr_reader  :LB_SETCURSEL
      
      const_set_lazy(:LB_SETHORIZONTALEXTENT) { 0x194 }
      const_attr_reader  :LB_SETHORIZONTALEXTENT
      
      const_set_lazy(:LB_SETSEL) { 0x185 }
      const_attr_reader  :LB_SETSEL
      
      const_set_lazy(:LB_SETTOPINDEX) { 0x197 }
      const_attr_reader  :LB_SETTOPINDEX
      
      const_set_lazy(:LF_FULLFACESIZE) { 64 }
      const_attr_reader  :LF_FULLFACESIZE
      
      const_set_lazy(:LF_FACESIZE) { 32 }
      const_attr_reader  :LF_FACESIZE
      
      const_set_lazy(:LGRPID_ARABIC) { 0xd }
      const_attr_reader  :LGRPID_ARABIC
      
      const_set_lazy(:LGRPID_HEBREW) { 0xc }
      const_attr_reader  :LGRPID_HEBREW
      
      const_set_lazy(:LGRPID_INSTALLED) { 1 }
      const_attr_reader  :LGRPID_INSTALLED
      
      const_set_lazy(:LIF_ITEMINDEX) { 0x1 }
      const_attr_reader  :LIF_ITEMINDEX
      
      const_set_lazy(:LIF_STATE) { 0x2 }
      const_attr_reader  :LIF_STATE
      
      const_set_lazy(:LIS_FOCUSED) { 0x1 }
      const_attr_reader  :LIS_FOCUSED
      
      const_set_lazy(:LIS_ENABLED) { 0x2 }
      const_attr_reader  :LIS_ENABLED
      
      const_set_lazy(:LISS_HOT) { 0x2 }
      const_attr_reader  :LISS_HOT
      
      const_set_lazy(:LISS_SELECTED) { 0x3 }
      const_attr_reader  :LISS_SELECTED
      
      const_set_lazy(:LISS_SELECTEDNOTFOCUS) { 0x5 }
      const_attr_reader  :LISS_SELECTEDNOTFOCUS
      
      const_set_lazy(:LM_GETIDEALHEIGHT) { 0x701 }
      const_attr_reader  :LM_GETIDEALHEIGHT
      
      const_set_lazy(:LM_SETITEM) { 0x702 }
      const_attr_reader  :LM_SETITEM
      
      const_set_lazy(:LM_GETITEM) { 0x703 }
      const_attr_reader  :LM_GETITEM
      
      const_set_lazy(:LCID_SUPPORTED) { 0x2 }
      const_attr_reader  :LCID_SUPPORTED
      
      const_set_lazy(:LOCALE_IDEFAULTANSICODEPAGE) { 0x1004 }
      const_attr_reader  :LOCALE_IDEFAULTANSICODEPAGE
      
      const_set_lazy(:LOCALE_IDATE) { 0x21 }
      const_attr_reader  :LOCALE_IDATE
      
      const_set_lazy(:LOCALE_ITIME) { 0x23 }
      const_attr_reader  :LOCALE_ITIME
      
      const_set_lazy(:LOCALE_RETURN_NUMBER) { 0x20000000 }
      const_attr_reader  :LOCALE_RETURN_NUMBER
      
      # #if(WINVER >= 0x0400)
      const_set_lazy(:LOCALE_S1159) { 0x28 }
      const_attr_reader  :LOCALE_S1159
      
      const_set_lazy(:LOCALE_S2359) { 0x29 }
      const_attr_reader  :LOCALE_S2359
      
      const_set_lazy(:LOCALE_SDECIMAL) { 14 }
      const_attr_reader  :LOCALE_SDECIMAL
      
      const_set_lazy(:LOCALE_SISO3166CTRYNAME) { 0x5a }
      const_attr_reader  :LOCALE_SISO3166CTRYNAME
      
      const_set_lazy(:LOCALE_SISO639LANGNAME) { 0x59 }
      const_attr_reader  :LOCALE_SISO639LANGNAME
      
      const_set_lazy(:LOCALE_SLONGDATE) { 0x20 }
      const_attr_reader  :LOCALE_SLONGDATE
      
      const_set_lazy(:LOCALE_SSHORTDATE) { 0x1f }
      const_attr_reader  :LOCALE_SSHORTDATE
      
      const_set_lazy(:LOCALE_STIMEFORMAT) { 0x1003 }
      const_attr_reader  :LOCALE_STIMEFORMAT
      
      const_set_lazy(:LOCALE_SYEARMONTH) { 0x1006 }
      const_attr_reader  :LOCALE_SYEARMONTH
      
      # #if(WINVER >= 0x0500)
      const_set_lazy(:LOCALE_SDAYNAME1) { 0x2a }
      const_attr_reader  :LOCALE_SDAYNAME1
      
      # long name for Monday
      const_set_lazy(:LOCALE_SDAYNAME2) { 0x2b }
      const_attr_reader  :LOCALE_SDAYNAME2
      
      # long name for Tuesday
      const_set_lazy(:LOCALE_SDAYNAME3) { 0x2c }
      const_attr_reader  :LOCALE_SDAYNAME3
      
      # long name for Wednesday
      const_set_lazy(:LOCALE_SDAYNAME4) { 0x2d }
      const_attr_reader  :LOCALE_SDAYNAME4
      
      # long name for Thursday
      const_set_lazy(:LOCALE_SDAYNAME5) { 0x2e }
      const_attr_reader  :LOCALE_SDAYNAME5
      
      # long name for Friday
      const_set_lazy(:LOCALE_SDAYNAME6) { 0x2f }
      const_attr_reader  :LOCALE_SDAYNAME6
      
      # long name for Saturday
      const_set_lazy(:LOCALE_SDAYNAME7) { 0x30 }
      const_attr_reader  :LOCALE_SDAYNAME7
      
      # long name for Sunday
      const_set_lazy(:LOCALE_SMONTHNAME1) { 0x38 }
      const_attr_reader  :LOCALE_SMONTHNAME1
      
      # long name for January
      const_set_lazy(:LOCALE_SMONTHNAME2) { 0x39 }
      const_attr_reader  :LOCALE_SMONTHNAME2
      
      # long name for February
      const_set_lazy(:LOCALE_SMONTHNAME3) { 0x3a }
      const_attr_reader  :LOCALE_SMONTHNAME3
      
      # long name for March
      const_set_lazy(:LOCALE_SMONTHNAME4) { 0x3b }
      const_attr_reader  :LOCALE_SMONTHNAME4
      
      # long name for April
      const_set_lazy(:LOCALE_SMONTHNAME5) { 0x3c }
      const_attr_reader  :LOCALE_SMONTHNAME5
      
      # long name for May
      const_set_lazy(:LOCALE_SMONTHNAME6) { 0x3d }
      const_attr_reader  :LOCALE_SMONTHNAME6
      
      # long name for June
      const_set_lazy(:LOCALE_SMONTHNAME7) { 0x3e }
      const_attr_reader  :LOCALE_SMONTHNAME7
      
      # long name for July
      const_set_lazy(:LOCALE_SMONTHNAME8) { 0x3f }
      const_attr_reader  :LOCALE_SMONTHNAME8
      
      # long name for August
      const_set_lazy(:LOCALE_SMONTHNAME9) { 0x40 }
      const_attr_reader  :LOCALE_SMONTHNAME9
      
      # long name for September
      const_set_lazy(:LOCALE_SMONTHNAME10) { 0x41 }
      const_attr_reader  :LOCALE_SMONTHNAME10
      
      # long name for October
      const_set_lazy(:LOCALE_SMONTHNAME11) { 0x42 }
      const_attr_reader  :LOCALE_SMONTHNAME11
      
      # long name for November
      const_set_lazy(:LOCALE_SMONTHNAME12) { 0x43 }
      const_attr_reader  :LOCALE_SMONTHNAME12
      
      # long name for December
      const_set_lazy(:LOCALE_USER_DEFAULT) { 1024 }
      const_attr_reader  :LOCALE_USER_DEFAULT
      
      const_set_lazy(:LOGPIXELSX) { 0x58 }
      const_attr_reader  :LOGPIXELSX
      
      const_set_lazy(:LOGPIXELSY) { 0x5a }
      const_attr_reader  :LOGPIXELSY
      
      const_set_lazy(:LPSTR_TEXTCALLBACK) { -0x1 }
      const_attr_reader  :LPSTR_TEXTCALLBACK
      
      const_set_lazy(:LR_DEFAULTCOLOR) { 0x0 }
      const_attr_reader  :LR_DEFAULTCOLOR
      
      const_set_lazy(:LR_SHARED) { 0x8000 }
      const_attr_reader  :LR_SHARED
      
      const_set_lazy(:LVCFMT_BITMAP_ON_RIGHT) { 0x1000 }
      const_attr_reader  :LVCFMT_BITMAP_ON_RIGHT
      
      const_set_lazy(:LVCFMT_CENTER) { 0x2 }
      const_attr_reader  :LVCFMT_CENTER
      
      const_set_lazy(:LVCFMT_IMAGE) { 0x800 }
      const_attr_reader  :LVCFMT_IMAGE
      
      const_set_lazy(:LVCFMT_LEFT) { 0x0 }
      const_attr_reader  :LVCFMT_LEFT
      
      const_set_lazy(:LVCFMT_RIGHT) { 0x1 }
      const_attr_reader  :LVCFMT_RIGHT
      
      const_set_lazy(:LVCF_FMT) { 0x1 }
      const_attr_reader  :LVCF_FMT
      
      const_set_lazy(:LVCF_IMAGE) { 0x10 }
      const_attr_reader  :LVCF_IMAGE
      
      const_set_lazy(:LVCFMT_JUSTIFYMASK) { 0x3 }
      const_attr_reader  :LVCFMT_JUSTIFYMASK
      
      const_set_lazy(:LVCF_TEXT) { 0x4 }
      const_attr_reader  :LVCF_TEXT
      
      const_set_lazy(:LVCF_WIDTH) { 0x2 }
      const_attr_reader  :LVCF_WIDTH
      
      const_set_lazy(:LVHT_ONITEM) { 0xe }
      const_attr_reader  :LVHT_ONITEM
      
      const_set_lazy(:LVHT_ONITEMICON) { 0x2 }
      const_attr_reader  :LVHT_ONITEMICON
      
      const_set_lazy(:LVHT_ONITEMLABEL) { 0x4 }
      const_attr_reader  :LVHT_ONITEMLABEL
      
      const_set_lazy(:LVHT_ONITEMSTATEICON) { 0x8 }
      const_attr_reader  :LVHT_ONITEMSTATEICON
      
      const_set_lazy(:LVIF_IMAGE) { 0x2 }
      const_attr_reader  :LVIF_IMAGE
      
      const_set_lazy(:LVIF_INDENT) { 0x10 }
      const_attr_reader  :LVIF_INDENT
      
      const_set_lazy(:LVIF_STATE) { 0x8 }
      const_attr_reader  :LVIF_STATE
      
      const_set_lazy(:LVIF_TEXT) { 0x1 }
      const_attr_reader  :LVIF_TEXT
      
      const_set_lazy(:LVIR_BOUNDS) { 0x0 }
      const_attr_reader  :LVIR_BOUNDS
      
      const_set_lazy(:LVIR_ICON) { 0x1 }
      const_attr_reader  :LVIR_ICON
      
      const_set_lazy(:LVIR_LABEL) { 0x2 }
      const_attr_reader  :LVIR_LABEL
      
      const_set_lazy(:LVIR_SELECTBOUNDS) { 0x3 }
      const_attr_reader  :LVIR_SELECTBOUNDS
      
      const_set_lazy(:LVIS_DROPHILITED) { 0x8 }
      const_attr_reader  :LVIS_DROPHILITED
      
      const_set_lazy(:LVIS_FOCUSED) { 0x1 }
      const_attr_reader  :LVIS_FOCUSED
      
      const_set_lazy(:LVIS_SELECTED) { 0x2 }
      const_attr_reader  :LVIS_SELECTED
      
      const_set_lazy(:LVIS_STATEIMAGEMASK) { 0xf000 }
      const_attr_reader  :LVIS_STATEIMAGEMASK
      
      const_set_lazy(:LVM_FIRST) { 0x1000 }
      const_attr_reader  :LVM_FIRST
      
      const_set_lazy(:LVM_APPROXIMATEVIEWRECT) { 0x1040 }
      const_attr_reader  :LVM_APPROXIMATEVIEWRECT
      
      const_set_lazy(:LVM_CREATEDRAGIMAGE) { LVM_FIRST + 33 }
      const_attr_reader  :LVM_CREATEDRAGIMAGE
      
      const_set_lazy(:LVM_DELETEALLITEMS) { 0x1009 }
      const_attr_reader  :LVM_DELETEALLITEMS
      
      const_set_lazy(:LVM_DELETECOLUMN) { 0x101c }
      const_attr_reader  :LVM_DELETECOLUMN
      
      const_set_lazy(:LVM_DELETEITEM) { 0x1008 }
      const_attr_reader  :LVM_DELETEITEM
      
      const_set_lazy(:LVM_ENSUREVISIBLE) { 0x1013 }
      const_attr_reader  :LVM_ENSUREVISIBLE
      
      const_set_lazy(:LVM_GETBKCOLOR) { 0x1000 }
      const_attr_reader  :LVM_GETBKCOLOR
      
      const_set_lazy(:LVM_GETCOLUMN) { IsUnicode ? 0x105f : 0x1019 }
      const_attr_reader  :LVM_GETCOLUMN
      
      const_set_lazy(:LVM_GETCOLUMNORDERARRAY) { LVM_FIRST + 59 }
      const_attr_reader  :LVM_GETCOLUMNORDERARRAY
      
      const_set_lazy(:LVM_GETCOLUMNWIDTH) { 0x101d }
      const_attr_reader  :LVM_GETCOLUMNWIDTH
      
      const_set_lazy(:LVM_GETCOUNTPERPAGE) { 0x1028 }
      const_attr_reader  :LVM_GETCOUNTPERPAGE
      
      const_set_lazy(:LVM_GETEXTENDEDLISTVIEWSTYLE) { 0x1037 }
      const_attr_reader  :LVM_GETEXTENDEDLISTVIEWSTYLE
      
      const_set_lazy(:LVM_GETHEADER) { 0x101f }
      const_attr_reader  :LVM_GETHEADER
      
      const_set_lazy(:LVM_GETIMAGELIST) { 0x1002 }
      const_attr_reader  :LVM_GETIMAGELIST
      
      const_set_lazy(:LVM_GETITEM) { IsUnicode ? 0x104b : 0x1005 }
      const_attr_reader  :LVM_GETITEM
      
      const_set_lazy(:LVM_GETITEMW) { 0x104b }
      const_attr_reader  :LVM_GETITEMW
      
      const_set_lazy(:LVM_GETITEMA) { 0x1005 }
      const_attr_reader  :LVM_GETITEMA
      
      const_set_lazy(:LVM_GETITEMCOUNT) { 0x1004 }
      const_attr_reader  :LVM_GETITEMCOUNT
      
      const_set_lazy(:LVM_GETITEMRECT) { 0x100e }
      const_attr_reader  :LVM_GETITEMRECT
      
      const_set_lazy(:LVM_GETITEMSTATE) { 0x102c }
      const_attr_reader  :LVM_GETITEMSTATE
      
      const_set_lazy(:LVM_GETNEXTITEM) { 0x100c }
      const_attr_reader  :LVM_GETNEXTITEM
      
      const_set_lazy(:LVM_GETSELECTEDCOLUMN) { LVM_FIRST + 174 }
      const_attr_reader  :LVM_GETSELECTEDCOLUMN
      
      const_set_lazy(:LVM_GETSELECTEDCOUNT) { 0x1032 }
      const_attr_reader  :LVM_GETSELECTEDCOUNT
      
      const_set_lazy(:LVM_GETSTRINGWIDTH) { IsUnicode ? 0x1057 : 0x1011 }
      const_attr_reader  :LVM_GETSTRINGWIDTH
      
      const_set_lazy(:LVM_GETSUBITEMRECT) { 0x1038 }
      const_attr_reader  :LVM_GETSUBITEMRECT
      
      const_set_lazy(:LVM_GETTEXTCOLOR) { 0x1023 }
      const_attr_reader  :LVM_GETTEXTCOLOR
      
      const_set_lazy(:LVM_GETTOOLTIPS) { 0x104e }
      const_attr_reader  :LVM_GETTOOLTIPS
      
      const_set_lazy(:LVM_GETTOPINDEX) { 0x1027 }
      const_attr_reader  :LVM_GETTOPINDEX
      
      const_set_lazy(:LVM_HITTEST) { 0x1012 }
      const_attr_reader  :LVM_HITTEST
      
      const_set_lazy(:LVM_INSERTCOLUMN) { IsUnicode ? 0x1061 : 0x101b }
      const_attr_reader  :LVM_INSERTCOLUMN
      
      const_set_lazy(:LVM_INSERTITEM) { IsUnicode ? 0x104d : 0x1007 }
      const_attr_reader  :LVM_INSERTITEM
      
      const_set_lazy(:LVM_REDRAWITEMS) { LVM_FIRST + 21 }
      const_attr_reader  :LVM_REDRAWITEMS
      
      const_set_lazy(:LVM_SCROLL) { 0x1014 }
      const_attr_reader  :LVM_SCROLL
      
      const_set_lazy(:LVM_SETBKCOLOR) { 0x1001 }
      const_attr_reader  :LVM_SETBKCOLOR
      
      const_set_lazy(:LVM_SETCALLBACKMASK) { LVM_FIRST + 11 }
      const_attr_reader  :LVM_SETCALLBACKMASK
      
      const_set_lazy(:LVM_SETCOLUMN) { IsUnicode ? 0x1060 : 0x101a }
      const_attr_reader  :LVM_SETCOLUMN
      
      const_set_lazy(:LVM_SETCOLUMNORDERARRAY) { LVM_FIRST + 58 }
      const_attr_reader  :LVM_SETCOLUMNORDERARRAY
      
      const_set_lazy(:LVM_SETCOLUMNWIDTH) { 0x101e }
      const_attr_reader  :LVM_SETCOLUMNWIDTH
      
      const_set_lazy(:LVM_SETEXTENDEDLISTVIEWSTYLE) { 0x1036 }
      const_attr_reader  :LVM_SETEXTENDEDLISTVIEWSTYLE
      
      const_set_lazy(:LVM_SETIMAGELIST) { 0x1003 }
      const_attr_reader  :LVM_SETIMAGELIST
      
      const_set_lazy(:LVM_SETITEM) { IsUnicode ? 0x104c : 0x1006 }
      const_attr_reader  :LVM_SETITEM
      
      const_set_lazy(:LVM_SETITEMCOUNT) { LVM_FIRST + 47 }
      const_attr_reader  :LVM_SETITEMCOUNT
      
      const_set_lazy(:LVM_SETITEMSTATE) { 0x102b }
      const_attr_reader  :LVM_SETITEMSTATE
      
      const_set_lazy(:LVM_SETSELECTIONMARK) { LVM_FIRST + 67 }
      const_attr_reader  :LVM_SETSELECTIONMARK
      
      const_set_lazy(:LVM_SETSELECTEDCOLUMN) { LVM_FIRST + 140 }
      const_attr_reader  :LVM_SETSELECTEDCOLUMN
      
      const_set_lazy(:LVM_SETTEXTBKCOLOR) { 0x1026 }
      const_attr_reader  :LVM_SETTEXTBKCOLOR
      
      const_set_lazy(:LVM_SETTEXTCOLOR) { 0x1024 }
      const_attr_reader  :LVM_SETTEXTCOLOR
      
      const_set_lazy(:LVM_SETTOOLTIPS) { LVM_FIRST + 74 }
      const_attr_reader  :LVM_SETTOOLTIPS
      
      const_set_lazy(:LVM_SUBITEMHITTEST) { LVM_FIRST + 57 }
      const_attr_reader  :LVM_SUBITEMHITTEST
      
      const_set_lazy(:LVNI_FOCUSED) { 0x1 }
      const_attr_reader  :LVNI_FOCUSED
      
      const_set_lazy(:LVNI_SELECTED) { 0x2 }
      const_attr_reader  :LVNI_SELECTED
      
      const_set_lazy(:LVN_BEGINDRAG) { -0x6d }
      const_attr_reader  :LVN_BEGINDRAG
      
      const_set_lazy(:LVN_BEGINRDRAG) { -0x6f }
      const_attr_reader  :LVN_BEGINRDRAG
      
      const_set_lazy(:LVN_COLUMNCLICK) { -0x6c }
      const_attr_reader  :LVN_COLUMNCLICK
      
      const_set_lazy(:LVN_FIRST) { -0x64 }
      const_attr_reader  :LVN_FIRST
      
      const_set_lazy(:LVN_GETDISPINFOA) { LVN_FIRST - 50 }
      const_attr_reader  :LVN_GETDISPINFOA
      
      const_set_lazy(:LVN_GETDISPINFOW) { LVN_FIRST - 77 }
      const_attr_reader  :LVN_GETDISPINFOW
      
      const_set_lazy(:LVN_ITEMACTIVATE) { -0x72 }
      const_attr_reader  :LVN_ITEMACTIVATE
      
      const_set_lazy(:LVN_ITEMCHANGED) { -0x65 }
      const_attr_reader  :LVN_ITEMCHANGED
      
      const_set_lazy(:LVN_MARQUEEBEGIN) { -0x9c }
      const_attr_reader  :LVN_MARQUEEBEGIN
      
      const_set_lazy(:LVN_ODFINDITEMA) { LVN_FIRST - 52 }
      const_attr_reader  :LVN_ODFINDITEMA
      
      const_set_lazy(:LVN_ODFINDITEMW) { LVN_FIRST - 79 }
      const_attr_reader  :LVN_ODFINDITEMW
      
      const_set_lazy(:LVN_ODSTATECHANGED) { LVN_FIRST - 15 }
      const_attr_reader  :LVN_ODSTATECHANGED
      
      const_set_lazy(:LVP_LISTITEM) { 1 }
      const_attr_reader  :LVP_LISTITEM
      
      const_set_lazy(:LVSCW_AUTOSIZE) { -0x1 }
      const_attr_reader  :LVSCW_AUTOSIZE
      
      const_set_lazy(:LVSCW_AUTOSIZE_USEHEADER) { -0x2 }
      const_attr_reader  :LVSCW_AUTOSIZE_USEHEADER
      
      const_set_lazy(:LVSICF_NOINVALIDATEALL) { 0x1 }
      const_attr_reader  :LVSICF_NOINVALIDATEALL
      
      const_set_lazy(:LVSICF_NOSCROLL) { 0x2 }
      const_attr_reader  :LVSICF_NOSCROLL
      
      const_set_lazy(:LVSIL_SMALL) { 0x1 }
      const_attr_reader  :LVSIL_SMALL
      
      const_set_lazy(:LVSIL_STATE) { 0x2 }
      const_attr_reader  :LVSIL_STATE
      
      const_set_lazy(:LVS_EX_DOUBLEBUFFER) { 0x10000 }
      const_attr_reader  :LVS_EX_DOUBLEBUFFER
      
      const_set_lazy(:LVS_EX_FULLROWSELECT) { 0x20 }
      const_attr_reader  :LVS_EX_FULLROWSELECT
      
      const_set_lazy(:LVS_EX_GRIDLINES) { 0x1 }
      const_attr_reader  :LVS_EX_GRIDLINES
      
      const_set_lazy(:LVS_EX_HEADERDRAGDROP) { 0x10 }
      const_attr_reader  :LVS_EX_HEADERDRAGDROP
      
      const_set_lazy(:LVS_EX_LABELTIP) { 0x4000 }
      const_attr_reader  :LVS_EX_LABELTIP
      
      const_set_lazy(:LVS_EX_ONECLICKACTIVATE) { 0x40 }
      const_attr_reader  :LVS_EX_ONECLICKACTIVATE
      
      const_set_lazy(:LVS_EX_SUBITEMIMAGES) { 0x2 }
      const_attr_reader  :LVS_EX_SUBITEMIMAGES
      
      const_set_lazy(:LVS_EX_TRACKSELECT) { 0x8 }
      const_attr_reader  :LVS_EX_TRACKSELECT
      
      const_set_lazy(:LVS_EX_TRANSPARENTBKGND) { 0x800000 }
      const_attr_reader  :LVS_EX_TRANSPARENTBKGND
      
      const_set_lazy(:LVS_EX_TWOCLICKACTIVATE) { 0x80 }
      const_attr_reader  :LVS_EX_TWOCLICKACTIVATE
      
      const_set_lazy(:LVS_LIST) { 0x3 }
      const_attr_reader  :LVS_LIST
      
      const_set_lazy(:LVS_NOCOLUMNHEADER) { 0x4000 }
      const_attr_reader  :LVS_NOCOLUMNHEADER
      
      const_set_lazy(:LVS_NOSCROLL) { 0x2000 }
      const_attr_reader  :LVS_NOSCROLL
      
      const_set_lazy(:LVS_OWNERDATA) { 0x1000 }
      const_attr_reader  :LVS_OWNERDATA
      
      const_set_lazy(:LVS_OWNERDRAWFIXED) { 0x400 }
      const_attr_reader  :LVS_OWNERDRAWFIXED
      
      const_set_lazy(:LVS_REPORT) { 0x1 }
      const_attr_reader  :LVS_REPORT
      
      const_set_lazy(:LVS_SHAREIMAGELISTS) { 0x40 }
      const_attr_reader  :LVS_SHAREIMAGELISTS
      
      const_set_lazy(:LVS_SHOWSELALWAYS) { 0x8 }
      const_attr_reader  :LVS_SHOWSELALWAYS
      
      const_set_lazy(:LVS_SINGLESEL) { 0x4 }
      const_attr_reader  :LVS_SINGLESEL
      
      const_set_lazy(:LWA_COLORKEY) { 0x1 }
      const_attr_reader  :LWA_COLORKEY
      
      const_set_lazy(:LWA_ALPHA) { 0x2 }
      const_attr_reader  :LWA_ALPHA
      
      const_set_lazy(:MAX_LINKID_TEXT) { 48 }
      const_attr_reader  :MAX_LINKID_TEXT
      
      # public static final int MAX_PATH = 260;
      const_set_lazy(:MA_NOACTIVATE) { 0x3 }
      const_attr_reader  :MA_NOACTIVATE
      
      # public static final int MANIFEST_RESOURCE_ID = 2;
      const_set_lazy(:MB_ABORTRETRYIGNORE) { 0x2 }
      const_attr_reader  :MB_ABORTRETRYIGNORE
      
      const_set_lazy(:MB_APPLMODAL) { 0x0 }
      const_attr_reader  :MB_APPLMODAL
      
      const_set_lazy(:MB_ICONERROR) { 0x10 }
      const_attr_reader  :MB_ICONERROR
      
      const_set_lazy(:MB_ICONINFORMATION) { 0x40 }
      const_attr_reader  :MB_ICONINFORMATION
      
      const_set_lazy(:MB_ICONQUESTION) { 0x20 }
      const_attr_reader  :MB_ICONQUESTION
      
      const_set_lazy(:MB_ICONWARNING) { 0x30 }
      const_attr_reader  :MB_ICONWARNING
      
      const_set_lazy(:MB_OK) { 0x0 }
      const_attr_reader  :MB_OK
      
      const_set_lazy(:MB_OKCANCEL) { 0x1 }
      const_attr_reader  :MB_OKCANCEL
      
      const_set_lazy(:MB_PRECOMPOSED) { 0x1 }
      const_attr_reader  :MB_PRECOMPOSED
      
      const_set_lazy(:MB_RETRYCANCEL) { 0x5 }
      const_attr_reader  :MB_RETRYCANCEL
      
      const_set_lazy(:MB_RIGHT) { 0x80000 }
      const_attr_reader  :MB_RIGHT
      
      const_set_lazy(:MB_RTLREADING) { 0x100000 }
      const_attr_reader  :MB_RTLREADING
      
      const_set_lazy(:MB_SYSTEMMODAL) { 0x1000 }
      const_attr_reader  :MB_SYSTEMMODAL
      
      const_set_lazy(:MB_TASKMODAL) { 0x2000 }
      const_attr_reader  :MB_TASKMODAL
      
      const_set_lazy(:MB_TOPMOST) { 0x40000 }
      const_attr_reader  :MB_TOPMOST
      
      const_set_lazy(:MB_YESNO) { 0x4 }
      const_attr_reader  :MB_YESNO
      
      const_set_lazy(:MB_YESNOCANCEL) { 0x3 }
      const_attr_reader  :MB_YESNOCANCEL
      
      const_set_lazy(:MCHT_CALENDAR) { 0x20000 }
      const_attr_reader  :MCHT_CALENDAR
      
      const_set_lazy(:MCHT_CALENDARDATE) { MCHT_CALENDAR | 0x1 }
      const_attr_reader  :MCHT_CALENDARDATE
      
      const_set_lazy(:MCM_FIRST) { 0x1000 }
      const_attr_reader  :MCM_FIRST
      
      const_set_lazy(:MCM_GETCURSEL) { MCM_FIRST + 1 }
      const_attr_reader  :MCM_GETCURSEL
      
      const_set_lazy(:MCM_GETMINREQRECT) { MCM_FIRST + 9 }
      const_attr_reader  :MCM_GETMINREQRECT
      
      const_set_lazy(:MCM_HITTEST) { MCM_FIRST + 14 }
      const_attr_reader  :MCM_HITTEST
      
      const_set_lazy(:MCM_SETCURSEL) { MCM_FIRST + 2 }
      const_attr_reader  :MCM_SETCURSEL
      
      const_set_lazy(:MCN_FIRST) { -0x2ee }
      const_attr_reader  :MCN_FIRST
      
      const_set_lazy(:MCN_SELCHANGE) { MCN_FIRST + 1 }
      const_attr_reader  :MCN_SELCHANGE
      
      const_set_lazy(:MCN_SELECT) { MCN_FIRST + 4 }
      const_attr_reader  :MCN_SELECT
      
      const_set_lazy(:MCS_NOTODAY) { 0x10 }
      const_attr_reader  :MCS_NOTODAY
      
      const_set_lazy(:MDIS_ALLCHILDSTYLES) { 0x1 }
      const_attr_reader  :MDIS_ALLCHILDSTYLES
      
      const_set_lazy(:MFS_CHECKED) { 0x8 }
      const_attr_reader  :MFS_CHECKED
      
      const_set_lazy(:MFS_DISABLED) { 0x3 }
      const_attr_reader  :MFS_DISABLED
      
      const_set_lazy(:MFS_GRAYED) { 0x3 }
      const_attr_reader  :MFS_GRAYED
      
      const_set_lazy(:MFT_RADIOCHECK) { 0x200 }
      const_attr_reader  :MFT_RADIOCHECK
      
      const_set_lazy(:MFT_RIGHTJUSTIFY) { 0x4000 }
      const_attr_reader  :MFT_RIGHTJUSTIFY
      
      const_set_lazy(:MFT_RIGHTORDER) { 0x2000 }
      const_attr_reader  :MFT_RIGHTORDER
      
      const_set_lazy(:MFT_SEPARATOR) { 0x800 }
      const_attr_reader  :MFT_SEPARATOR
      
      const_set_lazy(:MFT_STRING) { 0x0 }
      const_attr_reader  :MFT_STRING
      
      const_set_lazy(:MF_BYCOMMAND) { 0x0 }
      const_attr_reader  :MF_BYCOMMAND
      
      const_set_lazy(:MF_BYPOSITION) { 0x400 }
      const_attr_reader  :MF_BYPOSITION
      
      const_set_lazy(:MF_CHECKED) { 0x8 }
      const_attr_reader  :MF_CHECKED
      
      const_set_lazy(:MF_DISABLED) { 0x2 }
      const_attr_reader  :MF_DISABLED
      
      const_set_lazy(:MF_ENABLED) { 0x0 }
      const_attr_reader  :MF_ENABLED
      
      const_set_lazy(:MF_GRAYED) { 0x1 }
      const_attr_reader  :MF_GRAYED
      
      const_set_lazy(:MF_HILITE) { 0x80 }
      const_attr_reader  :MF_HILITE
      
      const_set_lazy(:MF_POPUP) { 0x10 }
      const_attr_reader  :MF_POPUP
      
      const_set_lazy(:MF_SEPARATOR) { 0x800 }
      const_attr_reader  :MF_SEPARATOR
      
      const_set_lazy(:MF_SYSMENU) { 0x2000 }
      const_attr_reader  :MF_SYSMENU
      
      const_set_lazy(:MF_UNCHECKED) { 0x0 }
      const_attr_reader  :MF_UNCHECKED
      
      const_set_lazy(:MIIM_BITMAP) { 0x80 }
      const_attr_reader  :MIIM_BITMAP
      
      const_set_lazy(:MIIM_DATA) { 0x20 }
      const_attr_reader  :MIIM_DATA
      
      const_set_lazy(:MIIM_ID) { 0x2 }
      const_attr_reader  :MIIM_ID
      
      const_set_lazy(:MIIM_STATE) { 0x1 }
      const_attr_reader  :MIIM_STATE
      
      const_set_lazy(:MIIM_STRING) { 0x40 }
      const_attr_reader  :MIIM_STRING
      
      const_set_lazy(:MIIM_SUBMENU) { 0x4 }
      const_attr_reader  :MIIM_SUBMENU
      
      const_set_lazy(:MIIM_TYPE) { 0x10 }
      const_attr_reader  :MIIM_TYPE
      
      const_set_lazy(:MIM_BACKGROUND) { 0x2 }
      const_attr_reader  :MIM_BACKGROUND
      
      const_set_lazy(:MIM_STYLE) { 0x10 }
      const_attr_reader  :MIM_STYLE
      
      const_set_lazy(:MK_ALT) { 0x20 }
      const_attr_reader  :MK_ALT
      
      const_set_lazy(:MK_CONTROL) { 0x8 }
      const_attr_reader  :MK_CONTROL
      
      const_set_lazy(:MK_LBUTTON) { 0x1 }
      const_attr_reader  :MK_LBUTTON
      
      const_set_lazy(:MK_MBUTTON) { 0x10 }
      const_attr_reader  :MK_MBUTTON
      
      const_set_lazy(:MK_RBUTTON) { 0x2 }
      const_attr_reader  :MK_RBUTTON
      
      const_set_lazy(:MK_SHIFT) { 0x4 }
      const_attr_reader  :MK_SHIFT
      
      const_set_lazy(:MK_XBUTTON1) { 0x20 }
      const_attr_reader  :MK_XBUTTON1
      
      const_set_lazy(:MK_XBUTTON2) { 0x40 }
      const_attr_reader  :MK_XBUTTON2
      
      const_set_lazy(:MM_TEXT) { 0x1 }
      const_attr_reader  :MM_TEXT
      
      const_set_lazy(:MNC_CLOSE) { 0x1 }
      const_attr_reader  :MNC_CLOSE
      
      const_set_lazy(:MNS_CHECKORBMP) { 0x4000000 }
      const_attr_reader  :MNS_CHECKORBMP
      
      const_set_lazy(:MONITOR_DEFAULTTONEAREST) { 0x2 }
      const_attr_reader  :MONITOR_DEFAULTTONEAREST
      
      const_set_lazy(:MONITORINFOF_PRIMARY) { 0x1 }
      const_attr_reader  :MONITORINFOF_PRIMARY
      
      const_set_lazy(:MONTHCAL_CLASS) { "SysMonthCal32" }
      const_attr_reader  :MONTHCAL_CLASS
      
      # $NON-NLS-1$
      const_set_lazy(:MOUSEEVENTF_ABSOLUTE) { 0x8000 }
      const_attr_reader  :MOUSEEVENTF_ABSOLUTE
      
      const_set_lazy(:MOUSEEVENTF_LEFTDOWN) { 0x2 }
      const_attr_reader  :MOUSEEVENTF_LEFTDOWN
      
      const_set_lazy(:MOUSEEVENTF_LEFTUP) { 0x4 }
      const_attr_reader  :MOUSEEVENTF_LEFTUP
      
      const_set_lazy(:MOUSEEVENTF_MIDDLEDOWN) { 0x20 }
      const_attr_reader  :MOUSEEVENTF_MIDDLEDOWN
      
      const_set_lazy(:MOUSEEVENTF_MIDDLEUP) { 0x40 }
      const_attr_reader  :MOUSEEVENTF_MIDDLEUP
      
      const_set_lazy(:MOUSEEVENTF_MOVE) { 0x1 }
      const_attr_reader  :MOUSEEVENTF_MOVE
      
      const_set_lazy(:MOUSEEVENTF_RIGHTDOWN) { 0x8 }
      const_attr_reader  :MOUSEEVENTF_RIGHTDOWN
      
      const_set_lazy(:MOUSEEVENTF_RIGHTUP) { 0x10 }
      const_attr_reader  :MOUSEEVENTF_RIGHTUP
      
      const_set_lazy(:MOUSEEVENTF_VIRTUALDESK) { 0x4000 }
      const_attr_reader  :MOUSEEVENTF_VIRTUALDESK
      
      const_set_lazy(:MOUSEEVENTF_WHEEL) { 0x800 }
      const_attr_reader  :MOUSEEVENTF_WHEEL
      
      const_set_lazy(:MOUSEEVENTF_XDOWN) { 0x80 }
      const_attr_reader  :MOUSEEVENTF_XDOWN
      
      const_set_lazy(:MOUSEEVENTF_XUP) { 0x100 }
      const_attr_reader  :MOUSEEVENTF_XUP
      
      const_set_lazy(:MSGF_DIALOGBOX) { 0 }
      const_attr_reader  :MSGF_DIALOGBOX
      
      const_set_lazy(:MSGF_COMMCTRL_BEGINDRAG) { 0x4200 }
      const_attr_reader  :MSGF_COMMCTRL_BEGINDRAG
      
      const_set_lazy(:MSGF_COMMCTRL_SIZEHEADER) { 0x4201 }
      const_attr_reader  :MSGF_COMMCTRL_SIZEHEADER
      
      const_set_lazy(:MSGF_COMMCTRL_DRAGSELECT) { 0x4202 }
      const_attr_reader  :MSGF_COMMCTRL_DRAGSELECT
      
      const_set_lazy(:MSGF_COMMCTRL_TOOLBARCUST) { 0x4203 }
      const_attr_reader  :MSGF_COMMCTRL_TOOLBARCUST
      
      const_set_lazy(:MSGF_MAINLOOP) { 8 }
      const_attr_reader  :MSGF_MAINLOOP
      
      const_set_lazy(:MSGF_MENU) { 2 }
      const_attr_reader  :MSGF_MENU
      
      const_set_lazy(:MSGF_MOVE) { 3 }
      const_attr_reader  :MSGF_MOVE
      
      const_set_lazy(:MSGF_MESSAGEBOX) { 1 }
      const_attr_reader  :MSGF_MESSAGEBOX
      
      const_set_lazy(:MSGF_NEXTWINDOW) { 6 }
      const_attr_reader  :MSGF_NEXTWINDOW
      
      const_set_lazy(:MSGF_SCROLLBAR) { 5 }
      const_attr_reader  :MSGF_SCROLLBAR
      
      const_set_lazy(:MSGF_SIZE) { 4 }
      const_attr_reader  :MSGF_SIZE
      
      const_set_lazy(:MSGF_USER) { 4096 }
      const_attr_reader  :MSGF_USER
      
      const_set_lazy(:MWMO_INPUTAVAILABLE) { 0x4 }
      const_attr_reader  :MWMO_INPUTAVAILABLE
      
      const_set_lazy(:MWT_LEFTMULTIPLY) { 2 }
      const_attr_reader  :MWT_LEFTMULTIPLY
      
      const_set_lazy(:NI_COMPOSITIONSTR) { 0x15 }
      const_attr_reader  :NI_COMPOSITIONSTR
      
      const_set_lazy(:NIF_ICON) { 0x2 }
      const_attr_reader  :NIF_ICON
      
      const_set_lazy(:NIF_INFO) { 0x10 }
      const_attr_reader  :NIF_INFO
      
      const_set_lazy(:NIF_MESSAGE) { 0x1 }
      const_attr_reader  :NIF_MESSAGE
      
      const_set_lazy(:NIF_STATE) { 0x8 }
      const_attr_reader  :NIF_STATE
      
      const_set_lazy(:NIF_TIP) { 0x4 }
      const_attr_reader  :NIF_TIP
      
      const_set_lazy(:NIIF_ERROR) { 0x3 }
      const_attr_reader  :NIIF_ERROR
      
      const_set_lazy(:NIIF_INFO) { 0x1 }
      const_attr_reader  :NIIF_INFO
      
      const_set_lazy(:NIIF_NONE) { 0x0 }
      const_attr_reader  :NIIF_NONE
      
      const_set_lazy(:NIIF_WARNING) { 0x2 }
      const_attr_reader  :NIIF_WARNING
      
      const_set_lazy(:NIM_ADD) { 0x0 }
      const_attr_reader  :NIM_ADD
      
      const_set_lazy(:NIM_DELETE) { 0x2 }
      const_attr_reader  :NIM_DELETE
      
      const_set_lazy(:NIM_MODIFY) { 0x1 }
      const_attr_reader  :NIM_MODIFY
      
      const_set_lazy(:NIN_SELECT) { 0x400 + 0 }
      const_attr_reader  :NIN_SELECT
      
      const_set_lazy(:NINF_KEY) { 0x1 }
      const_attr_reader  :NINF_KEY
      
      const_set_lazy(:NIN_KEYSELECT) { NIN_SELECT | NINF_KEY }
      const_attr_reader  :NIN_KEYSELECT
      
      const_set_lazy(:NIN_BALLOONSHOW) { 0x400 + 2 }
      const_attr_reader  :NIN_BALLOONSHOW
      
      const_set_lazy(:NIN_BALLOONHIDE) { 0x400 + 3 }
      const_attr_reader  :NIN_BALLOONHIDE
      
      const_set_lazy(:NIN_BALLOONTIMEOUT) { 0x400 + 4 }
      const_attr_reader  :NIN_BALLOONTIMEOUT
      
      const_set_lazy(:NIN_BALLOONUSERCLICK) { 0x400 + 5 }
      const_attr_reader  :NIN_BALLOONUSERCLICK
      
      const_set_lazy(:NIS_HIDDEN) { 0x1 }
      const_attr_reader  :NIS_HIDDEN
      
      const_set_lazy(:NM_FIRST) { 0x0 }
      const_attr_reader  :NM_FIRST
      
      const_set_lazy(:NM_CLICK) { -0x2 }
      const_attr_reader  :NM_CLICK
      
      const_set_lazy(:NM_CUSTOMDRAW) { NM_FIRST - 12 }
      const_attr_reader  :NM_CUSTOMDRAW
      
      const_set_lazy(:NM_DBLCLK) { -0x3 }
      const_attr_reader  :NM_DBLCLK
      
      const_set_lazy(:NM_RECOGNIZEGESTURE) { NM_FIRST - 16 }
      const_attr_reader  :NM_RECOGNIZEGESTURE
      
      const_set_lazy(:NM_RELEASEDCAPTURE) { NM_FIRST - 16 }
      const_attr_reader  :NM_RELEASEDCAPTURE
      
      const_set_lazy(:NM_RETURN) { -0x4 }
      const_attr_reader  :NM_RETURN
      
      const_set_lazy(:NOTIFYICONDATAA_V2_SIZE) { _notifyicondataa_v2_size }
      const_attr_reader  :NOTIFYICONDATAA_V2_SIZE
      
      const_set_lazy(:NOTIFYICONDATAW_V2_SIZE) { _notifyicondataw_v2_size }
      const_attr_reader  :NOTIFYICONDATAW_V2_SIZE
      
      const_set_lazy(:NOTIFYICONDATA_V2_SIZE) { IsUnicode ? NOTIFYICONDATAW_V2_SIZE : NOTIFYICONDATAA_V2_SIZE }
      const_attr_reader  :NOTIFYICONDATA_V2_SIZE
      
      const_set_lazy(:NOTSRCCOPY) { 0x330008 }
      const_attr_reader  :NOTSRCCOPY
      
      const_set_lazy(:NULLREGION) { 0x1 }
      const_attr_reader  :NULLREGION
      
      const_set_lazy(:NULL_BRUSH) { 0x5 }
      const_attr_reader  :NULL_BRUSH
      
      const_set_lazy(:NULL_PEN) { 0x8 }
      const_attr_reader  :NULL_PEN
      
      const_set_lazy(:NUMRESERVED) { 106 }
      const_attr_reader  :NUMRESERVED
      
      const_set_lazy(:OBJID_WINDOW) { 0x0 }
      const_attr_reader  :OBJID_WINDOW
      
      const_set_lazy(:OBJID_SYSMENU) { -0x1 }
      const_attr_reader  :OBJID_SYSMENU
      
      const_set_lazy(:OBJID_TITLEBAR) { -0x2 }
      const_attr_reader  :OBJID_TITLEBAR
      
      const_set_lazy(:OBJID_MENU) { -0x3 }
      const_attr_reader  :OBJID_MENU
      
      const_set_lazy(:OBJID_CLIENT) { -0x4 }
      const_attr_reader  :OBJID_CLIENT
      
      const_set_lazy(:OBJID_VSCROLL) { -0x5 }
      const_attr_reader  :OBJID_VSCROLL
      
      const_set_lazy(:OBJID_HSCROLL) { -0x6 }
      const_attr_reader  :OBJID_HSCROLL
      
      const_set_lazy(:OBJID_SIZEGRIP) { -0x7 }
      const_attr_reader  :OBJID_SIZEGRIP
      
      const_set_lazy(:OBJID_CARET) { -0x8 }
      const_attr_reader  :OBJID_CARET
      
      const_set_lazy(:OBJID_CURSOR) { -0x9 }
      const_attr_reader  :OBJID_CURSOR
      
      const_set_lazy(:OBJID_ALERT) { -0xa }
      const_attr_reader  :OBJID_ALERT
      
      const_set_lazy(:OBJID_SOUND) { -0xb }
      const_attr_reader  :OBJID_SOUND
      
      const_set_lazy(:OBJID_QUERYCLASSNAMEIDX) { -0xc }
      const_attr_reader  :OBJID_QUERYCLASSNAMEIDX
      
      const_set_lazy(:OBJID_NATIVEOM) { -0x10 }
      const_attr_reader  :OBJID_NATIVEOM
      
      const_set_lazy(:OBJ_BITMAP) { 0x7 }
      const_attr_reader  :OBJ_BITMAP
      
      const_set_lazy(:OBJ_FONT) { 0x6 }
      const_attr_reader  :OBJ_FONT
      
      const_set_lazy(:OBJ_PEN) { 0x1 }
      const_attr_reader  :OBJ_PEN
      
      const_set_lazy(:OBM_CHECKBOXES) { 0x7ff7 }
      const_attr_reader  :OBM_CHECKBOXES
      
      const_set_lazy(:ODS_SELECTED) { 0x1 }
      const_attr_reader  :ODS_SELECTED
      
      const_set_lazy(:ODT_MENU) { 0x1 }
      const_attr_reader  :ODT_MENU
      
      const_set_lazy(:OFN_ALLOWMULTISELECT) { 0x200 }
      const_attr_reader  :OFN_ALLOWMULTISELECT
      
      const_set_lazy(:OFN_EXPLORER) { 0x80000 }
      const_attr_reader  :OFN_EXPLORER
      
      const_set_lazy(:OFN_ENABLEHOOK) { 0x20 }
      const_attr_reader  :OFN_ENABLEHOOK
      
      const_set_lazy(:OFN_ENABLESIZING) { 0x800000 }
      const_attr_reader  :OFN_ENABLESIZING
      
      const_set_lazy(:OFN_HIDEREADONLY) { 0x4 }
      const_attr_reader  :OFN_HIDEREADONLY
      
      const_set_lazy(:OFN_NOCHANGEDIR) { 0x8 }
      const_attr_reader  :OFN_NOCHANGEDIR
      
      const_set_lazy(:OFN_OVERWRITEPROMPT) { 0x2 }
      const_attr_reader  :OFN_OVERWRITEPROMPT
      
      const_set_lazy(:OIC_BANG) { 0x7f03 }
      const_attr_reader  :OIC_BANG
      
      const_set_lazy(:OIC_HAND) { 0x7f01 }
      const_attr_reader  :OIC_HAND
      
      const_set_lazy(:OIC_INFORMATION) { 0x7f04 }
      const_attr_reader  :OIC_INFORMATION
      
      const_set_lazy(:OIC_QUES) { 0x7f02 }
      const_attr_reader  :OIC_QUES
      
      const_set_lazy(:OIC_WINLOGO) { 0x7f05 }
      const_attr_reader  :OIC_WINLOGO
      
      const_set_lazy(:OPAQUE) { 0x2 }
      const_attr_reader  :OPAQUE
      
      const_set_lazy(:PATCOPY) { 0xf00021 }
      const_attr_reader  :PATCOPY
      
      const_set_lazy(:PATINVERT) { 0x5a0049 }
      const_attr_reader  :PATINVERT
      
      const_set_lazy(:PBM_GETPOS) { 0x408 }
      const_attr_reader  :PBM_GETPOS
      
      const_set_lazy(:PBM_GETRANGE) { 0x407 }
      const_attr_reader  :PBM_GETRANGE
      
      const_set_lazy(:PBM_GETSTATE) { 0x400 + 17 }
      const_attr_reader  :PBM_GETSTATE
      
      const_set_lazy(:PBM_SETBARCOLOR) { 0x409 }
      const_attr_reader  :PBM_SETBARCOLOR
      
      const_set_lazy(:PBM_SETBKCOLOR) { 0x2001 }
      const_attr_reader  :PBM_SETBKCOLOR
      
      const_set_lazy(:PBM_SETMARQUEE) { 0x400 + 10 }
      const_attr_reader  :PBM_SETMARQUEE
      
      const_set_lazy(:PBM_SETPOS) { 0x402 }
      const_attr_reader  :PBM_SETPOS
      
      const_set_lazy(:PBM_SETRANGE32) { 0x406 }
      const_attr_reader  :PBM_SETRANGE32
      
      const_set_lazy(:PBM_SETSTATE) { 0x400 + 16 }
      const_attr_reader  :PBM_SETSTATE
      
      const_set_lazy(:PBM_STEPIT) { 0x405 }
      const_attr_reader  :PBM_STEPIT
      
      const_set_lazy(:PBS_MARQUEE) { 0x8 }
      const_attr_reader  :PBS_MARQUEE
      
      const_set_lazy(:PBS_SMOOTH) { 0x1 }
      const_attr_reader  :PBS_SMOOTH
      
      const_set_lazy(:PBS_VERTICAL) { 0x4 }
      const_attr_reader  :PBS_VERTICAL
      
      const_set_lazy(:PBS_NORMAL) { 1 }
      const_attr_reader  :PBS_NORMAL
      
      const_set_lazy(:PBS_HOT) { 2 }
      const_attr_reader  :PBS_HOT
      
      const_set_lazy(:PBS_PRESSED) { 3 }
      const_attr_reader  :PBS_PRESSED
      
      const_set_lazy(:PBS_DISABLED) { 4 }
      const_attr_reader  :PBS_DISABLED
      
      const_set_lazy(:PBS_DEFAULTED) { 5 }
      const_attr_reader  :PBS_DEFAULTED
      
      const_set_lazy(:PBST_NORMAL) { 0x1 }
      const_attr_reader  :PBST_NORMAL
      
      const_set_lazy(:PBST_ERROR) { 0x2 }
      const_attr_reader  :PBST_ERROR
      
      const_set_lazy(:PBST_PAUSED) { 0x3 }
      const_attr_reader  :PBST_PAUSED
      
      const_set_lazy(:PD_ALLPAGES) { 0x0 }
      const_attr_reader  :PD_ALLPAGES
      
      const_set_lazy(:PD_COLLATE) { 0x10 }
      const_attr_reader  :PD_COLLATE
      
      const_set_lazy(:PD_PAGENUMS) { 0x2 }
      const_attr_reader  :PD_PAGENUMS
      
      const_set_lazy(:PD_PRINTTOFILE) { 0x20 }
      const_attr_reader  :PD_PRINTTOFILE
      
      const_set_lazy(:PD_RETURNDC) { 0x100 }
      const_attr_reader  :PD_RETURNDC
      
      const_set_lazy(:PD_RETURNDEFAULT) { 0x400 }
      const_attr_reader  :PD_RETURNDEFAULT
      
      const_set_lazy(:PD_SELECTION) { 0x1 }
      const_attr_reader  :PD_SELECTION
      
      const_set_lazy(:PD_USEDEVMODECOPIESANDCOLLATE) { 0x40000 }
      const_attr_reader  :PD_USEDEVMODECOPIESANDCOLLATE
      
      const_set_lazy(:PT_CLOSEFIGURE) { 1 }
      const_attr_reader  :PT_CLOSEFIGURE
      
      const_set_lazy(:PT_LINETO) { 2 }
      const_attr_reader  :PT_LINETO
      
      const_set_lazy(:PT_BEZIERTO) { 4 }
      const_attr_reader  :PT_BEZIERTO
      
      const_set_lazy(:PT_MOVETO) { 6 }
      const_attr_reader  :PT_MOVETO
      
      const_set_lazy(:PFM_TABSTOPS) { 0x10 }
      const_attr_reader  :PFM_TABSTOPS
      
      const_set_lazy(:PHYSICALHEIGHT) { 0x6f }
      const_attr_reader  :PHYSICALHEIGHT
      
      const_set_lazy(:PHYSICALOFFSETX) { 0x70 }
      const_attr_reader  :PHYSICALOFFSETX
      
      const_set_lazy(:PHYSICALOFFSETY) { 0x71 }
      const_attr_reader  :PHYSICALOFFSETY
      
      const_set_lazy(:PHYSICALWIDTH) { 0x6e }
      const_attr_reader  :PHYSICALWIDTH
      
      const_set_lazy(:PLANES) { 0xe }
      const_attr_reader  :PLANES
      
      const_set_lazy(:PM_NOREMOVE) { 0x0 }
      const_attr_reader  :PM_NOREMOVE
      
      const_set_lazy(:PM_NOYIELD) { 0x2 }
      const_attr_reader  :PM_NOYIELD
      
      const_set_lazy(:QS_HOTKEY) { 0x80 }
      const_attr_reader  :QS_HOTKEY
      
      const_set_lazy(:QS_KEY) { 0x1 }
      const_attr_reader  :QS_KEY
      
      const_set_lazy(:QS_MOUSEMOVE) { 0x2 }
      const_attr_reader  :QS_MOUSEMOVE
      
      const_set_lazy(:QS_MOUSEBUTTON) { 0x4 }
      const_attr_reader  :QS_MOUSEBUTTON
      
      const_set_lazy(:QS_MOUSE) { QS_MOUSEMOVE | QS_MOUSEBUTTON }
      const_attr_reader  :QS_MOUSE
      
      const_set_lazy(:QS_INPUT) { QS_KEY | QS_MOUSE }
      const_attr_reader  :QS_INPUT
      
      const_set_lazy(:QS_POSTMESSAGE) { 0x8 }
      const_attr_reader  :QS_POSTMESSAGE
      
      const_set_lazy(:QS_TIMER) { 0x10 }
      const_attr_reader  :QS_TIMER
      
      const_set_lazy(:QS_PAINT) { 0x20 }
      const_attr_reader  :QS_PAINT
      
      const_set_lazy(:QS_SENDMESSAGE) { 0x40 }
      const_attr_reader  :QS_SENDMESSAGE
      
      const_set_lazy(:QS_ALLINPUT) { QS_MOUSEMOVE | QS_MOUSEBUTTON | QS_KEY | QS_POSTMESSAGE | QS_TIMER | QS_PAINT | QS_SENDMESSAGE }
      const_attr_reader  :QS_ALLINPUT
      
      const_set_lazy(:PM_QS_INPUT) { QS_INPUT << 16 }
      const_attr_reader  :PM_QS_INPUT
      
      const_set_lazy(:PM_QS_POSTMESSAGE) { (QS_POSTMESSAGE | QS_HOTKEY | QS_TIMER) << 16 }
      const_attr_reader  :PM_QS_POSTMESSAGE
      
      const_set_lazy(:PM_QS_PAINT) { QS_PAINT << 16 }
      const_attr_reader  :PM_QS_PAINT
      
      const_set_lazy(:PM_QS_SENDMESSAGE) { QS_SENDMESSAGE << 16 }
      const_attr_reader  :PM_QS_SENDMESSAGE
      
      const_set_lazy(:PM_REMOVE) { 0x1 }
      const_attr_reader  :PM_REMOVE
      
      const_set_lazy(:PROGRESS_CLASS) { "msctls_progress32" }
      const_attr_reader  :PROGRESS_CLASS
      
      # $NON-NLS-1$
      const_set_lazy(:PP_BAR) { 1 }
      const_attr_reader  :PP_BAR
      
      const_set_lazy(:PP_BARVERT) { 2 }
      const_attr_reader  :PP_BARVERT
      
      const_set_lazy(:PP_CHUNK) { 3 }
      const_attr_reader  :PP_CHUNK
      
      const_set_lazy(:PP_CHUNKVERT) { 4 }
      const_attr_reader  :PP_CHUNKVERT
      
      const_set_lazy(:PRF_CHILDREN) { 16 }
      const_attr_reader  :PRF_CHILDREN
      
      const_set_lazy(:PRF_CLIENT) { 0x4 }
      const_attr_reader  :PRF_CLIENT
      
      const_set_lazy(:PRF_ERASEBKGND) { 0x8 }
      const_attr_reader  :PRF_ERASEBKGND
      
      const_set_lazy(:PRF_NONCLIENT) { 0x2 }
      const_attr_reader  :PRF_NONCLIENT
      
      const_set_lazy(:PROGRESSCHUNKSIZE) { 2411 }
      const_attr_reader  :PROGRESSCHUNKSIZE
      
      const_set_lazy(:PROGRESSSPACESIZE) { 2412 }
      const_attr_reader  :PROGRESSSPACESIZE
      
      const_set_lazy(:PS_DASH) { 0x1 }
      const_attr_reader  :PS_DASH
      
      const_set_lazy(:PS_DASHDOT) { 0x3 }
      const_attr_reader  :PS_DASHDOT
      
      const_set_lazy(:PS_DASHDOTDOT) { 0x4 }
      const_attr_reader  :PS_DASHDOTDOT
      
      const_set_lazy(:PS_DOT) { 0x2 }
      const_attr_reader  :PS_DOT
      
      const_set_lazy(:PS_ENDCAP_FLAT) { 0x200 }
      const_attr_reader  :PS_ENDCAP_FLAT
      
      const_set_lazy(:PS_ENDCAP_SQUARE) { 0x100 }
      const_attr_reader  :PS_ENDCAP_SQUARE
      
      const_set_lazy(:PS_ENDCAP_ROUND) { 0x0 }
      const_attr_reader  :PS_ENDCAP_ROUND
      
      const_set_lazy(:PS_ENDCAP_MASK) { 0xf00 }
      const_attr_reader  :PS_ENDCAP_MASK
      
      const_set_lazy(:PS_GEOMETRIC) { 0x10000 }
      const_attr_reader  :PS_GEOMETRIC
      
      const_set_lazy(:PS_JOIN_BEVEL) { 0x1000 }
      const_attr_reader  :PS_JOIN_BEVEL
      
      const_set_lazy(:PS_JOIN_MASK) { 0xf000 }
      const_attr_reader  :PS_JOIN_MASK
      
      const_set_lazy(:PS_JOIN_MITER) { 0x2000 }
      const_attr_reader  :PS_JOIN_MITER
      
      const_set_lazy(:PS_JOIN_ROUND) { 0x0 }
      const_attr_reader  :PS_JOIN_ROUND
      
      const_set_lazy(:PS_SOLID) { 0x0 }
      const_attr_reader  :PS_SOLID
      
      const_set_lazy(:PS_STYLE_MASK) { 0xf }
      const_attr_reader  :PS_STYLE_MASK
      
      const_set_lazy(:PS_TYPE_MASK) { 0xf0000 }
      const_attr_reader  :PS_TYPE_MASK
      
      const_set_lazy(:PS_USERSTYLE) { 0x7 }
      const_attr_reader  :PS_USERSTYLE
      
      const_set_lazy(:R2_COPYPEN) { 0xd }
      const_attr_reader  :R2_COPYPEN
      
      const_set_lazy(:R2_XORPEN) { 0x7 }
      const_attr_reader  :R2_XORPEN
      
      const_set_lazy(:RASTERCAPS) { 0x26 }
      const_attr_reader  :RASTERCAPS
      
      const_set_lazy(:RASTER_FONTTYPE) { 0x1 }
      const_attr_reader  :RASTER_FONTTYPE
      
      const_set_lazy(:RBBIM_CHILD) { 0x10 }
      const_attr_reader  :RBBIM_CHILD
      
      const_set_lazy(:RBBIM_CHILDSIZE) { 0x20 }
      const_attr_reader  :RBBIM_CHILDSIZE
      
      const_set_lazy(:RBBIM_COLORS) { 0x2 }
      const_attr_reader  :RBBIM_COLORS
      
      const_set_lazy(:RBBIM_HEADERSIZE) { 0x800 }
      const_attr_reader  :RBBIM_HEADERSIZE
      
      const_set_lazy(:RBBIM_ID) { 0x100 }
      const_attr_reader  :RBBIM_ID
      
      const_set_lazy(:RBBIM_IDEALSIZE) { 0x200 }
      const_attr_reader  :RBBIM_IDEALSIZE
      
      const_set_lazy(:RBBIM_SIZE) { 0x40 }
      const_attr_reader  :RBBIM_SIZE
      
      const_set_lazy(:RBBIM_STYLE) { 0x1 }
      const_attr_reader  :RBBIM_STYLE
      
      const_set_lazy(:RBBIM_TEXT) { 0x4 }
      const_attr_reader  :RBBIM_TEXT
      
      const_set_lazy(:RBBS_BREAK) { 0x1 }
      const_attr_reader  :RBBS_BREAK
      
      const_set_lazy(:RBBS_GRIPPERALWAYS) { 0x80 }
      const_attr_reader  :RBBS_GRIPPERALWAYS
      
      const_set_lazy(:RBBS_NOGRIPPER) { 0x100 }
      const_attr_reader  :RBBS_NOGRIPPER
      
      const_set_lazy(:RBBS_USECHEVRON) { 0x200 }
      const_attr_reader  :RBBS_USECHEVRON
      
      const_set_lazy(:RBBS_VARIABLEHEIGHT) { 0x40 }
      const_attr_reader  :RBBS_VARIABLEHEIGHT
      
      const_set_lazy(:RBN_FIRST) { -0x33f }
      const_attr_reader  :RBN_FIRST
      
      const_set_lazy(:RBN_BEGINDRAG) { RBN_FIRST - 4 }
      const_attr_reader  :RBN_BEGINDRAG
      
      const_set_lazy(:RBN_CHILDSIZE) { RBN_FIRST - 8 }
      const_attr_reader  :RBN_CHILDSIZE
      
      const_set_lazy(:RBN_CHEVRONPUSHED) { RBN_FIRST - 10 }
      const_attr_reader  :RBN_CHEVRONPUSHED
      
      const_set_lazy(:RBN_HEIGHTCHANGE) { -0x33f }
      const_attr_reader  :RBN_HEIGHTCHANGE
      
      const_set_lazy(:RBS_DBLCLKTOGGLE) { 0x8000 }
      const_attr_reader  :RBS_DBLCLKTOGGLE
      
      const_set_lazy(:RBS_BANDBORDERS) { 0x400 }
      const_attr_reader  :RBS_BANDBORDERS
      
      const_set_lazy(:RBS_VARHEIGHT) { 0x200 }
      const_attr_reader  :RBS_VARHEIGHT
      
      const_set_lazy(:RB_DELETEBAND) { 0x402 }
      const_attr_reader  :RB_DELETEBAND
      
      const_set_lazy(:RB_GETBANDBORDERS) { 0x422 }
      const_attr_reader  :RB_GETBANDBORDERS
      
      const_set_lazy(:RB_GETBANDCOUNT) { 0x40c }
      const_attr_reader  :RB_GETBANDCOUNT
      
      const_set_lazy(:RB_GETBANDINFO) { IsUnicode ? 0x41c : 0x41d }
      const_attr_reader  :RB_GETBANDINFO
      
      const_set_lazy(:RB_GETBANDMARGINS) { 0x428 }
      const_attr_reader  :RB_GETBANDMARGINS
      
      const_set_lazy(:RB_GETBARHEIGHT) { 0x41b }
      const_attr_reader  :RB_GETBARHEIGHT
      
      const_set_lazy(:RB_GETBKCOLOR) { 0x414 }
      const_attr_reader  :RB_GETBKCOLOR
      
      const_set_lazy(:RB_GETRECT) { 0x409 }
      const_attr_reader  :RB_GETRECT
      
      const_set_lazy(:RB_GETTEXTCOLOR) { 0x416 }
      const_attr_reader  :RB_GETTEXTCOLOR
      
      const_set_lazy(:RB_IDTOINDEX) { 0x410 }
      const_attr_reader  :RB_IDTOINDEX
      
      const_set_lazy(:RB_INSERTBAND) { IsUnicode ? 0x40a : 0x401 }
      const_attr_reader  :RB_INSERTBAND
      
      const_set_lazy(:RB_MOVEBAND) { 0x427 }
      const_attr_reader  :RB_MOVEBAND
      
      const_set_lazy(:RB_SETBANDINFO) { IsUnicode ? 0x40b : 0x406 }
      const_attr_reader  :RB_SETBANDINFO
      
      const_set_lazy(:RB_SETBKCOLOR) { 0x413 }
      const_attr_reader  :RB_SETBKCOLOR
      
      const_set_lazy(:RB_SETTEXTCOLOR) { 0x415 }
      const_attr_reader  :RB_SETTEXTCOLOR
      
      const_set_lazy(:RC_BITBLT) { 0x1 }
      const_attr_reader  :RC_BITBLT
      
      const_set_lazy(:RC_PALETTE) { 0x100 }
      const_attr_reader  :RC_PALETTE
      
      const_set_lazy(:RDW_ALLCHILDREN) { 0x80 }
      const_attr_reader  :RDW_ALLCHILDREN
      
      const_set_lazy(:RDW_ERASE) { 0x4 }
      const_attr_reader  :RDW_ERASE
      
      const_set_lazy(:RDW_FRAME) { 0x400 }
      const_attr_reader  :RDW_FRAME
      
      const_set_lazy(:RDW_INVALIDATE) { 0x1 }
      const_attr_reader  :RDW_INVALIDATE
      
      const_set_lazy(:RDW_UPDATENOW) { 0x100 }
      const_attr_reader  :RDW_UPDATENOW
      
      const_set_lazy(:READ_CONTROL) { 0x20000 }
      const_attr_reader  :READ_CONTROL
      
      const_set_lazy(:REBARCLASSNAME) { "ReBarWindow32" }
      const_attr_reader  :REBARCLASSNAME
      
      # $NON-NLS-1$
      const_set_lazy(:RGN_AND) { 0x1 }
      const_attr_reader  :RGN_AND
      
      const_set_lazy(:RGN_COPY) { 5 }
      const_attr_reader  :RGN_COPY
      
      const_set_lazy(:RGN_DIFF) { 0x4 }
      const_attr_reader  :RGN_DIFF
      
      const_set_lazy(:RGN_ERROR) { 0 }
      const_attr_reader  :RGN_ERROR
      
      const_set_lazy(:RGN_OR) { 0x2 }
      const_attr_reader  :RGN_OR
      
      const_set_lazy(:RP_BAND) { 3 }
      const_attr_reader  :RP_BAND
      
      const_set_lazy(:SBP_ARROWBTN) { 0x1 }
      const_attr_reader  :SBP_ARROWBTN
      
      const_set_lazy(:SBP_THUMBBTNHORZ) { 2 }
      const_attr_reader  :SBP_THUMBBTNHORZ
      
      const_set_lazy(:SBP_THUMBBTNVERT) { 3 }
      const_attr_reader  :SBP_THUMBBTNVERT
      
      const_set_lazy(:SBP_LOWERTRACKHORZ) { 4 }
      const_attr_reader  :SBP_LOWERTRACKHORZ
      
      const_set_lazy(:SBP_UPPERTRACKHORZ) { 5 }
      const_attr_reader  :SBP_UPPERTRACKHORZ
      
      const_set_lazy(:SBP_LOWERTRACKVERT) { 6 }
      const_attr_reader  :SBP_LOWERTRACKVERT
      
      const_set_lazy(:SBP_UPPERTRACKVERT) { 7 }
      const_attr_reader  :SBP_UPPERTRACKVERT
      
      const_set_lazy(:SBP_GRIPPERHORZ) { 8 }
      const_attr_reader  :SBP_GRIPPERHORZ
      
      const_set_lazy(:SBP_GRIPPERVERT) { 9 }
      const_attr_reader  :SBP_GRIPPERVERT
      
      const_set_lazy(:SBP_SIZEBOX) { 10 }
      const_attr_reader  :SBP_SIZEBOX
      
      const_set_lazy(:SBS_HORZ) { 0x0 }
      const_attr_reader  :SBS_HORZ
      
      const_set_lazy(:SBS_VERT) { 0x1 }
      const_attr_reader  :SBS_VERT
      
      const_set_lazy(:SB_BOTH) { 0x3 }
      const_attr_reader  :SB_BOTH
      
      const_set_lazy(:SB_BOTTOM) { 0x7 }
      const_attr_reader  :SB_BOTTOM
      
      const_set_lazy(:SB_CTL) { 0x2 }
      const_attr_reader  :SB_CTL
      
      const_set_lazy(:SB_ENDSCROLL) { 0x8 }
      const_attr_reader  :SB_ENDSCROLL
      
      const_set_lazy(:SB_HORZ) { 0x0 }
      const_attr_reader  :SB_HORZ
      
      const_set_lazy(:SB_LINEDOWN) { 0x1 }
      const_attr_reader  :SB_LINEDOWN
      
      const_set_lazy(:SB_LINEUP) { 0x0 }
      const_attr_reader  :SB_LINEUP
      
      const_set_lazy(:SB_PAGEDOWN) { 0x3 }
      const_attr_reader  :SB_PAGEDOWN
      
      const_set_lazy(:SB_PAGEUP) { 0x2 }
      const_attr_reader  :SB_PAGEUP
      
      const_set_lazy(:SB_THUMBPOSITION) { 0x4 }
      const_attr_reader  :SB_THUMBPOSITION
      
      const_set_lazy(:SB_THUMBTRACK) { 0x5 }
      const_attr_reader  :SB_THUMBTRACK
      
      const_set_lazy(:SB_TOP) { 0x6 }
      const_attr_reader  :SB_TOP
      
      const_set_lazy(:SB_VERT) { 0x1 }
      const_attr_reader  :SB_VERT
      
      const_set_lazy(:SCF_ALL) { 0x4 }
      const_attr_reader  :SCF_ALL
      
      const_set_lazy(:SCF_DEFAULT) { 0x0 }
      const_attr_reader  :SCF_DEFAULT
      
      const_set_lazy(:SCF_SELECTION) { 0x1 }
      const_attr_reader  :SCF_SELECTION
      
      const_set_lazy(:SC_CLOSE) { 0xf060 }
      const_attr_reader  :SC_CLOSE
      
      const_set_lazy(:SC_HSCROLL) { 0xf080 }
      const_attr_reader  :SC_HSCROLL
      
      const_set_lazy(:SC_KEYMENU) { 0xf100 }
      const_attr_reader  :SC_KEYMENU
      
      const_set_lazy(:SC_MAXIMIZE) { 0xf030 }
      const_attr_reader  :SC_MAXIMIZE
      
      const_set_lazy(:SC_MINIMIZE) { 0xf020 }
      const_attr_reader  :SC_MINIMIZE
      
      const_set_lazy(:SC_NEXTWINDOW) { 0xf040 }
      const_attr_reader  :SC_NEXTWINDOW
      
      const_set_lazy(:SC_RESTORE) { 0xf120 }
      const_attr_reader  :SC_RESTORE
      
      const_set_lazy(:SC_SIZE) { 0xf000 }
      const_attr_reader  :SC_SIZE
      
      const_set_lazy(:SC_TASKLIST) { 0xf130 }
      const_attr_reader  :SC_TASKLIST
      
      const_set_lazy(:SC_VSCROLL) { 0xf070 }
      const_attr_reader  :SC_VSCROLL
      
      const_set_lazy(:SCRBS_NORMAL) { 1 }
      const_attr_reader  :SCRBS_NORMAL
      
      const_set_lazy(:SCRBS_HOT) { 2 }
      const_attr_reader  :SCRBS_HOT
      
      const_set_lazy(:SCRBS_PRESSED) { 3 }
      const_attr_reader  :SCRBS_PRESSED
      
      const_set_lazy(:SCRBS_DISABLED) { 4 }
      const_attr_reader  :SCRBS_DISABLED
      
      const_set_lazy(:SEM_FAILCRITICALERRORS) { 0x1 }
      const_attr_reader  :SEM_FAILCRITICALERRORS
      
      const_set_lazy(:SET_FEATURE_ON_PROCESS) { 0x2 }
      const_attr_reader  :SET_FEATURE_ON_PROCESS
      
      const_set_lazy(:SF_RTF) { 0x2 }
      const_attr_reader  :SF_RTF
      
      const_set_lazy(:SHCMBF_HIDDEN) { 0x2 }
      const_attr_reader  :SHCMBF_HIDDEN
      
      const_set_lazy(:SHCMBM_OVERRIDEKEY) { 0x400 + 403 }
      const_attr_reader  :SHCMBM_OVERRIDEKEY
      
      const_set_lazy(:SHCMBM_SETSUBMENU) { 0x590 }
      const_attr_reader  :SHCMBM_SETSUBMENU
      
      const_set_lazy(:SHCMBM_GETSUBMENU) { 0x591 }
      const_attr_reader  :SHCMBM_GETSUBMENU
      
      const_set_lazy(:SHGFI_ICON) { 0x100 }
      const_attr_reader  :SHGFI_ICON
      
      const_set_lazy(:SHGFI_SMALLICON) { 0x1 }
      const_attr_reader  :SHGFI_SMALLICON
      
      const_set_lazy(:SHGFI_USEFILEATTRIBUTES) { 0x10 }
      const_attr_reader  :SHGFI_USEFILEATTRIBUTES
      
      const_set_lazy(:SHMBOF_NODEFAULT) { 0x1 }
      const_attr_reader  :SHMBOF_NODEFAULT
      
      const_set_lazy(:SHMBOF_NOTIFY) { 0x2 }
      const_attr_reader  :SHMBOF_NOTIFY
      
      const_set_lazy(:SHRG_RETURNCMD) { 0x1 }
      const_attr_reader  :SHRG_RETURNCMD
      
      const_set_lazy(:SIF_ALL) { 0x17 }
      const_attr_reader  :SIF_ALL
      
      const_set_lazy(:SIF_DISABLENOSCROLL) { 0x8 }
      const_attr_reader  :SIF_DISABLENOSCROLL
      
      const_set_lazy(:SIF_PAGE) { 0x2 }
      const_attr_reader  :SIF_PAGE
      
      const_set_lazy(:SIF_POS) { 0x4 }
      const_attr_reader  :SIF_POS
      
      const_set_lazy(:SIF_RANGE) { 0x1 }
      const_attr_reader  :SIF_RANGE
      
      const_set_lazy(:SIF_TRACKPOS) { 0x10 }
      const_attr_reader  :SIF_TRACKPOS
      
      const_set_lazy(:SIP_DOWN) { 1 }
      const_attr_reader  :SIP_DOWN
      
      const_set_lazy(:SIP_UP) { 0 }
      const_attr_reader  :SIP_UP
      
      const_set_lazy(:SIPF_ON) { 0x1 }
      const_attr_reader  :SIPF_ON
      
      const_set_lazy(:SIZE_RESTORED) { 0 }
      const_attr_reader  :SIZE_RESTORED
      
      const_set_lazy(:SIZE_MINIMIZED) { 1 }
      const_attr_reader  :SIZE_MINIMIZED
      
      const_set_lazy(:SIZE_MAXIMIZED) { 2 }
      const_attr_reader  :SIZE_MAXIMIZED
      
      const_set_lazy(:SIZEPALETTE) { 104 }
      const_attr_reader  :SIZEPALETTE
      
      const_set_lazy(:SM_CMONITORS) { 80 }
      const_attr_reader  :SM_CMONITORS
      
      const_set_lazy(:SM_CXBORDER) { 0x5 }
      const_attr_reader  :SM_CXBORDER
      
      const_set_lazy(:SM_CXCURSOR) { 0xd }
      const_attr_reader  :SM_CXCURSOR
      
      const_set_lazy(:SM_CXDOUBLECLK) { 36 }
      const_attr_reader  :SM_CXDOUBLECLK
      
      const_set_lazy(:SM_CYDOUBLECLK) { 37 }
      const_attr_reader  :SM_CYDOUBLECLK
      
      const_set_lazy(:SM_CXEDGE) { 0x2d }
      const_attr_reader  :SM_CXEDGE
      
      const_set_lazy(:SM_CXFOCUSBORDER) { 83 }
      const_attr_reader  :SM_CXFOCUSBORDER
      
      const_set_lazy(:SM_CXHSCROLL) { 0x15 }
      const_attr_reader  :SM_CXHSCROLL
      
      const_set_lazy(:SM_CXICON) { 0xb }
      const_attr_reader  :SM_CXICON
      
      const_set_lazy(:SM_CYICON) { 0xc }
      const_attr_reader  :SM_CYICON
      
      const_set_lazy(:SM_CXVIRTUALSCREEN) { 78 }
      const_attr_reader  :SM_CXVIRTUALSCREEN
      
      const_set_lazy(:SM_CYVIRTUALSCREEN) { 79 }
      const_attr_reader  :SM_CYVIRTUALSCREEN
      
      const_set_lazy(:SM_CXSMICON) { 49 }
      const_attr_reader  :SM_CXSMICON
      
      const_set_lazy(:SM_CYSMICON) { 50 }
      const_attr_reader  :SM_CYSMICON
      
      const_set_lazy(:SM_CXSCREEN) { 0x0 }
      const_attr_reader  :SM_CXSCREEN
      
      const_set_lazy(:SM_XVIRTUALSCREEN) { 76 }
      const_attr_reader  :SM_XVIRTUALSCREEN
      
      const_set_lazy(:SM_YVIRTUALSCREEN) { 77 }
      const_attr_reader  :SM_YVIRTUALSCREEN
      
      const_set_lazy(:SM_CXVSCROLL) { 0x2 }
      const_attr_reader  :SM_CXVSCROLL
      
      const_set_lazy(:SM_CYBORDER) { 0x6 }
      const_attr_reader  :SM_CYBORDER
      
      const_set_lazy(:SM_CYCURSOR) { 0xe }
      const_attr_reader  :SM_CYCURSOR
      
      const_set_lazy(:SM_CYFOCUSBORDER) { 84 }
      const_attr_reader  :SM_CYFOCUSBORDER
      
      const_set_lazy(:SM_CYHSCROLL) { 0x3 }
      const_attr_reader  :SM_CYHSCROLL
      
      const_set_lazy(:SM_CYMENU) { 0xf }
      const_attr_reader  :SM_CYMENU
      
      const_set_lazy(:SM_CXMINTRACK) { 34 }
      const_attr_reader  :SM_CXMINTRACK
      
      const_set_lazy(:SM_CYMINTRACK) { 35 }
      const_attr_reader  :SM_CYMINTRACK
      
      const_set_lazy(:SM_CMOUSEBUTTONS) { 43 }
      const_attr_reader  :SM_CMOUSEBUTTONS
      
      const_set_lazy(:SM_CYSCREEN) { 0x1 }
      const_attr_reader  :SM_CYSCREEN
      
      const_set_lazy(:SM_CYVSCROLL) { 0x14 }
      const_attr_reader  :SM_CYVSCROLL
      
      # public static final int SM_DBCSENABLED = 0x2A;
      # public static final int SM_IMMENABLED = 0x52;
      const_set_lazy(:SPI_GETFONTSMOOTHINGTYPE) { 0x200a }
      const_attr_reader  :SPI_GETFONTSMOOTHINGTYPE
      
      const_set_lazy(:SPI_GETHIGHCONTRAST) { 66 }
      const_attr_reader  :SPI_GETHIGHCONTRAST
      
      const_set_lazy(:SPI_GETWORKAREA) { 0x30 }
      const_attr_reader  :SPI_GETWORKAREA
      
      const_set_lazy(:SPI_GETMOUSEVANISH) { 0x1020 }
      const_attr_reader  :SPI_GETMOUSEVANISH
      
      const_set_lazy(:SPI_GETNONCLIENTMETRICS) { 41 }
      const_attr_reader  :SPI_GETNONCLIENTMETRICS
      
      const_set_lazy(:SPI_GETWHEELSCROLLLINES) { 104 }
      const_attr_reader  :SPI_GETWHEELSCROLLLINES
      
      const_set_lazy(:SPI_GETCARETWIDTH) { 0x2006 }
      const_attr_reader  :SPI_GETCARETWIDTH
      
      const_set_lazy(:SPI_SETSIPINFO) { 224 }
      const_attr_reader  :SPI_SETSIPINFO
      
      const_set_lazy(:SPI_SETHIGHCONTRAST) { 67 }
      const_attr_reader  :SPI_SETHIGHCONTRAST
      
      const_set_lazy(:SRCAND) { 0x8800c6 }
      const_attr_reader  :SRCAND
      
      const_set_lazy(:SRCCOPY) { 0xcc0020 }
      const_attr_reader  :SRCCOPY
      
      const_set_lazy(:SRCINVERT) { 0x660046 }
      const_attr_reader  :SRCINVERT
      
      const_set_lazy(:SRCPAINT) { 0xee0086 }
      const_attr_reader  :SRCPAINT
      
      const_set_lazy(:SS_BITMAP) { 0xe }
      const_attr_reader  :SS_BITMAP
      
      const_set_lazy(:SS_CENTER) { 0x1 }
      const_attr_reader  :SS_CENTER
      
      const_set_lazy(:SS_CENTERIMAGE) { 0x200 }
      const_attr_reader  :SS_CENTERIMAGE
      
      const_set_lazy(:SS_EDITCONTROL) { 0x2000 }
      const_attr_reader  :SS_EDITCONTROL
      
      const_set_lazy(:SS_ICON) { 0x3 }
      const_attr_reader  :SS_ICON
      
      const_set_lazy(:SS_LEFT) { 0x0 }
      const_attr_reader  :SS_LEFT
      
      const_set_lazy(:SS_LEFTNOWORDWRAP) { 0xc }
      const_attr_reader  :SS_LEFTNOWORDWRAP
      
      const_set_lazy(:SS_NOTIFY) { 0x100 }
      const_attr_reader  :SS_NOTIFY
      
      const_set_lazy(:SS_OWNERDRAW) { 0xd }
      const_attr_reader  :SS_OWNERDRAW
      
      const_set_lazy(:SS_REALSIZEIMAGE) { 0x800 }
      const_attr_reader  :SS_REALSIZEIMAGE
      
      const_set_lazy(:SS_RIGHT) { 0x2 }
      const_attr_reader  :SS_RIGHT
      
      const_set_lazy(:SSA_FALLBACK) { 0x20 }
      const_attr_reader  :SSA_FALLBACK
      
      const_set_lazy(:SSA_GLYPHS) { 0x80 }
      const_attr_reader  :SSA_GLYPHS
      
      const_set_lazy(:SSA_METAFILE) { 0x800 }
      const_attr_reader  :SSA_METAFILE
      
      const_set_lazy(:SSA_LINK) { 0x1000 }
      const_attr_reader  :SSA_LINK
      
      const_set_lazy(:STANDARD_RIGHTS_READ) { 0x20000 }
      const_attr_reader  :STANDARD_RIGHTS_READ
      
      const_set_lazy(:STARTF_USESHOWWINDOW) { 0x1 }
      const_attr_reader  :STARTF_USESHOWWINDOW
      
      const_set_lazy(:STATE_SYSTEM_INVISIBLE) { 0x8000 }
      const_attr_reader  :STATE_SYSTEM_INVISIBLE
      
      const_set_lazy(:STATE_SYSTEM_OFFSCREEN) { 0x10000 }
      const_attr_reader  :STATE_SYSTEM_OFFSCREEN
      
      const_set_lazy(:STATE_SYSTEM_UNAVAILABLE) { 0x1 }
      const_attr_reader  :STATE_SYSTEM_UNAVAILABLE
      
      const_set_lazy(:STD_COPY) { 0x1 }
      const_attr_reader  :STD_COPY
      
      const_set_lazy(:STD_CUT) { 0x0 }
      const_attr_reader  :STD_CUT
      
      const_set_lazy(:STD_FILENEW) { 0x6 }
      const_attr_reader  :STD_FILENEW
      
      const_set_lazy(:STD_FILEOPEN) { 0x7 }
      const_attr_reader  :STD_FILEOPEN
      
      const_set_lazy(:STD_FILESAVE) { 0x8 }
      const_attr_reader  :STD_FILESAVE
      
      const_set_lazy(:STD_PASTE) { 0x2 }
      const_attr_reader  :STD_PASTE
      
      const_set_lazy(:STM_GETIMAGE) { 0x173 }
      const_attr_reader  :STM_GETIMAGE
      
      const_set_lazy(:STM_SETIMAGE) { 0x172 }
      const_attr_reader  :STM_SETIMAGE
      
      const_set_lazy(:SWP_ASYNCWINDOWPOS) { 0x4000 }
      const_attr_reader  :SWP_ASYNCWINDOWPOS
      
      const_set_lazy(:SWP_DRAWFRAME) { 0x20 }
      const_attr_reader  :SWP_DRAWFRAME
      
      const_set_lazy(:SWP_NOACTIVATE) { 0x10 }
      const_attr_reader  :SWP_NOACTIVATE
      
      const_set_lazy(:SWP_NOCOPYBITS) { 0x100 }
      const_attr_reader  :SWP_NOCOPYBITS
      
      const_set_lazy(:SWP_NOMOVE) { 0x2 }
      const_attr_reader  :SWP_NOMOVE
      
      const_set_lazy(:SWP_NOREDRAW) { 0x8 }
      const_attr_reader  :SWP_NOREDRAW
      
      const_set_lazy(:SWP_NOSIZE) { 0x1 }
      const_attr_reader  :SWP_NOSIZE
      
      const_set_lazy(:SWP_NOZORDER) { 0x4 }
      const_attr_reader  :SWP_NOZORDER
      
      const_set_lazy(:SW_ERASE) { 0x4 }
      const_attr_reader  :SW_ERASE
      
      const_set_lazy(:SW_HIDE) { 0x0 }
      const_attr_reader  :SW_HIDE
      
      const_set_lazy(:SW_INVALIDATE) { 0x2 }
      const_attr_reader  :SW_INVALIDATE
      
      const_set_lazy(:SW_MINIMIZE) { 0x6 }
      const_attr_reader  :SW_MINIMIZE
      
      const_set_lazy(:SW_PARENTOPENING) { 0x3 }
      const_attr_reader  :SW_PARENTOPENING
      
      const_set_lazy(:SW_RESTORE) { IsWinCE ? 0xd : 0x9 }
      const_attr_reader  :SW_RESTORE
      
      const_set_lazy(:SW_SCROLLCHILDREN) { 0x1 }
      const_attr_reader  :SW_SCROLLCHILDREN
      
      const_set_lazy(:SW_SHOW) { 0x5 }
      const_attr_reader  :SW_SHOW
      
      const_set_lazy(:SW_SHOWMAXIMIZED) { IsWinCE ? 0xb : 0x3 }
      const_attr_reader  :SW_SHOWMAXIMIZED
      
      const_set_lazy(:SW_SHOWMINIMIZED) { 0x2 }
      const_attr_reader  :SW_SHOWMINIMIZED
      
      const_set_lazy(:SW_SHOWMINNOACTIVE) { 0x7 }
      const_attr_reader  :SW_SHOWMINNOACTIVE
      
      const_set_lazy(:SW_SHOWNA) { 0x8 }
      const_attr_reader  :SW_SHOWNA
      
      const_set_lazy(:SW_SHOWNOACTIVATE) { 0x4 }
      const_attr_reader  :SW_SHOWNOACTIVATE
      
      const_set_lazy(:SYNCHRONIZE) { 0x100000 }
      const_attr_reader  :SYNCHRONIZE
      
      const_set_lazy(:SYSRGN) { 0x4 }
      const_attr_reader  :SYSRGN
      
      const_set_lazy(:SYSTEM_FONT) { 0xd }
      const_attr_reader  :SYSTEM_FONT
      
      const_set_lazy(:S_OK) { 0x0 }
      const_attr_reader  :S_OK
      
      const_set_lazy(:TABP_TABITEM) { 1 }
      const_attr_reader  :TABP_TABITEM
      
      const_set_lazy(:TABP_TABITEMLEFTEDGE) { 2 }
      const_attr_reader  :TABP_TABITEMLEFTEDGE
      
      const_set_lazy(:TABP_TABITEMRIGHTEDGE) { 3 }
      const_attr_reader  :TABP_TABITEMRIGHTEDGE
      
      const_set_lazy(:TABP_TABITEMBOTHEDGE) { 4 }
      const_attr_reader  :TABP_TABITEMBOTHEDGE
      
      const_set_lazy(:TABP_TOPTABITEM) { 5 }
      const_attr_reader  :TABP_TOPTABITEM
      
      const_set_lazy(:TABP_TOPTABITEMLEFTEDGE) { 6 }
      const_attr_reader  :TABP_TOPTABITEMLEFTEDGE
      
      const_set_lazy(:TABP_TOPTABITEMRIGHTEDGE) { 7 }
      const_attr_reader  :TABP_TOPTABITEMRIGHTEDGE
      
      const_set_lazy(:TABP_TOPTABITEMBOTHEDGE) { 8 }
      const_attr_reader  :TABP_TOPTABITEMBOTHEDGE
      
      const_set_lazy(:TABP_PANE) { 9 }
      const_attr_reader  :TABP_PANE
      
      const_set_lazy(:TABP_BODY) { 10 }
      const_attr_reader  :TABP_BODY
      
      const_set_lazy(:TBIF_COMMAND) { 0x20 }
      const_attr_reader  :TBIF_COMMAND
      
      const_set_lazy(:TBIF_STATE) { 0x4 }
      const_attr_reader  :TBIF_STATE
      
      const_set_lazy(:TBIF_IMAGE) { 0x1 }
      const_attr_reader  :TBIF_IMAGE
      
      const_set_lazy(:TBIF_LPARAM) { 0x10 }
      const_attr_reader  :TBIF_LPARAM
      
      const_set_lazy(:TBIF_SIZE) { 0x40 }
      const_attr_reader  :TBIF_SIZE
      
      const_set_lazy(:TBIF_STYLE) { 0x8 }
      const_attr_reader  :TBIF_STYLE
      
      const_set_lazy(:TBIF_TEXT) { 0x2 }
      const_attr_reader  :TBIF_TEXT
      
      const_set_lazy(:TB_GETEXTENDEDSTYLE) { 0x400 + 85 }
      const_attr_reader  :TB_GETEXTENDEDSTYLE
      
      const_set_lazy(:TBM_GETLINESIZE) { 0x418 }
      const_attr_reader  :TBM_GETLINESIZE
      
      const_set_lazy(:TBM_GETPAGESIZE) { 0x416 }
      const_attr_reader  :TBM_GETPAGESIZE
      
      const_set_lazy(:TBM_GETPOS) { 0x400 }
      const_attr_reader  :TBM_GETPOS
      
      const_set_lazy(:TBM_GETRANGEMAX) { 0x402 }
      const_attr_reader  :TBM_GETRANGEMAX
      
      const_set_lazy(:TBM_GETRANGEMIN) { 0x401 }
      const_attr_reader  :TBM_GETRANGEMIN
      
      const_set_lazy(:TBM_GETTHUMBRECT) { 0x419 }
      const_attr_reader  :TBM_GETTHUMBRECT
      
      const_set_lazy(:TBM_SETLINESIZE) { 0x417 }
      const_attr_reader  :TBM_SETLINESIZE
      
      const_set_lazy(:TBM_SETPAGESIZE) { 0x415 }
      const_attr_reader  :TBM_SETPAGESIZE
      
      const_set_lazy(:TBM_SETPOS) { 0x405 }
      const_attr_reader  :TBM_SETPOS
      
      const_set_lazy(:TBM_SETRANGEMAX) { 0x408 }
      const_attr_reader  :TBM_SETRANGEMAX
      
      const_set_lazy(:TBM_SETRANGEMIN) { 0x407 }
      const_attr_reader  :TBM_SETRANGEMIN
      
      const_set_lazy(:TBM_SETTICFREQ) { 0x414 }
      const_attr_reader  :TBM_SETTICFREQ
      
      const_set_lazy(:TBN_DROPDOWN) { -0x2c6 }
      const_attr_reader  :TBN_DROPDOWN
      
      const_set_lazy(:TBN_FIRST) { -0x2bc }
      const_attr_reader  :TBN_FIRST
      
      const_set_lazy(:TBN_HOTITEMCHANGE) { -0x2c9 }
      const_attr_reader  :TBN_HOTITEMCHANGE
      
      const_set_lazy(:TBSTATE_CHECKED) { 0x1 }
      const_attr_reader  :TBSTATE_CHECKED
      
      const_set_lazy(:TBSTATE_PRESSED) { 0x2 }
      const_attr_reader  :TBSTATE_PRESSED
      
      const_set_lazy(:TBSTYLE_CUSTOMERASE) { 0x2000 }
      const_attr_reader  :TBSTYLE_CUSTOMERASE
      
      const_set_lazy(:TBSTYLE_DROPDOWN) { 0x8 }
      const_attr_reader  :TBSTYLE_DROPDOWN
      
      const_set_lazy(:TBSTATE_ENABLED) { 0x4 }
      const_attr_reader  :TBSTATE_ENABLED
      
      const_set_lazy(:TBSTYLE_AUTOSIZE) { 0x10 }
      const_attr_reader  :TBSTYLE_AUTOSIZE
      
      const_set_lazy(:TBSTYLE_EX_DOUBLEBUFFER) { 0x80 }
      const_attr_reader  :TBSTYLE_EX_DOUBLEBUFFER
      
      const_set_lazy(:TBSTYLE_EX_DRAWDDARROWS) { 0x1 }
      const_attr_reader  :TBSTYLE_EX_DRAWDDARROWS
      
      const_set_lazy(:TBSTYLE_EX_HIDECLIPPEDBUTTONS) { 0x10 }
      const_attr_reader  :TBSTYLE_EX_HIDECLIPPEDBUTTONS
      
      const_set_lazy(:TBSTYLE_EX_MIXEDBUTTONS) { 0x8 }
      const_attr_reader  :TBSTYLE_EX_MIXEDBUTTONS
      
      const_set_lazy(:TBSTYLE_FLAT) { 0x800 }
      const_attr_reader  :TBSTYLE_FLAT
      
      const_set_lazy(:TBSTYLE_LIST) { 0x1000 }
      const_attr_reader  :TBSTYLE_LIST
      
      const_set_lazy(:TBSTYLE_TOOLTIPS) { 0x100 }
      const_attr_reader  :TBSTYLE_TOOLTIPS
      
      const_set_lazy(:TBSTYLE_TRANSPARENT) { 0x8000 }
      const_attr_reader  :TBSTYLE_TRANSPARENT
      
      const_set_lazy(:TBSTYLE_WRAPABLE) { 0x200 }
      const_attr_reader  :TBSTYLE_WRAPABLE
      
      const_set_lazy(:TBS_AUTOTICKS) { 0x1 }
      const_attr_reader  :TBS_AUTOTICKS
      
      const_set_lazy(:TBS_BOTH) { 0x8 }
      const_attr_reader  :TBS_BOTH
      
      const_set_lazy(:TBS_DOWNISLEFT) { 0x400 }
      const_attr_reader  :TBS_DOWNISLEFT
      
      const_set_lazy(:TBS_HORZ) { 0x0 }
      const_attr_reader  :TBS_HORZ
      
      const_set_lazy(:TBS_VERT) { 0x2 }
      const_attr_reader  :TBS_VERT
      
      const_set_lazy(:TB_ADDSTRING) { IsUnicode ? 0x44d : 0x41c }
      const_attr_reader  :TB_ADDSTRING
      
      const_set_lazy(:TB_AUTOSIZE) { 0x421 }
      const_attr_reader  :TB_AUTOSIZE
      
      const_set_lazy(:TB_BUTTONCOUNT) { 0x418 }
      const_attr_reader  :TB_BUTTONCOUNT
      
      const_set_lazy(:TB_BUTTONSTRUCTSIZE) { 0x41e }
      const_attr_reader  :TB_BUTTONSTRUCTSIZE
      
      const_set_lazy(:TB_COMMANDTOINDEX) { 0x419 }
      const_attr_reader  :TB_COMMANDTOINDEX
      
      const_set_lazy(:TB_DELETEBUTTON) { 0x416 }
      const_attr_reader  :TB_DELETEBUTTON
      
      const_set_lazy(:TB_ENDTRACK) { 0x8 }
      const_attr_reader  :TB_ENDTRACK
      
      const_set_lazy(:TB_GETBUTTON) { 0x417 }
      const_attr_reader  :TB_GETBUTTON
      
      const_set_lazy(:TB_GETBUTTONINFO) { IsUnicode ? 0x43f : 0x441 }
      const_attr_reader  :TB_GETBUTTONINFO
      
      const_set_lazy(:TB_GETBUTTONSIZE) { 0x43a }
      const_attr_reader  :TB_GETBUTTONSIZE
      
      const_set_lazy(:TB_GETBUTTONTEXT) { IsUnicode ? 0x44b : 0x42d }
      const_attr_reader  :TB_GETBUTTONTEXT
      
      const_set_lazy(:TB_GETDISABLEDIMAGELIST) { 0x437 }
      const_attr_reader  :TB_GETDISABLEDIMAGELIST
      
      const_set_lazy(:TB_GETHOTIMAGELIST) { 0x435 }
      const_attr_reader  :TB_GETHOTIMAGELIST
      
      const_set_lazy(:TB_GETHOTITEM) { 0x400 + 71 }
      const_attr_reader  :TB_GETHOTITEM
      
      const_set_lazy(:TB_GETIMAGELIST) { 0x431 }
      const_attr_reader  :TB_GETIMAGELIST
      
      const_set_lazy(:TB_GETITEMRECT) { 0x41d }
      const_attr_reader  :TB_GETITEMRECT
      
      const_set_lazy(:TB_GETPADDING) { 0x400 + 86 }
      const_attr_reader  :TB_GETPADDING
      
      const_set_lazy(:TB_GETROWS) { 0x428 }
      const_attr_reader  :TB_GETROWS
      
      const_set_lazy(:TB_GETSTATE) { 0x412 }
      const_attr_reader  :TB_GETSTATE
      
      const_set_lazy(:TB_GETTOOLTIPS) { 0x423 }
      const_attr_reader  :TB_GETTOOLTIPS
      
      const_set_lazy(:TB_INSERTBUTTON) { IsUnicode ? 0x443 : 0x415 }
      const_attr_reader  :TB_INSERTBUTTON
      
      const_set_lazy(:TB_LOADIMAGES) { 0x432 }
      const_attr_reader  :TB_LOADIMAGES
      
      const_set_lazy(:TB_MAPACCELERATOR) { 0x400 + (IsUnicode ? 90 : 78) }
      const_attr_reader  :TB_MAPACCELERATOR
      
      const_set_lazy(:TB_SETBITMAPSIZE) { 0x420 }
      const_attr_reader  :TB_SETBITMAPSIZE
      
      const_set_lazy(:TB_SETBUTTONINFO) { IsUnicode ? 0x440 : 0x442 }
      const_attr_reader  :TB_SETBUTTONINFO
      
      const_set_lazy(:TB_SETBUTTONSIZE) { 0x41f }
      const_attr_reader  :TB_SETBUTTONSIZE
      
      const_set_lazy(:TB_SETDISABLEDIMAGELIST) { 0x436 }
      const_attr_reader  :TB_SETDISABLEDIMAGELIST
      
      const_set_lazy(:TB_SETEXTENDEDSTYLE) { 0x454 }
      const_attr_reader  :TB_SETEXTENDEDSTYLE
      
      const_set_lazy(:TB_SETHOTIMAGELIST) { 0x434 }
      const_attr_reader  :TB_SETHOTIMAGELIST
      
      const_set_lazy(:TB_SETHOTITEM) { 0x400 + 72 }
      const_attr_reader  :TB_SETHOTITEM
      
      const_set_lazy(:TB_SETIMAGELIST) { 0x430 }
      const_attr_reader  :TB_SETIMAGELIST
      
      const_set_lazy(:TB_SETPARENT) { 0x400 + 37 }
      const_attr_reader  :TB_SETPARENT
      
      const_set_lazy(:TB_SETROWS) { 0x427 }
      const_attr_reader  :TB_SETROWS
      
      const_set_lazy(:TB_SETSTATE) { 0x411 }
      const_attr_reader  :TB_SETSTATE
      
      const_set_lazy(:TB_THUMBPOSITION) { 0x4 }
      const_attr_reader  :TB_THUMBPOSITION
      
      const_set_lazy(:TCIF_IMAGE) { 0x2 }
      const_attr_reader  :TCIF_IMAGE
      
      const_set_lazy(:TCIF_TEXT) { 0x1 }
      const_attr_reader  :TCIF_TEXT
      
      const_set_lazy(:TCI_SRCCHARSET) { 0x1 }
      const_attr_reader  :TCI_SRCCHARSET
      
      const_set_lazy(:TCI_SRCCODEPAGE) { 0x2 }
      const_attr_reader  :TCI_SRCCODEPAGE
      
      const_set_lazy(:TCM_ADJUSTRECT) { 0x1328 }
      const_attr_reader  :TCM_ADJUSTRECT
      
      const_set_lazy(:TCM_DELETEITEM) { 0x1308 }
      const_attr_reader  :TCM_DELETEITEM
      
      const_set_lazy(:TCM_GETCURSEL) { 0x130b }
      const_attr_reader  :TCM_GETCURSEL
      
      const_set_lazy(:TCM_GETITEMCOUNT) { 0x1304 }
      const_attr_reader  :TCM_GETITEMCOUNT
      
      const_set_lazy(:TCM_GETITEMRECT) { 0x130a }
      const_attr_reader  :TCM_GETITEMRECT
      
      const_set_lazy(:TCM_GETTOOLTIPS) { 0x132d }
      const_attr_reader  :TCM_GETTOOLTIPS
      
      const_set_lazy(:TCM_HITTEST) { 0x130d }
      const_attr_reader  :TCM_HITTEST
      
      const_set_lazy(:TCM_INSERTITEM) { IsUnicode ? 0x133e : 0x1307 }
      const_attr_reader  :TCM_INSERTITEM
      
      const_set_lazy(:TCM_SETCURSEL) { 0x130c }
      const_attr_reader  :TCM_SETCURSEL
      
      const_set_lazy(:TCM_SETIMAGELIST) { 0x1303 }
      const_attr_reader  :TCM_SETIMAGELIST
      
      const_set_lazy(:TCM_SETITEM) { IsUnicode ? 0x133d : 0x1306 }
      const_attr_reader  :TCM_SETITEM
      
      const_set_lazy(:TCN_SELCHANGE) { -0x227 }
      const_attr_reader  :TCN_SELCHANGE
      
      const_set_lazy(:TCN_SELCHANGING) { -0x228 }
      const_attr_reader  :TCN_SELCHANGING
      
      const_set_lazy(:TCS_BOTTOM) { 0x2 }
      const_attr_reader  :TCS_BOTTOM
      
      const_set_lazy(:TCS_FOCUSNEVER) { 0x8000 }
      const_attr_reader  :TCS_FOCUSNEVER
      
      const_set_lazy(:TCS_MULTILINE) { 0x200 }
      const_attr_reader  :TCS_MULTILINE
      
      const_set_lazy(:TCS_TABS) { 0x0 }
      const_attr_reader  :TCS_TABS
      
      const_set_lazy(:TCS_TOOLTIPS) { 0x4000 }
      const_attr_reader  :TCS_TOOLTIPS
      
      const_set_lazy(:TECHNOLOGY) { 0x2 }
      const_attr_reader  :TECHNOLOGY
      
      const_set_lazy(:TF_ATTR_INPUT) { 0 }
      const_attr_reader  :TF_ATTR_INPUT
      
      const_set_lazy(:TF_ATTR_TARGET_CONVERTED) { 1 }
      const_attr_reader  :TF_ATTR_TARGET_CONVERTED
      
      const_set_lazy(:TF_ATTR_CONVERTED) { 2 }
      const_attr_reader  :TF_ATTR_CONVERTED
      
      const_set_lazy(:TF_ATTR_TARGET_NOTCONVERTED) { 3 }
      const_attr_reader  :TF_ATTR_TARGET_NOTCONVERTED
      
      const_set_lazy(:TF_ATTR_INPUT_ERROR) { 4 }
      const_attr_reader  :TF_ATTR_INPUT_ERROR
      
      const_set_lazy(:TF_ATTR_FIXEDCONVERTED) { 5 }
      const_attr_reader  :TF_ATTR_FIXEDCONVERTED
      
      const_set_lazy(:TF_ATTR_OTHER) { -1 }
      const_attr_reader  :TF_ATTR_OTHER
      
      const_set_lazy(:TF_CT_NONE) { 0 }
      const_attr_reader  :TF_CT_NONE
      
      const_set_lazy(:TF_CT_SYSCOLOR) { 1 }
      const_attr_reader  :TF_CT_SYSCOLOR
      
      const_set_lazy(:TF_CT_COLORREF) { 2 }
      const_attr_reader  :TF_CT_COLORREF
      
      const_set_lazy(:TF_LS_NONE) { 0 }
      const_attr_reader  :TF_LS_NONE
      
      const_set_lazy(:TF_LS_SOLID) { 1 }
      const_attr_reader  :TF_LS_SOLID
      
      const_set_lazy(:TF_LS_DOT) { 2 }
      const_attr_reader  :TF_LS_DOT
      
      const_set_lazy(:TF_LS_DASH) { 3 }
      const_attr_reader  :TF_LS_DASH
      
      const_set_lazy(:TF_LS_SQUIGGLE) { 4 }
      const_attr_reader  :TF_LS_SQUIGGLE
      
      const_set_lazy(:TIME_NOSECONDS) { 0x2 }
      const_attr_reader  :TIME_NOSECONDS
      
      const_set_lazy(:TIS_NORMAL) { 1 }
      const_attr_reader  :TIS_NORMAL
      
      const_set_lazy(:TIS_HOT) { 2 }
      const_attr_reader  :TIS_HOT
      
      const_set_lazy(:TIS_SELECTED) { 3 }
      const_attr_reader  :TIS_SELECTED
      
      const_set_lazy(:TIS_DISABLED) { 4 }
      const_attr_reader  :TIS_DISABLED
      
      const_set_lazy(:TIS_FOCUSED) { 5 }
      const_attr_reader  :TIS_FOCUSED
      
      const_set_lazy(:TKP_TRACK) { 1 }
      const_attr_reader  :TKP_TRACK
      
      const_set_lazy(:TKP_TRACKVERT) { 2 }
      const_attr_reader  :TKP_TRACKVERT
      
      const_set_lazy(:TKP_THUMB) { 3 }
      const_attr_reader  :TKP_THUMB
      
      const_set_lazy(:TKP_THUMBBOTTOM) { 4 }
      const_attr_reader  :TKP_THUMBBOTTOM
      
      const_set_lazy(:TKP_THUMBTOP) { 5 }
      const_attr_reader  :TKP_THUMBTOP
      
      const_set_lazy(:TKP_THUMBVERT) { 6 }
      const_attr_reader  :TKP_THUMBVERT
      
      const_set_lazy(:TKP_THUMBLEFT) { 7 }
      const_attr_reader  :TKP_THUMBLEFT
      
      const_set_lazy(:TKP_THUMBRIGHT) { 8 }
      const_attr_reader  :TKP_THUMBRIGHT
      
      const_set_lazy(:TKP_TICS) { 9 }
      const_attr_reader  :TKP_TICS
      
      const_set_lazy(:TKP_TICSVERT) { 10 }
      const_attr_reader  :TKP_TICSVERT
      
      const_set_lazy(:TME_HOVER) { 0x1 }
      const_attr_reader  :TME_HOVER
      
      const_set_lazy(:TME_LEAVE) { 0x2 }
      const_attr_reader  :TME_LEAVE
      
      const_set_lazy(:TME_QUERY) { 0x40000000 }
      const_attr_reader  :TME_QUERY
      
      const_set_lazy(:TMPF_VECTOR) { 0x2 }
      const_attr_reader  :TMPF_VECTOR
      
      const_set_lazy(:TMT_CONTENTMARGINS) { 3602 }
      const_attr_reader  :TMT_CONTENTMARGINS
      
      const_set_lazy(:TOOLBARCLASSNAME) { "ToolbarWindow32" }
      const_attr_reader  :TOOLBARCLASSNAME
      
      # $NON-NLS-1$
      const_set_lazy(:TOOLTIPS_CLASS) { "tooltips_class32" }
      const_attr_reader  :TOOLTIPS_CLASS
      
      # $NON-NLS-1$
      const_set_lazy(:TP_BUTTON) { 1 }
      const_attr_reader  :TP_BUTTON
      
      const_set_lazy(:TP_DROPDOWNBUTTON) { 2 }
      const_attr_reader  :TP_DROPDOWNBUTTON
      
      const_set_lazy(:TP_SPLITBUTTON) { 3 }
      const_attr_reader  :TP_SPLITBUTTON
      
      const_set_lazy(:TP_SPLITBUTTONDROPDOWN) { 4 }
      const_attr_reader  :TP_SPLITBUTTONDROPDOWN
      
      const_set_lazy(:TP_SEPARATOR) { 5 }
      const_attr_reader  :TP_SEPARATOR
      
      const_set_lazy(:TP_SEPARATORVERT) { 6 }
      const_attr_reader  :TP_SEPARATORVERT
      
      const_set_lazy(:TPM_LEFTALIGN) { 0x0 }
      const_attr_reader  :TPM_LEFTALIGN
      
      const_set_lazy(:TPM_LEFTBUTTON) { 0x0 }
      const_attr_reader  :TPM_LEFTBUTTON
      
      const_set_lazy(:TPM_RIGHTBUTTON) { 0x2 }
      const_attr_reader  :TPM_RIGHTBUTTON
      
      const_set_lazy(:TPM_RIGHTALIGN) { 0x8 }
      const_attr_reader  :TPM_RIGHTALIGN
      
      const_set_lazy(:TRACKBAR_CLASS) { "msctls_trackbar32" }
      const_attr_reader  :TRACKBAR_CLASS
      
      # $NON-NLS-1$
      const_set_lazy(:TRANSPARENT) { 0x1 }
      const_attr_reader  :TRANSPARENT
      
      const_set_lazy(:TREIS_DISABLED) { 4 }
      const_attr_reader  :TREIS_DISABLED
      
      const_set_lazy(:TREIS_HOT) { 2 }
      const_attr_reader  :TREIS_HOT
      
      const_set_lazy(:TREIS_NORMAL) { 1 }
      const_attr_reader  :TREIS_NORMAL
      
      const_set_lazy(:TREIS_SELECTED) { 3 }
      const_attr_reader  :TREIS_SELECTED
      
      const_set_lazy(:TREIS_SELECTEDNOTFOCUS) { 5 }
      const_attr_reader  :TREIS_SELECTEDNOTFOCUS
      
      const_set_lazy(:TS_MIN) { 0 }
      const_attr_reader  :TS_MIN
      
      const_set_lazy(:TS_TRUE) { 1 }
      const_attr_reader  :TS_TRUE
      
      const_set_lazy(:TS_DRAW) { 2 }
      const_attr_reader  :TS_DRAW
      
      const_set_lazy(:TS_NORMAL) { 1 }
      const_attr_reader  :TS_NORMAL
      
      const_set_lazy(:TS_HOT) { 2 }
      const_attr_reader  :TS_HOT
      
      const_set_lazy(:TS_PRESSED) { 3 }
      const_attr_reader  :TS_PRESSED
      
      const_set_lazy(:TS_DISABLED) { 4 }
      const_attr_reader  :TS_DISABLED
      
      const_set_lazy(:TS_CHECKED) { 5 }
      const_attr_reader  :TS_CHECKED
      
      const_set_lazy(:TS_HOTCHECKED) { 6 }
      const_attr_reader  :TS_HOTCHECKED
      
      const_set_lazy(:TTDT_AUTOMATIC) { 0 }
      const_attr_reader  :TTDT_AUTOMATIC
      
      const_set_lazy(:TTDT_RESHOW) { 1 }
      const_attr_reader  :TTDT_RESHOW
      
      const_set_lazy(:TTDT_AUTOPOP) { 2 }
      const_attr_reader  :TTDT_AUTOPOP
      
      const_set_lazy(:TTDT_INITIAL) { 3 }
      const_attr_reader  :TTDT_INITIAL
      
      const_set_lazy(:TTF_ABSOLUTE) { 0x80 }
      const_attr_reader  :TTF_ABSOLUTE
      
      const_set_lazy(:TTF_IDISHWND) { 0x1 }
      const_attr_reader  :TTF_IDISHWND
      
      const_set_lazy(:TTF_SUBCLASS) { 0x10 }
      const_attr_reader  :TTF_SUBCLASS
      
      const_set_lazy(:TTF_RTLREADING) { 0x4 }
      const_attr_reader  :TTF_RTLREADING
      
      const_set_lazy(:TTF_TRACK) { 0x20 }
      const_attr_reader  :TTF_TRACK
      
      const_set_lazy(:TTF_TRANSPARENT) { 0x100 }
      const_attr_reader  :TTF_TRANSPARENT
      
      const_set_lazy(:TTI_NONE) { 0 }
      const_attr_reader  :TTI_NONE
      
      const_set_lazy(:TTI_INFO) { 1 }
      const_attr_reader  :TTI_INFO
      
      const_set_lazy(:TTI_WARNING) { 2 }
      const_attr_reader  :TTI_WARNING
      
      const_set_lazy(:TTI_ERROR) { 3 }
      const_attr_reader  :TTI_ERROR
      
      const_set_lazy(:TTM_ACTIVATE) { 0x400 + 1 }
      const_attr_reader  :TTM_ACTIVATE
      
      const_set_lazy(:TTM_ADDTOOL) { IsUnicode ? 0x432 : 0x404 }
      const_attr_reader  :TTM_ADDTOOL
      
      const_set_lazy(:TTM_ADJUSTRECT) { 0x400 + 31 }
      const_attr_reader  :TTM_ADJUSTRECT
      
      const_set_lazy(:TTM_GETCURRENTTOOLA) { 0x400 + 15 }
      const_attr_reader  :TTM_GETCURRENTTOOLA
      
      const_set_lazy(:TTM_GETCURRENTTOOLW) { 0x400 + 59 }
      const_attr_reader  :TTM_GETCURRENTTOOLW
      
      const_set_lazy(:TTM_GETCURRENTTOOL) { 0x400 + (IsUnicode ? 59 : 15) }
      const_attr_reader  :TTM_GETCURRENTTOOL
      
      const_set_lazy(:TTM_GETDELAYTIME) { 0x400 + 21 }
      const_attr_reader  :TTM_GETDELAYTIME
      
      const_set_lazy(:TTM_DELTOOL) { IsUnicode ? 0x433 : 0x405 }
      const_attr_reader  :TTM_DELTOOL
      
      const_set_lazy(:TTM_GETTOOLINFO) { 0x400 + (IsUnicode ? 53 : 8) }
      const_attr_reader  :TTM_GETTOOLINFO
      
      const_set_lazy(:TTM_NEWTOOLRECT) { 0x400 + (IsUnicode ? 52 : 6) }
      const_attr_reader  :TTM_NEWTOOLRECT
      
      const_set_lazy(:TTM_POP) { 0x400 + 28 }
      const_attr_reader  :TTM_POP
      
      const_set_lazy(:TTM_SETDELAYTIME) { 0x400 + 3 }
      const_attr_reader  :TTM_SETDELAYTIME
      
      const_set_lazy(:TTM_SETMAXTIPWIDTH) { 0x418 }
      const_attr_reader  :TTM_SETMAXTIPWIDTH
      
      const_set_lazy(:TTM_SETTITLEA) { 0x400 + 32 }
      const_attr_reader  :TTM_SETTITLEA
      
      const_set_lazy(:TTM_SETTITLEW) { 0x400 + 33 }
      const_attr_reader  :TTM_SETTITLEW
      
      const_set_lazy(:TTM_SETTITLE) { 0x400 + (IsUnicode ? 33 : 32) }
      const_attr_reader  :TTM_SETTITLE
      
      const_set_lazy(:TTM_TRACKPOSITION) { 1042 }
      const_attr_reader  :TTM_TRACKPOSITION
      
      const_set_lazy(:TTM_TRACKACTIVATE) { 1041 }
      const_attr_reader  :TTM_TRACKACTIVATE
      
      const_set_lazy(:TTM_UPDATE) { 0x41d }
      const_attr_reader  :TTM_UPDATE
      
      const_set_lazy(:TTN_FIRST) { -0x208 }
      const_attr_reader  :TTN_FIRST
      
      const_set_lazy(:TTN_GETDISPINFO) { IsUnicode ? -0x212 : -0x208 }
      const_attr_reader  :TTN_GETDISPINFO
      
      const_set_lazy(:TTN_GETDISPINFOW) { -0x212 }
      const_attr_reader  :TTN_GETDISPINFOW
      
      const_set_lazy(:TTN_GETDISPINFOA) { -0x208 }
      const_attr_reader  :TTN_GETDISPINFOA
      
      const_set_lazy(:TTN_POP) { TTN_FIRST - 2 }
      const_attr_reader  :TTN_POP
      
      const_set_lazy(:TTN_SHOW) { TTN_FIRST - 1 }
      const_attr_reader  :TTN_SHOW
      
      const_set_lazy(:TTS_ALWAYSTIP) { 0x1 }
      const_attr_reader  :TTS_ALWAYSTIP
      
      const_set_lazy(:TTS_BALLOON) { 0x40 }
      const_attr_reader  :TTS_BALLOON
      
      const_set_lazy(:TTS_NOANIMATE) { 0x10 }
      const_attr_reader  :TTS_NOANIMATE
      
      const_set_lazy(:TTS_NOFADE) { 0x20 }
      const_attr_reader  :TTS_NOFADE
      
      const_set_lazy(:TTS_NOPREFIX) { 0x2 }
      const_attr_reader  :TTS_NOPREFIX
      
      const_set_lazy(:TV_FIRST) { 0x1100 }
      const_attr_reader  :TV_FIRST
      
      const_set_lazy(:TVE_COLLAPSE) { 0x1 }
      const_attr_reader  :TVE_COLLAPSE
      
      const_set_lazy(:TVE_COLLAPSERESET) { 0x8000 }
      const_attr_reader  :TVE_COLLAPSERESET
      
      const_set_lazy(:TVE_EXPAND) { 0x2 }
      const_attr_reader  :TVE_EXPAND
      
      const_set_lazy(:TVGN_CARET) { 0x9 }
      const_attr_reader  :TVGN_CARET
      
      const_set_lazy(:TVGN_CHILD) { 0x4 }
      const_attr_reader  :TVGN_CHILD
      
      const_set_lazy(:TVGN_DROPHILITED) { 0x8 }
      const_attr_reader  :TVGN_DROPHILITED
      
      const_set_lazy(:TVGN_FIRSTVISIBLE) { 0x5 }
      const_attr_reader  :TVGN_FIRSTVISIBLE
      
      const_set_lazy(:TVGN_LASTVISIBLE) { 0xa }
      const_attr_reader  :TVGN_LASTVISIBLE
      
      const_set_lazy(:TVGN_NEXT) { 0x1 }
      const_attr_reader  :TVGN_NEXT
      
      const_set_lazy(:TVGN_NEXTVISIBLE) { 0x6 }
      const_attr_reader  :TVGN_NEXTVISIBLE
      
      const_set_lazy(:TVGN_PARENT) { 0x3 }
      const_attr_reader  :TVGN_PARENT
      
      const_set_lazy(:TVGN_PREVIOUS) { 0x2 }
      const_attr_reader  :TVGN_PREVIOUS
      
      const_set_lazy(:TVGN_PREVIOUSVISIBLE) { 0x7 }
      const_attr_reader  :TVGN_PREVIOUSVISIBLE
      
      const_set_lazy(:TVGN_ROOT) { 0x0 }
      const_attr_reader  :TVGN_ROOT
      
      const_set_lazy(:TVHT_ONITEM) { 0x46 }
      const_attr_reader  :TVHT_ONITEM
      
      const_set_lazy(:TVHT_ONITEMBUTTON) { 16 }
      const_attr_reader  :TVHT_ONITEMBUTTON
      
      const_set_lazy(:TVHT_ONITEMICON) { 0x2 }
      const_attr_reader  :TVHT_ONITEMICON
      
      const_set_lazy(:TVHT_ONITEMINDENT) { 0x8 }
      const_attr_reader  :TVHT_ONITEMINDENT
      
      const_set_lazy(:TVHT_ONITEMRIGHT) { 0x20 }
      const_attr_reader  :TVHT_ONITEMRIGHT
      
      const_set_lazy(:TVHT_ONITEMLABEL) { 0x4 }
      const_attr_reader  :TVHT_ONITEMLABEL
      
      const_set_lazy(:TVHT_ONITEMSTATEICON) { 0x40 }
      const_attr_reader  :TVHT_ONITEMSTATEICON
      
      const_set_lazy(:TVIF_HANDLE) { 0x10 }
      const_attr_reader  :TVIF_HANDLE
      
      const_set_lazy(:TVIF_IMAGE) { 0x2 }
      const_attr_reader  :TVIF_IMAGE
      
      const_set_lazy(:TVIF_INTEGRAL) { 0x80 }
      const_attr_reader  :TVIF_INTEGRAL
      
      const_set_lazy(:TVIF_PARAM) { 0x4 }
      const_attr_reader  :TVIF_PARAM
      
      const_set_lazy(:TVIF_SELECTEDIMAGE) { 0x20 }
      const_attr_reader  :TVIF_SELECTEDIMAGE
      
      const_set_lazy(:TVIF_STATE) { 0x8 }
      const_attr_reader  :TVIF_STATE
      
      const_set_lazy(:TVIF_TEXT) { 0x1 }
      const_attr_reader  :TVIF_TEXT
      
      const_set_lazy(:TVIS_DROPHILITED) { 0x8 }
      const_attr_reader  :TVIS_DROPHILITED
      
      const_set_lazy(:TVIS_EXPANDED) { 0x20 }
      const_attr_reader  :TVIS_EXPANDED
      
      const_set_lazy(:TVIS_SELECTED) { 0x2 }
      const_attr_reader  :TVIS_SELECTED
      
      const_set_lazy(:TVIS_STATEIMAGEMASK) { 0xf000 }
      const_attr_reader  :TVIS_STATEIMAGEMASK
      
      # long
      const_set_lazy(:TVI_FIRST) { -0xffff }
      const_attr_reader  :TVI_FIRST
      
      # long
      const_set_lazy(:TVI_LAST) { -0xfffe }
      const_attr_reader  :TVI_LAST
      
      # long
      const_set_lazy(:TVI_ROOT) { -0x10000 }
      const_attr_reader  :TVI_ROOT
      
      # long
      const_set_lazy(:TVI_SORT) { -0xfffd }
      const_attr_reader  :TVI_SORT
      
      const_set_lazy(:TVM_CREATEDRAGIMAGE) { TV_FIRST + 18 }
      const_attr_reader  :TVM_CREATEDRAGIMAGE
      
      const_set_lazy(:TVM_DELETEITEM) { 0x1101 }
      const_attr_reader  :TVM_DELETEITEM
      
      const_set_lazy(:TVM_ENSUREVISIBLE) { 0x1114 }
      const_attr_reader  :TVM_ENSUREVISIBLE
      
      const_set_lazy(:TVM_EXPAND) { 0x1102 }
      const_attr_reader  :TVM_EXPAND
      
      const_set_lazy(:TVM_GETBKCOLOR) { 0x111f }
      const_attr_reader  :TVM_GETBKCOLOR
      
      const_set_lazy(:TVM_GETCOUNT) { 0x1105 }
      const_attr_reader  :TVM_GETCOUNT
      
      const_set_lazy(:TVM_GETEXTENDEDSTYLE) { TV_FIRST + 45 }
      const_attr_reader  :TVM_GETEXTENDEDSTYLE
      
      const_set_lazy(:TVM_GETIMAGELIST) { 0x1108 }
      const_attr_reader  :TVM_GETIMAGELIST
      
      const_set_lazy(:TVM_GETITEM) { IsUnicode ? 0x113e : 0x110c }
      const_attr_reader  :TVM_GETITEM
      
      const_set_lazy(:TVM_GETITEMHEIGHT) { 0x111c }
      const_attr_reader  :TVM_GETITEMHEIGHT
      
      const_set_lazy(:TVM_GETITEMRECT) { 0x1104 }
      const_attr_reader  :TVM_GETITEMRECT
      
      const_set_lazy(:TVM_GETITEMSTATE) { TV_FIRST + 39 }
      const_attr_reader  :TVM_GETITEMSTATE
      
      const_set_lazy(:TVM_GETNEXTITEM) { 0x110a }
      const_attr_reader  :TVM_GETNEXTITEM
      
      const_set_lazy(:TVM_GETTEXTCOLOR) { 0x1120 }
      const_attr_reader  :TVM_GETTEXTCOLOR
      
      const_set_lazy(:TVM_GETTOOLTIPS) { TV_FIRST + 25 }
      const_attr_reader  :TVM_GETTOOLTIPS
      
      const_set_lazy(:TVM_GETVISIBLECOUNT) { TV_FIRST + 16 }
      const_attr_reader  :TVM_GETVISIBLECOUNT
      
      const_set_lazy(:TVM_HITTEST) { 0x1111 }
      const_attr_reader  :TVM_HITTEST
      
      const_set_lazy(:TVM_INSERTITEM) { IsUnicode ? 0x1132 : 0x1100 }
      const_attr_reader  :TVM_INSERTITEM
      
      const_set_lazy(:TVM_MAPACCIDTOHTREEITEM) { TV_FIRST + 42 }
      const_attr_reader  :TVM_MAPACCIDTOHTREEITEM
      
      const_set_lazy(:TVM_MAPHTREEITEMTOACCID) { TV_FIRST + 43 }
      const_attr_reader  :TVM_MAPHTREEITEMTOACCID
      
      const_set_lazy(:TVM_SELECTITEM) { 0x110b }
      const_attr_reader  :TVM_SELECTITEM
      
      const_set_lazy(:TVM_SETBKCOLOR) { 0x111d }
      const_attr_reader  :TVM_SETBKCOLOR
      
      const_set_lazy(:TVM_SETEXTENDEDSTYLE) { TV_FIRST + 44 }
      const_attr_reader  :TVM_SETEXTENDEDSTYLE
      
      const_set_lazy(:TVM_SETIMAGELIST) { 0x1109 }
      const_attr_reader  :TVM_SETIMAGELIST
      
      const_set_lazy(:TVM_SETINSERTMARK) { 0x111a }
      const_attr_reader  :TVM_SETINSERTMARK
      
      const_set_lazy(:TVM_SETITEM) { IsUnicode ? 0x113f : 0x110d }
      const_attr_reader  :TVM_SETITEM
      
      const_set_lazy(:TVM_SETITEMHEIGHT) { TV_FIRST + 27 }
      const_attr_reader  :TVM_SETITEMHEIGHT
      
      const_set_lazy(:TVM_SETSCROLLTIME) { TV_FIRST + 33 }
      const_attr_reader  :TVM_SETSCROLLTIME
      
      const_set_lazy(:TVM_SETTEXTCOLOR) { 0x111e }
      const_attr_reader  :TVM_SETTEXTCOLOR
      
      const_set_lazy(:TVM_SORTCHILDREN) { TV_FIRST + 19 }
      const_attr_reader  :TVM_SORTCHILDREN
      
      const_set_lazy(:TVM_SORTCHILDRENCB) { TV_FIRST + 21 }
      const_attr_reader  :TVM_SORTCHILDRENCB
      
      const_set_lazy(:TVN_BEGINDRAGW) { -0x1c8 }
      const_attr_reader  :TVN_BEGINDRAGW
      
      const_set_lazy(:TVN_BEGINDRAGA) { -0x197 }
      const_attr_reader  :TVN_BEGINDRAGA
      
      const_set_lazy(:TVN_BEGINRDRAGW) { -0x1c9 }
      const_attr_reader  :TVN_BEGINRDRAGW
      
      const_set_lazy(:TVN_BEGINRDRAGA) { -0x198 }
      const_attr_reader  :TVN_BEGINRDRAGA
      
      const_set_lazy(:TVN_FIRST) { -0x190 }
      const_attr_reader  :TVN_FIRST
      
      const_set_lazy(:TVN_GETDISPINFOA) { TVN_FIRST - 3 }
      const_attr_reader  :TVN_GETDISPINFOA
      
      const_set_lazy(:TVN_GETDISPINFOW) { TVN_FIRST - 52 }
      const_attr_reader  :TVN_GETDISPINFOW
      
      const_set_lazy(:TVN_ITEMCHANGINGW) { TVN_FIRST - 17 }
      const_attr_reader  :TVN_ITEMCHANGINGW
      
      const_set_lazy(:TVN_ITEMCHANGINGA) { TVN_FIRST - 16 }
      const_attr_reader  :TVN_ITEMCHANGINGA
      
      const_set_lazy(:TVN_ITEMEXPANDEDA) { TVN_FIRST - 6 }
      const_attr_reader  :TVN_ITEMEXPANDEDA
      
      const_set_lazy(:TVN_ITEMEXPANDEDW) { TVN_FIRST - 55 }
      const_attr_reader  :TVN_ITEMEXPANDEDW
      
      const_set_lazy(:TVN_ITEMEXPANDINGW) { -0x1c6 }
      const_attr_reader  :TVN_ITEMEXPANDINGW
      
      const_set_lazy(:TVN_ITEMEXPANDINGA) { -0x195 }
      const_attr_reader  :TVN_ITEMEXPANDINGA
      
      const_set_lazy(:TVN_SELCHANGEDW) { -0x1c3 }
      const_attr_reader  :TVN_SELCHANGEDW
      
      const_set_lazy(:TVN_SELCHANGEDA) { -0x192 }
      const_attr_reader  :TVN_SELCHANGEDA
      
      const_set_lazy(:TVN_SELCHANGINGW) { -0x1c2 }
      const_attr_reader  :TVN_SELCHANGINGW
      
      const_set_lazy(:TVN_SELCHANGINGA) { -0x191 }
      const_attr_reader  :TVN_SELCHANGINGA
      
      const_set_lazy(:TVP_GLYPH) { 2 }
      const_attr_reader  :TVP_GLYPH
      
      const_set_lazy(:TVP_TREEITEM) { 1 }
      const_attr_reader  :TVP_TREEITEM
      
      const_set_lazy(:TVSIL_NORMAL) { 0x0 }
      const_attr_reader  :TVSIL_NORMAL
      
      const_set_lazy(:TVSIL_STATE) { 0x2 }
      const_attr_reader  :TVSIL_STATE
      
      const_set_lazy(:TVS_DISABLEDRAGDROP) { 0x10 }
      const_attr_reader  :TVS_DISABLEDRAGDROP
      
      const_set_lazy(:TVS_EX_AUTOHSCROLL) { 0x20 }
      const_attr_reader  :TVS_EX_AUTOHSCROLL
      
      const_set_lazy(:TVS_EX_DOUBLEBUFFER) { 0x4 }
      const_attr_reader  :TVS_EX_DOUBLEBUFFER
      
      const_set_lazy(:TVS_EX_DIMMEDCHECKBOXES) { 0x200 }
      const_attr_reader  :TVS_EX_DIMMEDCHECKBOXES
      
      const_set_lazy(:TVS_EX_DRAWIMAGEASYNC) { 0x400 }
      const_attr_reader  :TVS_EX_DRAWIMAGEASYNC
      
      const_set_lazy(:TVS_EX_EXCLUSIONCHECKBOXES) { 0x100 }
      const_attr_reader  :TVS_EX_EXCLUSIONCHECKBOXES
      
      const_set_lazy(:TVS_EX_FADEINOUTEXPANDOS) { 0x40 }
      const_attr_reader  :TVS_EX_FADEINOUTEXPANDOS
      
      const_set_lazy(:TVS_EX_MULTISELECT) { 0x2 }
      const_attr_reader  :TVS_EX_MULTISELECT
      
      const_set_lazy(:TVS_EX_NOINDENTSTATE) { 0x8 }
      const_attr_reader  :TVS_EX_NOINDENTSTATE
      
      const_set_lazy(:TVS_EX_PARTIALCHECKBOXES) { 0x80 }
      const_attr_reader  :TVS_EX_PARTIALCHECKBOXES
      
      const_set_lazy(:TVS_EX_RICHTOOLTIP) { 0x10 }
      const_attr_reader  :TVS_EX_RICHTOOLTIP
      
      const_set_lazy(:TVS_FULLROWSELECT) { 0x1000 }
      const_attr_reader  :TVS_FULLROWSELECT
      
      const_set_lazy(:TVS_HASBUTTONS) { 0x1 }
      const_attr_reader  :TVS_HASBUTTONS
      
      const_set_lazy(:TVS_HASLINES) { 0x2 }
      const_attr_reader  :TVS_HASLINES
      
      const_set_lazy(:TVS_LINESATROOT) { 0x4 }
      const_attr_reader  :TVS_LINESATROOT
      
      const_set_lazy(:TVS_NOHSCROLL) { 0x8000 }
      const_attr_reader  :TVS_NOHSCROLL
      
      const_set_lazy(:TVS_NONEVENHEIGHT) { 0x4000 }
      const_attr_reader  :TVS_NONEVENHEIGHT
      
      const_set_lazy(:TVS_NOSCROLL) { 0x2000 }
      const_attr_reader  :TVS_NOSCROLL
      
      const_set_lazy(:TVS_NOTOOLTIPS) { 0x80 }
      const_attr_reader  :TVS_NOTOOLTIPS
      
      const_set_lazy(:TVS_SHOWSELALWAYS) { 0x20 }
      const_attr_reader  :TVS_SHOWSELALWAYS
      
      const_set_lazy(:TVS_TRACKSELECT) { 0x200 }
      const_attr_reader  :TVS_TRACKSELECT
      
      const_set_lazy(:UDM_GETACCEL) { 0x46c }
      const_attr_reader  :UDM_GETACCEL
      
      const_set_lazy(:UDM_GETRANGE32) { 0x470 }
      const_attr_reader  :UDM_GETRANGE32
      
      const_set_lazy(:UDM_GETPOS) { 0x468 }
      const_attr_reader  :UDM_GETPOS
      
      const_set_lazy(:UDM_GETPOS32) { 0x472 }
      const_attr_reader  :UDM_GETPOS32
      
      const_set_lazy(:UDM_SETACCEL) { 0x46b }
      const_attr_reader  :UDM_SETACCEL
      
      const_set_lazy(:UDM_SETRANGE32) { 0x46f }
      const_attr_reader  :UDM_SETRANGE32
      
      const_set_lazy(:UDM_SETPOS) { 0x467 }
      const_attr_reader  :UDM_SETPOS
      
      const_set_lazy(:UDM_SETPOS32) { 0x471 }
      const_attr_reader  :UDM_SETPOS32
      
      const_set_lazy(:UDN_DELTAPOS) { -722 }
      const_attr_reader  :UDN_DELTAPOS
      
      const_set_lazy(:UDS_ALIGNLEFT) { 0x8 }
      const_attr_reader  :UDS_ALIGNLEFT
      
      const_set_lazy(:UDS_ALIGNRIGHT) { 0x4 }
      const_attr_reader  :UDS_ALIGNRIGHT
      
      const_set_lazy(:UDS_AUTOBUDDY) { 0x10 }
      const_attr_reader  :UDS_AUTOBUDDY
      
      const_set_lazy(:UDS_WRAP) { 0x1 }
      const_attr_reader  :UDS_WRAP
      
      const_set_lazy(:UIS_CLEAR) { 2 }
      const_attr_reader  :UIS_CLEAR
      
      const_set_lazy(:UIS_INITIALIZE) { 3 }
      const_attr_reader  :UIS_INITIALIZE
      
      const_set_lazy(:UIS_SET) { 1 }
      const_attr_reader  :UIS_SET
      
      const_set_lazy(:UISF_HIDEACCEL) { 0x2 }
      const_attr_reader  :UISF_HIDEACCEL
      
      const_set_lazy(:UISF_HIDEFOCUS) { 0x1 }
      const_attr_reader  :UISF_HIDEFOCUS
      
      const_set_lazy(:UPDOWN_CLASS) { "msctls_updown32" }
      const_attr_reader  :UPDOWN_CLASS
      
      # $NON-NLS-1$
      const_set_lazy(:USP_E_SCRIPT_NOT_IN_FONT) { -0x7ffbfe00 }
      const_attr_reader  :USP_E_SCRIPT_NOT_IN_FONT
      
      const_set_lazy(:VERTRES) { 0xa }
      const_attr_reader  :VERTRES
      
      const_set_lazy(:VK_BACK) { 0x8 }
      const_attr_reader  :VK_BACK
      
      const_set_lazy(:VK_CANCEL) { 0x3 }
      const_attr_reader  :VK_CANCEL
      
      const_set_lazy(:VK_CAPITAL) { 0x14 }
      const_attr_reader  :VK_CAPITAL
      
      const_set_lazy(:VK_CONTROL) { 0x11 }
      const_attr_reader  :VK_CONTROL
      
      const_set_lazy(:VK_DECIMAL) { 0x6e }
      const_attr_reader  :VK_DECIMAL
      
      const_set_lazy(:VK_DELETE) { 0x2e }
      const_attr_reader  :VK_DELETE
      
      const_set_lazy(:VK_DIVIDE) { 0x6f }
      const_attr_reader  :VK_DIVIDE
      
      const_set_lazy(:VK_DOWN) { 0x28 }
      const_attr_reader  :VK_DOWN
      
      const_set_lazy(:VK_END) { 0x23 }
      const_attr_reader  :VK_END
      
      const_set_lazy(:VK_ESCAPE) { 0x1b }
      const_attr_reader  :VK_ESCAPE
      
      const_set_lazy(:VK_F1) { 0x70 }
      const_attr_reader  :VK_F1
      
      const_set_lazy(:VK_F10) { 0x79 }
      const_attr_reader  :VK_F10
      
      const_set_lazy(:VK_F11) { 0x7a }
      const_attr_reader  :VK_F11
      
      const_set_lazy(:VK_F12) { 0x7b }
      const_attr_reader  :VK_F12
      
      const_set_lazy(:VK_F13) { 0x7c }
      const_attr_reader  :VK_F13
      
      const_set_lazy(:VK_F14) { 0x7d }
      const_attr_reader  :VK_F14
      
      const_set_lazy(:VK_F15) { 0x7e }
      const_attr_reader  :VK_F15
      
      const_set_lazy(:VK_F2) { 0x71 }
      const_attr_reader  :VK_F2
      
      const_set_lazy(:VK_F3) { 0x72 }
      const_attr_reader  :VK_F3
      
      const_set_lazy(:VK_F4) { 0x73 }
      const_attr_reader  :VK_F4
      
      const_set_lazy(:VK_F5) { 0x74 }
      const_attr_reader  :VK_F5
      
      const_set_lazy(:VK_F6) { 0x75 }
      const_attr_reader  :VK_F6
      
      const_set_lazy(:VK_F7) { 0x76 }
      const_attr_reader  :VK_F7
      
      const_set_lazy(:VK_F8) { 0x77 }
      const_attr_reader  :VK_F8
      
      const_set_lazy(:VK_F9) { 0x78 }
      const_attr_reader  :VK_F9
      
      const_set_lazy(:VK_HOME) { 0x24 }
      const_attr_reader  :VK_HOME
      
      const_set_lazy(:VK_INSERT) { 0x2d }
      const_attr_reader  :VK_INSERT
      
      const_set_lazy(:VK_LBUTTON) { 0x1 }
      const_attr_reader  :VK_LBUTTON
      
      const_set_lazy(:VK_LEFT) { 0x25 }
      const_attr_reader  :VK_LEFT
      
      const_set_lazy(:VK_MBUTTON) { 0x4 }
      const_attr_reader  :VK_MBUTTON
      
      const_set_lazy(:VK_MENU) { 0x12 }
      const_attr_reader  :VK_MENU
      
      const_set_lazy(:VK_MULTIPLY) { 0x6a }
      const_attr_reader  :VK_MULTIPLY
      
      const_set_lazy(:VK_N) { 0x4e }
      const_attr_reader  :VK_N
      
      const_set_lazy(:VK_NEXT) { 0x22 }
      const_attr_reader  :VK_NEXT
      
      const_set_lazy(:VK_NUMLOCK) { 0x90 }
      const_attr_reader  :VK_NUMLOCK
      
      const_set_lazy(:VK_NUMPAD0) { 0x60 }
      const_attr_reader  :VK_NUMPAD0
      
      const_set_lazy(:VK_NUMPAD1) { 0x61 }
      const_attr_reader  :VK_NUMPAD1
      
      const_set_lazy(:VK_NUMPAD2) { 0x62 }
      const_attr_reader  :VK_NUMPAD2
      
      const_set_lazy(:VK_NUMPAD3) { 0x63 }
      const_attr_reader  :VK_NUMPAD3
      
      const_set_lazy(:VK_NUMPAD4) { 0x64 }
      const_attr_reader  :VK_NUMPAD4
      
      const_set_lazy(:VK_NUMPAD5) { 0x65 }
      const_attr_reader  :VK_NUMPAD5
      
      const_set_lazy(:VK_NUMPAD6) { 0x66 }
      const_attr_reader  :VK_NUMPAD6
      
      const_set_lazy(:VK_NUMPAD7) { 0x67 }
      const_attr_reader  :VK_NUMPAD7
      
      const_set_lazy(:VK_NUMPAD8) { 0x68 }
      const_attr_reader  :VK_NUMPAD8
      
      const_set_lazy(:VK_NUMPAD9) { 0x69 }
      const_attr_reader  :VK_NUMPAD9
      
      const_set_lazy(:VK_PAUSE) { 0x13 }
      const_attr_reader  :VK_PAUSE
      
      const_set_lazy(:VK_PRIOR) { 0x21 }
      const_attr_reader  :VK_PRIOR
      
      const_set_lazy(:VK_RBUTTON) { 0x2 }
      const_attr_reader  :VK_RBUTTON
      
      const_set_lazy(:VK_RETURN) { 0xd }
      const_attr_reader  :VK_RETURN
      
      const_set_lazy(:VK_RIGHT) { 0x27 }
      const_attr_reader  :VK_RIGHT
      
      const_set_lazy(:VK_SCROLL) { 0x91 }
      const_attr_reader  :VK_SCROLL
      
      const_set_lazy(:VK_SEPARATOR) { 0x6c }
      const_attr_reader  :VK_SEPARATOR
      
      const_set_lazy(:VK_SHIFT) { 0x10 }
      const_attr_reader  :VK_SHIFT
      
      const_set_lazy(:VK_SNAPSHOT) { 0x2c }
      const_attr_reader  :VK_SNAPSHOT
      
      const_set_lazy(:VK_SPACE) { 0x20 }
      const_attr_reader  :VK_SPACE
      
      const_set_lazy(:VK_SUBTRACT) { 0x6d }
      const_attr_reader  :VK_SUBTRACT
      
      const_set_lazy(:VK_TAB) { 0x9 }
      const_attr_reader  :VK_TAB
      
      const_set_lazy(:VK_UP) { 0x26 }
      const_attr_reader  :VK_UP
      
      const_set_lazy(:VK_XBUTTON1) { 0x5 }
      const_attr_reader  :VK_XBUTTON1
      
      const_set_lazy(:VK_XBUTTON2) { 0x6 }
      const_attr_reader  :VK_XBUTTON2
      
      const_set_lazy(:VK_ADD) { 0x6b }
      const_attr_reader  :VK_ADD
      
      const_set_lazy(:VK_APP1) { 0xc1 }
      const_attr_reader  :VK_APP1
      
      const_set_lazy(:VK_APP2) { 0xc2 }
      const_attr_reader  :VK_APP2
      
      const_set_lazy(:VK_APP3) { 0xc3 }
      const_attr_reader  :VK_APP3
      
      const_set_lazy(:VK_APP4) { 0xc4 }
      const_attr_reader  :VK_APP4
      
      const_set_lazy(:VK_APP5) { 0xc5 }
      const_attr_reader  :VK_APP5
      
      const_set_lazy(:VK_APP6) { 0xc6 }
      const_attr_reader  :VK_APP6
      
      const_set_lazy(:WC_HEADER) { "SysHeader32" }
      const_attr_reader  :WC_HEADER
      
      # $NON-NLS-1$
      const_set_lazy(:WC_LINK) { "SysLink" }
      const_attr_reader  :WC_LINK
      
      # $NON-NLS-1$
      const_set_lazy(:WC_LISTVIEW) { "SysListView32" }
      const_attr_reader  :WC_LISTVIEW
      
      # $NON-NLS-1$
      const_set_lazy(:WC_TABCONTROL) { "SysTabControl32" }
      const_attr_reader  :WC_TABCONTROL
      
      # $NON-NLS-1$
      const_set_lazy(:WC_TREEVIEW) { "SysTreeView32" }
      const_attr_reader  :WC_TREEVIEW
      
      # $NON-NLS-1$
      const_set_lazy(:WINDING) { 2 }
      const_attr_reader  :WINDING
      
      const_set_lazy(:WH_CBT) { 5 }
      const_attr_reader  :WH_CBT
      
      const_set_lazy(:WH_GETMESSAGE) { 0x3 }
      const_attr_reader  :WH_GETMESSAGE
      
      const_set_lazy(:WH_MSGFILTER) { -0x1 }
      const_attr_reader  :WH_MSGFILTER
      
      const_set_lazy(:WH_FOREGROUNDIDLE) { 11 }
      const_attr_reader  :WH_FOREGROUNDIDLE
      
      const_set_lazy(:WHEEL_DELTA) { 120 }
      const_attr_reader  :WHEEL_DELTA
      
      const_set_lazy(:WHEEL_PAGESCROLL) { -0x1 }
      const_attr_reader  :WHEEL_PAGESCROLL
      
      const_set_lazy(:WHITE_BRUSH) { 0 }
      const_attr_reader  :WHITE_BRUSH
      
      const_set_lazy(:WM_ACTIVATE) { 0x6 }
      const_attr_reader  :WM_ACTIVATE
      
      const_set_lazy(:WM_ACTIVATEAPP) { 0x1c }
      const_attr_reader  :WM_ACTIVATEAPP
      
      const_set_lazy(:WM_APP) { 0x8000 }
      const_attr_reader  :WM_APP
      
      const_set_lazy(:WM_DWMCOLORIZATIONCOLORCHANGED) { 0x320 }
      const_attr_reader  :WM_DWMCOLORIZATIONCOLORCHANGED
      
      const_set_lazy(:WM_CANCELMODE) { 0x1f }
      const_attr_reader  :WM_CANCELMODE
      
      const_set_lazy(:WM_CAPTURECHANGED) { 0x215 }
      const_attr_reader  :WM_CAPTURECHANGED
      
      const_set_lazy(:WM_CHANGEUISTATE) { 0x127 }
      const_attr_reader  :WM_CHANGEUISTATE
      
      const_set_lazy(:WM_CHAR) { 0x102 }
      const_attr_reader  :WM_CHAR
      
      const_set_lazy(:WM_CLEAR) { 0x303 }
      const_attr_reader  :WM_CLEAR
      
      const_set_lazy(:WM_CLOSE) { 0x10 }
      const_attr_reader  :WM_CLOSE
      
      const_set_lazy(:WM_COMMAND) { 0x111 }
      const_attr_reader  :WM_COMMAND
      
      const_set_lazy(:WM_CONTEXTMENU) { 0x7b }
      const_attr_reader  :WM_CONTEXTMENU
      
      const_set_lazy(:WM_COPY) { 0x301 }
      const_attr_reader  :WM_COPY
      
      const_set_lazy(:WM_CREATE) { 0x1 }
      const_attr_reader  :WM_CREATE
      
      const_set_lazy(:WM_CTLCOLORBTN) { 0x135 }
      const_attr_reader  :WM_CTLCOLORBTN
      
      const_set_lazy(:WM_CTLCOLORDLG) { 0x136 }
      const_attr_reader  :WM_CTLCOLORDLG
      
      const_set_lazy(:WM_CTLCOLOREDIT) { 0x133 }
      const_attr_reader  :WM_CTLCOLOREDIT
      
      const_set_lazy(:WM_CTLCOLORLISTBOX) { 0x134 }
      const_attr_reader  :WM_CTLCOLORLISTBOX
      
      const_set_lazy(:WM_CTLCOLORMSGBOX) { 0x132 }
      const_attr_reader  :WM_CTLCOLORMSGBOX
      
      const_set_lazy(:WM_CTLCOLORSCROLLBAR) { 0x137 }
      const_attr_reader  :WM_CTLCOLORSCROLLBAR
      
      const_set_lazy(:WM_CTLCOLORSTATIC) { 0x138 }
      const_attr_reader  :WM_CTLCOLORSTATIC
      
      const_set_lazy(:WM_CUT) { 0x300 }
      const_attr_reader  :WM_CUT
      
      const_set_lazy(:WM_DEADCHAR) { 0x103 }
      const_attr_reader  :WM_DEADCHAR
      
      const_set_lazy(:WM_DESTROY) { 0x2 }
      const_attr_reader  :WM_DESTROY
      
      const_set_lazy(:WM_DRAWITEM) { 0x2b }
      const_attr_reader  :WM_DRAWITEM
      
      const_set_lazy(:WM_ENDSESSION) { 0x16 }
      const_attr_reader  :WM_ENDSESSION
      
      const_set_lazy(:WM_ENTERIDLE) { 0x121 }
      const_attr_reader  :WM_ENTERIDLE
      
      const_set_lazy(:WM_ERASEBKGND) { 0x14 }
      const_attr_reader  :WM_ERASEBKGND
      
      const_set_lazy(:WM_GETDLGCODE) { 0x87 }
      const_attr_reader  :WM_GETDLGCODE
      
      const_set_lazy(:WM_GETFONT) { 0x31 }
      const_attr_reader  :WM_GETFONT
      
      # public static final int WM_GETICON = 0x7f;
      const_set_lazy(:WM_GETOBJECT) { 0x3d }
      const_attr_reader  :WM_GETOBJECT
      
      const_set_lazy(:WM_GETMINMAXINFO) { 0x24 }
      const_attr_reader  :WM_GETMINMAXINFO
      
      const_set_lazy(:WM_HELP) { 0x53 }
      const_attr_reader  :WM_HELP
      
      const_set_lazy(:WM_HOTKEY) { 0x312 }
      const_attr_reader  :WM_HOTKEY
      
      const_set_lazy(:WM_HSCROLL) { 0x114 }
      const_attr_reader  :WM_HSCROLL
      
      const_set_lazy(:WM_IME_CHAR) { 0x286 }
      const_attr_reader  :WM_IME_CHAR
      
      const_set_lazy(:WM_IME_COMPOSITION) { 0x10f }
      const_attr_reader  :WM_IME_COMPOSITION
      
      const_set_lazy(:WM_IME_COMPOSITION_START) { 0x10d }
      const_attr_reader  :WM_IME_COMPOSITION_START
      
      const_set_lazy(:WM_IME_ENDCOMPOSITION) { 0x10e }
      const_attr_reader  :WM_IME_ENDCOMPOSITION
      
      const_set_lazy(:WM_INITDIALOG) { 0x110 }
      const_attr_reader  :WM_INITDIALOG
      
      const_set_lazy(:WM_INITMENUPOPUP) { 0x117 }
      const_attr_reader  :WM_INITMENUPOPUP
      
      const_set_lazy(:WM_INPUTLANGCHANGE) { 0x51 }
      const_attr_reader  :WM_INPUTLANGCHANGE
      
      const_set_lazy(:WM_KEYDOWN) { 0x100 }
      const_attr_reader  :WM_KEYDOWN
      
      const_set_lazy(:WM_KEYFIRST) { 0x100 }
      const_attr_reader  :WM_KEYFIRST
      
      const_set_lazy(:WM_KEYLAST) { 0x108 }
      const_attr_reader  :WM_KEYLAST
      
      const_set_lazy(:WM_KEYUP) { 0x101 }
      const_attr_reader  :WM_KEYUP
      
      const_set_lazy(:WM_KILLFOCUS) { 0x8 }
      const_attr_reader  :WM_KILLFOCUS
      
      const_set_lazy(:WM_LBUTTONDBLCLK) { 0x203 }
      const_attr_reader  :WM_LBUTTONDBLCLK
      
      const_set_lazy(:WM_LBUTTONDOWN) { 0x201 }
      const_attr_reader  :WM_LBUTTONDOWN
      
      const_set_lazy(:WM_LBUTTONUP) { 0x202 }
      const_attr_reader  :WM_LBUTTONUP
      
      const_set_lazy(:WM_MBUTTONDBLCLK) { 0x209 }
      const_attr_reader  :WM_MBUTTONDBLCLK
      
      const_set_lazy(:WM_MBUTTONDOWN) { 0x207 }
      const_attr_reader  :WM_MBUTTONDOWN
      
      const_set_lazy(:WM_MBUTTONUP) { 0x208 }
      const_attr_reader  :WM_MBUTTONUP
      
      const_set_lazy(:WM_MEASUREITEM) { 0x2c }
      const_attr_reader  :WM_MEASUREITEM
      
      const_set_lazy(:WM_MENUCHAR) { 0x120 }
      const_attr_reader  :WM_MENUCHAR
      
      const_set_lazy(:WM_MENUSELECT) { 0x11f }
      const_attr_reader  :WM_MENUSELECT
      
      const_set_lazy(:WM_MOUSEACTIVATE) { 0x21 }
      const_attr_reader  :WM_MOUSEACTIVATE
      
      const_set_lazy(:WM_MOUSEFIRST) { 0x200 }
      const_attr_reader  :WM_MOUSEFIRST
      
      const_set_lazy(:WM_MOUSEHOVER) { 0x2a1 }
      const_attr_reader  :WM_MOUSEHOVER
      
      const_set_lazy(:WM_MOUSELEAVE) { 0x2a3 }
      const_attr_reader  :WM_MOUSELEAVE
      
      const_set_lazy(:WM_MOUSEMOVE) { 0x200 }
      const_attr_reader  :WM_MOUSEMOVE
      
      const_set_lazy(:WM_MOUSEWHEEL) { 0x20a }
      const_attr_reader  :WM_MOUSEWHEEL
      
      const_set_lazy(:WM_MOUSELAST) { 0x20d }
      const_attr_reader  :WM_MOUSELAST
      
      const_set_lazy(:WM_MOVE) { 0x3 }
      const_attr_reader  :WM_MOVE
      
      const_set_lazy(:WM_NCACTIVATE) { 0x86 }
      const_attr_reader  :WM_NCACTIVATE
      
      const_set_lazy(:WM_NCCALCSIZE) { 0x83 }
      const_attr_reader  :WM_NCCALCSIZE
      
      const_set_lazy(:WM_NCHITTEST) { 0x84 }
      const_attr_reader  :WM_NCHITTEST
      
      const_set_lazy(:WM_NCLBUTTONDOWN) { 0xa1 }
      const_attr_reader  :WM_NCLBUTTONDOWN
      
      const_set_lazy(:WM_NCPAINT) { 0x85 }
      const_attr_reader  :WM_NCPAINT
      
      const_set_lazy(:WM_NOTIFY) { 0x4e }
      const_attr_reader  :WM_NOTIFY
      
      const_set_lazy(:WM_NULL) { 0x0 }
      const_attr_reader  :WM_NULL
      
      const_set_lazy(:WM_PAINT) { 0xf }
      const_attr_reader  :WM_PAINT
      
      const_set_lazy(:WM_PALETTECHANGED) { 0x311 }
      const_attr_reader  :WM_PALETTECHANGED
      
      const_set_lazy(:WM_PARENTNOTIFY) { 0x210 }
      const_attr_reader  :WM_PARENTNOTIFY
      
      const_set_lazy(:WM_PASTE) { 0x302 }
      const_attr_reader  :WM_PASTE
      
      const_set_lazy(:WM_PRINT) { 0x317 }
      const_attr_reader  :WM_PRINT
      
      const_set_lazy(:WM_PRINTCLIENT) { 0x318 }
      const_attr_reader  :WM_PRINTCLIENT
      
      const_set_lazy(:WM_QUERYENDSESSION) { 0x11 }
      const_attr_reader  :WM_QUERYENDSESSION
      
      const_set_lazy(:WM_QUERYNEWPALETTE) { 0x30f }
      const_attr_reader  :WM_QUERYNEWPALETTE
      
      const_set_lazy(:WM_QUERYOPEN) { 0x13 }
      const_attr_reader  :WM_QUERYOPEN
      
      const_set_lazy(:WM_QUERYUISTATE) { 0x129 }
      const_attr_reader  :WM_QUERYUISTATE
      
      const_set_lazy(:WM_RBUTTONDBLCLK) { 0x206 }
      const_attr_reader  :WM_RBUTTONDBLCLK
      
      const_set_lazy(:WM_RBUTTONDOWN) { 0x204 }
      const_attr_reader  :WM_RBUTTONDOWN
      
      const_set_lazy(:WM_RBUTTONUP) { 0x205 }
      const_attr_reader  :WM_RBUTTONUP
      
      const_set_lazy(:WM_SETCURSOR) { 0x20 }
      const_attr_reader  :WM_SETCURSOR
      
      const_set_lazy(:WM_SETFOCUS) { 0x7 }
      const_attr_reader  :WM_SETFOCUS
      
      const_set_lazy(:WM_SETFONT) { 0x30 }
      const_attr_reader  :WM_SETFONT
      
      const_set_lazy(:WM_SETICON) { 0x80 }
      const_attr_reader  :WM_SETICON
      
      const_set_lazy(:WM_SETREDRAW) { 0xb }
      const_attr_reader  :WM_SETREDRAW
      
      const_set_lazy(:WM_SETTEXT) { 12 }
      const_attr_reader  :WM_SETTEXT
      
      const_set_lazy(:WM_SETTINGCHANGE) { 0x1a }
      const_attr_reader  :WM_SETTINGCHANGE
      
      const_set_lazy(:WM_SHOWWINDOW) { 0x18 }
      const_attr_reader  :WM_SHOWWINDOW
      
      const_set_lazy(:WM_SIZE) { 0x5 }
      const_attr_reader  :WM_SIZE
      
      const_set_lazy(:WM_SYSCHAR) { 0x106 }
      const_attr_reader  :WM_SYSCHAR
      
      const_set_lazy(:WM_SYSCOLORCHANGE) { 0x15 }
      const_attr_reader  :WM_SYSCOLORCHANGE
      
      const_set_lazy(:WM_SYSCOMMAND) { 0x112 }
      const_attr_reader  :WM_SYSCOMMAND
      
      const_set_lazy(:WM_SYSKEYDOWN) { 0x104 }
      const_attr_reader  :WM_SYSKEYDOWN
      
      const_set_lazy(:WM_SYSKEYUP) { 0x105 }
      const_attr_reader  :WM_SYSKEYUP
      
      const_set_lazy(:WM_TIMER) { 0x113 }
      const_attr_reader  :WM_TIMER
      
      const_set_lazy(:WM_THEMECHANGED) { 0x31a }
      const_attr_reader  :WM_THEMECHANGED
      
      const_set_lazy(:WM_UNDO) { 0x304 }
      const_attr_reader  :WM_UNDO
      
      const_set_lazy(:WM_UPDATEUISTATE) { 0x128 }
      const_attr_reader  :WM_UPDATEUISTATE
      
      const_set_lazy(:WM_USER) { 0x400 }
      const_attr_reader  :WM_USER
      
      const_set_lazy(:WM_VSCROLL) { 0x115 }
      const_attr_reader  :WM_VSCROLL
      
      const_set_lazy(:WM_WINDOWPOSCHANGED) { 0x47 }
      const_attr_reader  :WM_WINDOWPOSCHANGED
      
      const_set_lazy(:WM_WINDOWPOSCHANGING) { 0x46 }
      const_attr_reader  :WM_WINDOWPOSCHANGING
      
      const_set_lazy(:WS_BORDER) { 0x800000 }
      const_attr_reader  :WS_BORDER
      
      const_set_lazy(:WS_CAPTION) { 0xc00000 }
      const_attr_reader  :WS_CAPTION
      
      const_set_lazy(:WS_CHILD) { 0x40000000 }
      const_attr_reader  :WS_CHILD
      
      const_set_lazy(:WS_CLIPCHILDREN) { 0x2000000 }
      const_attr_reader  :WS_CLIPCHILDREN
      
      const_set_lazy(:WS_CLIPSIBLINGS) { 0x4000000 }
      const_attr_reader  :WS_CLIPSIBLINGS
      
      const_set_lazy(:WS_DISABLED) { 0x4000000 }
      const_attr_reader  :WS_DISABLED
      
      const_set_lazy(:WS_EX_APPWINDOW) { 0x40000 }
      const_attr_reader  :WS_EX_APPWINDOW
      
      const_set_lazy(:WS_EX_CAPTIONOKBTN) { -0x80000000 }
      const_attr_reader  :WS_EX_CAPTIONOKBTN
      
      const_set_lazy(:WS_EX_CLIENTEDGE) { 0x200 }
      const_attr_reader  :WS_EX_CLIENTEDGE
      
      const_set_lazy(:WS_EX_COMPOSITED) { 0x2000000 }
      const_attr_reader  :WS_EX_COMPOSITED
      
      const_set_lazy(:WS_EX_DLGMODALFRAME) { 0x1 }
      const_attr_reader  :WS_EX_DLGMODALFRAME
      
      const_set_lazy(:WS_EX_LAYERED) { 0x80000 }
      const_attr_reader  :WS_EX_LAYERED
      
      const_set_lazy(:WS_EX_LAYOUTRTL) { 0x400000 }
      const_attr_reader  :WS_EX_LAYOUTRTL
      
      const_set_lazy(:WS_EX_LEFTSCROLLBAR) { 0x4000 }
      const_attr_reader  :WS_EX_LEFTSCROLLBAR
      
      const_set_lazy(:WS_EX_MDICHILD) { 0x40 }
      const_attr_reader  :WS_EX_MDICHILD
      
      const_set_lazy(:WS_EX_NOINHERITLAYOUT) { 0x100000 }
      const_attr_reader  :WS_EX_NOINHERITLAYOUT
      
      const_set_lazy(:WS_EX_NOACTIVATE) { 0x8000000 }
      const_attr_reader  :WS_EX_NOACTIVATE
      
      const_set_lazy(:WS_EX_RIGHT) { 0x1000 }
      const_attr_reader  :WS_EX_RIGHT
      
      const_set_lazy(:WS_EX_RTLREADING) { 0x2000 }
      const_attr_reader  :WS_EX_RTLREADING
      
      const_set_lazy(:WS_EX_STATICEDGE) { 0x20000 }
      const_attr_reader  :WS_EX_STATICEDGE
      
      const_set_lazy(:WS_EX_TOOLWINDOW) { 0x80 }
      const_attr_reader  :WS_EX_TOOLWINDOW
      
      const_set_lazy(:WS_EX_TOPMOST) { 0x8 }
      const_attr_reader  :WS_EX_TOPMOST
      
      const_set_lazy(:WS_EX_TRANSPARENT) { 0x20 }
      const_attr_reader  :WS_EX_TRANSPARENT
      
      const_set_lazy(:WS_HSCROLL) { 0x100000 }
      const_attr_reader  :WS_HSCROLL
      
      const_set_lazy(:WS_MAXIMIZEBOX) { IsWinCE ? 0x20000 : 0x10000 }
      const_attr_reader  :WS_MAXIMIZEBOX
      
      const_set_lazy(:WS_MINIMIZEBOX) { IsWinCE ? 0x10000 : 0x20000 }
      const_attr_reader  :WS_MINIMIZEBOX
      
      const_set_lazy(:WS_OVERLAPPED) { IsWinCE ? WS_BORDER | WS_CAPTION : 0x0 }
      const_attr_reader  :WS_OVERLAPPED
      
      const_set_lazy(:WS_OVERLAPPEDWINDOW) { 0xcf0000 }
      const_attr_reader  :WS_OVERLAPPEDWINDOW
      
      const_set_lazy(:WS_POPUP) { -0x80000000 }
      const_attr_reader  :WS_POPUP
      
      const_set_lazy(:WS_SYSMENU) { 0x80000 }
      const_attr_reader  :WS_SYSMENU
      
      const_set_lazy(:WS_TABSTOP) { 0x10000 }
      const_attr_reader  :WS_TABSTOP
      
      const_set_lazy(:WS_THICKFRAME) { 0x40000 }
      const_attr_reader  :WS_THICKFRAME
      
      const_set_lazy(:WS_VISIBLE) { 0x10000000 }
      const_attr_reader  :WS_VISIBLE
      
      const_set_lazy(:WS_VSCROLL) { 0x200000 }
      const_attr_reader  :WS_VSCROLL
      
      const_set_lazy(:WM_XBUTTONDOWN) { 0x20b }
      const_attr_reader  :WM_XBUTTONDOWN
      
      const_set_lazy(:WM_XBUTTONUP) { 0x20c }
      const_attr_reader  :WM_XBUTTONUP
      
      const_set_lazy(:WM_XBUTTONDBLCLK) { 0x20d }
      const_attr_reader  :WM_XBUTTONDBLCLK
      
      const_set_lazy(:XBUTTON1) { 0x1 }
      const_attr_reader  :XBUTTON1
      
      const_set_lazy(:XBUTTON2) { 0x2 }
      const_attr_reader  :XBUTTON2
      
      typesig { [::Java::Int, ::Java::Int] }
      def _version(major, minor)
        return major << 16 | minor
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ACCEL_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      # 64 bit
      def _accel_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ACCEL_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ACTCTX_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _actctx_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ACTCTX_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BITMAP_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _bitmap_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BITMAP_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BITMAPINFOHEADER_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _bitmapinfoheader_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BITMAPINFOHEADER_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BLENDFUNCTION_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _blendfunction_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BLENDFUNCTION_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BP_1PAINTPARAMS_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _bp_paintparams_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BP_1PAINTPARAMS_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BROWSEINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _browseinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BROWSEINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BUTTON_1IMAGELIST_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _button_imagelist_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BUTTON_1IMAGELIST_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CANDIDATEFORM_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _candidateform_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CANDIDATEFORM_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CHOOSECOLOR_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _choosecolor_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CHOOSECOLOR_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CHOOSEFONT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _choosefont_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CHOOSEFONT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_COMBOBOXINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _comboboxinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_COMBOBOXINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_COMPOSITIONFORM_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _compositionform_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_COMPOSITIONFORM_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CREATESTRUCT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _createstruct_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CREATESTRUCT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DEVMODEA_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _devmodea_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DEVMODEA_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DEVMODEW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _devmodew_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DEVMODEW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DIBSECTION_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _dibsection_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DIBSECTION_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DLLVERSIONINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _dllversioninfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DLLVERSIONINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DOCHOSTUIINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _dochostuiinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DOCHOSTUIINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DOCINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _docinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DOCINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DRAWITEMSTRUCT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _drawitemstruct_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DRAWITEMSTRUCT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DROPFILES_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _dropfiles_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DROPFILES_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DWM_1BLURBEHIND_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _dwm_blurbehind_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DWM_1BLURBEHIND_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EMR_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _emr_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EMR_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EMREXTCREATEFONTINDIRECTW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _emrextcreatefontindirectw_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EMREXTCREATEFONTINDIRECTW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EXTLOGFONTW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _extlogfontw_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EXTLOGFONTW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EXTLOGPEN_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _extlogpen_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EXTLOGPEN_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_FILETIME_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _filetime_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_FILETIME_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GCP_1RESULTS_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gcp_results_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GCP_1RESULTS_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GRADIENT_1RECT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gradient_rect_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GRADIENT_1RECT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GUITHREADINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _guithreadinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GUITHREADINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_HDITEM_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _hditem_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_HDITEM_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_HDLAYOUT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _hdlayout_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_HDLAYOUT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_HDHITTESTINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _hdhittestinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_HDHITTESTINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_HELPINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _helpinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_HELPINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_HIGHCONTRAST_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _highcontrast_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_HIGHCONTRAST_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ICONINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _iconinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ICONINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_INITCOMMONCONTROLSEX_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _initcommoncontrolsex_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_INITCOMMONCONTROLSEX_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_INPUT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _input_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_INPUT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_KEYBDINPUT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _keybdinput_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_KEYBDINPUT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LITEM_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _litem_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LITEM_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LOGBRUSH_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _logbrush_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LOGBRUSH_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LOGFONTA_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _logfonta_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LOGFONTA_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LOGFONTW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _logfontw_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LOGFONTW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LOGPEN_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _logpen_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LOGPEN_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LVCOLUMN_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _lvcolumn_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LVCOLUMN_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LVHITTESTINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _lvhittestinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LVHITTESTINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LVITEM_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _lvitem_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LVITEM_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MARGINS_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _margins_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MARGINS_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MCHITTESTINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _mchittestinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MCHITTESTINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MEASUREITEMSTRUCT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _measureitemstruct_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MEASUREITEMSTRUCT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MENUBARINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _menubarinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MENUBARINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MENUINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _menuinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MENUINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MENUITEMINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _menuiteminfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MENUITEMINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MINMAXINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _minmaxinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MINMAXINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MOUSEINPUT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _mouseinput_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MOUSEINPUT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MONITORINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _monitorinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MONITORINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MSG_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _msg_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MSG_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMCUSTOMDRAW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmcustomdraw_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMCUSTOMDRAW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMHDR_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmhdr_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMHDR_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMHEADER_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmheader_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMHEADER_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMLINK_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmlink_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMLINK_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMLISTVIEW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmlistview_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMLISTVIEW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMLVCUSTOMDRAW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmlvcustomdraw_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMLVCUSTOMDRAW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMLVDISPINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmlvdispinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMLVDISPINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMLVFINDITEM_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmlvfinditem_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMLVFINDITEM_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMLVODSTATECHANGE_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmlvodstatechange_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMLVODSTATECHANGE_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMREBARCHEVRON_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmrebarchevron_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMREBARCHEVRON_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMREBARCHILDSIZE_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmrebarchildsize_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMREBARCHILDSIZE_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMRGINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmrginfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMRGINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMTBHOTITEM_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmtbhotitem_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMTBHOTITEM_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMTREEVIEW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmtreeview_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMTREEVIEW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMTOOLBAR_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmtoolbar_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMTOOLBAR_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMTTDISPINFOA_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmttdispinfoa_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMTTDISPINFOA_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMTTDISPINFOW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmttdispinfow_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMTTDISPINFOW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMTTCUSTOMDRAW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmttcustomdraw_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMTTCUSTOMDRAW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMTVCUSTOMDRAW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmtvcustomdraw_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMTVCUSTOMDRAW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMTVDISPINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmtvdispinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMTVDISPINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMTVITEMCHANGE_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmtvitemchange_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMTVITEMCHANGE_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NMUPDOWN_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nmupdown_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NMUPDOWN_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NONCLIENTMETRICSA_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nonclientmetricsa_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NONCLIENTMETRICSA_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NONCLIENTMETRICSW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _nonclientmetricsw_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NONCLIENTMETRICSW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NOTIFYICONDATAA_1V2_1SIZE, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      def _notifyicondataa_v2_size
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NOTIFYICONDATAA_1V2_1SIZE, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NOTIFYICONDATAW_1V2_1SIZE, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=const
      def _notifyicondataw_v2_size
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NOTIFYICONDATAW_1V2_1SIZE, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OFNOTIFY_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _ofnotify_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OFNOTIFY_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OPENFILENAME_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _openfilename_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OPENFILENAME_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OSVERSIONINFOA_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _osversioninfoa_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OSVERSIONINFOA_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OSVERSIONINFOW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _osversioninfow_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OSVERSIONINFOW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OSVERSIONINFOEXA_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _osversioninfoexa_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OSVERSIONINFOEXA_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OSVERSIONINFOEXW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _osversioninfoexw_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OSVERSIONINFOEXW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OUTLINETEXTMETRICA_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _outlinetextmetrica_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OUTLINETEXTMETRICA_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OUTLINETEXTMETRICW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _outlinetextmetricw_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OUTLINETEXTMETRICW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PAINTSTRUCT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _paintstruct_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PAINTSTRUCT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PANOSE_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _panose_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PANOSE_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_POINT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _point_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_POINT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PRINTDLG_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _printdlg_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PRINTDLG_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PROCESS_1INFORMATION_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _process_information_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PROCESS_1INFORMATION_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_REBARBANDINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _rebarbandinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_REBARBANDINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RECT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _rect_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RECT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1ANALYSIS_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _script_analysis_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1ANALYSIS_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1CONTROL_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _script_control_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1CONTROL_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1DIGITSUBSTITUTE_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _script_digitsubstitute_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1DIGITSUBSTITUTE_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1FONTPROPERTIES_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _script_fontproperties_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1FONTPROPERTIES_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1ITEM_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _script_item_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1ITEM_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1LOGATTR_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _script_logattr_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1LOGATTR_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1PROPERTIES_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _script_properties_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1PROPERTIES_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1STATE_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _script_state_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1STATE_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1STRING_1ANALYSIS_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _script_string_analysis_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SCRIPT_1STRING_1ANALYSIS_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SCROLLBARINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _scrollbarinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SCROLLBARINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SCROLLINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _scrollinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SCROLLINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHACTIVATEINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _shactivateinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHACTIVATEINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHDRAGIMAGE_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _shdragimage_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHDRAGIMAGE_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHELLEXECUTEINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _shellexecuteinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHELLEXECUTEINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHFILEINFOA_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _shfileinfoa_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHFILEINFOA_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHFILEINFOW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _shfileinfow_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHFILEINFOW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHMENUBARINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _shmenubarinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHMENUBARINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHRGINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _shrginfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHRGINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SIPINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _sipinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SIPINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SIZE_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _size_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SIZE_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_STARTUPINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _startupinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_STARTUPINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SYSTEMTIME_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _systemtime_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SYSTEMTIME_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TBBUTTON_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _tbbutton_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TBBUTTON_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TBBUTTONINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _tbbuttoninfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TBBUTTONINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TCITEM_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _tcitem_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TCITEM_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TCHITTESTINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _tchittestinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TCHITTESTINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TEXTMETRICA_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _textmetrica_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TEXTMETRICA_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TEXTMETRICW_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _textmetricw_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TEXTMETRICW_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TF_1DA_1COLOR_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _tf_da_color_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TF_1DA_1COLOR_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TF_1DISPLAYATTRIBUTE_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _tf_displayattribute_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TF_1DISPLAYATTRIBUTE_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TOOLINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _toolinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TOOLINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TRACKMOUSEEVENT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _trackmouseevent_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TRACKMOUSEEVENT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TRIVERTEX_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _trivertex_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TRIVERTEX_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TVHITTESTINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _tvhittestinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TVHITTESTINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TVINSERTSTRUCT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _tvinsertstruct_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TVINSERTSTRUCT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TVITEM_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _tvitem_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TVITEM_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TVITEMEX_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _tvitemex_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TVITEMEX_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TVSORTCB_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _tvsortcb_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TVSORTCB_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_UDACCEL_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _udaccel_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_UDACCEL_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_WINDOWPLACEMENT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _windowplacement_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_WINDOWPLACEMENT_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_WINDOWPOS_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _windowpos_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_WINDOWPOS_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_WNDCLASS_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _wndclass_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_WNDCLASS_1sizeof, JNI.env, self.jni_id)
      end
      
      typesig { [TCHAR, ::Java::Int, ::Java::Int] }
      # Ansi/Unicode wrappers
      # long
      # long
      def _add_font_resource_ex(lpsz_filename, fl, pdv)
        if (IsUnicode)
          lpsz_filename1 = (lpsz_filename).nil? ? nil : lpsz_filename.attr_chars
          return _add_font_resource_ex_w(lpsz_filename1, fl, pdv)
        end
        lpsz_filename1 = (lpsz_filename).nil? ? nil : lpsz_filename.attr_bytes
        return _add_font_resource_ex_a(lpsz_filename1, fl, pdv)
      end
      
      typesig { [::Java::Int, ::Java::Int, TCHAR, TCHAR, TCHAR, Array.typed(::Java::Int)] }
      def _assoc_query_string(flags, str, psz_assoc, psz_extra, psz_out, pcch_out)
        if (IsUnicode)
          psz_assoc1 = (psz_assoc).nil? ? nil : psz_assoc.attr_chars
          psz_extra1 = (psz_extra).nil? ? nil : psz_extra.attr_chars
          psz_out1 = (psz_out).nil? ? nil : psz_out.attr_chars
          return _assoc_query_string_w(flags, str, psz_assoc1, psz_extra1, psz_out1, pcch_out)
        end
        psz_assoc1 = (psz_assoc).nil? ? nil : psz_assoc.attr_bytes
        psz_extra1 = (psz_extra).nil? ? nil : psz_extra.attr_bytes
        psz_out1 = (psz_out).nil? ? nil : psz_out.attr_bytes
        return _assoc_query_string_a(flags, str, psz_assoc1, psz_extra1, psz_out1, pcch_out)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def _call_window_proc(lp_prev_wnd_func, h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _call_window_proc_w(lp_prev_wnd_func, h_wnd, msg, w_param, l_param)
        end
        return _call_window_proc_a(lp_prev_wnd_func, h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def _char_upper(ch)
        if (IsUnicode)
          return _char_upper_w(ch)
        end
        return _char_upper_a(ch)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def _char_lower(ch)
        if (IsUnicode)
          return _char_lower_w(ch)
        end
        return _char_lower_a(ch)
      end
      
      typesig { [CHOOSECOLOR] }
      def _choose_color(lpcc)
        if (IsUnicode)
          return _choose_color_w(lpcc)
        end
        return _choose_color_a(lpcc)
      end
      
      typesig { [CHOOSEFONT] }
      def _choose_font(choose_font)
        if (IsUnicode)
          return _choose_font_w(choose_font)
        end
        return _choose_font_a(choose_font)
      end
      
      typesig { [ACTCTX] }
      # long
      def _create_act_ctx(p_act_ctx)
        if (IsUnicode)
          return _create_act_ctx_w(p_act_ctx)
        end
        return _create_act_ctx_a(p_act_ctx)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def _create_accelerator_table(lpaccl, c_entries)
        if (IsUnicode)
          return _create_accelerator_table_w(lpaccl, c_entries)
        end
        return _create_accelerator_table_a(lpaccl, c_entries)
      end
      
      typesig { [TCHAR, TCHAR, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _create_dc(lpsz_driver, lpsz_device, lpsz_output, lp_init_data)
        if (IsUnicode)
          lpsz_driver1 = (lpsz_driver).nil? ? nil : lpsz_driver.attr_chars
          lpsz_device1 = (lpsz_device).nil? ? nil : lpsz_device.attr_chars
          return _create_dcw(lpsz_driver1, lpsz_device1, lpsz_output, lp_init_data)
        end
        lpsz_driver1 = (lpsz_driver).nil? ? nil : lpsz_driver.attr_bytes
        lpsz_device1 = (lpsz_device).nil? ? nil : lpsz_device.attr_bytes
        return _create_dca(lpsz_driver1, lpsz_device1, lpsz_output, lp_init_data)
      end
      
      typesig { [::Java::Int, TCHAR, RECT, TCHAR] }
      # long
      # long
      def _create_enh_meta_file(hdc_ref, lp_filename, lp_rect, lp_description)
        if (IsUnicode)
          lp_filename1 = (lp_filename).nil? ? nil : lp_filename.attr_chars
          lp_description1 = (lp_description).nil? ? nil : lp_description.attr_chars
          return _create_enh_meta_file_w(hdc_ref, lp_filename1, lp_rect, lp_description1)
        end
        lp_filename1 = (lp_filename).nil? ? nil : lp_filename.attr_bytes
        lp_description1 = (lp_description).nil? ? nil : lp_description.attr_bytes
        return _create_enh_meta_file_a(hdc_ref, lp_filename1, lp_rect, lp_description1)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def _create_font_indirect(lplf)
        if (IsUnicode)
          return _create_font_indirect_w(lplf)
        end
        return _create_font_indirect_a(lplf)
      end
      
      typesig { [LOGFONT] }
      # long
      def _create_font_indirect(lplf)
        if (IsUnicode)
          return _create_font_indirect_w(lplf)
        end
        return _create_font_indirect_a(lplf)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, STARTUPINFO, PROCESS_INFORMATION] }
      # long
      # long
      # long
      # long
      # long
      # long
      def _create_process(lp_application_name, lp_command_line, lp_process_attributes, lp_thread_attributes, b_inherit_handles, dw_creation_flags, lp_environment, lp_current_directory, lp_startup_info, lp_process_information)
        if (IsUnicode)
          return _create_process_w(lp_application_name, lp_command_line, lp_process_attributes, lp_thread_attributes, b_inherit_handles, dw_creation_flags, lp_environment, lp_current_directory, lp_startup_info, lp_process_information)
        end
        return _create_process_a(lp_application_name, lp_command_line, lp_process_attributes, lp_thread_attributes, b_inherit_handles, dw_creation_flags, lp_environment, lp_current_directory, lp_startup_info, lp_process_information)
      end
      
      typesig { [::Java::Int, TCHAR, TCHAR, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, CREATESTRUCT] }
      # long
      # long
      # long
      # long
      def _create_window_ex(dw_ex_style, lp_class_name, lp_window_name, dw_style, x, y, n_width, n_height, h_wnd_parent, h_menu, h_instance, lp_param)
        if (IsUnicode)
          lp_class_name1 = (lp_class_name).nil? ? nil : lp_class_name.attr_chars
          lp_window_name1 = (lp_window_name).nil? ? nil : lp_window_name.attr_chars
          return _create_window_ex_w(dw_ex_style, lp_class_name1, lp_window_name1, dw_style, x, y, n_width, n_height, h_wnd_parent, h_menu, h_instance, lp_param)
        end
        lp_class_name1 = (lp_class_name).nil? ? nil : lp_class_name.attr_bytes
        lp_window_name1 = (lp_window_name).nil? ? nil : lp_window_name.attr_bytes
        return _create_window_ex_a(dw_ex_style, lp_class_name1, lp_window_name1, dw_style, x, y, n_width, n_height, h_wnd_parent, h_menu, h_instance, lp_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def _def_mdichild_proc(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _def_mdichild_proc_w(h_wnd, msg, w_param, l_param)
        end
        return _def_mdichild_proc_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def _def_frame_proc(h_wnd, h_wnd_mdiclient, msg, w_param, l_param)
        if (IsUnicode)
          return _def_frame_proc_w(h_wnd, h_wnd_mdiclient, msg, w_param, l_param)
        end
        return _def_frame_proc_a(h_wnd, h_wnd_mdiclient, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def _def_window_proc(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _def_window_proc_w(h_wnd, msg, w_param, l_param)
        end
        return _def_window_proc_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [MSG] }
      # long
      def _dispatch_message(lpmsg)
        if (IsUnicode)
          return _dispatch_message_w(lpmsg)
        end
        return _dispatch_message_a(lpmsg)
      end
      
      typesig { [::Java::Int, ::Java::Int, TCHAR, ::Java::Int] }
      # long
      def _drag_query_file(h_drop, i_file, lpsz_file, cch)
        if (IsUnicode)
          lpsz_file1 = (lpsz_file).nil? ? nil : lpsz_file.attr_chars
          return _drag_query_file_w(h_drop, i_file, lpsz_file1, cch)
        end
        lpsz_file1 = (lpsz_file).nil? ? nil : lpsz_file.attr_bytes
        return _drag_query_file_a(h_drop, i_file, lpsz_file1, cch)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def _draw_state(hdc, hbr, lp_output_func, l_data, w_data, x, y, cx, cy, fu_flags)
        if (IsUnicode)
          return _draw_state_w(hdc, hbr, lp_output_func, l_data, w_data, x, y, cx, cy, fu_flags)
        end
        return _draw_state_a(hdc, hbr, lp_output_func, l_data, w_data, x, y, cx, cy, fu_flags)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int, RECT, ::Java::Int] }
      # long
      def _draw_text(h_dc, lp_string, n_count, lp_rect, u_format)
        if (IsUnicode)
          lp_string1 = (lp_string).nil? ? nil : lp_string.attr_chars
          return _draw_text_w(h_dc, lp_string1, n_count, lp_rect, u_format)
        end
        lp_string1 = (lp_string).nil? ? nil : lp_string.attr_bytes
        return _draw_text_a(h_dc, lp_string1, n_count, lp_rect, u_format)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _enum_font_families(hdc, lpsz_family, lp_enum_font_fam_proc, l_param)
        if (IsUnicode)
          lpsz_family1 = (lpsz_family).nil? ? nil : lpsz_family.attr_chars
          return _enum_font_families_w(hdc, lpsz_family1, lp_enum_font_fam_proc, l_param)
        end
        lpsz_family1 = (lpsz_family).nil? ? nil : lpsz_family.attr_bytes
        return _enum_font_families_a(hdc, lpsz_family1, lp_enum_font_fam_proc, l_param)
      end
      
      typesig { [::Java::Int, LOGFONT, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _enum_font_families_ex(hdc, lp_logfont, lp_enum_font_fam_ex_proc, l_param, dw_flags)
        if (IsUnicode)
          return _enum_font_families_ex_w(hdc, lp_logfont, lp_enum_font_fam_ex_proc, l_param, dw_flags)
        end
        return _enum_font_families_ex_a(hdc, lp_logfont, lp_enum_font_fam_ex_proc, l_param, dw_flags)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _enum_system_locales(lp_locale_enum_proc, dw_flags)
        if (IsUnicode)
          return _enum_system_locales_w(lp_locale_enum_proc, dw_flags)
        end
        return _enum_system_locales_a(lp_locale_enum_proc, dw_flags)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _enum_system_language_groups(p_lang_group_enum_proc, dw_flags, l_param)
        if (IsUnicode)
          return _enum_system_language_groups_w(p_lang_group_enum_proc, dw_flags, l_param)
        end
        return _enum_system_language_groups_a(p_lang_group_enum_proc, dw_flags, l_param)
      end
      
      typesig { [TCHAR, TCHAR, ::Java::Int] }
      def _expand_environment_strings(lp_src, lp_dst, n_size)
        if (IsUnicode)
          lp_src1 = (lp_src).nil? ? nil : lp_src.attr_chars
          lp_dst1 = (lp_dst).nil? ? nil : lp_dst.attr_chars
          return _expand_environment_strings_w(lp_src1, lp_dst1, n_size)
        end
        lp_src1 = (lp_src).nil? ? nil : lp_src.attr_bytes
        lp_dst1 = (lp_dst).nil? ? nil : lp_dst.attr_bytes
        return _expand_environment_strings_a(lp_src1, lp_dst1, n_size)
      end
      
      typesig { [TCHAR, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def _extract_icon_ex(lpsz_file, n_icon_index, phicon_large, phicon_small, n_icons)
        if (IsUnicode)
          lpsz_file1 = (lpsz_file).nil? ? nil : lpsz_file.attr_chars
          return _extract_icon_ex_w(lpsz_file1, n_icon_index, phicon_large, phicon_small, n_icons)
        end
        lpsz_file1 = (lpsz_file).nil? ? nil : lpsz_file.attr_bytes
        return _extract_icon_ex_a(lpsz_file1, n_icon_index, phicon_large, phicon_small, n_icons)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, TCHAR, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _ext_text_out(hdc, x, y, fu_options, lprc, lp_string, cb_count, lp_dx)
        if (IsUnicode)
          lp_string1 = (lp_string).nil? ? nil : lp_string.attr_chars
          return _ext_text_out_w(hdc, x, y, fu_options, lprc, lp_string1, cb_count, lp_dx)
        end
        lp_string1 = (lp_string).nil? ? nil : lp_string.attr_bytes
        return _ext_text_out_a(hdc, x, y, fu_options, lprc, lp_string1, cb_count, lp_dx)
      end
      
      typesig { [TCHAR, TCHAR] }
      # long
      def _find_window(lp_class_name, lp_window_name)
        if (IsUnicode)
          lp_class_name1 = (lp_class_name).nil? ? nil : lp_class_name.attr_chars
          lp_window_name1 = (lp_window_name).nil? ? nil : lp_window_name.attr_chars
          return _find_window_w(lp_class_name1, lp_window_name1)
        end
        lp_class_name1 = (lp_class_name).nil? ? nil : lp_class_name.attr_bytes
        lp_window_name1 = (lp_window_name).nil? ? nil : lp_window_name.attr_bytes
        return _find_window_a(lp_class_name1, lp_window_name1)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _format_message(dw_flags, lp_source, dw_message_id, dw_language_id, lp_buffer, n_size, arguments)
        if (IsUnicode)
          return _format_message_w(dw_flags, lp_source, dw_message_id, dw_language_id, lp_buffer, n_size, arguments)
        end
        return _format_message_a(dw_flags, lp_source, dw_message_id, dw_language_id, lp_buffer, n_size, arguments)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _get_char_abcwidths(hdc, i_first_char, i_last_char, lpabc)
        if (IsUnicode)
          return _get_char_abcwidths_w(hdc, i_first_char, i_last_char, lpabc)
        end
        return _get_char_abcwidths_a(hdc, i_first_char, i_last_char, lpabc)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int, ::Java::Int, GCP_RESULTS, ::Java::Int] }
      # long
      def _get_character_placement(hdc, lp_string, n_count, n_max_extent, lp_results, dw_flags)
        if (IsUnicode)
          lp_string1 = (lp_string).nil? ? nil : lp_string.attr_chars
          return _get_character_placement_w(hdc, lp_string1, n_count, n_max_extent, lp_results, dw_flags)
        end
        lp_string1 = (lp_string).nil? ? nil : lp_string.attr_bytes
        return _get_character_placement_a(hdc, lp_string1, n_count, n_max_extent, lp_results, dw_flags)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _get_char_width(hdc, i_first_char, i_last_char, lpabc)
        if (IsUnicode)
          return _get_char_width_w(hdc, i_first_char, i_last_char, lpabc)
        end
        return _get_char_width_a(hdc, i_first_char, i_last_char, lpabc)
      end
      
      typesig { [::Java::Int, TCHAR, WNDCLASS] }
      # long
      def _get_class_info(h_instance, lp_class_name, lp_wnd_class)
        if (IsUnicode)
          lp_class_name1 = (lp_class_name).nil? ? nil : lp_class_name.attr_chars
          return _get_class_info_w(h_instance, lp_class_name1, lp_wnd_class)
        end
        lp_class_name1 = (lp_class_name).nil? ? nil : lp_class_name.attr_bytes
        return _get_class_info_a(h_instance, lp_class_name1, lp_wnd_class)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int] }
      # long
      def _get_class_name(h_wnd, lp_class_name, n_max_count)
        if (IsUnicode)
          lp_class_name1 = (lp_class_name).nil? ? nil : lp_class_name.attr_chars
          return _get_class_name_w(h_wnd, lp_class_name1, n_max_count)
        end
        lp_class_name1 = (lp_class_name).nil? ? nil : lp_class_name.attr_bytes
        return _get_class_name_a(h_wnd, lp_class_name1, n_max_count)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int] }
      def _get_clipboard_format_name(format, lpsz_format_name, cch_max_count)
        if (IsUnicode)
          lpsz_format_name1 = (lpsz_format_name).nil? ? nil : lpsz_format_name.attr_chars
          return _get_clipboard_format_name_w(format, lpsz_format_name1, cch_max_count)
        end
        lpsz_format_name1 = (lpsz_format_name).nil? ? nil : lpsz_format_name.attr_bytes
        return _get_clipboard_format_name_a(format, lpsz_format_name1, cch_max_count)
      end
      
      typesig { [::Java::Int, ::Java::Int, SYSTEMTIME, TCHAR, TCHAR, ::Java::Int] }
      def _get_date_format(locale, dw_flags, lp_date, lp_format, lp_date_str, cch_date)
        if (IsUnicode)
          lp_string1 = (lp_format).nil? ? nil : lp_format.attr_chars
          lp_string2 = (lp_date_str).nil? ? nil : lp_date_str.attr_chars
          return _get_date_format_w(locale, dw_flags, lp_date, lp_string1, lp_string2, cch_date)
        end
        lp_string1 = (lp_format).nil? ? nil : lp_format.attr_bytes
        lp_string2 = (lp_date_str).nil? ? nil : lp_date_str.attr_bytes
        return _get_date_format_a(locale, dw_flags, lp_date, lp_string1, lp_string2, cch_date)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int] }
      def _get_key_name_text(l_param, lp_string, n_size)
        if (IsUnicode)
          lp_string1 = (lp_string).nil? ? nil : lp_string.attr_chars
          return _get_key_name_text_w(l_param, lp_string1, n_size)
        end
        lp_string1 = (lp_string).nil? ? nil : lp_string.attr_bytes
        return _get_key_name_text_a(l_param, lp_string1, n_size)
      end
      
      typesig { [::Java::Int, ::Java::Int, TCHAR, ::Java::Int] }
      def _get_locale_info(locale, lctype, lp_lcdata, cch_data)
        if (IsUnicode)
          lp_lcdata1 = (lp_lcdata).nil? ? nil : lp_lcdata.attr_chars
          return _get_locale_info_w(locale, lctype, lp_lcdata1, cch_data)
        end
        lp_lcdata1 = (lp_lcdata).nil? ? nil : lp_lcdata.attr_bytes
        return _get_locale_info_a(locale, lctype, lp_lcdata1, cch_data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, MENUITEMINFO] }
      # long
      def _get_menu_item_info(h_menu, u_item, f_by_position, lpmii)
        if (IsUnicode)
          return _get_menu_item_info_w(h_menu, u_item, f_by_position, lpmii)
        end
        return _get_menu_item_info_a(h_menu, u_item, f_by_position, lpmii)
      end
      
      typesig { [MSG, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _get_message(lp_msg, h_wnd, w_msg_filter_min, w_msg_filter_max)
        if (IsUnicode)
          return _get_message_w(lp_msg, h_wnd, w_msg_filter_min, w_msg_filter_max)
        end
        return _get_message_a(lp_msg, h_wnd, w_msg_filter_min, w_msg_filter_max)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int] }
      # long
      def _get_module_file_name(h_module, lp_filename, in_size)
        if (IsUnicode)
          lp_filename1 = (lp_filename).nil? ? nil : lp_filename.attr_chars
          return _get_module_file_name_w(h_module, lp_filename1, in_size)
        end
        lp_filename1 = (lp_filename).nil? ? nil : lp_filename.attr_bytes
        return _get_module_file_name_a(h_module, lp_filename1, in_size)
      end
      
      typesig { [TCHAR] }
      # long
      def _get_module_handle(lp_module_name)
        if (IsUnicode)
          lp_module_name1 = (lp_module_name).nil? ? nil : lp_module_name.attr_chars
          return _get_module_handle_w(lp_module_name1)
        end
        lp_module_name1 = (lp_module_name).nil? ? nil : lp_module_name.attr_bytes
        return _get_module_handle_a(lp_module_name1)
      end
      
      typesig { [::Java::Int, MONITORINFO] }
      # long
      def _get_monitor_info(hmonitor, lpmi)
        if (IsUnicode)
          return _get_monitor_info_w(hmonitor, lpmi)
        end
        return _get_monitor_info_a(hmonitor, lpmi)
      end
      
      typesig { [::Java::Int, ::Java::Int, BITMAP] }
      # long
      def _get_object(hgdiobj, cb_buffer, lpv_object)
        if (IsUnicode)
          return _get_object_w(hgdiobj, cb_buffer, lpv_object)
        end
        return _get_object_a(hgdiobj, cb_buffer, lpv_object)
      end
      
      typesig { [::Java::Int, ::Java::Int, DIBSECTION] }
      # long
      def _get_object(hgdiobj, cb_buffer, lpv_object)
        if (IsUnicode)
          return _get_object_w(hgdiobj, cb_buffer, lpv_object)
        end
        return _get_object_a(hgdiobj, cb_buffer, lpv_object)
      end
      
      typesig { [::Java::Int, ::Java::Int, EXTLOGPEN] }
      # long
      def _get_object(hgdiobj, cb_buffer, lpv_object)
        if (IsUnicode)
          return _get_object_w(hgdiobj, cb_buffer, lpv_object)
        end
        return _get_object_a(hgdiobj, cb_buffer, lpv_object)
      end
      
      typesig { [::Java::Int, ::Java::Int, LOGBRUSH] }
      # long
      def _get_object(hgdiobj, cb_buffer, lpv_object)
        if (IsUnicode)
          return _get_object_w(hgdiobj, cb_buffer, lpv_object)
        end
        return _get_object_a(hgdiobj, cb_buffer, lpv_object)
      end
      
      typesig { [::Java::Int, ::Java::Int, LOGFONT] }
      # long
      def _get_object(hgdiobj, cb_buffer, lpv_object)
        if (IsUnicode)
          return _get_object_w(hgdiobj, cb_buffer, lpv_object)
        end
        return _get_object_a(hgdiobj, cb_buffer, lpv_object)
      end
      
      typesig { [::Java::Int, ::Java::Int, LOGPEN] }
      # long
      def _get_object(hgdiobj, cb_buffer, lpv_object)
        if (IsUnicode)
          return _get_object_w(hgdiobj, cb_buffer, lpv_object)
        end
        return _get_object_a(hgdiobj, cb_buffer, lpv_object)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _get_object(hgdiobj, cb_buffer, lpv_object)
        if (IsUnicode)
          return _get_object_w(hgdiobj, cb_buffer, lpv_object)
        end
        return _get_object_a(hgdiobj, cb_buffer, lpv_object)
      end
      
      typesig { [OPENFILENAME] }
      def _get_open_file_name(lpofn)
        if (IsUnicode)
          return _get_open_file_name_w(lpofn)
        end
        return _get_open_file_name_a(lpofn)
      end
      
      typesig { [::Java::Int, ::Java::Int, OUTLINETEXTMETRIC] }
      # long
      def _get_outline_text_metrics(hdc, cb_data, lp_otm)
        if (IsUnicode)
          return _get_outline_text_metrics_w(hdc, cb_data, lp_otm)
        end
        return _get_outline_text_metrics_a(hdc, cb_data, lp_otm)
      end
      
      typesig { [TCHAR, TCHAR, TCHAR, TCHAR, ::Java::Int] }
      def _get_profile_string(lp_app_name, lp_key_name, lp_default, lp_returned_string, n_size)
        if (IsUnicode)
          lp_app_name1 = (lp_app_name).nil? ? nil : lp_app_name.attr_chars
          lp_key_name1 = (lp_key_name).nil? ? nil : lp_key_name.attr_chars
          lp_default1 = (lp_default).nil? ? nil : lp_default.attr_chars
          lp_returned_string1 = (lp_returned_string).nil? ? nil : lp_returned_string.attr_chars
          return _get_profile_string_w(lp_app_name1, lp_key_name1, lp_default1, lp_returned_string1, n_size)
        end
        lp_app_name1 = (lp_app_name).nil? ? nil : lp_app_name.attr_bytes
        lp_key_name1 = (lp_key_name).nil? ? nil : lp_key_name.attr_bytes
        lp_default1 = (lp_default).nil? ? nil : lp_default.attr_bytes
        lp_returned_string1 = (lp_returned_string).nil? ? nil : lp_returned_string.attr_bytes
        return _get_profile_string_a(lp_app_name1, lp_key_name1, lp_default1, lp_returned_string1, n_size)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _get_prop(h_wnd, lp_string)
        if (IsUnicode)
          return _get_prop_w(h_wnd, lp_string)
        end
        return _get_prop_a(h_wnd, lp_string)
      end
      
      typesig { [OPENFILENAME] }
      def _get_save_file_name(lpofn)
        if (IsUnicode)
          return _get_save_file_name_w(lpofn)
        end
        return _get_save_file_name_a(lpofn)
      end
      
      typesig { [STARTUPINFO] }
      def _get_startup_info(lp_startup_info)
        if (IsUnicode)
          _get_startup_info_w(lp_startup_info)
        else
          _get_startup_info_a(lp_startup_info)
        end
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int, SIZE] }
      # long
      def _get_text_extent_point32(hdc, lp_string, cb_string, lp_size)
        if (IsUnicode)
          lp_string1 = (lp_string).nil? ? nil : lp_string.attr_chars
          return _get_text_extent_point32w(hdc, lp_string1, cb_string, lp_size)
        end
        lp_string1 = (lp_string).nil? ? nil : lp_string.attr_bytes
        return _get_text_extent_point32a(hdc, lp_string1, cb_string, lp_size)
      end
      
      typesig { [::Java::Int, TEXTMETRIC] }
      # long
      def _get_text_metrics(hdc, lptm)
        if (IsUnicode)
          return _get_text_metrics_w(hdc, lptm)
        end
        return _get_text_metrics_a(hdc, lptm)
      end
      
      typesig { [::Java::Int, ::Java::Int, SYSTEMTIME, TCHAR, TCHAR, ::Java::Int] }
      def _get_time_format(locale, dw_flags, lp_time, lp_format, lp_time_str, cch_time)
        if (IsUnicode)
          lp_string1 = (lp_format).nil? ? nil : lp_format.attr_chars
          lp_string2 = (lp_time_str).nil? ? nil : lp_time_str.attr_chars
          return _get_time_format_w(locale, dw_flags, lp_time, lp_string1, lp_string2, cch_time)
        end
        lp_string1 = (lp_format).nil? ? nil : lp_format.attr_bytes
        lp_string2 = (lp_time_str).nil? ? nil : lp_time_str.attr_bytes
        return _get_time_format_a(locale, dw_flags, lp_time, lp_string1, lp_string2, cch_time)
      end
      
      typesig { [OSVERSIONINFO] }
      def _get_version_ex(lp_version_info)
        if (IsUnicode)
          return _get_version_ex_w(lp_version_info)
        end
        return _get_version_ex_a(lp_version_info)
      end
      
      typesig { [OSVERSIONINFOEX] }
      def _get_version_ex(lp_version_info)
        if (IsUnicode)
          return _get_version_ex_w(lp_version_info)
        end
        return _get_version_ex_a(lp_version_info)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _get_window_long(h_wnd, n_index)
        if (IsUnicode)
          return _get_window_long_w(h_wnd, n_index)
        end
        return _get_window_long_a(h_wnd, n_index)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _get_window_long_ptr(h_wnd, n_index)
        if (IsUnicode)
          return _get_window_long_ptr_w(h_wnd, n_index)
        end
        return _get_window_long_ptr_a(h_wnd, n_index)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int] }
      # long
      def _get_window_text(h_wnd, lp_string, n_max_count)
        if (IsUnicode)
          lp_string1 = (lp_string).nil? ? nil : lp_string.attr_chars
          return _get_window_text_w(h_wnd, lp_string1, n_max_count)
        end
        lp_string1 = (lp_string).nil? ? nil : lp_string.attr_bytes
        return _get_window_text_a(h_wnd, lp_string1, n_max_count)
      end
      
      typesig { [::Java::Int] }
      # long
      def _get_window_text_length(h_wnd)
        if (IsUnicode)
          return _get_window_text_length_w(h_wnd)
        end
        return _get_window_text_length_a(h_wnd)
      end
      
      typesig { [TCHAR] }
      def _global_add_atom(lp_string)
        if (IsUnicode)
          lp_string1 = (lp_string).nil? ? nil : lp_string.attr_chars
          return _global_add_atom_w(lp_string1)
        end
        lp_string1 = (lp_string).nil? ? nil : lp_string.attr_bytes
        return _global_add_atom_a(lp_string1)
      end
      
      typesig { [::Java::Int, LOGFONT] }
      # long
      def _imm_get_composition_font(h_imc, lplf)
        if (IsUnicode)
          return _imm_get_composition_font_w(h_imc, lplf)
        end
        return _imm_get_composition_font_a(h_imc, lplf)
      end
      
      typesig { [::Java::Int, LOGFONT] }
      # long
      def _imm_set_composition_font(h_imc, lplf)
        if (IsUnicode)
          return _imm_set_composition_font_w(h_imc, lplf)
        end
        return _imm_set_composition_font_a(h_imc, lplf)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def _imm_get_composition_string(h_imc, dw_index, lp_buf, dw_buf_len)
        if (IsUnicode)
          return _imm_get_composition_string_w(h_imc, dw_index, lp_buf, dw_buf_len)
        end
        return _imm_get_composition_string_a(h_imc, dw_index, lp_buf, dw_buf_len)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      def _imm_get_composition_string(h_imc, dw_index, lp_buf, dw_buf_len)
        if (IsUnicode)
          return _imm_get_composition_string_w(h_imc, dw_index, lp_buf, dw_buf_len)
        end
        return _imm_get_composition_string_a(h_imc, dw_index, lp_buf, dw_buf_len)
      end
      
      typesig { [::Java::Int, ::Java::Int, TCHAR, ::Java::Int] }
      # long
      def _imm_get_composition_string(h_imc, dw_index, lp_buf, dw_buf_len)
        if (IsUnicode)
          lp_buf1 = (lp_buf).nil? ? nil : lp_buf.attr_chars
          return _imm_get_composition_string_w(h_imc, dw_index, lp_buf1, dw_buf_len)
        end
        lp_buf1 = (lp_buf).nil? ? nil : lp_buf.attr_bytes
        return _imm_get_composition_string_a(h_imc, dw_index, lp_buf1, dw_buf_len)
      end
      
      typesig { [TCHAR, TCHAR, TCHAR, Array.typed(::Java::Int)] }
      def _internet_get_cookie(lpsz_url, lpsz_cookie_name, lpsz_cookie_data, lpdw_size)
        if (IsUnicode)
          url = (lpsz_url).nil? ? nil : lpsz_url.attr_chars
          cookie_name = (lpsz_cookie_name).nil? ? nil : lpsz_cookie_name.attr_chars
          cookie_data = (lpsz_cookie_data).nil? ? nil : lpsz_cookie_data.attr_chars
          return _internet_get_cookie_w(url, cookie_name, cookie_data, lpdw_size)
        end
        url = (lpsz_url).nil? ? nil : lpsz_url.attr_bytes
        cookie_name = (lpsz_cookie_name).nil? ? nil : lpsz_cookie_name.attr_bytes
        cookie_data = (lpsz_cookie_data).nil? ? nil : lpsz_cookie_data.attr_bytes
        return _internet_get_cookie_a(url, cookie_name, cookie_data, lpdw_size)
      end
      
      typesig { [TCHAR, TCHAR, TCHAR] }
      def _internet_set_cookie(lpsz_url, lpsz_cookie_name, lpsz_cookie_data)
        if (IsUnicode)
          url = (lpsz_url).nil? ? nil : lpsz_url.attr_chars
          cookie_name = (lpsz_cookie_name).nil? ? nil : lpsz_cookie_name.attr_chars
          cookie_data = (lpsz_cookie_data).nil? ? nil : lpsz_cookie_data.attr_chars
          return _internet_set_cookie_w(url, cookie_name, cookie_data)
        end
        url = (lpsz_url).nil? ? nil : lpsz_url.attr_bytes
        cookie_name = (lpsz_cookie_name).nil? ? nil : lpsz_cookie_name.attr_bytes
        cookie_data = (lpsz_cookie_data).nil? ? nil : lpsz_cookie_data.attr_bytes
        return _internet_set_cookie_a(url, cookie_name, cookie_data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, TCHAR] }
      # long
      # long
      def _insert_menu(h_menu, u_position, u_flags, u_idnew_item, lp_new_item)
        if (IsUnicode)
          lp_new_item1 = (lp_new_item).nil? ? nil : lp_new_item.attr_chars
          return _insert_menu_w(h_menu, u_position, u_flags, u_idnew_item, lp_new_item1)
        end
        lp_new_item1 = (lp_new_item).nil? ? nil : lp_new_item.attr_bytes
        return _insert_menu_a(h_menu, u_position, u_flags, u_idnew_item, lp_new_item1)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, MENUITEMINFO] }
      # long
      def _insert_menu_item(h_menu, u_item, f_by_position, lpmii)
        if (IsUnicode)
          return _insert_menu_item_w(h_menu, u_item, f_by_position, lpmii)
        end
        return _insert_menu_item_a(h_menu, u_item, f_by_position, lpmii)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _load_bitmap(h_instance, lp_bitmap_name)
        if (IsUnicode)
          return _load_bitmap_w(h_instance, lp_bitmap_name)
        end
        return _load_bitmap_a(h_instance, lp_bitmap_name)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _load_cursor(h_instance, lp_cursor_name)
        if (IsUnicode)
          return _load_cursor_w(h_instance, lp_cursor_name)
        end
        return _load_cursor_a(h_instance, lp_cursor_name)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _load_icon(h_instance, lp_icon_name)
        if (IsUnicode)
          return _load_icon_w(h_instance, lp_icon_name)
        end
        return _load_icon_a(h_instance, lp_icon_name)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _load_image(hinst, lpsz_name, u_type, cx_desired, cy_desired, fu_load)
        if (IsUnicode)
          lpsz_name1 = (lpsz_name).nil? ? nil : lpsz_name.attr_chars
          return _load_image_w(hinst, lpsz_name1, u_type, cx_desired, cy_desired, fu_load)
        end
        lpsz_name1 = (lpsz_name).nil? ? nil : lpsz_name.attr_bytes
        return _load_image_a(hinst, lpsz_name1, u_type, cx_desired, cy_desired, fu_load)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _load_image(hinst, lpsz_name, u_type, cx_desired, cy_desired, fu_load)
        if (IsUnicode)
          return _load_image_w(hinst, lpsz_name, u_type, cx_desired, cy_desired, fu_load)
        end
        return _load_image_a(hinst, lpsz_name, u_type, cx_desired, cy_desired, fu_load)
      end
      
      typesig { [TCHAR] }
      # long
      def _load_library(lp_lib_file_name)
        if (IsUnicode)
          lp_lib_file_name1 = (lp_lib_file_name).nil? ? nil : lp_lib_file_name.attr_chars
          return _load_library_w(lp_lib_file_name1)
        end
        lp_lib_file_name1 = (lp_lib_file_name).nil? ? nil : lp_lib_file_name.attr_bytes
        return _load_library_a(lp_lib_file_name1)
      end
      
      typesig { [::Java::Int, ::Java::Int, TCHAR, ::Java::Int] }
      # long
      def _load_string(hinst, u_id, lp_buffer, n_buffer_max)
        if (IsUnicode)
          lp_buffer1 = (lp_buffer).nil? ? nil : lp_buffer.attr_chars
          return _load_string_w(hinst, u_id, lp_buffer1, n_buffer_max)
        end
        lp_buffer1 = (lp_buffer).nil? ? nil : lp_buffer.attr_bytes
        return _load_string_a(hinst, u_id, lp_buffer1, n_buffer_max)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def _map_virtual_key(u_code, u_map_type)
        if (IsUnicode)
          return _map_virtual_key_w(u_code, u_map_type)
        end
        return _map_virtual_key_a(u_code, u_map_type)
      end
      
      typesig { [::Java::Int, TCHAR, TCHAR, ::Java::Int] }
      # long
      def _message_box(h_wnd, lp_text, lp_caption, u_type)
        if (IsUnicode)
          lp_text1 = (lp_text).nil? ? nil : lp_text.attr_chars
          lp_caption1 = (lp_caption).nil? ? nil : lp_caption.attr_chars
          return _message_box_w(h_wnd, lp_text1, lp_caption1, u_type)
        end
        lp_text1 = (lp_text).nil? ? nil : lp_text.attr_bytes
        lp_caption1 = (lp_caption).nil? ? nil : lp_caption.attr_bytes
        return _message_box_a(h_wnd, lp_text1, lp_caption1, u_type)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        if (IsUnicode)
          source1 = (source).nil? ? nil : source.attr_chars
          _move_memory(destination, source1, length_)
        else
          source1 = (source).nil? ? nil : source.attr_bytes
          _move_memory(destination, source1, length_)
        end
      end
      
      typesig { [TCHAR, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        if (IsUnicode)
          destination1 = (destination).nil? ? nil : destination.attr_chars
          _move_memory(destination1, source, length_)
        else
          destination1 = (destination).nil? ? nil : destination.attr_bytes
          _move_memory(destination1, source, length_)
        end
      end
      
      typesig { [::Java::Int, DEVMODE, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        if (IsUnicode)
          _move_memory(destination, source, length_)
        else
          _move_memory(destination, source, length_)
        end
      end
      
      typesig { [DEVMODE, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        if (IsUnicode)
          _move_memory(destination, source, length_)
        else
          _move_memory(destination, source, length_)
        end
      end
      
      typesig { [::Java::Int, LOGFONT, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        if (IsUnicode)
          _move_memory(destination, source, length_)
        else
          _move_memory(destination, source, length_)
        end
      end
      
      typesig { [LOGFONT, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        if (IsUnicode)
          _move_memory(destination, source, length_)
        else
          _move_memory(destination, source, length_)
        end
      end
      
      typesig { [::Java::Int, NMTTDISPINFO, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        if (IsUnicode)
          _move_memory(destination, source, length_)
        else
          _move_memory(destination, source, length_)
        end
      end
      
      typesig { [NMTTDISPINFO, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        if (IsUnicode)
          _move_memory(destination, source, length_)
        else
          _move_memory(destination, source, length_)
        end
      end
      
      typesig { [TEXTMETRIC, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        if (IsUnicode)
          _move_memory(destination, source, length_)
        else
          _move_memory(destination, source, length_)
        end
      end
      
      typesig { [MSG, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _peek_message(lp_msg, h_wnd, w_msg_filter_min, w_msg_filter_max, w_remove_msg)
        if (IsUnicode)
          return _peek_message_w(lp_msg, h_wnd, w_msg_filter_min, w_msg_filter_max, w_remove_msg)
        end
        return _peek_message_a(lp_msg, h_wnd, w_msg_filter_min, w_msg_filter_max, w_remove_msg)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _post_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _post_message_w(h_wnd, msg, w_param, l_param)
        end
        return _post_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _post_thread_message(id_thread, msg, w_param, l_param)
        if (IsUnicode)
          return _post_thread_message_w(id_thread, msg, w_param, l_param)
        end
        return _post_thread_message_a(id_thread, msg, w_param, l_param)
      end
      
      typesig { [PRINTDLG] }
      def _print_dlg(lppd)
        if (IsUnicode)
          return _print_dlg_w(lppd)
        end
        return _print_dlg_a(lppd)
      end
      
      typesig { [::Java::Int, ::Java::Int, TCHAR, Array.typed(::Java::Int), Array.typed(::Java::Int), TCHAR, Array.typed(::Java::Int), FILETIME] }
      # long
      def _reg_enum_key_ex(h_key, dw_index, lp_name, lpc_name, lp_reserved, lp_class, lpc_class, lpft_last_write_time)
        if (IsUnicode)
          lp_name1 = (lp_name).nil? ? nil : lp_name.attr_chars
          lp_class1 = (lp_class).nil? ? nil : lp_class.attr_chars
          return _reg_enum_key_ex_w(h_key, dw_index, lp_name1, lpc_name, lp_reserved, lp_class1, lpc_class, lpft_last_write_time)
        end
        lp_name1 = (lp_name).nil? ? nil : lp_name.attr_bytes
        lp_class1 = (lp_class).nil? ? nil : lp_class.attr_bytes
        return _reg_enum_key_ex_a(h_key, dw_index, lp_name1, lpc_name, lp_reserved, lp_class1, lpc_class, lpft_last_write_time)
      end
      
      typesig { [WNDCLASS] }
      def _register_class(lp_wnd_class)
        if (IsUnicode)
          return _register_class_w(lp_wnd_class)
        end
        return _register_class_a(lp_wnd_class)
      end
      
      typesig { [TCHAR] }
      def _register_clipboard_format(lpsz_format)
        if (IsUnicode)
          lpsz_format1 = (lpsz_format).nil? ? nil : lpsz_format.attr_chars
          return _register_clipboard_format_w(lpsz_format1)
        end
        lpsz_format1 = (lpsz_format).nil? ? nil : lpsz_format.attr_bytes
        return _register_clipboard_format_a(lpsz_format1)
      end
      
      typesig { [TCHAR] }
      def _register_window_message(lp_string)
        if (IsUnicode)
          lp_string1 = (lp_string).nil? ? nil : lp_string.attr_chars
          return _register_window_message_w(lp_string1)
        end
        lp_string1 = (lp_string).nil? ? nil : lp_string.attr_bytes
        return _register_window_message_a(lp_string1)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def _reg_open_key_ex(h_key, lp_sub_key, ul_options, sam_desired, phk_result)
        if (IsUnicode)
          lp_sub_key1 = (lp_sub_key).nil? ? nil : lp_sub_key.attr_chars
          return _reg_open_key_ex_w(h_key, lp_sub_key1, ul_options, sam_desired, phk_result)
        end
        lp_sub_key1 = (lp_sub_key).nil? ? nil : lp_sub_key.attr_bytes
        return _reg_open_key_ex_a(h_key, lp_sub_key1, ul_options, sam_desired, phk_result)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      # long
      # long
      def _reg_query_info_key(h_key, lp_class, lpcb_class, lp_reserved, lp_sub_keys, lpcb_max_sub_key_len, lpcb_max_class_len, lpc_values, lpcb_max_value_name_len, lpcb_max_value_len, lpcb_security_descriptor, lpft_last_write_time)
        if (IsUnicode)
          return _reg_query_info_key_w(h_key, lp_class, lpcb_class, lp_reserved, lp_sub_keys, lpcb_max_sub_key_len, lpcb_max_class_len, lpc_values, lpcb_max_value_name_len, lpcb_max_value_len, lpcb_security_descriptor, lpft_last_write_time)
        end
        return _reg_query_info_key_a(h_key, lp_class, lpcb_class, lp_reserved, lp_sub_keys, lpcb_max_sub_key_len, lpcb_max_class_len, lpc_values, lpcb_max_value_name_len, lpcb_max_value_len, lpcb_security_descriptor, lpft_last_write_time)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int, Array.typed(::Java::Int), TCHAR, Array.typed(::Java::Int)] }
      # long
      # long
      def _reg_query_value_ex(h_key, lp_value_name, lp_reserved, lp_type, lp_data, lpcb_data)
        if (IsUnicode)
          lp_value_name1 = (lp_value_name).nil? ? nil : lp_value_name.attr_chars
          lp_data1 = (lp_data).nil? ? nil : lp_data.attr_chars
          return _reg_query_value_ex_w(h_key, lp_value_name1, lp_reserved, lp_type, lp_data1, lpcb_data)
        end
        lp_value_name1 = (lp_value_name).nil? ? nil : lp_value_name.attr_bytes
        lp_data1 = (lp_data).nil? ? nil : lp_data.attr_bytes
        return _reg_query_value_ex_a(h_key, lp_value_name1, lp_reserved, lp_type, lp_data1, lpcb_data)
      end
      
      typesig { [::Java::Int, TCHAR, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def _reg_query_value_ex(h_key, lp_value_name, lp_reserved, lp_type, lp_data, lpcb_data)
        if (IsUnicode)
          lp_value_name1 = (lp_value_name).nil? ? nil : lp_value_name.attr_chars
          return _reg_query_value_ex_w(h_key, lp_value_name1, lp_reserved, lp_type, lp_data, lpcb_data)
        end
        lp_value_name1 = (lp_value_name).nil? ? nil : lp_value_name.attr_bytes
        return _reg_query_value_ex_a(h_key, lp_value_name1, lp_reserved, lp_type, lp_data, lpcb_data)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _remove_prop(h_wnd, lp_string)
        if (IsUnicode)
          return _remove_prop_w(h_wnd, lp_string)
        end
        return _remove_prop_a(h_wnd, lp_string)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TCHAR] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          l_param1 = (l_param).nil? ? nil : l_param.attr_chars
          return _send_message_w(h_wnd, msg, w_param, l_param1)
        end
        l_param1 = (l_param).nil? ? nil : l_param.attr_bytes
        return _send_message_a(h_wnd, msg, w_param, l_param1)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SIZE] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LITEM] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LVCOLUMN] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LVHITTESTINFO] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LVITEM] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, MARGINS] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, POINT] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, MCHITTESTINFO] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, REBARBANDINFO] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, RECT] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SYSTEMTIME] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SHDRAGIMAGE] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TBBUTTON] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TBBUTTONINFO] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TCITEM] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TCHITTESTINFO] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TOOLINFO] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVHITTESTINFO] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVINSERTSTRUCT] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVITEM] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVSORTCB] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, UDACCEL] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, HDHITTESTINFO] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, HDITEM] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, HDLAYOUT] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, BUTTON_IMAGELIST] }
      # long
      # long
      # long
      def _send_message(h_wnd, msg, w_param, l_param)
        if (IsUnicode)
          return _send_message_w(h_wnd, msg, w_param, l_param)
        end
        return _send_message_a(h_wnd, msg, w_param, l_param)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, MENUITEMINFO] }
      # long
      def _set_menu_item_info(h_menu, u_item, f_by_position, lpmii)
        if (IsUnicode)
          return _set_menu_item_info_w(h_menu, u_item, f_by_position, lpmii)
        end
        return _set_menu_item_info_a(h_menu, u_item, f_by_position, lpmii)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _set_prop(h_wnd, lp_string, h_data)
        if (IsUnicode)
          return _set_prop_w(h_wnd, lp_string, h_data)
        end
        return _set_prop_a(h_wnd, lp_string, h_data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _set_window_long(h_wnd, n_index, dw_new_long)
        if (IsUnicode)
          return _set_window_long_w(h_wnd, n_index, dw_new_long)
        end
        return _set_window_long_a(h_wnd, n_index, dw_new_long)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _set_window_long_ptr(h_wnd, n_index, dw_new_long)
        if (IsUnicode)
          return _set_window_long_ptr_w(h_wnd, n_index, dw_new_long)
        end
        return _set_window_long_ptr_a(h_wnd, n_index, dw_new_long)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _set_windows_hook_ex(id_hook, lpfn, h_mod, dw_thread_id)
        if (IsUnicode)
          return _set_windows_hook_ex_w(id_hook, lpfn, h_mod, dw_thread_id)
        end
        return _set_windows_hook_ex_a(id_hook, lpfn, h_mod, dw_thread_id)
      end
      
      typesig { [::Java::Int, TCHAR] }
      # long
      def _set_window_text(h_wnd, lp_string)
        if (IsUnicode)
          lp_string1 = (lp_string).nil? ? nil : lp_string.attr_chars
          return _set_window_text_w(h_wnd, lp_string1)
        end
        lp_string1 = (lp_string).nil? ? nil : lp_string.attr_bytes
        return _set_window_text_a(h_wnd, lp_string1)
      end
      
      typesig { [BROWSEINFO] }
      # long
      def _shbrowse_for_folder(lpbi)
        if (IsUnicode)
          return _shbrowse_for_folder_w(lpbi)
        end
        return _shbrowse_for_folder_a(lpbi)
      end
      
      typesig { [SHELLEXECUTEINFO] }
      def _shell_execute_ex(lp_exec_info)
        if (IsUnicode)
          return _shell_execute_ex_w(lp_exec_info)
        end
        return _shell_execute_ex_a(lp_exec_info)
      end
      
      typesig { [TCHAR, ::Java::Int, SHFILEINFO, ::Java::Int, ::Java::Int] }
      # long
      def _shget_file_info(psz_path, dw_file_attributes, psfi, cb_file_info, u_flags)
        if (IsUnicode)
          psz_path1 = (psz_path).nil? ? nil : psz_path.attr_chars
          return _shget_file_info_w(psz_path1, dw_file_attributes, psfi, cb_file_info, u_flags)
        end
        psz_path1 = (psz_path).nil? ? nil : psz_path.attr_bytes
        return _shget_file_info_a(psz_path1, dw_file_attributes, psfi, cb_file_info, u_flags)
      end
      
      typesig { [::Java::Int, NOTIFYICONDATA] }
      def _shell_notify_icon(dw_message, lp_data)
        if (IsUnicode)
          return _shell_notify_icon_w(dw_message, lp_data)
        end
        return _shell_notify_icon_a(dw_message, lp_data)
      end
      
      typesig { [::Java::Int, TCHAR] }
      # long
      def _shget_path_from_idlist(pidl, psz_path)
        if (IsUnicode)
          psz_path1 = (psz_path).nil? ? nil : psz_path.attr_chars
          return _shget_path_from_idlist_w(pidl, psz_path1)
        end
        psz_path1 = (psz_path).nil? ? nil : psz_path.attr_bytes
        return _shget_path_from_idlist_a(pidl, psz_path1)
      end
      
      typesig { [::Java::Int, DOCINFO] }
      # long
      def _start_doc(hdc, lpdi)
        if (IsUnicode)
          return _start_doc_w(hdc, lpdi)
        end
        return _start_doc_a(hdc, lpdi)
      end
      
      typesig { [::Java::Int, ::Java::Int, RECT, ::Java::Int] }
      def _system_parameters_info(ui_action, ui_param, pv_param, f_win_ini)
        if (IsUnicode)
          return _system_parameters_info_w(ui_action, ui_param, pv_param, f_win_ini)
        end
        return _system_parameters_info_a(ui_action, ui_param, pv_param, f_win_ini)
      end
      
      typesig { [::Java::Int, ::Java::Int, HIGHCONTRAST, ::Java::Int] }
      def _system_parameters_info(ui_action, ui_param, pv_param, f_win_ini)
        if (IsUnicode)
          return _system_parameters_info_w(ui_action, ui_param, pv_param, f_win_ini)
        end
        return _system_parameters_info_a(ui_action, ui_param, pv_param, f_win_ini)
      end
      
      typesig { [::Java::Int, ::Java::Int, NONCLIENTMETRICS, ::Java::Int] }
      def _system_parameters_info(ui_action, ui_param, pv_param, f_win_ini)
        if (IsUnicode)
          return _system_parameters_info_w(ui_action, ui_param, pv_param, f_win_ini)
        end
        return _system_parameters_info_a(ui_action, ui_param, pv_param, f_win_ini)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def _system_parameters_info(ui_action, ui_param, pv_param, f_win_ini)
        if (IsUnicode)
          return _system_parameters_info_w(ui_action, ui_param, pv_param, f_win_ini)
        end
        return _system_parameters_info_a(ui_action, ui_param, pv_param, f_win_ini)
      end
      
      typesig { [::Java::Int, ::Java::Int, MSG] }
      # long
      # long
      def _translate_accelerator(h_wnd, h_acc_table, lp_msg)
        if (IsUnicode)
          return _translate_accelerator_w(h_wnd, h_acc_table, lp_msg)
        end
        return _translate_accelerator_a(h_wnd, h_acc_table, lp_msg)
      end
      
      typesig { [TCHAR, ::Java::Int] }
      # long
      def _unregister_class(lp_class_name, h_instance)
        if (IsUnicode)
          lp_class_name1 = (lp_class_name).nil? ? nil : lp_class_name.attr_chars
          return _unregister_class_w(lp_class_name1, h_instance)
        end
        lp_class_name1 = (lp_class_name).nil? ? nil : lp_class_name.attr_bytes
        return _unregister_class_a(lp_class_name1, h_instance)
      end
      
      typesig { [::Java::Short] }
      def _vk_key_scan(ch)
        if (IsUnicode)
          return _vk_key_scan_w(ch)
        end
        return _vk_key_scan_a(ch)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_AbortDoc, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # Natives
      # @param hdc cast=(HDC)
      # long
      def _abort_doc(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_AbortDoc, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ActivateActCtx, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # @method flags=dynamic
      # @param lpCookie cast=(ULONG_PTR*)
      # 
      # long
      # long
      def _activate_act_ctx(h_act_ctx, lp_cookie)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ActivateActCtx, JNI.env, self.jni_id, h_act_ctx.to_int, lp_cookie.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ActivateKeyboardLayout, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hkl cast=(HKL)
      # long
      # long
      def _activate_keyboard_layout(hkl, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ActivateKeyboardLayout, JNI.env, self.jni_id, hkl.to_int, flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_AddFontResourceExW, [:pointer, :long, :long, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Char), ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # long
      def _add_font_resource_ex_w(lpsz_filename, fl, pdv)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_AddFontResourceExW, JNI.env, self.jni_id, lpsz_filename.jni_id, fl.to_int, pdv.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_AddFontResourceExA, [:pointer, :long, :long, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # long
      def _add_font_resource_ex_a(lpsz_filename, fl, pdv)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_AddFontResourceExA, JNI.env, self.jni_id, lpsz_filename.jni_id, fl.to_int, pdv.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_AdjustWindowRectEx, [:pointer, :long, :long, :int32, :int8, :int32], :int8
      typesig { [RECT, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      def _adjust_window_rect_ex(lp_rect, dw_style, b_menu, dw_ex_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_AdjustWindowRectEx, JNI.env, self.jni_id, lp_rect.jni_id, dw_style.to_int, b_menu ? 1 : 0, dw_ex_style.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_AllowSetForegroundWindow, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @method flags=dynamic
      def _allow_set_foreground_window(dw_process_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_AllowSetForegroundWindow, JNI.env, self.jni_id, dw_process_id.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_AlphaBlend, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, BLENDFUNCTION] }
      # @method flags=dynamic
      # @param blendFunction flags=struct
      # 
      # long
      # long
      def _alpha_blend(hdc_dest, n_xorigin_dest, n_yorigin_dest, n_width_dest, n_height_dest, hdc_src, n_xorigin_src, n_yorigin_src, n_width_src, n_height_src, blend_function)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_AlphaBlend, JNI.env, self.jni_id, hdc_dest.to_int, n_xorigin_dest.to_int, n_yorigin_dest.to_int, n_width_dest.to_int, n_height_dest.to_int, hdc_src.to_int, n_xorigin_src.to_int, n_yorigin_src.to_int, n_width_src.to_int, n_height_src.to_int, blend_function.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_AnimateWindow, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # @param hwnd cast=(HWND)
      # 
      # long
      def _animate_window(hwnd, dw_time, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_AnimateWindow, JNI.env, self.jni_id, hwnd.to_int, dw_time.to_int, dw_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_Arc, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _arc(hdc, n_left_rect, n_top_rect, n_right_rect, n_bottom_rect, n_xstart_arc, n_ystart_arc, n_xend_arc, n_yend_arc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_Arc, JNI.env, self.jni_id, hdc.to_int, n_left_rect.to_int, n_top_rect.to_int, n_right_rect.to_int, n_bottom_rect.to_int, n_xstart_arc.to_int, n_ystart_arc.to_int, n_xend_arc.to_int, n_yend_arc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_AssocQueryStringA, [:pointer, :long, :int32, :int32, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # @method flags=dynamic
      def _assoc_query_string_a(flags, str, psz_assoc, psz_extra, psz_out, pcch_out)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_AssocQueryStringA, JNI.env, self.jni_id, flags.to_int, str.to_int, psz_assoc.jni_id, psz_extra.jni_id, psz_out.jni_id, pcch_out.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_AssocQueryStringW, [:pointer, :long, :int32, :int32, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # @method flags=dynamic
      def _assoc_query_string_w(flags, str, psz_assoc, psz_extra, psz_out, pcch_out)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_AssocQueryStringW, JNI.env, self.jni_id, flags.to_int, str.to_int, psz_assoc.jni_id, psz_extra.jni_id, psz_out.jni_id, pcch_out.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_AttachThreadInput, [:pointer, :long, :int32, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @param idAttach cast=(DWORD)
      # @param idAttachTo cast=(DWORD)
      def _attach_thread_input(id_attach, id_attach_to, f_attach)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_AttachThreadInput, JNI.env, self.jni_id, id_attach.to_int, id_attach_to.to_int, f_attach ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BeginBufferedPaint, [:pointer, :long, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, RECT, ::Java::Int, BP_PAINTPARAMS, Array.typed(::Java::Int)] }
      # @method flags=dynamic
      # @param hdcTarget cast=(HDC)
      # @param phdc cast=(HDC*)
      # 
      # long
      # long
      # long
      def _begin_buffered_paint(hdc_target, prc_target, dw_format, p_paint_params, phdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BeginBufferedPaint, JNI.env, self.jni_id, hdc_target.to_int, prc_target.jni_id, dw_format.to_int, p_paint_params.jni_id, phdc.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BeginDeferWindowPos, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _begin_defer_window_pos(n_num_windows)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BeginDeferWindowPos, JNI.env, self.jni_id, n_num_windows.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BeginPaint, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, PAINTSTRUCT] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _begin_paint(h_wnd, lp_paint)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BeginPaint, JNI.env, self.jni_id, h_wnd.to_int, lp_paint.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BeginPath, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _begin_path(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BeginPath, JNI.env, self.jni_id, hdc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BitBlt, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdcDest cast=(HDC)
      # @param hdcSrc cast=(HDC)
      # 
      # long
      # long
      def _bit_blt(hdc_dest, n_xdest, n_ydest, n_width, n_height, hdc_src, n_xsrc, n_ysrc, dw_rop)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BitBlt, JNI.env, self.jni_id, hdc_dest.to_int, n_xdest.to_int, n_ydest.to_int, n_width.to_int, n_height.to_int, hdc_src.to_int, n_xsrc.to_int, n_ysrc.to_int, dw_rop.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BringWindowToTop, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _bring_window_to_top(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BringWindowToTop, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BufferedPaintInit, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=dynamic
      def _buffered_paint_init
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BufferedPaintInit, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BufferedPaintSetAlpha, [:pointer, :long, :int32, :long, :int8], :int32
      typesig { [::Java::Int, RECT, ::Java::Byte] }
      # @method flags=dynamic
      # @param hBufferedPaint cast=(HPAINTBUFFER)
      # 
      # long
      def _buffered_paint_set_alpha(h_buffered_paint, prc, alpha)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BufferedPaintSetAlpha, JNI.env, self.jni_id, h_buffered_paint.to_int, prc.jni_id, alpha.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_BufferedPaintUnInit, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=dynamic
      def _buffered_paint_un_init
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_BufferedPaintUnInit, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_Call, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, DLLVERSIONINFO] }
      # @param address cast=(DLLGETVERSIONPROC)
      # long
      def _call(address, arg0)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_Call, JNI.env, self.jni_id, address.to_int, arg0.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CallNextHookEx, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hhk cast=(HHOOK)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      # long
      def _call_next_hook_ex(hhk, n_code, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CallNextHookEx, JNI.env, self.jni_id, hhk.to_int, n_code.to_int, w_param.to_int, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CallWindowProcW, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param lpPrevWndFunc cast=(WNDPROC)
      # @param hWnd cast=(HWND)
      # 
      # long
      # long
      # long
      # long
      # long
      def _call_window_proc_w(lp_prev_wnd_func, h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CallWindowProcW, JNI.env, self.jni_id, lp_prev_wnd_func.to_int, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CallWindowProcA, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param lpPrevWndFunc cast=(WNDPROC)
      # @param hWnd cast=(HWND)
      # 
      # long
      # long
      # long
      # long
      # long
      def _call_window_proc_a(lp_prev_wnd_func, h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CallWindowProcA, JNI.env, self.jni_id, lp_prev_wnd_func.to_int, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CharLowerW, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param ch cast=(LPWSTR)
      # long
      # long
      def _char_lower_w(ch)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CharLowerW, JNI.env, self.jni_id, ch.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CharLowerA, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param ch cast=(LPSTR)
      # long
      # long
      def _char_lower_a(ch)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CharLowerA, JNI.env, self.jni_id, ch.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CharUpperW, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param ch cast=(LPWSTR)
      # long
      # long
      def _char_upper_w(ch)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CharUpperW, JNI.env, self.jni_id, ch.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CharUpperA, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param ch cast=(LPSTR)
      # long
      # long
      def _char_upper_a(ch)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CharUpperA, JNI.env, self.jni_id, ch.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CheckMenuItem, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hmenu cast=(HMENU)
      # @param uIDCheckItem cast=(UINT)
      # @param uCheck cast=(UINT)
      # 
      # long
      def _check_menu_item(hmenu, u_idcheck_item, u_check)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CheckMenuItem, JNI.env, self.jni_id, hmenu.to_int, u_idcheck_item.to_int, u_check.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ChooseColorW, [:pointer, :long, :long], :int8
      typesig { [CHOOSECOLOR] }
      # @param lpcc cast=(LPCHOOSECOLORW)
      def _choose_color_w(lpcc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ChooseColorW, JNI.env, self.jni_id, lpcc.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ChooseColorA, [:pointer, :long, :long], :int8
      typesig { [CHOOSECOLOR] }
      def _choose_color_a(lpcc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ChooseColorA, JNI.env, self.jni_id, lpcc.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ChooseFontW, [:pointer, :long, :long], :int8
      typesig { [CHOOSEFONT] }
      # @param chooseFont cast=(LPCHOOSEFONTW)
      def _choose_font_w(choose_font)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ChooseFontW, JNI.env, self.jni_id, choose_font.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ChooseFontA, [:pointer, :long, :long], :int8
      typesig { [CHOOSEFONT] }
      def _choose_font_a(choose_font)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ChooseFontA, JNI.env, self.jni_id, choose_font.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ClientToScreen, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, POINT] }
      # @param hWnd cast=(HWND)
      # long
      def _client_to_screen(h_wnd, lp_point)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ClientToScreen, JNI.env, self.jni_id, h_wnd.to_int, lp_point.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CloseClipboard, [:pointer, :long], :int8
      typesig { [] }
      def _close_clipboard
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CloseClipboard, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CloseEnhMetaFile, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      # long
      def _close_enh_meta_file(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CloseEnhMetaFile, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CloseHandle, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hObject cast=(HANDLE)
      # long
      def _close_handle(h_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CloseHandle, JNI.env, self.jni_id, h_object.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CloseThemeData, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method flags=dynamic
      # @param hTheme cast=(HTHEME)
      # 
      # long
      def _close_theme_data(h_theme)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CloseThemeData, JNI.env, self.jni_id, h_theme.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CoCreateInstance, [:pointer, :long, :long, :int32, :int32, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # @param rclsid cast=(REFCLSID)
      # @param pUnkOuter cast=(LPUNKNOWN)
      # @param riid cast=(REFIID)
      # @param ppv cast=(LPVOID *)
      # 
      # long
      # long
      def _co_create_instance(rclsid, p_unk_outer, dw_cls_context, riid, ppv)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CoCreateInstance, JNI.env, self.jni_id, rclsid.jni_id, p_unk_outer.to_int, dw_cls_context.to_int, riid.jni_id, ppv.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CoInternetIsFeatureEnabled, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      def _co_internet_is_feature_enabled(feature_entry, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CoInternetIsFeatureEnabled, JNI.env, self.jni_id, feature_entry.to_int, dw_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CoInternetSetFeatureEnabled, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @method flags=dynamic
      # @param fEnable cast=(BOOL)
      def _co_internet_set_feature_enabled(feature_entry, dw_flags, f_enable)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CoInternetSetFeatureEnabled, JNI.env, self.jni_id, feature_entry.to_int, dw_flags.to_int, f_enable ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CombineRgn, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hrgnDest cast=(HRGN)
      # @param hrgnSrc1 cast=(HRGN)
      # @param hrgnSrc2 cast=(HRGN)
      # 
      # long
      # long
      # long
      def _combine_rgn(hrgn_dest, hrgn_src1, hrgn_src2, fn_combine_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CombineRgn, JNI.env, self.jni_id, hrgn_dest.to_int, hrgn_src1.to_int, hrgn_src2.to_int, fn_combine_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CommandBar_1AddAdornments, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hwndCB cast=(HWND)
      # long
      def _command_bar_add_adornments(hwnd_cb, dw_flags, dw_reserved)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CommandBar_1AddAdornments, JNI.env, self.jni_id, hwnd_cb.to_int, dw_flags.to_int, dw_reserved.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CommandBar_1Create, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hInst cast=(HINSTANCE)
      # @param hwndParent cast=(HWND)
      # 
      # long
      # long
      # long
      def _command_bar_create(h_inst, hwnd_parent, id_cmd_bar)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CommandBar_1Create, JNI.env, self.jni_id, h_inst.to_int, hwnd_parent.to_int, id_cmd_bar.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CommandBar_1Destroy, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param hwndCB cast=(HWND)
      # long
      def _command_bar_destroy(hwnd_cb)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CommandBar_1Destroy, JNI.env, self.jni_id, hwnd_cb.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CommandBar_1DrawMenuBar, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param hwndCB cast=(HWND)
      # @param iButton cast=(WORD)
      # 
      # long
      def _command_bar_draw_menu_bar(hwnd_cb, i_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CommandBar_1DrawMenuBar, JNI.env, self.jni_id, hwnd_cb.to_int, i_button.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CommandBar_1Height, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdnwCB cast=(HWND)
      # long
      def _command_bar_height(hdnw_cb)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CommandBar_1Height, JNI.env, self.jni_id, hdnw_cb.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CommandBar_1InsertMenubarEx, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hwndCB cast=(HWND)
      # @param hInst cast=(HINSTANCE)
      # @param pszMenu cast=(LPTSTR)
      # @param iButton cast=(WORD)
      # 
      # long
      # long
      # long
      def _command_bar_insert_menubar_ex(hwnd_cb, h_inst, psz_menu, i_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CommandBar_1InsertMenubarEx, JNI.env, self.jni_id, hwnd_cb.to_int, h_inst.to_int, psz_menu.to_int, i_button.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CommandBar_1Show, [:pointer, :long, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Boolean] }
      # @param hwndCB cast=(HWND)
      # @param fShow cast=(BOOL)
      # 
      # long
      def _command_bar_show(hwnd_cb, f_show)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CommandBar_1Show, JNI.env, self.jni_id, hwnd_cb.to_int, f_show ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CommDlgExtendedError, [:pointer, :long], :int32
      typesig { [] }
      def _comm_dlg_extended_error
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CommDlgExtendedError, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CopyImage, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hImage cast=(HANDLE)
      # long
      # long
      def _copy_image(h_image, u_type, cx_desired, cy_desired, fu_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CopyImage, JNI.env, self.jni_id, h_image.to_int, u_type.to_int, cx_desired.to_int, cy_desired.to_int, fu_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateAcceleratorTableW, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # @param lpaccl cast=(LPACCEL)
      # long
      def _create_accelerator_table_w(lpaccl, c_entries)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateAcceleratorTableW, JNI.env, self.jni_id, lpaccl.jni_id, c_entries.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateAcceleratorTableA, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # @param lpaccl cast=(LPACCEL)
      # long
      def _create_accelerator_table_a(lpaccl, c_entries)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateAcceleratorTableA, JNI.env, self.jni_id, lpaccl.jni_id, c_entries.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateActCtxW, [:pointer, :long, :long], :int32
      typesig { [ACTCTX] }
      # @method flags=dynamic
      # @param pActCtx flags=no_out
      # 
      # long
      def _create_act_ctx_w(p_act_ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateActCtxW, JNI.env, self.jni_id, p_act_ctx.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateActCtxA, [:pointer, :long, :long], :int32
      typesig { [ACTCTX] }
      # @method flags=dynamic
      # @param pActCtx flags=no_out
      # 
      # long
      def _create_act_ctx_a(p_act_ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateActCtxA, JNI.env, self.jni_id, p_act_ctx.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateBitmap, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # @param lpvBits cast=(CONST VOID *),flags=no_out critical
      # long
      def _create_bitmap(n_width, n_height, c_planes, c_bits_per_pel, lpv_bits)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateBitmap, JNI.env, self.jni_id, n_width.to_int, n_height.to_int, c_planes.to_int, c_bits_per_pel.to_int, lpv_bits.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateCaret, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hBitmap cast=(HBITMAP)
      # 
      # long
      # long
      def _create_caret(h_wnd, h_bitmap, n_width, n_height)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateCaret, JNI.env, self.jni_id, h_wnd.to_int, h_bitmap.to_int, n_width.to_int, n_height.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateCompatibleBitmap, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      # long
      def _create_compatible_bitmap(hdc, n_width, n_height)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateCompatibleBitmap, JNI.env, self.jni_id, hdc.to_int, n_width.to_int, n_height.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateCompatibleDC, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      # long
      def _create_compatible_dc(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateCompatibleDC, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateCursor, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # @param hInst cast=(HINSTANCE)
      # @param pvANDPlane cast=(CONST VOID *),flags=no_out critical
      # @param pvXORPlane cast=(CONST VOID *),flags=no_out critical
      # 
      # long
      # long
      def _create_cursor(h_inst, x_hot_spot, y_hot_spot, n_width, n_height, pv_andplane, pv_xorplane)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateCursor, JNI.env, self.jni_id, h_inst.to_int, x_hot_spot.to_int, y_hot_spot.to_int, n_width.to_int, n_height.to_int, pv_andplane.jni_id, pv_xorplane.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateDCW, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, ::Java::Int] }
      # @param lpszDriver cast=(LPWSTR)
      # @param lpszDevice cast=(LPWSTR)
      # @param lpszOutput cast=(LPWSTR)
      # @param lpInitData cast=(CONST DEVMODEW *)
      # 
      # long
      # long
      # long
      def _create_dcw(lpsz_driver, lpsz_device, lpsz_output, lp_init_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateDCW, JNI.env, self.jni_id, lpsz_driver.jni_id, lpsz_device.jni_id, lpsz_output.to_int, lp_init_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateDCA, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # @param lpszDriver cast=(LPSTR)
      # @param lpszDevice cast=(LPSTR)
      # @param lpszOutput cast=(LPSTR)
      # @param lpInitData cast=(CONST DEVMODE *)
      # 
      # long
      # long
      # long
      def _create_dca(lpsz_driver, lpsz_device, lpsz_output, lp_init_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateDCA, JNI.env, self.jni_id, lpsz_driver.jni_id, lpsz_device.jni_id, lpsz_output.to_int, lp_init_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateDIBSection__I_3BI_3III, [:pointer, :long, :int32, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param pbmi cast=(BITMAPINFO *),flags=no_out critical
      # @param ppvBits cast=(VOID **),flags=no_in critical
      # @param hSection cast=(HANDLE)
      # 
      # long
      # long
      # long
      # long
      def _create_dibsection(hdc, pbmi, i_usage, ppv_bits, h_section, dw_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateDIBSection__I_3BI_3III, JNI.env, self.jni_id, hdc.to_int, pbmi.jni_id, i_usage.to_int, ppv_bits.jni_id, h_section.to_int, dw_offset.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateDIBSection__III_3III, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param pbmi cast=(BITMAPINFO *),flags=no_out critical
      # @param ppvBits cast=(VOID **),flags=no_in critical
      # @param hSection cast=(HANDLE)
      # 
      # long
      # long
      # long
      # long
      # long
      def _create_dibsection(hdc, pbmi, i_usage, ppv_bits, h_section, dw_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateDIBSection__III_3III, JNI.env, self.jni_id, hdc.to_int, pbmi.to_int, i_usage.to_int, ppv_bits.jni_id, h_section.to_int, dw_offset.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateEnhMetaFileW, [:pointer, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), RECT, Array.typed(::Java::Char)] }
      # @param hdcRef cast=(HDC)
      # @param lpFilename cast=(LPCWSTR)
      # @param lpDescription cast=(LPCWSTR)
      # 
      # long
      # long
      def _create_enh_meta_file_w(hdc_ref, lp_filename, lp_rect, lp_description)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateEnhMetaFileW, JNI.env, self.jni_id, hdc_ref.to_int, lp_filename.jni_id, lp_rect.jni_id, lp_description.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateEnhMetaFileA, [:pointer, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), RECT, Array.typed(::Java::Byte)] }
      # @param hdcRef cast=(HDC)
      # @param lpFilename cast=(LPCSTR)
      # @param lpDescription cast=(LPCSTR)
      # 
      # long
      # long
      def _create_enh_meta_file_a(hdc_ref, lp_filename, lp_rect, lp_description)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateEnhMetaFileA, JNI.env, self.jni_id, hdc_ref.to_int, lp_filename.jni_id, lp_rect.jni_id, lp_description.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateFontIndirectW__I, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param lplf cast=(LPLOGFONTW)
      # long
      # long
      def _create_font_indirect_w(lplf)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateFontIndirectW__I, JNI.env, self.jni_id, lplf.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateFontIndirectA__I, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param lplf cast=(LPLOGFONTA)
      # long
      # long
      def _create_font_indirect_a(lplf)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateFontIndirectA__I, JNI.env, self.jni_id, lplf.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_CreateFontIndirectW__L#{LOGFONTW.jni_name}_2".to_sym, [:pointer, :long, :long], :int32
      typesig { [LOGFONTW] }
      # @param lplf flags=no_out
      # long
      def _create_font_indirect_w(lplf)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_CreateFontIndirectW__L#{LOGFONTW.jni_name}_2".to_sym, JNI.env, self.jni_id, lplf.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_CreateFontIndirectA__L#{LOGFONTA.jni_name}_2".to_sym, [:pointer, :long, :long], :int32
      typesig { [LOGFONTA] }
      # @param lplf flags=no_out
      # long
      def _create_font_indirect_a(lplf)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_CreateFontIndirectA__L#{LOGFONTA.jni_name}_2".to_sym, JNI.env, self.jni_id, lplf.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateIconIndirect, [:pointer, :long, :long], :int32
      typesig { [ICONINFO] }
      # @param lplf flags=no_out
      # long
      def _create_icon_indirect(lplf)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateIconIndirect, JNI.env, self.jni_id, lplf.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateMenu, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _create_menu
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateMenu, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreatePalette, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # @param logPalette cast=(LOGPALETTE *),flags=no_out critical
      # long
      def _create_palette(log_palette)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreatePalette, JNI.env, self.jni_id, log_palette.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreatePatternBrush, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hbmp cast=(HBITMAP)
      # long
      # long
      def _create_pattern_brush(hbmp)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreatePatternBrush, JNI.env, self.jni_id, hbmp.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreatePen, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param crColor cast=(COLORREF)
      # long
      def _create_pen(fn_pen_style, n_width, cr_color)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreatePen, JNI.env, self.jni_id, fn_pen_style.to_int, n_width.to_int, cr_color.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreatePolygonRgn, [:pointer, :long, :long, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # @param lppt cast=(CONST POINT *)
      # long
      def _create_polygon_rgn(lppt, c_points, fn_poly_fill_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreatePolygonRgn, JNI.env, self.jni_id, lppt.jni_id, c_points.to_int, fn_poly_fill_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreatePopupMenu, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _create_popup_menu
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreatePopupMenu, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateProcessW, [:pointer, :long, :int32, :int32, :int32, :int32, :int8, :int32, :int32, :int32, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, STARTUPINFO, PROCESS_INFORMATION] }
      # @param lpApplicationName cast=(LPCWSTR)
      # @param lpCommandLine cast=(LPWSTR)
      # @param lpProcessAttributes cast=(LPSECURITY_ATTRIBUTES)
      # @param lpThreadAttributes cast=(LPSECURITY_ATTRIBUTES)
      # @param lpEnvironment cast=(LPVOID)
      # @param lpCurrentDirectory cast=(LPWSTR)
      # @param lpStartupInfo cast=(LPSTARTUPINFOW)
      # @param lpProcessInformation cast=(LPPROCESS_INFORMATION)
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      def _create_process_w(lp_application_name, lp_command_line, lp_process_attributes, lp_thread_attributes, b_inherit_handles, dw_creation_flags, lp_environment, lp_current_directory, lp_startup_info, lp_process_information)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateProcessW, JNI.env, self.jni_id, lp_application_name.to_int, lp_command_line.to_int, lp_process_attributes.to_int, lp_thread_attributes.to_int, b_inherit_handles ? 1 : 0, dw_creation_flags.to_int, lp_environment.to_int, lp_current_directory.to_int, lp_startup_info.jni_id, lp_process_information.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateProcessA, [:pointer, :long, :int32, :int32, :int32, :int32, :int8, :int32, :int32, :int32, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, STARTUPINFO, PROCESS_INFORMATION] }
      # @param lpApplicationName cast=(LPCSTR)
      # @param lpCommandLine cast=(LPSTR)
      # @param lpProcessAttributes cast=(LPSECURITY_ATTRIBUTES)
      # @param lpThreadAttributes cast=(LPSECURITY_ATTRIBUTES)
      # @param lpEnvironment cast=(LPVOID)
      # @param lpCurrentDirectory cast=(LPSTR)
      # @param lpStartupInfo cast=(LPSTARTUPINFOA)
      # @param lpProcessInformation cast=(LPPROCESS_INFORMATION)
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      def _create_process_a(lp_application_name, lp_command_line, lp_process_attributes, lp_thread_attributes, b_inherit_handles, dw_creation_flags, lp_environment, lp_current_directory, lp_startup_info, lp_process_information)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateProcessA, JNI.env, self.jni_id, lp_application_name.to_int, lp_command_line.to_int, lp_process_attributes.to_int, lp_thread_attributes.to_int, b_inherit_handles ? 1 : 0, dw_creation_flags.to_int, lp_environment.to_int, lp_current_directory.to_int, lp_startup_info.jni_id, lp_process_information.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateRectRgn, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _create_rect_rgn(left, top, right, bottom)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateRectRgn, JNI.env, self.jni_id, left.to_int, top.to_int, right.to_int, bottom.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateSolidBrush, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param colorRef cast=(COLORREF)
      # long
      def _create_solid_brush(color_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateSolidBrush, JNI.env, self.jni_id, color_ref.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateStreamOnHGlobal, [:pointer, :long, :int32, :int8, :long], :int32
      typesig { [::Java::Int, ::Java::Boolean, Array.typed(::Java::Int)] }
      # @param hGlobal cast=(HGLOBAL)
      # @param fDeleteOnRelease cast=(BOOL)
      # @param ppstm cast=(LPSTREAM *)
      # 
      # long
      # long
      def _create_stream_on_hglobal(h_global, f_delete_on_release, ppstm)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateStreamOnHGlobal, JNI.env, self.jni_id, h_global.to_int, f_delete_on_release ? 1 : 0, ppstm.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateWindowExW, [:pointer, :long, :int32, :long, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, CREATESTRUCT] }
      # @param lpClassName cast=(LPWSTR)
      # @param lpWindowName cast=(LPWSTR)
      # @param hWndParent cast=(HWND)
      # @param hMenu cast=(HMENU)
      # @param hInstance cast=(HINSTANCE)
      # 
      # long
      # long
      # long
      # long
      def _create_window_ex_w(dw_ex_style, lp_class_name, lp_window_name, dw_style, x, y, n_width, n_height, h_wnd_parent, h_menu, h_instance, lp_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateWindowExW, JNI.env, self.jni_id, dw_ex_style.to_int, lp_class_name.jni_id, lp_window_name.jni_id, dw_style.to_int, x.to_int, y.to_int, n_width.to_int, n_height.to_int, h_wnd_parent.to_int, h_menu.to_int, h_instance.to_int, lp_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_CreateWindowExA, [:pointer, :long, :int32, :long, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, CREATESTRUCT] }
      # @param lpClassName cast=(LPSTR)
      # @param hWndParent cast=(HWND)
      # @param hMenu cast=(HMENU)
      # @param hInstance cast=(HINSTANCE)
      # 
      # long
      # long
      # long
      # long
      def _create_window_ex_a(dw_ex_style, lp_class_name, lp_window_name, dw_style, x, y, n_width, n_height, h_wnd_parent, h_menu, h_instance, lp_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_CreateWindowExA, JNI.env, self.jni_id, dw_ex_style.to_int, lp_class_name.jni_id, lp_window_name.jni_id, dw_style.to_int, x.to_int, y.to_int, n_width.to_int, n_height.to_int, h_wnd_parent.to_int, h_menu.to_int, h_instance.to_int, lp_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DeferWindowPos, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWinPosInfo cast=(HDWP)
      # @param hWnd cast=(HWND)
      # @param hWndInsertAfter cast=(HWND)
      # 
      # long
      # long
      # long
      # long
      def _defer_window_pos(h_win_pos_info, h_wnd, h_wnd_insert_after, x, y, cx, cy, u_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DeferWindowPos, JNI.env, self.jni_id, h_win_pos_info.to_int, h_wnd.to_int, h_wnd_insert_after.to_int, x.to_int, y.to_int, cx.to_int, cy.to_int, u_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DefMDIChildProcW, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      # long
      def _def_mdichild_proc_w(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DefMDIChildProcW, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DefMDIChildProcA, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      # long
      def _def_mdichild_proc_a(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DefMDIChildProcA, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DefFrameProcW, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hWndMDIClient cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      # long
      # long
      def _def_frame_proc_w(h_wnd, h_wnd_mdiclient, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DefFrameProcW, JNI.env, self.jni_id, h_wnd.to_int, h_wnd_mdiclient.to_int, msg.to_int, w_param.to_int, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DefFrameProcA, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hWndMDIClient cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      # long
      # long
      def _def_frame_proc_a(h_wnd, h_wnd_mdiclient, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DefFrameProcA, JNI.env, self.jni_id, h_wnd.to_int, h_wnd_mdiclient.to_int, msg.to_int, w_param.to_int, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DefWindowProcW, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      # long
      def _def_window_proc_w(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DefWindowProcW, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DefWindowProcA, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      # long
      def _def_window_proc_a(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DefWindowProcA, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DeleteDC, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _delete_dc(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DeleteDC, JNI.env, self.jni_id, hdc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DeleteEnhMetaFile, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hemf cast=(HENHMETAFILE)
      # long
      def _delete_enh_meta_file(hemf)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DeleteEnhMetaFile, JNI.env, self.jni_id, hemf.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DeleteMenu, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hMenu cast=(HMENU)
      # long
      def _delete_menu(h_menu, u_position, u_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DeleteMenu, JNI.env, self.jni_id, h_menu.to_int, u_position.to_int, u_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DeleteObject, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hGdiObj cast=(HGDIOBJ)
      # long
      def _delete_object(h_gdi_obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DeleteObject, JNI.env, self.jni_id, h_gdi_obj.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DestroyAcceleratorTable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hAccel cast=(HACCEL)
      # long
      def _destroy_accelerator_table(h_accel)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DestroyAcceleratorTable, JNI.env, self.jni_id, h_accel.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DestroyCaret, [:pointer, :long], :int8
      typesig { [] }
      def _destroy_caret
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DestroyCaret, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DestroyCursor, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hCursor cast=(HCURSOR)
      # long
      def _destroy_cursor(h_cursor)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DestroyCursor, JNI.env, self.jni_id, h_cursor.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DestroyIcon, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hIcon cast=(HICON)
      # long
      def _destroy_icon(h_icon)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DestroyIcon, JNI.env, self.jni_id, h_icon.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DestroyMenu, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hMenu cast=(HMENU)
      # long
      def _destroy_menu(h_menu)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DestroyMenu, JNI.env, self.jni_id, h_menu.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DestroyWindow, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _destroy_window(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DestroyWindow, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DispatchMessageW, [:pointer, :long, :long], :int32
      typesig { [MSG] }
      # long
      def _dispatch_message_w(lpmsg)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DispatchMessageW, JNI.env, self.jni_id, lpmsg.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DispatchMessageA, [:pointer, :long, :long], :int32
      typesig { [MSG] }
      # long
      def _dispatch_message_a(lpmsg)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DispatchMessageA, JNI.env, self.jni_id, lpmsg.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DPtoLP, [:pointer, :long, :int32, :long, :int32], :int8
      typesig { [::Java::Int, POINT, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _dpto_lp(hdc, lp_points, n_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DPtoLP, JNI.env, self.jni_id, hdc.to_int, lp_points.jni_id, n_count.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DragDetect, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, POINT] }
      # @param hwnd cast=(HWND)
      # @param pt flags=struct
      # 
      # long
      def _drag_detect(hwnd, pt)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DragDetect, JNI.env, self.jni_id, hwnd.to_int, pt.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DragFinish, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param hDrop cast=(HDROP)
      # long
      def _drag_finish(h_drop)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DragFinish, JNI.env, self.jni_id, h_drop.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DragQueryFileA, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param hDrop cast=(HDROP)
      # @param lpszFile cast=(LPTSTR)
      # 
      # long
      def _drag_query_file_a(h_drop, i_file, lpsz_file, cch)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DragQueryFileA, JNI.env, self.jni_id, h_drop.to_int, i_file.to_int, lpsz_file.jni_id, cch.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DragQueryFileW, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param hDrop cast=(HDROP)
      # @param lpszFile cast=(LPWSTR)
      # 
      # long
      def _drag_query_file_w(h_drop, i_file, lpsz_file, cch)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DragQueryFileW, JNI.env, self.jni_id, h_drop.to_int, i_file.to_int, lpsz_file.jni_id, cch.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawAnimatedRects, [:pointer, :long, :int32, :int32, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, RECT, RECT] }
      # @param hwnd cast=(HWND)
      # long
      def _draw_animated_rects(hwnd, id_ani, lprc_from, lprc_to)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawAnimatedRects, JNI.env, self.jni_id, hwnd.to_int, id_ani.to_int, lprc_from.jni_id, lprc_to.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawEdge, [:pointer, :long, :int32, :long, :int32, :int32], :int8
      typesig { [::Java::Int, RECT, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _draw_edge(hdc, qrc, edge, grf_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawEdge, JNI.env, self.jni_id, hdc.to_int, qrc.jni_id, edge.to_int, grf_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawFocusRect, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, RECT] }
      # @param hDC cast=(HDC)
      # long
      def _draw_focus_rect(h_dc, lp_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawFocusRect, JNI.env, self.jni_id, h_dc.to_int, lp_rect.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawFrameControl, [:pointer, :long, :int32, :long, :int32, :int32], :int8
      typesig { [::Java::Int, RECT, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _draw_frame_control(hdc, lprc, u_type, u_state)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawFrameControl, JNI.env, self.jni_id, hdc.to_int, lprc.jni_id, u_type.to_int, u_state.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawIconEx, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param hIcon cast=(HICON)
      # @param hbrFlickerFreeDraw cast=(HBRUSH)
      # 
      # long
      # long
      # long
      def _draw_icon_ex(hdc, x_left, y_top, h_icon, cx_width, cy_width, istep_if_ani_cur, hbr_flicker_free_draw, di_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawIconEx, JNI.env, self.jni_id, hdc.to_int, x_left.to_int, y_top.to_int, h_icon.to_int, cx_width.to_int, cy_width.to_int, istep_if_ani_cur.to_int, hbr_flicker_free_draw.to_int, di_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawMenuBar, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _draw_menu_bar(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawMenuBar, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawStateW, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param hbr cast=(HBRUSH)
      # @param lpOutputFunc cast=(DRAWSTATEPROC)
      # @param lData cast=(LPARAM)
      # @param wData cast=(WPARAM)
      # 
      # long
      # long
      # long
      # long
      # long
      def _draw_state_w(hdc, hbr, lp_output_func, l_data, w_data, x, y, cx, cy, fu_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawStateW, JNI.env, self.jni_id, hdc.to_int, hbr.to_int, lp_output_func.to_int, l_data.to_int, w_data.to_int, x.to_int, y.to_int, cx.to_int, cy.to_int, fu_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawStateA, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param hbr cast=(HBRUSH)
      # @param lpOutputFunc cast=(DRAWSTATEPROC)
      # @param lData cast=(LPARAM)
      # @param wData cast=(WPARAM)
      # 
      # long
      # long
      # long
      # long
      # long
      def _draw_state_a(hdc, hbr, lp_output_func, l_data, w_data, x, y, cx, cy, fu_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawStateA, JNI.env, self.jni_id, hdc.to_int, hbr.to_int, lp_output_func.to_int, l_data.to_int, w_data.to_int, x.to_int, y.to_int, cx.to_int, cy.to_int, fu_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawTextW, [:pointer, :long, :int32, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, RECT, ::Java::Int] }
      # @param hDC cast=(HDC)
      # @param lpString cast=(LPWSTR),flags=no_out critical
      # 
      # long
      def _draw_text_w(h_dc, lp_string, n_count, lp_rect, u_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawTextW, JNI.env, self.jni_id, h_dc.to_int, lp_string.jni_id, n_count.to_int, lp_rect.jni_id, u_format.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawTextA, [:pointer, :long, :int32, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, RECT, ::Java::Int] }
      # @param hDC cast=(HDC)
      # @param lpString cast=(LPSTR),flags=no_out critical
      # 
      # long
      def _draw_text_a(h_dc, lp_string, n_count, lp_rect, u_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawTextA, JNI.env, self.jni_id, h_dc.to_int, lp_string.jni_id, n_count.to_int, lp_rect.jni_id, u_format.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawThemeBackground, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, RECT] }
      # @method flags=dynamic
      # @param hTheme cast=(HTHEME)
      # @param hdc cast=(HDC)
      # @param pRect cast=(const RECT *)
      # @param pClipRect cast=(const RECT *)
      # 
      # long
      # long
      def _draw_theme_background(h_theme, hdc, i_part_id, i_state_id, p_rect, p_clip_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawThemeBackground, JNI.env, self.jni_id, h_theme.to_int, hdc.to_int, i_part_id.to_int, i_state_id.to_int, p_rect.jni_id, p_clip_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawThemeEdge, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, ::Java::Int, ::Java::Int, RECT] }
      # @method flags=dynamic
      # long
      # long
      def _draw_theme_edge(h_theme, hdc, i_part_id, i_state_id, p_dest_rect, u_edge, u_flags, p_content_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawThemeEdge, JNI.env, self.jni_id, h_theme.to_int, hdc.to_int, i_part_id.to_int, i_state_id.to_int, p_dest_rect.jni_id, u_edge.to_int, u_flags.to_int, p_content_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawThemeIcon, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # long
      # long
      # long
      def _draw_theme_icon(h_theme, hdc, i_part_id, i_state_id, p_rect, himl, i_image_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawThemeIcon, JNI.env, self.jni_id, h_theme.to_int, hdc.to_int, i_part_id.to_int, i_state_id.to_int, p_rect.jni_id, himl.to_int, i_image_index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawThemeParentBackground, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, RECT] }
      # @method flags=dynamic
      # long
      # long
      def _draw_theme_parent_background(hwnd, hdc, prc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawThemeParentBackground, JNI.env, self.jni_id, hwnd.to_int, hdc.to_int, prc.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DrawThemeText, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, RECT] }
      # @method flags=dynamic
      # long
      # long
      def _draw_theme_text(h_theme, hdc, i_part_id, i_state_id, psz_text, i_char_count, dw_text_flags, dw_text_flags2, p_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DrawThemeText, JNI.env, self.jni_id, h_theme.to_int, hdc.to_int, i_part_id.to_int, i_state_id.to_int, psz_text.jni_id, i_char_count.to_int, dw_text_flags.to_int, dw_text_flags2.to_int, p_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DwmEnableBlurBehindWindow, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, DWM_BLURBEHIND] }
      # @method flags=dynamic
      # @param hWnd cast=(HWND)
      # 
      # long
      def _dwm_enable_blur_behind_window(h_wnd, p_blur_behind)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DwmEnableBlurBehindWindow, JNI.env, self.jni_id, h_wnd.to_int, p_blur_behind.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_DwmExtendFrameIntoClientArea, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, MARGINS] }
      # @method flags=dynamic
      # @param hWnd cast=(HWND)
      # 
      # long
      def _dwm_extend_frame_into_client_area(h_wnd, p_mar_inset)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_DwmExtendFrameIntoClientArea, JNI.env, self.jni_id, h_wnd.to_int, p_mar_inset.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_Ellipse, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _ellipse(hdc, n_left_rect, n_top_rect, n_right_rect, n_bottom_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_Ellipse, JNI.env, self.jni_id, hdc.to_int, n_left_rect.to_int, n_top_rect.to_int, n_right_rect.to_int, n_bottom_rect.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnableMenuItem, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hMenu cast=(HMENU)
      # long
      def _enable_menu_item(h_menu, u_idenable_item, u_enable)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnableMenuItem, JNI.env, self.jni_id, h_menu.to_int, u_idenable_item.to_int, u_enable.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnableScrollBar, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _enable_scroll_bar(h_wnd, w_sbflags, w_arrows)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnableScrollBar, JNI.env, self.jni_id, h_wnd.to_int, w_sbflags.to_int, w_arrows.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnableWindow, [:pointer, :long, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Boolean] }
      # @param hWnd cast=(HWND)
      # long
      def _enable_window(h_wnd, b_enable)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnableWindow, JNI.env, self.jni_id, h_wnd.to_int, b_enable ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnumSystemLanguageGroupsW, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # @param pLangGroupEnumProc cast=(LANGUAGEGROUP_ENUMPROCW)
      # @param lParam cast=(LONG_PTR)
      # 
      # long
      # long
      def _enum_system_language_groups_w(p_lang_group_enum_proc, dw_flags, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnumSystemLanguageGroupsW, JNI.env, self.jni_id, p_lang_group_enum_proc.to_int, dw_flags.to_int, l_param.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnumSystemLanguageGroupsA, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # @param pLangGroupEnumProc cast=(LANGUAGEGROUP_ENUMPROCA)
      # @param lParam cast=(LONG_PTR)
      # 
      # long
      # long
      def _enum_system_language_groups_a(p_lang_group_enum_proc, dw_flags, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnumSystemLanguageGroupsA, JNI.env, self.jni_id, p_lang_group_enum_proc.to_int, dw_flags.to_int, l_param.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnumSystemLocalesW, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param lpLocaleEnumProc cast=(LOCALE_ENUMPROCW)
      # long
      def _enum_system_locales_w(lp_locale_enum_proc, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnumSystemLocalesW, JNI.env, self.jni_id, lp_locale_enum_proc.to_int, dw_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnumSystemLocalesA, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param lpLocaleEnumProc cast=(LOCALE_ENUMPROCA)
      # long
      def _enum_system_locales_a(lp_locale_enum_proc, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnumSystemLocalesA, JNI.env, self.jni_id, lp_locale_enum_proc.to_int, dw_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EndDeferWindowPos, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWinPosInfo cast=(HDWP)
      # long
      def _end_defer_window_pos(h_win_pos_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EndDeferWindowPos, JNI.env, self.jni_id, h_win_pos_info.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EndBufferedPaint, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      # @method flags=dynamic
      # @param hBufferedPaint cast=(HPAINTBUFFER)
      # 
      # long
      def _end_buffered_paint(h_buffered_paint, f_update_target)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EndBufferedPaint, JNI.env, self.jni_id, h_buffered_paint.to_int, f_update_target ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EndDoc, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _end_doc(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EndDoc, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EndPage, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _end_page(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EndPage, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EndPaint, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, PAINTSTRUCT] }
      # @param hWnd cast=(HWND)
      # long
      def _end_paint(h_wnd, lp_paint)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EndPaint, JNI.env, self.jni_id, h_wnd.to_int, lp_paint.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EndPath, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _end_path(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EndPath, JNI.env, self.jni_id, hdc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnumDisplayMonitors, [:pointer, :long, :int32, :long, :int32, :int32], :int8
      typesig { [::Java::Int, RECT, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # @param hdc cast=(HDC)
      # @param lprcClip cast=(LPCRECT)
      # @param lpfnEnum cast=(MONITORENUMPROC)
      # @param dwData cast=(LPARAM)
      # 
      # long
      # long
      def _enum_display_monitors(hdc, lprc_clip, lpfn_enum, dw_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnumDisplayMonitors, JNI.env, self.jni_id, hdc.to_int, lprc_clip.jni_id, lpfn_enum.to_int, dw_data.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnumEnhMetaFile, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT] }
      # @param hdc cast=(HDC)
      # @param hemf cast=(HENHMETAFILE)
      # @param lpEnhMetaFunc cast=(ENHMFENUMPROC)
      # @param lpData cast=(LPVOID)
      # 
      # long
      # long
      # long
      # long
      def _enum_enh_meta_file(hdc, hemf, lp_enh_meta_func, lp_data, lp_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnumEnhMetaFile, JNI.env, self.jni_id, hdc.to_int, hemf.to_int, lp_enh_meta_func.to_int, lp_data.to_int, lp_rect.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnumFontFamiliesW, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param lpszFamily cast=(LPCWSTR)
      # @param lpEnumFontFamProc cast=(FONTENUMPROCW)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _enum_font_families_w(hdc, lpsz_family, lp_enum_font_fam_proc, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnumFontFamiliesW, JNI.env, self.jni_id, hdc.to_int, lpsz_family.jni_id, lp_enum_font_fam_proc.to_int, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnumFontFamiliesA, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param lpszFamily cast=(LPSTR)
      # @param lpEnumFontFamProc cast=(FONTENUMPROC)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _enum_font_families_a(hdc, lpsz_family, lp_enum_font_fam_proc, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnumFontFamiliesA, JNI.env, self.jni_id, hdc.to_int, lpsz_family.jni_id, lp_enum_font_fam_proc.to_int, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnumFontFamiliesExW, [:pointer, :long, :int32, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, LOGFONTW, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param lpLogfont cast=(LPLOGFONTW)
      # @param lpEnumFontFamExProc cast=(FONTENUMPROCW)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _enum_font_families_ex_w(hdc, lp_logfont, lp_enum_font_fam_ex_proc, l_param, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnumFontFamiliesExW, JNI.env, self.jni_id, hdc.to_int, lp_logfont.jni_id, lp_enum_font_fam_ex_proc.to_int, l_param.to_int, dw_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EnumFontFamiliesExA, [:pointer, :long, :int32, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, LOGFONTA, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param lpLogfont cast=(LPLOGFONTA)
      # @param lpEnumFontFamExProc cast=(FONTENUMPROCA)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _enum_font_families_ex_a(hdc, lp_logfont, lp_enum_font_fam_ex_proc, l_param, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EnumFontFamiliesExA, JNI.env, self.jni_id, hdc.to_int, lp_logfont.jni_id, lp_enum_font_fam_ex_proc.to_int, l_param.to_int, dw_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EqualRect, [:pointer, :long, :long, :long], :int8
      typesig { [RECT, RECT] }
      # @param lprc1 cast=(CONST RECT *),flags=no_out
      # @param lprc2 cast=(CONST RECT *),flags=no_out
      def _equal_rect(lprc1, lprc2)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EqualRect, JNI.env, self.jni_id, lprc1.jni_id, lprc2.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_EqualRgn, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param hSrcRgn1 cast=(HRGN)
      # @param hSrcRgn2 cast=(HRGN)
      # 
      # long
      # long
      def _equal_rgn(h_src_rgn1, h_src_rgn2)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_EqualRgn, JNI.env, self.jni_id, h_src_rgn1.to_int, h_src_rgn2.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ExcludeClipRect, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _exclude_clip_rect(hdc, n_left_rect, n_top_rect, n_right_rect, n_bottom_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ExcludeClipRect, JNI.env, self.jni_id, hdc.to_int, n_left_rect.to_int, n_top_rect.to_int, n_right_rect.to_int, n_bottom_rect.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ExpandEnvironmentStringsW, [:pointer, :long, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int] }
      def _expand_environment_strings_w(lp_src, ls_dst, n_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ExpandEnvironmentStringsW, JNI.env, self.jni_id, lp_src.jni_id, ls_dst.jni_id, n_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ExpandEnvironmentStringsA, [:pointer, :long, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      def _expand_environment_strings_a(lp_src, ls_dst, n_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ExpandEnvironmentStringsA, JNI.env, self.jni_id, lp_src.jni_id, ls_dst.jni_id, n_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ExtCreatePen, [:pointer, :long, :int32, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, LOGBRUSH, ::Java::Int, Array.typed(::Java::Int)] }
      # @param lplb cast=(CONST LOGBRUSH *)
      # @param lpStyle cast=(CONST DWORD *)
      # 
      # long
      def _ext_create_pen(dw_pen_style, dw_width, lplb, dw_style_count, lp_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ExtCreatePen, JNI.env, self.jni_id, dw_pen_style.to_int, dw_width.to_int, lplb.jni_id, dw_style_count.to_int, lp_style.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ExtCreateRegion, [:pointer, :long, :long, :int32, :long], :int32
      typesig { [Array.typed(::Java::Float), ::Java::Int, Array.typed(::Java::Int)] }
      # @param lpXform cast=(XFORM *)
      # @param lpRgnData cast=(CONST RGNDATA *)
      # 
      # long
      def _ext_create_region(lp_xform, n_count, lp_rgn_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ExtCreateRegion, JNI.env, self.jni_id, lp_xform.jni_id, n_count.to_int, lp_rgn_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ExtTextOutW, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int)] }
      # @param hdc cast=(HDC)
      # @param lprc flags=no_out
      # @param lpString cast=(LPWSTR),flags=no_out critical
      # @param lpDx cast=(CONST INT *),flags=no_out critical
      # 
      # long
      def _ext_text_out_w(hdc, x, y, fu_options, lprc, lp_string, cb_count, lp_dx)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ExtTextOutW, JNI.env, self.jni_id, hdc.to_int, x.to_int, y.to_int, fu_options.to_int, lprc.jni_id, lp_string.jni_id, cb_count.to_int, lp_dx.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ExtTextOutA, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # @param hdc cast=(HDC)
      # @param lprc flags=no_out
      # @param lpString cast=(LPSTR),flags=no_out critical
      # @param lpDx cast=(CONST INT *),flags=no_out critical
      # 
      # long
      def _ext_text_out_a(hdc, x, y, fu_options, lprc, lp_string, cb_count, lp_dx)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ExtTextOutA, JNI.env, self.jni_id, hdc.to_int, x.to_int, y.to_int, fu_options.to_int, lprc.jni_id, lp_string.jni_id, cb_count.to_int, lp_dx.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ExtractIconExW, [:pointer, :long, :long, :int32, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int] }
      # @param lpszFile cast=(LPWSTR)
      # @param phiconLarge cast=(HICON FAR *)
      # @param phiconSmall cast=(HICON FAR *)
      # 
      # long
      # long
      def _extract_icon_ex_w(lpsz_file, n_icon_index, phicon_large, phicon_small, n_icons)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ExtractIconExW, JNI.env, self.jni_id, lpsz_file.jni_id, n_icon_index.to_int, phicon_large.jni_id, phicon_small.jni_id, n_icons.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ExtractIconExA, [:pointer, :long, :long, :int32, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int] }
      # @param lpszFile cast=(LPSTR)
      # @param phiconLarge cast=(HICON FAR *)
      # @param phiconSmall cast=(HICON FAR *)
      # 
      # long
      # long
      def _extract_icon_ex_a(lpsz_file, n_icon_index, phicon_large, phicon_small, n_icons)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ExtractIconExA, JNI.env, self.jni_id, lpsz_file.jni_id, n_icon_index.to_int, phicon_large.jni_id, phicon_small.jni_id, n_icons.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_FillRect, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, RECT, ::Java::Int] }
      # @param hDC cast=(HDC)
      # @param lprc flags=no_out
      # @param hbr cast=(HBRUSH)
      # 
      # long
      # long
      def _fill_rect(h_dc, lprc, hbr)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_FillRect, JNI.env, self.jni_id, h_dc.to_int, lprc.jni_id, hbr.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_FillPath, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _fill_path(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_FillPath, JNI.env, self.jni_id, hdc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_FindWindowA, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # @param lpClassName cast=(LPSTR)
      # @param lpWindowName cast=(LPSTR)
      # 
      # long
      def _find_window_a(lp_class_name, lp_window_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_FindWindowA, JNI.env, self.jni_id, lp_class_name.jni_id, lp_window_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_FindWindowW, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Char), Array.typed(::Java::Char)] }
      # @param lpClassName cast=(LPWSTR)
      # @param lpWindowName cast=(LPWSTR)
      # 
      # long
      def _find_window_w(lp_class_name, lp_window_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_FindWindowW, JNI.env, self.jni_id, lp_class_name.jni_id, lp_window_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_FormatMessageA, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # @param lpSource cast=(LPCVOID)
      # @param lpBuffer cast=(LPSTR)
      # @param Arguments cast=(va_list*)
      # 
      # long
      # long
      # long
      def _format_message_a(dw_flags, lp_source, dw_message_id, dw_language_id, lp_buffer, n_size, arguments)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_FormatMessageA, JNI.env, self.jni_id, dw_flags.to_int, lp_source.to_int, dw_message_id.to_int, dw_language_id.to_int, lp_buffer.jni_id, n_size.to_int, arguments.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_FormatMessageW, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # @param lpSource cast=(LPCVOID)
      # @param lpBuffer cast=(LPWSTR)
      # @param Arguments cast=(va_list*)
      # 
      # long
      # long
      # long
      def _format_message_w(dw_flags, lp_source, dw_message_id, dw_language_id, lp_buffer, n_size, arguments)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_FormatMessageW, JNI.env, self.jni_id, dw_flags.to_int, lp_source.to_int, dw_message_id.to_int, dw_language_id.to_int, lp_buffer.jni_id, n_size.to_int, arguments.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_FreeLibrary, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hLibModule cast=(HMODULE)
      # long
      def _free_library(h_lib_module)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_FreeLibrary, JNI.env, self.jni_id, h_lib_module.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GdiSetBatchLimit, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param dwLimit cast=(DWORD)
      def _gdi_set_batch_limit(dw_limit)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GdiSetBatchLimit, JNI.env, self.jni_id, dw_limit.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GET_1WHEEL_1DELTA_1WPARAM, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _get_wheel_delta_wparam(w_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GET_1WHEEL_1DELTA_1WPARAM, JNI.env, self.jni_id, w_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GET_1X_1LPARAM, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _get_x_lparam(lp)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GET_1X_1LPARAM, JNI.env, self.jni_id, lp.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GET_1Y_1LPARAM, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _get_y_lparam(lp)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GET_1Y_1LPARAM, JNI.env, self.jni_id, lp.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetACP, [:pointer, :long], :int32
      typesig { [] }
      def _get_acp
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetACP, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetAsyncKeyState, [:pointer, :long, :int32], :int16
      typesig { [::Java::Int] }
      def _get_async_key_state(n_virt_key)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetAsyncKeyState, JNI.env, self.jni_id, n_virt_key.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetActiveWindow, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _get_active_window
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetActiveWindow, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetBkColor, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hDC cast=(HDC)
      # long
      def _get_bk_color(h_dc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetBkColor, JNI.env, self.jni_id, h_dc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCapture, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _get_capture
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCapture, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCaretPos, [:pointer, :long, :long], :int8
      typesig { [POINT] }
      def _get_caret_pos(lp_point)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCaretPos, JNI.env, self.jni_id, lp_point.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCharABCWidthsA, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hdc cast=(HDC)
      # @param lpabc cast=(LPABC),flags=no_in critical
      # 
      # long
      def _get_char_abcwidths_a(hdc, i_first_char, i_last_char, lpabc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCharABCWidthsA, JNI.env, self.jni_id, hdc.to_int, i_first_char.to_int, i_last_char.to_int, lpabc.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCharABCWidthsW, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hdc cast=(HDC)
      # @param lpabc cast=(LPABC),flags=no_in critical
      # 
      # long
      def _get_char_abcwidths_w(hdc, i_first_char, i_last_char, lpabc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCharABCWidthsW, JNI.env, self.jni_id, hdc.to_int, i_first_char.to_int, i_last_char.to_int, lpabc.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCharacterPlacementW, [:pointer, :long, :int32, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, GCP_RESULTS, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param lpString cast=(LPWSTR),flags=no_out critical
      # @param lpResults cast=(LPGCP_RESULTSW)
      # 
      # long
      def _get_character_placement_w(hdc, lp_string, n_count, n_max_extent, lp_results, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCharacterPlacementW, JNI.env, self.jni_id, hdc.to_int, lp_string.jni_id, n_count.to_int, n_max_extent.to_int, lp_results.jni_id, dw_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCharacterPlacementA, [:pointer, :long, :int32, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, GCP_RESULTS, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param lpString cast=(LPSTR),flags=no_out critical
      # 
      # long
      def _get_character_placement_a(hdc, lp_string, n_count, n_max_extent, lp_results, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCharacterPlacementA, JNI.env, self.jni_id, hdc.to_int, lp_string.jni_id, n_count.to_int, n_max_extent.to_int, lp_results.jni_id, dw_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCharWidthA, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hdc cast=(HDC)
      # @param lpBuffer cast=(LPINT),flags=no_in critical
      # 
      # long
      def _get_char_width_a(hdc, i_first_char, i_last_char, lp_buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCharWidthA, JNI.env, self.jni_id, hdc.to_int, i_first_char.to_int, i_last_char.to_int, lp_buffer.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCharWidthW, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hdc cast=(HDC)
      # @param lpBuffer cast=(LPINT),flags=no_in critical
      # 
      # long
      def _get_char_width_w(hdc, i_first_char, i_last_char, lp_buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCharWidthW, JNI.env, self.jni_id, hdc.to_int, i_first_char.to_int, i_last_char.to_int, lp_buffer.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetClassInfoW, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Char), WNDCLASS] }
      # @param hInstance cast=(HINSTANCE)
      # @param lpClassName cast=(LPWSTR)
      # @param lpWndClass cast=(LPWNDCLASSW)
      # 
      # long
      def _get_class_info_w(h_instance, lp_class_name, lp_wnd_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetClassInfoW, JNI.env, self.jni_id, h_instance.to_int, lp_class_name.jni_id, lp_wnd_class.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetClassInfoA, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte), WNDCLASS] }
      # @param hInstance cast=(HINSTANCE)
      # @param lpClassName cast=(LPSTR)
      # 
      # long
      def _get_class_info_a(h_instance, lp_class_name, lp_wnd_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetClassInfoA, JNI.env, self.jni_id, h_instance.to_int, lp_class_name.jni_id, lp_wnd_class.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetClassNameW, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _get_class_name_w(h_wnd, lp_class_name, n_max_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetClassNameW, JNI.env, self.jni_id, h_wnd.to_int, lp_class_name.jni_id, n_max_count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetClassNameA, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _get_class_name_a(h_wnd, lp_class_name, n_max_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetClassNameA, JNI.env, self.jni_id, h_wnd.to_int, lp_class_name.jni_id, n_max_count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetClientRect, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, RECT] }
      # @param hWnd cast=(HWND)
      # long
      def _get_client_rect(h_wnd, lp_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetClientRect, JNI.env, self.jni_id, h_wnd.to_int, lp_rect.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetClipboardData, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _get_clipboard_data(u_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetClipboardData, JNI.env, self.jni_id, u_format.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetClipboardFormatNameA, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def _get_clipboard_format_name_a(format, lpsz_format_name, cch_max_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetClipboardFormatNameA, JNI.env, self.jni_id, format.to_int, lpsz_format_name.jni_id, cch_max_count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetClipboardFormatNameW, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param lpszFormatName cast=(LPWSTR)
      def _get_clipboard_format_name_w(format, lpsz_format_name, cch_max_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetClipboardFormatNameW, JNI.env, self.jni_id, format.to_int, lpsz_format_name.jni_id, cch_max_count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetClipBox, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, RECT] }
      # @param hdc cast=(HDC)
      # long
      def _get_clip_box(hdc, lprc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetClipBox, JNI.env, self.jni_id, hdc.to_int, lprc.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetClipRgn, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param hrgn cast=(HRGN)
      # 
      # long
      # long
      def _get_clip_rgn(hdc, hrgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetClipRgn, JNI.env, self.jni_id, hdc.to_int, hrgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetComboBoxInfo, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, COMBOBOXINFO] }
      # @method flags=dynamic
      # @param hwndCombo cast=(HWND)
      # 
      # long
      def _get_combo_box_info(hwnd_combo, pcbi)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetComboBoxInfo, JNI.env, self.jni_id, hwnd_combo.to_int, pcbi.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCurrentObject, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      # long
      def _get_current_object(hdc, u_object_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCurrentObject, JNI.env, self.jni_id, hdc.to_int, u_object_type.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCurrentProcessId, [:pointer, :long], :int32
      typesig { [] }
      def _get_current_process_id
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCurrentProcessId, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCurrentThreadId, [:pointer, :long], :int32
      typesig { [] }
      def _get_current_thread_id
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCurrentThreadId, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCursor, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _get_cursor
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCursor, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetCursorPos, [:pointer, :long, :long], :int8
      typesig { [POINT] }
      def _get_cursor_pos(lp_point)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetCursorPos, JNI.env, self.jni_id, lp_point.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetDateFormatW, [:pointer, :long, :int32, :int32, :long, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, SYSTEMTIME, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int] }
      # @param Locale cast=(LCID)
      # @param dwFlags cast=(DWORD)
      # @param lpFormat cast=(LPWSTR)
      # @param lpDateStr cast=(LPWSTR)
      def _get_date_format_w(locale, dw_flags, lp_date, lp_format, lp_date_str, cch_date)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetDateFormatW, JNI.env, self.jni_id, locale.to_int, dw_flags.to_int, lp_date.jni_id, lp_format.jni_id, lp_date_str.jni_id, cch_date.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetDateFormatA, [:pointer, :long, :int32, :int32, :long, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, SYSTEMTIME, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # @param Locale cast=(LCID)
      # @param dwFlags cast=(DWORD)
      # @param lpFormat cast=(LPSTR)
      # @param lpDateStr cast=(LPSTR)
      def _get_date_format_a(locale, dw_flags, lp_date, lp_format, lp_date_str, cch_date)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetDateFormatA, JNI.env, self.jni_id, locale.to_int, dw_flags.to_int, lp_date.jni_id, lp_format.jni_id, lp_date_str.jni_id, cch_date.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetDC, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hwnd cast=(HWND)
      # long
      # long
      def _get_dc(hwnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetDC, JNI.env, self.jni_id, hwnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetDCEx, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hrgnClip cast=(HRGN)
      # 
      # long
      # long
      # long
      def _get_dcex(h_wnd, hrgn_clip, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetDCEx, JNI.env, self.jni_id, h_wnd.to_int, hrgn_clip.to_int, flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetDesktopWindow, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _get_desktop_window
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetDesktopWindow, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetDeviceCaps, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _get_device_caps(hdc, n_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetDeviceCaps, JNI.env, self.jni_id, hdc.to_int, n_index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetDialogBaseUnits, [:pointer, :long], :int32
      typesig { [] }
      def _get_dialog_base_units
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetDialogBaseUnits, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetDIBColorTable, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # @param hdc cast=(HDC)
      # @param pColors cast=(RGBQUAD *),flags=no_in critical
      # 
      # long
      def _get_dibcolor_table(hdc, u_start_index, c_entries, p_colors)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetDIBColorTable, JNI.env, self.jni_id, hdc.to_int, u_start_index.to_int, c_entries.to_int, p_colors.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetDIBits, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param hbmp cast=(HBITMAP)
      # @param lpvBits cast=(LPVOID)
      # @param lpbi cast=(LPBITMAPINFO),flags=critical
      # 
      # long
      # long
      # long
      def _get_dibits(hdc, hbmp, u_start_scan, c_scan_lines, lpv_bits, lpbi, u_usage)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetDIBits, JNI.env, self.jni_id, hdc.to_int, hbmp.to_int, u_start_scan.to_int, c_scan_lines.to_int, lpv_bits.to_int, lpbi.jni_id, u_usage.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetDlgItem, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hDlg cast=(HWND)
      # long
      # long
      def _get_dlg_item(h_dlg, n_iddlg_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetDlgItem, JNI.env, self.jni_id, h_dlg.to_int, n_iddlg_item.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetDoubleClickTime, [:pointer, :long], :int32
      typesig { [] }
      def _get_double_click_time
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetDoubleClickTime, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetFocus, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _get_focus
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetFocus, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetFontLanguageInfo, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _get_font_language_info(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetFontLanguageInfo, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetForegroundWindow, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _get_foreground_window
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetForegroundWindow, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetGraphicsMode, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _get_graphics_mode(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetGraphicsMode, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetGUIThreadInfo, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, GUITHREADINFO] }
      # @param idThread cast=(DWORD)
      # @param lpgui cast=(LPGUITHREADINFO)
      def _get_guithread_info(id_thread, lpgui)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetGUIThreadInfo, JNI.env, self.jni_id, id_thread.to_int, lpgui.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetIconInfo, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, ICONINFO] }
      # @param hIcon cast=(HICON)
      # @param piconinfo flags=no_in
      # 
      # long
      def _get_icon_info(h_icon, piconinfo)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetIconInfo, JNI.env, self.jni_id, h_icon.to_int, piconinfo.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetKeyboardLayoutList, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # @param lpList cast=(HKL FAR *)
      # long
      def _get_keyboard_layout_list(n_buff, lp_list)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetKeyboardLayoutList, JNI.env, self.jni_id, n_buff.to_int, lp_list.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetKeyboardLayout, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _get_keyboard_layout(id_thread)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetKeyboardLayout, JNI.env, self.jni_id, id_thread.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetKeyState, [:pointer, :long, :int32], :int16
      typesig { [::Java::Int] }
      def _get_key_state(n_virt_key)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetKeyState, JNI.env, self.jni_id, n_virt_key.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetKeyboardState, [:pointer, :long, :long], :int8
      typesig { [Array.typed(::Java::Byte)] }
      # @param lpKeyState cast=(PBYTE)
      def _get_keyboard_state(lp_key_state)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetKeyboardState, JNI.env, self.jni_id, lp_key_state.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetKeyNameTextW, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param lpString cast=(LPWSTR)
      def _get_key_name_text_w(l_param, lp_string, n_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetKeyNameTextW, JNI.env, self.jni_id, l_param.to_int, lp_string.jni_id, n_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetKeyNameTextA, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param lpString cast=(LPSTR)
      def _get_key_name_text_a(l_param, lp_string, n_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetKeyNameTextA, JNI.env, self.jni_id, l_param.to_int, lp_string.jni_id, n_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetLastActivePopup, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _get_last_active_popup(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetLastActivePopup, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetLastError, [:pointer, :long], :int32
      typesig { [] }
      def _get_last_error
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetLastError, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetLayeredWindowAttributes, [:pointer, :long, :int32, :long, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # @method flags=dynamic
      # @param hwnd cast=(HWND)
      # 
      # long
      def _get_layered_window_attributes(hwnd, pcr_key, pb_alpha, pdw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetLayeredWindowAttributes, JNI.env, self.jni_id, hwnd.to_int, pcr_key.jni_id, pb_alpha.jni_id, pdw_flags.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetLayout, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method flags=dynamic
      # @param hdc cast=(HDC)
      # 
      # long
      def _get_layout(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetLayout, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetLibraryHandle, [:pointer, :long], :int32
      typesig { [] }
      # returns the instance handle to the swt library
      # @method flags=no_gen
      # long
      def _get_library_handle
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetLibraryHandle, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetLocaleInfoW, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param lpLCData cast=(LPWSTR)
      def _get_locale_info_w(locale, lctype, lp_lcdata, cch_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetLocaleInfoW, JNI.env, self.jni_id, locale.to_int, lctype.to_int, lp_lcdata.jni_id, cch_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetLocaleInfoA, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param lpLCData cast=(LPSTR)
      def _get_locale_info_a(locale, lctype, lp_lcdata, cch_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetLocaleInfoA, JNI.env, self.jni_id, locale.to_int, lctype.to_int, lp_lcdata.jni_id, cch_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMenu, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _get_menu(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMenu, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMenuBarInfo, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, MENUBARINFO] }
      # @method flags=dynamic
      # long
      def _get_menu_bar_info(h_wnd, id_object, id_item, pmbi)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMenuBarInfo, JNI.env, self.jni_id, h_wnd.to_int, id_object.to_int, id_item.to_int, pmbi.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMenuDefaultItem, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hMenu cast=(HMENU)
      # long
      def _get_menu_default_item(h_menu, f_by_pos, gmdi_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMenuDefaultItem, JNI.env, self.jni_id, h_menu.to_int, f_by_pos.to_int, gmdi_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMenuInfo, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, MENUINFO] }
      # @method flags=dynamic
      # @param hmenu cast=(HMENU)
      # 
      # long
      def _get_menu_info(hmenu, lpcmi)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMenuInfo, JNI.env, self.jni_id, hmenu.to_int, lpcmi.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMenuItemCount, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hMenu cast=(HMENU)
      # long
      def _get_menu_item_count(h_menu)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMenuItemCount, JNI.env, self.jni_id, h_menu.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMenuItemInfoW, [:pointer, :long, :int32, :int32, :int8, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, MENUITEMINFO] }
      # @param hMenu cast=(HMENU)
      # @param lpmii cast=(LPMENUITEMINFOW)
      # 
      # long
      def _get_menu_item_info_w(h_menu, u_item, f_by_position, lpmii)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMenuItemInfoW, JNI.env, self.jni_id, h_menu.to_int, u_item.to_int, f_by_position ? 1 : 0, lpmii.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMenuItemInfoA, [:pointer, :long, :int32, :int32, :int8, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, MENUITEMINFO] }
      # @param hMenu cast=(HMENU)
      # long
      def _get_menu_item_info_a(h_menu, u_item, f_by_position, lpmii)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMenuItemInfoA, JNI.env, self.jni_id, h_menu.to_int, u_item.to_int, f_by_position ? 1 : 0, lpmii.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMenuItemRect, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, RECT] }
      # @param hWnd cast=(HWND)
      # @param hMenu cast=(HMENU)
      # 
      # long
      # long
      def _get_menu_item_rect(h_wnd, h_menu, u_item, lprc_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMenuItemRect, JNI.env, self.jni_id, h_wnd.to_int, h_menu.to_int, u_item.to_int, lprc_item.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMessageW, [:pointer, :long, :long, :int32, :int32, :int32], :int8
      typesig { [MSG, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _get_message_w(lp_msg, h_wnd, w_msg_filter_min, w_msg_filter_max)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMessageW, JNI.env, self.jni_id, lp_msg.jni_id, h_wnd.to_int, w_msg_filter_min.to_int, w_msg_filter_max.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMessageA, [:pointer, :long, :long, :int32, :int32, :int32], :int8
      typesig { [MSG, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _get_message_a(lp_msg, h_wnd, w_msg_filter_min, w_msg_filter_max)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMessageA, JNI.env, self.jni_id, lp_msg.jni_id, h_wnd.to_int, w_msg_filter_min.to_int, w_msg_filter_max.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMessagePos, [:pointer, :long], :int32
      typesig { [] }
      def _get_message_pos
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMessagePos, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMessageTime, [:pointer, :long], :int32
      typesig { [] }
      def _get_message_time
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMessageTime, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMetaRgn, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param hrgn cast=(HRGN)
      # 
      # long
      # long
      def _get_meta_rgn(hdc, hrgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMetaRgn, JNI.env, self.jni_id, hdc.to_int, hrgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetThemeColor, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @method flags=dynamic
      # long
      def _get_theme_color(h_theme, i_part_id, i_state_id, i_prop_id, p_color)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetThemeColor, JNI.env, self.jni_id, h_theme.to_int, i_part_id.to_int, i_state_id.to_int, i_prop_id.to_int, p_color.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetThemeTextExtent, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, RECT, RECT] }
      # @method flags=dynamic
      # long
      # long
      def _get_theme_text_extent(h_theme, hdc, i_part_id, i_state_id, psz_text, i_char_count, dw_text_flags, p_bounding_rect, p_extent_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetThemeTextExtent, JNI.env, self.jni_id, h_theme.to_int, hdc.to_int, i_part_id.to_int, i_state_id.to_int, psz_text.jni_id, i_char_count.to_int, dw_text_flags.to_int, p_bounding_rect.jni_id, p_extent_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetTextCharset, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _get_text_charset(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetTextCharset, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetTickCount, [:pointer, :long], :int32
      typesig { [] }
      def _get_tick_count
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetTickCount, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMapMode, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _get_map_mode(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMapMode, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetModuleFileNameW, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param hModule cast=(HMODULE)
      # @param lpFilename cast=(LPWSTR)
      # 
      # long
      def _get_module_file_name_w(h_module, lp_filename, in_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetModuleFileNameW, JNI.env, self.jni_id, h_module.to_int, lp_filename.jni_id, in_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetModuleFileNameA, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param hModule cast=(HMODULE)
      # @param lpFilename cast=(LPSTR)
      # 
      # long
      def _get_module_file_name_a(h_module, lp_filename, in_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetModuleFileNameA, JNI.env, self.jni_id, h_module.to_int, lp_filename.jni_id, in_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetModuleHandleW, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Char)] }
      # @param lpModuleName cast=(LPWSTR)
      # long
      def _get_module_handle_w(lp_module_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetModuleHandleW, JNI.env, self.jni_id, lp_module_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetModuleHandleA, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # @param lpModuleName cast=(LPSTR)
      # long
      def _get_module_handle_a(lp_module_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetModuleHandleA, JNI.env, self.jni_id, lp_module_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMonitorInfoW, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, MONITORINFO] }
      # @method flags=dynamic
      # @param hmonitor cast=(HMONITOR)
      # @param lpmi cast=(LPMONITORINFO)
      # 
      # long
      def _get_monitor_info_w(hmonitor, lpmi)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMonitorInfoW, JNI.env, self.jni_id, hmonitor.to_int, lpmi.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetMonitorInfoA, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, MONITORINFO] }
      # @method flags=dynamic
      # @param hmonitor cast=(HMONITOR)
      # @param lpmi cast=(LPMONITORINFO)
      # 
      # long
      def _get_monitor_info_a(hmonitor, lpmi)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetMonitorInfoA, JNI.env, self.jni_id, hmonitor.to_int, lpmi.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetNearestPaletteIndex, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hPal cast=(HPALETTE)
      # @param crColor cast=(COLORREF)
      # 
      # long
      def _get_nearest_palette_index(h_pal, cr_color)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetNearestPaletteIndex, JNI.env, self.jni_id, h_pal.to_int, cr_color.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{BITMAP.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, BITMAP] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_a(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{BITMAP.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{BITMAP.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, BITMAP] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_w(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{BITMAP.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{DIBSECTION.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, DIBSECTION] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_a(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{DIBSECTION.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{DIBSECTION.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, DIBSECTION] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_w(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{DIBSECTION.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{EXTLOGPEN.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, EXTLOGPEN] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_a(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{EXTLOGPEN.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{EXTLOGPEN.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, EXTLOGPEN] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_w(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{EXTLOGPEN.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{LOGBRUSH.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, LOGBRUSH] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_a(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{LOGBRUSH.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{LOGBRUSH.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, LOGBRUSH] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_w(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{LOGBRUSH.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{LOGFONTA.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, LOGFONTA] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_a(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{LOGFONTA.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{LOGFONTW.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, LOGFONTW] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_w(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{LOGFONTW.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{LOGPEN.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, LOGPEN] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_a(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectA__IIL#{LOGPEN.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{LOGPEN.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, LOGPEN] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject flags=no_in
      # 
      # long
      def _get_object_w(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetObjectW__IIL#{LOGPEN.jni_name}_2".to_sym, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetObjectA__III, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject cast=(LPVOID),flags=no_in
      # 
      # long
      # long
      def _get_object_a(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetObjectA__III, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetObjectW__III, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hgdiobj cast=(HGDIOBJ)
      # @param lpvObject cast=(LPVOID),flags=no_in
      # 
      # long
      # long
      def _get_object_w(hgdiobj, cb_buffer, lpv_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetObjectW__III, JNI.env, self.jni_id, hgdiobj.to_int, cb_buffer.to_int, lpv_object.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetOpenFileNameW, [:pointer, :long, :long], :int8
      typesig { [OPENFILENAME] }
      # @param lpofn cast=(LPOPENFILENAMEW)
      def _get_open_file_name_w(lpofn)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetOpenFileNameW, JNI.env, self.jni_id, lpofn.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetOpenFileNameA, [:pointer, :long, :long], :int8
      typesig { [OPENFILENAME] }
      def _get_open_file_name_a(lpofn)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetOpenFileNameA, JNI.env, self.jni_id, lpofn.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetOutlineTextMetricsW, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, OUTLINETEXTMETRICW] }
      # @param hdc cast=(HDC)
      # long
      def _get_outline_text_metrics_w(hdc, cb_data, lp_otm)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetOutlineTextMetricsW, JNI.env, self.jni_id, hdc.to_int, cb_data.to_int, lp_otm.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetOutlineTextMetricsA, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, OUTLINETEXTMETRICA] }
      # @param hdc cast=(HDC)
      # long
      def _get_outline_text_metrics_a(hdc, cb_data, lp_otm)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetOutlineTextMetricsA, JNI.env, self.jni_id, hdc.to_int, cb_data.to_int, lp_otm.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetPath, [:pointer, :long, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Byte), ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param lpPoints cast=(LPPOINT)
      # @param lpTypes cast=(LPBYTE)
      # 
      # long
      def _get_path(hdc, lp_points, lp_types, n_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetPath, JNI.env, self.jni_id, hdc.to_int, lp_points.jni_id, lp_types.jni_id, n_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetPaletteEntries, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # @param hPalette cast=(HPALETTE)
      # @param logPalette cast=(LPPALETTEENTRY),flags=no_in critical
      # 
      # long
      def _get_palette_entries(h_palette, i_start_index, n_entries, log_palette)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetPaletteEntries, JNI.env, self.jni_id, h_palette.to_int, i_start_index.to_int, n_entries.to_int, log_palette.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetParent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _get_parent(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetParent, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetPixel, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _get_pixel(hdc, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetPixel, JNI.env, self.jni_id, hdc.to_int, x.to_int, y.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetPolyFillMode, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _get_poly_fill_mode(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetPolyFillMode, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetProcAddress, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # @param hModule cast=(HMODULE)
      # @param lpProcName cast=(LPCTSTR)
      # 
      # long
      # long
      def _get_proc_address(h_module, lp_proc_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetProcAddress, JNI.env, self.jni_id, h_module.to_int, lp_proc_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetProcessHeap, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _get_process_heap
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetProcessHeap, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetProcessHeaps, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # @param ProcessHeaps cast=(PHANDLE)
      # long
      def _get_process_heaps(number_of_heaps, process_heaps)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetProcessHeaps, JNI.env, self.jni_id, number_of_heaps.to_int, process_heaps.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetProfileStringW, [:pointer, :long, :long, :long, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int] }
      # @param lpAppName cast=(LPWSTR)
      # @param lpKeyName cast=(LPWSTR)
      # @param lpDefault cast=(LPWSTR)
      # @param lpReturnedString cast=(LPWSTR)
      def _get_profile_string_w(lp_app_name, lp_key_name, lp_default, lp_returned_string, n_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetProfileStringW, JNI.env, self.jni_id, lp_app_name.jni_id, lp_key_name.jni_id, lp_default.jni_id, lp_returned_string.jni_id, n_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetProfileStringA, [:pointer, :long, :long, :long, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # @param lpAppName cast=(LPSTR)
      # @param lpKeyName cast=(LPSTR)
      # @param lpDefault cast=(LPSTR)
      # @param lpReturnedString cast=(LPSTR)
      def _get_profile_string_a(lp_app_name, lp_key_name, lp_default, lp_returned_string, n_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetProfileStringA, JNI.env, self.jni_id, lp_app_name.jni_id, lp_key_name.jni_id, lp_default.jni_id, lp_returned_string.jni_id, n_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetPropW, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param lpString cast=(LPCWSTR)
      # 
      # long
      # long
      # long
      def _get_prop_w(h_wnd, lp_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetPropW, JNI.env, self.jni_id, h_wnd.to_int, lp_string.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetPropA, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param lpString cast=(LPCTSTR)
      # 
      # long
      # long
      # long
      def _get_prop_a(h_wnd, lp_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetPropA, JNI.env, self.jni_id, h_wnd.to_int, lp_string.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetRandomRgn, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param hrgn cast=(HRGN)
      # 
      # long
      # long
      def _get_random_rgn(hdc, hrgn, i_num)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetRandomRgn, JNI.env, self.jni_id, hdc.to_int, hrgn.to_int, i_num.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetRegionData, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hRgn cast=(HRGN)
      # @param lpRgnData cast=(RGNDATA *),flags=no_in critical
      # 
      # long
      def _get_region_data(h_rgn, dw_count, lp_rgn_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetRegionData, JNI.env, self.jni_id, h_rgn.to_int, dw_count.to_int, lp_rgn_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetRgnBox, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, RECT] }
      # @param hrgn cast=(HRGN)
      # @param lprc flags=no_in
      # 
      # long
      def _get_rgn_box(hrgn, lprc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetRgnBox, JNI.env, self.jni_id, hrgn.to_int, lprc.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetROP2, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _get_rop2(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetROP2, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetSaveFileNameW, [:pointer, :long, :long], :int8
      typesig { [OPENFILENAME] }
      # @param lpofn cast=(LPOPENFILENAMEW)
      def _get_save_file_name_w(lpofn)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetSaveFileNameW, JNI.env, self.jni_id, lpofn.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetSaveFileNameA, [:pointer, :long, :long], :int8
      typesig { [OPENFILENAME] }
      def _get_save_file_name_a(lpofn)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetSaveFileNameA, JNI.env, self.jni_id, lpofn.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetScrollBarInfo, [:pointer, :long, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, SCROLLBARINFO] }
      # @param hwnd cast=(HWND)
      # long
      def _get_scroll_bar_info(hwnd, id_object, psbi)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetScrollBarInfo, JNI.env, self.jni_id, hwnd.to_int, id_object.to_int, psbi.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetScrollInfo, [:pointer, :long, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, SCROLLINFO] }
      # @param hwnd cast=(HWND)
      # long
      def _get_scroll_info(hwnd, flags, info)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetScrollInfo, JNI.env, self.jni_id, hwnd.to_int, flags.to_int, info.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetStartupInfoW, [:pointer, :long, :long], :void
      typesig { [STARTUPINFO] }
      # @param lpStartupInfo cast=(LPSTARTUPINFOW)
      def _get_startup_info_w(lp_startup_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetStartupInfoW, JNI.env, self.jni_id, lp_startup_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetStartupInfoA, [:pointer, :long, :long], :void
      typesig { [STARTUPINFO] }
      # @param lpStartupInfo cast=(LPSTARTUPINFOA)
      def _get_startup_info_a(lp_startup_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetStartupInfoA, JNI.env, self.jni_id, lp_startup_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetStockObject, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _get_stock_object(fn_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetStockObject, JNI.env, self.jni_id, fn_object.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetSysColor, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_sys_color(n_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetSysColor, JNI.env, self.jni_id, n_index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetSysColorBrush, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _get_sys_color_brush(n_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetSysColorBrush, JNI.env, self.jni_id, n_index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetSystemDefaultUILanguage, [:pointer, :long], :int16
      typesig { [] }
      # @method flags=dynamic
      def _get_system_default_uilanguage
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetSystemDefaultUILanguage, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetSystemMenu, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _get_system_menu(h_wnd, b_revert)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetSystemMenu, JNI.env, self.jni_id, h_wnd.to_int, b_revert ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetSystemMetrics, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_system_metrics(n_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetSystemMetrics, JNI.env, self.jni_id, n_index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetSystemPaletteEntries, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # @param hdc cast=(HDC)
      # @param iStartIndex cast=(UINT)
      # @param nEntries cast=(UINT)
      # @param lppe cast=(LPPALETTEENTRY),flags=no_in critical
      # 
      # long
      def _get_system_palette_entries(hdc, i_start_index, n_entries, lppe)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetSystemPaletteEntries, JNI.env, self.jni_id, hdc.to_int, i_start_index.to_int, n_entries.to_int, lppe.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetTextColor, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hDC cast=(HDC)
      # long
      def _get_text_color(h_dc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetTextColor, JNI.env, self.jni_id, h_dc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetTextExtentPoint32W, [:pointer, :long, :int32, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, SIZE] }
      # @param hdc cast=(HDC)
      # @param lpString cast=(LPWSTR),flags=no_out critical
      # @param lpSize flags=no_in
      # 
      # long
      def _get_text_extent_point32w(hdc, lp_string, cb_string, lp_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetTextExtentPoint32W, JNI.env, self.jni_id, hdc.to_int, lp_string.jni_id, cb_string.to_int, lp_size.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetTextExtentPoint32A, [:pointer, :long, :int32, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, SIZE] }
      # @param hdc cast=(HDC)
      # @param lpString cast=(LPSTR),flags=no_out critical
      # @param lpSize flags=no_in
      # 
      # long
      def _get_text_extent_point32a(hdc, lp_string, cb_string, lp_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetTextExtentPoint32A, JNI.env, self.jni_id, hdc.to_int, lp_string.jni_id, cb_string.to_int, lp_size.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetTextMetricsW, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, TEXTMETRICW] }
      # @param hdc cast=(HDC)
      # @param lptm flags=no_in
      # 
      # long
      def _get_text_metrics_w(hdc, lptm)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetTextMetricsW, JNI.env, self.jni_id, hdc.to_int, lptm.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetTextMetricsA, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, TEXTMETRICA] }
      # @param hdc cast=(HDC)
      # @param lptm flags=no_in
      # 
      # long
      def _get_text_metrics_a(hdc, lptm)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetTextMetricsA, JNI.env, self.jni_id, hdc.to_int, lptm.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetThemeInt, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @method flags=dynamic
      # long
      def _get_theme_int(h_theme, i_part_id, i_state_id, i_prop_id, pi_val)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetThemeInt, JNI.env, self.jni_id, h_theme.to_int, i_part_id.to_int, i_state_id.to_int, i_prop_id.to_int, pi_val.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetThemeMargins, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, MARGINS] }
      # @method flags=dynamic
      # long
      # long
      def _get_theme_margins(h_theme, hdc, i_part_id, i_state_id, i_prop_id, prc, p_margins)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetThemeMargins, JNI.env, self.jni_id, h_theme.to_int, hdc.to_int, i_part_id.to_int, i_state_id.to_int, i_prop_id.to_int, prc.jni_id, p_margins.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetThemeBackgroundContentRect, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, RECT] }
      # @method flags=dynamic
      # long
      # long
      def _get_theme_background_content_rect(h_theme, hdc, i_part_id, i_state_id, p_bounding_rect, p_content_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetThemeBackgroundContentRect, JNI.env, self.jni_id, h_theme.to_int, hdc.to_int, i_part_id.to_int, i_state_id.to_int, p_bounding_rect.jni_id, p_content_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetThemeBackgroundExtent, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, RECT] }
      # @method flags=dynamic
      # @param pContentRect flags=no_out
      # 
      # long
      # long
      def _get_theme_background_extent(h_theme, hdc, i_part_id, i_state_id, p_content_rect, p_extent_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetThemeBackgroundExtent, JNI.env, self.jni_id, h_theme.to_int, hdc.to_int, i_part_id.to_int, i_state_id.to_int, p_content_rect.jni_id, p_extent_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetThemePartSize, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, ::Java::Int, SIZE] }
      # @method flags=dynamic
      # long
      # long
      def _get_theme_part_size(h_theme, hdc, i_part_id, i_state_id, prc, e_size, psz)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetThemePartSize, JNI.env, self.jni_id, h_theme.to_int, hdc.to_int, i_part_id.to_int, i_state_id.to_int, prc.jni_id, e_size.to_int, psz.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetThemeMetric, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @method flags=dynamic
      # long
      # long
      def _get_theme_metric(h_theme, hdc, i_part_id, i_state_id, i_prop_id, pi_val)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetThemeMetric, JNI.env, self.jni_id, h_theme.to_int, hdc.to_int, i_part_id.to_int, i_state_id.to_int, i_prop_id.to_int, pi_val.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetThemeRect, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT] }
      # @method flags=dynamic
      # long
      def _get_theme_rect(h_theme, i_part_id, i_state_id, i_prop_id, p_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetThemeRect, JNI.env, self.jni_id, h_theme.to_int, i_part_id.to_int, i_state_id.to_int, i_prop_id.to_int, p_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetThemeSysSize, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # long
      def _get_theme_sys_size(h_theme, i_size_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetThemeSysSize, JNI.env, self.jni_id, h_theme.to_int, i_size_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetTimeFormatW, [:pointer, :long, :int32, :int32, :long, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, SYSTEMTIME, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int] }
      # @param Locale cast=(LCID)
      # @param dwFlags cast=(DWORD)
      # @param lpFormat cast=(LPWSTR)
      # @param lpTimeStr cast=(LPWSTR)
      def _get_time_format_w(locale, dw_flags, lp_time, lp_format, lp_time_str, cch_time)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetTimeFormatW, JNI.env, self.jni_id, locale.to_int, dw_flags.to_int, lp_time.jni_id, lp_format.jni_id, lp_time_str.jni_id, cch_time.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetTimeFormatA, [:pointer, :long, :int32, :int32, :long, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, SYSTEMTIME, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # @param Locale cast=(LCID)
      # @param dwFlags cast=(DWORD)
      # @param lpFormat cast=(LPSTR)
      # @param lpTimeStr cast=(LPSTR)
      def _get_time_format_a(locale, dw_flags, lp_time, lp_format, lp_time_str, cch_time)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetTimeFormatA, JNI.env, self.jni_id, locale.to_int, dw_flags.to_int, lp_time.jni_id, lp_format.jni_id, lp_time_str.jni_id, cch_time.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetUpdateRect, [:pointer, :long, :int32, :long, :int8], :int8
      typesig { [::Java::Int, RECT, ::Java::Boolean] }
      # @param hWnd cast=(HWND)
      # @param lpRect cast=(LPRECT)
      # @param bErase cast=(BOOL)
      # 
      # long
      def _get_update_rect(h_wnd, lp_rect, b_erase)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetUpdateRect, JNI.env, self.jni_id, h_wnd.to_int, lp_rect.jni_id, b_erase ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetUpdateRgn, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @param hWnd cast=(HWND)
      # @param hRgn cast=(HRGN)
      # 
      # long
      # long
      def _get_update_rgn(h_wnd, h_rgn, b_erase)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetUpdateRgn, JNI.env, self.jni_id, h_wnd.to_int, h_rgn.to_int, b_erase ? 1 : 0)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetVersionExW__L#{OSVERSIONINFOEXW.jni_name}_2".to_sym, [:pointer, :long, :long], :int8
      typesig { [OSVERSIONINFOEXW] }
      # @param lpVersionInfo cast=(LPOSVERSIONINFOW)
      def _get_version_ex_w(lp_version_info)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetVersionExW__L#{OSVERSIONINFOEXW.jni_name}_2".to_sym, JNI.env, self.jni_id, lp_version_info.jni_id) != 0
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetVersionExA__L#{OSVERSIONINFOEXA.jni_name}_2".to_sym, [:pointer, :long, :long], :int8
      typesig { [OSVERSIONINFOEXA] }
      # @param lpVersionInfo cast=(LPOSVERSIONINFOA)
      def _get_version_ex_a(lp_version_info)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetVersionExA__L#{OSVERSIONINFOEXA.jni_name}_2".to_sym, JNI.env, self.jni_id, lp_version_info.jni_id) != 0
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetVersionExW__L#{OSVERSIONINFOW.jni_name}_2".to_sym, [:pointer, :long, :long], :int8
      typesig { [OSVERSIONINFOW] }
      def _get_version_ex_w(lp_version_info)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetVersionExW__L#{OSVERSIONINFOW.jni_name}_2".to_sym, JNI.env, self.jni_id, lp_version_info.jni_id) != 0
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_GetVersionExA__L#{OSVERSIONINFOA.jni_name}_2".to_sym, [:pointer, :long, :long], :int8
      typesig { [OSVERSIONINFOA] }
      def _get_version_ex_a(lp_version_info)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_GetVersionExA__L#{OSVERSIONINFOA.jni_name}_2".to_sym, JNI.env, self.jni_id, lp_version_info.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindow, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _get_window(h_wnd, u_cmd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindow, JNI.env, self.jni_id, h_wnd.to_int, u_cmd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowLongW, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _get_window_long_w(h_wnd, n_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowLongW, JNI.env, self.jni_id, h_wnd.to_int, n_index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowLongA, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _get_window_long_a(h_wnd, n_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowLongA, JNI.env, self.jni_id, h_wnd.to_int, n_index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowLongPtrW, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _get_window_long_ptr_w(h_wnd, n_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowLongPtrW, JNI.env, self.jni_id, h_wnd.to_int, n_index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowLongPtrA, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _get_window_long_ptr_a(h_wnd, n_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowLongPtrA, JNI.env, self.jni_id, h_wnd.to_int, n_index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowDC, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _get_window_dc(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowDC, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowOrgEx, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, POINT] }
      # @param hdc cast=(HDC)
      # long
      def _get_window_org_ex(hdc, lp_point)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowOrgEx, JNI.env, self.jni_id, hdc.to_int, lp_point.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowPlacement, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, WINDOWPLACEMENT] }
      # @param hWnd cast=(HWND)
      # long
      def _get_window_placement(h_wnd, lpwndpl)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowPlacement, JNI.env, self.jni_id, h_wnd.to_int, lpwndpl.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowRect, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, RECT] }
      # @param hWnd cast=(HWND)
      # long
      def _get_window_rect(h_wnd, lp_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowRect, JNI.env, self.jni_id, h_wnd.to_int, lp_rect.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowRgn, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hRgn cast=(HRGN)
      # 
      # long
      # long
      def _get_window_rgn(h_wnd, h_rgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowRgn, JNI.env, self.jni_id, h_wnd.to_int, h_rgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowTextW, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param lpString cast=(LPWSTR)
      # 
      # long
      def _get_window_text_w(h_wnd, lp_string, n_max_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowTextW, JNI.env, self.jni_id, h_wnd.to_int, lp_string.jni_id, n_max_count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowTextA, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param lpString cast=(LPSTR)
      # 
      # long
      def _get_window_text_a(h_wnd, lp_string, n_max_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowTextA, JNI.env, self.jni_id, h_wnd.to_int, lp_string.jni_id, n_max_count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowTextLengthW, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _get_window_text_length_w(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowTextLengthW, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowTextLengthA, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _get_window_text_length_a(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowTextLengthA, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowTheme, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method flags=dynamic
      # @param hWnd cast=(HWND)
      # 
      # long
      # long
      def _get_window_theme(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowTheme, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWindowThreadProcessId, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # @param hWnd cast=(HWND)
      # @param lpdwProcessId cast=(LPDWORD)
      # 
      # long
      def _get_window_thread_process_id(h_wnd, lpdw_process_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWindowThreadProcessId, JNI.env, self.jni_id, h_wnd.to_int, lpdw_process_id.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GetWorldTransform, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Float)] }
      # @param hdc cast=(HDC)
      # @param lpXform cast=(LPXFORM)
      # 
      # long
      def _get_world_transform(hdc, lp_xform)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GetWorldTransform, JNI.env, self.jni_id, hdc.to_int, lp_xform.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GlobalAddAtomW, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Char)] }
      # @param lpString cast=(LPCWSTR)
      def _global_add_atom_w(lp_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GlobalAddAtomW, JNI.env, self.jni_id, lp_string.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GlobalAddAtomA, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # @param lpString cast=(LPCTSTR)
      def _global_add_atom_a(lp_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GlobalAddAtomA, JNI.env, self.jni_id, lp_string.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GlobalAlloc, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _global_alloc(u_flags, dw_bytes)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GlobalAlloc, JNI.env, self.jni_id, u_flags.to_int, dw_bytes.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GlobalFree, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hMem cast=(HANDLE)
      # long
      # long
      def _global_free(h_mem)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GlobalFree, JNI.env, self.jni_id, h_mem.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GlobalLock, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hMem cast=(HANDLE)
      # long
      # long
      def _global_lock(h_mem)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GlobalLock, JNI.env, self.jni_id, h_mem.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GlobalSize, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hMem cast=(HANDLE)
      # long
      def _global_size(h_mem)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GlobalSize, JNI.env, self.jni_id, h_mem.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GlobalUnlock, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hMem cast=(HANDLE)
      # long
      def _global_unlock(h_mem)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GlobalUnlock, JNI.env, self.jni_id, h_mem.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_GradientFill, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # @param hdc cast=(HDC)
      # @param pVertex cast=(PTRIVERTEX)
      # @param dwNumVertex cast=(ULONG)
      # @param pMesh cast=(PVOID)
      # @param dwNumMesh cast=(ULONG)
      # @param dwMode cast=(ULONG)
      # 
      # long
      # long
      # long
      def _gradient_fill(hdc, p_vertex, dw_num_vertex, p_mesh, dw_num_mesh, dw_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_GradientFill, JNI.env, self.jni_id, hdc.to_int, p_vertex.to_int, dw_num_vertex.to_int, p_mesh.to_int, dw_num_mesh.to_int, dw_mode.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_HIWORD, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _hiword(l)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_HIWORD, JNI.env, self.jni_id, l.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_HeapAlloc, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hHeap cast=(HANDLE)
      # long
      # long
      def _heap_alloc(h_heap, dw_flags, dw_bytes)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_HeapAlloc, JNI.env, self.jni_id, h_heap.to_int, dw_flags.to_int, dw_bytes.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_HeapFree, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hHeap cast=(HANDLE)
      # @param lpMem cast=(LPVOID)
      # 
      # long
      # long
      def _heap_free(h_heap, dw_flags, lp_mem)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_HeapFree, JNI.env, self.jni_id, h_heap.to_int, dw_flags.to_int, lp_mem.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_HeapValidate, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hHeap cast=(HANDLE)
      # @param lpMem cast=(LPCVOID)
      # 
      # long
      # long
      def _heap_validate(h_heap, dw_flags, lp_mem)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_HeapValidate, JNI.env, self.jni_id, h_heap.to_int, dw_flags.to_int, lp_mem.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_HideCaret, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _hide_caret(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_HideCaret, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_HitTestThemeBackground, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, ::Java::Int, POINT, Array.typed(::Java::Short)] }
      # @method flags=dynamic
      # @param ptTest flags=struct
      # 
      # long
      # long
      # long
      def _hit_test_theme_background(h_theme, hdc, i_part_id, i_state_id, dw_options, p_rect, hrgn, pt_test, pw_hit_test_code)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_HitTestThemeBackground, JNI.env, self.jni_id, h_theme.to_int, hdc.to_int, i_part_id.to_int, i_state_id.to_int, dw_options.to_int, p_rect.jni_id, hrgn.to_int, pt_test.jni_id, pw_hit_test_code.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IIDFromString, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Char), Array.typed(::Java::Byte)] }
      # @param lpsz cast=(LPOLESTR)
      # @param lpiid cast=(LPIID)
      def _iidfrom_string(lpsz, lpiid)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IIDFromString, JNI.env, self.jni_id, lpsz.jni_id, lpiid.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1Add, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param himl cast=(HIMAGELIST)
      # @param hbmImage cast=(HBITMAP)
      # @param hbmMask cast=(HBITMAP)
      # 
      # long
      # long
      # long
      def _image_list_add(himl, hbm_image, hbm_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1Add, JNI.env, self.jni_id, himl.to_int, hbm_image.to_int, hbm_mask.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1AddMasked, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param himl cast=(HIMAGELIST)
      # @param hbmImage cast=(HBITMAP)
      # @param crMask cast=(COLORREF)
      # 
      # long
      # long
      def _image_list_add_masked(himl, hbm_image, cr_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1AddMasked, JNI.env, self.jni_id, himl.to_int, hbm_image.to_int, cr_mask.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1BeginDrag, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param himl cast=(HIMAGELIST)
      # long
      def _image_list_begin_drag(himl, i_track, dx_hotspot, dy_hotspot)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1BeginDrag, JNI.env, self.jni_id, himl.to_int, i_track.to_int, dx_hotspot.to_int, dy_hotspot.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1Create, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _image_list_create(cx, cy, flags, c_initial, c_grow)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1Create, JNI.env, self.jni_id, cx.to_int, cy.to_int, flags.to_int, c_initial.to_int, c_grow.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1Destroy, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param himl cast=(HIMAGELIST)
      # long
      def _image_list_destroy(himl)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1Destroy, JNI.env, self.jni_id, himl.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1DragEnter, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hwndLock cast=(HWND)
      # long
      def _image_list_drag_enter(hwnd_lock, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1DragEnter, JNI.env, self.jni_id, hwnd_lock.to_int, x.to_int, y.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1DragLeave, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hwndLock cast=(HWND)
      # long
      def _image_list_drag_leave(hwnd_lock)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1DragLeave, JNI.env, self.jni_id, hwnd_lock.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1DragMove, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def _image_list_drag_move(x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1DragMove, JNI.env, self.jni_id, x.to_int, y.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1DragShowNolock, [:pointer, :long, :int8], :int8
      typesig { [::Java::Boolean] }
      # @param fShow cast=(BOOL)
      def _image_list_drag_show_nolock(f_show)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1DragShowNolock, JNI.env, self.jni_id, f_show ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1Draw, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param himl cast=(HIMAGELIST)
      # @param hdcDst cast=(HDC)
      # @param fStyle cast=(UINT)
      # 
      # long
      # long
      def _image_list_draw(himl, i, hdc_dst, x, y, f_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1Draw, JNI.env, self.jni_id, himl.to_int, i.to_int, hdc_dst.to_int, x.to_int, y.to_int, f_style.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1EndDrag, [:pointer, :long], :void
      typesig { [] }
      def _image_list_end_drag
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1EndDrag, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1GetDragImage, [:pointer, :long, :long, :long], :int32
      typesig { [POINT, POINT] }
      # @param ppt cast=(POINT *)
      # @param pptHotspot cast=(POINT *)
      # 
      # long
      def _image_list_get_drag_image(ppt, ppt_hotspot)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1GetDragImage, JNI.env, self.jni_id, ppt.jni_id, ppt_hotspot.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1GetIcon, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param himl cast=(HIMAGELIST)
      # long
      # long
      def _image_list_get_icon(himl, i, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1GetIcon, JNI.env, self.jni_id, himl.to_int, i.to_int, flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1GetIconSize, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @param himl cast=(HIMAGELIST)
      # @param cx cast=(int *)
      # @param cy cast=(int *)
      # 
      # long
      def _image_list_get_icon_size(himl, cx, cy)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1GetIconSize, JNI.env, self.jni_id, himl.to_int, cx.jni_id, cy.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1GetImageCount, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param himl cast=(HIMAGELIST)
      # long
      def _image_list_get_image_count(himl)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1GetImageCount, JNI.env, self.jni_id, himl.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1Remove, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param himl cast=(HIMAGELIST)
      # long
      def _image_list_remove(himl, i)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1Remove, JNI.env, self.jni_id, himl.to_int, i.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1Replace, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param himl cast=(HIMAGELIST)
      # @param hbmImage cast=(HBITMAP)
      # @param hbmMask cast=(HBITMAP)
      # 
      # long
      # long
      # long
      def _image_list_replace(himl, i, hbm_image, hbm_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1Replace, JNI.env, self.jni_id, himl.to_int, i.to_int, hbm_image.to_int, hbm_mask.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1ReplaceIcon, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param himl cast=(HIMAGELIST)
      # @param hicon cast=(HICON)
      # 
      # long
      # long
      def _image_list_replace_icon(himl, i, hicon)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1ReplaceIcon, JNI.env, self.jni_id, himl.to_int, i.to_int, hicon.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImageList_1SetIconSize, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param himl cast=(HIMAGELIST)
      # long
      def _image_list_set_icon_size(himl, cx, cy)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImageList_1SetIconSize, JNI.env, self.jni_id, himl.to_int, cx.to_int, cy.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmAssociateContext, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hIMC cast=(HIMC)
      # 
      # long
      # long
      # long
      def _imm_associate_context(h_wnd, h_imc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmAssociateContext, JNI.env, self.jni_id, h_wnd.to_int, h_imc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmCreateContext, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _imm_create_context
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmCreateContext, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmDestroyContext, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hIMC cast=(HIMC)
      # long
      def _imm_destroy_context(h_imc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmDestroyContext, JNI.env, self.jni_id, h_imc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmDisableTextFrameService, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @method flags=dynamic
      def _imm_disable_text_frame_service(id_thread)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmDisableTextFrameService, JNI.env, self.jni_id, id_thread.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionFontW, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, LOGFONTW] }
      # @param hIMC cast=(HIMC)
      # long
      def _imm_get_composition_font_w(h_imc, lplf)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionFontW, JNI.env, self.jni_id, h_imc.to_int, lplf.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionFontA, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, LOGFONTA] }
      # @param hIMC cast=(HIMC)
      # long
      def _imm_get_composition_font_a(h_imc, lplf)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionFontA, JNI.env, self.jni_id, h_imc.to_int, lplf.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionStringW__II_3CI, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param hIMC cast=(HIMC)
      # @param lpBuf cast=(LPWSTR)
      # 
      # long
      def _imm_get_composition_string_w(h_imc, dw_index, lp_buf, dw_buf_len)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionStringW__II_3CI, JNI.env, self.jni_id, h_imc.to_int, dw_index.to_int, lp_buf.jni_id, dw_buf_len.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionStringA__II_3BI, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param hIMC cast=(HIMC)
      # @param lpBuf cast=(LPSTR)
      # 
      # long
      def _imm_get_composition_string_a(h_imc, dw_index, lp_buf, dw_buf_len)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionStringA__II_3BI, JNI.env, self.jni_id, h_imc.to_int, dw_index.to_int, lp_buf.jni_id, dw_buf_len.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionStringW__II_3II, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # @param hIMC cast=(HIMC)
      # @param lpBuf cast=(LPWSTR)
      # 
      # long
      def _imm_get_composition_string_w(h_imc, dw_index, lp_buf, dw_buf_len)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionStringW__II_3II, JNI.env, self.jni_id, h_imc.to_int, dw_index.to_int, lp_buf.jni_id, dw_buf_len.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionStringA__II_3II, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # @param hIMC cast=(HIMC)
      # @param lpBuf cast=(LPWSTR)
      # 
      # long
      def _imm_get_composition_string_a(h_imc, dw_index, lp_buf, dw_buf_len)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionStringA__II_3II, JNI.env, self.jni_id, h_imc.to_int, dw_index.to_int, lp_buf.jni_id, dw_buf_len.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionStringW__II_3BI, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param hIMC cast=(HIMC)
      # @param lpBuf cast=(LPWSTR)
      # 
      # long
      def _imm_get_composition_string_w(h_imc, dw_index, lp_buf, dw_buf_len)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmGetCompositionStringW__II_3BI, JNI.env, self.jni_id, h_imc.to_int, dw_index.to_int, lp_buf.jni_id, dw_buf_len.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmGetContext, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _imm_get_context(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmGetContext, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmGetConversionStatus, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @param hIMC cast=(HIMC)
      # @param lpfdwConversion cast=(LPDWORD)
      # @param lpfdwSentence cast=(LPDWORD)
      # 
      # long
      def _imm_get_conversion_status(h_imc, lpfdw_conversion, lpfdw_sentence)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmGetConversionStatus, JNI.env, self.jni_id, h_imc.to_int, lpfdw_conversion.jni_id, lpfdw_sentence.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmGetDefaultIMEWnd, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _imm_get_default_imewnd(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmGetDefaultIMEWnd, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmGetOpenStatus, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hIMC cast=(HIMC)
      # long
      def _imm_get_open_status(h_imc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmGetOpenStatus, JNI.env, self.jni_id, h_imc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmNotifyIME, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hIMC cast=(HIMC)
      # long
      def _imm_notify_ime(h_imc, dw_action, dw_index, dw_value)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmNotifyIME, JNI.env, self.jni_id, h_imc.to_int, dw_action.to_int, dw_index.to_int, dw_value.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmReleaseContext, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hIMC cast=(HIMC)
      # 
      # long
      # long
      def _imm_release_context(h_wnd, h_imc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmReleaseContext, JNI.env, self.jni_id, h_wnd.to_int, h_imc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmSetCompositionFontW, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, LOGFONTW] }
      # @param hIMC cast=(HIMC)
      # long
      def _imm_set_composition_font_w(h_imc, lplf)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmSetCompositionFontW, JNI.env, self.jni_id, h_imc.to_int, lplf.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmSetCompositionFontA, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, LOGFONTA] }
      # @param hIMC cast=(HIMC)
      # long
      def _imm_set_composition_font_a(h_imc, lplf)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmSetCompositionFontA, JNI.env, self.jni_id, h_imc.to_int, lplf.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmSetCompositionWindow, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, COMPOSITIONFORM] }
      # @param hIMC cast=(HIMC)
      # long
      def _imm_set_composition_window(h_imc, lp_comp_form)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmSetCompositionWindow, JNI.env, self.jni_id, h_imc.to_int, lp_comp_form.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmSetCandidateWindow, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, CANDIDATEFORM] }
      # @param hIMC cast=(HIMC)
      # long
      def _imm_set_candidate_window(h_imc, lp_candidate)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmSetCandidateWindow, JNI.env, self.jni_id, h_imc.to_int, lp_candidate.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmSetConversionStatus, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hIMC cast=(HIMC)
      # long
      def _imm_set_conversion_status(h_imc, fdw_conversion, dw_sentence)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmSetConversionStatus, JNI.env, self.jni_id, h_imc.to_int, fdw_conversion.to_int, dw_sentence.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ImmSetOpenStatus, [:pointer, :long, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Boolean] }
      # @param hIMC cast=(HIMC)
      # long
      def _imm_set_open_status(h_imc, f_open)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ImmSetOpenStatus, JNI.env, self.jni_id, h_imc.to_int, f_open ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InitCommonControls, [:pointer, :long], :void
      typesig { [] }
      def _init_common_controls
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InitCommonControls, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InitCommonControlsEx, [:pointer, :long, :long], :int8
      typesig { [INITCOMMONCONTROLSEX] }
      def _init_common_controls_ex(lp_init_ctrls)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InitCommonControlsEx, JNI.env, self.jni_id, lp_init_ctrls.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InSendMessage, [:pointer, :long], :int8
      typesig { [] }
      def _in_send_message
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InSendMessage, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InsertMenuW, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # @param hMenu cast=(HMENU)
      # long
      # long
      def _insert_menu_w(h_menu, u_position, u_flags, u_idnew_item, lp_new_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InsertMenuW, JNI.env, self.jni_id, h_menu.to_int, u_position.to_int, u_flags.to_int, u_idnew_item.to_int, lp_new_item.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InsertMenuA, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # @param hMenu cast=(HMENU)
      # long
      # long
      def _insert_menu_a(h_menu, u_position, u_flags, u_idnew_item, lp_new_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InsertMenuA, JNI.env, self.jni_id, h_menu.to_int, u_position.to_int, u_flags.to_int, u_idnew_item.to_int, lp_new_item.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InsertMenuItemW, [:pointer, :long, :int32, :int32, :int8, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, MENUITEMINFO] }
      # @param hMenu cast=(HMENU)
      # @param lpmii cast=(LPMENUITEMINFOW)
      # 
      # long
      def _insert_menu_item_w(h_menu, u_item, f_by_position, lpmii)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InsertMenuItemW, JNI.env, self.jni_id, h_menu.to_int, u_item.to_int, f_by_position ? 1 : 0, lpmii.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InsertMenuItemA, [:pointer, :long, :int32, :int32, :int8, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, MENUITEMINFO] }
      # @param hMenu cast=(HMENU)
      # long
      def _insert_menu_item_a(h_menu, u_item, f_by_position, lpmii)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InsertMenuItemA, JNI.env, self.jni_id, h_menu.to_int, u_item.to_int, f_by_position ? 1 : 0, lpmii.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InternetGetCookieA, [:pointer, :long, :long, :long, :long, :long], :int8
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # @param lpszUrl cast=(LPCTSTR)
      # @param lpszCookieName cast=(LPCTSTR)
      # @param lpszCookieData cast=(LPSTR)
      # @param lpdwSize cast=(LPDWORD)
      def _internet_get_cookie_a(lpsz_url, lpsz_cookie_name, lpsz_cookie_data, lpdw_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InternetGetCookieA, JNI.env, self.jni_id, lpsz_url.jni_id, lpsz_cookie_name.jni_id, lpsz_cookie_data.jni_id, lpdw_size.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InternetGetCookieW, [:pointer, :long, :long, :long, :long, :long], :int8
      typesig { [Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # @param lpszUrl cast=(LPCWSTR)
      # @param lpszCookieName cast=(LPCWSTR)
      # @param lpszCookieData cast=(LPWSTR)
      # @param lpdwSize cast=(LPDWORD)
      def _internet_get_cookie_w(lpsz_url, lpsz_cookie_name, lpsz_cookie_data, lpdw_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InternetGetCookieW, JNI.env, self.jni_id, lpsz_url.jni_id, lpsz_cookie_name.jni_id, lpsz_cookie_data.jni_id, lpdw_size.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InternetSetCookieA, [:pointer, :long, :long, :long, :long], :int8
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # @param lpszUrl cast=(LPCTSTR)
      # @param lpszCookieName cast=(LPCTSTR)
      # @param lpszCookieData cast=(LPCTSTR)
      def _internet_set_cookie_a(lpsz_url, lpsz_cookie_name, lpsz_cookie_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InternetSetCookieA, JNI.env, self.jni_id, lpsz_url.jni_id, lpsz_cookie_name.jni_id, lpsz_cookie_data.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InternetSetCookieW, [:pointer, :long, :long, :long, :long], :int8
      typesig { [Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char)] }
      # @param lpszUrl cast=(LPCWSTR)
      # @param lpszCookieName cast=(LPCWSTR)
      # @param lpszCookieData cast=(LPCWSTR)
      def _internet_set_cookie_w(lpsz_url, lpsz_cookie_name, lpsz_cookie_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InternetSetCookieW, JNI.env, self.jni_id, lpsz_url.jni_id, lpsz_cookie_name.jni_id, lpsz_cookie_data.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InternetSetOption, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hInternet cast=(HINTERNET)
      # @param lpBuffer cast=(LPVOID)
      # 
      # long
      # long
      def _internet_set_option(h_internet, dw_option, lp_buffer, dw_buffer_length)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InternetSetOption, JNI.env, self.jni_id, h_internet.to_int, dw_option.to_int, lp_buffer.to_int, dw_buffer_length.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IntersectClipRect, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _intersect_clip_rect(hdc, n_left_rect, n_top_rect, n_right_rect, n_bottom_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IntersectClipRect, JNI.env, self.jni_id, hdc.to_int, n_left_rect.to_int, n_top_rect.to_int, n_right_rect.to_int, n_bottom_rect.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IntersectRect, [:pointer, :long, :long, :long, :long], :int8
      typesig { [RECT, RECT, RECT] }
      # @param lprcDst flags=no_in
      # @param lprcSrc1 flags=no_out
      # @param lprcSrc2 flags=no_out
      def _intersect_rect(lprc_dst, lprc_src1, lprc_src2)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IntersectRect, JNI.env, self.jni_id, lprc_dst.jni_id, lprc_src1.jni_id, lprc_src2.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InvalidateRect, [:pointer, :long, :int32, :long, :int8], :int8
      typesig { [::Java::Int, RECT, ::Java::Boolean] }
      # @param hWnd cast=(HWND)
      # long
      def _invalidate_rect(h_wnd, lp_rect, b_erase)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InvalidateRect, JNI.env, self.jni_id, h_wnd.to_int, lp_rect.jni_id, b_erase ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_InvalidateRgn, [:pointer, :long, :int32, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @param hWnd cast=(HWND)
      # @param hRgn cast=(HRGN)
      # 
      # long
      # long
      def _invalidate_rgn(h_wnd, h_rgn, b_erase)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_InvalidateRgn, JNI.env, self.jni_id, h_wnd.to_int, h_rgn.to_int, b_erase ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IsAppThemed, [:pointer, :long], :int8
      typesig { [] }
      # @method flags=dynamic
      def _is_app_themed
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IsAppThemed, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IsBadReadPtr, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param lp cast=(LPVOID)
      # @param ucb cast=(UINT_PTR)
      # 
      # long
      def _is_bad_read_ptr(lp, ucb)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IsBadReadPtr, JNI.env, self.jni_id, lp.to_int, ucb.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IsBadWritePtr, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param lp cast=(LPVOID)
      # @param ucb cast=(UINT_PTR)
      # 
      # long
      def _is_bad_write_ptr(lp, ucb)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IsBadWritePtr, JNI.env, self.jni_id, lp.to_int, ucb.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IsDBCSLeadByte, [:pointer, :long, :int8], :int8
      typesig { [::Java::Byte] }
      def _is_dbcslead_byte(test_char)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IsDBCSLeadByte, JNI.env, self.jni_id, test_char.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IsHungAppWindow, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @method flags=dynamic
      # @param hWnd cast=(HWND)
      # 
      # long
      def _is_hung_app_window(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IsHungAppWindow, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IsIconic, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _is_iconic(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IsIconic, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IsPPC, [:pointer, :long], :int8
      typesig { [] }
      # @method flags=no_gen
      def _is_ppc
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IsPPC, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IsSP, [:pointer, :long], :int8
      typesig { [] }
      # @method flags=no_gen
      def _is_sp
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IsSP, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IsWindowEnabled, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _is_window_enabled(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IsWindowEnabled, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IsWindowVisible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _is_window_visible(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IsWindowVisible, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_IsZoomed, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _is_zoomed(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_IsZoomed, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_KillTimer, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _kill_timer(h_wnd, u_idevent)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_KillTimer, JNI.env, self.jni_id, h_wnd.to_int, u_idevent.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LineTo, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _line_to(hdc, x1, x2)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LineTo, JNI.env, self.jni_id, hdc.to_int, x1.to_int, x2.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadBitmapW, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hInstance cast=(HINSTANCE)
      # @param lpBitmapName cast=(LPWSTR)
      # 
      # long
      # long
      # long
      def _load_bitmap_w(h_instance, lp_bitmap_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadBitmapW, JNI.env, self.jni_id, h_instance.to_int, lp_bitmap_name.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadBitmapA, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hInstance cast=(HINSTANCE)
      # @param lpBitmapName cast=(LPSTR)
      # 
      # long
      # long
      # long
      def _load_bitmap_a(h_instance, lp_bitmap_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadBitmapA, JNI.env, self.jni_id, h_instance.to_int, lp_bitmap_name.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadCursorW, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hInstance cast=(HINSTANCE)
      # @param lpCursorName cast=(LPWSTR)
      # 
      # long
      # long
      # long
      def _load_cursor_w(h_instance, lp_cursor_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadCursorW, JNI.env, self.jni_id, h_instance.to_int, lp_cursor_name.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadCursorA, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hInstance cast=(HINSTANCE)
      # @param lpCursorName cast=(LPSTR)
      # 
      # long
      # long
      # long
      def _load_cursor_a(h_instance, lp_cursor_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadCursorA, JNI.env, self.jni_id, h_instance.to_int, lp_cursor_name.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadIconW, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hInstance cast=(HINSTANCE)
      # @param lpIconName cast=(LPWSTR)
      # 
      # long
      # long
      # long
      def _load_icon_w(h_instance, lp_icon_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadIconW, JNI.env, self.jni_id, h_instance.to_int, lp_icon_name.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadIconA, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hInstance cast=(HINSTANCE)
      # @param lpIconName cast=(LPSTR)
      # 
      # long
      # long
      # long
      def _load_icon_a(h_instance, lp_icon_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadIconA, JNI.env, self.jni_id, h_instance.to_int, lp_icon_name.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadImageW__I_3CIIII, [:pointer, :long, :int32, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hinst cast=(HINSTANCE)
      # @param lpszName cast=(LPWSTR)
      # 
      # long
      # long
      def _load_image_w(hinst, lpsz_name, u_type, cx_desired, cy_desired, fu_load)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadImageW__I_3CIIII, JNI.env, self.jni_id, hinst.to_int, lpsz_name.jni_id, u_type.to_int, cx_desired.to_int, cy_desired.to_int, fu_load.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadImageA__I_3BIIII, [:pointer, :long, :int32, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hinst cast=(HINSTANCE)
      # @param lpszName cast=(LPSTR)
      # 
      # long
      # long
      def _load_image_a(hinst, lpsz_name, u_type, cx_desired, cy_desired, fu_load)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadImageA__I_3BIIII, JNI.env, self.jni_id, hinst.to_int, lpsz_name.jni_id, u_type.to_int, cx_desired.to_int, cy_desired.to_int, fu_load.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadImageW__IIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hinst cast=(HINSTANCE)
      # @param lpszName cast=(LPWSTR)
      # 
      # long
      # long
      # long
      def _load_image_w(hinst, lpsz_name, u_type, cx_desired, cy_desired, fu_load)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadImageW__IIIIII, JNI.env, self.jni_id, hinst.to_int, lpsz_name.to_int, u_type.to_int, cx_desired.to_int, cy_desired.to_int, fu_load.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadImageA__IIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hinst cast=(HINSTANCE)
      # @param lpszName cast=(LPSTR)
      # 
      # long
      # long
      # long
      def _load_image_a(hinst, lpsz_name, u_type, cx_desired, cy_desired, fu_load)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadImageA__IIIIII, JNI.env, self.jni_id, hinst.to_int, lpsz_name.to_int, u_type.to_int, cx_desired.to_int, cy_desired.to_int, fu_load.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadStringW, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param hinst cast=(HINSTANCE)
      # @param lpBuffer cast=(LPWSTR)
      # 
      # long
      def _load_string_w(hinst, u_id, lp_buffer, n_buffer_max)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadStringW, JNI.env, self.jni_id, hinst.to_int, u_id.to_int, lp_buffer.jni_id, n_buffer_max.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadStringA, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param hinst cast=(HINSTANCE)
      # @param lpBuffer cast=(LPSTR)
      # 
      # long
      def _load_string_a(hinst, u_id, lp_buffer, n_buffer_max)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadStringA, JNI.env, self.jni_id, hinst.to_int, u_id.to_int, lp_buffer.jni_id, n_buffer_max.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadLibraryW, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Char)] }
      # @param lpLibFileName cast=(LPWSTR)
      # long
      def _load_library_w(lp_lib_file_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadLibraryW, JNI.env, self.jni_id, lp_lib_file_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LoadLibraryA, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # @param lpLibFileName cast=(LPSTR)
      # long
      def _load_library_a(lp_lib_file_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LoadLibraryA, JNI.env, self.jni_id, lp_lib_file_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LocalFree, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hMem cast=(HLOCAL)
      # long
      # long
      def _local_free(h_mem)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LocalFree, JNI.env, self.jni_id, h_mem.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LockWindowUpdate, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWndLock cast=(HWND)
      # long
      def _lock_window_update(h_wnd_lock)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LockWindowUpdate, JNI.env, self.jni_id, h_wnd_lock.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LOWORD, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _loword(l)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LOWORD, JNI.env, self.jni_id, l.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_LPtoDP, [:pointer, :long, :int32, :long, :int32], :int8
      typesig { [::Java::Int, POINT, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _lpto_dp(hdc, lp_points, n_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_LPtoDP, JNI.env, self.jni_id, hdc.to_int, lp_points.jni_id, n_count.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MAKEWORD, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _makeword(l, h)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MAKEWORD, JNI.env, self.jni_id, l.to_int, h.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MAKEWPARAM, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _makewparam(l, h)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MAKEWPARAM, JNI.env, self.jni_id, l.to_int, h.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MAKELPARAM, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _makelparam(l, h)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MAKELPARAM, JNI.env, self.jni_id, l.to_int, h.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MAKELRESULT, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _makelresult(l, h)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MAKELRESULT, JNI.env, self.jni_id, l.to_int, h.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MapVirtualKeyW, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _map_virtual_key_w(u_code, u_map_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MapVirtualKeyW, JNI.env, self.jni_id, u_code.to_int, u_map_type.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MapVirtualKeyA, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _map_virtual_key_a(u_code, u_map_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MapVirtualKeyA, JNI.env, self.jni_id, u_code.to_int, u_map_type.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MapWindowPoints__IIL#{POINT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, POINT, ::Java::Int] }
      # @param hWndFrom cast=(HWND)
      # @param hWndTo cast=(HWND)
      # @param lpPoints cast=(LPPOINT)
      # 
      # long
      # long
      def _map_window_points(h_wnd_from, h_wnd_to, lp_points, c_points)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MapWindowPoints__IIL#{POINT.jni_name}_2I".to_sym, JNI.env, self.jni_id, h_wnd_from.to_int, h_wnd_to.to_int, lp_points.jni_id, c_points.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MapWindowPoints__IIL#{RECT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, RECT, ::Java::Int] }
      # @param hWndFrom cast=(HWND)
      # @param hWndTo cast=(HWND)
      # @param lpPoints cast=(LPPOINT)
      # 
      # long
      # long
      def _map_window_points(h_wnd_from, h_wnd_to, lp_points, c_points)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MapWindowPoints__IIL#{RECT.jni_name}_2I".to_sym, JNI.env, self.jni_id, h_wnd_from.to_int, h_wnd_to.to_int, lp_points.jni_id, c_points.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MCIWndRegisterClass, [:pointer, :long], :int8
      typesig { [] }
      # @method flags=dynamic
      def _mciwnd_register_class
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MCIWndRegisterClass, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MessageBeep, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _message_beep(u_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MessageBeep, JNI.env, self.jni_id, u_type.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MessageBoxW, [:pointer, :long, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param lpText cast=(LPWSTR)
      # @param lpCaption cast=(LPWSTR)
      # 
      # long
      def _message_box_w(h_wnd, lp_text, lp_caption, u_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MessageBoxW, JNI.env, self.jni_id, h_wnd.to_int, lp_text.jni_id, lp_caption.jni_id, u_type.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MessageBoxA, [:pointer, :long, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param lpText cast=(LPSTR)
      # @param lpCaption cast=(LPSTR)
      # 
      # long
      def _message_box_a(h_wnd, lp_text, lp_caption, u_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MessageBoxA, JNI.env, self.jni_id, h_wnd.to_int, lp_text.jni_id, lp_caption.jni_id, u_type.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ModifyWorldTransform, [:pointer, :long, :int32, :long, :int32], :int8
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param lpXform cast=(XFORM *)
      # 
      # long
      def _modify_world_transform(hdc, lp_xform, i_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ModifyWorldTransform, JNI.env, self.jni_id, hdc.to_int, lp_xform.jni_id, i_mode.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MonitorFromWindow, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # long
      # long
      def _monitor_from_window(hwnd, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MonitorFromWindow, JNI.env, self.jni_id, hwnd.to_int, dw_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3CII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Char), ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in critical
      # @param SourcePtr cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3CII, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3BII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in critical
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3BII, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3BL#{ACCEL.jni_name}_2I".to_sym, [:pointer, :long, :long, :long, :int32], :void
      typesig { [Array.typed(::Java::Byte), ACCEL, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in critical
      # @param Source cast=(CONST VOID *),flags=no_out
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3BL#{ACCEL.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.jni_id, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3BL#{BITMAPINFOHEADER.jni_name}_2I".to_sym, [:pointer, :long, :long, :long, :int32], :void
      typesig { [Array.typed(::Java::Byte), BITMAPINFOHEADER, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in critical
      # @param Source cast=(CONST VOID *),flags=no_out
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3BL#{BITMAPINFOHEADER.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.jni_id, source.jni_id, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3III, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in critical
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3III, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3JII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Long), ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in critical
      # @param SourcePtr cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3JII, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3XdoubleXII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Double), ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in critical
      # @param SourcePtr cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3XdoubleXII, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3XfloatXII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Float), ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in critical
      # @param SourcePtr cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3XfloatXII, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3SII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Short), ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in critical
      # @param SourcePtr cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory___3SII, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3BI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out critical
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3BI, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3CI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out critical
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3CI, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3II, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out critical
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3II, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory__III, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *)
      # 
      # long
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory__III, JNI.env, self.jni_id, destination.to_int, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{DEVMODEW.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, DEVMODEW, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{DEVMODEW.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{DEVMODEA.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, DEVMODEA, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{DEVMODEA.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{DOCHOSTUIINFO.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, DOCHOSTUIINFO, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{DOCHOSTUIINFO.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{GRADIENT_RECT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GRADIENT_RECT, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{GRADIENT_RECT.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{LOGFONTW.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, LOGFONTW, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{LOGFONTW.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{LOGFONTA.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, LOGFONTA, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{LOGFONTA.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{MEASUREITEMSTRUCT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, MEASUREITEMSTRUCT, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{MEASUREITEMSTRUCT.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{MINMAXINFO.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, MINMAXINFO, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{MINMAXINFO.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{MSG.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, MSG, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{MSG.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{UDACCEL.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, UDACCEL, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{UDACCEL.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMTTDISPINFOW.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NMTTDISPINFOW, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMTTDISPINFOW.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMTTDISPINFOA.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NMTTDISPINFOA, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMTTDISPINFOA.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{OPENFILENAME.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, OPENFILENAME, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{OPENFILENAME.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{RECT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, RECT, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{RECT.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{TRIVERTEX.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, TRIVERTEX, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{TRIVERTEX.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{WINDOWPOS.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, WINDOWPOS, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{WINDOWPOS.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{BITMAPINFOHEADER.jni_name}_2_3BI".to_sym, [:pointer, :long, :long, :long, :int32], :void
      typesig { [BITMAPINFOHEADER, Array.typed(::Java::Byte), ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *),flags=no_out critical
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{BITMAPINFOHEADER.jni_name}_2_3BI".to_sym, JNI.env, self.jni_id, destination.jni_id, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{BITMAPINFOHEADER.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [BITMAPINFOHEADER, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *),flags=no_out critical
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{BITMAPINFOHEADER.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{DEVMODEW.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [DEVMODEW, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{DEVMODEW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{DEVMODEA.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [DEVMODEA, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{DEVMODEA.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{DOCHOSTUIINFO.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [DOCHOSTUIINFO, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{DOCHOSTUIINFO.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{DRAWITEMSTRUCT.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [DRAWITEMSTRUCT, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{DRAWITEMSTRUCT.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{EXTLOGPEN.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [EXTLOGPEN, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{EXTLOGPEN.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{HDITEM.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [HDITEM, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{HDITEM.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{HELPINFO.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [HELPINFO, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{HELPINFO.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{LOGFONTW.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [LOGFONTW, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{LOGFONTW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{LOGFONTA.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [LOGFONTA, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{LOGFONTA.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{MEASUREITEMSTRUCT.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [MEASUREITEMSTRUCT, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{MEASUREITEMSTRUCT.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{MINMAXINFO.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [MINMAXINFO, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{MINMAXINFO.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{OFNOTIFY.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [OFNOTIFY, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{OFNOTIFY.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{OPENFILENAME.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [OPENFILENAME, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{OPENFILENAME.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{POINT.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [POINT, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{POINT.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{POINT.jni_name}_2_3JI".to_sym, [:pointer, :long, :long, :long, :int32], :void
      typesig { [POINT, Array.typed(::Java::Long), ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *),flags=no_out critical
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{POINT.jni_name}_2_3JI".to_sym, JNI.env, self.jni_id, destination.jni_id, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMHDR.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMHDR, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMHDR.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMRGINFO.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMRGINFO, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMRGINFO.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMCUSTOMDRAW.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMCUSTOMDRAW, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMCUSTOMDRAW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLVCUSTOMDRAW.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMLVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLVCUSTOMDRAW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTBHOTITEM.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMTBHOTITEM, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTBHOTITEM.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTREEVIEW.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMTREEVIEW, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTREEVIEW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTVCUSTOMDRAW.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMTVCUSTOMDRAW, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTVCUSTOMDRAW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTVITEMCHANGE.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMTVITEMCHANGE, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTVITEMCHANGE.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMUPDOWN.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMUPDOWN, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMUPDOWN.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMLVCUSTOMDRAW.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NMLVCUSTOMDRAW, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMLVCUSTOMDRAW.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMTVCUSTOMDRAW.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NMTVCUSTOMDRAW, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMTVCUSTOMDRAW.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMTTCUSTOMDRAW.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NMTTCUSTOMDRAW, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMTTCUSTOMDRAW.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMLVDISPINFO.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NMLVDISPINFO, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMLVDISPINFO.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMTVDISPINFO.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NMTVDISPINFO, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{NMTVDISPINFO.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLVDISPINFO.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMLVDISPINFO, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLVDISPINFO.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTVDISPINFO.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMTVDISPINFO, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTVDISPINFO.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLVFINDITEM.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMLVFINDITEM, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLVFINDITEM.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLVODSTATECHANGE.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMLVODSTATECHANGE, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLVODSTATECHANGE.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMHEADER.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMHEADER, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMHEADER.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLINK.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMLINK, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLINK.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLISTVIEW.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMLISTVIEW, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMLISTVIEW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMREBARCHILDSIZE.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMREBARCHILDSIZE, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMREBARCHILDSIZE.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMREBARCHEVRON.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMREBARCHEVRON, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMREBARCHEVRON.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTOOLBAR.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMTOOLBAR, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTOOLBAR.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTTCUSTOMDRAW.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMTTCUSTOMDRAW, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTTCUSTOMDRAW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTTDISPINFOW.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMTTDISPINFOW, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTTDISPINFOW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTTDISPINFOA.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NMTTDISPINFOA, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTTDISPINFOA.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{RECT.jni_name}_2_3II".to_sym, [:pointer, :long, :long, :long, :int32], :void
      typesig { [RECT, Array.typed(::Java::Int), ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{RECT.jni_name}_2_3II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{SHDRAGIMAGE.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [SHDRAGIMAGE, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{SHDRAGIMAGE.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{EMR.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [EMR, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{EMR.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{EMREXTCREATEFONTINDIRECTW.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [EMREXTCREATEFONTINDIRECTW, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{EMREXTCREATEFONTINDIRECTW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{SHDRAGIMAGE.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, SHDRAGIMAGE, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{SHDRAGIMAGE.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{TEXTMETRICW.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [TEXTMETRICW, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{TEXTMETRICW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{TEXTMETRICA.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [TEXTMETRICA, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{TEXTMETRICA.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{TVITEM.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [TVITEM, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{TVITEM.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{WINDOWPOS.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [WINDOWPOS, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{WINDOWPOS.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{MSG.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [MSG, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{MSG.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{UDACCEL.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [UDACCEL, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param Source cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{UDACCEL.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{DROPFILES.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, DROPFILES, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{DROPFILES.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3XdoubleXI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Double), ::Java::Int] }
      # @param DestinationPtr cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out critical
      # 
      # long
      def _move_memory(destination_ptr, source, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3XdoubleXI, JNI.env, self.jni_id, destination_ptr.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3XfloatXI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Int] }
      # @param DestinationPtr cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out critical
      # 
      # long
      def _move_memory(destination_ptr, source, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3XfloatXI, JNI.env, self.jni_id, destination_ptr.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3JI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Long), ::Java::Int] }
      # @param DestinationPtr cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out critical
      # 
      # long
      def _move_memory(destination_ptr, source, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3JI, JNI.env, self.jni_id, destination_ptr.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3SI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Short), ::Java::Int] }
      # @param DestinationPtr cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out critical
      # 
      # long
      def _move_memory(destination_ptr, source, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveMemory__I_3SI, JNI.env, self.jni_id, destination_ptr.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{SCRIPT_ITEM.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [SCRIPT_ITEM, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param SourcePtr cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{SCRIPT_ITEM.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{SCRIPT_LOGATTR.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [SCRIPT_LOGATTR, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param SourcePtr cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{SCRIPT_LOGATTR.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{SCRIPT_PROPERTIES.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [SCRIPT_PROPERTIES, ::Java::Int, ::Java::Int] }
      # @param Destination cast=(PVOID),flags=no_in
      # @param SourcePtr cast=(CONST VOID *)
      # 
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{SCRIPT_PROPERTIES.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{KEYBDINPUT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, KEYBDINPUT, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{KEYBDINPUT.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{MOUSEINPUT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, MOUSEINPUT, ::Java::Int] }
      # @param Destination cast=(PVOID)
      # @param Source cast=(CONST VOID *),flags=no_out
      # 
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__IL#{MOUSEINPUT.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MoveToEx, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param lPoint cast=(LPPOINT)
      # 
      # long
      # long
      def _move_to_ex(hdc, x1, x2, l_point)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MoveToEx, JNI.env, self.jni_id, hdc.to_int, x1.to_int, x2.to_int, l_point.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MsgWaitForMultipleObjectsEx, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param nCount cast=(DWORD)
      # @param pHandles cast=(LPHANDLE)
      # @param dwMilliseconds cast=(DWORD)
      # @param dwWakeMask cast=(DWORD)
      # @param dwFlags cast=(DWORD)
      # 
      # long
      def _msg_wait_for_multiple_objects_ex(n_count, p_handles, dw_milliseconds, dw_wake_mask, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MsgWaitForMultipleObjectsEx, JNI.env, self.jni_id, n_count.to_int, p_handles.to_int, dw_milliseconds.to_int, dw_wake_mask.to_int, dw_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MultiByteToWideChar__II_3BI_3CI, [:pointer, :long, :int32, :int32, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param lpMultiByteStr cast=(LPCSTR),flags=no_out critical
      # @param lpWideCharStr cast=(LPWSTR),flags=no_in critical
      def _multi_byte_to_wide_char(code_page, dw_flags, lp_multi_byte_str, cch_multi_byte, lp_wide_char_str, cch_wide_char)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MultiByteToWideChar__II_3BI_3CI, JNI.env, self.jni_id, code_page.to_int, dw_flags.to_int, lp_multi_byte_str.jni_id, cch_multi_byte.to_int, lp_wide_char_str.jni_id, cch_wide_char.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_MultiByteToWideChar__IIII_3CI, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param lpMultiByteStr cast=(LPCSTR)
      # @param lpWideCharStr cast=(LPWSTR),flags=no_in critical
      # 
      # long
      def _multi_byte_to_wide_char(code_page, dw_flags, lp_multi_byte_str, cch_multi_byte, lp_wide_char_str, cch_wide_char)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_MultiByteToWideChar__IIII_3CI, JNI.env, self.jni_id, code_page.to_int, dw_flags.to_int, lp_multi_byte_str.to_int, cch_multi_byte.to_int, lp_wide_char_str.jni_id, cch_wide_char.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_NotifyWinEvent, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # @param event cast=(DWORD)
      # @param hwnd cast=(HWND)
      # @param idObject cast=(LONG)
      # @param idChild cast=(LONG)
      # 
      # long
      def _notify_win_event(event, hwnd, id_object, id_child)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_NotifyWinEvent, JNI.env, self.jni_id, event.to_int, hwnd.to_int, id_object.to_int, id_child.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OffsetRect, [:pointer, :long, :long, :int32, :int32], :int8
      typesig { [RECT, ::Java::Int, ::Java::Int] }
      def _offset_rect(lprc, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OffsetRect, JNI.env, self.jni_id, lprc.jni_id, dx.to_int, dy.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OffsetRgn, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hrgn cast=(HRGN)
      # long
      def _offset_rgn(hrgn, n_xoffset, n_yoffset)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OffsetRgn, JNI.env, self.jni_id, hrgn.to_int, n_xoffset.to_int, n_yoffset.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OleInitialize, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param pvReserved cast=(LPVOID)
      # long
      def _ole_initialize(pv_reserved)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OleInitialize, JNI.env, self.jni_id, pv_reserved.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OleUninitialize, [:pointer, :long], :void
      typesig { [] }
      def _ole_uninitialize
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OleUninitialize, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OpenClipboard, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWndNewOwner cast=(HWND)
      # long
      def _open_clipboard(h_wnd_new_owner)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OpenClipboard, JNI.env, self.jni_id, h_wnd_new_owner.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_OpenThemeData, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char)] }
      # @method flags=dynamic
      # @param hwnd cast=(HWND)
      # @param pszClassList cast=(LPCWSTR)
      # 
      # long
      # long
      def _open_theme_data(hwnd, psz_class_list)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_OpenThemeData, JNI.env, self.jni_id, hwnd.to_int, psz_class_list.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PatBlt, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _pat_blt(hdc, x1, x2, w, h, rop)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PatBlt, JNI.env, self.jni_id, hdc.to_int, x1.to_int, x2.to_int, w.to_int, h.to_int, rop.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PeekMessageW, [:pointer, :long, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [MSG, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _peek_message_w(lp_msg, h_wnd, w_msg_filter_min, w_msg_filter_max, w_remove_msg)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PeekMessageW, JNI.env, self.jni_id, lp_msg.jni_id, h_wnd.to_int, w_msg_filter_min.to_int, w_msg_filter_max.to_int, w_remove_msg.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PeekMessageA, [:pointer, :long, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [MSG, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _peek_message_a(lp_msg, h_wnd, w_msg_filter_min, w_msg_filter_max, w_remove_msg)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PeekMessageA, JNI.env, self.jni_id, lp_msg.jni_id, h_wnd.to_int, w_msg_filter_min.to_int, w_msg_filter_max.to_int, w_remove_msg.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_Pie, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _pie(hdc, n_left_rect, n_top_rect, n_right_rect, n_bottom_rect, n_xstart_arc, n_ystart_arc, n_xend_arc, n_yend_arc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_Pie, JNI.env, self.jni_id, hdc.to_int, n_left_rect.to_int, n_top_rect.to_int, n_right_rect.to_int, n_bottom_rect.to_int, n_xstart_arc.to_int, n_ystart_arc.to_int, n_xend_arc.to_int, n_yend_arc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_POINTSTOPOINT, [:pointer, :long, :long, :int32], :void
      typesig { [POINT, ::Java::Int] }
      # @param pt flags=struct
      # long
      def _pointstopoint(pt, pts)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_POINTSTOPOINT, JNI.env, self.jni_id, pt.jni_id, pts.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_Polygon, [:pointer, :long, :int32, :long, :int32], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param points cast=(CONST POINT *),flags=no_out critical
      # 
      # long
      def _polygon(hdc, points, n_points)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_Polygon, JNI.env, self.jni_id, hdc.to_int, points.jni_id, n_points.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_Polyline, [:pointer, :long, :int32, :long, :int32], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param points cast=(CONST POINT *),flags=no_out critical
      # 
      # long
      def _polyline(hdc, points, n_points)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_Polyline, JNI.env, self.jni_id, hdc.to_int, points.jni_id, n_points.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PostMessageW, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _post_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PostMessageW, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PostMessageA, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _post_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PostMessageA, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PostThreadMessageW, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      def _post_thread_message_w(id_thread, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PostThreadMessageW, JNI.env, self.jni_id, id_thread.to_int, msg.to_int, w_param.to_int, l_param.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PostThreadMessageA, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      def _post_thread_message_a(id_thread, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PostThreadMessageA, JNI.env, self.jni_id, id_thread.to_int, msg.to_int, w_param.to_int, l_param.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PRIMARYLANGID, [:pointer, :long, :int32], :int16
      typesig { [::Java::Int] }
      def _primarylangid(lgid)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PRIMARYLANGID, JNI.env, self.jni_id, lgid.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PrintDlgW, [:pointer, :long, :long], :int8
      typesig { [PRINTDLG] }
      # @param lppd cast=(LPPRINTDLGW)
      def _print_dlg_w(lppd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PrintDlgW, JNI.env, self.jni_id, lppd.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PrintDlgA, [:pointer, :long, :long], :int8
      typesig { [PRINTDLG] }
      def _print_dlg_a(lppd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PrintDlgA, JNI.env, self.jni_id, lppd.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PrintWindow, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # @param hwnd cast=(HWND)
      # @param hdcBlt cast=(HDC)
      # 
      # long
      # long
      def _print_window(hwnd, hdc_blt, n_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PrintWindow, JNI.env, self.jni_id, hwnd.to_int, hdc_blt.to_int, n_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PtInRect, [:pointer, :long, :long, :long], :int8
      typesig { [RECT, POINT] }
      # @param rect flags=no_out
      # @param pt flags=no_out struct
      def _pt_in_rect(rect, pt)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PtInRect, JNI.env, self.jni_id, rect.jni_id, pt.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_PtInRegion, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hrgn cast=(HRGN)
      # long
      def _pt_in_region(hrgn, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_PtInRegion, JNI.env, self.jni_id, hrgn.to_int, x.to_int, y.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RealizePalette, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hDC cast=(HDC)
      # long
      def _realize_palette(h_dc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RealizePalette, JNI.env, self.jni_id, h_dc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_Rectangle, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _rectangle(hdc, n_left_rect, n_top_rect, n_right_rect, n_bottom_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_Rectangle, JNI.env, self.jni_id, hdc.to_int, n_left_rect.to_int, n_top_rect.to_int, n_right_rect.to_int, n_bottom_rect.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RectInRegion, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, RECT] }
      # @param hrgn cast=(HRGN)
      # @param lprc flags=no_out
      # 
      # long
      def _rect_in_region(hrgn, lprc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RectInRegion, JNI.env, self.jni_id, hrgn.to_int, lprc.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RedrawWindow, [:pointer, :long, :int32, :long, :int32, :int32], :int8
      typesig { [::Java::Int, RECT, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hrgnUpdate cast=(HRGN)
      # 
      # long
      # long
      def _redraw_window(h_wnd, lprc_update, hrgn_update, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RedrawWindow, JNI.env, self.jni_id, h_wnd.to_int, lprc_update.jni_id, hrgn_update.to_int, flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegCloseKey, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hKey cast=(HKEY)
      # long
      def _reg_close_key(h_key)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegCloseKey, JNI.env, self.jni_id, h_key.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegEnumKeyExW, [:pointer, :long, :int32, :int32, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Char), Array.typed(::Java::Int), FILETIME] }
      # @param hKey cast=(HKEY)
      # @param lpName cast=(LPWSTR)
      # @param lpcName cast=(LPDWORD)
      # @param lpReserved cast=(LPDWORD)
      # @param lpClass cast=(LPWSTR)
      # @param lpcClass cast=(LPDWORD)
      # 
      # long
      def _reg_enum_key_ex_w(h_key, dw_index, lp_name, lpc_name, lp_reserved, lp_class, lpc_class, lpft_last_write_time)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegEnumKeyExW, JNI.env, self.jni_id, h_key.to_int, dw_index.to_int, lp_name.jni_id, lpc_name.jni_id, lp_reserved.jni_id, lp_class.jni_id, lpc_class.jni_id, lpft_last_write_time.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegEnumKeyExA, [:pointer, :long, :int32, :int32, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Byte), Array.typed(::Java::Int), FILETIME] }
      # @param hKey cast=(HKEY)
      # @param lpName cast=(LPSTR)
      # @param lpcName cast=(LPDWORD)
      # @param lpReserved cast=(LPDWORD)
      # @param lpClass cast=(LPSTR)
      # @param lpcClass cast=(LPDWORD)
      # 
      # long
      def _reg_enum_key_ex_a(h_key, dw_index, lp_name, lpc_name, lp_reserved, lp_class, lpc_class, lpft_last_write_time)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegEnumKeyExA, JNI.env, self.jni_id, h_key.to_int, dw_index.to_int, lp_name.jni_id, lpc_name.jni_id, lp_reserved.jni_id, lp_class.jni_id, lpc_class.jni_id, lpft_last_write_time.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegisterClassW, [:pointer, :long, :long], :int32
      typesig { [WNDCLASS] }
      # @param lpWndClass cast=(LPWNDCLASSW)
      def _register_class_w(lp_wnd_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegisterClassW, JNI.env, self.jni_id, lp_wnd_class.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegisterClassA, [:pointer, :long, :long], :int32
      typesig { [WNDCLASS] }
      def _register_class_a(lp_wnd_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegisterClassA, JNI.env, self.jni_id, lp_wnd_class.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegisterWindowMessageW, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Char)] }
      # @param lpString cast=(LPWSTR)
      def _register_window_message_w(lp_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegisterWindowMessageW, JNI.env, self.jni_id, lp_string.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegisterWindowMessageA, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # @param lpString cast=(LPTSTR)
      def _register_window_message_a(lp_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegisterWindowMessageA, JNI.env, self.jni_id, lp_string.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegisterClipboardFormatA, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # @param lpszFormat cast=(LPTSTR)
      def _register_clipboard_format_a(lpsz_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegisterClipboardFormatA, JNI.env, self.jni_id, lpsz_format.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegisterClipboardFormatW, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Char)] }
      # @param lpszFormat cast=(LPWSTR)
      def _register_clipboard_format_w(lpsz_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegisterClipboardFormatW, JNI.env, self.jni_id, lpsz_format.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegOpenKeyExW, [:pointer, :long, :int32, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hKey cast=(HKEY)
      # @param lpSubKey cast=(LPWSTR)
      # @param phkResult cast=(PHKEY)
      # 
      # long
      # long
      def _reg_open_key_ex_w(h_key, lp_sub_key, ul_options, sam_desired, phk_result)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegOpenKeyExW, JNI.env, self.jni_id, h_key.to_int, lp_sub_key.jni_id, ul_options.to_int, sam_desired.to_int, phk_result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegOpenKeyExA, [:pointer, :long, :int32, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hKey cast=(HKEY)
      # @param lpSubKey cast=(LPSTR)
      # @param phkResult cast=(PHKEY)
      # 
      # long
      # long
      def _reg_open_key_ex_a(h_key, lp_sub_key, ul_options, sam_desired, phk_result)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegOpenKeyExA, JNI.env, self.jni_id, h_key.to_int, lp_sub_key.jni_id, ul_options.to_int, sam_desired.to_int, phk_result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegQueryInfoKeyW, [:pointer, :long, :int32, :int32, :long, :int32, :long, :long, :long, :long, :long, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int] }
      # @param hKey cast=(HKEY)
      # @param lpClass cast=(LPWSTR)
      # @param lpcbClass cast=(LPDWORD)
      # @param lpReserved cast=(LPDWORD)
      # @param lpSubKeys cast=(LPDWORD)
      # @param lpcbMaxSubKeyLen cast=(LPDWORD)
      # @param lpcbMaxClassLen cast=(LPDWORD)
      # @param lpcValues cast=(LPDWORD)
      # @param lpcbMaxValueNameLen cast=(LPDWORD)
      # @param lpcbMaxValueLen cast=(LPDWORD)
      # @param lpcbSecurityDescriptor cast=(LPDWORD)
      # @param lpftLastWriteTime cast=(PFILETIME)
      # 
      # long
      # long
      # long
      # long
      def _reg_query_info_key_w(h_key, lp_class, lpcb_class, lp_reserved, lp_sub_keys, lpcb_max_sub_key_len, lpcb_max_class_len, lpc_values, lpcb_max_value_name_len, lpcb_max_value_len, lpcb_security_descriptor, lpft_last_write_time)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegQueryInfoKeyW, JNI.env, self.jni_id, h_key.to_int, lp_class.to_int, lpcb_class.jni_id, lp_reserved.to_int, lp_sub_keys.jni_id, lpcb_max_sub_key_len.jni_id, lpcb_max_class_len.jni_id, lpc_values.jni_id, lpcb_max_value_name_len.jni_id, lpcb_max_value_len.jni_id, lpcb_security_descriptor.jni_id, lpft_last_write_time.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegQueryInfoKeyA, [:pointer, :long, :int32, :int32, :long, :int32, :long, :long, :long, :long, :long, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int] }
      # @param hKey cast=(HKEY)
      # @param lpClass cast=(LPSTR)
      # @param lpcbClass cast=(LPDWORD)
      # @param lpReserved cast=(LPDWORD)
      # @param lpSubKeys cast=(LPDWORD)
      # @param lpcbMaxSubKeyLen cast=(LPDWORD)
      # @param lpcbMaxClassLen cast=(LPDWORD)
      # @param lpcValues cast=(LPDWORD)
      # @param lpcbMaxValueNameLen cast=(LPDWORD)
      # @param lpcbMaxValueLen cast=(LPDWORD)
      # @param lpcbSecurityDescriptor cast=(LPDWORD)
      # @param lpftLastWriteTime cast=(PFILETIME)
      # 
      # long
      # long
      # long
      # long
      def _reg_query_info_key_a(h_key, lp_class, lpcb_class, lp_reserved, lp_sub_keys, lpcb_max_sub_key_len, lpcb_max_class_len, lpc_values, lpcb_max_value_name_len, lpcb_max_value_len, lpcb_security_descriptor, lpft_last_write_time)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegQueryInfoKeyA, JNI.env, self.jni_id, h_key.to_int, lp_class.to_int, lpcb_class.jni_id, lp_reserved.to_int, lp_sub_keys.jni_id, lpcb_max_sub_key_len.jni_id, lpcb_max_class_len.jni_id, lpc_values.jni_id, lpcb_max_value_name_len.jni_id, lpcb_max_value_len.jni_id, lpcb_security_descriptor.jni_id, lpft_last_write_time.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegQueryValueExW__I_3CI_3I_3C_3I, [:pointer, :long, :int32, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # @param hKey cast=(HKEY)
      # @param lpValueName cast=(LPWSTR)
      # @param lpReserved cast=(LPDWORD)
      # @param lpType cast=(LPDWORD)
      # @param lpData cast=(LPBYTE)
      # @param lpcbData cast=(LPDWORD)
      # 
      # long
      # long
      def _reg_query_value_ex_w(h_key, lp_value_name, lp_reserved, lp_type, lp_data, lpcb_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegQueryValueExW__I_3CI_3I_3C_3I, JNI.env, self.jni_id, h_key.to_int, lp_value_name.jni_id, lp_reserved.to_int, lp_type.jni_id, lp_data.jni_id, lpcb_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegQueryValueExW__I_3CI_3I_3I_3I, [:pointer, :long, :int32, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @param hKey cast=(HKEY)
      # @param lpValueName cast=(LPWSTR)
      # @param lpReserved cast=(LPDWORD)
      # @param lpType cast=(LPDWORD)
      # @param lpData cast=(LPBYTE)
      # @param lpcbData cast=(LPDWORD)
      # 
      # long
      # long
      def _reg_query_value_ex_w(h_key, lp_value_name, lp_reserved, lp_type, lp_data, lpcb_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegQueryValueExW__I_3CI_3I_3I_3I, JNI.env, self.jni_id, h_key.to_int, lp_value_name.jni_id, lp_reserved.to_int, lp_type.jni_id, lp_data.jni_id, lpcb_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegQueryValueExA__I_3BI_3I_3B_3I, [:pointer, :long, :int32, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # @param hKey cast=(HKEY)
      # @param lpValueName cast=(LPSTR)
      # @param lpReserved cast=(LPDWORD)
      # @param lpType cast=(LPDWORD)
      # @param lpData cast=(LPBYTE)
      # @param lpcbData cast=(LPDWORD)
      # 
      # long
      # long
      def _reg_query_value_ex_a(h_key, lp_value_name, lp_reserved, lp_type, lp_data, lpcb_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegQueryValueExA__I_3BI_3I_3B_3I, JNI.env, self.jni_id, h_key.to_int, lp_value_name.jni_id, lp_reserved.to_int, lp_type.jni_id, lp_data.jni_id, lpcb_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RegQueryValueExA__I_3BI_3I_3I_3I, [:pointer, :long, :int32, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @param hKey cast=(HKEY)
      # @param lpValueName cast=(LPSTR)
      # @param lpReserved cast=(LPDWORD)
      # @param lpType cast=(LPDWORD)
      # @param lpData cast=(LPBYTE)
      # @param lpcbData cast=(LPDWORD)
      # 
      # long
      # long
      def _reg_query_value_ex_a(h_key, lp_value_name, lp_reserved, lp_type, lp_data, lpcb_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RegQueryValueExA__I_3BI_3I_3I_3I, JNI.env, self.jni_id, h_key.to_int, lp_value_name.jni_id, lp_reserved.to_int, lp_type.jni_id, lp_data.jni_id, lpcb_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ReleaseCapture, [:pointer, :long], :int8
      typesig { [] }
      def _release_capture
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ReleaseCapture, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ReleaseDC, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hDC cast=(HDC)
      # 
      # long
      # long
      def _release_dc(h_wnd, h_dc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ReleaseDC, JNI.env, self.jni_id, h_wnd.to_int, h_dc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RemoveMenu, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hMenu cast=(HMENU)
      # long
      def _remove_menu(h_menu, u_position, u_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RemoveMenu, JNI.env, self.jni_id, h_menu.to_int, u_position.to_int, u_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RemovePropA, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param lpString cast=(LPCTSTR)
      # 
      # long
      # long
      # long
      def _remove_prop_a(h_wnd, lp_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RemovePropA, JNI.env, self.jni_id, h_wnd.to_int, lp_string.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RemovePropW, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param lpString cast=(LPCWSTR)
      # 
      # long
      # long
      # long
      def _remove_prop_w(h_wnd, lp_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RemovePropW, JNI.env, self.jni_id, h_wnd.to_int, lp_string.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ReplyMessage, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def _reply_message(l_result)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ReplyMessage, JNI.env, self.jni_id, l_result.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RestoreDC, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param nSavedDC cast=(int)
      # 
      # long
      def _restore_dc(hdc, n_saved_dc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RestoreDC, JNI.env, self.jni_id, hdc.to_int, n_saved_dc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_RoundRect, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _round_rect(hdc, n_left_rect, n_top_rect, n_right_rect, n_bottom_rect, n_width, n_height)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_RoundRect, JNI.env, self.jni_id, hdc.to_int, n_left_rect.to_int, n_top_rect.to_int, n_right_rect.to_int, n_bottom_rect.to_int, n_width.to_int, n_height.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SaveDC, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _save_dc(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SaveDC, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScreenToClient, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, POINT] }
      # @param hWnd cast=(HWND)
      # long
      def _screen_to_client(h_wnd, lp_point)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScreenToClient, JNI.env, self.jni_id, h_wnd.to_int, lp_point.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptApplyDigitSubstitution, [:pointer, :long, :long, :long, :long], :int32
      typesig { [SCRIPT_DIGITSUBSTITUTE, SCRIPT_CONTROL, SCRIPT_STATE] }
      # @param psds cast=(const SCRIPT_DIGITSUBSTITUTE*)
      # @param psc cast=(SCRIPT_CONTROL*)
      # @param pss cast=(SCRIPT_STATE*)
      def _script_apply_digit_substitution(psds, psc, pss)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptApplyDigitSubstitution, JNI.env, self.jni_id, psds.jni_id, psc.jni_id, pss.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptBreak, [:pointer, :long, :long, :int32, :long, :int32], :int32
      typesig { [Array.typed(::Java::Char), ::Java::Int, SCRIPT_ANALYSIS, ::Java::Int] }
      # @param pwcChars cast=(const WCHAR *)
      # @param psa cast=(const SCRIPT_ANALYSIS *)
      # @param psla cast=(SCRIPT_LOGATTR *)
      # 
      # long
      def _script_break(pwc_chars, c_chars, psa, psla)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptBreak, JNI.env, self.jni_id, pwc_chars.jni_id, c_chars.to_int, psa.jni_id, psla.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptGetProperties, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @param ppSp cast=(const SCRIPT_PROPERTIES ***)
      # @param piNumScripts cast=(int *)
      # 
      # long
      def _script_get_properties(pp_sp, pi_num_scripts)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptGetProperties, JNI.env, self.jni_id, pp_sp.jni_id, pi_num_scripts.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptCacheGetHeight, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hdc cast=(HDC)
      # @param psc cast=(SCRIPT_CACHE *)
      # @param tmHeight cast=(long *)
      # 
      # long
      # long
      def _script_cache_get_height(hdc, psc, tm_height)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptCacheGetHeight, JNI.env, self.jni_id, hdc.to_int, psc.to_int, tm_height.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptCPtoX, [:pointer, :long, :int32, :int8, :int32, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, SCRIPT_ANALYSIS, Array.typed(::Java::Int)] }
      # @param pwLogClust cast=(const WORD *)
      # @param psva cast=(const SCRIPT_VISATTR *)
      # @param piAdvance cast=(const int *)
      # @param psa cast=(const SCRIPT_ANALYSIS *)
      # @param piX cast=(int *)
      # 
      # long
      # long
      # long
      def _script_cpto_x(i_cp, f_trailing, c_chars, c_glyphs, pw_log_clust, psva, pi_advance, psa, pi_x)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptCPtoX, JNI.env, self.jni_id, i_cp.to_int, f_trailing ? 1 : 0, c_chars.to_int, c_glyphs.to_int, pw_log_clust.to_int, psva.to_int, pi_advance.to_int, psa.jni_id, pi_x.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptFreeCache, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param psc cast=(SCRIPT_CACHE *)
      # long
      def _script_free_cache(psc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptFreeCache, JNI.env, self.jni_id, psc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptGetFontProperties, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, SCRIPT_FONTPROPERTIES] }
      # @param hdc cast=(HDC)
      # @param psc cast=(SCRIPT_CACHE *)
      # @param sfp cast=(SCRIPT_FONTPROPERTIES *)
      # 
      # long
      # long
      def _script_get_font_properties(hdc, psc, sfp)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptGetFontProperties, JNI.env, self.jni_id, hdc.to_int, psc.to_int, sfp.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptGetLogicalWidths, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [SCRIPT_ANALYSIS, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param psa cast=(const SCRIPT_ANALYSIS *)
      # @param piGlyphWidth cast=(const int *)
      # @param pwLogClust cast=(const WORD *)
      # @param psva cast=(const SCRIPT_VISATTR *)
      # @param piDx cast=(int *)
      # 
      # long
      # long
      # long
      def _script_get_logical_widths(psa, c_chars, c_glyphs, pi_glyph_width, pw_log_clust, psva, pi_dx)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptGetLogicalWidths, JNI.env, self.jni_id, psa.jni_id, c_chars.to_int, c_glyphs.to_int, pi_glyph_width.to_int, pw_log_clust.to_int, psva.to_int, pi_dx.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptItemize, [:pointer, :long, :long, :int32, :int32, :long, :long, :int32, :long], :int32
      typesig { [Array.typed(::Java::Char), ::Java::Int, ::Java::Int, SCRIPT_CONTROL, SCRIPT_STATE, ::Java::Int, Array.typed(::Java::Int)] }
      # @param pwcInChars cast=(const WCHAR *)
      # @param psControl cast=(const SCRIPT_CONTROL *)
      # @param psState cast=(const SCRIPT_STATE *)
      # @param pItems cast=(SCRIPT_ITEM *)
      # @param pcItems cast=(int *)
      # 
      # long
      def _script_itemize(pwc_in_chars, c_in_chars, c_max_items, ps_control, ps_state, p_items, pc_items)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptItemize, JNI.env, self.jni_id, pwc_in_chars.jni_id, c_in_chars.to_int, c_max_items.to_int, ps_control.jni_id, ps_state.jni_id, p_items.to_int, pc_items.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptJustify, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param psva cast=(SCRIPT_VISATTR *)
      # @param piAdvance cast=(const int *)
      # @param piJustify cast=(int *)
      # 
      # long
      # long
      # long
      def _script_justify(psva, pi_advance, c_glyphs, i_dx, i_min_kashida, pi_justify)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptJustify, JNI.env, self.jni_id, psva.to_int, pi_advance.to_int, c_glyphs.to_int, i_dx.to_int, i_min_kashida.to_int, pi_justify.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptLayout, [:pointer, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @param pbLevel cast=(const BYTE *)
      # @param piVisualToLogical cast=(int *)
      # @param piLogicalToVisual cast=(int *)
      def _script_layout(c_runs, pb_level, pi_visual_to_logical, pi_logical_to_visual)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptLayout, JNI.env, self.jni_id, c_runs.to_int, pb_level.jni_id, pi_visual_to_logical.jni_id, pi_logical_to_visual.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptPlace, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, SCRIPT_ANALYSIS, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hdc cast=(HDC)
      # @param psc cast=(SCRIPT_CACHE *)
      # @param pwGlyphs cast=(const WORD *)
      # @param psva cast=(const SCRIPT_VISATTR *)
      # @param psa cast=(SCRIPT_ANALYSIS *)
      # @param piAdvance cast=(int *)
      # @param pGoffset cast=(GOFFSET *)
      # @param pABC cast=(ABC *)
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      def _script_place(hdc, psc, pw_glyphs, c_glyphs, psva, psa, pi_advance, p_goffset, p_abc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptPlace, JNI.env, self.jni_id, hdc.to_int, psc.to_int, pw_glyphs.to_int, c_glyphs.to_int, psva.to_int, psa.jni_id, pi_advance.to_int, p_goffset.to_int, p_abc.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptRecordDigitSubstitution, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, SCRIPT_DIGITSUBSTITUTE] }
      # @param Locale cast=(LCID)
      # @param psds cast=(SCRIPT_DIGITSUBSTITUTE*)
      def _script_record_digit_substitution(locale, psds)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptRecordDigitSubstitution, JNI.env, self.jni_id, locale.to_int, psds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptGetCMap, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      # @param hdc cast=(HDC)
      # @param psc cast=(SCRIPT_CACHE *)
      # @param pwcChars cast=(const WCHAR *)
      # @param pwOutGlyphs cast=(WORD*)
      # 
      # long
      # long
      def _script_get_cmap(hdc, psc, pwc_chars, c_chars, dw_flags, pw_out_glyphs)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptGetCMap, JNI.env, self.jni_id, hdc.to_int, psc.to_int, pwc_chars.jni_id, c_chars.to_int, dw_flags.to_int, pw_out_glyphs.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptShape, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, SCRIPT_ANALYSIS, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hdc cast=(HDC)
      # @param psc cast=(SCRIPT_CACHE *)
      # @param pwcChars cast=(const WCHAR *)
      # @param psa cast=(SCRIPT_ANALYSIS *)
      # @param pwOutGlyphs cast=(WORD *)
      # @param pwLogClust cast=(WORD *)
      # @param psva cast=(SCRIPT_VISATTR *)
      # @param pcGlyphs cast=(int *)
      # 
      # long
      # long
      # long
      # long
      # long
      def _script_shape(hdc, psc, pwc_chars, c_chars, c_max_glyphs, psa, pw_out_glyphs, pw_log_clust, psva, pc_glyphs)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptShape, JNI.env, self.jni_id, hdc.to_int, psc.to_int, pwc_chars.jni_id, c_chars.to_int, c_max_glyphs.to_int, psa.jni_id, pw_out_glyphs.to_int, pw_log_clust.to_int, psva.to_int, pc_glyphs.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptStringAnalyse, [:pointer, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32, :long, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, SCRIPT_CONTROL, SCRIPT_STATE, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param pString cast=(const void*)
      # @param piDx cast=(const int*)
      # @param pTabdef cast=(SCRIPT_TABDEF*)
      # @param pbInClass cast=(const BYTE*)
      # @param pssa cast=(SCRIPT_STRING_ANALYSIS*)
      # 
      # long
      # long
      # long
      # long
      # long
      def _script_string_analyse(hdc, p_string, c_string, c_glyphs, i_charset, dw_flags, i_req_width, ps_control, ps_state, pi_dx, p_tabdef, pb_in_class, pssa)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptStringAnalyse, JNI.env, self.jni_id, hdc.to_int, p_string.jni_id, c_string.to_int, c_glyphs.to_int, i_charset.to_int, dw_flags.to_int, i_req_width.to_int, ps_control.jni_id, ps_state.jni_id, pi_dx.to_int, p_tabdef.to_int, pb_in_class.to_int, pssa.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptStringOut, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @param ssa cast=(SCRIPT_STRING_ANALYSIS*),flags=struct
      # long
      def _script_string_out(ssa, i_x, i_y, u_options, prc, i_min_sel, i_max_sel, f_disabled)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptStringOut, JNI.env, self.jni_id, ssa.to_int, i_x.to_int, i_y.to_int, u_options.to_int, prc.jni_id, i_min_sel.to_int, i_max_sel.to_int, f_disabled ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptStringFree, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param pssa cast=(SCRIPT_STRING_ANALYSIS*)
      # long
      def _script_string_free(pssa)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptStringFree, JNI.env, self.jni_id, pssa.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptTextOut, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT, SCRIPT_ANALYSIS, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(const HDC)
      # @param psc cast=(SCRIPT_CACHE *)
      # @param lprc cast=(const RECT *)
      # @param psa cast=(const SCRIPT_ANALYSIS *)
      # @param pwcReserved cast=(const WCHAR *)
      # @param pwGlyphs cast=(const WORD *)
      # @param piAdvance cast=(const int *)
      # @param piJustify cast=(const int *)
      # @param pGoffset cast=(const GOFFSET *)
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def _script_text_out(hdc, psc, x, y, fu_options, lprc, psa, pwc_reserved, i_reserved, pw_glyphs, c_glyphs, pi_advance, pi_justify, p_goffset)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptTextOut, JNI.env, self.jni_id, hdc.to_int, psc.to_int, x.to_int, y.to_int, fu_options.to_int, lprc.jni_id, psa.jni_id, pwc_reserved.to_int, i_reserved.to_int, pw_glyphs.to_int, c_glyphs.to_int, pi_advance.to_int, pi_justify.to_int, p_goffset.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScriptXtoCP, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, SCRIPT_ANALYSIS, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @param pwLogClust cast=(const WORD *)
      # @param psva cast=(const SCRIPT_VISATTR *)
      # @param piAdvance cast=(const int *)
      # @param psa cast=(const SCRIPT_ANALYSIS *)
      # @param piCP cast=(int *)
      # @param piTrailing cast=(int *)
      # 
      # long
      # long
      # long
      def _script_xto_cp(i_x, c_chars, c_glyphs, pw_log_clust, psva, pi_advance, psa, pi_cp, pi_trailing)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScriptXtoCP, JNI.env, self.jni_id, i_x.to_int, c_chars.to_int, c_glyphs.to_int, pw_log_clust.to_int, psva.to_int, pi_advance.to_int, psa.jni_id, pi_cp.jni_id, pi_trailing.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ScrollWindowEx, [:pointer, :long, :int32, :int32, :int32, :long, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, RECT, RECT, ::Java::Int, RECT, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hrgnUpdate cast=(HRGN)
      # 
      # long
      # long
      def _scroll_window_ex(h_wnd, dx, dy, prc_scroll, prc_clip, hrgn_update, prc_update, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ScrollWindowEx, JNI.env, self.jni_id, h_wnd.to_int, dx.to_int, dy.to_int, prc_scroll.jni_id, prc_clip.jni_id, hrgn_update.to_int, prc_update.jni_id, flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SelectClipRgn, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param hrgn cast=(HRGN)
      # 
      # long
      # long
      def _select_clip_rgn(hdc, hrgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SelectClipRgn, JNI.env, self.jni_id, hdc.to_int, hrgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SelectObject, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hDC cast=(HDC)
      # @param HGDIObj cast=(HGDIOBJ)
      # 
      # long
      # long
      # long
      def _select_object(h_dc, hgdiobj)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SelectObject, JNI.env, self.jni_id, h_dc.to_int, hgdiobj.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SelectPalette, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @param hDC cast=(HDC)
      # @param hpal cast=(HPALETTE)
      # 
      # long
      # long
      # long
      def _select_palette(h_dc, hpal, b_force_background)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SelectPalette, JNI.env, self.jni_id, h_dc.to_int, hpal.to_int, b_force_background ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendInput, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param pInputs cast=(LPINPUT)
      # long
      def _send_input(n_inputs, p_inputs, cb_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendInput, JNI.env, self.jni_id, n_inputs.to_int, p_inputs.to_int, cb_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageW__II_3I_3I, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @method flags=no_gen
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageW__II_3I_3I, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.jni_id, l_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageW__II_3II, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageW__II_3II, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.jni_id, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageW__III_3C, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageW__III_3C, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageW__III_3I, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageW__III_3I, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageW__III_3S, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageW__III_3S, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIII, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIII, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{LVCOLUMN.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LVCOLUMN] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{LVCOLUMN.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{LVHITTESTINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LVHITTESTINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{LVHITTESTINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{LITEM.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LITEM] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{LITEM.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{LVITEM.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LVITEM] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{LVITEM.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{MARGINS.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, MARGINS] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{MARGINS.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{MCHITTESTINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, MCHITTESTINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{MCHITTESTINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{POINT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, POINT] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{POINT.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{REBARBANDINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, REBARBANDINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{REBARBANDINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{RECT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, RECT] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{RECT.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{SYSTEMTIME.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SYSTEMTIME] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{SYSTEMTIME.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{SHDRAGIMAGE.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SHDRAGIMAGE] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{SHDRAGIMAGE.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TBBUTTON.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TBBUTTON] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TBBUTTON.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TBBUTTONINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TBBUTTONINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TBBUTTONINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TCITEM.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TCITEM] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TCITEM.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TCHITTESTINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TCHITTESTINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TCHITTESTINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TOOLINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TOOLINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TOOLINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TVHITTESTINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVHITTESTINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TVHITTESTINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TVINSERTSTRUCT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVINSERTSTRUCT] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TVINSERTSTRUCT.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TVITEM.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVITEM] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TVITEM.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TVSORTCB.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVSORTCB] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{TVSORTCB.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{UDACCEL.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, UDACCEL] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{UDACCEL.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{HDHITTESTINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, HDHITTESTINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{HDHITTESTINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{HDITEM.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, HDITEM] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{HDITEM.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{HDLAYOUT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, HDLAYOUT] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{HDLAYOUT.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{BUTTON_IMAGELIST.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, BUTTON_IMAGELIST] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{BUTTON_IMAGELIST.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{SIZE.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SIZE] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_w(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageW__IIIL#{SIZE.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageA__II_3I_3I, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageA__II_3I_3I, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.jni_id, l_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageA__II_3II, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageA__II_3II, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.jni_id, l_param.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageA__III_3B, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageA__III_3B, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageA__III_3I, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageA__III_3I, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageA__III_3S, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageA__III_3S, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageA__III_3C, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageA__III_3C, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIII, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIII, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{LVCOLUMN.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LVCOLUMN] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{LVCOLUMN.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{LVHITTESTINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LVHITTESTINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{LVHITTESTINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{LITEM.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LITEM] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{LITEM.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{LVITEM.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LVITEM] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{LVITEM.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{MARGINS.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, MARGINS] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{MARGINS.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{MCHITTESTINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, MCHITTESTINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{MCHITTESTINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{POINT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, POINT] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{POINT.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{REBARBANDINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, REBARBANDINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{REBARBANDINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{RECT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, RECT] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{RECT.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{SYSTEMTIME.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SYSTEMTIME] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{SYSTEMTIME.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{SHDRAGIMAGE.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SHDRAGIMAGE] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{SHDRAGIMAGE.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TBBUTTON.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TBBUTTON] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TBBUTTON.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TBBUTTONINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TBBUTTONINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TBBUTTONINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TCITEM.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TCITEM] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TCITEM.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TCHITTESTINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TCHITTESTINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TCHITTESTINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TOOLINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TOOLINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TOOLINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TVHITTESTINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVHITTESTINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TVHITTESTINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TVINSERTSTRUCT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVINSERTSTRUCT] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TVINSERTSTRUCT.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TVITEM.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVITEM] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TVITEM.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TVSORTCB.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, TVSORTCB] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{TVSORTCB.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{UDACCEL.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, UDACCEL] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{UDACCEL.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{HDHITTESTINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, HDHITTESTINFO] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{HDHITTESTINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{HDITEM.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, HDITEM] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{HDITEM.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{HDLAYOUT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, HDLAYOUT] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{HDLAYOUT.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{BUTTON_IMAGELIST.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, BUTTON_IMAGELIST] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{BUTTON_IMAGELIST.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{SIZE.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SIZE] }
      # @param hWnd cast=(HWND)
      # @param wParam cast=(WPARAM)
      # @param lParam cast=(LPARAM)
      # 
      # long
      # long
      # long
      def _send_message_a(h_wnd, msg, w_param, l_param)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SendMessageA__IIIL#{SIZE.jni_name}_2".to_sym, JNI.env, self.jni_id, h_wnd.to_int, msg.to_int, w_param.to_int, l_param.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetActiveWindow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _set_active_window(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetActiveWindow, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetBkColor, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param colorRef cast=(COLORREF)
      # 
      # long
      def _set_bk_color(hdc, color_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetBkColor, JNI.env, self.jni_id, hdc.to_int, color_ref.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetBkMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _set_bk_mode(hdc, mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetBkMode, JNI.env, self.jni_id, hdc.to_int, mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetBrushOrgEx, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, POINT] }
      # @param hdc cast=(HDC)
      # @param lppt cast=(LPPOINT)
      # 
      # long
      def _set_brush_org_ex(hdc, n_xorg, n_yorg, lppt)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetBrushOrgEx, JNI.env, self.jni_id, hdc.to_int, n_xorg.to_int, n_yorg.to_int, lppt.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetCapture, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _set_capture(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetCapture, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetCaretPos, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def _set_caret_pos(x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetCaretPos, JNI.env, self.jni_id, x.to_int, y.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetClipboardData, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hMem cast=(HANDLE)
      # long
      # long
      def _set_clipboard_data(u_format, h_mem)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetClipboardData, JNI.env, self.jni_id, u_format.to_int, h_mem.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetCursor, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hCursor cast=(HCURSOR)
      # long
      # long
      def _set_cursor(h_cursor)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetCursor, JNI.env, self.jni_id, h_cursor.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetCursorPos, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def _set_cursor_pos(x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetCursorPos, JNI.env, self.jni_id, x.to_int, y.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetDIBColorTable, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # @param hdc cast=(HDC)
      # @param pColors cast=(RGBQUAD *),flags=no_out critical
      # 
      # long
      def _set_dibcolor_table(hdc, u_start_index, c_entries, p_colors)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetDIBColorTable, JNI.env, self.jni_id, hdc.to_int, u_start_index.to_int, c_entries.to_int, p_colors.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetErrorMode, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _set_error_mode(u_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetErrorMode, JNI.env, self.jni_id, u_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetFocus, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      # long
      def _set_focus(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetFocus, JNI.env, self.jni_id, h_wnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetForegroundWindow, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _set_foreground_window(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetForegroundWindow, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetGraphicsMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _set_graphics_mode(hdc, i_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetGraphicsMode, JNI.env, self.jni_id, hdc.to_int, i_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetLayeredWindowAttributes, [:pointer, :long, :int32, :int32, :int8, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Byte, ::Java::Int] }
      # @method flags=dynamic
      # @param hwnd cast=(HWND)
      # 
      # long
      def _set_layered_window_attributes(hwnd, cr_key, b_alpha, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetLayeredWindowAttributes, JNI.env, self.jni_id, hwnd.to_int, cr_key.to_int, b_alpha.to_int, dw_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetLayout, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # @param hdc cast=(HDC)
      # @param dwLayout cast=(DWORD)
      # 
      # long
      def _set_layout(hdc, dw_layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetLayout, JNI.env, self.jni_id, hdc.to_int, dw_layout.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetMapMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _set_map_mode(hdc, fn_map_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetMapMode, JNI.env, self.jni_id, hdc.to_int, fn_map_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetMapperFlags, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param dwFlag cast=(DWORD)
      # 
      # long
      def _set_mapper_flags(hdc, dw_flag)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetMapperFlags, JNI.env, self.jni_id, hdc.to_int, dw_flag.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetMenu, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hMenu cast=(HMENU)
      # 
      # long
      # long
      def _set_menu(h_wnd, h_menu)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetMenu, JNI.env, self.jni_id, h_wnd.to_int, h_menu.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetMenuDefaultItem, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hMenu cast=(HMENU)
      # long
      def _set_menu_default_item(h_menu, u_item, f_by_pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetMenuDefaultItem, JNI.env, self.jni_id, h_menu.to_int, u_item.to_int, f_by_pos.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetMenuInfo, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, MENUINFO] }
      # @method flags=dynamic
      # @param hmenu cast=(HMENU)
      # 
      # long
      def _set_menu_info(hmenu, lpcmi)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetMenuInfo, JNI.env, self.jni_id, hmenu.to_int, lpcmi.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetMenuItemInfoW, [:pointer, :long, :int32, :int32, :int8, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, MENUITEMINFO] }
      # @param hMenu cast=(HMENU)
      # @param lpmii cast=(LPMENUITEMINFOW)
      # 
      # long
      def _set_menu_item_info_w(h_menu, u_item, f_by_position, lpmii)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetMenuItemInfoW, JNI.env, self.jni_id, h_menu.to_int, u_item.to_int, f_by_position ? 1 : 0, lpmii.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetMenuItemInfoA, [:pointer, :long, :int32, :int32, :int8, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, MENUITEMINFO] }
      # @param hMenu cast=(HMENU)
      # long
      def _set_menu_item_info_a(h_menu, u_item, f_by_position, lpmii)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetMenuItemInfoA, JNI.env, self.jni_id, h_menu.to_int, u_item.to_int, f_by_position ? 1 : 0, lpmii.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetMetaRgn, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _set_meta_rgn(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetMetaRgn, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetPaletteEntries, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # @param hPal cast=(HPALETTE)
      # @param lppe cast=(PALETTEENTRY *),flags=no_out critical
      # 
      # long
      def _set_palette_entries(h_pal, i_start, c_entries, lppe)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetPaletteEntries, JNI.env, self.jni_id, h_pal.to_int, i_start.to_int, c_entries.to_int, lppe.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetParent, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWndChild cast=(HWND)
      # @param hWndNewParent cast=(HWND)
      # 
      # long
      # long
      # long
      def _set_parent(h_wnd_child, h_wnd_new_parent)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetParent, JNI.env, self.jni_id, h_wnd_child.to_int, h_wnd_new_parent.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetPixel, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _set_pixel(hdc, x, y, cr_color)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetPixel, JNI.env, self.jni_id, hdc.to_int, x.to_int, y.to_int, cr_color.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetPolyFillMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _set_poly_fill_mode(hdc, i_poly_fill_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetPolyFillMode, JNI.env, self.jni_id, hdc.to_int, i_poly_fill_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetProcessDPIAware, [:pointer, :long], :int8
      typesig { [] }
      # @method flags=dynamic
      def _set_process_dpiaware
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetProcessDPIAware, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetRect, [:pointer, :long, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [RECT, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param lprc flags=no_in
      def _set_rect(lprc, x_left, y_top, x_right, y_bottom)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetRect, JNI.env, self.jni_id, lprc.jni_id, x_left.to_int, y_top.to_int, x_right.to_int, y_bottom.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetRectRgn, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hrgn cast=(HRGN)
      # long
      def _set_rect_rgn(hrgn, n_left_rect, n_top_rect, n_right_rect, n_bottom_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetRectRgn, JNI.env, self.jni_id, hrgn.to_int, n_left_rect.to_int, n_top_rect.to_int, n_right_rect.to_int, n_bottom_rect.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetROP2, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _set_rop2(hdc, fn_draw_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetROP2, JNI.env, self.jni_id, hdc.to_int, fn_draw_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetScrollInfo, [:pointer, :long, :int32, :int32, :long, :int8], :int8
      typesig { [::Java::Int, ::Java::Int, SCROLLINFO, ::Java::Boolean] }
      # @param hwnd cast=(HWND)
      # long
      def _set_scroll_info(hwnd, flags, info, f_redraw)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetScrollInfo, JNI.env, self.jni_id, hwnd.to_int, flags.to_int, info.jni_id, f_redraw ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetStretchBltMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _set_stretch_blt_mode(hdc, i_stretch_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetStretchBltMode, JNI.env, self.jni_id, hdc.to_int, i_stretch_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetPropW, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param lpString cast=(LPCWSTR)
      # @param hData cast=(HANDLE)
      # 
      # long
      # long
      # long
      def _set_prop_w(h_wnd, lp_string, h_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetPropW, JNI.env, self.jni_id, h_wnd.to_int, lp_string.to_int, h_data.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetPropA, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param lpString cast=(LPCTSTR)
      # @param hData cast=(HANDLE)
      # 
      # long
      # long
      # long
      def _set_prop_a(h_wnd, lp_string, h_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetPropA, JNI.env, self.jni_id, h_wnd.to_int, lp_string.to_int, h_data.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetTextAlign, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _set_text_align(hdc, f_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetTextAlign, JNI.env, self.jni_id, hdc.to_int, f_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetTextColor, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param colorRef cast=(COLORREF)
      # 
      # long
      def _set_text_color(hdc, color_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetTextColor, JNI.env, self.jni_id, hdc.to_int, color_ref.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetTimer, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param lpTimerFunc cast=(TIMERPROC)
      # 
      # long
      # long
      # long
      # long
      def _set_timer(h_wnd, n_idevent, elapse, lp_timer_func)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetTimer, JNI.env, self.jni_id, h_wnd.to_int, n_idevent.to_int, elapse.to_int, lp_timer_func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetViewportExtEx, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SIZE] }
      # @param hdc cast=(HDC)
      # long
      def _set_viewport_ext_ex(hdc, n_xextent, n_yextent, lp_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetViewportExtEx, JNI.env, self.jni_id, hdc.to_int, n_xextent.to_int, n_yextent.to_int, lp_size.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetViewportOrgEx, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, POINT] }
      # @param hdc cast=(HDC)
      # long
      def _set_viewport_org_ex(hdc, x, y, lp_point)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetViewportOrgEx, JNI.env, self.jni_id, hdc.to_int, x.to_int, y.to_int, lp_point.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowLongW, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _set_window_long_w(h_wnd, n_index, dw_new_long)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowLongW, JNI.env, self.jni_id, h_wnd.to_int, n_index.to_int, dw_new_long.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowLongA, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _set_window_long_a(h_wnd, n_index, dw_new_long)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowLongA, JNI.env, self.jni_id, h_wnd.to_int, n_index.to_int, dw_new_long.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowLongPtrW, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param dwNewLong cast=(LONG_PTR)
      # 
      # long
      # long
      # long
      def _set_window_long_ptr_w(h_wnd, n_index, dw_new_long)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowLongPtrW, JNI.env, self.jni_id, h_wnd.to_int, n_index.to_int, dw_new_long.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowLongPtrA, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param dwNewLong cast=(LONG_PTR)
      # 
      # long
      # long
      # long
      def _set_window_long_ptr_a(h_wnd, n_index, dw_new_long)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowLongPtrA, JNI.env, self.jni_id, h_wnd.to_int, n_index.to_int, dw_new_long.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowExtEx, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SIZE] }
      # @param hdc cast=(HDC)
      # long
      def _set_window_ext_ex(hdc, n_xextent, n_yextent, lp_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowExtEx, JNI.env, self.jni_id, hdc.to_int, n_xextent.to_int, n_yextent.to_int, lp_size.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowOrgEx, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, POINT] }
      # @param hdc cast=(HDC)
      # long
      def _set_window_org_ex(hdc, x, y, lp_point)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowOrgEx, JNI.env, self.jni_id, hdc.to_int, x.to_int, y.to_int, lp_point.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowPlacement, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, WINDOWPLACEMENT] }
      # @param hWnd cast=(HWND)
      # long
      def _set_window_placement(h_wnd, lpwndpl)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowPlacement, JNI.env, self.jni_id, h_wnd.to_int, lpwndpl.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowPos, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # @param hWndInsertAfter cast=(HWND)
      # 
      # long
      # long
      def _set_window_pos(h_wnd, h_wnd_insert_after, x, y, cx, cy, u_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowPos, JNI.env, self.jni_id, h_wnd.to_int, h_wnd_insert_after.to_int, x.to_int, y.to_int, cx.to_int, cy.to_int, u_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowRgn, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @param hWnd cast=(HWND)
      # @param hRgn cast=(HRGN)
      # 
      # long
      # long
      def _set_window_rgn(h_wnd, h_rgn, b_redraw)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowRgn, JNI.env, self.jni_id, h_wnd.to_int, h_rgn.to_int, b_redraw ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowTextW, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Char)] }
      # @param hWnd cast=(HWND)
      # @param lpString cast=(LPWSTR)
      # 
      # long
      def _set_window_text_w(h_wnd, lp_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowTextW, JNI.env, self.jni_id, h_wnd.to_int, lp_string.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowTextA, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # @param hWnd cast=(HWND)
      # @param lpString cast=(LPSTR)
      # 
      # long
      def _set_window_text_a(h_wnd, lp_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowTextA, JNI.env, self.jni_id, h_wnd.to_int, lp_string.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowTheme, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char)] }
      # @method flags=dynamic
      # @param hwnd cast=(HWND)
      # @param pszSubAppName cast=(LPCWSTR)
      # @param pszSubIdList cast=(LPCWSTR)
      # 
      # long
      def _set_window_theme(hwnd, psz_sub_app_name, psz_sub_id_list)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowTheme, JNI.env, self.jni_id, hwnd.to_int, psz_sub_app_name.jni_id, psz_sub_id_list.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowsHookExW, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param lpfn cast=(HOOKPROC)
      # @param hMod cast=(HINSTANCE)
      # 
      # long
      # long
      # long
      def _set_windows_hook_ex_w(id_hook, lpfn, h_mod, dw_thread_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowsHookExW, JNI.env, self.jni_id, id_hook.to_int, lpfn.to_int, h_mod.to_int, dw_thread_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWindowsHookExA, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param lpfn cast=(HOOKPROC)
      # @param hMod cast=(HINSTANCE)
      # 
      # long
      # long
      # long
      def _set_windows_hook_ex_a(id_hook, lpfn, h_mod, dw_thread_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWindowsHookExA, JNI.env, self.jni_id, id_hook.to_int, lpfn.to_int, h_mod.to_int, dw_thread_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SetWorldTransform, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Float)] }
      # @param hdc cast=(HDC)
      # @param lpXform cast=(XFORM *)
      # 
      # long
      def _set_world_transform(hdc, lp_xform)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SetWorldTransform, JNI.env, self.jni_id, hdc.to_int, lp_xform.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHBrowseForFolderW, [:pointer, :long, :long], :int32
      typesig { [BROWSEINFO] }
      # @param lpbi cast=(LPBROWSEINFOW)
      # long
      def _shbrowse_for_folder_w(lpbi)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHBrowseForFolderW, JNI.env, self.jni_id, lpbi.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHBrowseForFolderA, [:pointer, :long, :long], :int32
      typesig { [BROWSEINFO] }
      # long
      def _shbrowse_for_folder_a(lpbi)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHBrowseForFolderA, JNI.env, self.jni_id, lpbi.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHCreateMenuBar, [:pointer, :long, :long], :int8
      typesig { [SHMENUBARINFO] }
      # @param pmb cast=(PSHMENUBARINFO)
      def _shcreate_menu_bar(pmb)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHCreateMenuBar, JNI.env, self.jni_id, pmb.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHGetFileInfoW, [:pointer, :long, :long, :int32, :long, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Char), ::Java::Int, SHFILEINFOW, ::Java::Int, ::Java::Int] }
      # @param pszPath cast=(LPCWSTR)
      # @param psfi cast=(SHFILEINFOW *)
      # 
      # long
      def _shget_file_info_w(psz_path, dw_file_attributes, psfi, cb_file_info, u_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHGetFileInfoW, JNI.env, self.jni_id, psz_path.jni_id, dw_file_attributes.to_int, psfi.jni_id, cb_file_info.to_int, u_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHGetFileInfoA, [:pointer, :long, :long, :int32, :long, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, SHFILEINFOA, ::Java::Int, ::Java::Int] }
      # @param pszPath cast=(LPCSTR)
      # @param psfi cast=(SHFILEINFOA *)
      # 
      # long
      def _shget_file_info_a(psz_path, dw_file_attributes, psfi, cb_file_info, u_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHGetFileInfoA, JNI.env, self.jni_id, psz_path.jni_id, dw_file_attributes.to_int, psfi.jni_id, cb_file_info.to_int, u_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHHandleWMSettingChange, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SHACTIVATEINFO] }
      # @param hwnd cast=(HWND)
      # long
      # long
      # long
      def _shhandle_wmsetting_change(hwnd, w_param, l_param, psai)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHHandleWMSettingChange, JNI.env, self.jni_id, hwnd.to_int, w_param.to_int, l_param.to_int, psai.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHRecognizeGesture, [:pointer, :long, :long], :int32
      typesig { [SHRGINFO] }
      def _shrecognize_gesture(shrg)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHRecognizeGesture, JNI.env, self.jni_id, shrg.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHSendBackToFocusWindow, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _shsend_back_to_focus_window(u_msg, wp, lp)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHSendBackToFocusWindow, JNI.env, self.jni_id, u_msg.to_int, wp.to_int, lp.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHSipPreference, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param hwnd cast=(HWND)
      # long
      def _shsip_preference(hwnd, st)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHSipPreference, JNI.env, self.jni_id, hwnd.to_int, st.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ShellExecuteExW, [:pointer, :long, :long], :int8
      typesig { [SHELLEXECUTEINFO] }
      # @param lpExecInfo cast=(LPSHELLEXECUTEINFOW)
      def _shell_execute_ex_w(lp_exec_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ShellExecuteExW, JNI.env, self.jni_id, lp_exec_info.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ShellExecuteExA, [:pointer, :long, :long], :int8
      typesig { [SHELLEXECUTEINFO] }
      def _shell_execute_ex_a(lp_exec_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ShellExecuteExA, JNI.env, self.jni_id, lp_exec_info.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_Shell_1NotifyIconA, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, NOTIFYICONDATAA] }
      def _shell_notify_icon_a(dw_message, lp_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_Shell_1NotifyIconA, JNI.env, self.jni_id, dw_message.to_int, lp_data.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_Shell_1NotifyIconW, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, NOTIFYICONDATAW] }
      def _shell_notify_icon_w(dw_message, lp_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_Shell_1NotifyIconW, JNI.env, self.jni_id, dw_message.to_int, lp_data.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHGetMalloc, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      # @param ppMalloc cast=(LPMALLOC *)
      # long
      def _shget_malloc(pp_malloc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHGetMalloc, JNI.env, self.jni_id, pp_malloc.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHGetPathFromIDListW, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Char)] }
      # @param pidl cast=(LPCITEMIDLIST)
      # @param pszPath cast=(LPWSTR)
      # 
      # long
      def _shget_path_from_idlist_w(pidl, psz_path)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHGetPathFromIDListW, JNI.env, self.jni_id, pidl.to_int, psz_path.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHGetPathFromIDListA, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # @param pidl cast=(LPCITEMIDLIST)
      # @param pszPath cast=(LPSTR)
      # 
      # long
      def _shget_path_from_idlist_a(pidl, psz_path)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHGetPathFromIDListA, JNI.env, self.jni_id, pidl.to_int, psz_path.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SHSetAppKeyWndAssoc, [:pointer, :long, :int8, :int32], :int8
      typesig { [::Java::Byte, ::Java::Int] }
      # @param bVk cast=(BYTE)
      # @param hwnd cast=(HWND)
      # 
      # long
      def _shset_app_key_wnd_assoc(b_vk, hwnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SHSetAppKeyWndAssoc, JNI.env, self.jni_id, b_vk.to_int, hwnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ShowCaret, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _show_caret(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ShowCaret, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ShowCursor, [:pointer, :long, :int8], :int32
      typesig { [::Java::Boolean] }
      def _show_cursor(b_show)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ShowCursor, JNI.env, self.jni_id, b_show ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ShowOwnedPopups, [:pointer, :long, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Boolean] }
      # @param hWnd cast=(HWND)
      # long
      def _show_owned_popups(h_wnd, f_show)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ShowOwnedPopups, JNI.env, self.jni_id, h_wnd.to_int, f_show ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ShowScrollBar, [:pointer, :long, :int32, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @param hWnd cast=(HWND)
      # long
      def _show_scroll_bar(h_wnd, w_bar, b_show)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ShowScrollBar, JNI.env, self.jni_id, h_wnd.to_int, w_bar.to_int, b_show ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ShowWindow, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _show_window(h_wnd, n_cmd_show)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ShowWindow, JNI.env, self.jni_id, h_wnd.to_int, n_cmd_show.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SipGetInfo, [:pointer, :long, :long], :int8
      typesig { [SIPINFO] }
      def _sip_get_info(p_sip_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SipGetInfo, JNI.env, self.jni_id, p_sip_info.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_StartDocW, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, DOCINFO] }
      # @param hdc cast=(HDC)
      # @param lpdi cast=(LPDOCINFOW)
      # 
      # long
      def _start_doc_w(hdc, lpdi)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_StartDocW, JNI.env, self.jni_id, hdc.to_int, lpdi.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_StartDocA, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, DOCINFO] }
      # @param hdc cast=(HDC)
      # long
      def _start_doc_a(hdc, lpdi)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_StartDocA, JNI.env, self.jni_id, hdc.to_int, lpdi.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_StartPage, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _start_page(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_StartPage, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_StretchBlt, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdcDest cast=(HDC)
      # @param hdcSrc cast=(HDC)
      # 
      # long
      # long
      def _stretch_blt(hdc_dest, n_xorigin_dest, n_yorigin_dest, n_width_dest, n_height_dest, hdc_src, n_xorigin_src, n_yorigin_src, n_width_src, n_height_src, dw_rop)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_StretchBlt, JNI.env, self.jni_id, hdc_dest.to_int, n_xorigin_dest.to_int, n_yorigin_dest.to_int, n_width_dest.to_int, n_height_dest.to_int, hdc_src.to_int, n_xorigin_src.to_int, n_yorigin_src.to_int, n_width_src.to_int, n_height_src.to_int, dw_rop.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_StrokePath, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _stroke_path(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_StrokePath, JNI.env, self.jni_id, hdc.to_int) != 0
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoW__IIL#{HIGHCONTRAST.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, HIGHCONTRAST, ::Java::Int] }
      def _system_parameters_info_w(ui_action, ui_param, pv_param, f_win_ini)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoW__IIL#{HIGHCONTRAST.jni_name}_2I".to_sym, JNI.env, self.jni_id, ui_action.to_int, ui_param.to_int, pv_param.jni_id, f_win_ini.to_int) != 0
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoA__IIL#{HIGHCONTRAST.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, HIGHCONTRAST, ::Java::Int] }
      def _system_parameters_info_a(ui_action, ui_param, pv_param, f_win_ini)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoA__IIL#{HIGHCONTRAST.jni_name}_2I".to_sym, JNI.env, self.jni_id, ui_action.to_int, ui_param.to_int, pv_param.jni_id, f_win_ini.to_int) != 0
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoW__IIL#{RECT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, RECT, ::Java::Int] }
      def _system_parameters_info_w(ui_action, ui_param, pv_param, f_win_ini)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoW__IIL#{RECT.jni_name}_2I".to_sym, JNI.env, self.jni_id, ui_action.to_int, ui_param.to_int, pv_param.jni_id, f_win_ini.to_int) != 0
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoA__IIL#{RECT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, RECT, ::Java::Int] }
      def _system_parameters_info_a(ui_action, ui_param, pv_param, f_win_ini)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoA__IIL#{RECT.jni_name}_2I".to_sym, JNI.env, self.jni_id, ui_action.to_int, ui_param.to_int, pv_param.jni_id, f_win_ini.to_int) != 0
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoW__IIL#{NONCLIENTMETRICSW.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, NONCLIENTMETRICSW, ::Java::Int] }
      def _system_parameters_info_w(ui_action, ui_param, pv_param, f_win_ini)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoW__IIL#{NONCLIENTMETRICSW.jni_name}_2I".to_sym, JNI.env, self.jni_id, ui_action.to_int, ui_param.to_int, pv_param.jni_id, f_win_ini.to_int) != 0
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoA__IIL#{NONCLIENTMETRICSA.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, NONCLIENTMETRICSA, ::Java::Int] }
      def _system_parameters_info_a(ui_action, ui_param, pv_param, f_win_ini)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoA__IIL#{NONCLIENTMETRICSA.jni_name}_2I".to_sym, JNI.env, self.jni_id, ui_action.to_int, ui_param.to_int, pv_param.jni_id, f_win_ini.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoW__II_3II, [:pointer, :long, :int32, :int32, :long, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def _system_parameters_info_w(ui_action, ui_param, pv_param, f_win_ini)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoW__II_3II, JNI.env, self.jni_id, ui_action.to_int, ui_param.to_int, pv_param.jni_id, f_win_ini.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoA__II_3II, [:pointer, :long, :int32, :int32, :long, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def _system_parameters_info_a(ui_action, ui_param, pv_param, f_win_ini)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_SystemParametersInfoA__II_3II, JNI.env, self.jni_id, ui_action.to_int, ui_param.to_int, pv_param.jni_id, f_win_ini.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ToAscii, [:pointer, :long, :int32, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Short), ::Java::Int] }
      # @param lpKeyState cast=(PBYTE)
      # @param lpChar cast=(LPWORD)
      def _to_ascii(u_virt_key, u_scan_code, lp_key_state, lp_char, u_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ToAscii, JNI.env, self.jni_id, u_virt_key.to_int, u_scan_code.to_int, lp_key_state.jni_id, lp_char.jni_id, u_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ToUnicode, [:pointer, :long, :int32, :int32, :long, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Char), ::Java::Int, ::Java::Int] }
      # @param lpKeyState cast=(PBYTE)
      # @param pwszBuff cast=(LPWSTR)
      def _to_unicode(w_virt_key, w_scan_code, lp_key_state, pwsz_buff, cch_buff, w_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ToUnicode, JNI.env, self.jni_id, w_virt_key.to_int, w_scan_code.to_int, lp_key_state.jni_id, pwsz_buff.jni_id, cch_buff.to_int, w_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TreeView_1GetItemRect, [:pointer, :long, :int32, :int32, :long, :int8], :int8
      typesig { [::Java::Int, ::Java::Int, RECT, ::Java::Boolean] }
      # @param hwndTV cast=(HWND)
      # @param hitem cast=(HTREEITEM)
      # 
      # long
      # long
      def _tree_view_get_item_rect(hwnd_tv, hitem, prc, f_item_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TreeView_1GetItemRect, JNI.env, self.jni_id, hwnd_tv.to_int, hitem.to_int, prc.jni_id, f_item_rect ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TrackMouseEvent, [:pointer, :long, :long], :int8
      typesig { [TRACKMOUSEEVENT] }
      def _track_mouse_event(lp_event_track)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TrackMouseEvent, JNI.env, self.jni_id, lp_event_track.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TrackPopupMenu, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, RECT] }
      # @param hMenu cast=(HMENU)
      # @param hWnd cast=(HWND)
      # 
      # long
      # long
      def _track_popup_menu(h_menu, u_flags, x, y, n_reserved, h_wnd, prc_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TrackPopupMenu, JNI.env, self.jni_id, h_menu.to_int, u_flags.to_int, x.to_int, y.to_int, n_reserved.to_int, h_wnd.to_int, prc_rect.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TranslateAcceleratorW, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, MSG] }
      # @param hWnd cast=(HWND)
      # @param hAccTable cast=(HACCEL)
      # 
      # long
      # long
      def _translate_accelerator_w(h_wnd, h_acc_table, lp_msg)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TranslateAcceleratorW, JNI.env, self.jni_id, h_wnd.to_int, h_acc_table.to_int, lp_msg.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TranslateAcceleratorA, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, MSG] }
      # @param hWnd cast=(HWND)
      # @param hAccTable cast=(HACCEL)
      # 
      # long
      # long
      def _translate_accelerator_a(h_wnd, h_acc_table, lp_msg)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TranslateAcceleratorA, JNI.env, self.jni_id, h_wnd.to_int, h_acc_table.to_int, lp_msg.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TranslateCharsetInfo, [:pointer, :long, :int32, :long, :int32], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # @param lpSrc cast=(DWORD *)
      # @param lpCs cast=(LPCHARSETINFO)
      # 
      # long
      def _translate_charset_info(lp_src, lp_cs, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TranslateCharsetInfo, JNI.env, self.jni_id, lp_src.to_int, lp_cs.jni_id, dw_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TranslateMDISysAccel, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, MSG] }
      # @param hWndClient cast=(HWND)
      # @param lpMsg cast=(LPMSG)
      # 
      # long
      def _translate_mdisys_accel(h_wnd_client, lp_msg)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TranslateMDISysAccel, JNI.env, self.jni_id, h_wnd_client.to_int, lp_msg.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TranslateMessage, [:pointer, :long, :long], :int8
      typesig { [MSG] }
      def _translate_message(lpmsg)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TranslateMessage, JNI.env, self.jni_id, lpmsg.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TransparentBlt, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=dynamic
      # long
      # long
      def _transparent_blt(hdc_dest, n_xorigin_dest, n_yorigin_dest, n_width_dest, h_height_dest, hdc_src, n_xorigin_src, n_yorigin_src, n_width_src, n_height_src, cr_transparent)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TransparentBlt, JNI.env, self.jni_id, hdc_dest.to_int, n_xorigin_dest.to_int, n_yorigin_dest.to_int, n_width_dest.to_int, h_height_dest.to_int, hdc_src.to_int, n_xorigin_src.to_int, n_yorigin_src.to_int, n_width_src.to_int, n_height_src.to_int, cr_transparent.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_TransparentImage, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hdcDest cast=(HDC)
      # @param hSrc cast=(HANDLE)
      # @param TransparentColor cast=(COLORREF)
      # 
      # long
      # long
      def _transparent_image(hdc_dest, dst_x, dst_y, dst_cx, dst_cy, h_src, src_x, src_y, src_cx, src_cy, transparent_color)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_TransparentImage, JNI.env, self.jni_id, hdc_dest.to_int, dst_x.to_int, dst_y.to_int, dst_cx.to_int, dst_cy.to_int, h_src.to_int, src_x.to_int, src_y.to_int, src_cx.to_int, src_cy.to_int, transparent_color.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_UnhookWindowsHookEx, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hhk cast=(HHOOK)
      # long
      def _unhook_windows_hook_ex(hhk)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_UnhookWindowsHookEx, JNI.env, self.jni_id, hhk.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_UnregisterClassW, [:pointer, :long, :long, :int32], :int8
      typesig { [Array.typed(::Java::Char), ::Java::Int] }
      # @param lpClassName cast=(LPWSTR)
      # @param hInstance cast=(HINSTANCE)
      # 
      # long
      def _unregister_class_w(lp_class_name, h_instance)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_UnregisterClassW, JNI.env, self.jni_id, lp_class_name.jni_id, h_instance.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_UnregisterClassA, [:pointer, :long, :long, :int32], :int8
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # @param lpClassName cast=(LPSTR)
      # @param hInstance cast=(HINSTANCE)
      # 
      # long
      def _unregister_class_a(lp_class_name, h_instance)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_UnregisterClassA, JNI.env, self.jni_id, lp_class_name.jni_id, h_instance.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_UpdateLayeredWindow, [:pointer, :long, :int32, :int32, :long, :long, :int32, :long, :int32, :long, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, POINT, SIZE, ::Java::Int, POINT, ::Java::Int, BLENDFUNCTION, ::Java::Int] }
      # @method flags=dynamic
      # @param hwnd cast=(HWND)
      # @param hdcDst cast=(HDC)
      # @param hdcSrc cast=(HDC)
      # @param crKey cast=(COLORREF)
      # 
      # long
      # long
      # long
      def _update_layered_window(hwnd, hdc_dst, ppt_dst, psize, hdc_src, ppt_src, cr_key, pblend, dw_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_UpdateLayeredWindow, JNI.env, self.jni_id, hwnd.to_int, hdc_dst.to_int, ppt_dst.jni_id, psize.jni_id, hdc_src.to_int, ppt_src.jni_id, cr_key.to_int, pblend.jni_id, dw_flags.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_UpdateWindow, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hWnd cast=(HWND)
      # long
      def _update_window(h_wnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_UpdateWindow, JNI.env, self.jni_id, h_wnd.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_ValidateRect, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, RECT] }
      # @param hWnd cast=(HWND)
      # long
      def _validate_rect(h_wnd, lp_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_ValidateRect, JNI.env, self.jni_id, h_wnd.to_int, lp_rect.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VkKeyScanW, [:pointer, :long, :int16], :int16
      typesig { [::Java::Short] }
      # @param ch cast=(WCHAR)
      def _vk_key_scan_w(ch)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VkKeyScanW, JNI.env, self.jni_id, ch.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VkKeyScanA, [:pointer, :long, :int16], :int16
      typesig { [::Java::Short] }
      # @param ch cast=(TCHAR)
      def _vk_key_scan_a(ch)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VkKeyScanA, JNI.env, self.jni_id, ch.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__II, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__II, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__III, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__III, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIJ, [:pointer, :long, :int32, :int32, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIIII_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIIII_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIJJI_3J, [:pointer, :long, :int32, :int32, :int64, :int64, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIJJI_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIIJI_3J, [:pointer, :long, :int32, :int32, :int32, :int64, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIIJI_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIJII_3J, [:pointer, :long, :int32, :int32, :int64, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIJII_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__II_3CII_3I_3I, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__II_3CII_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.jni_id, arg4.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIS_3B_3B_3B, [:pointer, :long, :int32, :int32, :int16, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Short, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIS_3B_3B_3B, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__II_3I, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__II_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__II_3J, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__II_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__II_3B_3I, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__II_3B_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_VtblCall__III_3I_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_VtblCall__III_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIL#{TF_DISPLAYATTRIBUTE.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, TF_DISPLAYATTRIBUTE] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_VtblCall__IIL#{TF_DISPLAYATTRIBUTE.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_WaitMessage, [:pointer, :long], :int8
      typesig { [] }
      def _wait_message
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_WaitMessage, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_WideCharToMultiByte__II_3CI_3BI_3B_3Z, [:pointer, :long, :int32, :int32, :long, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Boolean)] }
      # @param lpWideCharStr cast=(LPCWSTR),flags=no_out critical
      # @param lpMultiByteStr cast=(LPSTR),flags=no_in critical
      # @param lpDefaultChar cast=(LPCSTR)
      # @param lpUsedDefaultChar cast=(LPBOOL)
      def _wide_char_to_multi_byte(code_page, dw_flags, lp_wide_char_str, cch_wide_char, lp_multi_byte_str, cch_multi_byte, lp_default_char, lp_used_default_char)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_WideCharToMultiByte__II_3CI_3BI_3B_3Z, JNI.env, self.jni_id, code_page.to_int, dw_flags.to_int, lp_wide_char_str.jni_id, cch_wide_char.to_int, lp_multi_byte_str.jni_id, cch_multi_byte.to_int, lp_default_char.jni_id, lp_used_default_char.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_WideCharToMultiByte__II_3CIII_3B_3Z, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Boolean)] }
      # @param lpWideCharStr cast=(LPCWSTR),flags=no_out critical
      # @param lpMultiByteStr cast=(LPSTR)
      # @param lpDefaultChar cast=(LPCSTR)
      # @param lpUsedDefaultChar cast=(LPBOOL)
      # 
      # long
      def _wide_char_to_multi_byte(code_page, dw_flags, lp_wide_char_str, cch_wide_char, lp_multi_byte_str, cch_multi_byte, lp_default_char, lp_used_default_char)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_WideCharToMultiByte__II_3CIII_3B_3Z, JNI.env, self.jni_id, code_page.to_int, dw_flags.to_int, lp_wide_char_str.jni_id, cch_wide_char.to_int, lp_multi_byte_str.to_int, cch_multi_byte.to_int, lp_default_char.jni_id, lp_used_default_char.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_WindowFromDC, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hDC cast=(HDC)
      # long
      # long
      def _window_from_dc(h_dc)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_WindowFromDC, JNI.env, self.jni_id, h_dc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_WindowFromPoint, [:pointer, :long, :long], :int32
      typesig { [POINT] }
      # @param lpPoint flags=struct
      # long
      def _window_from_point(lp_point)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_WindowFromPoint, JNI.env, self.jni_id, lp_point.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_win32_OS_wcslen, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param string cast=(const wchar_t *)
      # long
      def wcslen(string)
        JNI.__send__(:Java_org_eclipse_swt_internal_win32_OS_wcslen, JNI.env, self.jni_id, string.to_int)
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
