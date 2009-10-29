require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Ole::Win32
  module OLEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
      include ::Org::Eclipse::Swt
      include_const ::Java::Io, :JavaFile
      include_const ::Org::Eclipse::Swt::Internal::Ole::Win32, :COM
      include_const ::Org::Eclipse::Swt::Internal::Win32, :OS
      include_const ::Org::Eclipse::Swt::Internal::Win32, :TCHAR
    }
  end
  
  # OLE contains all the constants used to create an ActiveX Control or an OLE Document.
  # 
  # <p>Definitions for these constants can be found in MSDN.
  class OLE < OLEImports.const_get :SWT
    include_class_members OLEImports
    
    class_module.module_eval {
      const_set_lazy(:S_FALSE) { 1 }
      const_attr_reader  :S_FALSE
      
      # Used for functions that semantically return a Boolean FALSE result to indicate that the function succeeded.
      const_set_lazy(:S_OK) { 0 }
      const_attr_reader  :S_OK
      
      # Function succeeded.
      const_set_lazy(:E_FAIL) { -2147467259 }
      const_attr_reader  :E_FAIL
      
      # Unspecified failure.
      const_set_lazy(:E_INVALIDARG) { -2147024809 }
      const_attr_reader  :E_INVALIDARG
      
      # Invalid argument
      const_set_lazy(:E_NOINTERFACE) { -2147467262 }
      const_attr_reader  :E_NOINTERFACE
      
      # QueryInterface did not recognize the requested interface.
      const_set_lazy(:E_NOTIMPL) { -2147467263 }
      const_attr_reader  :E_NOTIMPL
      
      # Not implemented
      const_set_lazy(:IID_IUNKNOWN) { "{00000000-0000-0000-C000-000000000046}" }
      const_attr_reader  :IID_IUNKNOWN
      
      # $NON-NLS-1$
      const_set_lazy(:IID_IDISPATCH) { "{00020400-0000-0000-C000-000000000046}" }
      const_attr_reader  :IID_IDISPATCH
      
      # $NON-NLS-1$
      # Verbs that can be invoked on this client
      const_set_lazy(:OLEIVERB_DISCARDUNDOSTATE) { -6 }
      const_attr_reader  :OLEIVERB_DISCARDUNDOSTATE
      
      # close the OLE object and discard the undo state
      const_set_lazy(:OLEIVERB_HIDE) { -3 }
      const_attr_reader  :OLEIVERB_HIDE
      
      # hide the OLE object
      const_set_lazy(:OLEIVERB_INPLACEACTIVATE) { -5 }
      const_attr_reader  :OLEIVERB_INPLACEACTIVATE
      
      # open the OLE for editing in-place
      const_set_lazy(:OLEIVERB_OPEN) { -2 }
      const_attr_reader  :OLEIVERB_OPEN
      
      # open the OLE object for editing in a separate window
      const_set_lazy(:OLEIVERB_PRIMARY) { 0 }
      const_attr_reader  :OLEIVERB_PRIMARY
      
      # opens the OLE object for editing
      const_set_lazy(:OLEIVERB_PROPERTIES) { -7 }
      const_attr_reader  :OLEIVERB_PROPERTIES
      
      # request the OLE object properties dialog
      const_set_lazy(:OLEIVERB_SHOW) { -1 }
      const_attr_reader  :OLEIVERB_SHOW
      
      # show the OLE object
      const_set_lazy(:OLEIVERB_UIACTIVATE) { -4 }
      const_attr_reader  :OLEIVERB_UIACTIVATE
      
      # activate the UI for the OLE object
      const_set_lazy(:PROPERTY_CHANGING) { 0 }
      const_attr_reader  :PROPERTY_CHANGING
      
      const_set_lazy(:PROPERTY_CHANGED) { 1 }
      const_attr_reader  :PROPERTY_CHANGED
      
      # Error code for OleError - No specific error information available
      const_set_lazy(:HRESULT_UNSPECIFIED) { 0 }
      const_attr_reader  :HRESULT_UNSPECIFIED
      
      # Error code for OleError - Failed to create file
      const_set_lazy(:ERROR_CANNOT_CREATE_FILE) { 1000 }
      const_attr_reader  :ERROR_CANNOT_CREATE_FILE
      
      # Error code for OleError - Failed to create Ole Client
      const_set_lazy(:ERROR_CANNOT_CREATE_OBJECT) { 1001 }
      const_attr_reader  :ERROR_CANNOT_CREATE_OBJECT
      
      # Error code for OleError - File does not exist, is not accessible to user or does not have the correct format
      const_set_lazy(:ERROR_CANNOT_OPEN_FILE) { 1002 }
      const_attr_reader  :ERROR_CANNOT_OPEN_FILE
      
      # Error code for OleError - Failed to find requested interface on OLE Object
      const_set_lazy(:ERROR_INTERFACE_NOT_FOUND) { 1003 }
      const_attr_reader  :ERROR_INTERFACE_NOT_FOUND
      
      # Error code for OleError - Class ID not found in registry
      const_set_lazy(:ERROR_INVALID_CLASSID) { 1004 }
      const_attr_reader  :ERROR_INVALID_CLASSID
      
      # Error code for OleError - Failed to get the class factory for the specified classID
      const_set_lazy(:ERROR_CANNOT_ACCESS_CLASSFACTORY) { 1005 }
      const_attr_reader  :ERROR_CANNOT_ACCESS_CLASSFACTORY
      
      # Error code for OleError - Failed to create Licensed instance
      const_set_lazy(:ERROR_CANNOT_CREATE_LICENSED_OBJECT) { 1006 }
      const_attr_reader  :ERROR_CANNOT_CREATE_LICENSED_OBJECT
      
      # Error code for OleError - Out of Memory
      const_set_lazy(:ERROR_OUT_OF_MEMORY) { 1007 }
      const_attr_reader  :ERROR_OUT_OF_MEMORY
      
      # Error code for OleError - Failed to change Variant type
      const_set_lazy(:ERROR_CANNOT_CHANGE_VARIANT_TYPE) { 1010 }
      const_attr_reader  :ERROR_CANNOT_CHANGE_VARIANT_TYPE
      
      # Error code for OleError - Invalid address received for Ole Interface
      const_set_lazy(:ERROR_INVALID_INTERFACE_ADDRESS) { 1011 }
      const_attr_reader  :ERROR_INVALID_INTERFACE_ADDRESS
      
      # Error code for OleError - Unable to find Application
      const_set_lazy(:ERROR_APPLICATION_NOT_FOUND) { 1013 }
      const_attr_reader  :ERROR_APPLICATION_NOT_FOUND
      
      # Error code for OleError - Action can not be performed
      const_set_lazy(:ERROR_ACTION_NOT_PERFORMED) { 1014 }
      const_attr_reader  :ERROR_ACTION_NOT_PERFORMED
      
      const_set_lazy(:OLECMDF_SUPPORTED) { 1 }
      const_attr_reader  :OLECMDF_SUPPORTED
      
      const_set_lazy(:OLECMDF_ENABLED) { 2 }
      const_attr_reader  :OLECMDF_ENABLED
      
      const_set_lazy(:OLECMDF_LATCHED) { 4 }
      const_attr_reader  :OLECMDF_LATCHED
      
      const_set_lazy(:OLECMDF_NINCHED) { 8 }
      const_attr_reader  :OLECMDF_NINCHED
      
      const_set_lazy(:OLECMDTEXTF_NONE) { 0 }
      const_attr_reader  :OLECMDTEXTF_NONE
      
      const_set_lazy(:OLECMDTEXTF_NAME) { 1 }
      const_attr_reader  :OLECMDTEXTF_NAME
      
      const_set_lazy(:OLECMDTEXTF_STATUS) { 2 }
      const_attr_reader  :OLECMDTEXTF_STATUS
      
      const_set_lazy(:OLECMDEXECOPT_DODEFAULT) { 0 }
      const_attr_reader  :OLECMDEXECOPT_DODEFAULT
      
      const_set_lazy(:OLECMDEXECOPT_PROMPTUSER) { 1 }
      const_attr_reader  :OLECMDEXECOPT_PROMPTUSER
      
      const_set_lazy(:OLECMDEXECOPT_DONTPROMPTUSER) { 2 }
      const_attr_reader  :OLECMDEXECOPT_DONTPROMPTUSER
      
      const_set_lazy(:OLECMDEXECOPT_SHOWHELP) { 3 }
      const_attr_reader  :OLECMDEXECOPT_SHOWHELP
      
      const_set_lazy(:OLECMDID_OPEN) { 1 }
      const_attr_reader  :OLECMDID_OPEN
      
      const_set_lazy(:OLECMDID_NEW) { 2 }
      const_attr_reader  :OLECMDID_NEW
      
      const_set_lazy(:OLECMDID_SAVE) { 3 }
      const_attr_reader  :OLECMDID_SAVE
      
      const_set_lazy(:OLECMDID_SAVEAS) { 4 }
      const_attr_reader  :OLECMDID_SAVEAS
      
      const_set_lazy(:OLECMDID_SAVECOPYAS) { 5 }
      const_attr_reader  :OLECMDID_SAVECOPYAS
      
      const_set_lazy(:OLECMDID_PRINT) { 6 }
      const_attr_reader  :OLECMDID_PRINT
      
      const_set_lazy(:OLECMDID_PRINTPREVIEW) { 7 }
      const_attr_reader  :OLECMDID_PRINTPREVIEW
      
      const_set_lazy(:OLECMDID_PAGESETUP) { 8 }
      const_attr_reader  :OLECMDID_PAGESETUP
      
      const_set_lazy(:OLECMDID_SPELL) { 9 }
      const_attr_reader  :OLECMDID_SPELL
      
      const_set_lazy(:OLECMDID_PROPERTIES) { 10 }
      const_attr_reader  :OLECMDID_PROPERTIES
      
      const_set_lazy(:OLECMDID_CUT) { 11 }
      const_attr_reader  :OLECMDID_CUT
      
      const_set_lazy(:OLECMDID_COPY) { 12 }
      const_attr_reader  :OLECMDID_COPY
      
      const_set_lazy(:OLECMDID_PASTE) { 13 }
      const_attr_reader  :OLECMDID_PASTE
      
      const_set_lazy(:OLECMDID_PASTESPECIAL) { 14 }
      const_attr_reader  :OLECMDID_PASTESPECIAL
      
      const_set_lazy(:OLECMDID_UNDO) { 15 }
      const_attr_reader  :OLECMDID_UNDO
      
      const_set_lazy(:OLECMDID_REDO) { 16 }
      const_attr_reader  :OLECMDID_REDO
      
      const_set_lazy(:OLECMDID_SELECTALL) { 17 }
      const_attr_reader  :OLECMDID_SELECTALL
      
      const_set_lazy(:OLECMDID_CLEARSELECTION) { 18 }
      const_attr_reader  :OLECMDID_CLEARSELECTION
      
      const_set_lazy(:OLECMDID_ZOOM) { 19 }
      const_attr_reader  :OLECMDID_ZOOM
      
      const_set_lazy(:OLECMDID_GETZOOMRANGE) { 20 }
      const_attr_reader  :OLECMDID_GETZOOMRANGE
      
      const_set_lazy(:OLECMDID_UPDATECOMMANDS) { 21 }
      const_attr_reader  :OLECMDID_UPDATECOMMANDS
      
      const_set_lazy(:OLECMDID_REFRESH) { 22 }
      const_attr_reader  :OLECMDID_REFRESH
      
      const_set_lazy(:OLECMDID_STOP) { 23 }
      const_attr_reader  :OLECMDID_STOP
      
      const_set_lazy(:OLECMDID_HIDETOOLBARS) { 24 }
      const_attr_reader  :OLECMDID_HIDETOOLBARS
      
      const_set_lazy(:OLECMDID_SETPROGRESSMAX) { 25 }
      const_attr_reader  :OLECMDID_SETPROGRESSMAX
      
      const_set_lazy(:OLECMDID_SETPROGRESSPOS) { 26 }
      const_attr_reader  :OLECMDID_SETPROGRESSPOS
      
      const_set_lazy(:OLECMDID_SETPROGRESSTEXT) { 27 }
      const_attr_reader  :OLECMDID_SETPROGRESSTEXT
      
      const_set_lazy(:OLECMDID_SETTITLE) { 28 }
      const_attr_reader  :OLECMDID_SETTITLE
      
      const_set_lazy(:OLECMDID_SETDOWNLOADSTATE) { 29 }
      const_attr_reader  :OLECMDID_SETDOWNLOADSTATE
      
      const_set_lazy(:OLECMDID_STOPDOWNLOAD) { 30 }
      const_attr_reader  :OLECMDID_STOPDOWNLOAD
      
      # Ole Property Description flags
      
      def varflag_freadonly
        defined?(@@varflag_freadonly) ? @@varflag_freadonly : @@varflag_freadonly= 0x1
      end
      alias_method :attr_varflag_freadonly, :varflag_freadonly
      
      def varflag_freadonly=(value)
        @@varflag_freadonly = value
      end
      alias_method :attr_varflag_freadonly=, :varflag_freadonly=
      
      
      def varflag_fsource
        defined?(@@varflag_fsource) ? @@varflag_fsource : @@varflag_fsource= 0x2
      end
      alias_method :attr_varflag_fsource, :varflag_fsource
      
      def varflag_fsource=(value)
        @@varflag_fsource = value
      end
      alias_method :attr_varflag_fsource=, :varflag_fsource=
      
      
      def varflag_fbindable
        defined?(@@varflag_fbindable) ? @@varflag_fbindable : @@varflag_fbindable= 0x4
      end
      alias_method :attr_varflag_fbindable, :varflag_fbindable
      
      def varflag_fbindable=(value)
        @@varflag_fbindable = value
      end
      alias_method :attr_varflag_fbindable=, :varflag_fbindable=
      
      
      def varflag_frequestedit
        defined?(@@varflag_frequestedit) ? @@varflag_frequestedit : @@varflag_frequestedit= 0x8
      end
      alias_method :attr_varflag_frequestedit, :varflag_frequestedit
      
      def varflag_frequestedit=(value)
        @@varflag_frequestedit = value
      end
      alias_method :attr_varflag_frequestedit=, :varflag_frequestedit=
      
      
      def varflag_fdisplaybind
        defined?(@@varflag_fdisplaybind) ? @@varflag_fdisplaybind : @@varflag_fdisplaybind= 0x10
      end
      alias_method :attr_varflag_fdisplaybind, :varflag_fdisplaybind
      
      def varflag_fdisplaybind=(value)
        @@varflag_fdisplaybind = value
      end
      alias_method :attr_varflag_fdisplaybind=, :varflag_fdisplaybind=
      
      
      def varflag_fdefaultbind
        defined?(@@varflag_fdefaultbind) ? @@varflag_fdefaultbind : @@varflag_fdefaultbind= 0x20
      end
      alias_method :attr_varflag_fdefaultbind, :varflag_fdefaultbind
      
      def varflag_fdefaultbind=(value)
        @@varflag_fdefaultbind = value
      end
      alias_method :attr_varflag_fdefaultbind=, :varflag_fdefaultbind=
      
      
      def varflag_fhidden
        defined?(@@varflag_fhidden) ? @@varflag_fhidden : @@varflag_fhidden= 0x40
      end
      alias_method :attr_varflag_fhidden, :varflag_fhidden
      
      def varflag_fhidden=(value)
        @@varflag_fhidden = value
      end
      alias_method :attr_varflag_fhidden=, :varflag_fhidden=
      
      
      def varflag_frestricted
        defined?(@@varflag_frestricted) ? @@varflag_frestricted : @@varflag_frestricted= 0x80
      end
      alias_method :attr_varflag_frestricted, :varflag_frestricted
      
      def varflag_frestricted=(value)
        @@varflag_frestricted = value
      end
      alias_method :attr_varflag_frestricted=, :varflag_frestricted=
      
      
      def varflag_fdefaultcollelem
        defined?(@@varflag_fdefaultcollelem) ? @@varflag_fdefaultcollelem : @@varflag_fdefaultcollelem= 0x100
      end
      alias_method :attr_varflag_fdefaultcollelem, :varflag_fdefaultcollelem
      
      def varflag_fdefaultcollelem=(value)
        @@varflag_fdefaultcollelem = value
      end
      alias_method :attr_varflag_fdefaultcollelem=, :varflag_fdefaultcollelem=
      
      
      def varflag_fuidefault
        defined?(@@varflag_fuidefault) ? @@varflag_fuidefault : @@varflag_fuidefault= 0x200
      end
      alias_method :attr_varflag_fuidefault, :varflag_fuidefault
      
      def varflag_fuidefault=(value)
        @@varflag_fuidefault = value
      end
      alias_method :attr_varflag_fuidefault=, :varflag_fuidefault=
      
      
      def varflag_fnonbrowsable
        defined?(@@varflag_fnonbrowsable) ? @@varflag_fnonbrowsable : @@varflag_fnonbrowsable= 0x400
      end
      alias_method :attr_varflag_fnonbrowsable, :varflag_fnonbrowsable
      
      def varflag_fnonbrowsable=(value)
        @@varflag_fnonbrowsable = value
      end
      alias_method :attr_varflag_fnonbrowsable=, :varflag_fnonbrowsable=
      
      
      def varflag_freplaceable
        defined?(@@varflag_freplaceable) ? @@varflag_freplaceable : @@varflag_freplaceable= 0x800
      end
      alias_method :attr_varflag_freplaceable, :varflag_freplaceable
      
      def varflag_freplaceable=(value)
        @@varflag_freplaceable = value
      end
      alias_method :attr_varflag_freplaceable=, :varflag_freplaceable=
      
      
      def varflag_fimmediatebind
        defined?(@@varflag_fimmediatebind) ? @@varflag_fimmediatebind : @@varflag_fimmediatebind= 0x1000
      end
      alias_method :attr_varflag_fimmediatebind, :varflag_fimmediatebind
      
      def varflag_fimmediatebind=(value)
        @@varflag_fimmediatebind = value
      end
      alias_method :attr_varflag_fimmediatebind=, :varflag_fimmediatebind=
      
      # Ole Property Description kind
      
      def var_perinstance
        defined?(@@var_perinstance) ? @@var_perinstance : @@var_perinstance= 0
      end
      alias_method :attr_var_perinstance, :var_perinstance
      
      def var_perinstance=(value)
        @@var_perinstance = value
      end
      alias_method :attr_var_perinstance=, :var_perinstance=
      
      
      def var_static
        defined?(@@var_static) ? @@var_static : @@var_static= 1
      end
      alias_method :attr_var_static, :var_static
      
      def var_static=(value)
        @@var_static = value
      end
      alias_method :attr_var_static=, :var_static=
      
      
      def var_const
        defined?(@@var_const) ? @@var_const : @@var_const= 2
      end
      alias_method :attr_var_const, :var_const
      
      def var_const=(value)
        @@var_const = value
      end
      alias_method :attr_var_const=, :var_const=
      
      
      def var_dispatch
        defined?(@@var_dispatch) ? @@var_dispatch : @@var_dispatch= 3
      end
      alias_method :attr_var_dispatch, :var_dispatch
      
      def var_dispatch=(value)
        @@var_dispatch = value
      end
      alias_method :attr_var_dispatch=, :var_dispatch=
      
      # Ole Parameter Description flags
      
      def idlflag_none
        defined?(@@idlflag_none) ? @@idlflag_none : @@idlflag_none= 0
      end
      alias_method :attr_idlflag_none, :idlflag_none
      
      def idlflag_none=(value)
        @@idlflag_none = value
      end
      alias_method :attr_idlflag_none=, :idlflag_none=
      
      
      def idlflag_fin
        defined?(@@idlflag_fin) ? @@idlflag_fin : @@idlflag_fin= 1
      end
      alias_method :attr_idlflag_fin, :idlflag_fin
      
      def idlflag_fin=(value)
        @@idlflag_fin = value
      end
      alias_method :attr_idlflag_fin=, :idlflag_fin=
      
      
      def idlflag_fout
        defined?(@@idlflag_fout) ? @@idlflag_fout : @@idlflag_fout= 2
      end
      alias_method :attr_idlflag_fout, :idlflag_fout
      
      def idlflag_fout=(value)
        @@idlflag_fout = value
      end
      alias_method :attr_idlflag_fout=, :idlflag_fout=
      
      
      def idlflag_flcid
        defined?(@@idlflag_flcid) ? @@idlflag_flcid : @@idlflag_flcid= 4
      end
      alias_method :attr_idlflag_flcid, :idlflag_flcid
      
      def idlflag_flcid=(value)
        @@idlflag_flcid = value
      end
      alias_method :attr_idlflag_flcid=, :idlflag_flcid=
      
      
      def idlflag_fretval
        defined?(@@idlflag_fretval) ? @@idlflag_fretval : @@idlflag_fretval= 8
      end
      alias_method :attr_idlflag_fretval, :idlflag_fretval
      
      def idlflag_fretval=(value)
        @@idlflag_fretval = value
      end
      alias_method :attr_idlflag_fretval=, :idlflag_fretval=
      
      # Ole Description types
      const_set_lazy(:VT_BOOL) { 11 }
      const_attr_reader  :VT_BOOL
      
      # Boolean; True=-1, False=0.
      const_set_lazy(:VT_BSTR) { 8 }
      const_attr_reader  :VT_BSTR
      
      # Binary String.
      const_set_lazy(:VT_BYREF) { 16384 }
      const_attr_reader  :VT_BYREF
      
      # By reference - must be combined with one of the other VT values
      const_set_lazy(:VT_CY) { 6 }
      const_attr_reader  :VT_CY
      
      # Currency.
      const_set_lazy(:VT_DATE) { 7 }
      const_attr_reader  :VT_DATE
      
      # Date.
      const_set_lazy(:VT_DISPATCH) { 9 }
      const_attr_reader  :VT_DISPATCH
      
      # IDispatch
      const_set_lazy(:VT_EMPTY) { 0 }
      const_attr_reader  :VT_EMPTY
      
      # Not specified.
      const_set_lazy(:VT_ERROR) { 10 }
      const_attr_reader  :VT_ERROR
      
      # Scodes.
      const_set_lazy(:VT_I2) { 2 }
      const_attr_reader  :VT_I2
      
      # 2-byte signed int.
      const_set_lazy(:VT_I4) { 3 }
      const_attr_reader  :VT_I4
      
      # 4-byte signed int.
      const_set_lazy(:VT_NULL) { 1 }
      const_attr_reader  :VT_NULL
      
      # Null.
      const_set_lazy(:VT_R4) { 4 }
      const_attr_reader  :VT_R4
      
      # 4-byte real.
      const_set_lazy(:VT_R8) { 5 }
      const_attr_reader  :VT_R8
      
      # 8-byte real.
      const_set_lazy(:VT_UI1) { 17 }
      const_attr_reader  :VT_UI1
      
      # Unsigned char.
      const_set_lazy(:VT_UI4) { 19 }
      const_attr_reader  :VT_UI4
      
      # Unsigned int.
      const_set_lazy(:VT_UNKNOWN) { 13 }
      const_attr_reader  :VT_UNKNOWN
      
      # IUnknown FAR*.
      const_set_lazy(:VT_VARIANT) { 12 }
      const_attr_reader  :VT_VARIANT
      
      # VARIANT FAR*.
      const_set_lazy(:VT_PTR) { 26 }
      const_attr_reader  :VT_PTR
      
      const_set_lazy(:VT_USERDEFINED) { 29 }
      const_attr_reader  :VT_USERDEFINED
      
      const_set_lazy(:VT_HRESULT) { 25 }
      const_attr_reader  :VT_HRESULT
      
      const_set_lazy(:VT_DECIMAL) { 14 }
      const_attr_reader  :VT_DECIMAL
      
      const_set_lazy(:VT_I1) { 16 }
      const_attr_reader  :VT_I1
      
      const_set_lazy(:VT_UI2) { 18 }
      const_attr_reader  :VT_UI2
      
      const_set_lazy(:VT_I8) { 20 }
      const_attr_reader  :VT_I8
      
      const_set_lazy(:VT_UI8) { 21 }
      const_attr_reader  :VT_UI8
      
      const_set_lazy(:VT_INT) { 22 }
      const_attr_reader  :VT_INT
      
      const_set_lazy(:VT_UINT) { 23 }
      const_attr_reader  :VT_UINT
      
      const_set_lazy(:VT_VOID) { 24 }
      const_attr_reader  :VT_VOID
      
      const_set_lazy(:VT_SAFEARRAY) { 27 }
      const_attr_reader  :VT_SAFEARRAY
      
      const_set_lazy(:VT_CARRAY) { 28 }
      const_attr_reader  :VT_CARRAY
      
      const_set_lazy(:VT_LPSTR) { 30 }
      const_attr_reader  :VT_LPSTR
      
      const_set_lazy(:VT_LPWSTR) { 31 }
      const_attr_reader  :VT_LPWSTR
      
      const_set_lazy(:VT_RECORD) { 36 }
      const_attr_reader  :VT_RECORD
      
      const_set_lazy(:VT_FILETIME) { 64 }
      const_attr_reader  :VT_FILETIME
      
      const_set_lazy(:VT_BLOB) { 65 }
      const_attr_reader  :VT_BLOB
      
      const_set_lazy(:VT_STREAM) { 66 }
      const_attr_reader  :VT_STREAM
      
      const_set_lazy(:VT_STORAGE) { 67 }
      const_attr_reader  :VT_STORAGE
      
      const_set_lazy(:VT_STREAMED_OBJECT) { 68 }
      const_attr_reader  :VT_STREAMED_OBJECT
      
      const_set_lazy(:VT_STORED_OBJECT) { 69 }
      const_attr_reader  :VT_STORED_OBJECT
      
      const_set_lazy(:VT_BLOB_OBJECT) { 70 }
      const_attr_reader  :VT_BLOB_OBJECT
      
      const_set_lazy(:VT_CF) { 71 }
      const_attr_reader  :VT_CF
      
      const_set_lazy(:VT_CLSID) { 72 }
      const_attr_reader  :VT_CLSID
      
      const_set_lazy(:VT_VERSIONED_STREAM) { 73 }
      const_attr_reader  :VT_VERSIONED_STREAM
      
      const_set_lazy(:VT_BSTR_BLOB) { 0xfff }
      const_attr_reader  :VT_BSTR_BLOB
      
      const_set_lazy(:VT_VECTOR) { 0x1000 }
      const_attr_reader  :VT_VECTOR
      
      const_set_lazy(:VT_ARRAY) { 0x2000 }
      const_attr_reader  :VT_ARRAY
      
      # Ole Function Description Invoke Kind values
      const_set_lazy(:INVOKE_FUNC) { 1 }
      const_attr_reader  :INVOKE_FUNC
      
      const_set_lazy(:INVOKE_PROPERTYGET) { 2 }
      const_attr_reader  :INVOKE_PROPERTYGET
      
      const_set_lazy(:INVOKE_PROPERTYPUT) { 4 }
      const_attr_reader  :INVOKE_PROPERTYPUT
      
      const_set_lazy(:INVOKE_PROPERTYPUTREF) { 8 }
      const_attr_reader  :INVOKE_PROPERTYPUTREF
      
      # Ole Function Description function kind
      const_set_lazy(:FUNC_VIRTUAL) { 0 }
      const_attr_reader  :FUNC_VIRTUAL
      
      const_set_lazy(:FUNC_PUREVIRTUAL) { 1 }
      const_attr_reader  :FUNC_PUREVIRTUAL
      
      const_set_lazy(:FUNC_NONVIRTUAL) { 2 }
      const_attr_reader  :FUNC_NONVIRTUAL
      
      const_set_lazy(:FUNC_STATIC) { 3 }
      const_attr_reader  :FUNC_STATIC
      
      const_set_lazy(:FUNC_DISPATCH) { 4 }
      const_attr_reader  :FUNC_DISPATCH
      
      # Ole Function Description function flags
      const_set_lazy(:FUNCFLAG_FRESTRICTED) { 1 }
      const_attr_reader  :FUNCFLAG_FRESTRICTED
      
      const_set_lazy(:FUNCFLAG_FSOURCE) { 0x2 }
      const_attr_reader  :FUNCFLAG_FSOURCE
      
      const_set_lazy(:FUNCFLAG_FBINDABLE) { 0x4 }
      const_attr_reader  :FUNCFLAG_FBINDABLE
      
      const_set_lazy(:FUNCFLAG_FREQUESTEDIT) { 0x8 }
      const_attr_reader  :FUNCFLAG_FREQUESTEDIT
      
      const_set_lazy(:FUNCFLAG_FDISPLAYBIND) { 0x10 }
      const_attr_reader  :FUNCFLAG_FDISPLAYBIND
      
      const_set_lazy(:FUNCFLAG_FDEFAULTBIND) { 0x20 }
      const_attr_reader  :FUNCFLAG_FDEFAULTBIND
      
      const_set_lazy(:FUNCFLAG_FHIDDEN) { 0x40 }
      const_attr_reader  :FUNCFLAG_FHIDDEN
      
      const_set_lazy(:FUNCFLAG_FUSESGETLASTERROR) { 0x80 }
      const_attr_reader  :FUNCFLAG_FUSESGETLASTERROR
      
      const_set_lazy(:FUNCFLAG_FDEFAULTCOLLELEM) { 0x100 }
      const_attr_reader  :FUNCFLAG_FDEFAULTCOLLELEM
      
      const_set_lazy(:FUNCFLAG_FUIDEFAULT) { 0x200 }
      const_attr_reader  :FUNCFLAG_FUIDEFAULT
      
      const_set_lazy(:FUNCFLAG_FNONBROWSABLE) { 0x400 }
      const_attr_reader  :FUNCFLAG_FNONBROWSABLE
      
      const_set_lazy(:FUNCFLAG_FREPLACEABLE) { 0x800 }
      const_attr_reader  :FUNCFLAG_FREPLACEABLE
      
      const_set_lazy(:FUNCFLAG_FIMMEDIATEBIND) { 0x1000 }
      const_attr_reader  :FUNCFLAG_FIMMEDIATEBIND
      
      # Ole Function Description calling convention
      const_set_lazy(:CC_FASTCALL) { 0 }
      const_attr_reader  :CC_FASTCALL
      
      const_set_lazy(:CC_CDECL) { 1 }
      const_attr_reader  :CC_CDECL
      
      const_set_lazy(:CC_MSCPASCAL) { 2 }
      const_attr_reader  :CC_MSCPASCAL
      
      const_set_lazy(:CC_PASCAL) { 2 }
      const_attr_reader  :CC_PASCAL
      
      const_set_lazy(:CC_MACPASCAL) { 3 }
      const_attr_reader  :CC_MACPASCAL
      
      const_set_lazy(:CC_STDCALL) { 4 }
      const_attr_reader  :CC_STDCALL
      
      const_set_lazy(:CC_FPFASTCALL) { 5 }
      const_attr_reader  :CC_FPFASTCALL
      
      const_set_lazy(:CC_SYSCALL) { 6 }
      const_attr_reader  :CC_SYSCALL
      
      const_set_lazy(:CC_MPWCDECL) { 7 }
      const_attr_reader  :CC_MPWCDECL
      
      const_set_lazy(:CC_MPWPASCAL) { 8 }
      const_attr_reader  :CC_MPWPASCAL
      
      const_set_lazy(:CC_MAX) { 9 }
      const_attr_reader  :CC_MAX
      
      const_set_lazy(:ERROR_NOT_IMPLEMENTED_MSG) { "Required functionality not currently supported." }
      const_attr_reader  :ERROR_NOT_IMPLEMENTED_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_CANNOT_CREATE_FILE_MSG) { "Failed to create file." }
      const_attr_reader  :ERROR_CANNOT_CREATE_FILE_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_CANNOT_CREATE_OBJECT_MSG) { "Failed to create Ole Client." }
      const_attr_reader  :ERROR_CANNOT_CREATE_OBJECT_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_CANNOT_OPEN_FILE_MSG) { "File does not exist, is not accessible to user or does not have the correct format." }
      const_attr_reader  :ERROR_CANNOT_OPEN_FILE_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_INTERFACE_NOT_FOUND_MSG) { "Failed to find requested interface on OLE Object." }
      const_attr_reader  :ERROR_INTERFACE_NOT_FOUND_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_INVALID_CLASSID_MSG) { "Class ID not found in registry" }
      const_attr_reader  :ERROR_INVALID_CLASSID_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_CANNOT_ACCESS_CLASSFACTORY_MSG) { "Failed to get the class factory for the specified classID" }
      const_attr_reader  :ERROR_CANNOT_ACCESS_CLASSFACTORY_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_CANNOT_CREATE_LICENSED_OBJECT_MSG) { "Failed to create Licensed instance" }
      const_attr_reader  :ERROR_CANNOT_CREATE_LICENSED_OBJECT_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_OUT_OF_MEMORY_MSG) { "Out of Memory" }
      const_attr_reader  :ERROR_OUT_OF_MEMORY_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_CANNOT_CHANGE_VARIANT_TYPE_MSG) { "Failed to change Variant type" }
      const_attr_reader  :ERROR_CANNOT_CHANGE_VARIANT_TYPE_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_INVALID_INTERFACE_ADDRESS_MSG) { "Invalid address received for Ole Interface." }
      const_attr_reader  :ERROR_INVALID_INTERFACE_ADDRESS_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_APPLICATION_NOT_FOUND_MSG) { "Unable to find Application." }
      const_attr_reader  :ERROR_APPLICATION_NOT_FOUND_MSG
      
      # $NON-NLS-1$
      const_set_lazy(:ERROR_ACTION_NOT_PERFORMED_MSG) { "Action can not be performed." }
      const_attr_reader  :ERROR_ACTION_NOT_PERFORMED_MSG
      
      typesig { [::Java::Int] }
      # $NON-NLS-1$
      def error(code)
        error(code, 0)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def error(code, hresult)
        case (code)
        # Illegal Arguments (non-fatal)
        # SWT Errors (non-fatal)
        # OS Failure/Limit (fatal, may occur only on some platforms)
        when ERROR_INVALID_INTERFACE_ADDRESS
          raise IllegalArgumentException.new(ERROR_INVALID_INTERFACE_ADDRESS_MSG)
        when ERROR_CANNOT_CREATE_FILE
          msg = ERROR_CANNOT_CREATE_FILE_MSG
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTException.new(code, msg)
        when ERROR_CANNOT_CREATE_OBJECT
          msg = ERROR_CANNOT_CREATE_OBJECT_MSG
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTException.new(code, msg) # $NON-NLS-1$
        when ERROR_CANNOT_OPEN_FILE
          msg = ERROR_CANNOT_OPEN_FILE_MSG
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTException.new(code, msg)
        when ERROR_INTERFACE_NOT_FOUND
          msg = ERROR_INTERFACE_NOT_FOUND_MSG
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTException.new(code, msg)
        when ERROR_INVALID_CLASSID
          msg = ERROR_INVALID_CLASSID_MSG
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTException.new(code, msg)
        when ERROR_CANNOT_ACCESS_CLASSFACTORY
          msg = ERROR_CANNOT_ACCESS_CLASSFACTORY_MSG
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTException.new(code, msg)
        when ERROR_CANNOT_CREATE_LICENSED_OBJECT
          msg = ERROR_CANNOT_CREATE_LICENSED_OBJECT_MSG
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTException.new(code, msg)
        when ERROR_CANNOT_CHANGE_VARIANT_TYPE
          msg = ERROR_CANNOT_CHANGE_VARIANT_TYPE_MSG
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTException.new(code, msg)
        when ERROR_APPLICATION_NOT_FOUND
          msg = ERROR_APPLICATION_NOT_FOUND_MSG
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTException.new(code, msg)
        when ERROR_ACTION_NOT_PERFORMED
          msg = ERROR_ACTION_NOT_PERFORMED_MSG
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTException.new(code, msg)
        when ERROR_OUT_OF_MEMORY
          msg = ERROR_ACTION_NOT_PERFORMED_MSG
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTError.new(code, msg)
        end
        # Unknown/Undefined Error
        SWT.error(code)
      end
      
      typesig { [String] }
      # Finds the OLE program id that is associated with an extension.
      # The extension may or may not begin with a '.'.  On platforms
      # that do not support OLE, an empty string is returned.
      # 
      # @param extension the program extension
      # @return a string that is the OLE program id or an empty string
      # 
      # @exception IllegalArgumentException <ul>
      # <li>ERROR_NULL_ARGUMENT when extension is null</li>
      # </ul>
      def find_program_id(extension)
        if ((extension).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if ((extension.length).equal?(0))
          return ""
        end # $NON-NLS-1$
        if (!(extension.char_at(0)).equal?(Character.new(?..ord)))
          extension = "." + extension
        end # $NON-NLS-1$
        # Use the character encoding for the default locale
        extension_key = TCHAR.new(0, extension, true)
        result = get_key_value(extension_key)
        if (!(result).nil?)
          # look for "<programID>\NotInsertable"
          not_insertable_key = TCHAR.new(0, result + "\\NotInsertable", true) # $NON-NLS-1$
          if (get_key_exists(not_insertable_key))
            return ""
          end # $NON-NLS-1$
          # look for "<programID>\Insertable"
          insertable_key = TCHAR.new(0, result + "\\Insertable", true) # $NON-NLS-1$
          if (get_key_exists(insertable_key))
            return result
          end
          # look for "<programID>\protocol\StdFileEditing\server"
          server_key = TCHAR.new(0, result + "\\protocol\\StdFileEditing\\server", true) # $NON-NLS-1$
          if (get_key_exists(server_key))
            return result
          end
        end
        return "" # $NON-NLS-1$
      end
      
      typesig { [TCHAR] }
      def get_key_value(key)
        # long
        # long
        phk_result = Array.typed(::Java::Int).new(1) { 0 }
        if (!(OS._reg_open_key_ex(OS::HKEY_CLASSES_ROOT, key, 0, OS::KEY_READ, phk_result)).equal?(0))
          return nil
        end
        result = nil
        lpcb_data = Array.typed(::Java::Int).new(1) { 0 }
        if ((OS._reg_query_value_ex(phk_result[0], nil, 0, nil, nil, lpcb_data)).equal?(0))
          length_ = lpcb_data[0] / TCHAR.attr_sizeof
          if ((length_).equal?(0))
            result = ""
          else
            # Use the character encoding for the default locale
            lp_data = TCHAR.new(0, length_)
            if ((OS._reg_query_value_ex(phk_result[0], nil, 0, nil, lp_data, lpcb_data)).equal?(0))
              length_ = Math.max(0, lp_data.length - 1)
              result = RJava.cast_to_string(lp_data.to_s(0, length_))
            end
          end
        end
        if (!(phk_result[0]).equal?(0))
          OS._reg_close_key(phk_result[0])
        end
        return result
      end
      
      typesig { [TCHAR] }
      def get_key_exists(key)
        # long
        # long
        phk_result = Array.typed(::Java::Int).new(1) { 0 }
        if (!(OS._reg_open_key_ex(OS::HKEY_CLASSES_ROOT, key, 0, OS::KEY_READ, phk_result)).equal?(0))
          return false
        end
        if (!(phk_result[0]).equal?(0))
          OS._reg_close_key(phk_result[0])
        end
        return true
      end
      
      typesig { [JavaFile] }
      # Returns true if the specified file has an OLE Storage format.
      # 
      # Note all empty files (regardless of extension) will return false.
      # 
      # @param file the file to be checked
      # 
      # @return true if this file has an OLE Storage format
      def is_ole_file(file)
        if ((file).nil? || !file.exists || file.is_directory)
          return false
        end
        return ((COM._stg_is_storage_file((RJava.cast_to_string(file.get_absolute_path) + "\0").to_char_array)).equal?(COM::S_OK))
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__ole, :initialize
  end
  
end
