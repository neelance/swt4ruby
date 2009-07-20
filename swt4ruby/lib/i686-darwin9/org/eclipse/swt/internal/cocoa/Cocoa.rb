require "rjava"

# Copyright (c) 2003, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module CocoaImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class Cocoa < CocoaImports.const_get :Platform
    include_class_members CocoaImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt-cocoa") # $NON-NLS-1$
        _web_init_for_carbon
      end
      
      # Objective-C class ids
      const_set_lazy(:C_NSHTTPCookieStorage) { Cocoa.objc_get_class("NSHTTPCookieStorage") }
      const_attr_reader  :C_NSHTTPCookieStorage
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSNotificationCenter) { Cocoa.objc_get_class("NSNotificationCenter") }
      const_attr_reader  :C_NSNotificationCenter
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSNumber) { Cocoa.objc_get_class("NSNumber") }
      const_attr_reader  :C_NSNumber
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSURL) { Cocoa.objc_get_class("NSURL") }
      const_attr_reader  :C_NSURL
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSURLRequest) { Cocoa.objc_get_class("NSURLRequest") }
      const_attr_reader  :C_NSURLRequest
      
      # $NON-NLS-1$
      const_set_lazy(:C_WebKitDelegate) { Cocoa.objc_get_class("WebKitDelegate") }
      const_attr_reader  :C_WebKitDelegate
      
      # $NON-NLS-1$
      const_set_lazy(:C_WebDownload) { Cocoa.objc_get_class("WebDownload") }
      const_attr_reader  :C_WebDownload
      
      # $NON-NLS-1$
      const_set_lazy(:C_WebView) { Cocoa.objc_get_class("WebView") }
      const_attr_reader  :C_WebView
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSStatusBar) { Cocoa.objc_get_class("NSStatusBar") }
      const_attr_reader  :C_NSStatusBar
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSImage) { Cocoa.objc_get_class("NSImage") }
      const_attr_reader  :C_NSImage
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSGraphicsContext) { Cocoa.objc_get_class("NSGraphicsContext") }
      const_attr_reader  :C_NSGraphicsContext
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSStatusItemImageView) { Cocoa.objc_get_class("NSStatusItemImageView") }
      const_attr_reader  :C_NSStatusItemImageView
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSCursor) { Cocoa.objc_get_class("NSCursor") }
      const_attr_reader  :C_NSCursor
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSWindow) { Cocoa.objc_get_class("NSWindow") }
      const_attr_reader  :C_NSWindow
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSBitmapImageRep) { Cocoa.objc_get_class("NSBitmapImageRep") }
      const_attr_reader  :C_NSBitmapImageRep
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSImageView) { Cocoa.objc_get_class("NSImageView") }
      const_attr_reader  :C_NSImageView
      
      # $NON-NLS-1$
      const_set_lazy(:C_WebPreferences) { Cocoa.objc_get_class("WebPreferences") }
      const_attr_reader  :C_WebPreferences
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSBezierPath) { Cocoa.objc_get_class("NSBezierPath") }
      const_attr_reader  :C_NSBezierPath
      
      # $NON-NLS-1$
      const_set_lazy(:C_NSButton) { Cocoa.objc_get_class("NSButton") }
      const_attr_reader  :C_NSButton
      
      # $NON-NLS-1$
      # Objective-C method selectors
      const_set_lazy(:S_absoluteString) { Cocoa.sel_register_name("absoluteString") }
      const_attr_reader  :S_absoluteString
      
      # $NON-NLS-1$
      const_set_lazy(:S_addObserver_selector_name_object) { Cocoa.sel_register_name("addObserver:selector:name:object:") }
      const_attr_reader  :S_addObserver_selector_name_object
      
      # $NON-NLS-1$
      const_set_lazy(:S_alloc) { Cocoa.sel_register_name("alloc") }
      const_attr_reader  :S_alloc
      
      # $NON-NLS-1$
      const_set_lazy(:S_autorelease) { Cocoa.sel_register_name("autorelease") }
      const_attr_reader  :S_autorelease
      
      # $NON-NLS-1$
      const_set_lazy(:S_cancel) { Cocoa.sel_register_name("cancel") }
      const_attr_reader  :S_cancel
      
      # $NON-NLS-1$
      const_set_lazy(:S_canGoBack) { Cocoa.sel_register_name("canGoBack") }
      const_attr_reader  :S_canGoBack
      
      # $NON-NLS-1$
      const_set_lazy(:S_canGoForward) { Cocoa.sel_register_name("canGoForward") }
      const_attr_reader  :S_canGoForward
      
      # $NON-NLS-1$
      const_set_lazy(:S_canShowMIMEType) { Cocoa.sel_register_name("canShowMIMEType:") }
      const_attr_reader  :S_canShowMIMEType
      
      # $NON-NLS-1$
      const_set_lazy(:S_chooseFilename) { Cocoa.sel_register_name("chooseFilename:") }
      const_attr_reader  :S_chooseFilename
      
      # $NON-NLS-1$
      const_set_lazy(:S_cookies) { Cocoa.sel_register_name("cookies") }
      const_attr_reader  :S_cookies
      
      # $NON-NLS-1$
      const_set_lazy(:S_copy) { Cocoa.sel_register_name("copy:") }
      const_attr_reader  :S_copy
      
      # $NON-NLS-1$
      const_set_lazy(:S_count) { Cocoa.sel_register_name("count") }
      const_attr_reader  :S_count
      
      # $NON-NLS-1$
      const_set_lazy(:S_cut) { Cocoa.sel_register_name("cut:") }
      const_attr_reader  :S_cut
      
      # $NON-NLS-1$
      const_set_lazy(:S_dataSource) { Cocoa.sel_register_name("dataSource") }
      const_attr_reader  :S_dataSource
      
      # $NON-NLS-1$
      const_set_lazy(:S_defaultCenter) { Cocoa.sel_register_name("defaultCenter") }
      const_attr_reader  :S_defaultCenter
      
      # $NON-NLS-1$
      const_set_lazy(:S_deleteCookie) { Cocoa.sel_register_name("deleteCookie:") }
      const_attr_reader  :S_deleteCookie
      
      # $NON-NLS-1$
      const_set_lazy(:S_documentSource) { Cocoa.sel_register_name("documentSource") }
      const_attr_reader  :S_documentSource
      
      # $NON-NLS-1$
      const_set_lazy(:S_download) { Cocoa.sel_register_name("download") }
      const_attr_reader  :S_download
      
      # $NON-NLS-1$
      const_set_lazy(:S_goBack) { Cocoa.sel_register_name("goBack:") }
      const_attr_reader  :S_goBack
      
      # $NON-NLS-1$
      const_set_lazy(:S_goForward) { Cocoa.sel_register_name("goForward:") }
      const_attr_reader  :S_goForward
      
      # $NON-NLS-1$
      const_set_lazy(:S_handleNotification) { Cocoa.sel_register_name("handleNotification:") }
      const_attr_reader  :S_handleNotification
      
      # $NON-NLS-1$
      const_set_lazy(:S_ignore) { Cocoa.sel_register_name("ignore") }
      const_attr_reader  :S_ignore
      
      # $NON-NLS-1$
      const_set_lazy(:S_initialRequest) { Cocoa.sel_register_name("initialRequest") }
      const_attr_reader  :S_initialRequest
      
      # $NON-NLS-1$
      const_set_lazy(:S_initWithFrame_frameName_groupName) { Cocoa.sel_register_name("initWithFrame:frameName:groupName:") }
      const_attr_reader  :S_initWithFrame_frameName_groupName
      
      # $NON-NLS-1$
      const_set_lazy(:S_initWithProc) { Cocoa.sel_register_name("initWithProc:user_data:") }
      const_attr_reader  :S_initWithProc
      
      # $NON-NLS-1$
      const_set_lazy(:S_isSessionOnly) { Cocoa.sel_register_name("isSessionOnly") }
      const_attr_reader  :S_isSessionOnly
      
      # $NON-NLS-1$
      const_set_lazy(:S_loadHTMLStringbaseURL) { Cocoa.sel_register_name("loadHTMLString:baseURL:") }
      const_attr_reader  :S_loadHTMLStringbaseURL
      
      # $NON-NLS-1$
      const_set_lazy(:S_loadRequest) { Cocoa.sel_register_name("loadRequest:") }
      const_attr_reader  :S_loadRequest
      
      # $NON-NLS-1$
      const_set_lazy(:S_mainFrame) { Cocoa.sel_register_name("mainFrame") }
      const_attr_reader  :S_mainFrame
      
      # $NON-NLS-1$
      const_set_lazy(:S_name) { Cocoa.sel_register_name("name") }
      const_attr_reader  :S_name
      
      # $NON-NLS-1$
      const_set_lazy(:S_numberWithInt) { Cocoa.sel_register_name("numberWithInt:") }
      const_attr_reader  :S_numberWithInt
      
      # $NON-NLS-1$
      const_set_lazy(:S_objectAtIndex) { Cocoa.sel_register_name("objectAtIndex:") }
      const_attr_reader  :S_objectAtIndex
      
      # $NON-NLS-1$
      const_set_lazy(:S_pageTitle) { Cocoa.sel_register_name("pageTitle") }
      const_attr_reader  :S_pageTitle
      
      # $NON-NLS-1$
      const_set_lazy(:S_paste) { Cocoa.sel_register_name("paste:") }
      const_attr_reader  :S_paste
      
      # $NON-NLS-1$
      const_set_lazy(:S_provisionalDataSource) { Cocoa.sel_register_name("provisionalDataSource") }
      const_attr_reader  :S_provisionalDataSource
      
      # $NON-NLS-1$
      const_set_lazy(:S_release) { Cocoa.sel_register_name("release") }
      const_attr_reader  :S_release
      
      # $NON-NLS-1$
      const_set_lazy(:S_reload) { Cocoa.sel_register_name("reload:") }
      const_attr_reader  :S_reload
      
      # $NON-NLS-1$
      const_set_lazy(:S_retain) { Cocoa.sel_register_name("retain") }
      const_attr_reader  :S_retain
      
      # $NON-NLS-1$
      const_set_lazy(:S_removeObserver_name_object) { Cocoa.sel_register_name("removeObserver:name:object:") }
      const_attr_reader  :S_removeObserver_name_object
      
      # $NON-NLS-1$
      const_set_lazy(:S_removeObserver) { Cocoa.sel_register_name("removeObserver:") }
      const_attr_reader  :S_removeObserver
      
      # $NON-NLS-1$
      const_set_lazy(:S_representation) { Cocoa.sel_register_name("representation") }
      const_attr_reader  :S_representation
      
      # $NON-NLS-1$
      const_set_lazy(:S_requestWithURL) { Cocoa.sel_register_name("requestWithURL:") }
      const_attr_reader  :S_requestWithURL
      
      # $NON-NLS-1$
      const_set_lazy(:S_request) { Cocoa.sel_register_name("request") }
      const_attr_reader  :S_request
      
      # $NON-NLS-1$
      const_set_lazy(:S_retainCount) { Cocoa.sel_register_name("retainCount") }
      const_attr_reader  :S_retainCount
      
      # $NON-NLS-1$
      const_set_lazy(:S_setApplicationNameForUserAgent) { Cocoa.sel_register_name("setApplicationNameForUserAgent:") }
      const_attr_reader  :S_setApplicationNameForUserAgent
      
      # $NON-NLS-1$
      const_set_lazy(:S_setDestinationAllowOverwrite) { Cocoa.sel_register_name("setDestination:allowOverwrite:") }
      const_attr_reader  :S_setDestinationAllowOverwrite
      
      # $NON-NLS-1$
      const_set_lazy(:S_setDownloadDelegate) { Cocoa.sel_register_name("setDownloadDelegate:") }
      const_attr_reader  :S_setDownloadDelegate
      
      # $NON-NLS-1$
      const_set_lazy(:S_setFrameLoadDelegate) { Cocoa.sel_register_name("setFrameLoadDelegate:") }
      const_attr_reader  :S_setFrameLoadDelegate
      
      # $NON-NLS-1$
      const_set_lazy(:S_setGroupName) { Cocoa.sel_register_name("setGroupName:") }
      const_attr_reader  :S_setGroupName
      
      # $NON-NLS-1$
      const_set_lazy(:S_setJavaEnabled) { Cocoa.sel_register_name("setJavaEnabled:") }
      const_attr_reader  :S_setJavaEnabled
      
      # $NON-NLS-1$
      const_set_lazy(:S_setPolicyDelegate) { Cocoa.sel_register_name("setPolicyDelegate:") }
      const_attr_reader  :S_setPolicyDelegate
      
      # $NON-NLS-1$
      const_set_lazy(:S_setResourceLoadDelegate) { Cocoa.sel_register_name("setResourceLoadDelegate:") }
      const_attr_reader  :S_setResourceLoadDelegate
      
      # $NON-NLS-1$
      const_set_lazy(:S_setStatusText) { Cocoa.sel_register_name("setStatusText:") }
      const_attr_reader  :S_setStatusText
      
      # $NON-NLS-1$
      const_set_lazy(:S_setUIDelegate) { Cocoa.sel_register_name("setUIDelegate:") }
      const_attr_reader  :S_setUIDelegate
      
      # $NON-NLS-1$
      const_set_lazy(:S_sharedHTTPCookieStorage) { Cocoa.sel_register_name("sharedHTTPCookieStorage") }
      const_attr_reader  :S_sharedHTTPCookieStorage
      
      # $NON-NLS-1$
      const_set_lazy(:S_standardPreferences) { Cocoa.sel_register_name("standardPreferences") }
      const_attr_reader  :S_standardPreferences
      
      # $NON-NLS-1$
      const_set_lazy(:S_stopLoading) { Cocoa.sel_register_name("stopLoading:") }
      const_attr_reader  :S_stopLoading
      
      # $NON-NLS-1$
      const_set_lazy(:S_stringByEvaluatingJavaScriptFromString) { Cocoa.sel_register_name("stringByEvaluatingJavaScriptFromString:") }
      const_attr_reader  :S_stringByEvaluatingJavaScriptFromString
      
      # $NON-NLS-1$
      const_set_lazy(:S_takeStringURLFrom) { Cocoa.sel_register_name("takeStringURLFrom:") }
      const_attr_reader  :S_takeStringURLFrom
      
      # $NON-NLS-1$
      const_set_lazy(:S_use) { Cocoa.sel_register_name("use") }
      const_attr_reader  :S_use
      
      # $NON-NLS-1$
      const_set_lazy(:S_valueForKey) { Cocoa.sel_register_name("valueForKey:") }
      const_attr_reader  :S_valueForKey
      
      # $NON-NLS-1$
      const_set_lazy(:S_webFrame) { Cocoa.sel_register_name("webFrame") }
      const_attr_reader  :S_webFrame
      
      # $NON-NLS-1$
      const_set_lazy(:S_URL) { Cocoa.sel_register_name("URL") }
      const_attr_reader  :S_URL
      
      # $NON-NLS-1$
      const_set_lazy(:S_URLWithString) { Cocoa.sel_register_name("URLWithString:") }
      const_attr_reader  :S_URLWithString
      
      # $NON-NLS-1$
      const_set_lazy(:S_fileURLWithPath) { Cocoa.sel_register_name("fileURLWithPath:") }
      const_attr_reader  :S_fileURLWithPath
      
      # $NON-NLS-1$
      const_set_lazy(:S_systemStatusBar) { Cocoa.sel_register_name("systemStatusBar") }
      const_attr_reader  :S_systemStatusBar
      
      # $NON-NLS-1$
      const_set_lazy(:S_statusItemWithLength) { Cocoa.sel_register_name("statusItemWithLength:") }
      const_attr_reader  :S_statusItemWithLength
      
      # $NON-NLS-1$
      const_set_lazy(:S_setTitle) { Cocoa.sel_register_name("setTitle:") }
      const_attr_reader  :S_setTitle
      
      # $NON-NLS-1$
      const_set_lazy(:S_setHighlightMode) { Cocoa.sel_register_name("setHighlightMode:") }
      const_attr_reader  :S_setHighlightMode
      
      # $NON-NLS-1$
      const_set_lazy(:S_setToolTip) { Cocoa.sel_register_name("setToolTip:") }
      const_attr_reader  :S_setToolTip
      
      # $NON-NLS-1$
      const_set_lazy(:S_setImage) { Cocoa.sel_register_name("setImage:") }
      const_attr_reader  :S_setImage
      
      # $NON-NLS-1$
      const_set_lazy(:S_removeStatusItem) { Cocoa.sel_register_name("removeStatusItem:") }
      const_attr_reader  :S_removeStatusItem
      
      # $NON-NLS-1$
      const_set_lazy(:S_initWithSize) { Cocoa.sel_register_name("initWithSize:") }
      const_attr_reader  :S_initWithSize
      
      # $NON-NLS-1$
      const_set_lazy(:S_initWithFrame) { Cocoa.sel_register_name("initWithFrame:") }
      const_attr_reader  :S_initWithFrame
      
      # $NON-NLS-1$
      const_set_lazy(:S_initWithProc_frame_user_data) { Cocoa.sel_register_name("initWithProc:frame:user_data:") }
      const_attr_reader  :S_initWithProc_frame_user_data
      
      # $NON-NLS-1$
      const_set_lazy(:S_lockFocus) { Cocoa.sel_register_name("lockFocus") }
      const_attr_reader  :S_lockFocus
      
      # $NON-NLS-1$
      const_set_lazy(:S_unlockFocus) { Cocoa.sel_register_name("unlockFocus") }
      const_attr_reader  :S_unlockFocus
      
      # $NON-NLS-1$
      const_set_lazy(:S_currentContext) { Cocoa.sel_register_name("currentContext") }
      const_attr_reader  :S_currentContext
      
      # $NON-NLS-1$
      const_set_lazy(:S_graphicsPort) { Cocoa.sel_register_name("graphicsPort") }
      const_attr_reader  :S_graphicsPort
      
      # $NON-NLS-1$
      const_set_lazy(:S_setLength) { Cocoa.sel_register_name("setLength:") }
      const_attr_reader  :S_setLength
      
      # $NON-NLS-1$
      const_set_lazy(:S_view) { Cocoa.sel_register_name("view") }
      const_attr_reader  :S_view
      
      # $NON-NLS-1$
      const_set_lazy(:S_setView) { Cocoa.sel_register_name("setView:") }
      const_attr_reader  :S_setView
      
      # $NON-NLS-1$
      const_set_lazy(:S_clickCount) { Cocoa.sel_register_name("clickCount") }
      const_attr_reader  :S_clickCount
      
      # $NON-NLS-1$
      const_set_lazy(:S_drawStatusBarBackgroundInRect_withHighlight) { Cocoa.sel_register_name("drawStatusBarBackgroundInRect:withHighlight:") }
      const_attr_reader  :S_drawStatusBarBackgroundInRect_withHighlight
      
      # $NON-NLS-1$
      const_set_lazy(:S_drawRect) { Cocoa.sel_register_name("drawRect:") }
      const_attr_reader  :S_drawRect
      
      # $NON-NLS-1$
      const_set_lazy(:S_setNeedsDisplay) { Cocoa.sel_register_name("setNeedsDisplay:") }
      const_attr_reader  :S_setNeedsDisplay
      
      # $NON-NLS-1$
      const_set_lazy(:S_initWithImage_hotSpot) { Cocoa.sel_register_name("initWithImage:hotSpot:") }
      const_attr_reader  :S_initWithImage_hotSpot
      
      # $NON-NLS-1$
      const_set_lazy(:S_set) { Cocoa.sel_register_name("set") }
      const_attr_reader  :S_set
      
      # $NON-NLS-1$
      const_set_lazy(:S_init) { Cocoa.sel_register_name("init") }
      const_attr_reader  :S_init
      
      # $NON-NLS-1$
      const_set_lazy(:S_frame) { Cocoa.sel_register_name("frame") }
      const_attr_reader  :S_frame
      
      # $NON-NLS-1$
      const_set_lazy(:S_window) { Cocoa.sel_register_name("window") }
      const_attr_reader  :S_window
      
      # $NON-NLS-1$
      const_set_lazy(:S_makeKeyWindow) { Cocoa.sel_register_name("makeKeyWindow") }
      const_attr_reader  :S_makeKeyWindow
      
      # $NON-NLS-1$
      const_set_lazy(:S_addRepresentation) { Cocoa.sel_register_name("addRepresentation:") }
      const_attr_reader  :S_addRepresentation
      
      # $NON-NLS-1$
      const_set_lazy(:S_initWithBitmapDataPlanes) { Cocoa.sel_register_name("initWithBitmapDataPlanes:pixelsWide:pixelsHigh:bitsPerSample:samplesPerPixel:hasAlpha:isPlanar:colorSpaceName:bitmapFormat:bytesPerRow:bitsPerPixel:") }
      const_attr_reader  :S_initWithBitmapDataPlanes
      
      # $NON-NLS-1$
      const_set_lazy(:S_bitmapData) { Cocoa.sel_register_name("bitmapData") }
      const_attr_reader  :S_bitmapData
      
      # $NON-NLS-1$
      const_set_lazy(:S_modifierFlags) { Cocoa.sel_register_name("modifierFlags") }
      const_attr_reader  :S_modifierFlags
      
      # $NON-NLS-1$
      const_set_lazy(:S_bezierPath) { Cocoa.sel_register_name("bezierPath") }
      const_attr_reader  :S_bezierPath
      
      # $NON-NLS-1$
      const_set_lazy(:S_bezierPathByFlatteningPath) { Cocoa.sel_register_name("bezierPathByFlatteningPath") }
      const_attr_reader  :S_bezierPathByFlatteningPath
      
      const_set_lazy(:S_moveToPoint) { Cocoa.sel_register_name("moveToPoint:") }
      const_attr_reader  :S_moveToPoint
      
      # $NON-NLS-1$
      const_set_lazy(:S_lineToPoint) { Cocoa.sel_register_name("lineToPoint:") }
      const_attr_reader  :S_lineToPoint
      
      # $NON-NLS-1$
      const_set_lazy(:S_curveToPoint) { Cocoa.sel_register_name("curveToPoint:controlPoint1:controlPoint2:") }
      const_attr_reader  :S_curveToPoint
      
      # $NON-NLS-1$
      const_set_lazy(:S_closePath) { Cocoa.sel_register_name("closePath") }
      const_attr_reader  :S_closePath
      
      # $NON-NLS-1$
      const_set_lazy(:S_elementCount) { Cocoa.sel_register_name("elementCount") }
      const_attr_reader  :S_elementCount
      
      # $NON-NLS-1$
      const_set_lazy(:S_elementAtIndex_associatedPoints) { Cocoa.sel_register_name("elementAtIndex:associatedPoints:") }
      const_attr_reader  :S_elementAtIndex_associatedPoints
      
      # $NON-NLS-1$
      const_set_lazy(:S_setFlatness) { Cocoa.sel_register_name("setFlatness:") }
      const_attr_reader  :S_setFlatness
      
      # $NON-NLS-1$
      const_set_lazy(:S_setDefaultFlatness) { Cocoa.sel_register_name("setDefaultFlatness:") }
      const_attr_reader  :S_setDefaultFlatness
      
      # $NON-NLS-1$
      const_set_lazy(:S_convertRect_toView) { Cocoa.sel_register_name("convertRect:toView:") }
      const_attr_reader  :S_convertRect_toView
      
      # $NON-N/LS-1$
      const_set_lazy(:S_addEventListener) { Cocoa.sel_register_name("addEventListener:::") }
      const_attr_reader  :S_addEventListener
      
      # $NON-NLS-1$
      const_set_lazy(:S_altKey) { Cocoa.sel_register_name("altKey") }
      const_attr_reader  :S_altKey
      
      # $NON-NLS-1$
      const_set_lazy(:S_button) { Cocoa.sel_register_name("button") }
      const_attr_reader  :S_button
      
      # $NON-NLS-1$
      const_set_lazy(:S_charCode) { Cocoa.sel_register_name("charCode") }
      const_attr_reader  :S_charCode
      
      # $NON-NLS-1$
      const_set_lazy(:S_clientX) { Cocoa.sel_register_name("clientX") }
      const_attr_reader  :S_clientX
      
      # $NON-NLS-1$
      const_set_lazy(:S_clientY) { Cocoa.sel_register_name("clientY") }
      const_attr_reader  :S_clientY
      
      # $NON-NLS-1$
      const_set_lazy(:S_ctrlKey) { Cocoa.sel_register_name("ctrlKey") }
      const_attr_reader  :S_ctrlKey
      
      # $NON-NLS-1$
      const_set_lazy(:S_detail) { Cocoa.sel_register_name("detail") }
      const_attr_reader  :S_detail
      
      # $NON-NLS-1$
      const_set_lazy(:S_DOMDocument) { Cocoa.sel_register_name("DOMDocument") }
      const_attr_reader  :S_DOMDocument
      
      # $NON-NLS-1$
      const_set_lazy(:S_keyCode) { Cocoa.sel_register_name("keyCode") }
      const_attr_reader  :S_keyCode
      
      # $NON-NLS-1$
      const_set_lazy(:S_metaKey) { Cocoa.sel_register_name("metaKey") }
      const_attr_reader  :S_metaKey
      
      # $NON-NLS-1$
      const_set_lazy(:S_preventDefault) { Cocoa.sel_register_name("preventDefault") }
      const_attr_reader  :S_preventDefault
      
      # $NON-NLS-1$
      const_set_lazy(:S_relatedTarget) { Cocoa.sel_register_name("relatedTarget") }
      const_attr_reader  :S_relatedTarget
      
      # $NON-NLS-1$;
      const_set_lazy(:S_shiftKey) { Cocoa.sel_register_name("shiftKey") }
      const_attr_reader  :S_shiftKey
      
      # $NON-NLS-1$
      const_set_lazy(:S_type) { Cocoa.sel_register_name("type") }
      const_attr_reader  :S_type
      
      # $NON-NLS-1$
      const_set_lazy(:S_wheelDelta) { Cocoa.sel_register_name("wheelDelta") }
      const_attr_reader  :S_wheelDelta
      
      # $NON-NLS-1$
      const_set_lazy(:NSAlphaFirstBitmapFormat) { 1 << 0 }
      const_attr_reader  :NSAlphaFirstBitmapFormat
      
      const_set_lazy(:NSAlphaNonpremultipliedBitmapFormat) { 1 << 1 }
      const_attr_reader  :NSAlphaNonpremultipliedBitmapFormat
      
      const_set_lazy(:NSControlKeyMask) { 1 << 18 }
      const_attr_reader  :NSControlKeyMask
      
      const_set_lazy(:NSDeviceIndependentModifierFlagsMask) { -0x10000 }
      const_attr_reader  :NSDeviceIndependentModifierFlagsMask
      
      const_set_lazy(:NSMoveToBezierPathElement) { 0 }
      const_attr_reader  :NSMoveToBezierPathElement
      
      const_set_lazy(:NSLineToBezierPathElement) { 1 }
      const_attr_reader  :NSLineToBezierPathElement
      
      const_set_lazy(:NSCurveToBezierPathElement) { 2 }
      const_attr_reader  :NSCurveToBezierPathElement
      
      const_set_lazy(:NSClosePathBezierPathElement) { 3 }
      const_attr_reader  :NSClosePathBezierPathElement
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_HIWebViewCreate, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      # WebKit
      def _hiweb_view_create(out_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_HIWebViewCreate, JNI.env, self.jni_id, out_view.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_HIWebViewGetWebView, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hiweb_view_get_web_view(in_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_HIWebViewGetWebView, JNI.env, self.jni_id, in_view.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_WebInitForCarbon, [:pointer, :long], :void
      typesig { [] }
      def _web_init_for_carbon
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_WebInitForCarbon, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_HIJavaViewCreateWithCocoaView, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Int), ::Java::Int] }
      # Embed NSView in HIView
      def _hijava_view_create_with_cocoa_view(hiview, nsview)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_HIJavaViewCreateWithCocoaView, JNI.env, self.jni_id, hiview.jni_id, nsview.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_HICocoaViewCreate, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _hicocoa_view_create(nsview, options, hiview)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_HICocoaViewCreate, JNI.env, self.jni_id, nsview.to_int, options.to_int, hiview.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1getClass, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # OBJ-C runtime primitives
      def objc_get_class(class_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1getClass, JNI.env, self.jni_id, class_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__II, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def objc_msg_send(object, selector)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__II, JNI.env, self.jni_id, object.to_int, selector.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__III, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def objc_msg_send(object, selector, arg0)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__III, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIXfloatX, [:pointer, :long, :int32, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Float] }
      def objc_msg_send(object, selector, arg0)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIXfloatX, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIXfloatXXfloatX, [:pointer, :long, :int32, :int32, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Float, ::Java::Float] }
      def objc_msg_send(object, selector, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIXfloatXXfloatX, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0, arg1)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSSize.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSSize] }
      def objc_msg_send(object, selector, arg0)
        JNI.__send__("Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSSize.jni_name}_2".to_sym, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSRect.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect] }
      def objc_msg_send(object, selector, arg0)
        JNI.__send__("Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSRect.jni_name}_2".to_sym, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSRect.jni_name}_2II".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int, ::Java::Int] }
      def objc_msg_send(object, selector, arg0, arg1, arg2)
        JNI.__send__("Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSRect.jni_name}_2II".to_sym, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.jni_id, arg1.to_int, arg2.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIIL#{NSRect.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
      def objc_msg_send(object, selector, arg0, arg1, arg2)
        JNI.__send__("Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIIL#{NSRect.jni_name}_2I".to_sym, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSRect.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
      def objc_msg_send(object, selector, arg0, arg1)
        JNI.__send__("Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSRect.jni_name}_2I".to_sym, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSPoint.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NSPoint, ::Java::Int] }
      def objc_msg_send(object, selector, arg0, arg1)
        JNI.__send__("Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSPoint.jni_name}_2I".to_sym, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIIL#{NSPoint.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSPoint] }
      def objc_msg_send(object, selector, arg0, arg1)
        JNI.__send__("Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIIL#{NSPoint.jni_name}_2".to_sym, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.to_int, arg1.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSPoint.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSPoint] }
      def objc_msg_send(object, selector, arg0)
        JNI.__send__("Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSPoint.jni_name}_2".to_sym, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSPoint.jni_name}_2L#{NSPoint.jni_name}_2L#{NSPoint.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NSPoint, NSPoint, NSPoint] }
      def objc_msg_send(object, selector, arg0, arg1, arg2)
        JNI.__send__("Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIL#{NSPoint.jni_name}_2L#{NSPoint.jni_name}_2L#{NSPoint.jni_name}_2".to_sym, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIII, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def objc_msg_send(object, selector, arg0, arg1)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIII, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.to_int, arg1.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def objc_msg_send(object, selector, arg0, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIIII, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.to_int, arg1.to_int, arg2.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def objc_msg_send(object, selector, arg0, arg1, arg2, arg3)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__IIIIII, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__II_3IIIIIIIIIII, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def objc_msg_send(object, selector, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend__II_3IIIIIIIIIII, JNI.env, self.jni_id, object.to_int, selector.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int, arg7.to_int, arg8.to_int, arg9.to_int, arg10.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend_1stret__L#{NSRect.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSRect, ::Java::Int, ::Java::Int] }
      def objc_msg_send_stret(result, object, selector)
        JNI.__send__("Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend_1stret__L#{NSRect.jni_name}_2II".to_sym, JNI.env, self.jni_id, result.jni_id, object.to_int, selector.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend_1stret__L#{NSRect.jni_name}_2IIL#{NSRect.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32, :int32, :long, :int32], :void
      typesig { [NSRect, ::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
      def objc_msg_send_stret(result, object, selector, arg0, arg1)
        JNI.__send__("Java_org_eclipse_swt_internal_cocoa_Cocoa_objc_1msgSend_1stret__L#{NSRect.jni_name}_2IIL#{NSRect.jni_name}_2I".to_sym, JNI.env, self.jni_id, result.jni_id, object.to_int, selector.to_int, arg0.jni_id, arg1.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_sel_1registerName, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def sel_register_name(selector_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_sel_1registerName, JNI.env, self.jni_id, selector_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_NSDeviceRGBColorSpace, [:pointer, :long], :int32
      typesig { [] }
      def _nsdevice_rgbcolor_space
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_NSDeviceRGBColorSpace, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_memcpy, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSRect, ::Java::Int, ::Java::Int] }
      def memcpy(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_memcpy, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cocoa_Cocoa_memmove, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NSPoint, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_cocoa_Cocoa_memmove, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      typesig { [String] }
      def ascii(name)
        length_ = name.length
        chars = CharArray.new(length_)
        name.get_chars(0, length_, chars, 0)
        buffer = Array.typed(::Java::Byte).new(length_ + 1) { 0 }
        i = 0
        while i < length_
          buffer[i] = chars[i]
          ((i += 1) - 1)
        end
        return buffer
      end
      
      typesig { [String] }
      def sel_register_name(selector)
        return Cocoa.sel_register_name(ascii(selector))
      end
      
      typesig { [String] }
      def objc_get_class(class_name)
        return Cocoa.objc_get_class(ascii(class_name))
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__cocoa, :initialize
  end
  
end
