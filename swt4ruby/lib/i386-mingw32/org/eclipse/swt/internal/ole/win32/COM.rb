require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module COMImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class COM < COMImports.const_get :OS
    include_class_members COMImports
    
    class_module.module_eval {
      # GUID Constants
      const_set_lazy(:CLSID_DragDropHelper) { COM._iidfrom_string("{4657278A-411B-11d2-839A-00C04FD918D0}") }
      const_attr_reader  :CLSID_DragDropHelper
      
      # $NON-NLS-1$
      const_set_lazy(:IID_IDropTargetHelper) { COM._iidfrom_string("{4657278B-411B-11d2-839A-00C04FD918D0}") }
      const_attr_reader  :IID_IDropTargetHelper
      
      # $NON-NLS-1$
      const_set_lazy(:IID_IDragSourceHelper) { COM._iidfrom_string("{DE5BF786-477A-11d2-839D-00C04FD918D0}") }
      const_attr_reader  :IID_IDragSourceHelper
      
      # $NON-NLS-1$
      const_set_lazy(:IID_IDragSourceHelper2) { COM._iidfrom_string("{83E07D0D-0C5F-4163-BF1A-60B274051E40}") }
      const_attr_reader  :IID_IDragSourceHelper2
      
      # $NON-NLS-1$
      const_set_lazy(:IIDJavaBeansBridge) { COM._iidfrom_string("{8AD9C840-044E-11D1-B3E9-00805F499D93}") }
      const_attr_reader  :IIDJavaBeansBridge
      
      # $NON-NLS-1$
      const_set_lazy(:IIDShockwaveActiveXControl) { COM._iidfrom_string("{166B1BCA-3F9C-11CF-8075-444553540000}") }
      const_attr_reader  :IIDShockwaveActiveXControl
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIEditorSiteTime) { _iidfrom_string("{6BD2AEFE-7876-45e6-A6E7-3BFCDF6540AA}") }
      const_attr_reader  :IIDIEditorSiteTime
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIEditorSiteProperty) { _iidfrom_string("{D381A1F4-2326-4f3c-AFB9-B7537DB9E238}") }
      const_attr_reader  :IIDIEditorSiteProperty
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIEditorBaseProperty) { _iidfrom_string("{61E55B0B-2647-47c4-8C89-E736EF15D636}") }
      const_attr_reader  :IIDIEditorBaseProperty
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIEditorSite) { _iidfrom_string("{CDD88AB9-B01D-426E-B0F0-30973E9A074B}") }
      const_attr_reader  :IIDIEditorSite
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIEditorService) { _iidfrom_string("{BEE283FE-7B42-4FF3-8232-0F07D43ABCF1}") }
      const_attr_reader  :IIDIEditorService
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIEditorManager) { _iidfrom_string("{EFDE08C4-BE87-4B1A-BF84-15FC30207180}") }
      const_attr_reader  :IIDIEditorManager
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIAccessible) { _iidfrom_string("{618736E0-3C3D-11CF-810C-00AA00389B71}") }
      const_attr_reader  :IIDIAccessible
      
      # $NON-NLS-1$
      # public static final GUID IIDIAccessibleHandler = IIDFromString("{03022430-ABC4-11D0-BDE2-00AA001A1953}"); //$NON-NLS-1$
      # public static final GUID IIDIAccessor = IIDFromString("{0C733A8C-2A1C-11CE-ADE5-00AA0044773D}"); //$NON-NLS-1$
      const_set_lazy(:IIDIAdviseSink) { _iidfrom_string("{0000010F-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIAdviseSink
      
      # $NON-NLS-1$
      # public static final GUID IIDIAdviseSink2 = IIDFromString("{00000125-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIBindCtx = IIDFromString("{0000000E-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      const_set_lazy(:IIDIClassFactory) { _iidfrom_string("{00000001-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIClassFactory
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIClassFactory2) { _iidfrom_string("{B196B28F-BAB4-101A-B69C-00AA00341D07}") }
      const_attr_reader  :IIDIClassFactory2
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIConnectionPoint) { _iidfrom_string("{B196B286-BAB4-101A-B69C-00AA00341D07}") }
      const_attr_reader  :IIDIConnectionPoint
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIConnectionPointContainer) { _iidfrom_string("{B196B284-BAB4-101A-B69C-00AA00341D07}") }
      const_attr_reader  :IIDIConnectionPointContainer
      
      # $NON-NLS-1$
      # public static final GUID IIDICreateErrorInfo = IIDFromString("{22F03340-547D-101B-8E65-08002B2BD119}"); //$NON-NLS-1$
      # public static final GUID IIDICreateTypeInfo = IIDFromString("{00020405-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDICreateTypeLib = IIDFromString("{00020406-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIDataAdviseHolder = IIDFromString("{00000110-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      const_set_lazy(:IIDIDataObject) { _iidfrom_string("{0000010E-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIDataObject
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIDispatch) { _iidfrom_string("{00020400-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIDispatch
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIDocHostUIHandler) { _iidfrom_string("{BD3F23C0-D43E-11CF-893B-00AA00BDCE1A}") }
      const_attr_reader  :IIDIDocHostUIHandler
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIDocHostShowUI) { _iidfrom_string("{C4D244B0-D43E-11CF-893B-00AA00BDCE1A}") }
      const_attr_reader  :IIDIDocHostShowUI
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIDropSource) { _iidfrom_string("{00000121-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIDropSource
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIDropTarget) { _iidfrom_string("{00000122-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIDropTarget
      
      # $NON-NLS-1$
      # public static final GUID IIDIEnumConnectionPoints = IIDFromString("{B196B285-BAB4-101A-B69C-00AA00341D07}"); //$NON-NLS-1$
      # public static final GUID IIDIEnumConnections = IIDFromString("{B196B287-BAB4-101A-B69C-00AA00341D07}"); //$NON-NLS-1$
      const_set_lazy(:IIDIEnumFORMATETC) { _iidfrom_string("{00000103-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIEnumFORMATETC
      
      # $NON-NLS-1$
      # public static final GUID IIDIEnumMoniker = IIDFromString("{00000102-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIEnumOLEVERB = IIDFromString("{00000104-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIEnumSTATDATA = IIDFromString("{00000105-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIEnumSTATSTG = IIDFromString("{0000000D-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIEnumString = IIDFromString("{00000101-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIEnumUnknown = IIDFromString("{00000100-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      const_set_lazy(:IIDIEnumVARIANT) { _iidfrom_string("{00020404-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIEnumVARIANT
      
      # $NON-NLS-1$
      # public static final GUID IIDIErrorInfo = IIDFromString("{1CF2B120-547D-101B-8E65-08002B2BD119}"); //$NON-NLS-1$
      # public static final GUID IIDIErrorLog = IIDFromString("{3127CA40-446E-11CE-8135-00AA004BB851}"); //$NON-NLS-1$
      # public static final GUID IIDIExternalConnection = IIDFromString("{00000019-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      const_set_lazy(:IIDIFont) { _iidfrom_string("{BEF6E002-A874-101A-8BBA-00AA00300CAB}") }
      const_attr_reader  :IIDIFont
      
      # $NON-NLS-1$
      # public static final GUID IIDIFontDisp = IIDFromString("{BEF6E003-A874-101A-8BBA-00AA00300CAB}"); //$NON-NLS-1$
      # GUID
      # IIDFromString(
      const_set_lazy(:IIDIHTMLDocumentEvents2) { "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}" }
      const_attr_reader  :IIDIHTMLDocumentEvents2
      
      # )
      const_set_lazy(:IIDIInternetSecurityManager) { _iidfrom_string("{79eac9ee-baf9-11ce-8c82-00aa004ba90b}") }
      const_attr_reader  :IIDIInternetSecurityManager
      
      # $NON-NLS-1$
      # public static final GUID IIDILockBytes = IIDFromString("{0000000A-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIMalloc = IIDFromString("{00000002-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIMallocSpy = IIDFromString("{0000001D-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIMarshal = IIDFromString("{00000003-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIMessageFilter = IIDFromString("{00000016-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIMoniker = IIDFromString("{0000000F-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIOleAdviseHolder = IIDFromString("{00000111-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIOleCache = IIDFromString("{0000011E-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIOleCache2 = IIDFromString("{00000128-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIOleCacheControl = IIDFromString("{00000129-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      const_set_lazy(:IIDIOleClientSite) { _iidfrom_string("{00000118-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIOleClientSite
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleCommandTarget) { _iidfrom_string("{B722BCCB-4E68-101B-A2BC-00AA00404770}") }
      const_attr_reader  :IIDIOleCommandTarget
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleContainer) { _iidfrom_string("{0000011B-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIOleContainer
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleControl) { _iidfrom_string("{B196B288-BAB4-101A-B69C-00AA00341D07}") }
      const_attr_reader  :IIDIOleControl
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleControlSite) { _iidfrom_string("{B196B289-BAB4-101A-B69C-00AA00341D07}") }
      const_attr_reader  :IIDIOleControlSite
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleDocument) { _iidfrom_string("{B722BCC5-4E68-101B-A2BC-00AA00404770}") }
      const_attr_reader  :IIDIOleDocument
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleDocumentSite) { _iidfrom_string("{B722BCC7-4E68-101B-A2BC-00AA00404770}") }
      const_attr_reader  :IIDIOleDocumentSite
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleInPlaceActiveObject) { _iidfrom_string("{00000117-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIOleInPlaceActiveObject
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleInPlaceFrame) { _iidfrom_string("{00000116-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIOleInPlaceFrame
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleInPlaceObject) { _iidfrom_string("{00000113-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIOleInPlaceObject
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleInPlaceSite) { _iidfrom_string("{00000119-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIOleInPlaceSite
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleInPlaceUIWindow) { _iidfrom_string("{00000115-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIOleInPlaceUIWindow
      
      # $NON-NLS-1$
      # public static final GUID IIDIOleItemContainer = IIDFromString("{0000011C-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      const_set_lazy(:IIDIOleLink) { _iidfrom_string("{0000011D-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIOleLink
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleObject) { _iidfrom_string("{00000112-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIOleObject
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIOleWindow) { _iidfrom_string("{00000114-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIOleWindow
      
      # $NON-NLS-1$
      # public static final GUID IIDIParseDisplayName = IIDFromString("{0000011A-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIPerPropertyBrowsing = IIDFromString("{376BD3AA-3845-101B-84ED-08002B2EC713}"); //$NON-NLS-1$
      const_set_lazy(:IIDIPersist) { _iidfrom_string("{0000010C-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIPersist
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIPersistFile) { _iidfrom_string("{0000010B-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIPersistFile
      
      # $NON-NLS-1$
      # public static final GUID IIDIPersistMemory = IIDFromString("{BD1AE5E0-A6AE-11CE-BD37-504200C10000}"); //$NON-NLS-1$
      # public static final GUID IIDIPersistPropertyBag = IIDFromString("{37D84F60-42CB-11CE-8135-00AA004BB851}"); //$NON-NLS-1$
      const_set_lazy(:IIDIPersistStorage) { _iidfrom_string("{0000010A-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIPersistStorage
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIPersistStream) { _iidfrom_string("{00000109-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIPersistStream
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIPersistStreamInit) { _iidfrom_string("{7FD52380-4E07-101B-AE2D-08002B2EC713}") }
      const_attr_reader  :IIDIPersistStreamInit
      
      # $NON-NLS-1$
      # public static final GUID IIDIPicture = IIDFromString("{7BF80980-BF32-101A-8BBB-00AA00300CAB}"); //$NON-NLS-1$
      # public static final GUID IIDIPictureDisp = IIDFromString("{7BF80981-BF32-101A-8BBB-00AA00300CAB}"); //$NON-NLS-1$
      # public static final GUID IIDIPropertyBag = IIDFromString("{55272A00-42CB-11CE-8135-00AA004BB851}"); //$NON-NLS-1$
      const_set_lazy(:IIDIPropertyNotifySink) { _iidfrom_string("{9BFBBC02-EFF1-101A-84ED-00AA00341D07}") }
      const_attr_reader  :IIDIPropertyNotifySink
      
      # $NON-NLS-1$
      # public static final GUID IIDIPropertyPage = IIDFromString("{B196B28D-BAB4-101A-B69C-00AA00341D07}"); //$NON-NLS-1$
      # public static final GUID IIDIPropertyPage2 = IIDFromString("{01E44665-24AC-101B-84ED-08002B2EC713}"); //$NON-NLS-1$
      # public static final GUID IIDIPropertyPageSite = IIDFromString("{B196B28C-BAB4-101A-B69C-00AA00341D07}"); //$NON-NLS-1$
      const_set_lazy(:IIDIProvideClassInfo) { _iidfrom_string("{B196B283-BAB4-101A-B69C-00AA00341D07}") }
      const_attr_reader  :IIDIProvideClassInfo
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIProvideClassInfo2) { _iidfrom_string("{A6BC3AC0-DBAA-11CE-9DE3-00AA004BB851}") }
      const_attr_reader  :IIDIProvideClassInfo2
      
      # $NON-NLS-1$
      # public static final GUID IIDIPSFactoryBuffer = IIDFromString("{D5F569D0-593B-101A-B569-08002B2DBF7A}"); //$NON-NLS-1$
      # public static final GUID IIDIRootStorage = IIDFromString("{00000012-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIROTData = IIDFromString("{F29F6BC0-5021-11CE-AA15-00006901293F}"); //$NON-NLS-1$
      # public static final GUID IIDIRpcChannelBuffer = IIDFromString("{D5F56B60-593B-101A-B569-08002B2DBF7A}"); //$NON-NLS-1$
      # public static final GUID IIDIRpcProxyBuffer = IIDFromString("{D5F56A34-593B-101A-B569-08002B2DBF7A}"); //$NON-NLS-1$
      # public static final GUID IIDIRpcStubBuffer = IIDFromString("{D5F56AFC-593B-101A-B569-08002B2DBF7A}"); //$NON-NLS-1$
      # public static final GUID IIDIRunnableObject = IIDFromString("{00000126-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDIRunningObjectTable = IIDFromString("{00000010-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDISimpleFrameSite = IIDFromString("{742B0E01-14E6-101B-914E-00AA00300CAB}"); //$NON-NLS-1$
      const_set_lazy(:IIDIServiceProvider) { _iidfrom_string("{6d5140c1-7436-11ce-8034-00aa006009fa}") }
      const_attr_reader  :IIDIServiceProvider
      
      # $NON-NLS-1$
      const_set_lazy(:IIDISpecifyPropertyPages) { _iidfrom_string("{B196B28B-BAB4-101A-B69C-00AA00341D07}") }
      const_attr_reader  :IIDISpecifyPropertyPages
      
      # $NON-NLS-1$
      # public static final GUID IIDIStdMarshalInfo = IIDFromString("{00000018-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      const_set_lazy(:IIDIStorage) { _iidfrom_string("{0000000B-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIStorage
      
      # $NON-NLS-1$
      const_set_lazy(:IIDIStream) { _iidfrom_string("{0000000C-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIStream
      
      # $NON-NLS-1$
      # public static final GUID IIDISupportErrorInfo = IIDFromString("{DF0B3D60-548F-101B-8E65-08002B2BD119}"); //$NON-NLS-1$
      # public static final GUID IIDITypeComp = IIDFromString("{00020403-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      # public static final GUID IIDITypeLib = IIDFromString("{00020402-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      const_set_lazy(:IIDIUnknown) { _iidfrom_string("{00000000-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIUnknown
      
      # $NON-NLS-1$
      # public static final GUID IIDIViewObject = IIDFromString("{0000010D-0000-0000-C000-000000000046}"); //$NON-NLS-1$
      const_set_lazy(:IIDIViewObject2) { _iidfrom_string("{00000127-0000-0000-C000-000000000046}") }
      const_attr_reader  :IIDIViewObject2
      
      # $NON-NLS-1$
      const_set_lazy(:CGID_DocHostCommandHandler) { _iidfrom_string("{f38bc242-b950-11d1-8918-00c04fc2c836}") }
      const_attr_reader  :CGID_DocHostCommandHandler
      
      # $NON-NLS-1$
      const_set_lazy(:CGID_Explorer) { _iidfrom_string("{000214D0-0000-0000-C000-000000000046}") }
      const_attr_reader  :CGID_Explorer
      
      # $NON-NLS-1$
      # Constants
      # public static final int ADVF_DATAONSTOP = 64;
      # public static final int ADVF_NODATA = 1;
      # public static final int ADVF_ONLYONCE = 2;
      # public static final int ADVF_PRIMEFIRST = 4;
      # public static final int ADVFCACHE_FORCEBUILTIN = 16;
      # public static final int ADVFCACHE_NOHANDLER = 8;
      # public static final int ADVFCACHE_ONSAVE = 32;
      const_set_lazy(:CF_TEXT) { 1 }
      const_attr_reader  :CF_TEXT
      
      const_set_lazy(:CF_BITMAP) { 2 }
      const_attr_reader  :CF_BITMAP
      
      const_set_lazy(:CF_METAFILEPICT) { 3 }
      const_attr_reader  :CF_METAFILEPICT
      
      const_set_lazy(:CF_SYLK) { 4 }
      const_attr_reader  :CF_SYLK
      
      const_set_lazy(:CF_DIF) { 5 }
      const_attr_reader  :CF_DIF
      
      const_set_lazy(:CF_TIFF) { 6 }
      const_attr_reader  :CF_TIFF
      
      const_set_lazy(:CF_OEMTEXT) { 7 }
      const_attr_reader  :CF_OEMTEXT
      
      const_set_lazy(:CF_DIB) { 8 }
      const_attr_reader  :CF_DIB
      
      const_set_lazy(:CF_PALETTE) { 9 }
      const_attr_reader  :CF_PALETTE
      
      const_set_lazy(:CF_PENDATA) { 10 }
      const_attr_reader  :CF_PENDATA
      
      const_set_lazy(:CF_RIFF) { 11 }
      const_attr_reader  :CF_RIFF
      
      const_set_lazy(:CF_WAVE) { 12 }
      const_attr_reader  :CF_WAVE
      
      const_set_lazy(:CF_UNICODETEXT) { 13 }
      const_attr_reader  :CF_UNICODETEXT
      
      const_set_lazy(:CF_ENHMETAFILE) { 14 }
      const_attr_reader  :CF_ENHMETAFILE
      
      const_set_lazy(:CF_HDROP) { 15 }
      const_attr_reader  :CF_HDROP
      
      const_set_lazy(:CF_LOCALE) { 16 }
      const_attr_reader  :CF_LOCALE
      
      const_set_lazy(:CF_MAX) { 17 }
      const_attr_reader  :CF_MAX
      
      const_set_lazy(:CLSCTX_INPROC_HANDLER) { 2 }
      const_attr_reader  :CLSCTX_INPROC_HANDLER
      
      const_set_lazy(:CLSCTX_INPROC_SERVER) { 1 }
      const_attr_reader  :CLSCTX_INPROC_SERVER
      
      const_set_lazy(:CLSCTX_LOCAL_SERVER) { 4 }
      const_attr_reader  :CLSCTX_LOCAL_SERVER
      
      const_set_lazy(:CLSCTX_REMOTE_SERVER) { 16 }
      const_attr_reader  :CLSCTX_REMOTE_SERVER
      
      const_set_lazy(:CO_E_CLASSSTRING) { -2147221005 }
      const_attr_reader  :CO_E_CLASSSTRING
      
      # public static final int COINIT_APARTMENTTHREADED = 2;
      # public static final int COINIT_DISABLE_OLE1DDE = 4;
      # public static final int COINIT_MULTITHREADED = 0;
      # public static final int COINIT_SPEED_OVER_MEMORY = 8;
      const_set_lazy(:DATADIR_GET) { 1 }
      const_attr_reader  :DATADIR_GET
      
      const_set_lazy(:DATADIR_SET) { 2 }
      const_attr_reader  :DATADIR_SET
      
      const_set_lazy(:DISP_E_EXCEPTION) { -0x7ffdfff7 }
      const_attr_reader  :DISP_E_EXCEPTION
      
      const_set_lazy(:DISP_E_MEMBERNOTFOUND) { -2147352573 }
      const_attr_reader  :DISP_E_MEMBERNOTFOUND
      
      const_set_lazy(:DISP_E_UNKNOWNINTERFACE) { -0x7ffdffff }
      const_attr_reader  :DISP_E_UNKNOWNINTERFACE
      
      # public static final int DISPID_AMBIENT_APPEARANCE = -716;
      # public static final int DISPID_AMBIENT_AUTOCLIP = -715;
      const_set_lazy(:DISPID_AMBIENT_BACKCOLOR) { -701 }
      const_attr_reader  :DISPID_AMBIENT_BACKCOLOR
      
      # public static final int DISPID_AMBIENT_CHARSET = -727;
      # public static final int DISPID_AMBIENT_CODEPAGE = -725;
      # public static final int DISPID_AMBIENT_DISPLAYASDEFAULT = -713;
      # public static final int DISPID_AMBIENT_DISPLAYNAME = -702;
      const_set_lazy(:DISPID_AMBIENT_FONT) { -703 }
      const_attr_reader  :DISPID_AMBIENT_FONT
      
      const_set_lazy(:DISPID_AMBIENT_FORECOLOR) { -704 }
      const_attr_reader  :DISPID_AMBIENT_FORECOLOR
      
      const_set_lazy(:DISPID_AMBIENT_LOCALEID) { -705 }
      const_attr_reader  :DISPID_AMBIENT_LOCALEID
      
      const_set_lazy(:DISPID_AMBIENT_MESSAGEREFLECT) { -706 }
      const_attr_reader  :DISPID_AMBIENT_MESSAGEREFLECT
      
      const_set_lazy(:DISPID_AMBIENT_OFFLINEIFNOTCONNECTED) { -5501 }
      const_attr_reader  :DISPID_AMBIENT_OFFLINEIFNOTCONNECTED
      
      # public static final int DISPID_AMBIENT_PALETTE = -726;
      # public static final int DISPID_AMBIENT_RIGHTTOLEFT = -732;
      # public static final int DISPID_AMBIENT_SCALEUNITS = -707;
      const_set_lazy(:DISPID_AMBIENT_SHOWGRABHANDLES) { -711 }
      const_attr_reader  :DISPID_AMBIENT_SHOWGRABHANDLES
      
      const_set_lazy(:DISPID_AMBIENT_SHOWHATCHING) { -712 }
      const_attr_reader  :DISPID_AMBIENT_SHOWHATCHING
      
      const_set_lazy(:DISPID_AMBIENT_SILENT) { -5502 }
      const_attr_reader  :DISPID_AMBIENT_SILENT
      
      const_set_lazy(:DISPID_AMBIENT_SUPPORTSMNEMONICS) { -714 }
      const_attr_reader  :DISPID_AMBIENT_SUPPORTSMNEMONICS
      
      # public static final int DISPID_AMBIENT_TEXTALIGN = -708;
      # public static final int DISPID_AMBIENT_TOPTOBOTTOM = -733;
      # public static final int DISPID_AMBIENT_TRANSFERPRIORITY = -728;
      const_set_lazy(:DISPID_AMBIENT_UIDEAD) { -710 }
      const_attr_reader  :DISPID_AMBIENT_UIDEAD
      
      const_set_lazy(:DISPID_AMBIENT_USERMODE) { -709 }
      const_attr_reader  :DISPID_AMBIENT_USERMODE
      
      const_set_lazy(:DISPID_BACKCOLOR) { -501 }
      const_attr_reader  :DISPID_BACKCOLOR
      
      const_set_lazy(:DISPID_FONT) { -512 }
      const_attr_reader  :DISPID_FONT
      
      const_set_lazy(:DISPID_FONT_BOLD) { 3 }
      const_attr_reader  :DISPID_FONT_BOLD
      
      const_set_lazy(:DISPID_FONT_CHARSET) { 8 }
      const_attr_reader  :DISPID_FONT_CHARSET
      
      const_set_lazy(:DISPID_FONT_ITALIC) { 4 }
      const_attr_reader  :DISPID_FONT_ITALIC
      
      const_set_lazy(:DISPID_FONT_NAME) { 0 }
      const_attr_reader  :DISPID_FONT_NAME
      
      const_set_lazy(:DISPID_FONT_SIZE) { 2 }
      const_attr_reader  :DISPID_FONT_SIZE
      
      const_set_lazy(:DISPID_FONT_STRIKE) { 6 }
      const_attr_reader  :DISPID_FONT_STRIKE
      
      const_set_lazy(:DISPID_FONT_UNDER) { 5 }
      const_attr_reader  :DISPID_FONT_UNDER
      
      const_set_lazy(:DISPID_FONT_WEIGHT) { 7 }
      const_attr_reader  :DISPID_FONT_WEIGHT
      
      const_set_lazy(:DISPID_FORECOLOR) { -513 }
      const_attr_reader  :DISPID_FORECOLOR
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONDBLCLICK) { -0x259 }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONDBLCLICK
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONDRAGEND) { -0x7ffeffeb }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONDRAGEND
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONDRAGSTART) { -0x7ffefff5 }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONDRAGSTART
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONKEYDOWN) { -0x25a }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONKEYDOWN
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONKEYPRESS) { -0x25b }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONKEYPRESS
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONKEYUP) { -0x25c }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONKEYUP
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOUT) { -0x7ffefff7 }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOUT
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOVER) { -0x7ffefff8 }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOVER
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONMOUSEMOVE) { -0x25e }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONMOUSEMOVE
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONMOUSEDOWN) { -0x25d }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONMOUSEDOWN
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONMOUSEUP) { -0x25f }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONMOUSEUP
      
      const_set_lazy(:DISPID_HTMLDOCUMENTEVENTS_ONMOUSEWHEEL) { 1033 }
      const_attr_reader  :DISPID_HTMLDOCUMENTEVENTS_ONMOUSEWHEEL
      
      # public static final int DISPID_READYSTATE = -525;
      # public static final int DISPID_READYSTATECHANGE = -609;
      const_set_lazy(:DRAGDROP_S_DROP) { 0x40100 }
      const_attr_reader  :DRAGDROP_S_DROP
      
      const_set_lazy(:DRAGDROP_S_CANCEL) { 0x40101 }
      const_attr_reader  :DRAGDROP_S_CANCEL
      
      const_set_lazy(:DRAGDROP_S_USEDEFAULTCURSORS) { 0x40102 }
      const_attr_reader  :DRAGDROP_S_USEDEFAULTCURSORS
      
      const_set_lazy(:DROPEFFECT_NONE) { 0 }
      const_attr_reader  :DROPEFFECT_NONE
      
      const_set_lazy(:DROPEFFECT_COPY) { 1 }
      const_attr_reader  :DROPEFFECT_COPY
      
      const_set_lazy(:DROPEFFECT_MOVE) { 2 }
      const_attr_reader  :DROPEFFECT_MOVE
      
      const_set_lazy(:DROPEFFECT_LINK) { 4 }
      const_attr_reader  :DROPEFFECT_LINK
      
      const_set_lazy(:DROPEFFECT_SCROLL) { -0x80000000 }
      const_attr_reader  :DROPEFFECT_SCROLL
      
      const_set_lazy(:DSH_ALLOWDROPDESCRIPTIONTEXT) { 0x1 }
      const_attr_reader  :DSH_ALLOWDROPDESCRIPTIONTEXT
      
      const_set_lazy(:DV_E_FORMATETC) { -2147221404 }
      const_attr_reader  :DV_E_FORMATETC
      
      const_set_lazy(:DV_E_STGMEDIUM) { -2147221402 }
      const_attr_reader  :DV_E_STGMEDIUM
      
      const_set_lazy(:DV_E_TYMED) { -2147221399 }
      const_attr_reader  :DV_E_TYMED
      
      const_set_lazy(:DVASPECT_CONTENT) { 1 }
      const_attr_reader  :DVASPECT_CONTENT
      
      # public static final int DVASPECT_DOCPRINT = 8;
      # public static final int DVASPECT_ICON = 4;
      # public static final int DVASPECT_THUMBNAIL = 2;
      const_set_lazy(:E_FAIL) { -2147467259 }
      const_attr_reader  :E_FAIL
      
      const_set_lazy(:E_INVALIDARG) { -2147024809 }
      const_attr_reader  :E_INVALIDARG
      
      const_set_lazy(:E_NOINTERFACE) { -2147467262 }
      const_attr_reader  :E_NOINTERFACE
      
      const_set_lazy(:E_NOTIMPL) { -2147467263 }
      const_attr_reader  :E_NOTIMPL
      
      const_set_lazy(:E_NOTSUPPORTED) { -0x7ffbff00 }
      const_attr_reader  :E_NOTSUPPORTED
      
      # public static final int E_NOTLICENSED = -2147221230;
      const_set_lazy(:E_OUTOFMEMORY) { -2147024882 }
      const_attr_reader  :E_OUTOFMEMORY
      
      # public static final int E_POINTER = -2147467261;
      const_set_lazy(:GMEM_FIXED) { 0 }
      const_attr_reader  :GMEM_FIXED
      
      # public static final int GMEM_MOVABLE = 2;
      # public static final int GMEM_NODISCARD = 32;
      const_set_lazy(:GMEM_ZEROINIT) { 64 }
      const_attr_reader  :GMEM_ZEROINIT
      
      const_set_lazy(:GUIDKIND_DEFAULT_SOURCE_DISP_IID) { 1 }
      const_attr_reader  :GUIDKIND_DEFAULT_SOURCE_DISP_IID
      
      const_set_lazy(:IMPLTYPEFLAG_FDEFAULT) { 1 }
      const_attr_reader  :IMPLTYPEFLAG_FDEFAULT
      
      # public static final int IMPLTYPEFLAG_FDEFAULTVTABLE = 2048;
      const_set_lazy(:IMPLTYPEFLAG_FRESTRICTED) { 4 }
      const_attr_reader  :IMPLTYPEFLAG_FRESTRICTED
      
      const_set_lazy(:IMPLTYPEFLAG_FSOURCE) { 2 }
      const_attr_reader  :IMPLTYPEFLAG_FSOURCE
      
      const_set_lazy(:LOCALE_SYSTEM_DEFAULT) { 1024 }
      const_attr_reader  :LOCALE_SYSTEM_DEFAULT
      
      const_set_lazy(:LOCALE_USER_DEFAULT) { 2048 }
      const_attr_reader  :LOCALE_USER_DEFAULT
      
      # public static final int MEMCTX_TASK = 1;
      # public static final int OLEACTIVATEAUTO = 3;
      # public static final int OLEACTIVATEDOUBLECLICK = 2;
      # public static final int OLEACTIVATEGETFOCUS = 1;
      # public static final int OLEACTIVATEMANUAL = 0;
      # public static final int OLEAUTOMATIC = 0;
      # public static final int OLECHANGED = 0;
      const_set_lazy(:OLECLOSE_NOSAVE) { 1 }
      const_attr_reader  :OLECLOSE_NOSAVE
      
      # public static final int OLECLOSE_PROMPTSAVE = 2;
      const_set_lazy(:OLECLOSE_SAVEIFDIRTY) { 0 }
      const_attr_reader  :OLECLOSE_SAVEIFDIRTY
      
      # public static final int OLECLOSED = 2;
      # public static final int OLECONTF_EMBEDDINGS = 1;
      # public static final int OLECONTF_LINKS = 2;
      # public static final int OLECONTF_ONLYIFRUNNING = 16;
      # public static final int OLECONTF_ONLYUSER = 8;
      # public static final int OLECONTF_OTHERS = 4;
      # public static final int OLEDEACTIVATEMANUAL = 1;
      # public static final int OLEDEACTIVATEONLOSEFOCUS = 0;
      # public static final int OLEDECBORDER = 1;
      # public static final int OLEDECBORDERANDNIBS = 3;
      # public static final int OLEDECNIBS = 2;
      # public static final int OLEDECNONE = 0;
      # public static final int OLEDISPLAYCONTENT = 0;
      # public static final int OLEDISPLAYICON = 1;
      # public static final int OLEEITHER = 2;
      const_set_lazy(:OLEEMBEDDED) { 1 }
      const_attr_reader  :OLEEMBEDDED
      
      # public static final int OLEFROZEN = 1;
      const_set_lazy(:OLEIVERB_DISCARDUNDOSTATE) { -6 }
      const_attr_reader  :OLEIVERB_DISCARDUNDOSTATE
      
      # public static final int OLEIVERB_HIDE = -3;
      const_set_lazy(:OLEIVERB_INPLACEACTIVATE) { -5 }
      const_attr_reader  :OLEIVERB_INPLACEACTIVATE
      
      # public static final int OLEIVERB_OPEN = -2;
      const_set_lazy(:OLEIVERB_PRIMARY) { 0 }
      const_attr_reader  :OLEIVERB_PRIMARY
      
      # public static final int OLEIVERB_PROPERTIES = -7;
      # public static final int OLEIVERB_SHOW = -1;
      # public static final int OLEIVERB_UIACTIVATE = -4;
      const_set_lazy(:OLELINKED) { 0 }
      const_attr_reader  :OLELINKED
      
      # public static final int OLEMANUAL = 2;
      # public static final int OLEMISC_ACTIVATEWHENVISIBLE = 256;
      # public static final int OLEMISC_ACTSLIKEBUTTON = 4096;
      # public static final int OLEMISC_ACTSLIKELABEL = 8192;
      # public static final int OLEMISC_ALIGNABLE = 32768;
      # public static final int OLEMISC_ALWAYSRUN = 2048;
      # public static final int OLEMISC_CANLINKBYOLE1 = 32;
      # public static final int OLEMISC_CANTLINKINSIDE = 16;
      # public static final int OLEMISC_IGNOREACTIVATEWHENVISIBLE = 524288;
      # public static final int OLEMISC_IMEMODE = 262144;
      # public static final int OLEMISC_INSERTNOTREPLACE = 4;
      # public static final int OLEMISC_INSIDEOUT = 128;
      # public static final int OLEMISC_INVISIBLEATRUNTIME = 1024;
      # public static final int OLEMISC_ISLINKOBJECT = 64;
      # public static final int OLEMISC_NOUIACTIVATE = 16384;
      # public static final int OLEMISC_ONLYICONIC = 2;
      # public static final int OLEMISC_RECOMPOSEONRESIZE = 1;
      # public static final int OLEMISC_RENDERINGISDEVICEINDEPENDENT = 512;
      # public static final int OLEMISC_SETCLIENTSITEFIRST = 131072;
      # public static final int OLEMISC_SIMPLEFRAME = 65536;
      # public static final int OLEMISC_STATIC = 8;
      # public static final int OLEMISC_SUPPORTSMULTILEVELUNDO = 2097152;
      # public static final int OLEMISC_WANTSTOMENUMERGE = 1048576;
      # public static final int OLENONE = 3;
      # public static final int OLERENAMED = 3;
      # public static final int OLERENDER_ASIS = 3;
      const_set_lazy(:OLERENDER_DRAW) { 1 }
      const_attr_reader  :OLERENDER_DRAW
      
      # public static final int OLERENDER_FORMAT = 2;
      # public static final int OLERENDER_NONE = 0;
      # public static final int OLESAVED = 1;
      # public static final int OLESIZEAUTOSIZE = 2;
      # public static final int OLESIZECLIP = 0;
      # public static final int OLESIZESTRETCH = 1;
      # public static final int OLESIZEZOOM = 3;
      # public static final int OLEWHICHMK_CONTAINER = 1;
      # public static final int OLEWHICHMK_OBJFULL = 3;
      # public static final int OLEWHICHMK_OBJREL = 2;
      const_set_lazy(:S_FALSE) { 1 }
      const_attr_reader  :S_FALSE
      
      const_set_lazy(:S_OK) { 0 }
      const_attr_reader  :S_OK
      
      const_set_lazy(:STG_E_FILENOTFOUND) { -0x7ffcfffe }
      const_attr_reader  :STG_E_FILENOTFOUND
      
      const_set_lazy(:STG_S_CONVERTED) { 0x30200 }
      const_attr_reader  :STG_S_CONVERTED
      
      # public static final int STGC_CONSOLIDATE = 8;
      # public static final int STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE = 4;
      const_set_lazy(:STGC_DEFAULT) { 0 }
      const_attr_reader  :STGC_DEFAULT
      
      # public static final int STGC_ONLYIFCURRENT = 2;
      # public static final int STGC_OVERWRITE = 1;
      const_set_lazy(:STGM_CONVERT) { 0x20000 }
      const_attr_reader  :STGM_CONVERT
      
      const_set_lazy(:STGM_CREATE) { 0x1000 }
      const_attr_reader  :STGM_CREATE
      
      const_set_lazy(:STGM_DELETEONRELEASE) { 0x4000000 }
      const_attr_reader  :STGM_DELETEONRELEASE
      
      const_set_lazy(:STGM_DIRECT) { 0x0 }
      const_attr_reader  :STGM_DIRECT
      
      const_set_lazy(:STGM_DIRECT_SWMR) { 0x400000 }
      const_attr_reader  :STGM_DIRECT_SWMR
      
      const_set_lazy(:STGM_FAILIFTHERE) { 0x0 }
      const_attr_reader  :STGM_FAILIFTHERE
      
      const_set_lazy(:STGM_NOSCRATCH) { 0x100000 }
      const_attr_reader  :STGM_NOSCRATCH
      
      const_set_lazy(:STGM_NOSNAPSHOT) { 0x200000 }
      const_attr_reader  :STGM_NOSNAPSHOT
      
      const_set_lazy(:STGM_PRIORITY) { 0x40000 }
      const_attr_reader  :STGM_PRIORITY
      
      const_set_lazy(:STGM_READ) { 0x0 }
      const_attr_reader  :STGM_READ
      
      const_set_lazy(:STGM_READWRITE) { 0x2 }
      const_attr_reader  :STGM_READWRITE
      
      const_set_lazy(:STGM_SHARE_DENY_NONE) { 0x40 }
      const_attr_reader  :STGM_SHARE_DENY_NONE
      
      const_set_lazy(:STGM_SHARE_DENY_READ) { 0x30 }
      const_attr_reader  :STGM_SHARE_DENY_READ
      
      const_set_lazy(:STGM_SHARE_DENY_WRITE) { 0x20 }
      const_attr_reader  :STGM_SHARE_DENY_WRITE
      
      const_set_lazy(:STGM_SHARE_EXCLUSIVE) { 0x10 }
      const_attr_reader  :STGM_SHARE_EXCLUSIVE
      
      const_set_lazy(:STGM_SIMPLE) { 0x8000000 }
      const_attr_reader  :STGM_SIMPLE
      
      const_set_lazy(:STGM_TRANSACTED) { 0x10000 }
      const_attr_reader  :STGM_TRANSACTED
      
      const_set_lazy(:STGM_WRITE) { 0x1 }
      const_attr_reader  :STGM_WRITE
      
      const_set_lazy(:STGTY_STORAGE) { 1 }
      const_attr_reader  :STGTY_STORAGE
      
      const_set_lazy(:STGTY_STREAM) { 2 }
      const_attr_reader  :STGTY_STREAM
      
      const_set_lazy(:STGTY_LOCKBYTES) { 3 }
      const_attr_reader  :STGTY_LOCKBYTES
      
      const_set_lazy(:STGTY_PROPERTY) { 4 }
      const_attr_reader  :STGTY_PROPERTY
      
      # public static final int TYMED_ENHMF = 64;
      # public static final int TYMED_FILE = 2;
      # public static final int TYMED_GDI = 16;
      const_set_lazy(:TYMED_HGLOBAL) { 1 }
      const_attr_reader  :TYMED_HGLOBAL
      
      # public static final int TYMED_ISTORAGE = 8;
      # public static final int TYMED_ISTREAM = 4;
      # public static final int TYMED_MFPICT = 32;
      # public static final int TYMED_NULL = 0;
      const_set_lazy(:DISPATCH_METHOD) { 0x1 }
      const_attr_reader  :DISPATCH_METHOD
      
      const_set_lazy(:DISPATCH_PROPERTYGET) { 0x2 }
      const_attr_reader  :DISPATCH_PROPERTYGET
      
      const_set_lazy(:DISPATCH_PROPERTYPUT) { 0x4 }
      const_attr_reader  :DISPATCH_PROPERTYPUT
      
      const_set_lazy(:DISPATCH_PROPERTYPUTREF) { 0x8 }
      const_attr_reader  :DISPATCH_PROPERTYPUTREF
      
      # public static final short DISPID_CONSTRUCTOR = -6;
      # public static final short DISPID_DESTRUCTOR = -7;
      # public static final short DISPID_EVALUATE = -5;
      # public static final short DISPID_NEWENUM = -4;
      const_set_lazy(:DISPID_PROPERTYPUT) { -3 }
      const_attr_reader  :DISPID_PROPERTYPUT
      
      # public static final short DISPID_UNKNOWN = -1;
      # public static final short DISPID_VALUE = 0;
      const_set_lazy(:VT_BOOL) { 11 }
      const_attr_reader  :VT_BOOL
      
      const_set_lazy(:VT_BSTR) { 8 }
      const_attr_reader  :VT_BSTR
      
      const_set_lazy(:VT_BYREF) { 16384 }
      const_attr_reader  :VT_BYREF
      
      const_set_lazy(:VT_CY) { 6 }
      const_attr_reader  :VT_CY
      
      const_set_lazy(:VT_DATE) { 7 }
      const_attr_reader  :VT_DATE
      
      const_set_lazy(:VT_DISPATCH) { 9 }
      const_attr_reader  :VT_DISPATCH
      
      const_set_lazy(:VT_EMPTY) { 0 }
      const_attr_reader  :VT_EMPTY
      
      const_set_lazy(:VT_ERROR) { 10 }
      const_attr_reader  :VT_ERROR
      
      const_set_lazy(:VT_I1) { 16 }
      const_attr_reader  :VT_I1
      
      const_set_lazy(:VT_I2) { 2 }
      const_attr_reader  :VT_I2
      
      const_set_lazy(:VT_I4) { 3 }
      const_attr_reader  :VT_I4
      
      const_set_lazy(:VT_I8) { 20 }
      const_attr_reader  :VT_I8
      
      const_set_lazy(:VT_NULL) { 1 }
      const_attr_reader  :VT_NULL
      
      const_set_lazy(:VT_R4) { 4 }
      const_attr_reader  :VT_R4
      
      const_set_lazy(:VT_R8) { 5 }
      const_attr_reader  :VT_R8
      
      const_set_lazy(:VT_UI1) { 17 }
      const_attr_reader  :VT_UI1
      
      const_set_lazy(:VT_UI2) { 18 }
      const_attr_reader  :VT_UI2
      
      const_set_lazy(:VT_UI4) { 19 }
      const_attr_reader  :VT_UI4
      
      const_set_lazy(:VT_UNKNOWN) { 13 }
      const_attr_reader  :VT_UNKNOWN
      
      const_set_lazy(:VT_VARIANT) { 12 }
      const_attr_reader  :VT_VARIANT
      
      const_set_lazy(:VARIANT_TRUE) { -1 }
      const_attr_reader  :VARIANT_TRUE
      
      const_set_lazy(:VARIANT_FALSE) { 0 }
      const_attr_reader  :VARIANT_FALSE
      
      typesig { [String] }
      def _iidfrom_string(lpsz)
        length_ = lpsz.length
        buffer = CharArray.new(length_ + 1)
        lpsz.get_chars(0, length_, buffer, 0)
        lpiid = GUID.new
        if ((COM._iidfrom_string(buffer, lpiid)).equal?(COM::S_OK))
          return lpiid
        end
        return nil
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_CLSIDFromProgID, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Char), GUID] }
      # Natives
      def _clsidfrom_prog_id(lpsz_prog_id, pclsid)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_CLSIDFromProgID, JNI.env, self.jni_id, lpsz_prog_id.jni_id, pclsid.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_CLSIDFromString, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Char), GUID] }
      def _clsidfrom_string(lpsz, pclsid)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_CLSIDFromString, JNI.env, self.jni_id, lpsz.jni_id, pclsid.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_CoCreateInstance, [:pointer, :long, :long, :int32, :int32, :long, :long], :int32
      typesig { [GUID, ::Java::Int, ::Java::Int, GUID, Array.typed(::Java::Int)] }
      # long
      # long
      def _co_create_instance(rclsid, p_unk_outer, dw_cls_context, riid, ppv)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_CoCreateInstance, JNI.env, self.jni_id, rclsid.jni_id, p_unk_outer.to_int, dw_cls_context.to_int, riid.jni_id, ppv.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_CoFreeUnusedLibraries, [:pointer, :long], :void
      typesig { [] }
      def _co_free_unused_libraries
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_CoFreeUnusedLibraries, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_CoGetClassObject, [:pointer, :long, :long, :int32, :int32, :long, :long], :int32
      typesig { [GUID, ::Java::Int, ::Java::Int, GUID, Array.typed(::Java::Int)] }
      # long
      # long
      def _co_get_class_object(rclsid, dw_cls_context, p_server_info, riid, ppv)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_CoGetClassObject, JNI.env, self.jni_id, rclsid.jni_id, dw_cls_context.to_int, p_server_info.to_int, riid.jni_id, ppv.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_CoLockObjectExternal, [:pointer, :long, :int32, :int8, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean] }
      # long
      def _co_lock_object_external(p_unk, f_lock, f_last_unlock_releases)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_CoLockObjectExternal, JNI.env, self.jni_id, p_unk.to_int, f_lock ? 1 : 0, f_last_unlock_releases ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_CoTaskMemAlloc, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _co_task_mem_alloc(cb)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_CoTaskMemAlloc, JNI.env, self.jni_id, cb.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_CoTaskMemFree, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _co_task_mem_free(pv)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_CoTaskMemFree, JNI.env, self.jni_id, pv.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_DoDragDrop, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def _do_drag_drop(p_data_object, p_drop_source, dw_okeffect, pdw_effect)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_DoDragDrop, JNI.env, self.jni_id, p_data_object.to_int, p_drop_source.to_int, dw_okeffect.to_int, pdw_effect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_GetClassFile, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Char), GUID] }
      def _get_class_file(sz_file_name, clsid)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_GetClassFile, JNI.env, self.jni_id, sz_file_name.jni_id, clsid.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_IIDFromString, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Char), GUID] }
      def _iidfrom_string(lpsz, lpiid)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_IIDFromString, JNI.env, self.jni_id, lpsz.jni_id, lpiid.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_IsEqualGUID, [:pointer, :long, :long, :long], :int8
      typesig { [GUID, GUID] }
      def _is_equal_guid(rguid1, rguid2)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_IsEqualGUID, JNI.env, self.jni_id, rguid1.jni_id, rguid2.jni_id) != 0
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__IL#{FORMATETC.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, FORMATETC, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__IL#{FORMATETC.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__IL#{GUID.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GUID, ::Java::Int] }
      # long
      def _move_memory(destination_ptr, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__IL#{GUID.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination_ptr.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__IL#{OLEINPLACEFRAMEINFO.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, OLEINPLACEFRAMEINFO, ::Java::Int] }
      # long
      def _move_memory(destination_ptr, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__IL#{OLEINPLACEFRAMEINFO.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination_ptr.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__IL#{STATSTG.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, STATSTG, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__IL#{STATSTG.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__IL#{STGMEDIUM.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, STGMEDIUM, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__IL#{STGMEDIUM.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.to_int, source.jni_id, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{STGMEDIUM.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [STGMEDIUM, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{STGMEDIUM.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{DISPPARAMS.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [DISPPARAMS, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{DISPPARAMS.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{FORMATETC.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [FORMATETC, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{FORMATETC.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{GUID.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GUID, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{GUID.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{STATSTG.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [STATSTG, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{STATSTG.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{TYPEATTR.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [TYPEATTR, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source_ptr, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{TYPEATTR.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{RECT.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [RECT, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{RECT.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{FUNCDESC.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [FUNCDESC, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{FUNCDESC.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{VARDESC.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [VARDESC, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{VARDESC.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{VARIANT.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [VARIANT, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source, length_)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_MoveMemory__L#{VARIANT.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleCreate, [:pointer, :long, :long, :long, :int32, :long, :int32, :int32, :long], :int32
      typesig { [GUID, GUID, ::Java::Int, FORMATETC, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def _ole_create(rclsid, riid, renderopt, p_format_etc, p_client_site, p_stg, ppv_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleCreate, JNI.env, self.jni_id, rclsid.jni_id, riid.jni_id, renderopt.to_int, p_format_etc.jni_id, p_client_site.to_int, p_stg.to_int, ppv_object.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleCreateFromFile, [:pointer, :long, :long, :long, :long, :int32, :long, :int32, :int32, :long], :int32
      typesig { [GUID, Array.typed(::Java::Char), GUID, ::Java::Int, FORMATETC, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def _ole_create_from_file(rclsid, lpsz_file_name, riid, renderopt, p_format_etc, p_client_site, p_stg, ppv_obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleCreateFromFile, JNI.env, self.jni_id, rclsid.jni_id, lpsz_file_name.jni_id, riid.jni_id, renderopt.to_int, p_format_etc.jni_id, p_client_site.to_int, p_stg.to_int, ppv_obj.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleCreatePropertyFrame, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def _ole_create_property_frame(hwnd_owner, x, y, lpsz_caption, c_objects, lplp_unk, c_pages, lp_page_cls_id, lcid, dw_reserved, lpv_reserved)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleCreatePropertyFrame, JNI.env, self.jni_id, hwnd_owner.to_int, x.to_int, y.to_int, lpsz_caption.jni_id, c_objects.to_int, lplp_unk.jni_id, c_pages.to_int, lp_page_cls_id.to_int, lcid.to_int, dw_reserved.to_int, lpv_reserved.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleDraw, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _ole_draw(p_unk, dw_aspect, hdc_draw, lprc_bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleDraw, JNI.env, self.jni_id, p_unk.to_int, dw_aspect.to_int, hdc_draw.to_int, lprc_bounds.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleFlushClipboard, [:pointer, :long], :int32
      typesig { [] }
      def _ole_flush_clipboard
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleFlushClipboard, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleGetClipboard, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      # long
      def _ole_get_clipboard(pp_data_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleGetClipboard, JNI.env, self.jni_id, pp_data_object.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleIsCurrentClipboard, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _ole_is_current_clipboard(p_data_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleIsCurrentClipboard, JNI.env, self.jni_id, p_data_object.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleIsRunning, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def _ole_is_running(p_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleIsRunning, JNI.env, self.jni_id, p_object.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleLoad, [:pointer, :long, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, GUID, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def _ole_load(p_stg, riid, p_client_site, ppv_obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleLoad, JNI.env, self.jni_id, p_stg.to_int, riid.jni_id, p_client_site.to_int, ppv_obj.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleRun, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _ole_run(p_unknown)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleRun, JNI.env, self.jni_id, p_unknown.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleSave, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def _ole_save(p_ps, p_stg, f_same_as_load)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleSave, JNI.env, self.jni_id, p_ps.to_int, p_stg.to_int, f_same_as_load ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleSetClipboard, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _ole_set_clipboard(p_data_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleSetClipboard, JNI.env, self.jni_id, p_data_object.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleSetContainedObject, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def _ole_set_contained_object(p_unk, f_contained)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleSetContainedObject, JNI.env, self.jni_id, p_unk.to_int, f_contained ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleSetMenuDescriptor, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def _ole_set_menu_descriptor(holemenu, hwnd_frame, hwnd_active_object, lp_frame, lp_active_obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleSetMenuDescriptor, JNI.env, self.jni_id, holemenu.to_int, hwnd_frame.to_int, hwnd_active_object.to_int, lp_frame.to_int, lp_active_obj.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OleTranslateColor, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _ole_translate_color(clr, hpal, pcolorref)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OleTranslateColor, JNI.env, self.jni_id, clr.to_int, hpal.to_int, pcolorref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_ProgIDFromCLSID, [:pointer, :long, :long, :long], :int32
      typesig { [GUID, Array.typed(::Java::Int)] }
      # long
      def _prog_idfrom_clsid(clsid, lplpsz_prog_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_ProgIDFromCLSID, JNI.env, self.jni_id, clsid.jni_id, lplpsz_prog_id.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_RegisterDragDrop, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _register_drag_drop(hwnd, p_drop_target)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_RegisterDragDrop, JNI.env, self.jni_id, hwnd.to_int, p_drop_target.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_ReleaseStgMedium, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _release_stg_medium(pmedium)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_ReleaseStgMedium, JNI.env, self.jni_id, pmedium.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_RevokeDragDrop, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _revoke_drag_drop(hwnd)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_RevokeDragDrop, JNI.env, self.jni_id, hwnd.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_SHDoDragDrop, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def _shdo_drag_drop(hwnd, p_data_object, p_drop_source, dw_okeffect, pdw_effect)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_SHDoDragDrop, JNI.env, self.jni_id, hwnd.to_int, p_data_object.to_int, p_drop_source.to_int, dw_okeffect.to_int, pdw_effect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_StgCreateDocfile, [:pointer, :long, :long, :int32, :int32, :long], :int32
      typesig { [Array.typed(::Java::Char), ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _stg_create_docfile(pwcs_name, grf_mode, reserved, ppstg_open)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_StgCreateDocfile, JNI.env, self.jni_id, pwcs_name.jni_id, grf_mode.to_int, reserved.to_int, ppstg_open.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_StgIsStorageFile, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Char)] }
      def _stg_is_storage_file(pwcs_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_StgIsStorageFile, JNI.env, self.jni_id, pwcs_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_StgOpenStorage, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def _stg_open_storage(pwcs_name, pstg_priority, grf_mode, snb_exclude, reserved, ppstg_open)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_StgOpenStorage, JNI.env, self.jni_id, pwcs_name.jni_id, pstg_priority.to_int, grf_mode.to_int, snb_exclude.to_int, reserved.to_int, ppstg_open.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_StringFromCLSID, [:pointer, :long, :long, :long], :int32
      typesig { [GUID, Array.typed(::Java::Int)] }
      # long
      def _string_from_clsid(rclsid, ppsz)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_StringFromCLSID, JNI.env, self.jni_id, rclsid.jni_id, ppsz.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_SysAllocString, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Char)] }
      # long
      def _sys_alloc_string(sz)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_SysAllocString, JNI.env, self.jni_id, sz.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_SysFreeString, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _sys_free_string(bstr)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_SysFreeString, JNI.env, self.jni_id, bstr.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_SysStringByteLen, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _sys_string_byte_len(bstr)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_SysStringByteLen, JNI.env, self.jni_id, bstr.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VariantChangeType, [:pointer, :long, :int32, :int32, :int16, :int16], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Short, ::Java::Short] }
      # long
      # long
      def _variant_change_type(pvarg_dest, pvar_src, w_flags, vt)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VariantChangeType, JNI.env, self.jni_id, pvarg_dest.to_int, pvar_src.to_int, w_flags.to_int, vt.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VariantClear, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _variant_clear(pvarg)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VariantClear, JNI.env, self.jni_id, pvarg.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VariantInit, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _variant_init(pvarg)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VariantInit, JNI.env, self.jni_id, pvarg.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3C, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3C_3C, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3C_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3CI, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3CI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIL#{POINT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, POINT, ::Java::Int] }
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIL#{POINT.jni_name}_2I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{POINT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, POINT, ::Java::Int] }
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{POINT.jni_name}_2I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{POINT.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, POINT, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{POINT.jni_name}_2I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{SHDRAGIMAGE.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, SHDRAGIMAGE, ::Java::Int] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{SHDRAGIMAGE.jni_name}_2I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3CIII_3I, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3CIII_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3CIII_3J, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3CIII_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3CJII_3J, [:pointer, :long, :int32, :int32, :long, :int64, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Long, ::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3CJII_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3CIIII_3I, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__II_3CIIII_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__III_3I, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__III_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIJ_3I, [:pointer, :long, :int32, :int32, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIJ_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__III_3J, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__III_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIII, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIII_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIII_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIII_3J, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIII_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIJ_3I, [:pointer, :long, :int32, :int32, :int32, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIJ_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIJI_3I, [:pointer, :long, :int32, :int32, :int64, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIJI_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIL#{DVTARGETDEVICE.jni_name}_2L#{SIZE.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, DVTARGETDEVICE, SIZE] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIL#{DVTARGETDEVICE.jni_name}_2L#{SIZE.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIL#{GUID.jni_name}_2I_3I".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GUID, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIL#{GUID.jni_name}_2I_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.to_int, arg4.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{FORMATETC.jni_name}_2_3I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, FORMATETC, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{FORMATETC.jni_name}_2_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{GUID.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GUID] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{GUID.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{GUID.jni_name}_2II".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GUID, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{GUID.jni_name}_2II".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int, arg3.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{GUID.jni_name}_2IIL#{DISPPARAMS.jni_name}_2IL#{EXCEPINFO.jni_name}_2_3I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GUID, ::Java::Int, ::Java::Int, DISPPARAMS, ::Java::Int, EXCEPINFO, Array.typed(::Java::Int)] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{GUID.jni_name}_2IIL#{DISPPARAMS.jni_name}_2IL#{EXCEPINFO.jni_name}_2_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int, arg3.to_int, arg4.jni_id, arg5.to_int, arg6.jni_id, arg7.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{STATSTG.jni_name}_2_3I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, STATSTG, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{STATSTG.jni_name}_2_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{MSG.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, MSG] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{MSG.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{MSG.jni_name}_2IIIL#{RECT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, MSG, ::Java::Int, ::Java::Int, ::Java::Int, RECT] }
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{MSG.jni_name}_2IIIL#{RECT.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int, arg3.to_int, arg4.to_int, arg5.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{SIZE.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, SIZE] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIL#{SIZE.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIZ, [:pointer, :long, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIZ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1 ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIZ, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIZ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0 ? 1 : 0)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{CAUUID.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, CAUUID] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{CAUUID.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{CONTROLINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, CONTROLINFO] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{CONTROLINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{FORMATETC.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, FORMATETC] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{FORMATETC.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{FORMATETC.jni_name}_2L#{STGMEDIUM.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, FORMATETC, STGMEDIUM] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{FORMATETC.jni_name}_2L#{STGMEDIUM.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{FORMATETC.jni_name}_2L#{STGMEDIUM.jni_name}_2Z".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, FORMATETC, STGMEDIUM, ::Java::Boolean] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{FORMATETC.jni_name}_2L#{STGMEDIUM.jni_name}_2Z".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2 ? 1 : 0)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, GUID] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2_3I".to_sym, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, GUID, Array.typed(::Java::Int)] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2L#{GUID.jni_name}_2_3I".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, GUID, GUID, Array.typed(::Java::Int)] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2L#{GUID.jni_name}_2_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2III_3I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, GUID, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2III_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2IIII".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, GUID, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2IIII".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2IL#{OLECMD.jni_name}_2L#{OLECMDTEXT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, GUID, ::Java::Int, OLECMD, OLECMDTEXT] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{GUID.jni_name}_2IL#{OLECMD.jni_name}_2L#{OLECMDTEXT.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{LICINFO.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, LICINFO] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{LICINFO.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{RECT.jni_name}_2IZ".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, RECT, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{RECT.jni_name}_2IZ".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2 ? 1 : 0)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{RECT.jni_name}_2L#{RECT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, RECT, RECT] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{RECT.jni_name}_2L#{RECT.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{RECT.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, RECT] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.__send__("Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIL#{RECT.jni_name}_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__III_3I_3I_3I_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__III_3I_3I_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__III_3II_3I, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__III_3II_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int, arg3.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_WriteClassStg, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, GUID] }
      # long
      def _write_class_stg(p_stg, rclsid)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_WriteClassStg, JNI.env, self.jni_id, p_stg.to_int, rclsid.jni_id)
      end
      
      # Accessibility constants
      const_set_lazy(:CHILDID_SELF) { 0 }
      const_attr_reader  :CHILDID_SELF
      
      const_set_lazy(:CO_E_OBJNOTCONNECTED) { -0x7ffbfe03 }
      const_attr_reader  :CO_E_OBJNOTCONNECTED
      
      # public static final int ROLE_SYSTEM_TITLEBAR = 0x1;
      const_set_lazy(:ROLE_SYSTEM_MENUBAR) { 0x2 }
      const_attr_reader  :ROLE_SYSTEM_MENUBAR
      
      const_set_lazy(:ROLE_SYSTEM_SCROLLBAR) { 0x3 }
      const_attr_reader  :ROLE_SYSTEM_SCROLLBAR
      
      # public static final int ROLE_SYSTEM_GRIP = 0x4;
      # public static final int ROLE_SYSTEM_SOUND = 0x5;
      # public static final int ROLE_SYSTEM_CURSOR = 0x6;
      # public static final int ROLE_SYSTEM_CARET = 0x7;
      # public static final int ROLE_SYSTEM_ALERT = 0x8;
      const_set_lazy(:ROLE_SYSTEM_WINDOW) { 0x9 }
      const_attr_reader  :ROLE_SYSTEM_WINDOW
      
      const_set_lazy(:ROLE_SYSTEM_CLIENT) { 0xa }
      const_attr_reader  :ROLE_SYSTEM_CLIENT
      
      const_set_lazy(:ROLE_SYSTEM_MENUPOPUP) { 0xb }
      const_attr_reader  :ROLE_SYSTEM_MENUPOPUP
      
      const_set_lazy(:ROLE_SYSTEM_MENUITEM) { 0xc }
      const_attr_reader  :ROLE_SYSTEM_MENUITEM
      
      const_set_lazy(:ROLE_SYSTEM_TOOLTIP) { 0xd }
      const_attr_reader  :ROLE_SYSTEM_TOOLTIP
      
      # public static final int ROLE_SYSTEM_APPLICATION = 0xe;
      # public static final int ROLE_SYSTEM_DOCUMENT = 0xf;
      # public static final int ROLE_SYSTEM_PANE = 0x10;
      # public static final int ROLE_SYSTEM_CHART = 0x11;
      const_set_lazy(:ROLE_SYSTEM_DIALOG) { 0x12 }
      const_attr_reader  :ROLE_SYSTEM_DIALOG
      
      # public static final int ROLE_SYSTEM_BORDER = 0x13;
      # public static final int ROLE_SYSTEM_GROUPING = 0x14;
      const_set_lazy(:ROLE_SYSTEM_SEPARATOR) { 0x15 }
      const_attr_reader  :ROLE_SYSTEM_SEPARATOR
      
      const_set_lazy(:ROLE_SYSTEM_TOOLBAR) { 0x16 }
      const_attr_reader  :ROLE_SYSTEM_TOOLBAR
      
      # public static final int ROLE_SYSTEM_STATUSBAR = 0x17;
      const_set_lazy(:ROLE_SYSTEM_TABLE) { 0x18 }
      const_attr_reader  :ROLE_SYSTEM_TABLE
      
      const_set_lazy(:ROLE_SYSTEM_COLUMNHEADER) { 0x19 }
      const_attr_reader  :ROLE_SYSTEM_COLUMNHEADER
      
      const_set_lazy(:ROLE_SYSTEM_ROWHEADER) { 0x1a }
      const_attr_reader  :ROLE_SYSTEM_ROWHEADER
      
      # public static final int ROLE_SYSTEM_COLUMN = 0x1b;
      # public static final int ROLE_SYSTEM_ROW = 0x1c;
      const_set_lazy(:ROLE_SYSTEM_CELL) { 0x1d }
      const_attr_reader  :ROLE_SYSTEM_CELL
      
      const_set_lazy(:ROLE_SYSTEM_LINK) { 0x1e }
      const_attr_reader  :ROLE_SYSTEM_LINK
      
      # public static final int ROLE_SYSTEM_HELPBALLOON = 0x1f;
      # public static final int ROLE_SYSTEM_CHARACTER = 0x20;
      const_set_lazy(:ROLE_SYSTEM_LIST) { 0x21 }
      const_attr_reader  :ROLE_SYSTEM_LIST
      
      const_set_lazy(:ROLE_SYSTEM_LISTITEM) { 0x22 }
      const_attr_reader  :ROLE_SYSTEM_LISTITEM
      
      const_set_lazy(:ROLE_SYSTEM_OUTLINE) { 0x23 }
      const_attr_reader  :ROLE_SYSTEM_OUTLINE
      
      const_set_lazy(:ROLE_SYSTEM_OUTLINEITEM) { 0x24 }
      const_attr_reader  :ROLE_SYSTEM_OUTLINEITEM
      
      const_set_lazy(:ROLE_SYSTEM_PAGETAB) { 0x25 }
      const_attr_reader  :ROLE_SYSTEM_PAGETAB
      
      # public static final int ROLE_SYSTEM_PROPERTYPAGE = 0x26;
      # public static final int ROLE_SYSTEM_INDICATOR = 0x27;
      # public static final int ROLE_SYSTEM_GRAPHIC = 0x28;
      const_set_lazy(:ROLE_SYSTEM_STATICTEXT) { 0x29 }
      const_attr_reader  :ROLE_SYSTEM_STATICTEXT
      
      const_set_lazy(:ROLE_SYSTEM_TEXT) { 0x2a }
      const_attr_reader  :ROLE_SYSTEM_TEXT
      
      const_set_lazy(:ROLE_SYSTEM_PUSHBUTTON) { 0x2b }
      const_attr_reader  :ROLE_SYSTEM_PUSHBUTTON
      
      const_set_lazy(:ROLE_SYSTEM_CHECKBUTTON) { 0x2c }
      const_attr_reader  :ROLE_SYSTEM_CHECKBUTTON
      
      const_set_lazy(:ROLE_SYSTEM_RADIOBUTTON) { 0x2d }
      const_attr_reader  :ROLE_SYSTEM_RADIOBUTTON
      
      const_set_lazy(:ROLE_SYSTEM_COMBOBOX) { 0x2e }
      const_attr_reader  :ROLE_SYSTEM_COMBOBOX
      
      # public static final int ROLE_SYSTEM_DROPLIST = 0x2f;
      const_set_lazy(:ROLE_SYSTEM_PROGRESSBAR) { 0x30 }
      const_attr_reader  :ROLE_SYSTEM_PROGRESSBAR
      
      # public static final int ROLE_SYSTEM_DIAL = 0x31;
      # public static final int ROLE_SYSTEM_HOTKEYFIELD = 0x32;
      const_set_lazy(:ROLE_SYSTEM_SLIDER) { 0x33 }
      const_attr_reader  :ROLE_SYSTEM_SLIDER
      
      # public static final int ROLE_SYSTEM_SPINBUTTON = 0x34;
      # public static final int ROLE_SYSTEM_DIAGRAM = 0x35;
      # public static final int ROLE_SYSTEM_ANIMATION = 0x36;
      # public static final int ROLE_SYSTEM_EQUATION = 0x37;
      # public static final int ROLE_SYSTEM_BUTTONDROPDOWN = 0x38;
      # public static final int ROLE_SYSTEM_BUTTONMENU = 0x39;
      # public static final int ROLE_SYSTEM_BUTTONDROPDOWNGRID = 0x3a;
      # public static final int ROLE_SYSTEM_WHITESPACE = 0x3b;
      const_set_lazy(:ROLE_SYSTEM_PAGETABLIST) { 0x3c }
      const_attr_reader  :ROLE_SYSTEM_PAGETABLIST
      
      # public static final int ROLE_SYSTEM_CLOCK = 0x3d;
      const_set_lazy(:STATE_SYSTEM_NORMAL) { 0 }
      const_attr_reader  :STATE_SYSTEM_NORMAL
      
      # public static final int STATE_SYSTEM_UNAVAILABLE = 0x1;
      const_set_lazy(:STATE_SYSTEM_SELECTED) { 0x2 }
      const_attr_reader  :STATE_SYSTEM_SELECTED
      
      const_set_lazy(:STATE_SYSTEM_FOCUSED) { 0x4 }
      const_attr_reader  :STATE_SYSTEM_FOCUSED
      
      const_set_lazy(:STATE_SYSTEM_PRESSED) { 0x8 }
      const_attr_reader  :STATE_SYSTEM_PRESSED
      
      const_set_lazy(:STATE_SYSTEM_CHECKED) { 0x10 }
      const_attr_reader  :STATE_SYSTEM_CHECKED
      
      const_set_lazy(:STATE_SYSTEM_MIXED) { 0x20 }
      const_attr_reader  :STATE_SYSTEM_MIXED
      
      # public static final int STATE_SYSTEM_INDETERMINATE = STATE_SYSTEM_MIXED;
      const_set_lazy(:STATE_SYSTEM_READONLY) { 0x40 }
      const_attr_reader  :STATE_SYSTEM_READONLY
      
      const_set_lazy(:STATE_SYSTEM_HOTTRACKED) { 0x80 }
      const_attr_reader  :STATE_SYSTEM_HOTTRACKED
      
      # public static final int STATE_SYSTEM_DEFAULT = 0x100;
      const_set_lazy(:STATE_SYSTEM_EXPANDED) { 0x200 }
      const_attr_reader  :STATE_SYSTEM_EXPANDED
      
      const_set_lazy(:STATE_SYSTEM_COLLAPSED) { 0x400 }
      const_attr_reader  :STATE_SYSTEM_COLLAPSED
      
      const_set_lazy(:STATE_SYSTEM_BUSY) { 0x800 }
      const_attr_reader  :STATE_SYSTEM_BUSY
      
      # public static final int STATE_SYSTEM_FLOATING = 0x1000;
      # public static final int STATE_SYSTEM_MARQUEED = 0x2000;
      # public static final int STATE_SYSTEM_ANIMATED = 0x4000;
      const_set_lazy(:STATE_SYSTEM_INVISIBLE) { 0x8000 }
      const_attr_reader  :STATE_SYSTEM_INVISIBLE
      
      const_set_lazy(:STATE_SYSTEM_OFFSCREEN) { 0x10000 }
      const_attr_reader  :STATE_SYSTEM_OFFSCREEN
      
      const_set_lazy(:STATE_SYSTEM_SIZEABLE) { 0x20000 }
      const_attr_reader  :STATE_SYSTEM_SIZEABLE
      
      # public static final int STATE_SYSTEM_MOVEABLE = 0x40000;
      # public static final int STATE_SYSTEM_SELFVOICING = 0x80000;
      const_set_lazy(:STATE_SYSTEM_FOCUSABLE) { 0x100000 }
      const_attr_reader  :STATE_SYSTEM_FOCUSABLE
      
      const_set_lazy(:STATE_SYSTEM_SELECTABLE) { 0x200000 }
      const_attr_reader  :STATE_SYSTEM_SELECTABLE
      
      const_set_lazy(:STATE_SYSTEM_LINKED) { 0x400000 }
      const_attr_reader  :STATE_SYSTEM_LINKED
      
      # public static final int STATE_SYSTEM_TRAVERSED = 0x800000;
      const_set_lazy(:STATE_SYSTEM_MULTISELECTABLE) { 0x1000000 }
      const_attr_reader  :STATE_SYSTEM_MULTISELECTABLE
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_AccessibleObjectFromWindow, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, GUID, Array.typed(::Java::Int)] }
      # public static final int STATE_SYSTEM_EXTSELECTABLE = 0x2000000;
      # public static final int STATE_SYSTEM_ALERT_LOW = 0x4000000;
      # public static final int STATE_SYSTEM_ALERT_MEDIUM = 0x8000000;
      # public static final int STATE_SYSTEM_ALERT_HIGH = 0x10000000;
      # public static final int STATE_SYSTEM_PROTECTED = 0x20000000;
      # public static final int STATE_SYSTEM_VALID = 0x3fffffff;
      # Accessibility natives
      # long
      # long
      def _accessible_object_from_window(hwnd, dw_object_id, riid, ppv_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_AccessibleObjectFromWindow, JNI.env, self.jni_id, hwnd.to_int, dw_object_id.to_int, riid.jni_id, ppv_object.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_CreateStdAccessibleObject, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, GUID, Array.typed(::Java::Int)] }
      # long
      # long
      def _create_std_accessible_object(hwnd, id_object, riid_interface, ppv_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_CreateStdAccessibleObject, JNI.env, self.jni_id, hwnd.to_int, id_object.to_int, riid_interface.jni_id, ppv_object.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_LresultFromObject, [:pointer, :long, :long, :int32, :int32], :int32
      typesig { [GUID, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _lresult_from_object(riid, w_param, p_acc)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_LresultFromObject, JNI.env, self.jni_id, riid.jni_id, w_param.to_int, p_acc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # USED
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # USED
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IJIIIIJ, [:pointer, :long, :int32, :int64, :int32, :int32, :int32, :int32, :int64], :int32
      typesig { [::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long] }
      # USED,NEW
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IJIIIIJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # USED
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IJJIIIII, [:pointer, :long, :int32, :int64, :int64, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # USED,NEW
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IJJIIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIIIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # USED
      # long
      # long
      # long
      # long
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall__IIIIIIIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int, arg7.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1VARIANT, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # Custom accessibility natives
      # long
      # long
      def _vtbl_call_variant(fn_number, pp_vtbl, arg0)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1VARIANT, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1VARIANTP, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _vtbl_call_variantp(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1VARIANTP, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1IVARIANT, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _vtbl_call_ivariant(fn_number, pp_vtbl, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1IVARIANT, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1IVARIANTP, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _vtbl_call_ivariantp(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1IVARIANTP, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1PVARIANTP, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def _vtbl_call_pvariantp(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1PVARIANTP, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1PPPPVARIANT, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      def _vtbl_call_ppppvariant(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VtblCall_1PPPPVARIANT, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_get_1accChild_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def get_acc_child_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_get_1accChild_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_get_1accName_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def get_acc_name_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_get_1accName_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_get_1accValue_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def get_acc_value_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_get_1accValue_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_get_1accDescription_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def get_acc_description_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_get_1accDescription_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_get_1accRole_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def get_acc_role_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_get_1accRole_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_get_1accState_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def get_acc_state_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_get_1accState_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_get_1accHelp_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def get_acc_help_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_get_1accHelp_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_get_1accHelpTopic_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def get_acc_help_topic_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_get_1accHelpTopic_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_get_1accKeyboardShortcut_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def get_acc_keyboard_shortcut_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_get_1accKeyboardShortcut_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_get_1accDefaultAction_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def get_acc_default_action_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_get_1accDefaultAction_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_accSelect_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def acc_select_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_accSelect_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_accLocation_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def acc_location_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_accLocation_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_accNavigate_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def acc_navigate_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_accNavigate_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_accDoDefaultAction_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def acc_do_default_action_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_accDoDefaultAction_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_put_1accName_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def put_acc_name_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_put_1accName_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_put_1accValue_1CALLBACK, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def put_acc_value_callback(func)
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_put_1accValue_1CALLBACK, JNI.env, self.jni_id, func.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_CAUUID_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      # sizeof's
      def _cauuid_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_CAUUID_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_CONTROLINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _controlinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_CONTROLINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_COSERVERINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _coserverinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_COSERVERINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_DISPPARAMS_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _dispparams_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_DISPPARAMS_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_DVTARGETDEVICE_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _dvtargetdevice_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_DVTARGETDEVICE_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_ELEMDESC_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _elemdesc_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_ELEMDESC_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_EXCEPINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _excepinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_EXCEPINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_FORMATETC_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _formatetc_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_FORMATETC_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_FUNCDESC_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _funcdesc_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_FUNCDESC_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_GUID_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _guid_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_GUID_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_LICINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _licinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_LICINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OLECMD_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _olecmd_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OLECMD_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_OLEINPLACEFRAMEINFO_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _oleinplaceframeinfo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_OLEINPLACEFRAMEINFO_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_STATSTG_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _statstg_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_STATSTG_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_STGMEDIUM_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _stgmedium_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_STGMEDIUM_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_TYPEATTR_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _typeattr_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_TYPEATTR_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_TYPEDESC_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _typedesc_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_TYPEDESC_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VARDESC_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _vardesc_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VARDESC_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_ole_win32_COM_VARIANT_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _variant_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_ole_win32_COM_VARIANT_1sizeof, JNI.env, self.jni_id)
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__com, :initialize
  end
  
end
