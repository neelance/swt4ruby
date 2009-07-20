require "rjava"

# Copyright (c) 2003, 2008 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module OSImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class OS < OSImports.const_get :C
    include_class_members OSImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt-pi")
      end
      
      when_class_loaded do
        response = Array.typed(::Java::Int).new(1) { 0 }
        OS._gestalt(OS.attr_gestalt_system_version, response)
        const_set :VERSION, response[0] & 0xffff
      end
      
      # Constants
      const_set_lazy(:RGBDirect) { 16 }
      const_attr_reader  :RGBDirect
      
      const_set_lazy(:AlphaLock) { 0x400 }
      const_attr_reader  :AlphaLock
      
      const_set_lazy(:BadDragFlavorErr) { -1852 }
      const_attr_reader  :BadDragFlavorErr
      
      const_set_lazy(:Bold) { 1 }
      const_attr_reader  :Bold
      
      const_set_lazy(:CantGetFlavorErr) { -1854 }
      const_attr_reader  :CantGetFlavorErr
      
      const_set_lazy(:CheckMark) { 18 }
      const_attr_reader  :CheckMark
      
      const_set_lazy(:CmdKey) { 1 << 8 }
      const_attr_reader  :CmdKey
      
      const_set_lazy(:ControlKey) { 1 << 12 }
      const_attr_reader  :ControlKey
      
      const_set_lazy(:DiamondMark) { 19 }
      const_attr_reader  :DiamondMark
      
      const_set_lazy(:DragNotAcceptedErr) { -1857 }
      const_attr_reader  :DragNotAcceptedErr
      
      const_set_lazy(:ErrControlIsNotEmbedder) { -30590 }
      const_attr_reader  :ErrControlIsNotEmbedder
      
      const_set_lazy(:ErrDataBrowserItemNotFound) { -4971 }
      const_attr_reader  :ErrDataBrowserItemNotFound
      
      const_set_lazy(:ErrUnknownControl) { -30584 }
      const_attr_reader  :ErrUnknownControl
      
      const_set_lazy(:EventLoopTimedOutErr) { -9875 }
      const_attr_reader  :EventLoopTimedOutErr
      
      const_set_lazy(:EventNotHandledErr) { -9874 }
      const_attr_reader  :EventNotHandledErr
      
      const_set_lazy(:EventParameterNotFoundErr) { -9870 }
      const_attr_reader  :EventParameterNotFoundErr
      
      const_set_lazy(:GestaltSystemVersion) { (Character.new(?s.ord) << 24) + (Character.new(?y.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?v.ord) }
      const_attr_reader  :GestaltSystemVersion
      
      const_set_lazy(:InContent) { 3 }
      const_attr_reader  :InContent
      
      const_set_lazy(:InMenuBar) { 1 }
      const_attr_reader  :InMenuBar
      
      const_set_lazy(:InStructure) { 15 }
      const_attr_reader  :InStructure
      
      const_set_lazy(:InZoomIn) { 7 }
      const_attr_reader  :InZoomIn
      
      const_set_lazy(:InZoomOut) { 8 }
      const_attr_reader  :InZoomOut
      
      const_set_lazy(:InToolbarButton) { 13 }
      const_attr_reader  :InToolbarButton
      
      const_set_lazy(:Italic) { 2 }
      const_attr_reader  :Italic
      
      const_set_lazy(:K24RGBPixelFormat) { 0x18 }
      const_attr_reader  :K24RGBPixelFormat
      
      const_set_lazy(:K32ARGBPixelFormat) { 0x20 }
      const_attr_reader  :K32ARGBPixelFormat
      
      const_set_lazy(:K_ActivateAndHandleClick) { 3 }
      const_attr_reader  :K_ActivateAndHandleClick
      
      const_set_lazy(:K_AppearanceEventClass) { (Character.new(?a.ord) << 24) + (Character.new(?p.ord) << 16) + (Character.new(?p.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :K_AppearanceEventClass
      
      const_set_lazy(:K_AEAppearanceChanged) { (Character.new(?t.ord) << 24) + (Character.new(?h.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_AEAppearanceChanged
      
      const_set_lazy(:K_AESystemFontChanged) { (Character.new(?s.ord) << 24) + (Character.new(?y.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?f.ord) }
      const_attr_reader  :K_AESystemFontChanged
      
      const_set_lazy(:K_AESmallSystemFontChanged) { (Character.new(?s.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?f.ord) << 8) + Character.new(?n.ord) }
      const_attr_reader  :K_AESmallSystemFontChanged
      
      const_set_lazy(:K_AEViewsFontChanged) { (Character.new(?v.ord) << 24) + (Character.new(?f.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_AEViewsFontChanged
      
      const_set_lazy(:K_AEQuitApplication) { (Character.new(?q.ord) << 24) + (Character.new(?u.ord) << 16) + (Character.new(?i.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_AEQuitApplication
      
      const_set_lazy(:K_CoreEventClass) { (Character.new(?a.ord) << 24) + (Character.new(?e.ord) << 16) + (Character.new(?v.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_CoreEventClass
      
      const_set_lazy(:K_AlertCautionAlert) { 2 }
      const_attr_reader  :K_AlertCautionAlert
      
      const_set_lazy(:K_AlertCautionIcon) { (Character.new(?c.ord) << 24) + (Character.new(?a.ord) << 16) + (Character.new(?u.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_AlertCautionIcon
      
      const_set_lazy(:K_AlertNoteAlert) { 1 }
      const_attr_reader  :K_AlertNoteAlert
      
      const_set_lazy(:K_AlertNoteIcon) { (Character.new(?n.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_AlertNoteIcon
      
      const_set_lazy(:K_AlertPlainAlert) { 3 }
      const_attr_reader  :K_AlertPlainAlert
      
      const_set_lazy(:K_AlertStopAlert) { 0 }
      const_attr_reader  :K_AlertStopAlert
      
      const_set_lazy(:K_AlertStopIcon) { (Character.new(?s.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?p.ord) }
      const_attr_reader  :K_AlertStopIcon
      
      const_set_lazy(:K_AlertDefaultOKText) { -1 }
      const_attr_reader  :K_AlertDefaultOKText
      
      const_set_lazy(:K_AlertDefaultCancelText) { -1 }
      const_attr_reader  :K_AlertDefaultCancelText
      
      const_set_lazy(:K_AlertStdAlertOKButton) { 1 }
      const_attr_reader  :K_AlertStdAlertOKButton
      
      const_set_lazy(:K_AlertStdAlertCancelButton) { 2 }
      const_attr_reader  :K_AlertStdAlertCancelButton
      
      const_set_lazy(:K_AlertStdAlertOtherButton) { 3 }
      const_attr_reader  :K_AlertStdAlertOtherButton
      
      const_set_lazy(:K_AtSpecifiedOrigin) { 0 }
      const_attr_reader  :K_AtSpecifiedOrigin
      
      const_set_lazy(:K_ATSFontContextGlobal) { 1 }
      const_attr_reader  :K_ATSFontContextGlobal
      
      const_set_lazy(:K_ATSFontContextLocal) { 2 }
      const_attr_reader  :K_ATSFontContextLocal
      
      const_set_lazy(:K_ATSOptionFlagsDefault) { 0 }
      const_attr_reader  :K_ATSOptionFlagsDefault
      
      const_set_lazy(:K_ATSOptionFlagsDefaultScope) { 0x0 << 12 }
      const_attr_reader  :K_ATSOptionFlagsDefaultScope
      
      const_set_lazy(:K_ATSFontFormatUnspecified) { 0 }
      const_attr_reader  :K_ATSFontFormatUnspecified
      
      const_set_lazy(:K_ATSDeletedGlyphcode) { 0xffff }
      const_attr_reader  :K_ATSDeletedGlyphcode
      
      const_set_lazy(:K_ATSLineLastNoJustification) { 0x20 }
      const_attr_reader  :K_ATSLineLastNoJustification
      
      const_set_lazy(:K_ATSUAscentTag) { 284 }
      const_attr_reader  :K_ATSUAscentTag
      
      const_set_lazy(:K_ATSUCrossStreamShiftTag) { 269 }
      const_attr_reader  :K_ATSUCrossStreamShiftTag
      
      const_set_lazy(:K_ATSUDescentTag) { 285 }
      const_attr_reader  :K_ATSUDescentTag
      
      const_set_lazy(:K_ATSUDirectDataBaselineDeltaFixedArray) { 1 }
      const_attr_reader  :K_ATSUDirectDataBaselineDeltaFixedArray
      
      const_set_lazy(:K_ATSUDirectDataLayoutRecordATSLayoutRecordVersion1) { 100 }
      const_attr_reader  :K_ATSUDirectDataLayoutRecordATSLayoutRecordVersion1
      
      const_set_lazy(:K_ATSUDirectDataLayoutRecordATSLayoutRecordCurrent) { K_ATSUDirectDataLayoutRecordATSLayoutRecordVersion1 }
      const_attr_reader  :K_ATSUDirectDataLayoutRecordATSLayoutRecordCurrent
      
      const_set_lazy(:K_ATSUFullJustification) { 0x40000000 }
      const_attr_reader  :K_ATSUFullJustification
      
      const_set_lazy(:K_ATSUNoJustification) { 0x0 }
      const_attr_reader  :K_ATSUNoJustification
      
      const_set_lazy(:K_ATSUImposeWidthTag) { 266 }
      const_attr_reader  :K_ATSUImposeWidthTag
      
      const_set_lazy(:K_ATSULineAscentTag) { 8 }
      const_attr_reader  :K_ATSULineAscentTag
      
      const_set_lazy(:K_ATSULineDescentTag) { 9 }
      const_attr_reader  :K_ATSULineDescentTag
      
      const_set_lazy(:K_ATSULineDirectionTag) { 3 }
      const_attr_reader  :K_ATSULineDirectionTag
      
      const_set_lazy(:K_ATSLineUseDeviceMetrics) { 0x1000000 }
      const_attr_reader  :K_ATSLineUseDeviceMetrics
      
      const_set_lazy(:K_ATSLineKeepSpacesOutOfMargin) { 0x8 }
      const_attr_reader  :K_ATSLineKeepSpacesOutOfMargin
      
      const_set_lazy(:K_ATSUStartAlignment) { 0x0 }
      const_attr_reader  :K_ATSUStartAlignment
      
      const_set_lazy(:K_ATSUEndAlignment) { 0x40000000 }
      const_attr_reader  :K_ATSUEndAlignment
      
      const_set_lazy(:K_ATSUCenterAlignment) { 0x20000000 }
      const_attr_reader  :K_ATSUCenterAlignment
      
      const_set_lazy(:K_ATSUByCharacter) { 0 }
      const_attr_reader  :K_ATSUByCharacter
      
      const_set_lazy(:K_ATSUByTypographicCluster) { 1 }
      const_attr_reader  :K_ATSUByTypographicCluster
      
      const_set_lazy(:K_ATSUByWord) { 2 }
      const_attr_reader  :K_ATSUByWord
      
      const_set_lazy(:K_ATSUByCharacterCluster) { 3 }
      const_attr_reader  :K_ATSUByCharacterCluster
      
      const_set_lazy(:K_ATSUColorTag) { 263 }
      const_attr_reader  :K_ATSUColorTag
      
      const_set_lazy(:K_ATSUCGContextTag) { 32767 }
      const_attr_reader  :K_ATSUCGContextTag
      
      const_set_lazy(:K_ATSUFontTag) { 261 }
      const_attr_reader  :K_ATSUFontTag
      
      const_set_lazy(:K_ATSULineFlushFactorTag) { 5 }
      const_attr_reader  :K_ATSULineFlushFactorTag
      
      const_set_lazy(:K_ATSULineHighlightCGColorTag) { 17 }
      const_attr_reader  :K_ATSULineHighlightCGColorTag
      
      const_set_lazy(:K_ATSULineJustificationFactorTag) { 4 }
      const_attr_reader  :K_ATSULineJustificationFactorTag
      
      const_set_lazy(:K_ATSULineLayoutOptionsTag) { 7 }
      const_attr_reader  :K_ATSULineLayoutOptionsTag
      
      const_set_lazy(:K_ATSULineWidthTag) { 1 }
      const_attr_reader  :K_ATSULineWidthTag
      
      const_set_lazy(:K_ATSULeftToRightBaseDirection) { 0 }
      const_attr_reader  :K_ATSULeftToRightBaseDirection
      
      const_set_lazy(:K_ATSURightToLeftBaseDirection) { 1 }
      const_attr_reader  :K_ATSURightToLeftBaseDirection
      
      const_set_lazy(:K_ATSURGBAlphaColorTag) { 288 }
      const_attr_reader  :K_ATSURGBAlphaColorTag
      
      const_set_lazy(:K_ATSUQDBoldfaceTag) { 256 }
      const_attr_reader  :K_ATSUQDBoldfaceTag
      
      const_set_lazy(:K_ATSUQDItalicTag) { 257 }
      const_attr_reader  :K_ATSUQDItalicTag
      
      const_set_lazy(:K_ATSUQDUnderlineTag) { 258 }
      const_attr_reader  :K_ATSUQDUnderlineTag
      
      const_set_lazy(:K_ATSUStyleStrikeThroughTag) { 292 }
      const_attr_reader  :K_ATSUStyleStrikeThroughTag
      
      const_set_lazy(:K_ATSUStyleUnderlineColorOptionTag) { 291 }
      const_attr_reader  :K_ATSUStyleUnderlineColorOptionTag
      
      const_set_lazy(:K_ATSUStyleUnderlineCountOptionTag) { 290 }
      const_attr_reader  :K_ATSUStyleUnderlineCountOptionTag
      
      const_set_lazy(:K_ATSUStyleStrikeThroughColorOptionTag) { 294 }
      const_attr_reader  :K_ATSUStyleStrikeThroughColorOptionTag
      
      const_set_lazy(:K_ATSUStyleSingleLineCount) { 1 }
      const_attr_reader  :K_ATSUStyleSingleLineCount
      
      const_set_lazy(:K_ATSUStyleDoubleLineCount) { 2 }
      const_attr_reader  :K_ATSUStyleDoubleLineCount
      
      const_set_lazy(:K_ATSULeftTab) { 0 }
      const_attr_reader  :K_ATSULeftTab
      
      const_set_lazy(:K_ATSUseDeviceOrigins) { 1 }
      const_attr_reader  :K_ATSUseDeviceOrigins
      
      const_set_lazy(:K_ATSUseLineHeight) { 0x7fffffff }
      const_attr_reader  :K_ATSUseLineHeight
      
      const_set_lazy(:K_ATSUSizeTag) { 262 }
      const_attr_reader  :K_ATSUSizeTag
      
      const_set_lazy(:K_ATSUToTextEnd) { -0x1 }
      const_attr_reader  :K_ATSUToTextEnd
      
      const_set_lazy(:K_CFRunLoopBeforeWaiting) { 1 << 5 }
      const_attr_reader  :K_CFRunLoopBeforeWaiting
      
      const_set_lazy(:K_CFRunLoopAfterWaiting) { 1 << 6 }
      const_attr_reader  :K_CFRunLoopAfterWaiting
      
      const_set_lazy(:K_CFRunLoopRunFinished) { 1 }
      const_attr_reader  :K_CFRunLoopRunFinished
      
      const_set_lazy(:K_CFRunLoopRunStopped) { 2 }
      const_attr_reader  :K_CFRunLoopRunStopped
      
      const_set_lazy(:K_CFRunLoopRunTimedOut) { 3 }
      const_attr_reader  :K_CFRunLoopRunTimedOut
      
      const_set_lazy(:K_CFRunLoopRunHandledSource) { 4 }
      const_attr_reader  :K_CFRunLoopRunHandledSource
      
      const_set_lazy(:K_AvailBoundsChangedForDock) { 1 << 0 }
      const_attr_reader  :K_AvailBoundsChangedForDock
      
      const_set_lazy(:K_CGBlendModeNormal) { 0 }
      const_attr_reader  :K_CGBlendModeNormal
      
      const_set_lazy(:K_CGBlendModeDifference) { 10 }
      const_attr_reader  :K_CGBlendModeDifference
      
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
      
      const_set_lazy(:K_CFAllocatorDefault) { 0 }
      const_attr_reader  :K_CFAllocatorDefault
      
      const_set_lazy(:K_CFNumberFormatterDecimalStyle) { 1 }
      const_attr_reader  :K_CFNumberFormatterDecimalStyle
      
      const_set_lazy(:K_CFURLPOSIXPathStyle) { 0 }
      const_attr_reader  :K_CFURLPOSIXPathStyle
      
      const_set_lazy(:K_CFStringEncodingASCII) { 0x600 }
      const_attr_reader  :K_CFStringEncodingASCII
      
      const_set_lazy(:K_CFStringEncodingMacRoman) { 0 }
      const_attr_reader  :K_CFStringEncodingMacRoman
      
      const_set_lazy(:K_CFStringEncodingUTF8) { 0x8000100 }
      const_attr_reader  :K_CFStringEncodingUTF8
      
      const_set_lazy(:K_CFStringEncodingUnicode) { 0x100 }
      const_attr_reader  :K_CFStringEncodingUnicode
      
      const_set_lazy(:K_CGEncodingMacRoman) { 1 }
      const_attr_reader  :K_CGEncodingMacRoman
      
      const_set_lazy(:K_CGImageAlphaNone) { 0 }
      const_attr_reader  :K_CGImageAlphaNone
      
      const_set_lazy(:K_CGImageAlphaPremultipliedLast) { 1 }
      const_attr_reader  :K_CGImageAlphaPremultipliedLast
      
      const_set_lazy(:K_CGImageAlphaPremultipliedFirst) { 2 }
      const_attr_reader  :K_CGImageAlphaPremultipliedFirst
      
      const_set_lazy(:K_CGImageAlphaLast) { 3 }
      const_attr_reader  :K_CGImageAlphaLast
      
      const_set_lazy(:K_CGImageAlphaFirst) { 4 }
      const_attr_reader  :K_CGImageAlphaFirst
      
      const_set_lazy(:K_CGImageAlphaNoneSkipLast) { 5 }
      const_attr_reader  :K_CGImageAlphaNoneSkipLast
      
      const_set_lazy(:K_CGImageAlphaNoneSkipFirst) { 6 }
      const_attr_reader  :K_CGImageAlphaNoneSkipFirst
      
      const_set_lazy(:K_CGInterpolationDefault) { 0 }
      const_attr_reader  :K_CGInterpolationDefault
      
      const_set_lazy(:K_CGInterpolationNone) { 1 }
      const_attr_reader  :K_CGInterpolationNone
      
      const_set_lazy(:K_CGInterpolationLow) { 2 }
      const_attr_reader  :K_CGInterpolationLow
      
      const_set_lazy(:K_CGInterpolationHigh) { 3 }
      const_attr_reader  :K_CGInterpolationHigh
      
      const_set_lazy(:K_CGLineCapButt) { 0 }
      const_attr_reader  :K_CGLineCapButt
      
      const_set_lazy(:K_CGLineCapRound) { 1 }
      const_attr_reader  :K_CGLineCapRound
      
      const_set_lazy(:K_CGLineCapSquare) { 2 }
      const_attr_reader  :K_CGLineCapSquare
      
      const_set_lazy(:K_CGLineJoinMiter) { 0 }
      const_attr_reader  :K_CGLineJoinMiter
      
      const_set_lazy(:K_CGLineJoinRound) { 1 }
      const_attr_reader  :K_CGLineJoinRound
      
      const_set_lazy(:K_CGLineJoinBevel) { 2 }
      const_attr_reader  :K_CGLineJoinBevel
      
      const_set_lazy(:K_CGPathElementMoveToPoint) { 0 }
      const_attr_reader  :K_CGPathElementMoveToPoint
      
      const_set_lazy(:K_CGPathElementAddLineToPoint) { 1 }
      const_attr_reader  :K_CGPathElementAddLineToPoint
      
      const_set_lazy(:K_CGPathElementAddQuadCurveToPoint) { 2 }
      const_attr_reader  :K_CGPathElementAddQuadCurveToPoint
      
      const_set_lazy(:K_CGPathElementAddCurveToPoint) { 3 }
      const_attr_reader  :K_CGPathElementAddCurveToPoint
      
      const_set_lazy(:K_CGPathElementCloseSubpath) { 4 }
      const_attr_reader  :K_CGPathElementCloseSubpath
      
      const_set_lazy(:K_CGPatternTilingNoDistortion) { 0 }
      const_attr_reader  :K_CGPatternTilingNoDistortion
      
      const_set_lazy(:K_CGPatternTilingConstantSpacingMinimalDistortion) { 1 }
      const_attr_reader  :K_CGPatternTilingConstantSpacingMinimalDistortion
      
      const_set_lazy(:K_CGPatternTilingConstantSpacing) { 2 }
      const_attr_reader  :K_CGPatternTilingConstantSpacing
      
      const_set_lazy(:K_CGRenderingIntentDefault) { 0 }
      const_attr_reader  :K_CGRenderingIntentDefault
      
      const_set_lazy(:K_CGTextFill) { 0 }
      const_attr_reader  :K_CGTextFill
      
      const_set_lazy(:K_CGTextInvisible) { 3 }
      const_attr_reader  :K_CGTextInvisible
      
      const_set_lazy(:K_CMHelpItemRemoveHelp) { 3 }
      const_attr_reader  :K_CMHelpItemRemoveHelp
      
      const_set_lazy(:K_ColorPickerDialogIsMoveable) { 1 }
      const_attr_reader  :K_ColorPickerDialogIsMoveable
      
      const_set_lazy(:K_ColorPickerDialogIsModal) { 2 }
      const_attr_reader  :K_ColorPickerDialogIsModal
      
      const_set_lazy(:K_ControlBehaviorPushbutton) { 0 }
      const_attr_reader  :K_ControlBehaviorPushbutton
      
      const_set_lazy(:K_ControlBehaviorToggles) { 0x100 }
      const_attr_reader  :K_ControlBehaviorToggles
      
      const_set_lazy(:K_ControlBevelButtonAlignCenter) { 0 }
      const_attr_reader  :K_ControlBevelButtonAlignCenter
      
      const_set_lazy(:K_ControlBevelButtonAlignLeft) { 1 }
      const_attr_reader  :K_ControlBevelButtonAlignLeft
      
      const_set_lazy(:K_ControlBevelButtonAlignRight) { 2 }
      const_attr_reader  :K_ControlBevelButtonAlignRight
      
      const_set_lazy(:K_ControlBevelButtonAlignTextCenter) { 1 }
      const_attr_reader  :K_ControlBevelButtonAlignTextCenter
      
      const_set_lazy(:K_ControlBevelButtonAlignTextFlushRight) { -1 }
      const_attr_reader  :K_ControlBevelButtonAlignTextFlushRight
      
      const_set_lazy(:K_ControlBevelButtonAlignTextFlushLeft) { -2 }
      const_attr_reader  :K_ControlBevelButtonAlignTextFlushLeft
      
      const_set_lazy(:K_ControlBevelButtonNormalBevelProc) { 33 }
      const_attr_reader  :K_ControlBevelButtonNormalBevelProc
      
      const_set_lazy(:K_ControlBevelButtonSmallBevel) { 0 }
      const_attr_reader  :K_ControlBevelButtonSmallBevel
      
      const_set_lazy(:K_ControlBevelButtonLargeBevel) { 2 }
      const_attr_reader  :K_ControlBevelButtonLargeBevel
      
      const_set_lazy(:K_ControlBevelButtonMenuRefTag) { (Character.new(?m.ord) << 24) + (Character.new(?h.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :K_ControlBevelButtonMenuRefTag
      
      const_set_lazy(:K_ControlBevelButtonNormalBevel) { 1 }
      const_attr_reader  :K_ControlBevelButtonNormalBevel
      
      const_set_lazy(:K_ControlBevelButtonPlaceBelowGraphic) { 3 }
      const_attr_reader  :K_ControlBevelButtonPlaceBelowGraphic
      
      const_set_lazy(:K_ControlBevelButtonPlaceToRightOfGraphic) { 1 }
      const_attr_reader  :K_ControlBevelButtonPlaceToRightOfGraphic
      
      const_set_lazy(:K_ControlBevelButtonKindTag) { (Character.new(?b.ord) << 24) + (Character.new(?e.ord) << 16) + (Character.new(?b.ord) << 8) + Character.new(?k.ord) }
      const_attr_reader  :K_ControlBevelButtonKindTag
      
      const_set_lazy(:K_ControlBevelButtonTextAlignTag) { (Character.new(?t.ord) << 24) + (Character.new(?a.ord) << 16) + (Character.new(?l.ord) << 8) + Character.new(?i.ord) }
      const_attr_reader  :K_ControlBevelButtonTextAlignTag
      
      const_set_lazy(:K_ControlBevelButtonTextPlaceTag) { (Character.new(?t.ord) << 24) + (Character.new(?p.ord) << 16) + (Character.new(?l.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :K_ControlBevelButtonTextPlaceTag
      
      const_set_lazy(:K_ControlBevelButtonGraphicAlignTag) { (Character.new(?g.ord) << 24) + (Character.new(?a.ord) << 16) + (Character.new(?l.ord) << 8) + Character.new(?i.ord) }
      const_attr_reader  :K_ControlBevelButtonGraphicAlignTag
      
      const_set_lazy(:K_ControlBoundsChangeSizeChanged) { 1 << 2 }
      const_attr_reader  :K_ControlBoundsChangeSizeChanged
      
      const_set_lazy(:K_ControlBoundsChangePositionChanged) { 1 << 3 }
      const_attr_reader  :K_ControlBoundsChangePositionChanged
      
      const_set_lazy(:K_ControlClockTypeHourMinute) { 0 }
      const_attr_reader  :K_ControlClockTypeHourMinute
      
      const_set_lazy(:K_ControlClockTypeHourMinuteSecond) { 1 }
      const_attr_reader  :K_ControlClockTypeHourMinuteSecond
      
      const_set_lazy(:K_ControlClockTypeMonthDayYear) { 2 }
      const_attr_reader  :K_ControlClockTypeMonthDayYear
      
      const_set_lazy(:K_ControlClockTypeMonthYear) { 3 }
      const_attr_reader  :K_ControlClockTypeMonthYear
      
      const_set_lazy(:K_ControlClockFlagStandard) { 0 }
      const_attr_reader  :K_ControlClockFlagStandard
      
      const_set_lazy(:K_ControlClockFlagDisplayOnly) { 1 }
      const_attr_reader  :K_ControlClockFlagDisplayOnly
      
      const_set_lazy(:K_ControlClockFlagLive) { 2 }
      const_attr_reader  :K_ControlClockFlagLive
      
      const_set_lazy(:K_ControlClockLongDateTag) { (Character.new(?d.ord) << 24) + (Character.new(?a.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_ControlClockLongDateTag
      
      const_set_lazy(:K_ControlCheckBoxAutoToggleProc) { 371 }
      const_attr_reader  :K_ControlCheckBoxAutoToggleProc
      
      const_set_lazy(:K_ControlContentCGImageRef) { 134 }
      const_attr_reader  :K_ControlContentCGImageRef
      
      const_set_lazy(:K_ControlContentCIconHandle) { 130 }
      const_attr_reader  :K_ControlContentCIconHandle
      
      const_set_lazy(:K_ControlContentIconRef) { 132 }
      const_attr_reader  :K_ControlContentIconRef
      
      const_set_lazy(:K_ControlContentMetaPart) { -2 }
      const_attr_reader  :K_ControlContentMetaPart
      
      const_set_lazy(:K_ControlContentTextOnly) { 0 }
      const_attr_reader  :K_ControlContentTextOnly
      
      const_set_lazy(:K_ControlDataBrowserIncludesFrameAndFocusTag) { (Character.new(?b.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?d.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :K_ControlDataBrowserIncludesFrameAndFocusTag
      
      const_set_lazy(:K_ControlDownButtonPart) { 21 }
      const_attr_reader  :K_ControlDownButtonPart
      
      const_set_lazy(:K_ControlEditTextCFStringTag) { (Character.new(?c.ord) << 24) + (Character.new(?f.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_ControlEditTextCFStringTag
      
      const_set_lazy(:K_ControlEditTextLockedTag) { (Character.new(?l.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?k.ord) }
      const_attr_reader  :K_ControlEditTextLockedTag
      
      const_set_lazy(:K_ControlEditTextSingleLineTag) { (Character.new(?s.ord) << 24) + (Character.new(?g.ord) << 16) + (Character.new(?l.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :K_ControlEditTextSingleLineTag
      
      const_set_lazy(:K_ControlEditTextSelectionTag) { (Character.new(?s.ord) << 24) + (Character.new(?e.ord) << 16) + (Character.new(?l.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_ControlEditTextSelectionTag
      
      const_set_lazy(:K_ControlEditTextTextTag) { (Character.new(?t.ord) << 24) + (Character.new(?e.ord) << 16) + (Character.new(?x.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_ControlEditTextTextTag
      
      const_set_lazy(:K_ControlEditTextInsertCFStringRefTag) { (Character.new(?i.ord) << 24) + (Character.new(?n.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?f.ord) }
      const_attr_reader  :K_ControlEditTextInsertCFStringRefTag
      
      const_set_lazy(:K_ControlEditTextPasswordCFStringTag) { (Character.new(?p.ord) << 24) + (Character.new(?w.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?f.ord) }
      const_attr_reader  :K_ControlEditTextPasswordCFStringTag
      
      const_set_lazy(:K_ControlEditTextPart) { 5 }
      const_attr_reader  :K_ControlEditTextPart
      
      const_set_lazy(:K_ControlEntireControl) { 0 }
      const_attr_reader  :K_ControlEntireControl
      
      const_set_lazy(:K_ControlFocusNoPart) { 0 }
      const_attr_reader  :K_ControlFocusNoPart
      
      const_set_lazy(:K_ControlFontStyleTag) { (Character.new(?f.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_ControlFontStyleTag
      
      const_set_lazy(:K_ControlGetsFocusOnClick) { 1 << 8 }
      const_attr_reader  :K_ControlGetsFocusOnClick
      
      const_set_lazy(:K_ControlGroupBoxTextTitleProc) { 160 }
      const_attr_reader  :K_ControlGroupBoxTextTitleProc
      
      const_set_lazy(:K_ControlHandlesTracking) { 1 << 5 }
      const_attr_reader  :K_ControlHandlesTracking
      
      const_set_lazy(:K_ControlIconTransformTag) { (Character.new(?t.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?f.ord) << 8) + Character.new(?m.ord) }
      const_attr_reader  :K_ControlIconTransformTag
      
      const_set_lazy(:K_ControlIndicatorPart) { 129 }
      const_attr_reader  :K_ControlIndicatorPart
      
      const_set_lazy(:K_ControlKindScrollBar) { (Character.new(?s.ord) << 24) + (Character.new(?b.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :K_ControlKindScrollBar
      
      const_set_lazy(:K_ControlMsgApplyTextColor) { 30 }
      const_attr_reader  :K_ControlMsgApplyTextColor
      
      const_set_lazy(:K_ControlMsgSetUpBackground) { 23 }
      const_attr_reader  :K_ControlMsgSetUpBackground
      
      const_set_lazy(:K_ControlPageDownPart) { 23 }
      const_attr_reader  :K_ControlPageDownPart
      
      const_set_lazy(:K_ControlPageUpPart) { 22 }
      const_attr_reader  :K_ControlPageUpPart
      
      const_set_lazy(:K_ControlPopupArrowEastProc) { 192 }
      const_attr_reader  :K_ControlPopupArrowEastProc
      
      const_set_lazy(:K_ControlPopupArrowOrientationEast) { 0 }
      const_attr_reader  :K_ControlPopupArrowOrientationEast
      
      const_set_lazy(:K_ControlPopupArrowOrientationWest) { 1 }
      const_attr_reader  :K_ControlPopupArrowOrientationWest
      
      const_set_lazy(:K_ControlPopupArrowOrientationNorth) { 2 }
      const_attr_reader  :K_ControlPopupArrowOrientationNorth
      
      const_set_lazy(:K_ControlPopupArrowOrientationSouth) { 3 }
      const_attr_reader  :K_ControlPopupArrowOrientationSouth
      
      const_set_lazy(:K_ControlPopupArrowSizeNormal) { 0 }
      const_attr_reader  :K_ControlPopupArrowSizeNormal
      
      const_set_lazy(:K_ControlPopupArrowSizeSmall) { 1 }
      const_attr_reader  :K_ControlPopupArrowSizeSmall
      
      const_set_lazy(:K_ControlPopupButtonProc) { 400 }
      const_attr_reader  :K_ControlPopupButtonProc
      
      const_set_lazy(:K_ControlProgressBarIndeterminateTag) { (Character.new(?i.ord) << 24) + (Character.new(?n.ord) << 16) + (Character.new(?d.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_ControlProgressBarIndeterminateTag
      
      const_set_lazy(:K_ControlProgressBarProc) { 80 }
      const_attr_reader  :K_ControlProgressBarProc
      
      const_set_lazy(:K_ControlPushButtonProc) { 368 }
      const_attr_reader  :K_ControlPushButtonProc
      
      const_set_lazy(:K_ControlRadioButtonAutoToggleProc) { 372 }
      const_attr_reader  :K_ControlRadioButtonAutoToggleProc
      
      const_set_lazy(:K_ControlScrollBarLiveProc) { 386 }
      const_attr_reader  :K_ControlScrollBarLiveProc
      
      const_set_lazy(:K_ControlSearchFieldCancelPart) { 30 }
      const_attr_reader  :K_ControlSearchFieldCancelPart
      
      const_set_lazy(:K_ControlSearchFieldMenuPart) { 31 }
      const_attr_reader  :K_ControlSearchFieldMenuPart
      
      const_set_lazy(:K_ControlSeparatorLineProc) { 144 }
      const_attr_reader  :K_ControlSeparatorLineProc
      
      const_set_lazy(:K_ControlSizeTag) { (Character.new(?s.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?z.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_ControlSizeTag
      
      const_set_lazy(:K_ControlSizeSmall) { 1 }
      const_attr_reader  :K_ControlSizeSmall
      
      const_set_lazy(:K_ControlSliderLiveFeedback) { (1 << 0) }
      const_attr_reader  :K_ControlSliderLiveFeedback
      
      const_set_lazy(:K_ControlSliderNonDirectional) { (1 << 3) }
      const_attr_reader  :K_ControlSliderNonDirectional
      
      const_set_lazy(:K_ControlSliderProc) { 48 }
      const_attr_reader  :K_ControlSliderProc
      
      const_set_lazy(:K_ControlClickableMetaPart) { -4 }
      const_attr_reader  :K_ControlClickableMetaPart
      
      const_set_lazy(:K_ControlStructureMetaPart) { -1 }
      const_attr_reader  :K_ControlStructureMetaPart
      
      const_set_lazy(:K_ControlSupportsEmbedding) { 1 << 1 }
      const_attr_reader  :K_ControlSupportsEmbedding
      
      const_set_lazy(:K_ControlSupportsFocus) { 1 << 2 }
      const_attr_reader  :K_ControlSupportsFocus
      
      const_set_lazy(:K_ControlStaticTextIsMultilineTag) { (Character.new(?s.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?i.ord) << 8) + Character.new(?m.ord) }
      const_attr_reader  :K_ControlStaticTextIsMultilineTag
      
      const_set_lazy(:K_ControlStaticTextCFStringTag) { (Character.new(?c.ord) << 24) + (Character.new(?f.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_ControlStaticTextCFStringTag
      
      const_set_lazy(:K_ControlTabContentRectTag) { (Character.new(?r.ord) << 24) + (Character.new(?e.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_ControlTabContentRectTag
      
      const_set_lazy(:K_ControlTabDirectionNorth) { 0 }
      const_attr_reader  :K_ControlTabDirectionNorth
      
      const_set_lazy(:K_ControlTabDirectionSouth) { 1 }
      const_attr_reader  :K_ControlTabDirectionSouth
      
      const_set_lazy(:K_ControlTabImageContentTag) { (Character.new(?c.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_ControlTabImageContentTag
      
      const_set_lazy(:K_ControlTabInfoVersionOne) { 1 }
      const_attr_reader  :K_ControlTabInfoVersionOne
      
      const_set_lazy(:K_ControlTabInfoTag) { (Character.new(?t.ord) << 24) + (Character.new(?a.ord) << 16) + (Character.new(?b.ord) << 8) + Character.new(?i.ord) }
      const_attr_reader  :K_ControlTabInfoTag
      
      const_set_lazy(:K_ControlTabSizeLarge) { 0 }
      const_attr_reader  :K_ControlTabSizeLarge
      
      const_set_lazy(:K_ControlTabSmallProc) { 129 }
      const_attr_reader  :K_ControlTabSmallProc
      
      const_set_lazy(:K_ControlUpButtonPart) { 20 }
      const_attr_reader  :K_ControlUpButtonPart
      
      const_set_lazy(:K_ControlUserPaneDrawProcTag) { (Character.new(?d.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?w.ord) }
      const_attr_reader  :K_ControlUserPaneDrawProcTag
      
      const_set_lazy(:K_ControlUserPaneHitTestProcTag) { (Character.new(?h.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_ControlUserPaneHitTestProcTag
      
      const_set_lazy(:K_ControlUserPaneProc) { 256 }
      const_attr_reader  :K_ControlUserPaneProc
      
      const_set_lazy(:K_ControlUserPaneTrackingProcTag) { (Character.new(?t.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?k.ord) }
      const_attr_reader  :K_ControlUserPaneTrackingProcTag
      
      const_set_lazy(:K_ControlUseBackColorMask) { 16 }
      const_attr_reader  :K_ControlUseBackColorMask
      
      const_set_lazy(:K_ControlUseFontMask) { 0x1 }
      const_attr_reader  :K_ControlUseFontMask
      
      const_set_lazy(:K_ControlUseForeColorMask) { 8 }
      const_attr_reader  :K_ControlUseForeColorMask
      
      const_set_lazy(:K_ControlUseJustMask) { 0x40 }
      const_attr_reader  :K_ControlUseJustMask
      
      const_set_lazy(:K_ControlUseSizeMask) { 0x4 }
      const_attr_reader  :K_ControlUseSizeMask
      
      const_set_lazy(:K_ControlUseThemeFontIDMask) { 0x80 }
      const_attr_reader  :K_ControlUseThemeFontIDMask
      
      const_set_lazy(:K_ControlUseFaceMask) { 0x2 }
      const_attr_reader  :K_ControlUseFaceMask
      
      const_set_lazy(:K_ControlWantsActivate) { 1 << 4 }
      const_attr_reader  :K_ControlWantsActivate
      
      const_set_lazy(:K_CurrentProcess) { 2 }
      const_attr_reader  :K_CurrentProcess
      
      const_set_lazy(:K_DataBrowserAttributeListViewAlternatingRowColors) { (1 << 1) }
      const_attr_reader  :K_DataBrowserAttributeListViewAlternatingRowColors
      
      const_set_lazy(:K_DataBrowserAttributeListViewDrawColumnDividers) { (1 << 2) }
      const_attr_reader  :K_DataBrowserAttributeListViewDrawColumnDividers
      
      const_set_lazy(:K_DataBrowserCheckboxType) { (Character.new(?c.ord) << 24) + (Character.new(?h.ord) << 16) + (Character.new(?b.ord) << 8) + Character.new(?x.ord) }
      const_attr_reader  :K_DataBrowserCheckboxType
      
      const_set_lazy(:K_DataBrowserCmdTogglesSelection) { 1 << 3 }
      const_attr_reader  :K_DataBrowserCmdTogglesSelection
      
      const_set_lazy(:K_DataBrowserContainerClosed) { 10 }
      const_attr_reader  :K_DataBrowserContainerClosed
      
      const_set_lazy(:K_DataBrowserContainerClosing) { 9 }
      const_attr_reader  :K_DataBrowserContainerClosing
      
      const_set_lazy(:K_DataBrowserContainerIsClosableProperty) { 6 }
      const_attr_reader  :K_DataBrowserContainerIsClosableProperty
      
      const_set_lazy(:K_DataBrowserContainerIsOpen) { 1 << 1 }
      const_attr_reader  :K_DataBrowserContainerIsOpen
      
      const_set_lazy(:K_DataBrowserContainerIsOpenableProperty) { 5 }
      const_attr_reader  :K_DataBrowserContainerIsOpenableProperty
      
      const_set_lazy(:K_DataBrowserContainerIsSortableProperty) { 7 }
      const_attr_reader  :K_DataBrowserContainerIsSortableProperty
      
      const_set_lazy(:K_DataBrowserContainerOpened) { 8 }
      const_attr_reader  :K_DataBrowserContainerOpened
      
      const_set_lazy(:K_DataBrowserCustomType) { 0x3f3f3f3f }
      const_attr_reader  :K_DataBrowserCustomType
      
      const_set_lazy(:K_DataBrowserDefaultPropertyFlags) { 0 }
      const_attr_reader  :K_DataBrowserDefaultPropertyFlags
      
      const_set_lazy(:K_DataBrowserDragSelect) { 1 << 0 }
      const_attr_reader  :K_DataBrowserDragSelect
      
      const_set_lazy(:K_DataBrowserIconAndTextType) { (Character.new(?t.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?n.ord) }
      const_attr_reader  :K_DataBrowserIconAndTextType
      
      const_set_lazy(:K_DataBrowserItemAnyState) { -1 }
      const_attr_reader  :K_DataBrowserItemAnyState
      
      const_set_lazy(:K_DataBrowserItemIsActiveProperty) { 1 }
      const_attr_reader  :K_DataBrowserItemIsActiveProperty
      
      const_set_lazy(:K_DataBrowserItemIsContainerProperty) { 4 }
      const_attr_reader  :K_DataBrowserItemIsContainerProperty
      
      const_set_lazy(:K_DataBrowserItemIsDragTarget) { 1 << 2 }
      const_attr_reader  :K_DataBrowserItemIsDragTarget
      
      const_set_lazy(:K_DataBrowserItemIsEditableProperty) { 3 }
      const_attr_reader  :K_DataBrowserItemIsEditableProperty
      
      const_set_lazy(:K_DataBrowserItemIsSelectableProperty) { 2 }
      const_attr_reader  :K_DataBrowserItemIsSelectableProperty
      
      const_set_lazy(:K_DataBrowserItemIsSelected) { 1 << 0 }
      const_attr_reader  :K_DataBrowserItemIsSelected
      
      const_set_lazy(:K_DataBrowserItemNoProperty) { 0 }
      const_attr_reader  :K_DataBrowserItemNoProperty
      
      const_set_lazy(:K_DataBrowserItemParentContainerProperty) { 11 }
      const_attr_reader  :K_DataBrowserItemParentContainerProperty
      
      const_set_lazy(:K_DataBrowserItemsAdd) { 0 }
      const_attr_reader  :K_DataBrowserItemsAdd
      
      const_set_lazy(:K_DataBrowserItemsAssign) { 1 }
      const_attr_reader  :K_DataBrowserItemsAssign
      
      const_set_lazy(:K_DataBrowserItemsRemove) { 3 }
      const_attr_reader  :K_DataBrowserItemsRemove
      
      const_set_lazy(:K_DataBrowserItemRemoved) { 2 }
      const_attr_reader  :K_DataBrowserItemRemoved
      
      const_set_lazy(:K_DataBrowserItemSelected) { 5 }
      const_attr_reader  :K_DataBrowserItemSelected
      
      const_set_lazy(:K_DataBrowserItemDeselected) { 6 }
      const_attr_reader  :K_DataBrowserItemDeselected
      
      const_set_lazy(:K_DataBrowserItemDoubleClicked) { 7 }
      const_attr_reader  :K_DataBrowserItemDoubleClicked
      
      const_set_lazy(:K_DataBrowserLatestCallbacks) { 0 }
      const_attr_reader  :K_DataBrowserLatestCallbacks
      
      const_set_lazy(:K_DataBrowserLatestCustomCallbacks) { 0 }
      const_attr_reader  :K_DataBrowserLatestCustomCallbacks
      
      const_set_lazy(:K_DataBrowserListView) { (Character.new(?l.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?v.ord) }
      const_attr_reader  :K_DataBrowserListView
      
      const_set_lazy(:K_DataBrowserListViewLatestHeaderDesc) { 0 }
      const_attr_reader  :K_DataBrowserListViewLatestHeaderDesc
      
      const_set_lazy(:K_DataBrowserListViewMovableColumn) { 1 << OS.attr_k_data_browser_view_specific_flags_offset + 1 }
      const_attr_reader  :K_DataBrowserListViewMovableColumn
      
      const_set_lazy(:K_DataBrowserListViewSelectionColumn) { 1 << OS.attr_k_data_browser_view_specific_flags_offset }
      const_attr_reader  :K_DataBrowserListViewSelectionColumn
      
      const_set_lazy(:K_DataBrowserListViewSortableColumn) { 1 << 18 }
      const_attr_reader  :K_DataBrowserListViewSortableColumn
      
      const_set_lazy(:K_DataBrowserNeverEmptySelectionSet) { 1 << 6 }
      const_attr_reader  :K_DataBrowserNeverEmptySelectionSet
      
      const_set_lazy(:K_DataBrowserMetricCellContentInset) { 1 }
      const_attr_reader  :K_DataBrowserMetricCellContentInset
      
      const_set_lazy(:K_DataBrowserMetricIconAndTextGap) { 2 }
      const_attr_reader  :K_DataBrowserMetricIconAndTextGap
      
      const_set_lazy(:K_DataBrowserMetricDisclosureColumnEdgeInset) { 3 }
      const_attr_reader  :K_DataBrowserMetricDisclosureColumnEdgeInset
      
      const_set_lazy(:K_DataBrowserMetricDisclosureTriangleAndContentGap) { 4 }
      const_attr_reader  :K_DataBrowserMetricDisclosureTriangleAndContentGap
      
      const_set_lazy(:K_DataBrowserMetricDisclosureColumnPerDepthGap) { 5 }
      const_attr_reader  :K_DataBrowserMetricDisclosureColumnPerDepthGap
      
      const_set_lazy(:K_DataBrowserNoItem) { 0 }
      const_attr_reader  :K_DataBrowserNoItem
      
      const_set_lazy(:K_DataBrowserOrderUndefined) { 0 }
      const_attr_reader  :K_DataBrowserOrderUndefined
      
      const_set_lazy(:K_DataBrowserOrderIncreasing) { 1 }
      const_attr_reader  :K_DataBrowserOrderIncreasing
      
      const_set_lazy(:K_DataBrowserOrderDecreasing) { 2 }
      const_attr_reader  :K_DataBrowserOrderDecreasing
      
      const_set_lazy(:K_DataBrowserPropertyEnclosingPart) { 0 }
      const_attr_reader  :K_DataBrowserPropertyEnclosingPart
      
      const_set_lazy(:K_DataBrowserPropertyContentPart) { (Character.new(?-.ord) << 24) + (Character.new(?-.ord) << 16) + (Character.new(?-.ord) << 8) + Character.new(?-.ord) }
      const_attr_reader  :K_DataBrowserPropertyContentPart
      
      const_set_lazy(:K_DataBrowserPropertyDisclosurePart) { (Character.new(?d.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :K_DataBrowserPropertyDisclosurePart
      
      const_set_lazy(:K_DataBrowserPropertyIsMutable) { 1 << 0 }
      const_attr_reader  :K_DataBrowserPropertyIsMutable
      
      const_set_lazy(:K_DataBrowserRevealOnly) { 0 }
      const_attr_reader  :K_DataBrowserRevealOnly
      
      const_set_lazy(:K_DataBrowserRevealAndCenterInView) { 1 << 0 }
      const_attr_reader  :K_DataBrowserRevealAndCenterInView
      
      const_set_lazy(:K_DataBrowserRevealWithoutSelecting) { 1 << 1 }
      const_attr_reader  :K_DataBrowserRevealWithoutSelecting
      
      const_set_lazy(:K_DataBrowserSelectOnlyOne) { 1 << 1 }
      const_attr_reader  :K_DataBrowserSelectOnlyOne
      
      const_set_lazy(:K_DataBrowserUserStateChanged) { 13 }
      const_attr_reader  :K_DataBrowserUserStateChanged
      
      const_set_lazy(:K_DataBrowserUserToggledContainer) { 16 }
      const_attr_reader  :K_DataBrowserUserToggledContainer
      
      const_set_lazy(:K_DataBrowserTextType) { (Character.new(?t.ord) << 24) + (Character.new(?e.ord) << 16) + (Character.new(?x.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_DataBrowserTextType
      
      const_set_lazy(:K_DataBrowserTableViewFillHilite) { 1 }
      const_attr_reader  :K_DataBrowserTableViewFillHilite
      
      const_set_lazy(:K_DataBrowserViewSpecificFlagsOffset) { 16 }
      const_attr_reader  :K_DataBrowserViewSpecificFlagsOffset
      
      const_set_lazy(:K_DocumentWindowClass) { 6 }
      const_attr_reader  :K_DocumentWindowClass
      
      const_set_lazy(:K_DragActionNothing) { 0 }
      const_attr_reader  :K_DragActionNothing
      
      const_set_lazy(:K_DragActionCopy) { 1 }
      const_attr_reader  :K_DragActionCopy
      
      const_set_lazy(:K_DragActionAlias) { 1 << 1 }
      const_attr_reader  :K_DragActionAlias
      
      const_set_lazy(:K_DragActionGeneric) { 1 << 2 }
      const_attr_reader  :K_DragActionGeneric
      
      const_set_lazy(:K_DragActionPrivate) { 1 << 3 }
      const_attr_reader  :K_DragActionPrivate
      
      const_set_lazy(:K_DragActionMove) { 1 << 4 }
      const_attr_reader  :K_DragActionMove
      
      const_set_lazy(:K_DragActionDelete) { 1 << 5 }
      const_attr_reader  :K_DragActionDelete
      
      const_set_lazy(:K_DragActionAll) { -0x1 }
      const_attr_reader  :K_DragActionAll
      
      const_set_lazy(:K_DragStandardTranslucency) { 0 }
      const_attr_reader  :K_DragStandardTranslucency
      
      const_set_lazy(:K_DragTrackingEnterHandler) { 1 }
      const_attr_reader  :K_DragTrackingEnterHandler
      
      const_set_lazy(:K_DragTrackingEnterWindow) { 2 }
      const_attr_reader  :K_DragTrackingEnterWindow
      
      const_set_lazy(:K_DragTrackingInWindow) { 3 }
      const_attr_reader  :K_DragTrackingInWindow
      
      const_set_lazy(:K_DragTrackingLeaveWindow) { 4 }
      const_attr_reader  :K_DragTrackingLeaveWindow
      
      const_set_lazy(:K_DragTrackingLeaveHandler) { 5 }
      const_attr_reader  :K_DragTrackingLeaveHandler
      
      const_set_lazy(:K_EventAppleEvent) { 1 }
      const_attr_reader  :K_EventAppleEvent
      
      const_set_lazy(:K_EventAppAvailableWindowBoundsChanged) { 110 }
      const_attr_reader  :K_EventAppAvailableWindowBoundsChanged
      
      const_set_lazy(:K_EventAttributeUserEvent) { 1 << 0 }
      const_attr_reader  :K_EventAttributeUserEvent
      
      const_set_lazy(:K_EventClassAppleEvent) { (Character.new(?e.ord) << 24) + (Character.new(?p.ord) << 16) + (Character.new(?p.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :K_EventClassAppleEvent
      
      const_set_lazy(:K_EventClassApplication) { (Character.new(?a.ord) << 24) + (Character.new(?p.ord) << 16) + (Character.new(?p.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :K_EventClassApplication
      
      const_set_lazy(:K_EventClassCommand) { (Character.new(?c.ord) << 24) + (Character.new(?m.ord) << 16) + (Character.new(?d.ord) << 8) + Character.new(?s.ord) }
      const_attr_reader  :K_EventClassCommand
      
      const_set_lazy(:K_EventClassClockView) { (Character.new(?c.ord) << 24) + (Character.new(?l.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :K_EventClassClockView
      
      const_set_lazy(:K_EventClassControl) { (Character.new(?c.ord) << 24) + (Character.new(?n.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :K_EventClassControl
      
      const_set_lazy(:K_EventClassFont) { (Character.new(?f.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventClassFont
      
      const_set_lazy(:K_EventClassHIObject) { (Character.new(?h.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?b.ord) }
      const_attr_reader  :K_EventClassHIObject
      
      const_set_lazy(:K_EventClassKeyboard) { (Character.new(?k.ord) << 24) + (Character.new(?e.ord) << 16) + (Character.new(?y.ord) << 8) + Character.new(?b.ord) }
      const_attr_reader  :K_EventClassKeyboard
      
      const_set_lazy(:K_EventClassMenu) { (Character.new(?m.ord) << 24) + (Character.new(?e.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?u.ord) }
      const_attr_reader  :K_EventClassMenu
      
      const_set_lazy(:K_EventClassMouse) { (Character.new(?m.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?u.ord) << 8) + Character.new(?s.ord) }
      const_attr_reader  :K_EventClassMouse
      
      const_set_lazy(:K_EventClassScrollable) { (Character.new(?s.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :K_EventClassScrollable
      
      const_set_lazy(:K_EventClassSearchField) { (Character.new(?s.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?f.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :K_EventClassSearchField
      
      const_set_lazy(:K_EventClassTextInput) { (Character.new(?t.ord) << 24) + (Character.new(?e.ord) << 16) + (Character.new(?x.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventClassTextInput
      
      const_set_lazy(:K_EventClassWindow) { (Character.new(?w.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :K_EventClassWindow
      
      const_set_lazy(:K_EventClockDateOrTimeChanged) { 1 }
      const_attr_reader  :K_EventClockDateOrTimeChanged
      
      const_set_lazy(:K_EventControlApplyBackground) { 5 }
      const_attr_reader  :K_EventControlApplyBackground
      
      const_set_lazy(:K_EventControlActivate) { 9 }
      const_attr_reader  :K_EventControlActivate
      
      const_set_lazy(:K_EventControlAddedSubControl) { 152 }
      const_attr_reader  :K_EventControlAddedSubControl
      
      const_set_lazy(:K_EventControlBoundsChanged) { 154 }
      const_attr_reader  :K_EventControlBoundsChanged
      
      const_set_lazy(:K_EventControlClick) { 13 }
      const_attr_reader  :K_EventControlClick
      
      const_set_lazy(:K_EventControlContextualMenuClick) { 12 }
      const_attr_reader  :K_EventControlContextualMenuClick
      
      const_set_lazy(:K_EventControlDeactivate) { 10 }
      const_attr_reader  :K_EventControlDeactivate
      
      const_set_lazy(:K_EventControlDraw) { 4 }
      const_attr_reader  :K_EventControlDraw
      
      const_set_lazy(:K_ControlFocusNextPart) { -1 }
      const_attr_reader  :K_ControlFocusNextPart
      
      const_set_lazy(:K_EventControlGetClickActivation) { 17 }
      const_attr_reader  :K_EventControlGetClickActivation
      
      const_set_lazy(:K_EventControlGetFocusPart) { 8 }
      const_attr_reader  :K_EventControlGetFocusPart
      
      const_set_lazy(:K_EventControlGetPartRegion) { 101 }
      const_attr_reader  :K_EventControlGetPartRegion
      
      const_set_lazy(:K_EventControlHit) { 1 }
      const_attr_reader  :K_EventControlHit
      
      const_set_lazy(:K_EventControlHitTest) { 3 }
      const_attr_reader  :K_EventControlHitTest
      
      const_set_lazy(:K_EventControlSetCursor) { 11 }
      const_attr_reader  :K_EventControlSetCursor
      
      const_set_lazy(:K_EventControlSetFocusPart) { 7 }
      const_attr_reader  :K_EventControlSetFocusPart
      
      const_set_lazy(:K_EventParamControlRegion) { (Character.new(?c.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?g.ord) << 8) + Character.new(?n.ord) }
      const_attr_reader  :K_EventParamControlRegion
      
      const_set_lazy(:K_EventParamControlSubControl) { (Character.new(?c.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?u.ord) << 8) + Character.new(?b.ord) }
      const_attr_reader  :K_EventParamControlSubControl
      
      const_set_lazy(:K_EventControlRemovingSubControl) { 153 }
      const_attr_reader  :K_EventControlRemovingSubControl
      
      const_set_lazy(:K_EventControlOwningWindowChanged) { 159 }
      const_attr_reader  :K_EventControlOwningWindowChanged
      
      const_set_lazy(:K_EventControlVisibilityChanged) { 157 }
      const_attr_reader  :K_EventControlVisibilityChanged
      
      const_set_lazy(:K_EventControlTrack) { 51 }
      const_attr_reader  :K_EventControlTrack
      
      const_set_lazy(:K_EventPriorityStandard) { 1 }
      const_attr_reader  :K_EventPriorityStandard
      
      const_set_lazy(:K_EventDurationForever) { -1.0 }
      const_attr_reader  :K_EventDurationForever
      
      const_set_lazy(:K_EventDurationNoWait) { 0.0 }
      const_attr_reader  :K_EventDurationNoWait
      
      const_set_lazy(:K_EventParamEventRef) { (Character.new(?e.ord) << 24) + (Character.new(?v.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventParamEventRef
      
      const_set_lazy(:K_EventFontSelection) { 2 }
      const_attr_reader  :K_EventFontSelection
      
      const_set_lazy(:K_EventFontPanelClosed) { 1 }
      const_attr_reader  :K_EventFontPanelClosed
      
      const_set_lazy(:K_EventParamGrafPort) { (Character.new(?g.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?f.ord) }
      const_attr_reader  :K_EventParamGrafPort
      
      const_set_lazy(:K_EventHIObjectConstruct) { 1 }
      const_attr_reader  :K_EventHIObjectConstruct
      
      const_set_lazy(:K_EventHIObjectDestruct) { 3 }
      const_attr_reader  :K_EventHIObjectDestruct
      
      const_set_lazy(:K_EventMenuCalculateSize) { 1004 }
      const_attr_reader  :K_EventMenuCalculateSize
      
      const_set_lazy(:K_EventMenuClosed) { 5 }
      const_attr_reader  :K_EventMenuClosed
      
      const_set_lazy(:K_EventMenuCreateFrameView) { 1005 }
      const_attr_reader  :K_EventMenuCreateFrameView
      
      const_set_lazy(:K_EventMenuDrawItem) { 102 }
      const_attr_reader  :K_EventMenuDrawItem
      
      const_set_lazy(:K_EventMenuDrawItemContent) { 103 }
      const_attr_reader  :K_EventMenuDrawItemContent
      
      const_set_lazy(:K_EventMenuGetFrameBounds) { 1006 }
      const_attr_reader  :K_EventMenuGetFrameBounds
      
      const_set_lazy(:K_EventMenuMeasureItemWidth) { 100 }
      const_attr_reader  :K_EventMenuMeasureItemWidth
      
      const_set_lazy(:K_EventMenuOpening) { 4 }
      const_attr_reader  :K_EventMenuOpening
      
      const_set_lazy(:K_EventMenuPopulate) { 9 }
      const_attr_reader  :K_EventMenuPopulate
      
      const_set_lazy(:K_EventMenuTargetItem) { 6 }
      const_attr_reader  :K_EventMenuTargetItem
      
      const_set_lazy(:K_EventMouseButtonPrimary) { 1 }
      const_attr_reader  :K_EventMouseButtonPrimary
      
      const_set_lazy(:K_EventMouseButtonSecondary) { 2 }
      const_attr_reader  :K_EventMouseButtonSecondary
      
      const_set_lazy(:K_EventMouseButtonTertiary) { 3 }
      const_attr_reader  :K_EventMouseButtonTertiary
      
      const_set_lazy(:K_EventMouseDown) { 1 }
      const_attr_reader  :K_EventMouseDown
      
      const_set_lazy(:K_EventMouseDragged) { 6 }
      const_attr_reader  :K_EventMouseDragged
      
      const_set_lazy(:K_EventMouseEntered) { 8 }
      const_attr_reader  :K_EventMouseEntered
      
      const_set_lazy(:K_EventMouseExited) { 9 }
      const_attr_reader  :K_EventMouseExited
      
      const_set_lazy(:K_EventMouseMoved) { 5 }
      const_attr_reader  :K_EventMouseMoved
      
      const_set_lazy(:K_EventMouseUp) { 2 }
      const_attr_reader  :K_EventMouseUp
      
      const_set_lazy(:K_EventMouseWheelAxisX) { 0 }
      const_attr_reader  :K_EventMouseWheelAxisX
      
      const_set_lazy(:K_EventMouseWheelAxisY) { 1 }
      const_attr_reader  :K_EventMouseWheelAxisY
      
      const_set_lazy(:K_EventMouseWheelMoved) { 10 }
      const_attr_reader  :K_EventMouseWheelMoved
      
      const_set_lazy(:K_EventParamAEEventClass) { (Character.new(?e.ord) << 24) + (Character.new(?v.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :K_EventParamAEEventClass
      
      const_set_lazy(:K_EventParamAEEventID) { (Character.new(?e.ord) << 24) + (Character.new(?v.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?i.ord) }
      const_attr_reader  :K_EventParamAEEventID
      
      const_set_lazy(:K_EventParamATSUFontID) { (Character.new(?a.ord) << 24) + (Character.new(?u.ord) << 16) + (Character.new(?i.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :K_EventParamATSUFontID
      
      const_set_lazy(:K_EventParamATSUFontSize) { (Character.new(?a.ord) << 24) + (Character.new(?u.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?z.ord) }
      const_attr_reader  :K_EventParamATSUFontSize
      
      const_set_lazy(:K_EventParamAttributes) { (Character.new(?a.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :K_EventParamAttributes
      
      const_set_lazy(:K_EventParamBounds) { (Character.new(?b.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?u.ord) << 8) + Character.new(?n.ord) }
      const_attr_reader  :K_EventParamBounds
      
      const_set_lazy(:K_EventParamCGContextRef) { (Character.new(?c.ord) << 24) + (Character.new(?n.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?x.ord) }
      const_attr_reader  :K_EventParamCGContextRef
      
      const_set_lazy(:K_EventParamClickActivation) { (Character.new(?c.ord) << 24) + (Character.new(?l.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :K_EventParamClickActivation
      
      const_set_lazy(:K_EventParamClickCount) { (Character.new(?c.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventParamClickCount
      
      const_set_lazy(:K_EventParamControlPart) { (Character.new(?c.ord) << 24) + (Character.new(?p.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventParamControlPart
      
      const_set_lazy(:K_EventParamControlRef) { (Character.new(?c.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :K_EventParamControlRef
      
      const_set_lazy(:K_EventParamCurrentBounds) { (Character.new(?c.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventParamCurrentBounds
      
      const_set_lazy(:K_EventParamDirectObject) { (Character.new(?-.ord) << 24) + (Character.new(?-.ord) << 16) + (Character.new(?-.ord) << 8) + Character.new(?-.ord) }
      const_attr_reader  :K_EventParamDirectObject
      
      const_set_lazy(:K_EventParamDictionary) { (Character.new(?d.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventParamDictionary
      
      const_set_lazy(:K_EventParamFMFontFamily) { (Character.new(?f.ord) << 24) + (Character.new(?m.ord) << 16) + (Character.new(?f.ord) << 8) + Character.new(?m.ord) }
      const_attr_reader  :K_EventParamFMFontFamily
      
      const_set_lazy(:K_EventParamFMFontStyle) { (Character.new(?f.ord) << 24) + (Character.new(?m.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventParamFMFontStyle
      
      const_set_lazy(:K_EventParamFMFontSize) { (Character.new(?f.ord) << 24) + (Character.new(?m.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?z.ord) }
      const_attr_reader  :K_EventParamFMFontSize
      
      const_set_lazy(:K_EventParamFontColor) { (Character.new(?f.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?l.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :K_EventParamFontColor
      
      const_set_lazy(:K_EventParamKeyCode) { (Character.new(?k.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :K_EventParamKeyCode
      
      const_set_lazy(:K_EventParamKeyMacCharCodes) { (Character.new(?k.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?h.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :K_EventParamKeyMacCharCodes
      
      const_set_lazy(:K_EventParamKeyModifiers) { (Character.new(?k.ord) << 24) + (Character.new(?m.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :K_EventParamKeyModifiers
      
      const_set_lazy(:K_EventParamMenuCommand) { (Character.new(?m.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :K_EventParamMenuCommand
      
      const_set_lazy(:K_EventParamMenuItemIndex) { (Character.new(?i.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?e.ord) << 8) + Character.new(?m.ord) }
      const_attr_reader  :K_EventParamMenuItemIndex
      
      const_set_lazy(:K_EventParamMenuItemBounds) { (Character.new(?m.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?b.ord) }
      const_attr_reader  :K_EventParamMenuItemBounds
      
      const_set_lazy(:K_EventParamMenuItemWidth) { (Character.new(?m.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?w.ord) }
      const_attr_reader  :K_EventParamMenuItemWidth
      
      const_set_lazy(:K_EventParamModalClickResult) { (Character.new(?w.ord) << 24) + (Character.new(?m.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :K_EventParamModalClickResult
      
      const_set_lazy(:K_EventParamModalWindow) { (Character.new(?m.ord) << 24) + (Character.new(?w.ord) << 16) + (Character.new(?i.ord) << 8) + Character.new(?n.ord) }
      const_attr_reader  :K_EventParamModalWindow
      
      const_set_lazy(:K_EventParamWindowModality) { (Character.new(?w.ord) << 24) + (Character.new(?m.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :K_EventParamWindowModality
      
      const_set_lazy(:K_EventParamMouseButton) { (Character.new(?m.ord) << 24) + (Character.new(?b.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?n.ord) }
      const_attr_reader  :K_EventParamMouseButton
      
      const_set_lazy(:K_EventParamMouseChord) { (Character.new(?c.ord) << 24) + (Character.new(?h.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :K_EventParamMouseChord
      
      const_set_lazy(:K_EventParamMouseLocation) { (Character.new(?m.ord) << 24) + (Character.new(?l.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :K_EventParamMouseLocation
      
      const_set_lazy(:K_EventParamMouseWheelAxis) { (Character.new(?m.ord) << 24) + (Character.new(?w.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?x.ord) }
      const_attr_reader  :K_EventParamMouseWheelAxis
      
      const_set_lazy(:K_EventParamMouseWheelDelta) { (Character.new(?m.ord) << 24) + (Character.new(?w.ord) << 16) + (Character.new(?d.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :K_EventParamMouseWheelDelta
      
      const_set_lazy(:K_EventParamPreviousBounds) { (Character.new(?p.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventParamPreviousBounds
      
      const_set_lazy(:K_EventParamOrigin) { (Character.new(?o.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?g.ord) << 8) + Character.new(?n.ord) }
      const_attr_reader  :K_EventParamOrigin
      
      const_set_lazy(:K_EventParamOriginalBounds) { (Character.new(?o.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventParamOriginalBounds
      
      const_set_lazy(:K_EventParamReason) { (Character.new(?w.ord) << 24) + (Character.new(?h.ord) << 16) + (Character.new(?y.ord) << 8) + Character.new(??.ord) }
      const_attr_reader  :K_EventParamReason
      
      const_set_lazy(:K_EventParamRgnHandle) { (Character.new(?r.ord) << 24) + (Character.new(?g.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?h.ord) }
      const_attr_reader  :K_EventParamRgnHandle
      
      const_set_lazy(:K_EventParamTextInputReplyLeadingEdge) { (Character.new(?t.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?l.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_EventParamTextInputReplyLeadingEdge
      
      const_set_lazy(:K_EventParamTextInputReplyPoint) { (Character.new(?t.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?p.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventParamTextInputReplyPoint
      
      const_set_lazy(:K_EventParamTextInputReplyRegionClass) { (Character.new(?t.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?g.ord) }
      const_attr_reader  :K_EventParamTextInputReplyRegionClass
      
      const_set_lazy(:K_EventParamTextInputReplyText) { (Character.new(?t.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?x.ord) }
      const_attr_reader  :K_EventParamTextInputReplyText
      
      const_set_lazy(:K_EventParamTextInputReplyTextOffset) { (Character.new(?t.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?o.ord) }
      const_attr_reader  :K_EventParamTextInputReplyTextOffset
      
      const_set_lazy(:K_EventParamTextInputSendCurrentPoint) { (Character.new(?t.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?p.ord) }
      const_attr_reader  :K_EventParamTextInputSendCurrentPoint
      
      const_set_lazy(:K_EventParamTextInputSendFixLen) { (Character.new(?t.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?f.ord) << 8) + Character.new(?x.ord) }
      const_attr_reader  :K_EventParamTextInputSendFixLen
      
      const_set_lazy(:K_EventParamTextInputSendHiliteRng) { (Character.new(?t.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?h.ord) << 8) + Character.new(?i.ord) }
      const_attr_reader  :K_EventParamTextInputSendHiliteRng
      
      const_set_lazy(:K_EventParamTextInputSendKeyboardEvent) { (Character.new(?t.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?k.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_EventParamTextInputSendKeyboardEvent
      
      const_set_lazy(:K_EventParamTextInputSendText) { (Character.new(?t.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?x.ord) }
      const_attr_reader  :K_EventParamTextInputSendText
      
      const_set_lazy(:K_EventParamKeyUnicodes) { (Character.new(?k.ord) << 24) + (Character.new(?u.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?i.ord) }
      const_attr_reader  :K_EventParamKeyUnicodes
      
      const_set_lazy(:K_EventParamWindowDefPart) { (Character.new(?w.ord) << 24) + (Character.new(?d.ord) << 16) + (Character.new(?p.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :K_EventParamWindowDefPart
      
      const_set_lazy(:K_EventParamWindowMouseLocation) { (Character.new(?w.ord) << 24) + (Character.new(?m.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?u.ord) }
      const_attr_reader  :K_EventParamWindowMouseLocation
      
      const_set_lazy(:K_EventParamWindowRef) { (Character.new(?w.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :K_EventParamWindowRef
      
      const_set_lazy(:K_EventParamWindowRegionCode) { (Character.new(?w.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?h.ord) << 8) + Character.new(?p.ord) }
      const_attr_reader  :K_EventParamWindowRegionCode
      
      const_set_lazy(:K_EventProcessCommand) { 1 }
      const_attr_reader  :K_EventProcessCommand
      
      const_set_lazy(:K_EventQueueOptionsNone) { 0 }
      const_attr_reader  :K_EventQueueOptionsNone
      
      const_set_lazy(:K_EventRawKeyDown) { 1 }
      const_attr_reader  :K_EventRawKeyDown
      
      const_set_lazy(:K_EventRawKeyRepeat) { 2 }
      const_attr_reader  :K_EventRawKeyRepeat
      
      const_set_lazy(:K_EventRawKeyUp) { 3 }
      const_attr_reader  :K_EventRawKeyUp
      
      const_set_lazy(:K_EventRawKeyModifiersChanged) { 4 }
      const_attr_reader  :K_EventRawKeyModifiersChanged
      
      const_set_lazy(:K_EventSearchFieldCancelClicked) { 1 }
      const_attr_reader  :K_EventSearchFieldCancelClicked
      
      const_set_lazy(:K_EventSearchFieldSearchClicked) { 2 }
      const_attr_reader  :K_EventSearchFieldSearchClicked
      
      const_set_lazy(:K_EventScrollableScrollTo) { 10 }
      const_attr_reader  :K_EventScrollableScrollTo
      
      const_set_lazy(:K_EventTextInputUpdateActiveInputArea) { 1 }
      const_attr_reader  :K_EventTextInputUpdateActiveInputArea
      
      const_set_lazy(:K_EventTextInputUnicodeForKeyEvent) { 2 }
      const_attr_reader  :K_EventTextInputUnicodeForKeyEvent
      
      const_set_lazy(:K_EventTextInputOffsetToPos) { 3 }
      const_attr_reader  :K_EventTextInputOffsetToPos
      
      const_set_lazy(:K_EventTextInputPosToOffset) { 4 }
      const_attr_reader  :K_EventTextInputPosToOffset
      
      const_set_lazy(:K_EventTextInputGetSelectedText) { 6 }
      const_attr_reader  :K_EventTextInputGetSelectedText
      
      const_set_lazy(:K_EventWindowActivated) { 5 }
      const_attr_reader  :K_EventWindowActivated
      
      const_set_lazy(:K_EventWindowBoundsChanged) { 27 }
      const_attr_reader  :K_EventWindowBoundsChanged
      
      const_set_lazy(:K_EventWindowClose) { 72 }
      const_attr_reader  :K_EventWindowClose
      
      const_set_lazy(:K_EventWindowCollapsing) { 86 }
      const_attr_reader  :K_EventWindowCollapsing
      
      const_set_lazy(:K_EventWindowCollapsed) { 67 }
      const_attr_reader  :K_EventWindowCollapsed
      
      const_set_lazy(:K_EventWindowDeactivated) { 6 }
      const_attr_reader  :K_EventWindowDeactivated
      
      const_set_lazy(:K_EventWindowDrawContent) { 2 }
      const_attr_reader  :K_EventWindowDrawContent
      
      const_set_lazy(:K_EventWindowExpanded) { 70 }
      const_attr_reader  :K_EventWindowExpanded
      
      const_set_lazy(:K_EventWindowFocusAcquired) { 200 }
      const_attr_reader  :K_EventWindowFocusAcquired
      
      const_set_lazy(:K_EventWindowFocusRelinquish) { 201 }
      const_attr_reader  :K_EventWindowFocusRelinquish
      
      const_set_lazy(:K_EventWindowGetClickModality) { 8 }
      const_attr_reader  :K_EventWindowGetClickModality
      
      const_set_lazy(:K_EventWindowGetRegion) { 1002 }
      const_attr_reader  :K_EventWindowGetRegion
      
      const_set_lazy(:K_EventWindowHidden) { 25 }
      const_attr_reader  :K_EventWindowHidden
      
      const_set_lazy(:K_EventWindowHitTest) { 1003 }
      const_attr_reader  :K_EventWindowHitTest
      
      const_set_lazy(:K_EventWindowShown) { 24 }
      const_attr_reader  :K_EventWindowShown
      
      const_set_lazy(:K_EventWindowToolbarSwitchMode) { 150 }
      const_attr_reader  :K_EventWindowToolbarSwitchMode
      
      const_set_lazy(:K_EventWindowUpdate) { 1 }
      const_attr_reader  :K_EventWindowUpdate
      
      const_set_lazy(:K_FMIterationCompleted) { -980 }
      const_attr_reader  :K_FMIterationCompleted
      
      const_set_lazy(:K_FloatingWindowClass) { 5 }
      const_attr_reader  :K_FloatingWindowClass
      
      const_set_lazy(:K_FontFamilyName) { 1 }
      const_attr_reader  :K_FontFamilyName
      
      const_set_lazy(:K_FontNoPlatformCode) { -1 }
      const_attr_reader  :K_FontNoPlatformCode
      
      const_set_lazy(:K_FontNoScriptCode) { -1 }
      const_attr_reader  :K_FontNoScriptCode
      
      const_set_lazy(:K_FontNoLanguageCode) { -1 }
      const_attr_reader  :K_FontNoLanguageCode
      
      const_set_lazy(:K_FontUnicodePlatform) { 0 }
      const_attr_reader  :K_FontUnicodePlatform
      
      const_set_lazy(:K_FontSelectionQDStyleVersionZero) { 0 }
      const_attr_reader  :K_FontSelectionQDStyleVersionZero
      
      const_set_lazy(:K_FontSelectionATSUIType) { (Character.new(?a.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :K_FontSelectionATSUIType
      
      const_set_lazy(:K_FontSelectionQDType) { (Character.new(?q.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :K_FontSelectionQDType
      
      const_set_lazy(:K_HIComboBoxAutoCompletionAttribute) { (1 << 0) }
      const_attr_reader  :K_HIComboBoxAutoCompletionAttribute
      
      const_set_lazy(:K_HIComboBoxAutoDisclosureAttribute) { (1 << 1) }
      const_attr_reader  :K_HIComboBoxAutoDisclosureAttribute
      
      const_set_lazy(:K_HIComboBoxAutoSizeListAttribute) { (1 << 3) }
      const_attr_reader  :K_HIComboBoxAutoSizeListAttribute
      
      const_set_lazy(:K_HIComboBoxEditTextPart) { 5 }
      const_attr_reader  :K_HIComboBoxEditTextPart
      
      const_set_lazy(:K_HIComboBoxNumVisibleItemsTag) { (Character.new(?c.ord) << 24) + (Character.new(?b.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?i.ord) }
      const_attr_reader  :K_HIComboBoxNumVisibleItemsTag
      
      const_set_lazy(:K_HICommandFromMenu) { 1 << 0 }
      const_attr_reader  :K_HICommandFromMenu
      
      const_set_lazy(:K_HICommandQuit) { (Character.new(?q.ord) << 24) + (Character.new(?u.ord) << 16) + (Character.new(?i.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_HICommandQuit
      
      const_set_lazy(:K_HILayoutBindMin) { 1 }
      const_attr_reader  :K_HILayoutBindMin
      
      const_set_lazy(:K_HILayoutBindMax) { 2 }
      const_attr_reader  :K_HILayoutBindMax
      
      const_set_lazy(:K_HIModalClickIsModal) { 1 << 0 }
      const_attr_reader  :K_HIModalClickIsModal
      
      const_set_lazy(:K_HIModalClickAllowEvent) { 1 << 1 }
      const_attr_reader  :K_HIModalClickAllowEvent
      
      const_set_lazy(:K_HIModalClickAnnounce) { 1 << 2 }
      const_attr_reader  :K_HIModalClickAnnounce
      
      const_set_lazy(:K_HIScrollViewOptionsVertScroll) { (1 << 0) }
      const_attr_reader  :K_HIScrollViewOptionsVertScroll
      
      const_set_lazy(:K_HIScrollViewOptionsHorizScroll) { (1 << 1) }
      const_attr_reader  :K_HIScrollViewOptionsHorizScroll
      
      const_set_lazy(:K_HIScrollViewOptionsAllowGrow) { (1 << 2) }
      const_attr_reader  :K_HIScrollViewOptionsAllowGrow
      
      const_set_lazy(:K_HIThemeFrameTextFieldSquare) { 0 }
      const_attr_reader  :K_HIThemeFrameTextFieldSquare
      
      const_set_lazy(:K_HIThemeGroupBoxKindPrimary) { 0 }
      const_attr_reader  :K_HIThemeGroupBoxKindPrimary
      
      const_set_lazy(:K_HIThemeFrameListBox) { 1 }
      const_attr_reader  :K_HIThemeFrameListBox
      
      const_set_lazy(:K_RedrawHighlighting) { 1 }
      const_attr_reader  :K_RedrawHighlighting
      
      const_set_lazy(:K_TSMOutsideOfBody) { 1 }
      const_attr_reader  :K_TSMOutsideOfBody
      
      const_set_lazy(:K_TSMInsideOfBody) { 2 }
      const_attr_reader  :K_TSMInsideOfBody
      
      const_set_lazy(:K_TSMInsideOfActiveInputArea) { 3 }
      const_attr_reader  :K_TSMInsideOfActiveInputArea
      
      const_set_lazy(:K_ThemeComboBox) { 16 }
      const_attr_reader  :K_ThemeComboBox
      
      const_set_lazy(:K_ThemeLeftOutsideArrowPressed) { 0x1 }
      const_attr_reader  :K_ThemeLeftOutsideArrowPressed
      
      const_set_lazy(:K_ThemeLeftInsideArrowPressed) { 0x2 }
      const_attr_reader  :K_ThemeLeftInsideArrowPressed
      
      const_set_lazy(:K_ThemeLeftTrackPressed) { 0x4 }
      const_attr_reader  :K_ThemeLeftTrackPressed
      
      const_set_lazy(:K_ThemePopupButton) { 5 }
      const_attr_reader  :K_ThemePopupButton
      
      const_set_lazy(:K_ThemeThumbPressed) { 0x8 }
      const_attr_reader  :K_ThemeThumbPressed
      
      const_set_lazy(:K_ThemeRightTrackPressed) { 0x10 }
      const_attr_reader  :K_ThemeRightTrackPressed
      
      const_set_lazy(:K_ThemeRightInsideArrowPressed) { 0x20 }
      const_attr_reader  :K_ThemeRightInsideArrowPressed
      
      const_set_lazy(:K_ThemeRightOutsideArrowPressed) { 0x40 }
      const_attr_reader  :K_ThemeRightOutsideArrowPressed
      
      const_set_lazy(:K_ThemeScrollBarMedium) { 0 }
      const_attr_reader  :K_ThemeScrollBarMedium
      
      const_set_lazy(:K_ThemeSliderMedium) { 2 }
      const_attr_reader  :K_ThemeSliderMedium
      
      const_set_lazy(:K_ThemeProgressBarMedium) { 3 }
      const_attr_reader  :K_ThemeProgressBarMedium
      
      const_set_lazy(:K_ThemeTrackActive) { 0 }
      const_attr_reader  :K_ThemeTrackActive
      
      const_set_lazy(:K_ThemeTrackDisabled) { 1 }
      const_attr_reader  :K_ThemeTrackDisabled
      
      const_set_lazy(:K_ThemeTrackNothingToScroll) { 2 }
      const_attr_reader  :K_ThemeTrackNothingToScroll
      
      const_set_lazy(:K_ThemeTrackInactive) { 3 }
      const_attr_reader  :K_ThemeTrackInactive
      
      const_set_lazy(:K_ThemeTrackHorizontal) { (1 << 0) }
      const_attr_reader  :K_ThemeTrackHorizontal
      
      const_set_lazy(:K_ThemeTrackRightToLeft) { (1 << 1) }
      const_attr_reader  :K_ThemeTrackRightToLeft
      
      const_set_lazy(:K_ThemeTrackShowThumb) { (1 << 2) }
      const_attr_reader  :K_ThemeTrackShowThumb
      
      const_set_lazy(:K_ThemeTrackThumbRgnIsNotGhost) { (1 << 3) }
      const_attr_reader  :K_ThemeTrackThumbRgnIsNotGhost
      
      const_set_lazy(:K_ThemeTrackNoScrollBarArrows) { (1 << 4) }
      const_attr_reader  :K_ThemeTrackNoScrollBarArrows
      
      const_set_lazy(:K_ThemeTrackHasFocus) { (1 << 5) }
      const_attr_reader  :K_ThemeTrackHasFocus
      
      const_set_lazy(:K_ThemeTabNonFront) { 0 }
      const_attr_reader  :K_ThemeTabNonFront
      
      const_set_lazy(:K_ThemeTabNonFrontPressed) { 1 }
      const_attr_reader  :K_ThemeTabNonFrontPressed
      
      const_set_lazy(:K_ThemeTabNonFrontInactive) { 2 }
      const_attr_reader  :K_ThemeTabNonFrontInactive
      
      const_set_lazy(:K_ThemeTabFront) { 3 }
      const_attr_reader  :K_ThemeTabFront
      
      const_set_lazy(:K_ThemeTabFrontInactive) { 4 }
      const_attr_reader  :K_ThemeTabFrontInactive
      
      const_set_lazy(:K_ThemeTabNonFrontUnavailable) { 5 }
      const_attr_reader  :K_ThemeTabNonFrontUnavailable
      
      const_set_lazy(:K_ThemeTabFrontUnavailable) { 6 }
      const_attr_reader  :K_ThemeTabFrontUnavailable
      
      const_set_lazy(:K_ThemeTabNorth) { 0 }
      const_attr_reader  :K_ThemeTabNorth
      
      const_set_lazy(:K_ThemeTabSouth) { 1 }
      const_attr_reader  :K_ThemeTabSouth
      
      const_set_lazy(:K_ThemeTabEast) { 2 }
      const_attr_reader  :K_ThemeTabEast
      
      const_set_lazy(:K_ThemeTabWest) { 3 }
      const_attr_reader  :K_ThemeTabWest
      
      const_set_lazy(:K_ThemeTextColorMenuItemDisabled) { 36 }
      const_attr_reader  :K_ThemeTextColorMenuItemDisabled
      
      const_set_lazy(:K_HIThemeOrientationNormal) { 0 }
      const_attr_reader  :K_HIThemeOrientationNormal
      
      const_set_lazy(:K_HIThemeOrientationInverted) { 1 }
      const_attr_reader  :K_HIThemeOrientationInverted
      
      const_set_lazy(:K_HIThemeTextHorizontalFlushLeft) { 0 }
      const_attr_reader  :K_HIThemeTextHorizontalFlushLeft
      
      const_set_lazy(:K_HIThemeTextHorizontalFlushCenter) { 1 }
      const_attr_reader  :K_HIThemeTextHorizontalFlushCenter
      
      const_set_lazy(:K_HIThemeTextHorizontalFlushRight) { 2 }
      const_attr_reader  :K_HIThemeTextHorizontalFlushRight
      
      const_set_lazy(:K_HIThemeTextVerticalFlushTop) { 0 }
      const_attr_reader  :K_HIThemeTextVerticalFlushTop
      
      const_set_lazy(:K_HIThemeTextVerticalFlushCenter) { 1 }
      const_attr_reader  :K_HIThemeTextVerticalFlushCenter
      
      const_set_lazy(:K_HIThemeTextVerticalFlushBottom) { 2 }
      const_attr_reader  :K_HIThemeTextVerticalFlushBottom
      
      const_set_lazy(:K_HIThemeTabPositionFirst) { 0 }
      const_attr_reader  :K_HIThemeTabPositionFirst
      
      const_set_lazy(:K_HIThemeTabPositionMiddle) { 1 }
      const_attr_reader  :K_HIThemeTabPositionMiddle
      
      const_set_lazy(:K_HIThemeTabPositionLast) { 2 }
      const_attr_reader  :K_HIThemeTabPositionLast
      
      const_set_lazy(:K_HIThemeTabPositionOnly) { 3 }
      const_attr_reader  :K_HIThemeTabPositionOnly
      
      const_set_lazy(:K_HIThemeTabAdornmentFocus) { 1 << 2 }
      const_attr_reader  :K_HIThemeTabAdornmentFocus
      
      const_set_lazy(:K_HIThemeTabAdornmentTrailingSeparator) { 1 << 4 }
      const_attr_reader  :K_HIThemeTabAdornmentTrailingSeparator
      
      const_set_lazy(:K_HIViewFeatureIsOpaque) { 1 << 25 }
      const_attr_reader  :K_HIViewFeatureIsOpaque
      
      const_set_lazy(:K_HIViewZOrderAbove) { 1 }
      const_attr_reader  :K_HIViewZOrderAbove
      
      const_set_lazy(:K_HIViewZOrderBelow) { 2 }
      const_attr_reader  :K_HIViewZOrderBelow
      
      const_set_lazy(:K_HITransformNone) { 0x0 }
      const_attr_reader  :K_HITransformNone
      
      const_set_lazy(:K_HITransformDisabled) { 0x1 }
      const_attr_reader  :K_HITransformDisabled
      
      const_set_lazy(:K_HITransformSelected) { 0x4000 }
      const_attr_reader  :K_HITransformSelected
      
      const_set_lazy(:K_HMCFStringContent) { (Character.new(?c.ord) << 24) + (Character.new(?f.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_HMCFStringContent
      
      const_set_lazy(:K_HMOutsideBottomRightAligned) { 10 }
      const_attr_reader  :K_HMOutsideBottomRightAligned
      
      const_set_lazy(:K_HMAbsoluteCenterAligned) { 23 }
      const_attr_reader  :K_HMAbsoluteCenterAligned
      
      const_set_lazy(:K_HMContentProvided) { 0 }
      const_attr_reader  :K_HMContentProvided
      
      const_set_lazy(:K_HMContentNotProvided) { -1 }
      const_attr_reader  :K_HMContentNotProvided
      
      const_set_lazy(:K_HMContentNotProvidedDontPropagate) { -2 }
      const_attr_reader  :K_HMContentNotProvidedDontPropagate
      
      const_set_lazy(:K_HMDefaultSide) { 0 }
      const_attr_reader  :K_HMDefaultSide
      
      const_set_lazy(:K_HMDisposeContent) { 1 }
      const_attr_reader  :K_HMDisposeContent
      
      const_set_lazy(:K_HMSupplyContent) { 0 }
      const_attr_reader  :K_HMSupplyContent
      
      const_set_lazy(:K_HelpWindowClass) { 10 }
      const_attr_reader  :K_HelpWindowClass
      
      const_set_lazy(:K_InvalidFontFamily) { -1 }
      const_attr_reader  :K_InvalidFontFamily
      
      const_set_lazy(:K_Large1BitMask) { (Character.new(?I.ord) << 24) + (Character.new(?C.ord) << 16) + (Character.new(?N.ord) << 8) + Character.new(?#.ord) }
      const_attr_reader  :K_Large1BitMask
      
      const_set_lazy(:K_Large4BitData) { (Character.new(?i.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?l.ord) << 8) + Character.new(?4.ord) }
      const_attr_reader  :K_Large4BitData
      
      const_set_lazy(:K_Large8BitData) { (Character.new(?i.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?l.ord) << 8) + Character.new(?8.ord) }
      const_attr_reader  :K_Large8BitData
      
      const_set_lazy(:K_Large32BitData) { (Character.new(?i.ord) << 24) + (Character.new(?l.ord) << 16) + (Character.new(?3.ord) << 8) + Character.new(?2.ord) }
      const_attr_reader  :K_Large32BitData
      
      const_set_lazy(:K_Large8BitMask) { (Character.new(?l.ord) << 24) + (Character.new(?8.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?k.ord) }
      const_attr_reader  :K_Large8BitMask
      
      const_set_lazy(:K_Small1BitMask) { (Character.new(?i.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?#.ord) }
      const_attr_reader  :K_Small1BitMask
      
      const_set_lazy(:K_Small4BitData) { (Character.new(?i.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?4.ord) }
      const_attr_reader  :K_Small4BitData
      
      const_set_lazy(:K_Small8BitData) { (Character.new(?i.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?8.ord) }
      const_attr_reader  :K_Small8BitData
      
      const_set_lazy(:K_Small32BitData) { (Character.new(?i.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?3.ord) << 8) + Character.new(?2.ord) }
      const_attr_reader  :K_Small32BitData
      
      const_set_lazy(:K_Small8BitMask) { (Character.new(?s.ord) << 24) + (Character.new(?8.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?k.ord) }
      const_attr_reader  :K_Small8BitMask
      
      const_set_lazy(:K_Mini1BitMask) { (Character.new(?i.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?#.ord) }
      const_attr_reader  :K_Mini1BitMask
      
      const_set_lazy(:K_Mini4BitData) { (Character.new(?i.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?4.ord) }
      const_attr_reader  :K_Mini4BitData
      
      const_set_lazy(:K_Mini8BitData) { (Character.new(?i.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?8.ord) }
      const_attr_reader  :K_Mini8BitData
      
      const_set_lazy(:K_Thumbnail32BitData) { (Character.new(?i.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?3.ord) << 8) + Character.new(?2.ord) }
      const_attr_reader  :K_Thumbnail32BitData
      
      const_set_lazy(:K_Thumbnail8BitMask) { (Character.new(?t.ord) << 24) + (Character.new(?8.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?k.ord) }
      const_attr_reader  :K_Thumbnail8BitMask
      
      const_set_lazy(:K_Huge1BitMask) { (Character.new(?i.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?h.ord) << 8) + Character.new(?#.ord) }
      const_attr_reader  :K_Huge1BitMask
      
      const_set_lazy(:K_Huge4BitData) { (Character.new(?i.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?h.ord) << 8) + Character.new(?4.ord) }
      const_attr_reader  :K_Huge4BitData
      
      const_set_lazy(:K_Huge8BitData) { (Character.new(?i.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?h.ord) << 8) + Character.new(?8.ord) }
      const_attr_reader  :K_Huge8BitData
      
      const_set_lazy(:K_Huge32BitData) { (Character.new(?i.ord) << 24) + (Character.new(?h.ord) << 16) + (Character.new(?3.ord) << 8) + Character.new(?2.ord) }
      const_attr_reader  :K_Huge32BitData
      
      const_set_lazy(:K_Huge8BitMask) { (Character.new(?h.ord) << 24) + (Character.new(?8.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?k.ord) }
      const_attr_reader  :K_Huge8BitMask
      
      const_set_lazy(:K_LigaturesType) { 1 }
      const_attr_reader  :K_LigaturesType
      
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
      
      const_set_lazy(:K_QDRegionToRectsMsgInit) { 1 }
      const_attr_reader  :K_QDRegionToRectsMsgInit
      
      const_set_lazy(:K_QDRegionToRectsMsgParse) { 2 }
      const_attr_reader  :K_QDRegionToRectsMsgParse
      
      const_set_lazy(:K_QDRegionToRectsMsgTerminate) { 3 }
      const_attr_reader  :K_QDRegionToRectsMsgTerminate
      
      const_set_lazy(:K_RequiredLigaturesOffSelector) { 1 }
      const_attr_reader  :K_RequiredLigaturesOffSelector
      
      const_set_lazy(:K_CommonLigaturesOffSelector) { 3 }
      const_attr_reader  :K_CommonLigaturesOffSelector
      
      const_set_lazy(:K_RareLigaturesOffSelector) { 5 }
      const_attr_reader  :K_RareLigaturesOffSelector
      
      const_set_lazy(:K_LogosOffSelector) { 7 }
      const_attr_reader  :K_LogosOffSelector
      
      const_set_lazy(:K_LSLaunchDefaults) { 0x1 }
      const_attr_reader  :K_LSLaunchDefaults
      
      const_set_lazy(:K_LSUnknownType) { 0 }
      const_attr_reader  :K_LSUnknownType
      
      const_set_lazy(:K_LSUnknownCreator) { 0 }
      const_attr_reader  :K_LSUnknownCreator
      
      const_set_lazy(:K_LSRolesAll) { -0x1 }
      const_attr_reader  :K_LSRolesAll
      
      const_set_lazy(:K_RebusPicturesOffSelector) { 9 }
      const_attr_reader  :K_RebusPicturesOffSelector
      
      const_set_lazy(:K_DiphthongLigaturesOffSelector) { 11 }
      const_attr_reader  :K_DiphthongLigaturesOffSelector
      
      const_set_lazy(:K_SquaredLigaturesOffSelector) { 13 }
      const_attr_reader  :K_SquaredLigaturesOffSelector
      
      const_set_lazy(:K_AbbrevSquaredLigaturesOffSelector) { 15 }
      const_attr_reader  :K_AbbrevSquaredLigaturesOffSelector
      
      const_set_lazy(:K_MacHelpVersion) { 3 }
      const_attr_reader  :K_MacHelpVersion
      
      const_set_lazy(:K_MenuBlankGlyph) { 97 }
      const_attr_reader  :K_MenuBlankGlyph
      
      const_set_lazy(:K_MenuCapsLockGlyph) { 99 }
      const_attr_reader  :K_MenuCapsLockGlyph
      
      const_set_lazy(:K_MenuCGImageRefType) { 7 }
      const_attr_reader  :K_MenuCGImageRefType
      
      const_set_lazy(:K_MenuCheckmarkGlyph) { 18 }
      const_attr_reader  :K_MenuCheckmarkGlyph
      
      const_set_lazy(:K_MenuClearGlyph) { 28 }
      const_attr_reader  :K_MenuClearGlyph
      
      const_set_lazy(:K_MenuCommandGlyph) { 17 }
      const_attr_reader  :K_MenuCommandGlyph
      
      const_set_lazy(:K_MenuContextualMenuGlyph) { 109 }
      const_attr_reader  :K_MenuContextualMenuGlyph
      
      const_set_lazy(:K_MenuControlGlyph) { 6 }
      const_attr_reader  :K_MenuControlGlyph
      
      const_set_lazy(:K_MenuControlISOGlyph) { 138 }
      const_attr_reader  :K_MenuControlISOGlyph
      
      const_set_lazy(:K_MenuControlModifier) { 4 }
      const_attr_reader  :K_MenuControlModifier
      
      const_set_lazy(:K_MenuDeleteLeftGlyph) { 23 }
      const_attr_reader  :K_MenuDeleteLeftGlyph
      
      const_set_lazy(:K_MenuDeleteRightGlyph) { 10 }
      const_attr_reader  :K_MenuDeleteRightGlyph
      
      const_set_lazy(:K_MenuDiamondGlyph) { 19 }
      const_attr_reader  :K_MenuDiamondGlyph
      
      const_set_lazy(:K_MenuDownArrowGlyph) { 106 }
      const_attr_reader  :K_MenuDownArrowGlyph
      
      const_set_lazy(:K_MenuDownwardArrowDashedGlyph) { 16 }
      const_attr_reader  :K_MenuDownwardArrowDashedGlyph
      
      const_set_lazy(:K_MenuEnterGlyph) { 4 }
      const_attr_reader  :K_MenuEnterGlyph
      
      const_set_lazy(:K_MenuEscapeGlyph) { 27 }
      const_attr_reader  :K_MenuEscapeGlyph
      
      const_set_lazy(:K_MenuF10Glyph) { 120 }
      const_attr_reader  :K_MenuF10Glyph
      
      const_set_lazy(:K_MenuF11Glyph) { 121 }
      const_attr_reader  :K_MenuF11Glyph
      
      const_set_lazy(:K_MenuF12Glyph) { 122 }
      const_attr_reader  :K_MenuF12Glyph
      
      const_set_lazy(:K_MenuF1Glyph) { 111 }
      const_attr_reader  :K_MenuF1Glyph
      
      const_set_lazy(:K_MenuF2Glyph) { 112 }
      const_attr_reader  :K_MenuF2Glyph
      
      const_set_lazy(:K_MenuF3Glyph) { 113 }
      const_attr_reader  :K_MenuF3Glyph
      
      const_set_lazy(:K_MenuF4Glyph) { 114 }
      const_attr_reader  :K_MenuF4Glyph
      
      const_set_lazy(:K_MenuF5Glyph) { 115 }
      const_attr_reader  :K_MenuF5Glyph
      
      const_set_lazy(:K_MenuF6Glyph) { 116 }
      const_attr_reader  :K_MenuF6Glyph
      
      const_set_lazy(:K_MenuF7Glyph) { 117 }
      const_attr_reader  :K_MenuF7Glyph
      
      const_set_lazy(:K_MenuF8Glyph) { 118 }
      const_attr_reader  :K_MenuF8Glyph
      
      const_set_lazy(:K_MenuF9Glyph) { 119 }
      const_attr_reader  :K_MenuF9Glyph
      
      const_set_lazy(:K_MenuHelpGlyph) { 103 }
      const_attr_reader  :K_MenuHelpGlyph
      
      const_set_lazy(:K_MenuItemAttrCustomDraw) { 1 << 11 }
      const_attr_reader  :K_MenuItemAttrCustomDraw
      
      const_set_lazy(:K_MenuItemAttrAutoRepeat) { 1 << 9 }
      const_attr_reader  :K_MenuItemAttrAutoRepeat
      
      const_set_lazy(:K_MenuItemAttrSeparator) { 64 }
      const_attr_reader  :K_MenuItemAttrSeparator
      
      const_set_lazy(:K_MenuLeftArrowDashedGlyph) { 24 }
      const_attr_reader  :K_MenuLeftArrowDashedGlyph
      
      const_set_lazy(:K_MenuLeftArrowGlyph) { 100 }
      const_attr_reader  :K_MenuLeftArrowGlyph
      
      const_set_lazy(:K_MenuNoCommandModifier) { (1 << 3) }
      const_attr_reader  :K_MenuNoCommandModifier
      
      const_set_lazy(:K_MenuNoIcon) { 0 }
      const_attr_reader  :K_MenuNoIcon
      
      const_set_lazy(:K_MenuNoModifiers) { 0 }
      const_attr_reader  :K_MenuNoModifiers
      
      const_set_lazy(:K_MenuNonmarkingReturnGlyph) { 13 }
      const_attr_reader  :K_MenuNonmarkingReturnGlyph
      
      const_set_lazy(:K_MenuNullGlyph) { 0 }
      const_attr_reader  :K_MenuNullGlyph
      
      const_set_lazy(:K_MenuOptionGlyph) { 7 }
      const_attr_reader  :K_MenuOptionGlyph
      
      const_set_lazy(:K_MenuOptionModifier) { (1 << 1) }
      const_attr_reader  :K_MenuOptionModifier
      
      const_set_lazy(:K_MenuPageDownGlyph) { 107 }
      const_attr_reader  :K_MenuPageDownGlyph
      
      const_set_lazy(:K_MenuPageUpGlyph) { 98 }
      const_attr_reader  :K_MenuPageUpGlyph
      
      const_set_lazy(:K_MenuPencilGlyph) { 15 }
      const_attr_reader  :K_MenuPencilGlyph
      
      const_set_lazy(:K_MenuPowerGlyph) { 110 }
      const_attr_reader  :K_MenuPowerGlyph
      
      const_set_lazy(:K_MenuReturnGlyph) { 11 }
      const_attr_reader  :K_MenuReturnGlyph
      
      const_set_lazy(:K_MenuReturnR2LGlyph) { 12 }
      const_attr_reader  :K_MenuReturnR2LGlyph
      
      const_set_lazy(:K_MenuRightArrowDashedGlyph) { 26 }
      const_attr_reader  :K_MenuRightArrowDashedGlyph
      
      const_set_lazy(:K_MenuRightArrowGlyph) { 101 }
      const_attr_reader  :K_MenuRightArrowGlyph
      
      const_set_lazy(:K_MenuShiftGlyph) { 5 }
      const_attr_reader  :K_MenuShiftGlyph
      
      const_set_lazy(:K_MenuShiftModifier) { (1 << 0) }
      const_attr_reader  :K_MenuShiftModifier
      
      const_set_lazy(:K_MenuTabRightGlyph) { 2 }
      const_attr_reader  :K_MenuTabRightGlyph
      
      const_set_lazy(:K_MenuUpArrowDashedGlyph) { 25 }
      const_attr_reader  :K_MenuUpArrowDashedGlyph
      
      const_set_lazy(:K_MenuUpArrowGlyph) { 104 }
      const_attr_reader  :K_MenuUpArrowGlyph
      
      const_set_lazy(:K_MouseTrackingMouseDown) { 1 }
      const_attr_reader  :K_MouseTrackingMouseDown
      
      const_set_lazy(:K_MouseTrackingMouseUp) { 2 }
      const_attr_reader  :K_MouseTrackingMouseUp
      
      const_set_lazy(:K_MouseTrackingMouseExited) { 3 }
      const_attr_reader  :K_MouseTrackingMouseExited
      
      const_set_lazy(:K_MouseTrackingMouseEntered) { 4 }
      const_attr_reader  :K_MouseTrackingMouseEntered
      
      const_set_lazy(:K_MouseTrackingMouseDragged) { 5 }
      const_attr_reader  :K_MouseTrackingMouseDragged
      
      const_set_lazy(:K_MouseTrackingMouseKeyModifiersChanged) { 6 }
      const_attr_reader  :K_MouseTrackingMouseKeyModifiersChanged
      
      const_set_lazy(:K_MouseTrackingUserCancelled) { 7 }
      const_attr_reader  :K_MouseTrackingUserCancelled
      
      const_set_lazy(:K_MouseTrackingTimedOut) { 8 }
      const_attr_reader  :K_MouseTrackingTimedOut
      
      const_set_lazy(:K_MouseTrackingMouseMoved) { 9 }
      const_attr_reader  :K_MouseTrackingMouseMoved
      
      const_set_lazy(:K_ModalWindowClass) { 3 }
      const_attr_reader  :K_ModalWindowClass
      
      const_set_lazy(:K_MovableModalWindowClass) { 4 }
      const_attr_reader  :K_MovableModalWindowClass
      
      const_set_lazy(:K_NavAllowInvisibleFiles) { 0x100 }
      const_attr_reader  :K_NavAllowInvisibleFiles
      
      const_set_lazy(:K_NavAllowMultipleFiles) { 0x80 }
      const_attr_reader  :K_NavAllowMultipleFiles
      
      const_set_lazy(:K_NavAllowOpenPackages) { 0x2000 }
      const_attr_reader  :K_NavAllowOpenPackages
      
      const_set_lazy(:K_NavCBNewLocation) { 5 }
      const_attr_reader  :K_NavCBNewLocation
      
      const_set_lazy(:K_NavCBPopupMenuSelect) { 8 }
      const_attr_reader  :K_NavCBPopupMenuSelect
      
      const_set_lazy(:K_NavCtlSelectCustomType) { 21 }
      const_attr_reader  :K_NavCtlSelectCustomType
      
      const_set_lazy(:K_NavCtlSetLocation) { 8 }
      const_attr_reader  :K_NavCtlSetLocation
      
      const_set_lazy(:K_NavFilteringBrowserList) { 0 }
      const_attr_reader  :K_NavFilteringBrowserList
      
      const_set_lazy(:K_NavGenericSignature) { (Character.new(?*.ord) << 24) + (Character.new(?*.ord) << 16) + (Character.new(?*.ord) << 8) + Character.new(?*.ord) }
      const_attr_reader  :K_NavGenericSignature
      
      const_set_lazy(:K_NavSupportPackages) { 0x1000 }
      const_attr_reader  :K_NavSupportPackages
      
      const_set_lazy(:K_NavDontConfirmReplacement) { 0x10000 }
      const_attr_reader  :K_NavDontConfirmReplacement
      
      const_set_lazy(:K_NavUserActionCancel) { 1 }
      const_attr_reader  :K_NavUserActionCancel
      
      const_set_lazy(:K_NavUserActionChoose) { 4 }
      const_attr_reader  :K_NavUserActionChoose
      
      const_set_lazy(:K_NavUserActionOpen) { 2 }
      const_attr_reader  :K_NavUserActionOpen
      
      const_set_lazy(:K_NavUserActionSaveAs) { 3 }
      const_attr_reader  :K_NavUserActionSaveAs
      
      const_set_lazy(:K_OnSystemDisk) { -32768 }
      const_attr_reader  :K_OnSystemDisk
      
      const_set_lazy(:K_OverlayWindowClass) { 14 }
      const_attr_reader  :K_OverlayWindowClass
      
      const_set_lazy(:K_PMCancel) { 0x80 }
      const_attr_reader  :K_PMCancel
      
      const_set_lazy(:K_PMDestinationFax) { 3 }
      const_attr_reader  :K_PMDestinationFax
      
      const_set_lazy(:K_PMDestinationFile) { 2 }
      const_attr_reader  :K_PMDestinationFile
      
      const_set_lazy(:K_PMDestinationPreview) { 4 }
      const_attr_reader  :K_PMDestinationPreview
      
      const_set_lazy(:K_PMDestinationPrinter) { 1 }
      const_attr_reader  :K_PMDestinationPrinter
      
      const_set_lazy(:K_PMPrintAllPages) { 2147483647 }
      const_attr_reader  :K_PMPrintAllPages
      
      const_set_lazy(:K_QDUseCGTextMetrics) { (1 << 2) }
      const_attr_reader  :K_QDUseCGTextMetrics
      
      const_set_lazy(:K_QDUseCGTextRendering) { (1 << 1) }
      const_attr_reader  :K_QDUseCGTextRendering
      
      const_set_lazy(:K_ScrapFlavorTypeUnicode) { (Character.new(?u.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?x.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_ScrapFlavorTypeUnicode
      
      const_set_lazy(:K_ScrapFlavorTypeText) { (Character.new(?T.ord) << 24) + (Character.new(?E.ord) << 16) + (Character.new(?X.ord) << 8) + Character.new(?T.ord) }
      const_attr_reader  :K_ScrapFlavorTypeText
      
      const_set_lazy(:K_ScrollBarsSyncAlwaysActive) { true }
      const_attr_reader  :K_ScrollBarsSyncAlwaysActive
      
      const_set_lazy(:K_ScrollBarsSyncWithFocus) { false }
      const_attr_reader  :K_ScrollBarsSyncWithFocus
      
      const_set_lazy(:K_HISearchFieldNoAttributes) { 0 }
      const_attr_reader  :K_HISearchFieldNoAttributes
      
      const_set_lazy(:K_HISearchFieldAttributesCancel) { 1 << 0 }
      const_attr_reader  :K_HISearchFieldAttributesCancel
      
      const_set_lazy(:K_HISearchFieldAttributesSearchIcon) { 1 << 1 }
      const_attr_reader  :K_HISearchFieldAttributesSearchIcon
      
      const_set_lazy(:K_SelectorAlLAvailableData) { -0x1 }
      const_attr_reader  :K_SelectorAlLAvailableData
      
      const_set_lazy(:K_SetFrontProcessFrontWindowOnly) { 1 << 0 }
      const_attr_reader  :K_SetFrontProcessFrontWindowOnly
      
      const_set_lazy(:K_SheetWindowClass) { 11 }
      const_attr_reader  :K_SheetWindowClass
      
      const_set_lazy(:K_StdCFStringAlertVersionOne) { 1 }
      const_attr_reader  :K_StdCFStringAlertVersionOne
      
      const_set_lazy(:K_SystemIconsCreator) { (Character.new(?m.ord) << 24) + (Character.new(?a.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?s.ord) }
      const_attr_reader  :K_SystemIconsCreator
      
      const_set_lazy(:K_SymbolLigaturesOffSelector) { 17 }
      const_attr_reader  :K_SymbolLigaturesOffSelector
      
      const_set_lazy(:K_ControlSliderDoesNotPoint) { 2 }
      const_attr_reader  :K_ControlSliderDoesNotPoint
      
      const_set_lazy(:K_TXNViewRectKey) { 0 }
      const_attr_reader  :K_TXNViewRectKey
      
      const_set_lazy(:K_TXNDestinationRectKey) { 1 }
      const_attr_reader  :K_TXNDestinationRectKey
      
      const_set_lazy(:K_TXNTextRectKey) { 2 }
      const_attr_reader  :K_TXNTextRectKey
      
      const_set_lazy(:K_TXNVerticalScrollBarRectKey) { 3 }
      const_attr_reader  :K_TXNVerticalScrollBarRectKey
      
      const_set_lazy(:K_TXNHorizontalScrollBarRectKey) { 4 }
      const_attr_reader  :K_TXNHorizontalScrollBarRectKey
      
      const_set_lazy(:K_TXNAlwaysWrapAtViewEdgeMask) { 1 << 11 }
      const_attr_reader  :K_TXNAlwaysWrapAtViewEdgeMask
      
      const_set_lazy(:K_TXNBackgroundTypeRGB) { 1 }
      const_attr_reader  :K_TXNBackgroundTypeRGB
      
      const_set_lazy(:K_TXNDefaultFontSize) { 0xc0000 }
      const_attr_reader  :K_TXNDefaultFontSize
      
      const_set_lazy(:K_TXNDefaultFontStyle) { 0 }
      const_attr_reader  :K_TXNDefaultFontStyle
      
      const_set_lazy(:K_TXNDefaultFontName) { 0 }
      const_attr_reader  :K_TXNDefaultFontName
      
      const_set_lazy(:K_TXNFlushLeft) { 1 }
      const_attr_reader  :K_TXNFlushLeft
      
      const_set_lazy(:K_TXNFlushRight) { 2 }
      const_attr_reader  :K_TXNFlushRight
      
      const_set_lazy(:K_TXNCenter) { 4 }
      const_attr_reader  :K_TXNCenter
      
      const_set_lazy(:K_TXNDisableDragAndDropTag) { (Character.new(?d.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?g.ord) }
      const_attr_reader  :K_TXNDisableDragAndDropTag
      
      const_set_lazy(:K_TXNDoFontSubstitution) { (Character.new(?f.ord) << 24) + (Character.new(?S.ord) << 16) + (Character.new(?u.ord) << 8) + Character.new(?b.ord) }
      const_attr_reader  :K_TXNDoFontSubstitution
      
      const_set_lazy(:K_TXNDontDrawCaretWhenInactiveMask) { 1 << 12 }
      const_attr_reader  :K_TXNDontDrawCaretWhenInactiveMask
      
      const_set_lazy(:K_TXNDrawCaretWhenInactiveTag) { (Character.new(?d.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_TXNDrawCaretWhenInactiveTag
      
      const_set_lazy(:K_TXNEndOffset) { 2147483647 }
      const_attr_reader  :K_TXNEndOffset
      
      const_set_lazy(:K_TXNIOPrivilegesTag) { (Character.new(?i.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?p.ord) << 8) + Character.new(?v.ord) }
      const_attr_reader  :K_TXNIOPrivilegesTag
      
      const_set_lazy(:K_TXNJustificationTag) { (Character.new(?j.ord) << 24) + (Character.new(?u.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_TXNJustificationTag
      
      const_set_lazy(:K_TXNMarginsTag) { (Character.new(?m.ord) << 24) + (Character.new(?a.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?g.ord) }
      const_attr_reader  :K_TXNMarginsTag
      
      const_set_lazy(:K_TXNMonostyledTextMask) { 1 << 17 }
      const_attr_reader  :K_TXNMonostyledTextMask
      
      const_set_lazy(:K_TXNQDFontFamilyIDAttribute) { (Character.new(?f.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_TXNQDFontFamilyIDAttribute
      
      const_set_lazy(:K_TXNQDFontSizeAttribute) { (Character.new(?s.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?z.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_TXNQDFontSizeAttribute
      
      const_set_lazy(:K_TXNQDFontStyleAttribute) { (Character.new(?f.ord) << 24) + (Character.new(?a.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_TXNQDFontStyleAttribute
      
      const_set_lazy(:K_TXNQDFontColorAttribute) { (Character.new(?k.ord) << 24) + (Character.new(?l.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :K_TXNQDFontColorAttribute
      
      const_set_lazy(:K_TXNQDFontFamilyIDAttributeSize) { 2 }
      const_attr_reader  :K_TXNQDFontFamilyIDAttributeSize
      
      const_set_lazy(:K_TXNQDFontSizeAttributeSize) { 2 }
      const_attr_reader  :K_TXNQDFontSizeAttributeSize
      
      const_set_lazy(:K_TXNQDFontStyleAttributeSize) { 2 }
      const_attr_reader  :K_TXNQDFontStyleAttributeSize
      
      const_set_lazy(:K_TXNQDFontColorAttributeSize) { 6 }
      const_attr_reader  :K_TXNQDFontColorAttributeSize
      
      const_set_lazy(:K_TXNReadOnlyMask) { 1 << 5 }
      const_attr_reader  :K_TXNReadOnlyMask
      
      const_set_lazy(:K_TXNSingleLineOnlyMask) { 1 << 14 }
      const_attr_reader  :K_TXNSingleLineOnlyMask
      
      const_set_lazy(:K_TXNStartOffset) { 0 }
      const_attr_reader  :K_TXNStartOffset
      
      const_set_lazy(:K_TXNSystemDefaultEncoding) { 0 }
      const_attr_reader  :K_TXNSystemDefaultEncoding
      
      const_set_lazy(:K_TXNTabSettingsTag) { (Character.new(?t.ord) << 24) + (Character.new(?a.ord) << 16) + (Character.new(?b.ord) << 8) + Character.new(?s.ord) }
      const_attr_reader  :K_TXNTabSettingsTag
      
      const_set_lazy(:K_TXNTextEditStyleFrameType) { 1 }
      const_attr_reader  :K_TXNTextEditStyleFrameType
      
      const_set_lazy(:K_TXNUnicodeTextData) { (Character.new(?u.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?x.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_TXNUnicodeTextData
      
      const_set_lazy(:K_TXNUnicodeTextFile) { (Character.new(?u.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?x.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_TXNUnicodeTextFile
      
      const_set_lazy(:K_TXNUseCurrentSelection) { -1 }
      const_attr_reader  :K_TXNUseCurrentSelection
      
      const_set_lazy(:K_TXNVisibilityTag) { (Character.new(?v.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?b.ord) }
      const_attr_reader  :K_TXNVisibilityTag
      
      const_set_lazy(:K_TXNWordWrapStateTag) { (Character.new(?w.ord) << 24) + (Character.new(?w.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?s.ord) }
      const_attr_reader  :K_TXNWordWrapStateTag
      
      const_set_lazy(:K_TXNAutoScrollBehaviorTag) { (Character.new(?s.ord) << 24) + (Character.new(?b.ord) << 16) + (Character.new(?e.ord) << 8) + Character.new(?v.ord) }
      const_attr_reader  :K_TXNAutoScrollBehaviorTag
      
      const_set_lazy(:K_TXNWantHScrollBarMask) { 1 << 2 }
      const_attr_reader  :K_TXNWantHScrollBarMask
      
      const_set_lazy(:K_TXNWantVScrollBarMask) { 1 << 3 }
      const_attr_reader  :K_TXNWantVScrollBarMask
      
      const_set_lazy(:K_TextEncodingMacUnicode) { 0x7e }
      const_attr_reader  :K_TextEncodingMacUnicode
      
      const_set_lazy(:K_TextEncodingMacRoman) { 0 }
      const_attr_reader  :K_TextEncodingMacRoman
      
      const_set_lazy(:K_TextLanguageDontCare) { -128 }
      const_attr_reader  :K_TextLanguageDontCare
      
      const_set_lazy(:K_TextRegionDontCare) { -128 }
      const_attr_reader  :K_TextRegionDontCare
      
      const_set_lazy(:K_ThemeAdornmentDefault) { 1 << 0 }
      const_attr_reader  :K_ThemeAdornmentDefault
      
      const_set_lazy(:K_ThemeAdornmentFocus) { 1 << 2 }
      const_attr_reader  :K_ThemeAdornmentFocus
      
      const_set_lazy(:K_ThemeAliasArrowCursor) { 2 }
      const_attr_reader  :K_ThemeAliasArrowCursor
      
      const_set_lazy(:K_ThemeArrowButton) { 4 }
      const_attr_reader  :K_ThemeArrowButton
      
      const_set_lazy(:K_ThemeArrowCursor) { 0 }
      const_attr_reader  :K_ThemeArrowCursor
      
      const_set_lazy(:K_ThemeArrowLeft) { 0 }
      const_attr_reader  :K_ThemeArrowLeft
      
      const_set_lazy(:K_ThemeArrowDown) { 1 }
      const_attr_reader  :K_ThemeArrowDown
      
      const_set_lazy(:K_ThemeArrowRight) { 2 }
      const_attr_reader  :K_ThemeArrowRight
      
      const_set_lazy(:K_ThemeArrowUp) { 3 }
      const_attr_reader  :K_ThemeArrowUp
      
      const_set_lazy(:K_ThemeArrow5pt) { 1 }
      const_attr_reader  :K_ThemeArrow5pt
      
      const_set_lazy(:K_ThemeArrow9pt) { 3 }
      const_attr_reader  :K_ThemeArrow9pt
      
      const_set_lazy(:K_ThemeBevelButtonSmall) { 8 }
      const_attr_reader  :K_ThemeBevelButtonSmall
      
      const_set_lazy(:K_ThemeBrushDialogBackgroundActive) { 1 }
      const_attr_reader  :K_ThemeBrushDialogBackgroundActive
      
      const_set_lazy(:K_ThemeBrushDocumentWindowBackground) { 15 }
      const_attr_reader  :K_ThemeBrushDocumentWindowBackground
      
      const_set_lazy(:K_ThemeBrushPrimaryHighlightColor) { -3 }
      const_attr_reader  :K_ThemeBrushPrimaryHighlightColor
      
      const_set_lazy(:K_ThemeBrushSecondaryHighlightColor) { -4 }
      const_attr_reader  :K_ThemeBrushSecondaryHighlightColor
      
      const_set_lazy(:K_ThemeBrushButtonFaceActive) { 29 }
      const_attr_reader  :K_ThemeBrushButtonFaceActive
      
      const_set_lazy(:K_ThemeBrushButtonInactiveDarkShadow) { 36 }
      const_attr_reader  :K_ThemeBrushButtonInactiveDarkShadow
      
      const_set_lazy(:K_ThemeBrushFocusHighlight) { 19 }
      const_attr_reader  :K_ThemeBrushFocusHighlight
      
      const_set_lazy(:K_ThemeBrushListViewBackground) { 10 }
      const_attr_reader  :K_ThemeBrushListViewBackground
      
      const_set_lazy(:K_ThemeButtonOff) { 0 }
      const_attr_reader  :K_ThemeButtonOff
      
      const_set_lazy(:K_ThemeButtonOn) { 1 }
      const_attr_reader  :K_ThemeButtonOn
      
      const_set_lazy(:K_ThemeButtonMixed) { 2 }
      const_attr_reader  :K_ThemeButtonMixed
      
      const_set_lazy(:K_ThemeCheckBox) { 1 }
      const_attr_reader  :K_ThemeCheckBox
      
      const_set_lazy(:K_ThemeCopyArrowCursor) { 1 }
      const_attr_reader  :K_ThemeCopyArrowCursor
      
      const_set_lazy(:K_ThemeCrossCursor) { 5 }
      const_attr_reader  :K_ThemeCrossCursor
      
      const_set_lazy(:K_ThemeCurrentPortFont) { 200 }
      const_attr_reader  :K_ThemeCurrentPortFont
      
      const_set_lazy(:K_ThemeDisclosureButton) { 6 }
      const_attr_reader  :K_ThemeDisclosureButton
      
      const_set_lazy(:K_ThemeDisclosureTriangle) { 6 }
      const_attr_reader  :K_ThemeDisclosureTriangle
      
      const_set_lazy(:K_ThemeDisclosureRight) { 0 }
      const_attr_reader  :K_ThemeDisclosureRight
      
      const_set_lazy(:K_ThemeDisclosureDown) { 1 }
      const_attr_reader  :K_ThemeDisclosureDown
      
      const_set_lazy(:K_ThemeDisclosureLeft) { 2 }
      const_attr_reader  :K_ThemeDisclosureLeft
      
      const_set_lazy(:K_ThemeEmphasizedSystemFont) { 4 }
      const_attr_reader  :K_ThemeEmphasizedSystemFont
      
      const_set_lazy(:K_ThemeIBeamCursor) { 4 }
      const_attr_reader  :K_ThemeIBeamCursor
      
      const_set_lazy(:K_ThemeMenuItemCmdKeyFont) { 103 }
      const_attr_reader  :K_ThemeMenuItemCmdKeyFont
      
      const_set_lazy(:K_ThemeMenuItemFont) { 101 }
      const_attr_reader  :K_ThemeMenuItemFont
      
      const_set_lazy(:K_ThemeMenuItemHierarchical) { 1 }
      const_attr_reader  :K_ThemeMenuItemHierarchical
      
      const_set_lazy(:K_ThemeMetricDisclosureButtonWidth) { 22 }
      const_attr_reader  :K_ThemeMetricDisclosureButtonWidth
      
      const_set_lazy(:K_ThemeMetricDisclosureTriangleHeight) { 25 }
      const_attr_reader  :K_ThemeMetricDisclosureTriangleHeight
      
      const_set_lazy(:K_ThemeMetricDisclosureTriangleWidth) { 26 }
      const_attr_reader  :K_ThemeMetricDisclosureTriangleWidth
      
      const_set_lazy(:K_ThemeMetricCheckBoxWidth) { 50 }
      const_attr_reader  :K_ThemeMetricCheckBoxWidth
      
      const_set_lazy(:K_ThemeMetricComboBoxLargeDisclosureWidth) { 74 }
      const_attr_reader  :K_ThemeMetricComboBoxLargeDisclosureWidth
      
      const_set_lazy(:K_ThemeMetricRadioButtonWidth) { 52 }
      const_attr_reader  :K_ThemeMetricRadioButtonWidth
      
      const_set_lazy(:K_ThemeMetricEditTextFrameOutset) { 5 }
      const_attr_reader  :K_ThemeMetricEditTextFrameOutset
      
      const_set_lazy(:K_ThemeMetricEditTextWhitespace) { 4 }
      const_attr_reader  :K_ThemeMetricEditTextWhitespace
      
      const_set_lazy(:K_ThemeMetricFocusRectOutset) { 7 }
      const_attr_reader  :K_ThemeMetricFocusRectOutset
      
      const_set_lazy(:K_ThemeMetricHSliderHeight) { 41 }
      const_attr_reader  :K_ThemeMetricHSliderHeight
      
      const_set_lazy(:K_ThemeMetricLargeTabHeight) { 10 }
      const_attr_reader  :K_ThemeMetricLargeTabHeight
      
      const_set_lazy(:K_ThemeMetricLargeTabCapsWidth) { 11 }
      const_attr_reader  :K_ThemeMetricLargeTabCapsWidth
      
      const_set_lazy(:K_ThemeMetricLittleArrowsHeight) { 27 }
      const_attr_reader  :K_ThemeMetricLittleArrowsHeight
      
      const_set_lazy(:K_ThemeMetricLittleArrowsWidth) { 28 }
      const_attr_reader  :K_ThemeMetricLittleArrowsWidth
      
      const_set_lazy(:K_ThemeMetricMenuTextTrailingEdgeMargin) { 67 }
      const_attr_reader  :K_ThemeMetricMenuTextTrailingEdgeMargin
      
      const_set_lazy(:K_ThemeMetricMenuIconTrailingEdgeMargin) { 69 }
      const_attr_reader  :K_ThemeMetricMenuIconTrailingEdgeMargin
      
      const_set_lazy(:K_ThemeMetricNormalProgressBarThickness) { 58 }
      const_attr_reader  :K_ThemeMetricNormalProgressBarThickness
      
      const_set_lazy(:K_ThemeMetricTabFrameOverlap) { 12 }
      const_attr_reader  :K_ThemeMetricTabFrameOverlap
      
      const_set_lazy(:K_ThemeMetricPrimaryGroupBoxContentInset) { 61 }
      const_attr_reader  :K_ThemeMetricPrimaryGroupBoxContentInset
      
      const_set_lazy(:K_ThemeMetricPushButtonHeight) { 19 }
      const_attr_reader  :K_ThemeMetricPushButtonHeight
      
      const_set_lazy(:K_ThemeMetricRoundTextFieldContentHeight) { 80 }
      const_attr_reader  :K_ThemeMetricRoundTextFieldContentHeight
      
      const_set_lazy(:K_ThemeMetricRoundTextFieldContentInsetLeft) { 76 }
      const_attr_reader  :K_ThemeMetricRoundTextFieldContentInsetLeft
      
      const_set_lazy(:K_ThemeMetricRoundTextFieldContentInsetRight) { 77 }
      const_attr_reader  :K_ThemeMetricRoundTextFieldContentInsetRight
      
      const_set_lazy(:K_ThemeMetricRoundTextFieldContentInsetBottom) { 78 }
      const_attr_reader  :K_ThemeMetricRoundTextFieldContentInsetBottom
      
      const_set_lazy(:K_ThemeMetricRoundTextFieldContentInsetTop) { 79 }
      const_attr_reader  :K_ThemeMetricRoundTextFieldContentInsetTop
      
      const_set_lazy(:K_ThemeMetricRoundTextFieldContentInsetWithIconLeft) { 109 }
      const_attr_reader  :K_ThemeMetricRoundTextFieldContentInsetWithIconLeft
      
      const_set_lazy(:K_ThemeMetricRoundTextFieldContentInsetWithIconRight) { 110 }
      const_attr_reader  :K_ThemeMetricRoundTextFieldContentInsetWithIconRight
      
      const_set_lazy(:K_ThemeMetricRoundTextFieldSmallContentInsetLeft) { 120 }
      const_attr_reader  :K_ThemeMetricRoundTextFieldSmallContentInsetLeft
      
      const_set_lazy(:K_ThemeMetricRoundTextFieldSmallContentInsetRight) { 121 }
      const_attr_reader  :K_ThemeMetricRoundTextFieldSmallContentInsetRight
      
      const_set_lazy(:K_ThemeMetricRoundTextFieldSmallContentInsetWithIconLeft) { 123 }
      const_attr_reader  :K_ThemeMetricRoundTextFieldSmallContentInsetWithIconLeft
      
      const_set_lazy(:K_ThemeMetricRoundTextFieldSmallContentInsetWithIconRight) { 124 }
      const_attr_reader  :K_ThemeMetricRoundTextFieldSmallContentInsetWithIconRight
      
      const_set_lazy(:K_ThemeMetricScrollBarWidth) { 0 }
      const_attr_reader  :K_ThemeMetricScrollBarWidth
      
      const_set_lazy(:K_ThemeMetricVSliderWidth) { 45 }
      const_attr_reader  :K_ThemeMetricVSliderWidth
      
      const_set_lazy(:K_ThemeNotAllowedCursor) { 18 }
      const_attr_reader  :K_ThemeNotAllowedCursor
      
      const_set_lazy(:K_ThemePointingHandCursor) { 10 }
      const_attr_reader  :K_ThemePointingHandCursor
      
      const_set_lazy(:K_ThemePushButton) { 0 }
      const_attr_reader  :K_ThemePushButton
      
      const_set_lazy(:K_ThemePushButtonFont) { 105 }
      const_attr_reader  :K_ThemePushButtonFont
      
      const_set_lazy(:K_ThemeRadioButton) { 2 }
      const_attr_reader  :K_ThemeRadioButton
      
      const_set_lazy(:K_ThemeResizeLeftRightCursor) { 17 }
      const_attr_reader  :K_ThemeResizeLeftRightCursor
      
      const_set_lazy(:K_ThemeResizeUpDownCursor) { 21 }
      const_attr_reader  :K_ThemeResizeUpDownCursor
      
      const_set_lazy(:K_ThemeResizeUpCursor) { 19 }
      const_attr_reader  :K_ThemeResizeUpCursor
      
      const_set_lazy(:K_ThemeResizeDownCursor) { 20 }
      const_attr_reader  :K_ThemeResizeDownCursor
      
      const_set_lazy(:K_ThemeResizeLeftCursor) { 15 }
      const_attr_reader  :K_ThemeResizeLeftCursor
      
      const_set_lazy(:K_ThemeResizeRightCursor) { 16 }
      const_attr_reader  :K_ThemeResizeRightCursor
      
      const_set_lazy(:K_ThemeRoundedBevelButton) { 15 }
      const_attr_reader  :K_ThemeRoundedBevelButton
      
      const_set_lazy(:K_ThemeSmallBevelButton) { 8 }
      const_attr_reader  :K_ThemeSmallBevelButton
      
      const_set_lazy(:K_ThemeSmallEmphasizedSystemFont) { 2 }
      const_attr_reader  :K_ThemeSmallEmphasizedSystemFont
      
      const_set_lazy(:K_ThemeSmallSystemFont) { 1 }
      const_attr_reader  :K_ThemeSmallSystemFont
      
      const_set_lazy(:K_ThemeSpinningCursor) { 14 }
      const_attr_reader  :K_ThemeSpinningCursor
      
      const_set_lazy(:K_ThemeStateActive) { 1 }
      const_attr_reader  :K_ThemeStateActive
      
      const_set_lazy(:K_ThemeStateInactive) { 0 }
      const_attr_reader  :K_ThemeStateInactive
      
      const_set_lazy(:K_ThemeStatePressed) { 2 }
      const_attr_reader  :K_ThemeStatePressed
      
      const_set_lazy(:K_ThemeStateRollover) { 6 }
      const_attr_reader  :K_ThemeStateRollover
      
      const_set_lazy(:K_ThemeStateUnavailable) { 7 }
      const_attr_reader  :K_ThemeStateUnavailable
      
      const_set_lazy(:K_ThemeStateUnavailableInactive) { 8 }
      const_attr_reader  :K_ThemeStateUnavailableInactive
      
      const_set_lazy(:K_ThemeSystemFont) { 0 }
      const_attr_reader  :K_ThemeSystemFont
      
      const_set_lazy(:K_ThemeTextColorDialogActive) { 1 }
      const_attr_reader  :K_ThemeTextColorDialogActive
      
      const_set_lazy(:K_ThemeTextColorDocumentWindowTitleActive) { 23 }
      const_attr_reader  :K_ThemeTextColorDocumentWindowTitleActive
      
      const_set_lazy(:K_ThemeTextColorDocumentWindowTitleInactive) { 24 }
      const_attr_reader  :K_ThemeTextColorDocumentWindowTitleInactive
      
      const_set_lazy(:K_ThemeTextColorListView) { 22 }
      const_attr_reader  :K_ThemeTextColorListView
      
      const_set_lazy(:K_ThemeTextColorPushButtonActive) { 12 }
      const_attr_reader  :K_ThemeTextColorPushButtonActive
      
      const_set_lazy(:K_ThemeToolbarFont) { 108 }
      const_attr_reader  :K_ThemeToolbarFont
      
      const_set_lazy(:K_ThemeViewsFont) { 3 }
      const_attr_reader  :K_ThemeViewsFont
      
      const_set_lazy(:K_ThemeWatchCursor) { 7 }
      const_attr_reader  :K_ThemeWatchCursor
      
      const_set_lazy(:K_TrackMouseLocationOptionDontConsumeMouseUp) { 1 }
      const_attr_reader  :K_TrackMouseLocationOptionDontConsumeMouseUp
      
      const_set_lazy(:K_TransformSelected) { 0x4000 }
      const_attr_reader  :K_TransformSelected
      
      const_set_lazy(:K_UIModeNormal) { 0 }
      const_attr_reader  :K_UIModeNormal
      
      const_set_lazy(:K_UIModeContentSuppressed) { 1 }
      const_attr_reader  :K_UIModeContentSuppressed
      
      const_set_lazy(:K_UIModeContentHidden) { 2 }
      const_attr_reader  :K_UIModeContentHidden
      
      const_set_lazy(:K_UIModeAllHidden) { 3 }
      const_attr_reader  :K_UIModeAllHidden
      
      const_set_lazy(:K_UIModeAllSuppressed) { 4 }
      const_attr_reader  :K_UIModeAllSuppressed
      
      const_set_lazy(:K_UnicodeDocument) { (Character.new(?u.ord) << 24) + (Character.new(?d.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :K_UnicodeDocument
      
      const_set_lazy(:K_UtilityWindowClass) { 8 }
      const_attr_reader  :K_UtilityWindowClass
      
      const_set_lazy(:K_WindowActivationScopeNone) { 0 }
      const_attr_reader  :K_WindowActivationScopeNone
      
      const_set_lazy(:K_WindowActivationScopeIndependent) { 1 }
      const_attr_reader  :K_WindowActivationScopeIndependent
      
      const_set_lazy(:K_WindowActivationScopeAll) { 2 }
      const_attr_reader  :K_WindowActivationScopeAll
      
      const_set_lazy(:K_WindowAlertPositionParentWindowScreen) { 0x700a }
      const_attr_reader  :K_WindowAlertPositionParentWindowScreen
      
      const_set_lazy(:K_WindowBoundsChangeOriginChanged) { 1 << 3 }
      const_attr_reader  :K_WindowBoundsChangeOriginChanged
      
      const_set_lazy(:K_WindowBoundsChangeSizeChanged) { 1 << 2 }
      const_attr_reader  :K_WindowBoundsChangeSizeChanged
      
      const_set_lazy(:K_WindowCascadeOnMainScreen) { 4 }
      const_attr_reader  :K_WindowCascadeOnMainScreen
      
      const_set_lazy(:K_WindowCloseBoxAttribute) { (1 << 0) }
      const_attr_reader  :K_WindowCloseBoxAttribute
      
      const_set_lazy(:K_WindowCollapseBoxAttribute) { (1 << 3) }
      const_attr_reader  :K_WindowCollapseBoxAttribute
      
      const_set_lazy(:K_WindowCompositingAttribute) { (1 << 19) }
      const_attr_reader  :K_WindowCompositingAttribute
      
      const_set_lazy(:K_WindowContentRgn) { 33 }
      const_attr_reader  :K_WindowContentRgn
      
      const_set_lazy(:K_WindowGroupAttrHideOnCollapse) { 16 }
      const_attr_reader  :K_WindowGroupAttrHideOnCollapse
      
      const_set_lazy(:K_WindowHorizontalZoomAttribute) { 1 << 1 }
      const_attr_reader  :K_WindowHorizontalZoomAttribute
      
      const_set_lazy(:K_WindowVerticalZoomAttribute) { 1 << 2 }
      const_attr_reader  :K_WindowVerticalZoomAttribute
      
      const_set_lazy(:K_WindowFullZoomAttribute) { (OS.attr_k_window_vertical_zoom_attribute | OS.attr_k_window_horizontal_zoom_attribute) }
      const_attr_reader  :K_WindowFullZoomAttribute
      
      const_set_lazy(:K_WindowLiveResizeAttribute) { (1 << 28) }
      const_attr_reader  :K_WindowLiveResizeAttribute
      
      const_set_lazy(:K_WindowModalityAppModal) { 2 }
      const_attr_reader  :K_WindowModalityAppModal
      
      const_set_lazy(:K_WindowModalityNone) { 0 }
      const_attr_reader  :K_WindowModalityNone
      
      const_set_lazy(:K_WindowModalitySystemModal) { 1 }
      const_attr_reader  :K_WindowModalitySystemModal
      
      const_set_lazy(:K_WindowModalityWindowModal) { 3 }
      const_attr_reader  :K_WindowModalityWindowModal
      
      const_set_lazy(:K_WindowNoShadowAttribute) { (1 << 21) }
      const_attr_reader  :K_WindowNoShadowAttribute
      
      const_set_lazy(:K_WindowResizableAttribute) { (1 << 4) }
      const_attr_reader  :K_WindowResizableAttribute
      
      const_set_lazy(:K_WindowStandardHandlerAttribute) { (1 << 25) }
      const_attr_reader  :K_WindowStandardHandlerAttribute
      
      const_set_lazy(:K_WindowStructureRgn) { 32 }
      const_attr_reader  :K_WindowStructureRgn
      
      const_set_lazy(:K_WindowToolbarButtonAttribute) { (1 << 6) }
      const_attr_reader  :K_WindowToolbarButtonAttribute
      
      const_set_lazy(:K_WindowUpdateRgn) { 34 }
      const_attr_reader  :K_WindowUpdateRgn
      
      const_set_lazy(:K_WindowNoTitleBarAttribute) { (1 << 9) }
      const_attr_reader  :K_WindowNoTitleBarAttribute
      
      const_set_lazy(:K_CaretPosition) { 1 }
      const_attr_reader  :K_CaretPosition
      
      const_set_lazy(:K_RawText) { 2 }
      const_attr_reader  :K_RawText
      
      const_set_lazy(:K_SelectedRawText) { 3 }
      const_attr_reader  :K_SelectedRawText
      
      const_set_lazy(:K_ConvertedText) { 4 }
      const_attr_reader  :K_ConvertedText
      
      const_set_lazy(:K_SelectedConvertedText) { 5 }
      const_attr_reader  :K_SelectedConvertedText
      
      const_set_lazy(:K_BlockFillText) { 6 }
      const_attr_reader  :K_BlockFillText
      
      const_set_lazy(:K_OutlineText) { 7 }
      const_attr_reader  :K_OutlineText
      
      const_set_lazy(:K_SelectedText) { 8 }
      const_attr_reader  :K_SelectedText
      
      const_set_lazy(:MouseDown) { 1 }
      const_attr_reader  :MouseDown
      
      const_set_lazy(:NoErr) { 0 }
      const_attr_reader  :NoErr
      
      const_set_lazy(:Normal) { 0 }
      const_attr_reader  :Normal
      
      const_set_lazy(:OptionKey) { 1 << 11 }
      const_attr_reader  :OptionKey
      
      const_set_lazy(:OsEvt) { 15 }
      const_attr_reader  :OsEvt
      
      const_set_lazy(:ParamErr) { -50 }
      const_attr_reader  :ParamErr
      
      const_set_lazy(:ShiftKey) { 1 << 9 }
      const_attr_reader  :ShiftKey
      
      const_set_lazy(:SmKCHRCache) { 38 }
      const_attr_reader  :SmKCHRCache
      
      const_set_lazy(:SmKeyScript) { 22 }
      const_attr_reader  :SmKeyScript
      
      const_set_lazy(:SmRegionCode) { 40 }
      const_attr_reader  :SmRegionCode
      
      const_set_lazy(:SmSystemScript) { -1 }
      const_attr_reader  :SmSystemScript
      
      const_set_lazy(:SrcCopy) { 0 }
      const_attr_reader  :SrcCopy
      
      const_set_lazy(:SrcOr) { 1 }
      const_attr_reader  :SrcOr
      
      const_set_lazy(:SrcXor) { 2 }
      const_attr_reader  :SrcXor
      
      const_set_lazy(:NotSrcXor) { 6 }
      const_attr_reader  :NotSrcXor
      
      const_set_lazy(:TeFlushDefault) { 0 }
      const_attr_reader  :TeFlushDefault
      
      const_set_lazy(:TeCenter) { 1 }
      const_attr_reader  :TeCenter
      
      const_set_lazy(:TeFlushRight) { -1 }
      const_attr_reader  :TeFlushRight
      
      const_set_lazy(:TeFlushLeft) { -2 }
      const_attr_reader  :TeFlushLeft
      
      const_set_lazy(:TeJustLeft) { 0 }
      const_attr_reader  :TeJustLeft
      
      const_set_lazy(:TeJustCenter) { 1 }
      const_attr_reader  :TeJustCenter
      
      const_set_lazy(:TeJustRight) { -1 }
      const_attr_reader  :TeJustRight
      
      const_set_lazy(:TypeBoolean) { (Character.new(?b.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :TypeBoolean
      
      const_set_lazy(:TypeCFDictionaryRef) { (Character.new(?c.ord) << 24) + (Character.new(?f.ord) << 16) + (Character.new(?d.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :TypeCFDictionaryRef
      
      const_set_lazy(:TypeCFMutableArrayRef) { (Character.new(?c.ord) << 24) + (Character.new(?f.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?a.ord) }
      const_attr_reader  :TypeCFMutableArrayRef
      
      const_set_lazy(:TypeCFStringRef) { (Character.new(?c.ord) << 24) + (Character.new(?f.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :TypeCFStringRef
      
      const_set_lazy(:TypeCFTypeRef) { (Character.new(?c.ord) << 24) + (Character.new(?f.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?y.ord) }
      const_attr_reader  :TypeCFTypeRef
      
      const_set_lazy(:TypeCGContextRef) { (Character.new(?c.ord) << 24) + (Character.new(?n.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?x.ord) }
      const_attr_reader  :TypeCGContextRef
      
      const_set_lazy(:TypeChar) { (Character.new(?T.ord) << 24) + (Character.new(?E.ord) << 16) + (Character.new(?X.ord) << 8) + Character.new(?T.ord) }
      const_attr_reader  :TypeChar
      
      const_set_lazy(:TypeClickActivationResult) { (Character.new(?c.ord) << 24) + (Character.new(?l.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :TypeClickActivationResult
      
      const_set_lazy(:TypeControlPartCode) { (Character.new(?c.ord) << 24) + (Character.new(?p.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :TypeControlPartCode
      
      const_set_lazy(:TypeControlRef) { (Character.new(?c.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :TypeControlRef
      
      const_set_lazy(:TypeEventRef) { (Character.new(?e.ord) << 24) + (Character.new(?v.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?f.ord) }
      const_attr_reader  :TypeEventRef
      
      const_set_lazy(:TypeFileURL) { (Character.new(?f.ord) << 24) + (Character.new(?u.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :TypeFileURL
      
      const_set_lazy(:TypeFixed) { (Character.new(?f.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?x.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :TypeFixed
      
      const_set_lazy(:TypeFSRef) { (Character.new(?f.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?f.ord) }
      const_attr_reader  :TypeFSRef
      
      const_set_lazy(:TypeGrafPtr) { (Character.new(?g.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?f.ord) }
      const_attr_reader  :TypeGrafPtr
      
      const_set_lazy(:TypeHICommand) { (Character.new(?h.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :TypeHICommand
      
      const_set_lazy(:TypeHIPoint) { (Character.new(?h.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?p.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :TypeHIPoint
      
      const_set_lazy(:TypeHIRect) { (Character.new(?h.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?c.ord) }
      const_attr_reader  :TypeHIRect
      
      const_set_lazy(:TypeHISize) { (Character.new(?h.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?z.ord) }
      const_attr_reader  :TypeHISize
      
      const_set_lazy(:TypeLongInteger) { (Character.new(?l.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?g.ord) }
      const_attr_reader  :TypeLongInteger
      
      const_set_lazy(:TypeMenuCommand) { (Character.new(?m.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?m.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :TypeMenuCommand
      
      const_set_lazy(:TypeMenuItemIndex) { (Character.new(?m.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?d.ord) << 8) + Character.new(?x.ord) }
      const_attr_reader  :TypeMenuItemIndex
      
      const_set_lazy(:TypeMenuRef) { (Character.new(?m.ord) << 24) + (Character.new(?e.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?u.ord) }
      const_attr_reader  :TypeMenuRef
      
      const_set_lazy(:TypeModalClickResult) { (Character.new(?w.ord) << 24) + (Character.new(?m.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :TypeModalClickResult
      
      const_set_lazy(:TypeMouseButton) { (Character.new(?m.ord) << 24) + (Character.new(?b.ord) << 16) + (Character.new(?t.ord) << 8) + Character.new(?n.ord) }
      const_attr_reader  :TypeMouseButton
      
      const_set_lazy(:TypeMouseWheelAxis) { (Character.new(?m.ord) << 24) + (Character.new(?w.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?x.ord) }
      const_attr_reader  :TypeMouseWheelAxis
      
      const_set_lazy(:TypeQDPoint) { (Character.new(?Q.ord) << 24) + (Character.new(?D.ord) << 16) + (Character.new(?p.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :TypeQDPoint
      
      const_set_lazy(:TypeQDRectangle) { (Character.new(?q.ord) << 24) + (Character.new(?d.ord) << 16) + (Character.new(?r.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :TypeQDRectangle
      
      const_set_lazy(:TypeQDRgnHandle) { (Character.new(?r.ord) << 24) + (Character.new(?g.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?h.ord) }
      const_attr_reader  :TypeQDRgnHandle
      
      const_set_lazy(:TypeRGBColor) { (Character.new(?c.ord) << 24) + (Character.new(?R.ord) << 16) + (Character.new(?G.ord) << 8) + Character.new(?B.ord) }
      const_attr_reader  :TypeRGBColor
      
      const_set_lazy(:TypeSInt16) { (Character.new(?s.ord) << 24) + (Character.new(?h.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :TypeSInt16
      
      const_set_lazy(:TypeSInt32) { (Character.new(?l.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?g.ord) }
      const_attr_reader  :TypeSInt32
      
      const_set_lazy(:TypeTextRangeArray) { (Character.new(?t.ord) << 24) + (Character.new(?r.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?y.ord) }
      const_attr_reader  :TypeTextRangeArray
      
      const_set_lazy(:TypeType) { (Character.new(?t.ord) << 24) + (Character.new(?y.ord) << 16) + (Character.new(?p.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :TypeType
      
      const_set_lazy(:TypeUInt32) { (Character.new(?m.ord) << 24) + (Character.new(?a.ord) << 16) + (Character.new(?g.ord) << 8) + Character.new(?n.ord) }
      const_attr_reader  :TypeUInt32
      
      const_set_lazy(:TypeUnicodeText) { (Character.new(?u.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?x.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :TypeUnicodeText
      
      const_set_lazy(:TypeWildCard) { (Character.new(?w.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?l.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :TypeWildCard
      
      const_set_lazy(:TypeWindowDefPartCode) { (Character.new(?w.ord) << 24) + (Character.new(?d.ord) << 16) + (Character.new(?p.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :TypeWindowDefPartCode
      
      const_set_lazy(:TypeWindowPartCode) { (Character.new(?w.ord) << 24) + (Character.new(?p.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :TypeWindowPartCode
      
      const_set_lazy(:TypeWindowModality) { (Character.new(?w.ord) << 24) + (Character.new(?m.ord) << 16) + (Character.new(?o.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :TypeWindowModality
      
      const_set_lazy(:K_EventParamWindowPartCode) { (Character.new(?w.ord) << 24) + (Character.new(?p.ord) << 16) + (Character.new(?a.ord) << 8) + Character.new(?r.ord) }
      const_attr_reader  :K_EventParamWindowPartCode
      
      const_set_lazy(:TypeWindowRef) { (Character.new(?w.ord) << 24) + (Character.new(?i.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?d.ord) }
      const_attr_reader  :TypeWindowRef
      
      const_set_lazy(:TypeWindowRegionCode) { (Character.new(?w.ord) << 24) + (Character.new(?s.ord) << 16) + (Character.new(?h.ord) << 8) + Character.new(?p.ord) }
      const_attr_reader  :TypeWindowRegionCode
      
      const_set_lazy(:UpdateEvt) { 6 }
      const_attr_reader  :UpdateEvt
      
      const_set_lazy(:UpdateMask) { 1 << UpdateEvt }
      const_attr_reader  :UpdateMask
      
      const_set_lazy(:UserCanceledErr) { -128 }
      const_attr_reader  :UserCanceledErr
      
      const_set_lazy(:W_InContent) { 1 }
      const_attr_reader  :W_InContent
      
      const_set_lazy(:W_NoHit) { 0 }
      const_attr_reader  :W_NoHit
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NewGlobalRef, [:pointer, :long, :long], :int32
      typesig { [Object] }
      # JNI natives
      def _new_global_ref(object)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NewGlobalRef, JNI.env, self.jni_id, object.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DeleteGlobalRef, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _delete_global_ref(global_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DeleteGlobalRef, JNI.env, self.jni_id, global_ref.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_JNIGetObject, [:pointer, :long, :int32], :long
      typesig { [::Java::Int] }
      def _jniget_object(global_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_JNIGetObject, JNI.env, self.jni_id, global_ref.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS__1_1BIG_1ENDIAN_1_1, [:pointer, :long], :int8
      typesig { [] }
      # Natives
      def ____big_endian__
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS__1_1BIG_1ENDIAN_1_1, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_kCFRunLoopCommonModes, [:pointer, :long], :int32
      typesig { [] }
      def k_cfrun_loop_common_modes
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_kCFRunLoopCommonModes, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_kCFRunLoopDefaultMode, [:pointer, :long], :int32
      typesig { [] }
      def k_cfrun_loop_default_mode
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_kCFRunLoopDefaultMode, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_kFontPanelAttributesKey, [:pointer, :long], :int32
      typesig { [] }
      def k_font_panel_attributes_key
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_kFontPanelAttributesKey, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_kFontPanelAttributeTagsKey, [:pointer, :long], :int32
      typesig { [] }
      def k_font_panel_attribute_tags_key
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_kFontPanelAttributeTagsKey, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_kFontPanelAttributeSizesKey, [:pointer, :long], :int32
      typesig { [] }
      def k_font_panel_attribute_sizes_key
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_kFontPanelAttributeSizesKey, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_kFontPanelAttributeValuesKey, [:pointer, :long], :int32
      typesig { [] }
      def k_font_panel_attribute_values_key
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_kFontPanelAttributeValuesKey, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_kUTTagClassFilenameExtension, [:pointer, :long], :int32
      typesig { [] }
      def k_uttag_class_filename_extension
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_kUTTagClassFilenameExtension, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_kHIViewWindowContentID, [:pointer, :long], :int32
      typesig { [] }
      def k_hiview_window_content_id
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_kHIViewWindowContentID, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_kPMDocumentFormatPDF, [:pointer, :long], :int32
      typesig { [] }
      def k_pmdocument_format_pdf
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_kPMDocumentFormatPDF, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_kPMGraphicsContextCoreGraphics, [:pointer, :long], :int32
      typesig { [] }
      def k_pmgraphics_context_core_graphics
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_kPMGraphicsContextCoreGraphics, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ActiveNonFloatingWindow, [:pointer, :long], :int32
      typesig { [] }
      def _active_non_floating_window
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ActiveNonFloatingWindow, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ActivateTSMDocument, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _activate_tsmdocument(idoc_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ActivateTSMDocument, JNI.env, self.jni_id, idoc_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AECountItems, [:pointer, :long, :long, :long], :int32
      typesig { [AEDesc, Array.typed(::Java::Int)] }
      def _aecount_items(the_aedesc_list, the_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AECountItems, JNI.env, self.jni_id, the_aedesc_list.jni_id, the_count.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AECoerceDesc, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _aecoerce_desc(the_aedesc, to_type, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AECoerceDesc, JNI.env, self.jni_id, the_aedesc.to_int, to_type.to_int, result.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AECreateDesc, [:pointer, :long, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, AEDesc] }
      def _aecreate_desc(type_code, data_ptr, data_size, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AECreateDesc, JNI.env, self.jni_id, type_code.to_int, data_ptr.jni_id, data_size.to_int, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AEDisposeDesc, [:pointer, :long, :long], :int32
      typesig { [AEDesc] }
      def _aedispose_desc(the_aedesc)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AEDisposeDesc, JNI.env, self.jni_id, the_aedesc.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AEGetDescData, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def _aeget_desc_data(the_aedesc, data_ptr, maximum_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AEGetDescData, JNI.env, self.jni_id, the_aedesc.to_int, data_ptr.jni_id, maximum_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AEGetNthPtr, [:pointer, :long, :long, :int32, :int32, :long, :long, :int32, :int32, :long], :int32
      typesig { [AEDesc, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _aeget_nth_ptr(the_aedesc_list, index, desired_type, the_aekeyword, type_code, data_ptr, maximum_size, actual_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AEGetNthPtr, JNI.env, self.jni_id, the_aedesc_list.jni_id, index.to_int, desired_type.to_int, the_aekeyword.jni_id, type_code.jni_id, data_ptr.to_int, maximum_size.to_int, actual_size.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AEInstallEventHandler, [:pointer, :long, :int32, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _aeinstall_event_handler(the_aeevent_class, the_aeevent_id, handler, handler_refcon, is_sys_handler)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AEInstallEventHandler, JNI.env, self.jni_id, the_aeevent_class.to_int, the_aeevent_id.to_int, handler.to_int, handler_refcon.to_int, is_sys_handler ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AEProcessAppleEvent, [:pointer, :long, :long], :int32
      typesig { [EventRecord] }
      def _aeprocess_apple_event(the_event_record)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AEProcessAppleEvent, JNI.env, self.jni_id, the_event_record.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSFontActivateFromFileSpecification, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _atsfont_activate_from_file_specification(i_file, i_context, i_format, i_reserved, i_options, o_container)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSFontActivateFromFileSpecification, JNI.env, self.jni_id, i_file.jni_id, i_context.to_int, i_format.to_int, i_reserved.to_int, i_options.to_int, o_container.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSFontDeactivate, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _atsfont_deactivate(i_container, i_ref_con, i_options)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSFontDeactivate, JNI.env, self.jni_id, i_container.to_int, i_ref_con.to_int, i_options.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSFontFindFromName, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _atsfont_find_from_name(i_name, i_options)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSFontFindFromName, JNI.env, self.jni_id, i_name.to_int, i_options.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSFontGetName, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _atsfont_get_name(i_font, i_options, o_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSFontGetName, JNI.env, self.jni_id, i_font.to_int, i_options.to_int, o_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSFontGetPostScriptName, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _atsfont_get_post_script_name(i_font, i_options, o_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSFontGetPostScriptName, JNI.env, self.jni_id, i_font.to_int, i_options.to_int, o_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSFontIteratorNext, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _atsfont_iterator_next(i_iterator, font)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSFontIteratorNext, JNI.env, self.jni_id, i_iterator.to_int, font.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSFontIteratorRelease, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _atsfont_iterator_release(io_iterator)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSFontIteratorRelease, JNI.env, self.jni_id, io_iterator.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSFontIteratorCreate, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _atsfont_iterator_create(i_context, i_filter, i_ref_con, i_options, io_iterator)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSFontIteratorCreate, JNI.env, self.jni_id, i_context.to_int, i_filter.to_int, i_ref_con.to_int, i_options.to_int, io_iterator.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSFontGetVerticalMetrics, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ATSFontMetrics] }
      def _atsfont_get_vertical_metrics(i_font, i_options, o_metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSFontGetVerticalMetrics, JNI.env, self.jni_id, i_font.to_int, i_options.to_int, o_metrics.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSFontGetHorizontalMetrics, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ATSFontMetrics] }
      def _atsfont_get_horizontal_metrics(i_font, i_options, o_metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSFontGetHorizontalMetrics, JNI.env, self.jni_id, i_font.to_int, i_options.to_int, o_metrics.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUBatchBreakLines, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _atsubatch_break_lines(i_text_layout, i_range_start, i_range_length, i_line_width, o_break_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUBatchBreakLines, JNI.env, self.jni_id, i_text_layout.to_int, i_range_start.to_int, i_range_length.to_int, i_line_width.to_int, o_break_count.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUCreateStyle, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _atsucreate_style(o_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUCreateStyle, JNI.env, self.jni_id, o_style.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUCreateTextLayout, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _atsucreate_text_layout(o_text_layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUCreateTextLayout, JNI.env, self.jni_id, o_text_layout.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUCreateTextLayoutWithTextPtr, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _atsucreate_text_layout_with_text_ptr(i_text, i_text_offset, i_text_length, i_text_total_length, i_number_of_runs, i_run_lengths, i_styles, o_text_layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUCreateTextLayoutWithTextPtr, JNI.env, self.jni_id, i_text.to_int, i_text_offset.to_int, i_text_length.to_int, i_text_total_length.to_int, i_number_of_runs.to_int, i_run_lengths.jni_id, i_styles.jni_id, o_text_layout.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUDirectGetLayoutDataArrayPtrFromTextLayout, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _atsudirect_get_layout_data_array_ptr_from_text_layout(i_text_layout, i_line_offset, i_data_selector, o_layout_data_array_ptr, o_layout_data_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUDirectGetLayoutDataArrayPtrFromTextLayout, JNI.env, self.jni_id, i_text_layout.to_int, i_line_offset.to_int, i_data_selector.to_int, o_layout_data_array_ptr.jni_id, o_layout_data_count.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUDirectReleaseLayoutDataArrayPtr, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _atsudirect_release_layout_data_array_ptr(i_line_ref, i_data_selector, i_layout_data_array_ptr)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUDirectReleaseLayoutDataArrayPtr, JNI.env, self.jni_id, i_line_ref.to_int, i_data_selector.to_int, i_layout_data_array_ptr.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUDisposeStyle, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _atsudispose_style(i_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUDisposeStyle, JNI.env, self.jni_id, i_style.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUDisposeTextLayout, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _atsudispose_text_layout(i_text_layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUDisposeTextLayout, JNI.env, self.jni_id, i_text_layout.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUDrawText, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _atsudraw_text(i_text_layout, i_line_offset, i_line_length, i_location_x, i_location_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUDrawText, JNI.env, self.jni_id, i_text_layout.to_int, i_line_offset.to_int, i_line_length.to_int, i_location_x.to_int, i_location_y.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUFindFontFromName, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _atsufind_font_from_name(i_name, i_name_length, i_font_name_code, i_font_name_platform, i_font_name_script, i_font_name_language, o_font_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUFindFontFromName, JNI.env, self.jni_id, i_name.jni_id, i_name_length.to_int, i_font_name_code.to_int, i_font_name_platform.to_int, i_font_name_script.to_int, i_font_name_language.to_int, o_font_id.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUFindFontName, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _atsufind_font_name(i_font_id, i_font_name_code, i_font_name_platform, i_font_name_script, i_font_name_language, i_maximum_name_length, o_name, o_actual_name_length, o_font_name_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUFindFontName, JNI.env, self.jni_id, i_font_id.to_int, i_font_name_code.to_int, i_font_name_platform.to_int, i_font_name_script.to_int, i_font_name_language.to_int, i_maximum_name_length.to_int, o_name.jni_id, o_actual_name_length.jni_id, o_font_name_index.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUGetFontIDs, [:pointer, :long, :long, :int32, :long], :int32
      typesig { [Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int)] }
      def _atsuget_font_ids(o_font_ids, i_array_size, o_font_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUGetFontIDs, JNI.env, self.jni_id, o_font_ids.jni_id, i_array_size.to_int, o_font_count.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUGetGlyphBounds__IIIIISII_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int16, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _atsuget_glyph_bounds(i_text_layout, i_text_base_point_x, i_text_base_point_y, i_bounds_char_start, i_bounds_char_length, i_type_of_bounds, i_max_number_of_bounds, o_glyph_bounds, o_actual_number_of_bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUGetGlyphBounds__IIIIISII_3I, JNI.env, self.jni_id, i_text_layout.to_int, i_text_base_point_x.to_int, i_text_base_point_y.to_int, i_bounds_char_start.to_int, i_bounds_char_length.to_int, i_type_of_bounds.to_int, i_max_number_of_bounds.to_int, o_glyph_bounds.to_int, o_actual_number_of_bounds.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_ATSUGetGlyphBounds__IIIIISIL#{ATSTrapezoid.jni_name}_2_3I".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int16, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Short, ::Java::Int, ATSTrapezoid, Array.typed(::Java::Int)] }
      def _atsuget_glyph_bounds(i_text_layout, i_text_base_point_x, i_text_base_point_y, i_bounds_char_start, i_bounds_char_length, i_type_of_bounds, i_max_number_of_bounds, o_glyph_bounds, o_actual_number_of_bounds)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_ATSUGetGlyphBounds__IIIIISIL#{ATSTrapezoid.jni_name}_2_3I".to_sym, JNI.env, self.jni_id, i_text_layout.to_int, i_text_base_point_x.to_int, i_text_base_point_y.to_int, i_bounds_char_start.to_int, i_bounds_char_length.to_int, i_type_of_bounds.to_int, i_max_number_of_bounds.to_int, o_glyph_bounds.jni_id, o_actual_number_of_bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUGetLayoutControl, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _atsuget_layout_control(i_text_layout, i_tag, i_expected_value_size, o_value, o_actual_value_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUGetLayoutControl, JNI.env, self.jni_id, i_text_layout.to_int, i_tag.to_int, i_expected_value_size.to_int, o_value.jni_id, o_actual_value_size.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUGetLineControl, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _atsuget_line_control(i_text_layout, i_line_start, i_tag, i_expected_value_size, o_value, o_actual_value_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUGetLineControl, JNI.env, self.jni_id, i_text_layout.to_int, i_line_start.to_int, i_tag.to_int, i_expected_value_size.to_int, o_value.jni_id, o_actual_value_size.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUGlyphGetQuadraticPaths, [:pointer, :long, :int32, :int16, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _atsuglyph_get_quadratic_paths(i_atsustyle, i_glyph_id, i_new_path_proc, i_line_proc, i_curve_proc, i_close_path_proc, i_callback_data_ptr, o_callback_result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUGlyphGetQuadraticPaths, JNI.env, self.jni_id, i_atsustyle.to_int, i_glyph_id.to_int, i_new_path_proc.to_int, i_line_proc.to_int, i_curve_proc.to_int, i_close_path_proc.to_int, i_callback_data_ptr.to_int, o_callback_result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUGetSoftLineBreaks, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _atsuget_soft_line_breaks(i_text_layout, i_range_start, i_range_length, i_maximum_breaks, o_breaks, o_break_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUGetSoftLineBreaks, JNI.env, self.jni_id, i_text_layout.to_int, i_range_start.to_int, i_range_length.to_int, i_maximum_breaks.to_int, o_breaks.jni_id, o_break_count.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUGetTextHighlight, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _atsuget_text_highlight(i_text_layout, i_text_base_point_x, i_text_base_point_y, i_highlight_start, i_highlight_length, o_highlight_region)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUGetTextHighlight, JNI.env, self.jni_id, i_text_layout.to_int, i_text_base_point_x.to_int, i_text_base_point_y.to_int, i_highlight_start.to_int, i_highlight_length.to_int, o_highlight_region.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUGetUnjustifiedBounds, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _atsuget_unjustified_bounds(i_text_layout, i_line_start, i_line_length, o_text_before, o_text_after, o_ascent, o_descent)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUGetUnjustifiedBounds, JNI.env, self.jni_id, i_text_layout.to_int, i_line_start.to_int, i_line_length.to_int, o_text_before.jni_id, o_text_after.jni_id, o_ascent.jni_id, o_descent.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUHighlightText, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _atsuhighlight_text(i_text_layout, i_text_base_point_x, i_text_base_point_y, i_highlight_start, i_highlight_length)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUHighlightText, JNI.env, self.jni_id, i_text_layout.to_int, i_text_base_point_x.to_int, i_text_base_point_y.to_int, i_highlight_start.to_int, i_highlight_length.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUNextCursorPosition, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _atsunext_cursor_position(i_text_layout, i_old_offset, i_movement_type, o_new_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUNextCursorPosition, JNI.env, self.jni_id, i_text_layout.to_int, i_old_offset.to_int, i_movement_type.to_int, o_new_offset.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUOffsetToPosition, [:pointer, :long, :int32, :int32, :int8, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ATSUCaret, ATSUCaret, Array.typed(::Java::Boolean)] }
      def _atsuoffset_to_position(i_text_layout, i_offset, i_is_leading, o_main_caret, o_second_caret, o_caret_is_split)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUOffsetToPosition, JNI.env, self.jni_id, i_text_layout.to_int, i_offset.to_int, i_is_leading ? 1 : 0, o_main_caret.jni_id, o_second_caret.jni_id, o_caret_is_split.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUPositionToOffset, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Boolean), Array.typed(::Java::Int)] }
      def _atsuposition_to_offset(i_text_layout, i_location_x, i_location_y, io_primary_offset, o_is_leading, o_secondary_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUPositionToOffset, JNI.env, self.jni_id, i_text_layout.to_int, i_location_x.to_int, i_location_y.to_int, io_primary_offset.jni_id, o_is_leading.jni_id, o_secondary_offset.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUPreviousCursorPosition, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _atsuprevious_cursor_position(i_text_layout, i_old_offset, i_movement_type, o_new_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUPreviousCursorPosition, JNI.env, self.jni_id, i_text_layout.to_int, i_old_offset.to_int, i_movement_type.to_int, o_new_offset.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUSetAttributes, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _atsuset_attributes(i_style, i_attribute_count, i_tag, i_value_size, i_value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUSetAttributes, JNI.env, self.jni_id, i_style.to_int, i_attribute_count.to_int, i_tag.jni_id, i_value_size.jni_id, i_value.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUSetFontFeatures, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Short), Array.typed(::Java::Short)] }
      def _atsuset_font_features(i_style, i_feature_count, i_type, i_selector)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUSetFontFeatures, JNI.env, self.jni_id, i_style.to_int, i_feature_count.to_int, i_type.jni_id, i_selector.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUSetHighlightingMethod, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ATSUUnhighlightData] }
      def _atsuset_highlighting_method(i_text_layout, i_method, i_unhighlight_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUSetHighlightingMethod, JNI.env, self.jni_id, i_text_layout.to_int, i_method.to_int, i_unhighlight_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUSetLayoutControls, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _atsuset_layout_controls(i_text_layout, i_attribute_count, i_tag, i_value_size, i_value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUSetLayoutControls, JNI.env, self.jni_id, i_text_layout.to_int, i_attribute_count.to_int, i_tag.jni_id, i_value_size.jni_id, i_value.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUSetLineControls, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _atsuset_line_controls(i_text_layout, i_line_start, i_attribute_count, i_tag, i_value_size, i_value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUSetLineControls, JNI.env, self.jni_id, i_text_layout.to_int, i_line_start.to_int, i_attribute_count.to_int, i_tag.jni_id, i_value_size.jni_id, i_value.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUSetRunStyle, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _atsuset_run_style(i_text_layout, i_style, i_run_start, i_run_length)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUSetRunStyle, JNI.env, self.jni_id, i_text_layout.to_int, i_style.to_int, i_run_start.to_int, i_run_length.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUSetSoftLineBreak, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _atsuset_soft_line_break(i_text_layout, i_line_break)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUSetSoftLineBreak, JNI.env, self.jni_id, i_text_layout.to_int, i_line_break.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUSetTabArray, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _atsuset_tab_array(i_text_layout, i_tabs, i_tab_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUSetTabArray, JNI.env, self.jni_id, i_text_layout.to_int, i_tabs.to_int, i_tab_count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUSetTextPointerLocation, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _atsuset_text_pointer_location(i_text_layout, i_text, i_text_offset, i_text_length, i_text_total_length)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUSetTextPointerLocation, JNI.env, self.jni_id, i_text_layout.to_int, i_text.to_int, i_text_offset.to_int, i_text_length.to_int, i_text_total_length.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUSetTransientFontMatching, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _atsuset_transient_font_matching(i_text_layout, i_transient_font_matching)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUSetTransientFontMatching, JNI.env, self.jni_id, i_text_layout.to_int, i_transient_font_matching ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUTextInserted, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _atsutext_inserted(i_text_layout, i_insertion_location, i_insertion_length)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUTextInserted, JNI.env, self.jni_id, i_text_layout.to_int, i_insertion_location.to_int, i_insertion_length.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ATSUTextDeleted, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _atsutext_deleted(i_text_layout, i_insertion_location, i_insertion_length)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ATSUTextDeleted, JNI.env, self.jni_id, i_text_layout.to_int, i_insertion_location.to_int, i_insertion_length.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AddDataBrowserItems, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def _add_data_browser_items(c_handle, container_id, num_items, item_ids, pre_sort_property)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AddDataBrowserItems, JNI.env, self.jni_id, c_handle.to_int, container_id.to_int, num_items.to_int, item_ids.jni_id, pre_sort_property.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AddDataBrowserListViewColumn, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, DataBrowserListViewColumnDesc, ::Java::Int] }
      def _add_data_browser_list_view_column(browser, column_desc, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AddDataBrowserListViewColumn, JNI.env, self.jni_id, browser.to_int, column_desc.jni_id, position.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AddDragItemFlavor, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def _add_drag_item_flavor(the_drag, the_item_ref, the_type, data_ptr, data_size, the_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AddDragItemFlavor, JNI.env, self.jni_id, the_drag.to_int, the_item_ref.to_int, the_type.to_int, data_ptr.jni_id, data_size.to_int, the_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AppendMenuItemTextWithCFString, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      def _append_menu_item_text_with_cfstring(m_handle, s_handle, attributes, command_id, out_item_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AppendMenuItemTextWithCFString, JNI.env, self.jni_id, m_handle.to_int, s_handle.to_int, attributes.to_int, command_id.to_int, out_item_index.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AcquireFirstMatchingEventInQueue, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def _acquire_first_matching_event_in_queue(in_queue, in_num_types, in_list, in_options)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AcquireFirstMatchingEventInQueue, JNI.env, self.jni_id, in_queue.to_int, in_num_types.to_int, in_list.jni_id, in_options.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AutoSizeDataBrowserListViewColumns, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _auto_size_data_browser_list_view_columns(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AutoSizeDataBrowserListViewColumns, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_BringToFront, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _bring_to_front(w_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_BringToFront, JNI.env, self.jni_id, w_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cfrelease(s_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRelease, JNI.env, self.jni_id, s_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRetain, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cfretain(s_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRetain, JNI.env, self.jni_id, s_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetCFRunLoopFromEventLoop, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_cfrun_loop_from_event_loop(in_event_loop)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetCFRunLoopFromEventLoop, JNI.env, self.jni_id, in_event_loop.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopAddObserver, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _cfrun_loop_add_observer(rl, observer, mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopAddObserver, JNI.env, self.jni_id, rl.to_int, observer.to_int, mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopAddSource, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _cfrun_loop_add_source(rl, source, mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopAddSource, JNI.env, self.jni_id, rl.to_int, source.to_int, mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopObserverCreate, [:pointer, :long, :int32, :int32, :int8, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _cfrun_loop_observer_create(allocator, activities, repeats, order, callout, context)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopObserverCreate, JNI.env, self.jni_id, allocator.to_int, activities.to_int, repeats ? 1 : 0, order.to_int, callout.to_int, context.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopObserverInvalidate, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cfrun_loop_observer_invalidate(observer)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopObserverInvalidate, JNI.env, self.jni_id, observer.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopRunInMode, [:pointer, :long, :int32, :double, :int8], :int32
      typesig { [::Java::Int, ::Java::Double, ::Java::Boolean] }
      def _cfrun_loop_run_in_mode(mode, seconds, return_after_source_handled)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopRunInMode, JNI.env, self.jni_id, mode.to_int, seconds, return_after_source_handled ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopSourceCreate, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, CFRunLoopSourceContext] }
      def _cfrun_loop_source_create(allocator, order, context)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopSourceCreate, JNI.env, self.jni_id, allocator.to_int, order.to_int, context.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopSourceInvalidate, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cfrun_loop_source_invalidate(source)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopSourceInvalidate, JNI.env, self.jni_id, source.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopSourceSignal, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cfrun_loop_source_signal(source)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopSourceSignal, JNI.env, self.jni_id, source.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopStop, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cfrun_loop_stop(rl)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopStop, JNI.env, self.jni_id, rl.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopWakeUp, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cfrun_loop_wake_up(rl)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFRunLoopWakeUp, JNI.env, self.jni_id, rl.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFArrayAppendValue, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cfarray_append_value(the_array, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFArrayAppendValue, JNI.env, self.jni_id, the_array.to_int, value.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFArrayCreateMutable, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _cfarray_create_mutable(allocator, capacity, call_backs)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFArrayCreateMutable, JNI.env, self.jni_id, allocator.to_int, capacity.to_int, call_backs.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFArrayGetCount, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cfarray_get_count(the_array)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFArrayGetCount, JNI.env, self.jni_id, the_array.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFArrayGetValueAtIndex, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _cfarray_get_value_at_index(the_array, idx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFArrayGetValueAtIndex, JNI.env, self.jni_id, the_array.to_int, idx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFDataGetBytes, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, CFRange, Array.typed(::Java::Byte)] }
      def _cfdata_get_bytes(the_data, range, buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFDataGetBytes, JNI.env, self.jni_id, the_data.to_int, range.jni_id, buffer.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFDataGetBytePtr, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cfdata_get_byte_ptr(the_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFDataGetBytePtr, JNI.env, self.jni_id, the_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFDataGetLength, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cfdata_get_length(the_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFDataGetLength, JNI.env, self.jni_id, the_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFDictionaryGetValueIfPresent, [:pointer, :long, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _cfdictionary_get_value_if_present(the_dict, key, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFDictionaryGetValueIfPresent, JNI.env, self.jni_id, the_dict.to_int, key.to_int, value.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFEqual, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def _cfequal(the_string, the_other_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFEqual, JNI.env, self.jni_id, the_string.to_int, the_other_string.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFLocaleCopyCurrent, [:pointer, :long], :int32
      typesig { [] }
      def _cflocale_copy_current
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFLocaleCopyCurrent, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFNumberFormatterCopyProperty, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _cfnumber_formatter_copy_property(formatter, key)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFNumberFormatterCopyProperty, JNI.env, self.jni_id, formatter.to_int, key.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFNumberFormatterCreate, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _cfnumber_formatter_create(alloc, locale, style)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFNumberFormatterCreate, JNI.env, self.jni_id, alloc.to_int, locale.to_int, style.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFStringCreateWithBytes, [:pointer, :long, :int32, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _cfstring_create_with_bytes(alloc, bytes, num_bytes, encoding, is_external_representation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFStringCreateWithBytes, JNI.env, self.jni_id, alloc.to_int, bytes.jni_id, num_bytes.to_int, encoding.to_int, is_external_representation ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFStringCreateWithCharacters__I_3CI, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      def _cfstring_create_with_characters(alloc, chars, num_chars)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFStringCreateWithCharacters__I_3CI, JNI.env, self.jni_id, alloc.to_int, chars.jni_id, num_chars.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFStringCreateWithCharacters__III, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _cfstring_create_with_characters(alloc, chars, num_chars)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFStringCreateWithCharacters__III, JNI.env, self.jni_id, alloc.to_int, chars.to_int, num_chars.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFStringGetBytes, [:pointer, :long, :int32, :long, :int32, :int8, :int8, :long, :int32, :long], :int32
      typesig { [::Java::Int, CFRange, ::Java::Int, ::Java::Byte, ::Java::Boolean, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      def _cfstring_get_bytes(the_string, range, encoding, loss_byte, is_external_representation, buffer, max_buf_len, used_buf_len)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFStringGetBytes, JNI.env, self.jni_id, the_string.to_int, range.jni_id, encoding.to_int, loss_byte.to_int, is_external_representation ? 1 : 0, buffer.jni_id, max_buf_len.to_int, used_buf_len.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFStringGetCharacters, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, CFRange, Array.typed(::Java::Char)] }
      def _cfstring_get_characters(the_string, range, buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFStringGetCharacters, JNI.env, self.jni_id, the_string.to_int, range.jni_id, buffer.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFStringGetLength, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cfstring_get_length(the_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFStringGetLength, JNI.env, self.jni_id, the_string.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFStringGetSystemEncoding, [:pointer, :long], :int32
      typesig { [] }
      def _cfstring_get_system_encoding
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFStringGetSystemEncoding, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCopyFileSystemPath, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _cfurlcopy_file_system_path(an_url, path_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCopyFileSystemPath, JNI.env, self.jni_id, an_url.to_int, path_style.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCopyLastPathComponent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cfurlcopy_last_path_component(url)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCopyLastPathComponent, JNI.env, self.jni_id, url.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCopyPathExtension, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cfurlcopy_path_extension(url)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCopyPathExtension, JNI.env, self.jni_id, url.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateData, [:pointer, :long, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _cfurlcreate_data(allocator, url, encoding, escape_whitespace)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateData, JNI.env, self.jni_id, allocator.to_int, url.to_int, encoding.to_int, escape_whitespace ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateCopyAppendingPathComponent, [:pointer, :long, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _cfurlcreate_copy_appending_path_component(allocator, url, path_component, is_directory)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateCopyAppendingPathComponent, JNI.env, self.jni_id, allocator.to_int, url.to_int, path_component.to_int, is_directory ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateCopyDeletingLastPathComponent, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _cfurlcreate_copy_deleting_last_path_component(allocator, url)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateCopyDeletingLastPathComponent, JNI.env, self.jni_id, allocator.to_int, url.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateFromFSRef, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def _cfurlcreate_from_fsref(allocator, fs_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateFromFSRef, JNI.env, self.jni_id, allocator.to_int, fs_ref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateWithBytes, [:pointer, :long, :int32, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def _cfurlcreate_with_bytes(allocator, urlbytes, length, encoding, base_url)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateWithBytes, JNI.env, self.jni_id, allocator.to_int, urlbytes.jni_id, length.to_int, encoding.to_int, base_url.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateWithFileSystemPath, [:pointer, :long, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _cfurlcreate_with_file_system_path(allocator, file_path, path_style, is_directory)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateWithFileSystemPath, JNI.env, self.jni_id, allocator.to_int, file_path.to_int, path_style.to_int, is_directory ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateFromFileSystemRepresentation, [:pointer, :long, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _cfurlcreate_from_file_system_representation(allocator, buffer, buf_len, is_directory)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateFromFileSystemRepresentation, JNI.env, self.jni_id, allocator.to_int, buffer.to_int, buf_len.to_int, is_directory ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateWithString, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _cfurlcreate_with_string(allocator, urlstring, base_url)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateWithString, JNI.env, self.jni_id, allocator.to_int, urlstring.to_int, base_url.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateStringByAddingPercentEscapes, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _cfurlcreate_string_by_adding_percent_escapes(allocator, original_string, characters_to_leave_unescaped, legal_urlcharacters_to_be_escaped, encoding)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateStringByAddingPercentEscapes, JNI.env, self.jni_id, allocator.to_int, original_string.to_int, characters_to_leave_unescaped.to_int, legal_urlcharacters_to_be_escaped.to_int, encoding.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateStringByReplacingPercentEscapes, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _cfurlcreate_string_by_replacing_percent_escapes(allocator, original_string, characters_to_leave_unescaped)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLCreateStringByReplacingPercentEscapes, JNI.env, self.jni_id, allocator.to_int, original_string.to_int, characters_to_leave_unescaped.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CFURLGetFSRef, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def _cfurlget_fsref(url, fs_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CFURLGetFSRef, JNI.env, self.jni_id, url.to_int, fs_ref.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformConcat, [:pointer, :long, :long, :long, :long], :void
      typesig { [Array.typed(::Java::Float), Array.typed(::Java::Float), Array.typed(::Java::Float)] }
      def _cgaffine_transform_concat(t1, t2, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformConcat, JNI.env, self.jni_id, t1.jni_id, t2.jni_id, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformMake, [:pointer, :long, :float, :float, :float, :float, :float, :float, :long], :void
      typesig { [::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, Array.typed(::Java::Float)] }
      def _cgaffine_transform_make(a, b, c, d, tx, ty, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformMake, JNI.env, self.jni_id, a, b, c, d, tx, ty, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformTranslate, [:pointer, :long, :long, :float, :float, :long], :void
      typesig { [Array.typed(::Java::Float), ::Java::Float, ::Java::Float, Array.typed(::Java::Float)] }
      def _cgaffine_transform_translate(t, tx, ty, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformTranslate, JNI.env, self.jni_id, t.jni_id, tx, ty, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformRotate, [:pointer, :long, :long, :float, :long], :void
      typesig { [Array.typed(::Java::Float), ::Java::Float, Array.typed(::Java::Float)] }
      def _cgaffine_transform_rotate(t, angle, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformRotate, JNI.env, self.jni_id, t.jni_id, angle, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformScale, [:pointer, :long, :long, :float, :float, :long], :void
      typesig { [Array.typed(::Java::Float), ::Java::Float, ::Java::Float, Array.typed(::Java::Float)] }
      def _cgaffine_transform_scale(t, sx, sy, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformScale, JNI.env, self.jni_id, t.jni_id, sx, sy, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformInvert, [:pointer, :long, :long, :long], :void
      typesig { [Array.typed(::Java::Float), Array.typed(::Java::Float)] }
      def _cgaffine_transform_invert(t, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGAffineTransformInvert, JNI.env, self.jni_id, t.jni_id, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextScaleCTM, [:pointer, :long, :int32, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      def _cgcontext_scale_ctm(in_context, sx, sy)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextScaleCTM, JNI.env, self.jni_id, in_context.to_int, sx, sy)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextTranslateCTM, [:pointer, :long, :int32, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      def _cgcontext_translate_ctm(in_context, tx, ty)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextTranslateCTM, JNI.env, self.jni_id, in_context.to_int, tx, ty)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGBitmapContextCreate, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _cgbitmap_context_create(data, width, height, bits_per_component, bytes_per_row, colorspace, alpha_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGBitmapContextCreate, JNI.env, self.jni_id, data.to_int, width.to_int, height.to_int, bits_per_component.to_int, bytes_per_row.to_int, colorspace.to_int, alpha_info.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGColorCreate, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Float)] }
      def _cgcolor_create(colorspace, components)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGColorCreate, JNI.env, self.jni_id, colorspace.to_int, components.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGColorRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcolor_release(color)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGColorRelease, JNI.env, self.jni_id, color.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGColorSpaceCreatePattern, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgcolor_space_create_pattern(base_space)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGColorSpaceCreatePattern, JNI.env, self.jni_id, base_space.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGColorSpaceCreateDeviceRGB, [:pointer, :long], :int32
      typesig { [] }
      def _cgcolor_space_create_device_rgb
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGColorSpaceCreateDeviceRGB, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGBitmapContextCreateImage, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgbitmap_context_create_image(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGBitmapContextCreateImage, JNI.env, self.jni_id, context.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGColorSpaceRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcolor_space_release(cs)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGColorSpaceRelease, JNI.env, self.jni_id, cs.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextAddArc, [:pointer, :long, :int32, :float, :float, :float, :float, :float, :int8], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Boolean] }
      def _cgcontext_add_arc(ctx, x, y, radius, start_angle, end_angle, clockwise)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextAddArc, JNI.env, self.jni_id, ctx.to_int, x, y, radius, start_angle, end_angle, clockwise ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextAddArcToPoint, [:pointer, :long, :int32, :float, :float, :float, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      def _cgcontext_add_arc_to_point(ctx, x1, y1, x2, y2, radius)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextAddArcToPoint, JNI.env, self.jni_id, ctx.to_int, x1, y1, x2, y2, radius)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextAddLineToPoint, [:pointer, :long, :int32, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      def _cgcontext_add_line_to_point(ctx, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextAddLineToPoint, JNI.env, self.jni_id, ctx.to_int, x, y)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextAddLines, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Int] }
      def _cgcontext_add_lines(ctx, points, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextAddLines, JNI.env, self.jni_id, ctx.to_int, points.jni_id, count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextAddRect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, CGRect] }
      def _cgcontext_add_rect(context, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextAddRect, JNI.env, self.jni_id, context.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextAddPath, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cgcontext_add_path(context, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextAddPath, JNI.env, self.jni_id, context.to_int, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextBeginPath, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_begin_path(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextBeginPath, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextClip, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_clip(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextClip, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextClearRect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, CGRect] }
      def _cgcontext_clear_rect(ctx, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextClearRect, JNI.env, self.jni_id, ctx.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextClosePath, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_close_path(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextClosePath, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextConcatCTM, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Float)] }
      def _cgcontext_concat_ctm(context, transform)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextConcatCTM, JNI.env, self.jni_id, context.to_int, transform.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextDrawImage, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, CGRect, ::Java::Int] }
      def _cgcontext_draw_image(ctx, rect, image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextDrawImage, JNI.env, self.jni_id, ctx.to_int, rect.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextDrawShading, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cgcontext_draw_shading(context, shading)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextDrawShading, JNI.env, self.jni_id, context.to_int, shading.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextEOClip, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_eoclip(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextEOClip, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextEOFillPath, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_eofill_path(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextEOFillPath, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextFillPath, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_fill_path(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextFillPath, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextStrokeRect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, CGRect] }
      def _cgcontext_stroke_rect(ctx, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextStrokeRect, JNI.env, self.jni_id, ctx.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextFillRect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, CGRect] }
      def _cgcontext_fill_rect(ctx, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextFillRect, JNI.env, self.jni_id, ctx.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextFlush, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_flush(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextFlush, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextGetCTM, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Float)] }
      def _cgcontext_get_ctm(context, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextGetCTM, JNI.env, self.jni_id, context.to_int, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextGetInterpolationQuality, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgcontext_get_interpolation_quality(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextGetInterpolationQuality, JNI.env, self.jni_id, context.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextGetPathBoundingBox, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, CGRect] }
      def _cgcontext_get_path_bounding_box(ctx, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextGetPathBoundingBox, JNI.env, self.jni_id, ctx.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextGetTextPosition, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, CGPoint] }
      def _cgcontext_get_text_position(ctx, point)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextGetTextPosition, JNI.env, self.jni_id, ctx.to_int, point.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextMoveToPoint, [:pointer, :long, :int32, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      def _cgcontext_move_to_point(ctx, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextMoveToPoint, JNI.env, self.jni_id, ctx.to_int, x, y)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_release(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextRelease, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextRotateCTM, [:pointer, :long, :int32, :float], :void
      typesig { [::Java::Int, ::Java::Float] }
      def _cgcontext_rotate_ctm(ctx, angle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextRotateCTM, JNI.env, self.jni_id, ctx.to_int, angle)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextRestoreGState, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_restore_gstate(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextRestoreGState, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSaveGState, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_save_gstate(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSaveGState, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSelectFont, [:pointer, :long, :int32, :long, :float, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Float, ::Java::Int] }
      def _cgcontext_select_font(ctx, name, size, text_encoding)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSelectFont, JNI.env, self.jni_id, ctx.to_int, name.jni_id, size, text_encoding.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetFillColorSpace, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cgcontext_set_fill_color_space(ctx, colorspace)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetFillColorSpace, JNI.env, self.jni_id, ctx.to_int, colorspace.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetFillPattern, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Float)] }
      def _cgcontext_set_fill_pattern(context, pattern, components)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetFillPattern, JNI.env, self.jni_id, context.to_int, pattern.to_int, components.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetAlpha, [:pointer, :long, :int32, :float], :void
      typesig { [::Java::Int, ::Java::Float] }
      def _cgcontext_set_alpha(context, alpha)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetAlpha, JNI.env, self.jni_id, context.to_int, alpha)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetBlendMode, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cgcontext_set_blend_mode(context, mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetBlendMode, JNI.env, self.jni_id, context.to_int, mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetFillColor, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Float)] }
      def _cgcontext_set_fill_color(ctx, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetFillColor, JNI.env, self.jni_id, ctx.to_int, value.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetFont, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cgcontext_set_font(ctx, font)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetFont, JNI.env, self.jni_id, ctx.to_int, font.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetFontSize, [:pointer, :long, :int32, :float], :void
      typesig { [::Java::Int, ::Java::Float] }
      def _cgcontext_set_font_size(ctx, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetFontSize, JNI.env, self.jni_id, ctx.to_int, size)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetInterpolationQuality, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cgcontext_set_interpolation_quality(context, quality)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetInterpolationQuality, JNI.env, self.jni_id, context.to_int, quality.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetLineCap, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cgcontext_set_line_cap(context, cap)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetLineCap, JNI.env, self.jni_id, context.to_int, cap.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetLineDash, [:pointer, :long, :int32, :float, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Float, Array.typed(::Java::Float), ::Java::Int] }
      def _cgcontext_set_line_dash(ctx, phase, lengths, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetLineDash, JNI.env, self.jni_id, ctx.to_int, phase, lengths.jni_id, count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetLineJoin, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cgcontext_set_line_join(context, join)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetLineJoin, JNI.env, self.jni_id, context.to_int, join.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetLineWidth, [:pointer, :long, :int32, :float], :void
      typesig { [::Java::Int, ::Java::Float] }
      def _cgcontext_set_line_width(ctx, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetLineWidth, JNI.env, self.jni_id, ctx.to_int, width)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetMiterLimit, [:pointer, :long, :int32, :float], :void
      typesig { [::Java::Int, ::Java::Float] }
      def _cgcontext_set_miter_limit(context, limit)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetMiterLimit, JNI.env, self.jni_id, context.to_int, limit)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetShouldAntialias, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def _cgcontext_set_should_antialias(ctx, should_antialias)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetShouldAntialias, JNI.env, self.jni_id, ctx.to_int, should_antialias ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetShouldSmoothFonts, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def _cgcontext_set_should_smooth_fonts(ctx, should_smooth)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetShouldSmoothFonts, JNI.env, self.jni_id, ctx.to_int, should_smooth ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetStrokeColorSpace, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cgcontext_set_stroke_color_space(ctx, colorspace)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetStrokeColorSpace, JNI.env, self.jni_id, ctx.to_int, colorspace.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetStrokeColor, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Float)] }
      def _cgcontext_set_stroke_color(ctx, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetStrokeColor, JNI.env, self.jni_id, ctx.to_int, value.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetStrokePattern, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Float)] }
      def _cgcontext_set_stroke_pattern(context, pattern, components)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetStrokePattern, JNI.env, self.jni_id, context.to_int, pattern.to_int, components.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetRenderingIntent, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cgcontext_set_rendering_intent(context, intent)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetRenderingIntent, JNI.env, self.jni_id, context.to_int, intent.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetRGBFillColor, [:pointer, :long, :int32, :float, :float, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      def _cgcontext_set_rgbfill_color(ctx, r, g, b, alpha)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetRGBFillColor, JNI.env, self.jni_id, ctx.to_int, r, g, b, alpha)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetRGBStrokeColor, [:pointer, :long, :int32, :float, :float, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      def _cgcontext_set_rgbstroke_color(ctx, r, g, b, alpha)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetRGBStrokeColor, JNI.env, self.jni_id, ctx.to_int, r, g, b, alpha)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetTextDrawingMode, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _cgcontext_set_text_drawing_mode(ctx, mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetTextDrawingMode, JNI.env, self.jni_id, ctx.to_int, mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetTextPosition, [:pointer, :long, :int32, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      def _cgcontext_set_text_position(ctx, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetTextPosition, JNI.env, self.jni_id, ctx.to_int, x, y)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextShowText, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def _cgcontext_show_text(ctx, cstring, length)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextShowText, JNI.env, self.jni_id, ctx.to_int, cstring.jni_id, length.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextShowTextAtPoint, [:pointer, :long, :int32, :float, :float, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, Array.typed(::Java::Byte), ::Java::Int] }
      def _cgcontext_show_text_at_point(ctx, x, y, cstring, length)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextShowTextAtPoint, JNI.env, self.jni_id, ctx.to_int, x, y, cstring.jni_id, length.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSetTextMatrix, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Float)] }
      def _cgcontext_set_text_matrix(ctx, transform)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSetTextMatrix, JNI.env, self.jni_id, ctx.to_int, transform.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextStrokePath, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_stroke_path(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextStrokePath, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGContextSynchronize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgcontext_synchronize(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGContextSynchronize, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGFunctionCreate, [:pointer, :long, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Float), ::Java::Int, Array.typed(::Java::Float), CGFunctionCallbacks] }
      def _cgfunction_create(info, domain_dimension, domain, range_dimension, range, callbacks)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGFunctionCreate, JNI.env, self.jni_id, info.to_int, domain_dimension.to_int, domain.jni_id, range_dimension.to_int, range.jni_id, callbacks.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGFunctionRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgfunction_release(function)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGFunctionRelease, JNI.env, self.jni_id, function.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDataProviderCreateWithData, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _cgdata_provider_create_with_data(info, data, size, release_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDataProviderCreateWithData, JNI.env, self.jni_id, info.to_int, data.to_int, size.to_int, release_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDataProviderCreateWithURL, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgdata_provider_create_with_url(url)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDataProviderCreateWithURL, JNI.env, self.jni_id, url.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDataProviderRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgdata_provider_release(provider)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDataProviderRelease, JNI.env, self.jni_id, provider.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDisplayBaseAddress, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgdisplay_base_address(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDisplayBaseAddress, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDisplayBitsPerPixel, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgdisplay_bits_per_pixel(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDisplayBitsPerPixel, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDisplayBitsPerSample, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgdisplay_bits_per_sample(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDisplayBitsPerSample, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDisplayBytesPerRow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgdisplay_bytes_per_row(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDisplayBytesPerRow, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDisplayPixelsHigh, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgdisplay_pixels_high(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDisplayPixelsHigh, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDisplayPixelsWide, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgdisplay_pixels_wide(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDisplayPixelsWide, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDisplayHideCursor, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgdisplay_hide_cursor(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDisplayHideCursor, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDisplayShowCursor, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgdisplay_show_cursor(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDisplayShowCursor, JNI.env, self.jni_id, display.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGDisplayBounds, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, CGRect] }
      def _cgdisplay_bounds(display, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGDisplayBounds, JNI.env, self.jni_id, display.to_int, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGMainDisplayID, [:pointer, :long], :int32
      typesig { [] }
      def _cgmain_display_id
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGMainDisplayID, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGFontCreateWithPlatformFont, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _cgfont_create_with_platform_font(platform_font_reference)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGFontCreateWithPlatformFont, JNI.env, self.jni_id, platform_font_reference.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGFontRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgfont_release(font)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGFontRelease, JNI.env, self.jni_id, font.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGGetDisplaysWithRect, [:pointer, :long, :long, :int32, :long, :long], :int32
      typesig { [CGRect, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _cgget_displays_with_rect(rect, max_displays, dspys, dspy_cnt)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGGetDisplaysWithRect, JNI.env, self.jni_id, rect.jni_id, max_displays.to_int, dspys.jni_id, dspy_cnt.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageCreate, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :long, :int8, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Float), ::Java::Boolean, ::Java::Int] }
      def _cgimage_create(width, height, bits_per_component, bits_per_pixel, bytes_per_row, colorspace, alpha_info, provider, decode, should_interpolate, intent)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageCreate, JNI.env, self.jni_id, width.to_int, height.to_int, bits_per_component.to_int, bits_per_pixel.to_int, bytes_per_row.to_int, colorspace.to_int, alpha_info.to_int, provider.to_int, decode.jni_id, should_interpolate ? 1 : 0, intent.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageCreateWithImageInRect, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, CGRect] }
      def _cgimage_create_with_image_in_rect(image, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageCreateWithImageInRect, JNI.env, self.jni_id, image.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageCreateWithPNGDataProvider, [:pointer, :long, :int32, :long, :int8, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Boolean, ::Java::Int] }
      def _cgimage_create_with_pngdata_provider(source, decode, should_interpolate, intent)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageCreateWithPNGDataProvider, JNI.env, self.jni_id, source.to_int, decode.jni_id, should_interpolate ? 1 : 0, intent.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageCreateWithJPEGDataProvider, [:pointer, :long, :int32, :long, :int8, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Boolean, ::Java::Int] }
      def _cgimage_create_with_jpegdata_provider(source, decode, should_interpolate, intent)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageCreateWithJPEGDataProvider, JNI.env, self.jni_id, source.to_int, decode.jni_id, should_interpolate ? 1 : 0, intent.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageGetAlphaInfo, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgimage_get_alpha_info(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageGetAlphaInfo, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageGetBitsPerComponent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgimage_get_bits_per_component(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageGetBitsPerComponent, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageGetBitsPerPixel, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgimage_get_bits_per_pixel(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageGetBitsPerPixel, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageGetBytesPerRow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgimage_get_bytes_per_row(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageGetBytesPerRow, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageGetDataProvider, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgimage_get_data_provider(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageGetDataProvider, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageGetColorSpace, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgimage_get_color_space(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageGetColorSpace, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageGetHeight, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgimage_get_height(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageGetHeight, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageGetWidth, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgimage_get_width(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageGetWidth, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGImageRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgimage_release(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGImageRelease, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathAddArc, [:pointer, :long, :int32, :long, :float, :float, :float, :float, :float, :int8], :void
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Boolean] }
      def _cgpath_add_arc(path, m, x, y, r, start_angle, end_angle, clockwise)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathAddArc, JNI.env, self.jni_id, path.to_int, m.jni_id, x, y, r, start_angle, end_angle, clockwise ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathAddCurveToPoint, [:pointer, :long, :int32, :long, :float, :float, :float, :float, :float, :float], :void
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      def _cgpath_add_curve_to_point(path, m, cx1, cy1, cx2, cy2, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathAddCurveToPoint, JNI.env, self.jni_id, path.to_int, m.jni_id, cx1, cy1, cx2, cy2, x, y)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathAddLineToPoint, [:pointer, :long, :int32, :long, :float, :float], :void
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Float, ::Java::Float] }
      def _cgpath_add_line_to_point(path, m, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathAddLineToPoint, JNI.env, self.jni_id, path.to_int, m.jni_id, x, y)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathAddPath, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Int] }
      def _cgpath_add_path(path1, m, path2)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathAddPath, JNI.env, self.jni_id, path1.to_int, m.jni_id, path2.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathAddQuadCurveToPoint, [:pointer, :long, :int32, :long, :float, :float, :float, :float], :void
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      def _cgpath_add_quad_curve_to_point(path, m, cx, cy, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathAddQuadCurveToPoint, JNI.env, self.jni_id, path.to_int, m.jni_id, cx, cy, x, y)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathAddRect, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Float), CGRect] }
      def _cgpath_add_rect(path, m, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathAddRect, JNI.env, self.jni_id, path.to_int, m.jni_id, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathApply, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _cgpath_apply(path, info, function)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathApply, JNI.env, self.jni_id, path.to_int, info.to_int, function.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathCloseSubpath, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgpath_close_subpath(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathCloseSubpath, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathCreateMutable, [:pointer, :long], :int32
      typesig { [] }
      def _cgpath_create_mutable
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathCreateMutable, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathCreateMutableCopy, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _cgpath_create_mutable_copy(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathCreateMutableCopy, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathGetBoundingBox, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, CGRect] }
      def _cgpath_get_bounding_box(path, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathGetBoundingBox, JNI.env, self.jni_id, path.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathGetCurrentPoint, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, CGPoint] }
      def _cgpath_get_current_point(path, point)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathGetCurrentPoint, JNI.env, self.jni_id, path.to_int, point.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathIsEmpty, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _cgpath_is_empty(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathIsEmpty, JNI.env, self.jni_id, path.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathMoveToPoint, [:pointer, :long, :int32, :long, :float, :float], :void
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Float, ::Java::Float] }
      def _cgpath_move_to_point(path, m, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathMoveToPoint, JNI.env, self.jni_id, path.to_int, m.jni_id, x, y)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPathRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgpath_release(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPathRelease, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPatternCreate, [:pointer, :long, :int32, :long, :long, :float, :float, :int32, :int32, :long], :int32
      typesig { [::Java::Int, CGRect, Array.typed(::Java::Float), ::Java::Float, ::Java::Float, ::Java::Int, ::Java::Int, CGPatternCallbacks] }
      def _cgpattern_create(info, bounds, matrix, x_step, y_step, tiling, is_colored, callbacks)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPatternCreate, JNI.env, self.jni_id, info.to_int, bounds.jni_id, matrix.jni_id, x_step, y_step, tiling.to_int, is_colored.to_int, callbacks.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPatternRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgpattern_release(pattern)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPatternRelease, JNI.env, self.jni_id, pattern.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPointApplyAffineTransform, [:pointer, :long, :long, :long, :long], :void
      typesig { [CGPoint, Array.typed(::Java::Float), CGPoint] }
      def _cgpoint_apply_affine_transform(point, t, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPointApplyAffineTransform, JNI.env, self.jni_id, point.jni_id, t.jni_id, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPostMouseEvent, [:pointer, :long, :long, :int8, :int32, :int8, :int8, :int8, :int8, :int8], :int32
      typesig { [CGPoint, ::Java::Boolean, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
      def _cgpost_mouse_event(mouse_cursor_position, update_mouse_cursor_position, button_count, mouse_button_down, mouse_button_down2, mouse_button_down3, mouse_button_down4, mouse_button_down5)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPostMouseEvent, JNI.env, self.jni_id, mouse_cursor_position.jni_id, update_mouse_cursor_position ? 1 : 0, button_count.to_int, mouse_button_down ? 1 : 0, mouse_button_down2 ? 1 : 0, mouse_button_down3 ? 1 : 0, mouse_button_down4 ? 1 : 0, mouse_button_down5 ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPostKeyboardEvent, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _cgpost_keyboard_event(key_char, virtual_key, key_down)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPostKeyboardEvent, JNI.env, self.jni_id, key_char.to_int, virtual_key.to_int, key_down ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGPostScrollWheelEvent, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _cgpost_scroll_wheel_event(wheel_count, wheel1)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGPostScrollWheelEvent, JNI.env, self.jni_id, wheel_count.to_int, wheel1.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGRectContainsPoint, [:pointer, :long, :long, :long], :int32
      typesig { [CGRect, CGPoint] }
      def _cgrect_contains_point(rect, point)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGRectContainsPoint, JNI.env, self.jni_id, rect.jni_id, point.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGShadingCreateAxial, [:pointer, :long, :int32, :long, :long, :int32, :int8, :int8], :int32
      typesig { [::Java::Int, CGPoint, CGPoint, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
      def _cgshading_create_axial(colorspace, start, end_, function, extend_start, extend_end)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGShadingCreateAxial, JNI.env, self.jni_id, colorspace.to_int, start.jni_id, end_.jni_id, function.to_int, extend_start ? 1 : 0, extend_end ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGShadingCreateRadial, [:pointer, :long, :int32, :long, :float, :long, :float, :int32, :int8, :int8], :int32
      typesig { [::Java::Int, CGPoint, ::Java::Float, CGPoint, ::Java::Float, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
      def _cgshading_create_radial(colorspace, start, start_radius, end_, end_radius, function, extend_start, extend_end)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGShadingCreateRadial, JNI.env, self.jni_id, colorspace.to_int, start.jni_id, start_radius, end_.jni_id, end_radius, function.to_int, extend_start ? 1 : 0, extend_end ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGShadingRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _cgshading_release(shading)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGShadingRelease, JNI.env, self.jni_id, shading.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGSizeApplyAffineTransform, [:pointer, :long, :long, :long, :long], :void
      typesig { [CGSize, Array.typed(::Java::Float), CGSize] }
      def _cgsize_apply_affine_transform(size, t, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGSizeApplyAffineTransform, JNI.env, self.jni_id, size.jni_id, t.jni_id, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CGWarpMouseCursorPosition, [:pointer, :long, :long], :int32
      typesig { [CGPoint] }
      def _cgwarp_mouse_cursor_position(new_cursor_position)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CGWarpMouseCursorPosition, JNI.env, self.jni_id, new_cursor_position.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ChangeMenuItemAttributes, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _change_menu_item_attributes(menu, item, set_these_attributes, clear_these_attributes)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ChangeMenuItemAttributes, JNI.env, self.jni_id, menu.to_int, item.to_int, set_these_attributes.to_int, clear_these_attributes.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ChangeWindowAttributes, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _change_window_attributes(window_handle, set_attributes, clear_attributes)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ChangeWindowAttributes, JNI.env, self.jni_id, window_handle.to_int, set_attributes.to_int, clear_attributes.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CPSEnableForegroundOperation, [:pointer, :long, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _cpsenable_foreground_operation(psn, arg2, arg3, arg4, arg5)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CPSEnableForegroundOperation, JNI.env, self.jni_id, psn.jni_id, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CPSSetProcessName, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Byte)] }
      def _cpsset_process_name(psn, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CPSSetProcessName, JNI.env, self.jni_id, psn.jni_id, name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CallNextEventHandler, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _call_next_event_handler(next_handler, event_ref_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CallNextEventHandler, JNI.env, self.jni_id, next_handler.to_int, event_ref_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_Call, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _call(proc, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_Call, JNI.env, self.jni_id, proc.to_int, arg1.to_int, arg2.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CalcMenuSize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _calc_menu_size(the_menu)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CalcMenuSize, JNI.env, self.jni_id, the_menu.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CancelMenuTracking, [:pointer, :long, :int32, :int8, :int32], :int32
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int] }
      def _cancel_menu_tracking(in_root_menu, in_immediate, in_dismissal_reason)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CancelMenuTracking, JNI.env, self.jni_id, in_root_menu.to_int, in_immediate ? 1 : 0, in_dismissal_reason.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ClearCurrentScrap, [:pointer, :long], :int32
      typesig { [] }
      def _clear_current_scrap
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ClearCurrentScrap, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ClearKeyboardFocus, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _clear_keyboard_focus(in_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ClearKeyboardFocus, JNI.env, self.jni_id, in_window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ClearMenuBar, [:pointer, :long], :void
      typesig { [] }
      def _clear_menu_bar
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ClearMenuBar, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ClipCGContextToRegion, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Rect, ::Java::Int] }
      def _clip_cgcontext_to_region(in_context, port_rect, rgn_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ClipCGContextToRegion, JNI.env, self.jni_id, in_context.to_int, port_rect.jni_id, rgn_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CloseDataBrowserContainer, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _close_data_browser_container(c_handle, container)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CloseDataBrowserContainer, JNI.env, self.jni_id, c_handle.to_int, container.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ClosePicture, [:pointer, :long], :void
      typesig { [] }
      def _close_picture
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ClosePicture, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CloseRgn, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _close_rgn(dst_rgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CloseRgn, JNI.env, self.jni_id, dst_rgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CollapseWindow, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _collapse_window(w_handle, collapse)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CollapseWindow, JNI.env, self.jni_id, w_handle.to_int, collapse ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ContextualMenuSelect, [:pointer, :long, :int32, :long, :int8, :int32, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, Point, ::Java::Boolean, ::Java::Int, Array.typed(::Java::Byte), AEDesc, Array.typed(::Java::Int), Array.typed(::Java::Short), Array.typed(::Java::Short)] }
      def _contextual_menu_select(in_menu, in_global_location, in_reserved, in_help_type, in_help_item_string, in_selection, out_user_selection_type, out_menu_id, out_menu_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ContextualMenuSelect, JNI.env, self.jni_id, in_menu.to_int, in_global_location.jni_id, in_reserved ? 1 : 0, in_help_type.to_int, in_help_item_string.jni_id, in_selection.jni_id, out_user_selection_type.jni_id, out_menu_id.jni_id, out_menu_item.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ConvertEventRefToEventRecord, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, EventRecord] }
      def _convert_event_ref_to_event_record(in_event, out_event)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ConvertEventRefToEventRecord, JNI.env, self.jni_id, in_event.to_int, out_event.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ConvertFromPStringToUnicode, [:pointer, :long, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Char)] }
      def _convert_from_pstring_to_unicode(i_text_to_unicode_info, i_pascal_str, i_output_buf_len, o_unicode_len, o_unicode_str)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ConvertFromPStringToUnicode, JNI.env, self.jni_id, i_text_to_unicode_info.to_int, i_pascal_str.jni_id, i_output_buf_len.to_int, o_unicode_len.jni_id, o_unicode_str.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ConvertFromUnicodeToPString, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Byte)] }
      def _convert_from_unicode_to_pstring(i_unicode_to_text_info, i_unicode_len, i_unicode_str, o_pascal_str)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ConvertFromUnicodeToPString, JNI.env, self.jni_id, i_unicode_to_text_info.to_int, i_unicode_len.to_int, i_unicode_str.jni_id, o_pascal_str.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CopyBits, [:pointer, :long, :int32, :int32, :long, :long, :int16, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Rect, Rect, ::Java::Short, ::Java::Int] }
      def _copy_bits(src_pix_map_handle, dst_pix_map_handle, src_rect, dst_rect, mode, mask_rgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CopyBits, JNI.env, self.jni_id, src_pix_map_handle.to_int, dst_pix_map_handle.to_int, src_rect.jni_id, dst_rect.jni_id, mode.to_int, mask_rgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CopyControlTitleAsCFString, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _copy_control_title_as_cfstring(c_handle, s_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CopyControlTitleAsCFString, JNI.env, self.jni_id, c_handle.to_int, s_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CopyMenuItemTextAsCFString, [:pointer, :long, :int32, :int16, :long], :int32
      typesig { [::Java::Int, ::Java::Short, Array.typed(::Java::Int)] }
      def _copy_menu_item_text_as_cfstring(m_handle, index, s_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CopyMenuItemTextAsCFString, JNI.env, self.jni_id, m_handle.to_int, index.to_int, s_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CopyRgn, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _copy_rgn(src_rgn_handle, dst_rgn_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CopyRgn, JNI.env, self.jni_id, src_rgn_handle.to_int, dst_rgn_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CountDragItems, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Short)] }
      def _count_drag_items(the_drag, num_items)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CountDragItems, JNI.env, self.jni_id, the_drag.to_int, num_items.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CountDragItemFlavors, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      def _count_drag_item_flavors(the_drag, the_item_ref, num_flavors)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CountDragItemFlavors, JNI.env, self.jni_id, the_drag.to_int, the_item_ref.to_int, num_flavors.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CountMenuItems, [:pointer, :long, :int32], :int16
      typesig { [::Java::Int] }
      def _count_menu_items(m_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CountMenuItems, JNI.env, self.jni_id, m_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CountSubControls, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Short)] }
      def _count_sub_controls(c_handle, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CountSubControls, JNI.env, self.jni_id, c_handle.to_int, count.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateBevelButtonControl, [:pointer, :long, :int32, :long, :int32, :int16, :int16, :int32, :int16, :int16, :int16, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ::Java::Short, ::Java::Short, ::Java::Int, ::Java::Short, ::Java::Short, ::Java::Short, Array.typed(::Java::Int)] }
      def _create_bevel_button_control(window, bounds_rect, title, thickness, behavior, info, menu_id, menu_behavior, menu_placement, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateBevelButtonControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, title.to_int, thickness.to_int, behavior.to_int, info.to_int, menu_id.to_int, menu_behavior.to_int, menu_placement.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateClockControl, [:pointer, :long, :int32, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _create_clock_control(window, bounds_rect, clock_type, clock_flags, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateClockControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, clock_type.to_int, clock_flags.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateCheckBoxControl, [:pointer, :long, :int32, :long, :int32, :int32, :int8, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Int)] }
      def _create_check_box_control(window, bounds_rect, title, initial_value, auto_toggle, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateCheckBoxControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, title.to_int, initial_value.to_int, auto_toggle ? 1 : 0, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateCGContextForPort, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _create_cgcontext_for_port(in_port, out_context)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateCGContextForPort, JNI.env, self.jni_id, in_port.to_int, out_context.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateDataBrowserControl, [:pointer, :long, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, Array.typed(::Java::Int)] }
      def _create_data_browser_control(window, bounds_rect, style, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateDataBrowserControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, style.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateEvent, [:pointer, :long, :int32, :int32, :int32, :double, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Double, ::Java::Int, Array.typed(::Java::Int)] }
      def _create_event(allocator, in_class_id, kind, when_, flags, out_event_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateEvent, JNI.env, self.jni_id, allocator.to_int, in_class_id.to_int, kind.to_int, when_, flags.to_int, out_event_ref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateGroupBoxControl, [:pointer, :long, :int32, :long, :int32, :int8, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Int)] }
      def _create_group_box_control(window, bounds_rect, title, primary, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateGroupBoxControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, title.to_int, primary ? 1 : 0, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateIconControl, [:pointer, :long, :int32, :long, :long, :int8, :long], :int32
      typesig { [::Java::Int, Rect, ControlButtonContentInfo, ::Java::Boolean, Array.typed(::Java::Int)] }
      def _create_icon_control(window, bounds_rect, icon, dont_track, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateIconControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, icon.jni_id, dont_track ? 1 : 0, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateLittleArrowsControl, [:pointer, :long, :int32, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _create_little_arrows_control(window, bounds_rect, value, minimum, maximum, increment, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateLittleArrowsControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, value.to_int, minimum.to_int, maximum.to_int, increment.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateNewMenu, [:pointer, :long, :int16, :int32, :long], :int32
      typesig { [::Java::Short, ::Java::Int, Array.typed(::Java::Int)] }
      def _create_new_menu(menu_id, menu_attributes, out_menu_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateNewMenu, JNI.env, self.jni_id, menu_id.to_int, menu_attributes.to_int, out_menu_ref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateNewWindow, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Rect, Array.typed(::Java::Int)] }
      def _create_new_window(window_class, attributes, bounds, w_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateNewWindow, JNI.env, self.jni_id, window_class.to_int, attributes.to_int, bounds.jni_id, w_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreatePopupArrowControl, [:pointer, :long, :int32, :long, :int16, :int16, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Short, ::Java::Short, Array.typed(::Java::Int)] }
      def _create_popup_arrow_control(window, bounds_rect, orientation, size, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreatePopupArrowControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, orientation.to_int, size.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreatePopupButtonControl, [:pointer, :long, :int32, :long, :int32, :int16, :int8, :int16, :int16, :int32, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ::Java::Short, ::Java::Boolean, ::Java::Short, ::Java::Short, ::Java::Int, Array.typed(::Java::Int)] }
      def _create_popup_button_control(window, bounds_rect, title, menu_id, variable_width, title_width, title_justification, title_style, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreatePopupButtonControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, title.to_int, menu_id.to_int, variable_width ? 1 : 0, title_width.to_int, title_justification.to_int, title_style.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateProgressBarControl, [:pointer, :long, :int32, :long, :int32, :int32, :int32, :int8, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Int)] }
      def _create_progress_bar_control(window, bounds_rect, value, minimim, maximum, indeterminate, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateProgressBarControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, value.to_int, minimim.to_int, maximum.to_int, indeterminate ? 1 : 0, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreatePushButtonControl, [:pointer, :long, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, Array.typed(::Java::Int)] }
      def _create_push_button_control(window, bounds_rect, title, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreatePushButtonControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, title.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreatePushButtonWithIconControl, [:pointer, :long, :int32, :long, :int32, :long, :int16, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ControlButtonContentInfo, ::Java::Short, Array.typed(::Java::Int)] }
      def _create_push_button_with_icon_control(window, bounds_rect, title, icon, icon_alignment, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreatePushButtonWithIconControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, title.to_int, icon.jni_id, icon_alignment.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateRadioButtonControl, [:pointer, :long, :int32, :long, :int32, :int32, :int8, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Int)] }
      def _create_radio_button_control(window, bounds_rect, title, initial_value, auto_toggle, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateRadioButtonControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, title.to_int, initial_value.to_int, auto_toggle ? 1 : 0, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateRootControl, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _create_root_control(window_handle, c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateRootControl, JNI.env, self.jni_id, window_handle.to_int, c_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateSliderControl, [:pointer, :long, :int32, :long, :int32, :int32, :int32, :int32, :int16, :int8, :int32, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Short, ::Java::Boolean, ::Java::Int, Array.typed(::Java::Int)] }
      def _create_slider_control(window, bounds_rect, value, minimum, maximum, orientation, num_tick_marks, live_tracking, live_tracking_proc, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateSliderControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, value.to_int, minimum.to_int, maximum.to_int, orientation.to_int, num_tick_marks.to_int, live_tracking ? 1 : 0, live_tracking_proc.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateScrollBarControl, [:pointer, :long, :int32, :long, :int32, :int32, :int32, :int32, :int8, :int32, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, Array.typed(::Java::Int)] }
      def _create_scroll_bar_control(window, bounds_rect, value, minimum, maximum, view_size, live_tracking, live_tracking_proc, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateScrollBarControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, value.to_int, minimum.to_int, maximum.to_int, view_size.to_int, live_tracking ? 1 : 0, live_tracking_proc.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateSeparatorControl, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Rect, Array.typed(::Java::Int)] }
      def _create_separator_control(window, bounds_rect, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateSeparatorControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateStandardAlert, [:pointer, :long, :int16, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Short, ::Java::Int, ::Java::Int, AlertStdCFStringAlertParamRec, Array.typed(::Java::Int)] }
      def _create_standard_alert(alert_type, error_shandle, explanation_shandle, alert_param_handle, dialog_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateStandardAlert, JNI.env, self.jni_id, alert_type.to_int, error_shandle.to_int, explanation_shandle.to_int, alert_param_handle.jni_id, dialog_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateStaticTextControl, [:pointer, :long, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ControlFontStyleRec, Array.typed(::Java::Int)] }
      def _create_static_text_control(window, bounds_rect, text, style, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateStaticTextControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, text.to_int, style.jni_id, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateTabsControl, [:pointer, :long, :int32, :long, :int16, :int16, :int16, :int32, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Short, ::Java::Short, ::Java::Short, ::Java::Int, Array.typed(::Java::Int)] }
      def _create_tabs_control(window, bounds_rect, size, direction, num_tabs, tab_array, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateTabsControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, size.to_int, direction.to_int, num_tabs.to_int, tab_array.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateTextToUnicodeInfoByEncoding, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _create_text_to_unicode_info_by_encoding(i_encoding, o_text_to_unicode_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateTextToUnicodeInfoByEncoding, JNI.env, self.jni_id, i_encoding.to_int, o_text_to_unicode_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateUnicodeToTextInfoByEncoding, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _create_unicode_to_text_info_by_encoding(i_encoding, o_unicode_to_text_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateUnicodeToTextInfoByEncoding, JNI.env, self.jni_id, i_encoding.to_int, o_unicode_to_text_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateEditUnicodeTextControl, [:pointer, :long, :int32, :long, :int32, :int8, :long, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, ::Java::Boolean, ControlFontStyleRec, Array.typed(::Java::Int)] }
      def _create_edit_unicode_text_control(window, bounds_rect, text, is_password, style, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateEditUnicodeTextControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, text.to_int, is_password ? 1 : 0, style.jni_id, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateUserPaneControl, [:pointer, :long, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, Rect, ::Java::Int, Array.typed(::Java::Int)] }
      def _create_user_pane_control(window, bounds_rect, features, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateUserPaneControl, JNI.env, self.jni_id, window.to_int, bounds_rect.jni_id, features.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_CreateWindowGroup, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _create_window_group(in_attributes, out_group)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_CreateWindowGroup, JNI.env, self.jni_id, in_attributes.to_int, out_group.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DataBrowserChangeAttributes, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _data_browser_change_attributes(in_data_browser, in_attributes_to_set, in_attributes_to_clear)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DataBrowserChangeAttributes, JNI.env, self.jni_id, in_data_browser.to_int, in_attributes_to_set.to_int, in_attributes_to_clear.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DataBrowserGetMetric, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Boolean), Array.typed(::Java::Float)] }
      def _data_browser_get_metric(in_data_browser, in_metric, out_using_default_value, out_value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DataBrowserGetMetric, JNI.env, self.jni_id, in_data_browser.to_int, in_metric.to_int, out_using_default_value.jni_id, out_value.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DataBrowserSetMetric, [:pointer, :long, :int32, :int32, :int8, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Float] }
      def _data_browser_set_metric(in_data_browser, in_metric, in_use_default_value, in_value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DataBrowserSetMetric, JNI.env, self.jni_id, in_data_browser.to_int, in_metric.to_int, in_use_default_value ? 1 : 0, in_value)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DataBrowserGetAttributes, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _data_browser_get_attributes(in_data_browser, out_attributes)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DataBrowserGetAttributes, JNI.env, self.jni_id, in_data_browser.to_int, out_attributes.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DeactivateTSMDocument, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _deactivate_tsmdocument(idoc_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DeactivateTSMDocument, JNI.env, self.jni_id, idoc_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DeleteMenu, [:pointer, :long, :int16], :void
      typesig { [::Java::Short] }
      def _delete_menu(menu_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DeleteMenu, JNI.env, self.jni_id, menu_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DeleteMenuItem, [:pointer, :long, :int32, :int16], :void
      typesig { [::Java::Int, ::Java::Short] }
      def _delete_menu_item(m_handle, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DeleteMenuItem, JNI.env, self.jni_id, m_handle.to_int, index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DeleteMenuItems, [:pointer, :long, :int32, :int16, :int32], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int] }
      def _delete_menu_items(m_handle, first_item, num_items)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DeleteMenuItems, JNI.env, self.jni_id, m_handle.to_int, first_item.to_int, num_items.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DeleteTSMDocument, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _delete_tsmdocument(idoc_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DeleteTSMDocument, JNI.env, self.jni_id, idoc_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DiffRgn, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _diff_rgn(src_rgn_a, src_rgn_b, dst_rgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DiffRgn, JNI.env, self.jni_id, src_rgn_a.to_int, src_rgn_b.to_int, dst_rgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisableControl, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _disable_control(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisableControl, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisableMenuCommand, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _disable_menu_command(m_handle, command_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisableMenuCommand, JNI.env, self.jni_id, m_handle.to_int, command_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisableMenuItem, [:pointer, :long, :int32, :int16], :void
      typesig { [::Java::Int, ::Java::Short] }
      def _disable_menu_item(m_handle, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisableMenuItem, JNI.env, self.jni_id, m_handle.to_int, index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisposeControl, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _dispose_control(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisposeControl, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisposeDrag, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _dispose_drag(the_drag)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisposeDrag, JNI.env, self.jni_id, the_drag.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisposeGWorld, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _dispose_gworld(offscreen_gworld)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisposeGWorld, JNI.env, self.jni_id, offscreen_gworld.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisposeHandle, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _dispose_handle(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisposeHandle, JNI.env, self.jni_id, handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisposeMenu, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _dispose_menu(m_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisposeMenu, JNI.env, self.jni_id, m_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisposePtr, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _dispose_ptr(ptr)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisposePtr, JNI.env, self.jni_id, ptr.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisposeRgn, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _dispose_rgn(rgn_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisposeRgn, JNI.env, self.jni_id, rgn_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisposeTextToUnicodeInfo, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _dispose_text_to_unicode_info(io_text_to_unicode_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisposeTextToUnicodeInfo, JNI.env, self.jni_id, io_text_to_unicode_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisposeUnicodeToTextInfo, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _dispose_unicode_to_text_info(io_unicode_to_text_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisposeUnicodeToTextInfo, JNI.env, self.jni_id, io_unicode_to_text_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DisposeWindow, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _dispose_window(w_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DisposeWindow, JNI.env, self.jni_id, w_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DrawControlInCurrentPort, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _draw_control_in_current_port(in_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DrawControlInCurrentPort, JNI.env, self.jni_id, in_control.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DrawMenuBar, [:pointer, :long], :void
      typesig { [] }
      def _draw_menu_bar
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DrawMenuBar, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DrawPicture, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Rect] }
      def _draw_picture(pic_handle, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DrawPicture, JNI.env, self.jni_id, pic_handle.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DrawThemeButton, [:pointer, :long, :long, :int16, :long, :long, :int32, :int32, :int32], :int32
      typesig { [Rect, ::Java::Short, ThemeButtonDrawInfo, ThemeButtonDrawInfo, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _draw_theme_button(in_bounds, in_kind, in_new_info, in_prev_info, in_erase_proc, in_label_proc, in_user_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DrawThemeButton, JNI.env, self.jni_id, in_bounds.jni_id, in_kind.to_int, in_new_info.jni_id, in_prev_info.jni_id, in_erase_proc.to_int, in_label_proc.to_int, in_user_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DrawThemeEditTextFrame, [:pointer, :long, :long, :int32], :int32
      typesig { [Rect, ::Java::Int] }
      def _draw_theme_edit_text_frame(bounds, state)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DrawThemeEditTextFrame, JNI.env, self.jni_id, bounds.jni_id, state.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DrawThemeFocusRect, [:pointer, :long, :long, :int8], :int32
      typesig { [Rect, ::Java::Boolean] }
      def _draw_theme_focus_rect(bounds, has_focus)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DrawThemeFocusRect, JNI.env, self.jni_id, bounds.jni_id, has_focus ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DrawThemePopupArrow, [:pointer, :long, :long, :int16, :int16, :int32, :int32, :int32], :int32
      typesig { [Rect, ::Java::Short, ::Java::Short, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _draw_theme_popup_arrow(bounds, orientation, size, state, erase_proc, erase_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DrawThemePopupArrow, JNI.env, self.jni_id, bounds.jni_id, orientation.to_int, size.to_int, state.to_int, erase_proc.to_int, erase_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DrawThemeSeparator, [:pointer, :long, :long, :int32], :int32
      typesig { [Rect, ::Java::Int] }
      def _draw_theme_separator(bounds, state)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DrawThemeSeparator, JNI.env, self.jni_id, bounds.jni_id, state.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_DrawThemeTextBox, [:pointer, :long, :int32, :int16, :int32, :int8, :long, :int16, :int32], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Boolean, Rect, ::Java::Short, ::Java::Int] }
      def _draw_theme_text_box(s_handle, font_id, state, wrap_to_width, bounds, just, context)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_DrawThemeTextBox, JNI.env, self.jni_id, s_handle.to_int, font_id.to_int, state.to_int, wrap_to_width ? 1 : 0, bounds.jni_id, just.to_int, context.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_EmbedControl, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _embed_control(in_control, in_container)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_EmbedControl, JNI.env, self.jni_id, in_control.to_int, in_container.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_EmptyRect, [:pointer, :long, :long], :int8
      typesig { [Rect] }
      def _empty_rect(r)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_EmptyRect, JNI.env, self.jni_id, r.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_EmptyRgn, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _empty_rgn(rgn_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_EmptyRgn, JNI.env, self.jni_id, rgn_handle.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_EnableControl, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _enable_control(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_EnableControl, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_EnableMenuCommand, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _enable_menu_command(m_handle, command_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_EnableMenuCommand, JNI.env, self.jni_id, m_handle.to_int, command_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_EnableMenuItem, [:pointer, :long, :int32, :int16], :void
      typesig { [::Java::Int, ::Java::Short] }
      def _enable_menu_item(m_handle, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_EnableMenuItem, JNI.env, self.jni_id, m_handle.to_int, index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_EraseRect, [:pointer, :long, :long], :void
      typesig { [Rect] }
      def _erase_rect(bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_EraseRect, JNI.env, self.jni_id, bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_Fix2Long, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _fix2long(x)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_Fix2Long, JNI.env, self.jni_id, x.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FindSpecificEventInQueue, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _find_specific_event_in_queue(in_queue, in_comparator, in_compare_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FindSpecificEventInQueue, JNI.env, self.jni_id, in_queue.to_int, in_comparator.to_int, in_compare_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_Fix2X, [:pointer, :long, :int32], :double
      typesig { [::Java::Int] }
      def _fix2x(x)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_Fix2X, JNI.env, self.jni_id, x.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FixTSMDocument, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _fix_tsmdocument(idoc_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FixTSMDocument, JNI.env, self.jni_id, idoc_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FMGetATSFontRefFromFont, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _fmget_atsfont_ref_from_font(i_font)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FMGetATSFontRefFromFont, JNI.env, self.jni_id, i_font.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FMGetFontFamilyFromName, [:pointer, :long, :long], :int16
      typesig { [Array.typed(::Java::Byte)] }
      def _fmget_font_family_from_name(name)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FMGetFontFamilyFromName, JNI.env, self.jni_id, name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FMGetFontFamilyInstanceFromFont, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Short), Array.typed(::Java::Short)] }
      def _fmget_font_family_instance_from_font(i_font, o_font_family, o_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FMGetFontFamilyInstanceFromFont, JNI.env, self.jni_id, i_font.to_int, o_font_family.jni_id, o_style.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FMGetFontFromATSFontRef, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _fmget_font_from_atsfont_ref(i_font)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FMGetFontFromATSFontRef, JNI.env, self.jni_id, i_font.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FMGetFontFromFontFamilyInstance, [:pointer, :long, :int16, :int16, :long, :long], :int32
      typesig { [::Java::Short, ::Java::Short, Array.typed(::Java::Int), Array.typed(::Java::Short)] }
      def _fmget_font_from_font_family_instance(i_font_family, i_style, o_font, o_intrinsic_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FMGetFontFromFontFamilyInstance, JNI.env, self.jni_id, i_font_family.to_int, i_style.to_int, o_font.jni_id, o_intrinsic_style.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FPIsFontPanelVisible, [:pointer, :long], :int8
      typesig { [] }
      def _fpis_font_panel_visible
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FPIsFontPanelVisible, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FPShowHideFontPanel, [:pointer, :long], :int32
      typesig { [] }
      def _fpshow_hide_font_panel
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FPShowHideFontPanel, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FSpGetFInfo, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def _fsp_get_finfo(spec, fndr_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FSpGetFInfo, JNI.env, self.jni_id, spec.jni_id, fndr_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FSpMakeFSRef, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def _fsp_make_fsref(source, new_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FSpMakeFSRef, JNI.env, self.jni_id, source.jni_id, new_ref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FSGetCatalogInfo, [:pointer, :long, :long, :int32, :long, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def _fsget_catalog_info(ref, which_info, catalog_info, out_name, fs_spec, parent_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FSGetCatalogInfo, JNI.env, self.jni_id, ref.jni_id, which_info.to_int, catalog_info.jni_id, out_name.jni_id, fs_spec.jni_id, parent_ref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FindWindow, [:pointer, :long, :long, :long], :int16
      typesig { [Point, Array.typed(::Java::Int)] }
      def _find_window(where, w_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FindWindow, JNI.env, self.jni_id, where.jni_id, w_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_FrontWindow, [:pointer, :long], :int32
      typesig { [] }
      def _front_window
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_FrontWindow, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_Gestalt, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _gestalt(selector, response)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_Gestalt, JNI.env, self.jni_id, selector.to_int, response.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetApplicationEventTarget, [:pointer, :long], :int32
      typesig { [] }
      def _get_application_event_target
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetApplicationEventTarget, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetAvailableWindowAttributes, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_available_window_attributes(window_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetAvailableWindowAttributes, JNI.env, self.jni_id, window_class.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetAvailableWindowPositioningBounds, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Rect] }
      def _get_available_window_positioning_bounds(in_device, out_available_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetAvailableWindowPositioningBounds, JNI.env, self.jni_id, in_device.to_int, out_available_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetBestControlRect, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Rect, Array.typed(::Java::Short)] }
      def _get_best_control_rect(in_control, out_rect, out_base_line_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetBestControlRect, JNI.env, self.jni_id, in_control.to_int, out_rect.jni_id, out_base_line_offset.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetCaretTime, [:pointer, :long], :int32
      typesig { [] }
      def _get_caret_time
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetCaretTime, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetClip, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _get_clip(rgn_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetClip, JNI.env, self.jni_id, rgn_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlAction, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_control_action(the_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlAction, JNI.env, self.jni_id, the_control.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControl32BitMaximum, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_control32bit_maximum(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControl32BitMaximum, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControl32BitMinimum, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_control32bit_minimum(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControl32BitMinimum, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControl32BitValue, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_control32bit_value(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControl32BitValue, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlBounds, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Rect] }
      def _get_control_bounds(c_handle, bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlBounds, JNI.env, self.jni_id, c_handle.to_int, bounds.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISIIL#{ControlFontStyleRec.jni_name}_2_3I".to_sym, [:pointer, :long, :int32, :int16, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, ControlFontStyleRec, Array.typed(::Java::Int)] }
      def _get_control_data(in_control, in_part, in_tag_name, in_buffer_size, in_buffer, out_actual_size)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISIIL#{ControlFontStyleRec.jni_name}_2_3I".to_sym, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_buffer_size.to_int, in_buffer.jni_id, out_actual_size.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISIIL#{Rect.jni_name}_2_3I".to_sym, [:pointer, :long, :int32, :int16, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, Rect, Array.typed(::Java::Int)] }
      def _get_control_data(in_control, in_part, in_tag_name, in_buffer_size, in_buffer, out_actual_size)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISIIL#{Rect.jni_name}_2_3I".to_sym, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_buffer_size.to_int, in_buffer.jni_id, out_actual_size.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISII_3I_3I, [:pointer, :long, :int32, :int16, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _get_control_data(in_control, in_part, in_tag_name, in_buffer_size, in_buffer, out_actual_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISII_3I_3I, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_buffer_size.to_int, in_buffer.jni_id, out_actual_size.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISII_3S_3I, [:pointer, :long, :int32, :int16, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, Array.typed(::Java::Short), Array.typed(::Java::Int)] }
      def _get_control_data(in_control, in_part, in_tag_name, in_buffer_size, in_buffer, out_actual_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISII_3S_3I, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_buffer_size.to_int, in_buffer.jni_id, out_actual_size.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISII_3B_3I, [:pointer, :long, :int32, :int16, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      def _get_control_data(in_control, in_part, in_tag_name, in_buffer_size, in_buffer, out_actual_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISII_3B_3I, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_buffer_size.to_int, in_buffer.jni_id, out_actual_size.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISIIL#{ControlEditTextSelectionRec.jni_name}_2_3I".to_sym, [:pointer, :long, :int32, :int16, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, ControlEditTextSelectionRec, Array.typed(::Java::Int)] }
      def _get_control_data(in_control, in_part, in_tag_name, in_buffer_size, in_buffer, out_actual_size)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISIIL#{ControlEditTextSelectionRec.jni_name}_2_3I".to_sym, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_buffer_size.to_int, in_buffer.jni_id, out_actual_size.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISIIL#{LongDateRec.jni_name}_2_3I".to_sym, [:pointer, :long, :int32, :int16, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, LongDateRec, Array.typed(::Java::Int)] }
      def _get_control_data(in_control, in_part, in_tag_name, in_buffer_size, in_buffer, out_actual_size)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_GetControlData__ISIIL#{LongDateRec.jni_name}_2_3I".to_sym, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_buffer_size.to_int, in_buffer.jni_id, out_actual_size.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlEventTarget, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_control_event_target(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlEventTarget, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlFeatures, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_control_features(in_control, out_features)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlFeatures, JNI.env, self.jni_id, in_control.to_int, out_features.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlKind, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, ControlKind] }
      def _get_control_kind(in_control, kind)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlKind, JNI.env, self.jni_id, in_control.to_int, kind.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlOwner, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_control_owner(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlOwner, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlProperty, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _get_control_property(control, property_creator, property_tag, buffer_size, actual_size, property_buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlProperty, JNI.env, self.jni_id, control.to_int, property_creator.to_int, property_tag.to_int, buffer_size.to_int, actual_size.jni_id, property_buffer.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlReference, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_control_reference(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlReference, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlRegion, [:pointer, :long, :int32, :int16, :int32], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int] }
      def _get_control_region(c_handle, in_part, rgn_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlRegion, JNI.env, self.jni_id, c_handle.to_int, in_part.to_int, rgn_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlValue, [:pointer, :long, :int32], :int16
      typesig { [::Java::Int] }
      def _get_control_value(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlValue, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetControlViewSize, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_control_view_size(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetControlViewSize, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetCurrentEventButtonState, [:pointer, :long], :int32
      typesig { [] }
      def _get_current_event_button_state
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetCurrentEventButtonState, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetCurrentEventLoop, [:pointer, :long], :int32
      typesig { [] }
      def _get_current_event_loop
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetCurrentEventLoop, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetCurrentEventKeyModifiers, [:pointer, :long], :int32
      typesig { [] }
      def _get_current_event_key_modifiers
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetCurrentEventKeyModifiers, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetCurrentEventQueue, [:pointer, :long], :int32
      typesig { [] }
      def _get_current_event_queue
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetCurrentEventQueue, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetCurrentProcess, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _get_current_process(psn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetCurrentProcess, JNI.env, self.jni_id, psn.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetCurrentScrap, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _get_current_scrap(scrap)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetCurrentScrap, JNI.env, self.jni_id, scrap.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserCallbacks, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, DataBrowserCallbacks] }
      def _get_data_browser_callbacks(browser, callbacks)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserCallbacks, JNI.env, self.jni_id, browser.to_int, callbacks.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserHasScrollBars, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Boolean), Array.typed(::Java::Boolean)] }
      def _get_data_browser_has_scroll_bars(browser, horiz, vert)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserHasScrollBars, JNI.env, self.jni_id, browser.to_int, horiz.jni_id, vert.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserItemCount, [:pointer, :long, :int32, :int32, :int8, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, Array.typed(::Java::Int)] }
      def _get_data_browser_item_count(c_handle, container, recurse, state, num_items)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserItemCount, JNI.env, self.jni_id, c_handle.to_int, container.to_int, recurse ? 1 : 0, state.to_int, num_items.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserItemDataButtonValue, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Short)] }
      def _get_data_browser_item_data_button_value(item_data, the_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserItemDataButtonValue, JNI.env, self.jni_id, item_data.to_int, the_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserItemPartBounds, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Rect] }
      def _get_data_browser_item_part_bounds(c_handle, item, property, part, bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserItemPartBounds, JNI.env, self.jni_id, c_handle.to_int, item.to_int, property.to_int, part.to_int, bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserItems, [:pointer, :long, :int32, :int32, :int8, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int] }
      def _get_data_browser_items(browser, container, recurse, state, items)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserItems, JNI.env, self.jni_id, browser.to_int, container.to_int, recurse ? 1 : 0, state.to_int, items.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserItemState, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _get_data_browser_item_state(browser, item, state)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserItemState, JNI.env, self.jni_id, browser.to_int, item.to_int, state.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserListViewDisclosureColumn, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Boolean)] }
      def _get_data_browser_list_view_disclosure_column(browser, column, expandable_rows)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserListViewDisclosureColumn, JNI.env, self.jni_id, browser.to_int, column.jni_id, expandable_rows.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserListViewHeaderBtnHeight, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Short)] }
      def _get_data_browser_list_view_header_btn_height(browser, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserListViewHeaderBtnHeight, JNI.env, self.jni_id, browser.to_int, height.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserListViewHeaderDesc, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, DataBrowserListViewHeaderDesc] }
      def _get_data_browser_list_view_header_desc(browser, column, desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserListViewHeaderDesc, JNI.env, self.jni_id, browser.to_int, column.to_int, desc.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserPropertyFlags, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _get_data_browser_property_flags(browser, property, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserPropertyFlags, JNI.env, self.jni_id, browser.to_int, property.to_int, flags.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserTableViewColumnPosition, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _get_data_browser_table_view_column_position(browser, column, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserTableViewColumnPosition, JNI.env, self.jni_id, browser.to_int, column.to_int, position.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserTableViewItemID, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _get_data_browser_table_view_item_id(browser, row, item)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserTableViewItemID, JNI.env, self.jni_id, browser.to_int, row.to_int, item.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserTableViewItemRow, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _get_data_browser_table_view_item_row(browser, item, row)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserTableViewItemRow, JNI.env, self.jni_id, browser.to_int, item.to_int, row.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserTableViewNamedColumnWidth, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      def _get_data_browser_table_view_named_column_width(browser, column, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserTableViewNamedColumnWidth, JNI.env, self.jni_id, browser.to_int, column.to_int, width.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserTableViewRowHeight, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Short)] }
      def _get_data_browser_table_view_row_height(browser, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserTableViewRowHeight, JNI.env, self.jni_id, browser.to_int, height.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserScrollBarInset, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Rect] }
      def _get_data_browser_scroll_bar_inset(browser, inset_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserScrollBarInset, JNI.env, self.jni_id, browser.to_int, inset_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserScrollPosition, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _get_data_browser_scroll_position(c_handle, top, left)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserScrollPosition, JNI.env, self.jni_id, c_handle.to_int, top.jni_id, left.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserSelectionAnchor, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _get_data_browser_selection_anchor(browser, first, last)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserSelectionAnchor, JNI.env, self.jni_id, browser.to_int, first.jni_id, last.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserSelectionFlags, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_data_browser_selection_flags(browser, selection_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserSelectionFlags, JNI.env, self.jni_id, browser.to_int, selection_flags.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserSortProperty, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_data_browser_sort_property(browser, property)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDataBrowserSortProperty, JNI.env, self.jni_id, browser.to_int, property.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDblTime, [:pointer, :long], :int32
      typesig { [] }
      def _get_dbl_time
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDblTime, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDeviceList, [:pointer, :long], :int32
      typesig { [] }
      def _get_device_list
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDeviceList, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDragAllowableActions, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_drag_allowable_actions(the_drag, out_actions)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDragAllowableActions, JNI.env, self.jni_id, the_drag.to_int, out_actions.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDragDropAction, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_drag_drop_action(the_drag, out_action)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDragDropAction, JNI.env, self.jni_id, the_drag.to_int, out_action.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDragItemReferenceNumber, [:pointer, :long, :int32, :int16, :long], :int32
      typesig { [::Java::Int, ::Java::Short, Array.typed(::Java::Int)] }
      def _get_drag_item_reference_number(the_drag, index, the_item_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDragItemReferenceNumber, JNI.env, self.jni_id, the_drag.to_int, index.to_int, the_item_ref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDragModifiers, [:pointer, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Short), Array.typed(::Java::Short), Array.typed(::Java::Short)] }
      def _get_drag_modifiers(the_drag, modifiers, mouse_down_modifiers, mouse_up_modifiers)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDragModifiers, JNI.env, self.jni_id, the_drag.to_int, modifiers.jni_id, mouse_down_modifiers.jni_id, mouse_up_modifiers.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetDragMouse, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Point, Point] }
      def _get_drag_mouse(the_drag, mouse, global_pinned_mouse)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetDragMouse, JNI.env, self.jni_id, the_drag.to_int, mouse.jni_id, global_pinned_mouse.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetEventClass, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_event_class(e_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetEventClass, JNI.env, self.jni_id, e_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetEventDispatcherTarget, [:pointer, :long], :int32
      typesig { [] }
      def _get_event_dispatcher_target
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetEventDispatcherTarget, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetEventKind, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_event_kind(e_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetEventKind, JNI.env, self.jni_id, e_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3II, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3II, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3I_3I, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3I_3I, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3I_3C, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Char)] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3I_3C, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3I_3S, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Short)] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3I_3S, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3I_3B, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Byte)] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3I_3B, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3I_3Z, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Boolean)] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3I_3Z, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{HICommand.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), HICommand] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{HICommand.jni_name}_2".to_sym, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{Point.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), Point] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{Point.jni_name}_2".to_sym, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{CGPoint.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), CGPoint] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{CGPoint.jni_name}_2".to_sym, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{CGRect.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), CGRect] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{CGRect.jni_name}_2".to_sym, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{RGBColor.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), RGBColor] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{RGBColor.jni_name}_2".to_sym, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{Rect.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int), Rect] }
      def _get_event_parameter(in_event, in_name, in_desired_type, out_actual_type, in_buffer_size, out_actual_size, out_data)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_GetEventParameter__III_3II_3IL#{Rect.jni_name}_2".to_sym, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_desired_type.to_int, out_actual_type.jni_id, in_buffer_size.to_int, out_actual_size.jni_id, out_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetEventTime, [:pointer, :long, :int32], :double
      typesig { [::Java::Int] }
      def _get_event_time(e_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetEventTime, JNI.env, self.jni_id, e_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetFlavorData, [:pointer, :long, :int32, :int32, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), ::Java::Int] }
      def _get_flavor_data(the_drag, the_item_ref, the_type, data_ptr, data_size, data_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetFlavorData, JNI.env, self.jni_id, the_drag.to_int, the_item_ref.to_int, the_type.to_int, data_ptr.jni_id, data_size.jni_id, data_offset.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetFlavorDataSize, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _get_flavor_data_size(the_drag, the_item_ref, the_type, data_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetFlavorDataSize, JNI.env, self.jni_id, the_drag.to_int, the_item_ref.to_int, the_type.to_int, data_size.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetFlavorType, [:pointer, :long, :int32, :int32, :int16, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Short, Array.typed(::Java::Int)] }
      def _get_flavor_type(the_drag, the_item_ref, index, the_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetFlavorType, JNI.env, self.jni_id, the_drag.to_int, the_item_ref.to_int, index.to_int, the_type.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetFrontProcess, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _get_front_process(psn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetFrontProcess, JNI.env, self.jni_id, psn.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetGWorld, [:pointer, :long, :long, :long], :void
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _get_gworld(port_handle, gd_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetGWorld, JNI.env, self.jni_id, port_handle.jni_id, gd_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetGlobalMouse, [:pointer, :long, :long], :void
      typesig { [Point] }
      def _get_global_mouse(where)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetGlobalMouse, JNI.env, self.jni_id, where.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetHandleSize, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_handle_size(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetHandleSize, JNI.env, self.jni_id, handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetIconFamilyData, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _get_icon_family_data(icon_family, icon_type, h)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetIconFamilyData, JNI.env, self.jni_id, icon_family.to_int, icon_type.to_int, h.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetIconRefFromIconFamilyPtr, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _get_icon_ref_from_icon_family_ptr(in_icon_family_ptr, in_size, out_icon_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetIconRefFromIconFamilyPtr, JNI.env, self.jni_id, in_icon_family_ptr.to_int, in_size.to_int, out_icon_ref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetIconRefFromFileInfo, [:pointer, :long, :long, :int32, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _get_icon_ref_from_file_info(in_ref, in_file_name_length, in_file_name, in_which_info, in_catalog_info, in_usage_flags, out_icon_ref, out_label)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetIconRefFromFileInfo, JNI.env, self.jni_id, in_ref.jni_id, in_file_name_length.to_int, in_file_name.jni_id, in_which_info.to_int, in_catalog_info.to_int, in_usage_flags.to_int, out_icon_ref.jni_id, out_label.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetIconRef, [:pointer, :long, :int16, :int32, :int32, :long], :int32
      typesig { [::Java::Short, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _get_icon_ref(v_ref_num, creator, icon_type, the_icon_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetIconRef, JNI.env, self.jni_id, v_ref_num.to_int, creator.to_int, icon_type.to_int, the_icon_ref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetIndMenuItemWithCommandID, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Short)] }
      def _get_ind_menu_item_with_command_id(m_handle, command_id, index, out_menu, out_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetIndMenuItemWithCommandID, JNI.env, self.jni_id, m_handle.to_int, command_id.to_int, index.to_int, out_menu.jni_id, out_index.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetIndexedSubControl, [:pointer, :long, :int32, :int16, :long], :int32
      typesig { [::Java::Int, ::Java::Short, Array.typed(::Java::Int)] }
      def _get_indexed_sub_control(c_handle, index, out_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetIndexedSubControl, JNI.env, self.jni_id, c_handle.to_int, index.to_int, out_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetItemMark, [:pointer, :long, :int32, :int16, :long], :void
      typesig { [::Java::Int, ::Java::Short, Array.typed(::Java::Short)] }
      def _get_item_mark(the_menu, item, mark_char)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetItemMark, JNI.env, self.jni_id, the_menu.to_int, item.to_int, mark_char.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetKeyboardFocus, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_keyboard_focus(w_handle, c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetKeyboardFocus, JNI.env, self.jni_id, w_handle.to_int, c_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetLastUserEventTime, [:pointer, :long], :double
      typesig { [] }
      def _get_last_user_event_time
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetLastUserEventTime, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMainDevice, [:pointer, :long], :int32
      typesig { [] }
      def _get_main_device
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMainDevice, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMainEventQueue, [:pointer, :long], :int32
      typesig { [] }
      def _get_main_event_queue
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMainEventQueue, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMBarHeight, [:pointer, :long], :int32
      typesig { [] }
      def _get_mbar_height
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMBarHeight, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMenuCommandMark, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      def _get_menu_command_mark(the_menu, command_id, out_mark)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMenuCommandMark, JNI.env, self.jni_id, the_menu.to_int, command_id.to_int, out_mark.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMenuEventTarget, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_menu_event_target(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMenuEventTarget, JNI.env, self.jni_id, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMenuFont, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Short), Array.typed(::Java::Short)] }
      def _get_menu_font(in_menu, out_font_id, out_font_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMenuFont, JNI.env, self.jni_id, in_menu.to_int, out_font_id.jni_id, out_font_size.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMenuHeight, [:pointer, :long, :int32], :int16
      typesig { [::Java::Int] }
      def _get_menu_height(in_menu)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMenuHeight, JNI.env, self.jni_id, in_menu.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMenuID, [:pointer, :long, :int32], :int16
      typesig { [::Java::Int] }
      def _get_menu_id(menu)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMenuID, JNI.env, self.jni_id, menu.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMenuItemCommandID, [:pointer, :long, :int32, :int16, :long], :int32
      typesig { [::Java::Int, ::Java::Short, Array.typed(::Java::Int)] }
      def _get_menu_item_command_id(in_menu, in_item, out_command_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMenuItemCommandID, JNI.env, self.jni_id, in_menu.to_int, in_item.to_int, out_command_id.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMenuItemHierarchicalMenu, [:pointer, :long, :int32, :int16, :long], :int32
      typesig { [::Java::Int, ::Java::Short, Array.typed(::Java::Int)] }
      def _get_menu_item_hierarchical_menu(in_menu, in_item, out_hier_menu)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMenuItemHierarchicalMenu, JNI.env, self.jni_id, in_menu.to_int, in_item.to_int, out_hier_menu.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMenuItemRefCon, [:pointer, :long, :int32, :int16, :long], :int32
      typesig { [::Java::Int, ::Java::Short, Array.typed(::Java::Int)] }
      def _get_menu_item_ref_con(in_menu, int_item, out_ref_con)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMenuItemRefCon, JNI.env, self.jni_id, in_menu.to_int, int_item.to_int, out_ref_con.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMenuTrackingData, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, MenuTrackingData] }
      def _get_menu_tracking_data(menu, out_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMenuTrackingData, JNI.env, self.jni_id, menu.to_int, out_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMenuWidth, [:pointer, :long, :int32], :int16
      typesig { [::Java::Int] }
      def _get_menu_width(in_menu)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMenuWidth, JNI.env, self.jni_id, in_menu.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetMouse, [:pointer, :long, :long], :void
      typesig { [Point] }
      def _get_mouse(where)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetMouse, JNI.env, self.jni_id, where.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetNextDevice, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_next_device(cur_device)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetNextDevice, JNI.env, self.jni_id, cur_device.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetPixDepth, [:pointer, :long, :int32], :int16
      typesig { [::Java::Int] }
      def _get_pix_depth(p_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetPixDepth, JNI.env, self.jni_id, p_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetPort, [:pointer, :long, :long], :void
      typesig { [Array.typed(::Java::Int)] }
      def _get_port(port)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetPort, JNI.env, self.jni_id, port.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetPortBitMapForCopyBits, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_port_bit_map_for_copy_bits(port_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetPortBitMapForCopyBits, JNI.env, self.jni_id, port_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetPortBounds, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Rect] }
      def _get_port_bounds(p_handle, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetPortBounds, JNI.env, self.jni_id, p_handle.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetPreviousWindow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_previous_window(in_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetPreviousWindow, JNI.env, self.jni_id, in_window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetPtrSize, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_ptr_size(ptr)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetPtrSize, JNI.env, self.jni_id, ptr.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetRegionBounds, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Rect] }
      def _get_region_bounds(rgn_handle, bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetRegionBounds, JNI.env, self.jni_id, rgn_handle.to_int, bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetRootControl, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_root_control(window_handle, c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetRootControl, JNI.env, self.jni_id, window_handle.to_int, c_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetScrapFlavorCount, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_scrap_flavor_count(scrap, info_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetScrapFlavorCount, JNI.env, self.jni_id, scrap.to_int, info_count.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetScrapFlavorData__II_3I_3B, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Byte)] }
      def _get_scrap_flavor_data(scrap, flavor_type, byte_count, destination)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetScrapFlavorData__II_3I_3B, JNI.env, self.jni_id, scrap.to_int, flavor_type.to_int, byte_count.jni_id, destination.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetScrapFlavorData__II_3I_3C, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Char)] }
      def _get_scrap_flavor_data(scrap, flavor_type, byte_count, destination)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetScrapFlavorData__II_3I_3C, JNI.env, self.jni_id, scrap.to_int, flavor_type.to_int, byte_count.jni_id, destination.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetScrapFlavorInfoList, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _get_scrap_flavor_info_list(scrap, info_count, info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetScrapFlavorInfoList, JNI.env, self.jni_id, scrap.to_int, info_count.jni_id, info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetScrapFlavorSize, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _get_scrap_flavor_size(scrap, flavor_type, byte_count)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetScrapFlavorSize, JNI.env, self.jni_id, scrap.to_int, flavor_type.to_int, byte_count.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetScriptManagerVariable, [:pointer, :long, :int16], :int32
      typesig { [::Java::Short] }
      def _get_script_manager_variable(selector)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetScriptManagerVariable, JNI.env, self.jni_id, selector.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetSuperControl, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_super_control(c_handle, parent_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetSuperControl, JNI.env, self.jni_id, c_handle.to_int, parent_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetSystemUIMode, [:pointer, :long, :long, :long], :void
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _get_system_uimode(out_mode, out_options)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetSystemUIMode, JNI.env, self.jni_id, out_mode.jni_id, out_options.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetTabContentRect, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Rect] }
      def _get_tab_content_rect(the_control, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetTabContentRect, JNI.env, self.jni_id, the_control.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetThemeBrushAsColor, [:pointer, :long, :int16, :int16, :int8, :long], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Boolean, RGBColor] }
      def _get_theme_brush_as_color(in_brush, in_depth, in_color_dev, out_color)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetThemeBrushAsColor, JNI.env, self.jni_id, in_brush.to_int, in_depth.to_int, in_color_dev ? 1 : 0, out_color.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetThemeButtonContentBounds, [:pointer, :long, :long, :int32, :long, :long], :int32
      typesig { [Rect, ::Java::Int, ThemeButtonDrawInfo, Rect] }
      def _get_theme_button_content_bounds(in_bounds, in_kind, in_draw_info, out_bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetThemeButtonContentBounds, JNI.env, self.jni_id, in_bounds.jni_id, in_kind.to_int, in_draw_info.jni_id, out_bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetThemeButtonRegion, [:pointer, :long, :long, :int32, :long, :int32], :int32
      typesig { [Rect, ::Java::Int, ThemeButtonDrawInfo, ::Java::Int] }
      def _get_theme_button_region(in_bounds, in_kind, in_new_info, out_region)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetThemeButtonRegion, JNI.env, self.jni_id, in_bounds.jni_id, in_kind.to_int, in_new_info.jni_id, out_region.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetThemeDrawingState, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _get_theme_drawing_state(state)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetThemeDrawingState, JNI.env, self.jni_id, state.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetThemeFont, [:pointer, :long, :int16, :int16, :long, :long, :long], :int32
      typesig { [::Java::Short, ::Java::Short, Array.typed(::Java::Byte), Array.typed(::Java::Short), Array.typed(::Java::Byte)] }
      def _get_theme_font(theme_font_id, script_code, font_name, font_size, style)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetThemeFont, JNI.env, self.jni_id, theme_font_id.to_int, script_code.to_int, font_name.jni_id, font_size.jni_id, style.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetThemeMenuItemExtra, [:pointer, :long, :int16, :long, :long], :int32
      typesig { [::Java::Short, Array.typed(::Java::Short), Array.typed(::Java::Short)] }
      def _get_theme_menu_item_extra(in_item_type, out_height, out_width)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetThemeMenuItemExtra, JNI.env, self.jni_id, in_item_type.to_int, out_height.jni_id, out_width.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetThemeMetric, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_theme_metric(in_metric, out_metric)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetThemeMetric, JNI.env, self.jni_id, in_metric.to_int, out_metric.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetThemeTextColor, [:pointer, :long, :int16, :int16, :int8, :long], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Boolean, RGBColor] }
      def _get_theme_text_color(in_color, in_depth, in_color_dev, out_color)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetThemeTextColor, JNI.env, self.jni_id, in_color.to_int, in_depth.to_int, in_color_dev ? 1 : 0, out_color.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetThemeTextDimensions, [:pointer, :long, :int32, :int16, :int32, :int8, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Boolean, Point, Array.typed(::Java::Short)] }
      def _get_theme_text_dimensions(s_handle, font_id, state, wrap_to_width, io_bounds, base_line)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetThemeTextDimensions, JNI.env, self.jni_id, s_handle.to_int, font_id.to_int, state.to_int, wrap_to_width ? 1 : 0, io_bounds.jni_id, base_line.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetUserFocusEventTarget, [:pointer, :long], :int32
      typesig { [] }
      def _get_user_focus_event_target
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetUserFocusEventTarget, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetUserFocusWindow, [:pointer, :long], :int32
      typesig { [] }
      def _get_user_focus_window
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetUserFocusWindow, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetUserFocusWindow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _set_user_focus_window(in_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetUserFocusWindow, JNI.env, self.jni_id, in_window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowActivationScope, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_window_activation_scope(in_window, out_scope)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowActivationScope, JNI.env, self.jni_id, in_window.to_int, out_scope.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowAlpha, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Float)] }
      def _get_window_alpha(in_window, out_alpha)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowAlpha, JNI.env, self.jni_id, in_window.to_int, out_alpha.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowBounds, [:pointer, :long, :int32, :int16, :long], :void
      typesig { [::Java::Int, ::Java::Short, Rect] }
      def _get_window_bounds(w_handle, window_region, bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowBounds, JNI.env, self.jni_id, w_handle.to_int, window_region.to_int, bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowClass, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_window_class(in_window, out_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowClass, JNI.env, self.jni_id, in_window.to_int, out_class.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowDefaultButton, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _get_window_default_button(w_handle, c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowDefaultButton, JNI.env, self.jni_id, w_handle.to_int, c_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowEventTarget, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_window_event_target(w_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowEventTarget, JNI.env, self.jni_id, w_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowFromPort, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_window_from_port(p_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowFromPort, JNI.env, self.jni_id, p_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowGroupOfClass, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_window_group_of_class(window_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowGroupOfClass, JNI.env, self.jni_id, window_class.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowList, [:pointer, :long], :int32
      typesig { [] }
      def _get_window_list
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowList, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetNextWindow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_next_window(in_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetNextWindow, JNI.env, self.jni_id, in_window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowModality, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _get_window_modality(in_window, out_modal_kind, out_unavailable_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowModality, JNI.env, self.jni_id, in_window.to_int, out_modal_kind.jni_id, out_unavailable_window.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowPort, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _get_window_port(w_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowPort, JNI.env, self.jni_id, w_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowRegion, [:pointer, :long, :int32, :int16, :int32], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int] }
      def _get_window_region(window, in_region_code, io_win_rgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowRegion, JNI.env, self.jni_id, window.to_int, in_region_code.to_int, io_win_rgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowResizeLimits, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, CGPoint, CGPoint] }
      def _get_window_resize_limits(in_window, in_min_limits, in_max_limits)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowResizeLimits, JNI.env, self.jni_id, in_window.to_int, in_min_limits.jni_id, in_max_limits.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_GetWindowStructureWidths, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Rect] }
      def _get_window_structure_widths(int_window, out_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_GetWindowStructureWidths, JNI.env, self.jni_id, int_window.to_int, out_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HICreateTransformedCGImage, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _hicreate_transformed_cgimage(in_image, in_transform, out_image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HICreateTransformedCGImage, JNI.env, self.jni_id, in_image.to_int, in_transform.to_int, out_image.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HandleControlSetCursor, [:pointer, :long, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, Point, ::Java::Int, Array.typed(::Java::Boolean)] }
      def _handle_control_set_cursor(control, local_point, modifiers, cursor_was_set)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HandleControlSetCursor, JNI.env, self.jni_id, control.to_int, local_point.jni_id, modifiers.to_int, cursor_was_set.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxAppendTextItem, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _hicombo_box_append_text_item(in_combo_box, in_text, out_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxAppendTextItem, JNI.env, self.jni_id, in_combo_box.to_int, in_text.to_int, out_index.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxCopyTextItemAtIndex, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _hicombo_box_copy_text_item_at_index(in_combo_box, in_index, out_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxCopyTextItemAtIndex, JNI.env, self.jni_id, in_combo_box.to_int, in_index.to_int, out_string.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxCreate, [:pointer, :long, :long, :int32, :long, :int32, :int32, :long], :int32
      typesig { [CGRect, ::Java::Int, ControlFontStyleRec, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _hicombo_box_create(bounds_rect, text, style, list, in_attributes, out_combo_box)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxCreate, JNI.env, self.jni_id, bounds_rect.jni_id, text.to_int, style.jni_id, list.to_int, in_attributes.to_int, out_combo_box.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxGetItemCount, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hicombo_box_get_item_count(in_combo_box)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxGetItemCount, JNI.env, self.jni_id, in_combo_box.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxInsertTextItemAtIndex, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _hicombo_box_insert_text_item_at_index(in_combo_box, in_index, in_text)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxInsertTextItemAtIndex, JNI.env, self.jni_id, in_combo_box.to_int, in_index.to_int, in_text.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxIsListVisible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _hicombo_box_is_list_visible(in_combo_box)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxIsListVisible, JNI.env, self.jni_id, in_combo_box.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxRemoveItemAtIndex, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _hicombo_box_remove_item_at_index(in_combo_box, in_index)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxRemoveItemAtIndex, JNI.env, self.jni_id, in_combo_box.to_int, in_index.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxSetListVisible, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _hicombo_box_set_list_visible(in_combo_box, in_visible)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIComboBoxSetListVisible, JNI.env, self.jni_id, in_combo_box.to_int, in_visible ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HICopyAccessibilityRoleDescription, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _hicopy_accessibility_role_description(in_role, in_subrole)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HICopyAccessibilityRoleDescription, JNI.env, self.jni_id, in_role.to_int, in_subrole.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIObjectCopyClassID, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hiobject_copy_class_id(in_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIObjectCopyClassID, JNI.env, self.jni_id, in_object.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIObjectCreate, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _hiobject_create(in_class_id, in_construct_data, out_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIObjectCreate, JNI.env, self.jni_id, in_class_id.to_int, in_construct_data.to_int, out_object.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIObjectRegisterSubclass, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int)] }
      def _hiobject_register_subclass(in_class_id, in_base_class_id, in_options, in_construct_proc, in_num_events, in_event_list, in_construct_data, out_class_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIObjectRegisterSubclass, JNI.env, self.jni_id, in_class_id.to_int, in_base_class_id.to_int, in_options.to_int, in_construct_proc.to_int, in_num_events.to_int, in_event_list.jni_id, in_construct_data.to_int, out_class_ref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewScrollRect, [:pointer, :long, :int32, :long, :float, :float], :int32
      typesig { [::Java::Int, CGRect, ::Java::Float, ::Java::Float] }
      def _hiview_scroll_rect(in_view, in_rect, in_dx, in_dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewScrollRect, JNI.env, self.jni_id, in_view.to_int, in_rect.jni_id, in_dx, in_dy)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewRegionChanged, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _hiview_region_changed(in_view, in_region_code)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewRegionChanged, JNI.env, self.jni_id, in_view.to_int, in_region_code.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIShapeCreateWithQDRgn, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hishape_create_with_qdrgn(in_rgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIShapeCreateWithQDRgn, JNI.env, self.jni_id, in_rgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIShapeReplacePathInCGContext, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _hishape_replace_path_in_cgcontext(in_shape, in_context)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIShapeReplacePathInCGContext, JNI.env, self.jni_id, in_shape.to_int, in_context.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIScrollViewCreate, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _hiscroll_view_create(in_options, out_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIScrollViewCreate, JNI.env, self.jni_id, in_options.to_int, out_view.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIScrollViewSetScrollBarAutoHide, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _hiscroll_view_set_scroll_bar_auto_hide(in_view, in_auto_hide)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIScrollViewSetScrollBarAutoHide, JNI.env, self.jni_id, in_view.to_int, in_auto_hide ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HISearchFieldCreate, [:pointer, :long, :long, :int32, :int32, :int32, :long], :int32
      typesig { [CGRect, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _hisearch_field_create(in_bounds, in_attributes, in_search_menu, in_descriptive_text, out_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HISearchFieldCreate, JNI.env, self.jni_id, in_bounds.jni_id, in_attributes.to_int, in_search_menu.to_int, in_descriptive_text.to_int, out_ref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HISearchFieldChangeAttributes, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _hisearch_field_change_attributes(in_search_field, in_attributes_to_set, in_attributes_to_clear)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HISearchFieldChangeAttributes, JNI.env, self.jni_id, in_search_field.to_int, in_attributes_to_set.to_int, in_attributes_to_clear.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HISearchFieldCopyDescriptiveText, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _hisearch_field_copy_descriptive_text(in_search_field, out_description)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HISearchFieldCopyDescriptiveText, JNI.env, self.jni_id, in_search_field.to_int, out_description.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HISearchFieldGetAttributes, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _hisearch_field_get_attributes(in_search_field, out_attributes)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HISearchFieldGetAttributes, JNI.env, self.jni_id, in_search_field.to_int, out_attributes.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HISearchFieldSetDescriptiveText, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _hisearch_field_set_descriptive_text(in_search_field, in_description)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HISearchFieldSetDescriptiveText, JNI.env, self.jni_id, in_search_field.to_int, in_description.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HITextViewCreate, [:pointer, :long, :long, :int32, :int32, :long], :int32
      typesig { [CGRect, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _hitext_view_create(in_bounds_rect, in_options, in_txnframe_options, out_text_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HITextViewCreate, JNI.env, self.jni_id, in_bounds_rect.jni_id, in_options.to_int, in_txnframe_options.to_int, out_text_view.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HITextViewGetTXNObject, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hitext_view_get_txnobject(in_text_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HITextViewGetTXNObject, JNI.env, self.jni_id, in_text_view.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HITextViewSetBackgroundColor, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _hitext_view_set_background_color(in_text_view, in_color)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HITextViewSetBackgroundColor, JNI.env, self.jni_id, in_text_view.to_int, in_color.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawBackground, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [CGRect, HIThemeBackgroundDrawInfo, ::Java::Int, ::Java::Int] }
      def _hitheme_draw_background(in_bounds, in_draw_info, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawBackground, JNI.env, self.jni_id, in_bounds.jni_id, in_draw_info.jni_id, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawButton, [:pointer, :long, :long, :long, :int32, :int32, :long], :int32
      typesig { [CGRect, HIThemeButtonDrawInfo, ::Java::Int, ::Java::Int, CGRect] }
      def _hitheme_draw_button(in_bounds, in_draw_info, in_context, in_orientation, out_label_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawButton, JNI.env, self.jni_id, in_bounds.jni_id, in_draw_info.jni_id, in_context.to_int, in_orientation.to_int, out_label_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawFocusRect, [:pointer, :long, :long, :int8, :int32, :int32], :int32
      typesig { [CGRect, ::Java::Boolean, ::Java::Int, ::Java::Int] }
      def _hitheme_draw_focus_rect(in_rect, in_has_focus, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawFocusRect, JNI.env, self.jni_id, in_rect.jni_id, in_has_focus ? 1 : 0, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawFrame, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [CGRect, HIThemeFrameDrawInfo, ::Java::Int, ::Java::Int] }
      def _hitheme_draw_frame(in_rect, in_draw_info, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawFrame, JNI.env, self.jni_id, in_rect.jni_id, in_draw_info.jni_id, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawGenericWell, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [CGRect, HIThemeButtonDrawInfo, ::Java::Int, ::Java::Int] }
      def _hitheme_draw_generic_well(in_rect, info, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawGenericWell, JNI.env, self.jni_id, in_rect.jni_id, info.jni_id, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawGroupBox, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [CGRect, HIThemeGroupBoxDrawInfo, ::Java::Int, ::Java::Int] }
      def _hitheme_draw_group_box(in_rect, in_draw_info, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawGroupBox, JNI.env, self.jni_id, in_rect.jni_id, in_draw_info.jni_id, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawGrowBox, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [CGPoint, HIThemeGrowBoxDrawInfo, ::Java::Int, ::Java::Int] }
      def _hitheme_draw_grow_box(in_origin, in_draw_info, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawGrowBox, JNI.env, self.jni_id, in_origin.jni_id, in_draw_info.jni_id, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawPopupArrow, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [CGRect, HIThemePopupArrowDrawInfo, ::Java::Int, ::Java::Int] }
      def _hitheme_draw_popup_arrow(in_bounds, in_draw_info, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawPopupArrow, JNI.env, self.jni_id, in_bounds.jni_id, in_draw_info.jni_id, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawSeparator, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [CGRect, HIThemeSeparatorDrawInfo, ::Java::Int, ::Java::Int] }
      def _hitheme_draw_separator(in_rect, in_draw_info, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawSeparator, JNI.env, self.jni_id, in_rect.jni_id, in_draw_info.jni_id, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawTab, [:pointer, :long, :long, :long, :int32, :int32, :long], :int32
      typesig { [CGRect, HIThemeTabDrawInfo, ::Java::Int, ::Java::Int, CGRect] }
      def _hitheme_draw_tab(in_rect, in_draw_info, in_context, in_orientation, out_label_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawTab, JNI.env, self.jni_id, in_rect.jni_id, in_draw_info.jni_id, in_context.to_int, in_orientation.to_int, out_label_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawTabPane, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [CGRect, HIThemeTabPaneDrawInfo, ::Java::Int, ::Java::Int] }
      def _hitheme_draw_tab_pane(in_rect, in_draw_info, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawTabPane, JNI.env, self.jni_id, in_rect.jni_id, in_draw_info.jni_id, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawTextBox, [:pointer, :long, :int32, :long, :long, :int32, :int32], :int32
      typesig { [::Java::Int, CGRect, HIThemeTextInfo, ::Java::Int, ::Java::Int] }
      def _hitheme_draw_text_box(in_string, in_bounds, in_text_info, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawTextBox, JNI.env, self.jni_id, in_string.to_int, in_bounds.jni_id, in_text_info.jni_id, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawTrack, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [HIThemeTrackDrawInfo, CGRect, ::Java::Int, ::Java::Int] }
      def _hitheme_draw_track(in_draw_info, in_ghost_rect, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeDrawTrack, JNI.env, self.jni_id, in_draw_info.jni_id, in_ghost_rect.jni_id, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetButtonBackgroundBounds, [:pointer, :long, :long, :long, :long], :int32
      typesig { [CGRect, HIThemeButtonDrawInfo, CGRect] }
      def _hitheme_get_button_background_bounds(in_bounds, in_draw_info, out_bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetButtonBackgroundBounds, JNI.env, self.jni_id, in_bounds.jni_id, in_draw_info.jni_id, out_bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetButtonContentBounds, [:pointer, :long, :long, :long, :long], :int32
      typesig { [CGRect, HIThemeButtonDrawInfo, CGRect] }
      def _hitheme_get_button_content_bounds(in_bounds, in_draw_info, out_bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetButtonContentBounds, JNI.env, self.jni_id, in_bounds.jni_id, in_draw_info.jni_id, out_bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetScrollBarTrackRect, [:pointer, :long, :long, :long, :int8, :long], :int32
      typesig { [CGRect, HIScrollBarTrackInfo, ::Java::Boolean, CGRect] }
      def _hitheme_get_scroll_bar_track_rect(in_bounds, in_track_info, in_is_horiz, out_track_bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetScrollBarTrackRect, JNI.env, self.jni_id, in_bounds.jni_id, in_track_info.jni_id, in_is_horiz ? 1 : 0, out_track_bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTextDimensions, [:pointer, :long, :int32, :float, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Float, HIThemeTextInfo, Array.typed(::Java::Float), Array.typed(::Java::Float), Array.typed(::Java::Float)] }
      def _hitheme_get_text_dimensions(in_string, in_width, in_text_info, out_width, out_height, out_baseline)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTextDimensions, JNI.env, self.jni_id, in_string.to_int, in_width, in_text_info.jni_id, out_width.jni_id, out_height.jni_id, out_baseline.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTrackBounds, [:pointer, :long, :long, :long], :int32
      typesig { [HIThemeTrackDrawInfo, CGRect] }
      def _hitheme_get_track_bounds(in_draw_info, out_bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTrackBounds, JNI.env, self.jni_id, in_draw_info.jni_id, out_bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTrackPartBounds, [:pointer, :long, :long, :int16, :long], :int32
      typesig { [HIThemeTrackDrawInfo, ::Java::Short, CGRect] }
      def _hitheme_get_track_part_bounds(in_draw_info, in_part_code, out_part_bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTrackPartBounds, JNI.env, self.jni_id, in_draw_info.jni_id, in_part_code.to_int, out_part_bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTrackThumbPositionFromBounds, [:pointer, :long, :long, :long, :long], :int32
      typesig { [HIThemeTrackDrawInfo, CGRect, Array.typed(::Java::Float)] }
      def _hitheme_get_track_thumb_position_from_bounds(in_draw_info, in_thumb_bounds, out_relative_position)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTrackThumbPositionFromBounds, JNI.env, self.jni_id, in_draw_info.jni_id, in_thumb_bounds.jni_id, out_relative_position.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTrackThumbPositionFromOffset, [:pointer, :long, :long, :long, :long], :int32
      typesig { [HIThemeTrackDrawInfo, CGPoint, Array.typed(::Java::Float)] }
      def _hitheme_get_track_thumb_position_from_offset(in_draw_info, in_thumb_offset, out_relative_position)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTrackThumbPositionFromOffset, JNI.env, self.jni_id, in_draw_info.jni_id, in_thumb_offset.jni_id, out_relative_position.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTrackLiveValue, [:pointer, :long, :long, :float, :long], :int32
      typesig { [HIThemeTrackDrawInfo, ::Java::Float, Array.typed(::Java::Int)] }
      def _hitheme_get_track_live_value(in_draw_info, in_relative_position, out_value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeGetTrackLiveValue, JNI.env, self.jni_id, in_draw_info.jni_id, in_relative_position, out_value.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeHitTestScrollBarArrows, [:pointer, :long, :long, :long, :int8, :long, :long, :long], :int8
      typesig { [CGRect, HIScrollBarTrackInfo, ::Java::Boolean, CGPoint, CGRect, Array.typed(::Java::Short)] }
      def _hitheme_hit_test_scroll_bar_arrows(in_scroll_bar_bounds, in_track_info, in_is_horiz, in_pt_hit, out_track_bounds, out_part_code)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeHitTestScrollBarArrows, JNI.env, self.jni_id, in_scroll_bar_bounds.jni_id, in_track_info.jni_id, in_is_horiz ? 1 : 0, in_pt_hit.jni_id, out_track_bounds.jni_id, out_part_code.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeHitTestTrack, [:pointer, :long, :long, :long, :long], :int8
      typesig { [HIThemeTrackDrawInfo, CGPoint, Array.typed(::Java::Short)] }
      def _hitheme_hit_test_track(in_draw_info, in_mouse_point, out_part_hit)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeHitTestTrack, JNI.env, self.jni_id, in_draw_info.jni_id, in_mouse_point.jni_id, out_part_hit.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeSetFill, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _hitheme_set_fill(in_brush, in_info, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeSetFill, JNI.env, self.jni_id, in_brush.to_int, in_info.to_int, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIThemeSetTextFill, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _hitheme_set_text_fill(in_color, in_info, in_context, in_orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIThemeSetTextFill, JNI.env, self.jni_id, in_color.to_int, in_info.to_int, in_context.to_int, in_orientation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewAddSubview, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _hiview_add_subview(parent, child)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewAddSubview, JNI.env, self.jni_id, parent.to_int, child.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewChangeAttributes, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _hiview_change_attributes(in_view, in_attrs_to_set, in_attrs_to_clear)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewChangeAttributes, JNI.env, self.jni_id, in_view.to_int, in_attrs_to_set.to_int, in_attrs_to_clear.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewChangeFeatures, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _hiview_change_features(in_view, in_features_to_set, in_features_to_clear)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewChangeFeatures, JNI.env, self.jni_id, in_view.to_int, in_features_to_set.to_int, in_features_to_clear.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewClick, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _hiview_click(in_view, in_event)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewClick, JNI.env, self.jni_id, in_view.to_int, in_event.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewConvertPoint, [:pointer, :long, :long, :int32, :int32], :int32
      typesig { [CGPoint, ::Java::Int, ::Java::Int] }
      def _hiview_convert_point(io_point, in_source_view, in_dest_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewConvertPoint, JNI.env, self.jni_id, io_point.jni_id, in_source_view.to_int, in_dest_view.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewConvertRect, [:pointer, :long, :long, :int32, :int32], :int32
      typesig { [CGRect, ::Java::Int, ::Java::Int] }
      def _hiview_convert_rect(io_rect, in_source_view, in_dest_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewConvertRect, JNI.env, self.jni_id, io_rect.jni_id, in_source_view.to_int, in_dest_view.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewConvertRegion, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _hiview_convert_region(io_rgn, in_source_view, in_dest_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewConvertRegion, JNI.env, self.jni_id, io_rgn.to_int, in_source_view.to_int, in_dest_view.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewCreateOffscreenImage, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, CGRect, Array.typed(::Java::Int)] }
      def _hiview_create_offscreen_image(in_view, in_options, out_frame, out_image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewCreateOffscreenImage, JNI.env, self.jni_id, in_view.to_int, in_options.to_int, out_frame.jni_id, out_image.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewDrawCGImage, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, CGRect, ::Java::Int] }
      def _hiview_draw_cgimage(in_context, in_bounds, in_image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewDrawCGImage, JNI.env, self.jni_id, in_context.to_int, in_bounds.jni_id, in_image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewFindByID, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _hiview_find_by_id(in_start_view, in_id, out_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewFindByID, JNI.env, self.jni_id, in_start_view.to_int, in_id.to_int, out_control.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetBounds, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, CGRect] }
      def _hiview_get_bounds(in_view, out_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetBounds, JNI.env, self.jni_id, in_view.to_int, out_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetFeatures, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _hiview_get_features(in_view, out_features)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetFeatures, JNI.env, self.jni_id, in_view.to_int, out_features.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetFirstSubview, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hiview_get_first_subview(in_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetFirstSubview, JNI.env, self.jni_id, in_view.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetLastSubview, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hiview_get_last_subview(in_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetLastSubview, JNI.env, self.jni_id, in_view.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetLayoutInfo, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, HILayoutInfo] }
      def _hiview_get_layout_info(in_view, out_layout_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetLayoutInfo, JNI.env, self.jni_id, in_view.to_int, out_layout_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetNextView, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hiview_get_next_view(in_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetNextView, JNI.env, self.jni_id, in_view.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetFrame, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, CGRect] }
      def _hiview_get_frame(in_view, out_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetFrame, JNI.env, self.jni_id, in_view.to_int, out_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetNeedsDisplay, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _hiview_get_needs_display(in_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetNeedsDisplay, JNI.env, self.jni_id, in_view.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetRoot, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hiview_get_root(w_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetRoot, JNI.env, self.jni_id, w_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetSizeConstraints, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, CGRect, CGRect] }
      def _hiview_get_size_constraints(in_view, out_min_size, out_max_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetSizeConstraints, JNI.env, self.jni_id, in_view.to_int, out_min_size.jni_id, out_max_size.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetSubviewHit, [:pointer, :long, :int32, :long, :int8, :long], :int32
      typesig { [::Java::Int, CGPoint, ::Java::Boolean, Array.typed(::Java::Int)] }
      def _hiview_get_subview_hit(in_view, in_point, in_deep, out_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetSubviewHit, JNI.env, self.jni_id, in_view.to_int, in_point.jni_id, in_deep ? 1 : 0, out_view.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetSuperview, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hiview_get_superview(in_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetSuperview, JNI.env, self.jni_id, in_view.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewGetViewForMouseEvent, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _hiview_get_view_for_mouse_event(in_view, in_event, out_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewGetViewForMouseEvent, JNI.env, self.jni_id, in_view.to_int, in_event.to_int, out_view.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewIsDrawingEnabled, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _hiview_is_drawing_enabled(in_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewIsDrawingEnabled, JNI.env, self.jni_id, in_view.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewIsVisible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _hiview_is_visible(in_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewIsVisible, JNI.env, self.jni_id, in_view.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewRemoveFromSuperview, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hiview_remove_from_superview(in_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewRemoveFromSuperview, JNI.env, self.jni_id, in_view.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewRender, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hiview_render(in_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewRender, JNI.env, self.jni_id, in_view.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewSetBoundsOrigin, [:pointer, :long, :int32, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      def _hiview_set_bounds_origin(in_view, in_x, in_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewSetBoundsOrigin, JNI.env, self.jni_id, in_view.to_int, in_x, in_y)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewSetDrawingEnabled, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _hiview_set_drawing_enabled(in_view, is_enabled)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewSetDrawingEnabled, JNI.env, self.jni_id, in_view.to_int, is_enabled ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewSetFrame, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, CGRect] }
      def _hiview_set_frame(in_view, in_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewSetFrame, JNI.env, self.jni_id, in_view.to_int, in_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewSetLayoutInfo, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, HILayoutInfo] }
      def _hiview_set_layout_info(in_view, out_layout_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewSetLayoutInfo, JNI.env, self.jni_id, in_view.to_int, out_layout_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewSetNeedsDisplay, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _hiview_set_needs_display(in_view, in_needs_display)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewSetNeedsDisplay, JNI.env, self.jni_id, in_view.to_int, in_needs_display ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewSetNeedsDisplayInRegion, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _hiview_set_needs_display_in_region(in_view, in_rgn, in_needs_display)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewSetNeedsDisplayInRegion, JNI.env, self.jni_id, in_view.to_int, in_rgn.to_int, in_needs_display ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewSetVisible, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _hiview_set_visible(in_view, in_visible)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewSetVisible, JNI.env, self.jni_id, in_view.to_int, in_visible ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewSetZOrder, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _hiview_set_zorder(in_view, in_op, in_other)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewSetZOrder, JNI.env, self.jni_id, in_view.to_int, in_op.to_int, in_other.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIViewSimulateClick, [:pointer, :long, :int32, :int16, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int, Array.typed(::Java::Short)] }
      def _hiview_simulate_click(in_view, in_part_to_click, modifiers, out_part_clicked)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIViewSimulateClick, JNI.env, self.jni_id, in_view.to_int, in_part_to_click.to_int, modifiers.to_int, out_part_clicked.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HandleControlClick, [:pointer, :long, :int32, :long, :int32, :int32], :int16
      typesig { [::Java::Int, Point, ::Java::Int, ::Java::Int] }
      def _handle_control_click(c_handle, where, modifiers, action_upp)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HandleControlClick, JNI.env, self.jni_id, c_handle.to_int, where.jni_id, modifiers.to_int, action_upp.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HiWord, [:pointer, :long, :int32], :int16
      typesig { [::Java::Int] }
      def _hi_word(double_word)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HiWord, JNI.env, self.jni_id, double_word.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HideWindow, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _hide_window(w_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HideWindow, JNI.env, self.jni_id, w_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HiliteMenu, [:pointer, :long, :int16], :void
      typesig { [::Java::Short] }
      def _hilite_menu(menu_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HiliteMenu, JNI.env, self.jni_id, menu_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HLock, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _hlock(h)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HLock, JNI.env, self.jni_id, h.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HMDisplayTag, [:pointer, :long, :long], :int32
      typesig { [HMHelpContentRec] }
      def _hmdisplay_tag(in_content)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HMDisplayTag, JNI.env, self.jni_id, in_content.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HMGetTagDelay, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _hmget_tag_delay(out_delay)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HMGetTagDelay, JNI.env, self.jni_id, out_delay.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HMHideTag, [:pointer, :long], :int32
      typesig { [] }
      def _hmhide_tag
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HMHideTag, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HMSetTagDelay, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _hmset_tag_delay(in_delay)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HMSetTagDelay, JNI.env, self.jni_id, in_delay.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HMInstallControlContentCallback, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _hminstall_control_content_callback(in_control, in_content_upp)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HMInstallControlContentCallback, JNI.env, self.jni_id, in_control.to_int, in_content_upp.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HUnlock, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _hunlock(h)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HUnlock, JNI.env, self.jni_id, h.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IconRefToIconFamily, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _icon_ref_to_icon_family(the_icon_ref, which_icons, icon_family)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IconRefToIconFamily, JNI.env, self.jni_id, the_icon_ref.to_int, which_icons.to_int, icon_family.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InitContextualMenus, [:pointer, :long], :int32
      typesig { [] }
      def _init_contextual_menus
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InitContextualMenus, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InitCursor, [:pointer, :long], :void
      typesig { [] }
      def _init_cursor
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InitCursor, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIWindowFlush, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _hiwindow_flush(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIWindowFlush, JNI.env, self.jni_id, window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIWindowIsDocumentModalTarget, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _hiwindow_is_document_modal_target(in_window, out_owner)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIWindowIsDocumentModalTarget, JNI.env, self.jni_id, in_window.to_int, out_owner.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InitDataBrowserCallbacks, [:pointer, :long, :long], :int32
      typesig { [DataBrowserCallbacks] }
      def _init_data_browser_callbacks(callbacks)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InitDataBrowserCallbacks, JNI.env, self.jni_id, callbacks.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InitDataBrowserCustomCallbacks, [:pointer, :long, :long], :int32
      typesig { [DataBrowserCustomCallbacks] }
      def _init_data_browser_custom_callbacks(callbacks)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InitDataBrowserCustomCallbacks, JNI.env, self.jni_id, callbacks.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InsertMenu, [:pointer, :long, :int32, :int16], :void
      typesig { [::Java::Int, ::Java::Short] }
      def _insert_menu(m_handle, before_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InsertMenu, JNI.env, self.jni_id, m_handle.to_int, before_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InsertMenuItemTextWithCFString, [:pointer, :long, :int32, :int32, :int16, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int] }
      def _insert_menu_item_text_with_cfstring(m_handle, s_handle, index, attributes, command_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InsertMenuItemTextWithCFString, JNI.env, self.jni_id, m_handle.to_int, s_handle.to_int, index.to_int, attributes.to_int, command_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InstallEventHandler, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int)] }
      def _install_event_handler(in_target, in_handler, in_num_types, in_list, in_user_data, out_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InstallEventHandler, JNI.env, self.jni_id, in_target.to_int, in_handler.to_int, in_num_types.to_int, in_list.jni_id, in_user_data.to_int, out_ref.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InstallEventLoopIdleTimer, [:pointer, :long, :int32, :double, :double, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Double, ::Java::Double, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _install_event_loop_idle_timer(in_event_loop, in_fire_delay, in_interval, in_timer_proc, in_timer_data, out_timer)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InstallEventLoopIdleTimer, JNI.env, self.jni_id, in_event_loop.to_int, in_fire_delay, in_interval, in_timer_proc.to_int, in_timer_data.to_int, out_timer.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InstallEventLoopTimer, [:pointer, :long, :int32, :double, :double, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Double, ::Java::Double, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _install_event_loop_timer(in_event_loop, in_fire_delay, in_interval, in_timer_proc, in_timer_data, out_timer)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InstallEventLoopTimer, JNI.env, self.jni_id, in_event_loop.to_int, in_fire_delay, in_interval, in_timer_proc.to_int, in_timer_data.to_int, out_timer.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InstallReceiveHandler, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _install_receive_handler(receive_handler, the_window, handler_ref_con)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InstallReceiveHandler, JNI.env, self.jni_id, receive_handler.to_int, the_window.to_int, handler_ref_con.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InstallTrackingHandler, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _install_tracking_handler(tracking_handler, the_window, handler_ref_con)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InstallTrackingHandler, JNI.env, self.jni_id, tracking_handler.to_int, the_window.to_int, handler_ref_con.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InvalWindowRect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Rect] }
      def _inval_window_rect(w_handle, bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InvalWindowRect, JNI.env, self.jni_id, w_handle.to_int, bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InvalWindowRgn, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _inval_window_rgn(w_handle, rgn_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InvalWindowRgn, JNI.env, self.jni_id, w_handle.to_int, rgn_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_InvertRect, [:pointer, :long, :long], :void
      typesig { [Rect] }
      def _invert_rect(r)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_InvertRect, JNI.env, self.jni_id, r.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsControlActive, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _is_control_active(in_control)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsControlActive, JNI.env, self.jni_id, in_control.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsControlEnabled, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _is_control_enabled(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsControlEnabled, JNI.env, self.jni_id, c_handle.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsControlVisible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _is_control_visible(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsControlVisible, JNI.env, self.jni_id, c_handle.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsDataBrowserItemSelected, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def _is_data_browser_item_selected(c_handle, item_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsDataBrowserItemSelected, JNI.env, self.jni_id, c_handle.to_int, item_id.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsEventInQueue, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def _is_event_in_queue(in_queue, in_event)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsEventInQueue, JNI.env, self.jni_id, in_queue.to_int, in_event.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsMenuCommandEnabled, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def _is_menu_command_enabled(m_handle, command_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsMenuCommandEnabled, JNI.env, self.jni_id, m_handle.to_int, command_id.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsMenuItemEnabled, [:pointer, :long, :int32, :int16], :int8
      typesig { [::Java::Int, ::Java::Short] }
      def _is_menu_item_enabled(m_handle, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsMenuItemEnabled, JNI.env, self.jni_id, m_handle.to_int, index.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsValidControlHandle, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _is_valid_control_handle(c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsValidControlHandle, JNI.env, self.jni_id, c_handle.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsValidMenu, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _is_valid_menu(m_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsValidMenu, JNI.env, self.jni_id, m_handle.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsValidWindowPtr, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _is_valid_window_ptr(graf_port)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsValidWindowPtr, JNI.env, self.jni_id, graf_port.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsWindowActive, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _is_window_active(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsWindowActive, JNI.env, self.jni_id, window.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsWindowCollapsed, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _is_window_collapsed(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsWindowCollapsed, JNI.env, self.jni_id, window.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_IsWindowVisible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def _is_window_visible(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_IsWindowVisible, JNI.env, self.jni_id, window.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_KeyTranslate, [:pointer, :long, :int32, :int16, :long], :int32
      typesig { [::Java::Int, ::Java::Short, Array.typed(::Java::Int)] }
      def _key_translate(trans_data, keycode, state)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_KeyTranslate, JNI.env, self.jni_id, trans_data.to_int, keycode.to_int, state.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_KillPicture, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _kill_picture(pict_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_KillPicture, JNI.env, self.jni_id, pict_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_LineTo, [:pointer, :long, :int16, :int16], :void
      typesig { [::Java::Short, ::Java::Short] }
      def _line_to(h, v)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_LineTo, JNI.env, self.jni_id, h.to_int, v.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_Long2Fix, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _long2fix(x)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_Long2Fix, JNI.env, self.jni_id, x.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_LoWord, [:pointer, :long, :int32], :int16
      typesig { [::Java::Int] }
      def _lo_word(double_word)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_LoWord, JNI.env, self.jni_id, double_word.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_LSFindApplicationForInfo, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      def _lsfind_application_for_info(in_creator, in_bundle_id, in_name, out_app_ref, out_app_url)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_LSFindApplicationForInfo, JNI.env, self.jni_id, in_creator.to_int, in_bundle_id.to_int, in_name.to_int, out_app_ref.jni_id, out_app_url.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_LSCopyAllRoleHandlersForContentType, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _lscopy_all_role_handlers_for_content_type(in_content_type, in_role_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_LSCopyAllRoleHandlersForContentType, JNI.env, self.jni_id, in_content_type.to_int, in_role_mask.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_LSGetApplicationForInfo, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      def _lsget_application_for_info(in_type, in_creator, in_extension, in_role_mask, out_app_ref, out_app_url)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_LSGetApplicationForInfo, JNI.env, self.jni_id, in_type.to_int, in_creator.to_int, in_extension.to_int, in_role_mask.to_int, out_app_ref.jni_id, out_app_url.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_LSOpenURLsWithRole, [:pointer, :long, :int32, :int32, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, LSApplicationParameters, Array.typed(::Java::Int), ::Java::Int] }
      def _lsopen_urls_with_role(in_urls, in_role, in_aeparam, in_app_params, out_psns, in_max_psncount)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_LSOpenURLsWithRole, JNI.env, self.jni_id, in_urls.to_int, in_role.to_int, in_aeparam.to_int, in_app_params.jni_id, out_psns.jni_id, in_max_psncount.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_LSOpenCFURLRef, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _lsopen_cfurlref(in_url, out_launched_url)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_LSOpenCFURLRef, JNI.env, self.jni_id, in_url.to_int, out_launched_url.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_LSOpenApplication, [:pointer, :long, :long, :long], :int32
      typesig { [LSApplicationParameters, Array.typed(::Java::Int)] }
      def _lsopen_application(in_app_params, out_psn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_LSOpenApplication, JNI.env, self.jni_id, in_app_params.jni_id, out_psn.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_LSCopyDisplayNameForRef, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      def _lscopy_display_name_for_ref(in_ref, out_display_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_LSCopyDisplayNameForRef, JNI.env, self.jni_id, in_ref.jni_id, out_display_name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_MenuSelect, [:pointer, :long, :long], :int32
      typesig { [Point] }
      def _menu_select(m_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_MenuSelect, JNI.env, self.jni_id, m_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_MoveControl, [:pointer, :long, :int32, :int16, :int16], :void
      typesig { [::Java::Int, ::Java::Short, ::Java::Short] }
      def _move_control(the_control, h, v)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_MoveControl, JNI.env, self.jni_id, the_control.to_int, h.to_int, v.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_MoveTo, [:pointer, :long, :int16, :int16], :void
      typesig { [::Java::Short, ::Java::Short] }
      def _move_to(h, v)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_MoveTo, JNI.env, self.jni_id, h.to_int, v.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_MoveWindow, [:pointer, :long, :int32, :int16, :int16, :int8], :void
      typesig { [::Java::Int, ::Java::Short, ::Java::Short, ::Java::Boolean] }
      def _move_window(w_handle, h, v, to_front)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_MoveWindow, JNI.env, self.jni_id, w_handle.to_int, h.to_int, v.to_int, to_front ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavCreateChooseFolderDialog, [:pointer, :long, :long, :int32, :int32, :int32, :long], :int32
      typesig { [NavDialogCreationOptions, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _nav_create_choose_folder_dialog(in_options, in_event_proc, in_filter_proc, in_client_data, out_dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavCreateChooseFolderDialog, JNI.env, self.jni_id, in_options.jni_id, in_event_proc.to_int, in_filter_proc.to_int, in_client_data.to_int, out_dialog.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavCreateGetFileDialog, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [NavDialogCreationOptions, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _nav_create_get_file_dialog(in_options, in_type_list, in_event_proc, in_preview_proc, in_filter_proc, in_client_data, out_dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavCreateGetFileDialog, JNI.env, self.jni_id, in_options.jni_id, in_type_list.to_int, in_event_proc.to_int, in_preview_proc.to_int, in_filter_proc.to_int, in_client_data.to_int, out_dialog.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavCreatePutFileDialog, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [NavDialogCreationOptions, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _nav_create_put_file_dialog(in_options, in_file_type, in_file_creator, in_event_proc, in_client_data, out_dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavCreatePutFileDialog, JNI.env, self.jni_id, in_options.jni_id, in_file_type.to_int, in_file_creator.to_int, in_event_proc.to_int, in_client_data.to_int, out_dialog.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_NavCustomControl__IIL#{AEDesc.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, AEDesc] }
      def _nav_custom_control(dialog, selector, parms)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_NavCustomControl__IIL#{AEDesc.jni_name}_2".to_sym, JNI.env, self.jni_id, dialog.to_int, selector.to_int, parms.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_NavCustomControl__IIL#{NavMenuItemSpec.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NavMenuItemSpec] }
      def _nav_custom_control(dialog, selector, parms)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_NavCustomControl__IIL#{NavMenuItemSpec.jni_name}_2".to_sym, JNI.env, self.jni_id, dialog.to_int, selector.to_int, parms.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavDialogDispose, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _nav_dialog_dispose(dialog_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavDialogDispose, JNI.env, self.jni_id, dialog_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavDialogGetSaveFileName, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _nav_dialog_get_save_file_name(dialog_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavDialogGetSaveFileName, JNI.env, self.jni_id, dialog_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavDialogGetUserAction, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _nav_dialog_get_user_action(dialog_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavDialogGetUserAction, JNI.env, self.jni_id, dialog_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavDialogRun, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _nav_dialog_run(dialog_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavDialogRun, JNI.env, self.jni_id, dialog_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavDialogSetSaveFileName, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _nav_dialog_set_save_file_name(dialog_handle, file_name_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavDialogSetSaveFileName, JNI.env, self.jni_id, dialog_handle.to_int, file_name_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavDialogSetFilterTypeIdentifiers, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _nav_dialog_set_filter_type_identifiers(in_get_file_dialog, in_type_identifiers)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavDialogSetFilterTypeIdentifiers, JNI.env, self.jni_id, in_get_file_dialog.to_int, in_type_identifiers.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavGetDefaultDialogCreationOptions, [:pointer, :long, :long], :int32
      typesig { [NavDialogCreationOptions] }
      def _nav_get_default_dialog_creation_options(out_options)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavGetDefaultDialogCreationOptions, JNI.env, self.jni_id, out_options.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavDialogGetReply, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, NavReplyRecord] }
      def _nav_dialog_get_reply(in_dialog, out_reply)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavDialogGetReply, JNI.env, self.jni_id, in_dialog.to_int, out_reply.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NavDisposeReply, [:pointer, :long, :long], :int32
      typesig { [NavReplyRecord] }
      def _nav_dispose_reply(reply)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NavDisposeReply, JNI.env, self.jni_id, reply.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NewControl, [:pointer, :long, :int32, :long, :long, :int8, :int16, :int16, :int16, :int16, :int32], :int32
      typesig { [::Java::Int, Rect, Array.typed(::Java::Byte), ::Java::Boolean, ::Java::Short, ::Java::Short, ::Java::Short, ::Java::Short, ::Java::Int] }
      def _new_control(owning_window, bounds_rect, control_title, initially_visible, initial_value, minimum_value, maximum_value, proc_id, control_reference)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NewControl, JNI.env, self.jni_id, owning_window.to_int, bounds_rect.jni_id, control_title.jni_id, initially_visible ? 1 : 0, initial_value.to_int, minimum_value.to_int, maximum_value.to_int, proc_id.to_int, control_reference.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NewDrag, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _new_drag(the_drag)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NewDrag, JNI.env, self.jni_id, the_drag.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NewGWorldFromPtr, [:pointer, :long, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Int), ::Java::Int, Rect, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _new_gworld_from_ptr(offscreen_gworld, pixel_format, bounds_rect, c_table, a_gdevice, flags, new_buffer, row_bytes)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NewGWorldFromPtr, JNI.env, self.jni_id, offscreen_gworld.jni_id, pixel_format.to_int, bounds_rect.jni_id, c_table.to_int, a_gdevice.to_int, flags.to_int, new_buffer.to_int, row_bytes.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NewHandle, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _new_handle(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NewHandle, JNI.env, self.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NewHandleClear, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _new_handle_clear(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NewHandleClear, JNI.env, self.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NewPtr, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _new_ptr(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NewPtr, JNI.env, self.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NewPtrClear, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _new_ptr_clear(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NewPtrClear, JNI.env, self.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NewRgn, [:pointer, :long], :int32
      typesig { [] }
      def _new_rgn
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NewRgn, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_NewTSMDocument, [:pointer, :long, :int16, :long, :long, :int64], :int32
      typesig { [::Java::Short, Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Long] }
      def _new_tsmdocument(num_of_interface, supported_interface_types, idoc_id, refcon)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_NewTSMDocument, JNI.env, self.jni_id, num_of_interface.to_int, supported_interface_types.jni_id, idoc_id.jni_id, refcon.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_OffsetRect, [:pointer, :long, :long, :int16, :int16], :void
      typesig { [Rect, ::Java::Short, ::Java::Short] }
      def _offset_rect(rect, dh, dv)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_OffsetRect, JNI.env, self.jni_id, rect.jni_id, dh.to_int, dv.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_OffsetRgn, [:pointer, :long, :int32, :int16, :int16], :void
      typesig { [::Java::Int, ::Java::Short, ::Java::Short] }
      def _offset_rgn(rgn_handle, dh, dv)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_OffsetRgn, JNI.env, self.jni_id, rgn_handle.to_int, dh.to_int, dv.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_OpenDataBrowserContainer, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _open_data_browser_container(c_handle, container)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_OpenDataBrowserContainer, JNI.env, self.jni_id, c_handle.to_int, container.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_OpenRgn, [:pointer, :long], :void
      typesig { [] }
      def _open_rgn
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_OpenRgn, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_OpenPicture, [:pointer, :long, :long], :int32
      typesig { [Rect] }
      def _open_picture(rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_OpenPicture, JNI.env, self.jni_id, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PickColor, [:pointer, :long, :long], :int32
      typesig { [ColorPickerInfo] }
      def _pick_color(the_color_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PickColor, JNI.env, self.jni_id, the_color_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PopUpMenuSelect, [:pointer, :long, :int32, :int16, :int16, :int16], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Short, ::Java::Short] }
      def _pop_up_menu_select(m_handle, top, left, pop_up_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PopUpMenuSelect, JNI.env, self.jni_id, m_handle.to_int, top.to_int, left.to_int, pop_up_item.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PostEvent, [:pointer, :long, :int16, :int32], :int32
      typesig { [::Java::Short, ::Java::Int] }
      def _post_event(event_num, event_msg)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PostEvent, JNI.env, self.jni_id, event_num.to_int, event_msg.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PostEventToQueue, [:pointer, :long, :int32, :int32, :int16], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Short] }
      def _post_event_to_queue(in_queue, in_event, in_priority)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PostEventToQueue, JNI.env, self.jni_id, in_queue.to_int, in_event.to_int, in_priority.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMCreatePageFormat, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _pmcreate_page_format(page_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMCreatePageFormat, JNI.env, self.jni_id, page_format.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMCreatePrintSettings, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _pmcreate_print_settings(print_settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMCreatePrintSettings, JNI.env, self.jni_id, print_settings.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMCreateSession, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _pmcreate_session(print_session)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMCreateSession, JNI.env, self.jni_id, print_session.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMFlattenPageFormat, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _pmflatten_page_format(page_format, flat_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMFlattenPageFormat, JNI.env, self.jni_id, page_format.to_int, flat_format.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMFlattenPrintSettings, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _pmflatten_print_settings(print_settings, flat_settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMFlattenPrintSettings, JNI.env, self.jni_id, print_settings.to_int, flat_settings.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMGetAdjustedPageRect, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, PMRect] }
      def _pmget_adjusted_page_rect(page_format, page_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMGetAdjustedPageRect, JNI.env, self.jni_id, page_format.to_int, page_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMGetAdjustedPaperRect, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, PMRect] }
      def _pmget_adjusted_paper_rect(page_format, paper_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMGetAdjustedPaperRect, JNI.env, self.jni_id, page_format.to_int, paper_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMGetCollate, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Boolean)] }
      def _pmget_collate(print_settings, collate)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMGetCollate, JNI.env, self.jni_id, print_settings.to_int, collate.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMGetCopies, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _pmget_copies(print_settings, copies)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMGetCopies, JNI.env, self.jni_id, print_settings.to_int, copies.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMGetFirstPage, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _pmget_first_page(print_settings, first)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMGetFirstPage, JNI.env, self.jni_id, print_settings.to_int, first.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMGetJobNameCFString, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _pmget_job_name_cfstring(print_settings, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMGetJobNameCFString, JNI.env, self.jni_id, print_settings.to_int, name.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMGetLastPage, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _pmget_last_page(print_settings, last)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMGetLastPage, JNI.env, self.jni_id, print_settings.to_int, last.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMGetPageRange, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _pmget_page_range(print_settings, min_page, max_page)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMGetPageRange, JNI.env, self.jni_id, print_settings.to_int, min_page.jni_id, max_page.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMPrinterGetOutputResolution, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, PMResolution] }
      def _pmprinter_get_output_resolution(i, print_settings, resolution)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMPrinterGetOutputResolution, JNI.env, self.jni_id, i.to_int, print_settings.to_int, resolution.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMRelease, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _pmrelease(print_manager_object)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMRelease, JNI.env, self.jni_id, print_manager_object.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMGetResolution, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, PMResolution] }
      def _pmget_resolution(page_format, resolution)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMGetResolution, JNI.env, self.jni_id, page_format.to_int, resolution.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionBeginDocumentNoDialog, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _pmsession_begin_document_no_dialog(print_session, print_settings, page_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionBeginDocumentNoDialog, JNI.env, self.jni_id, print_session.to_int, print_settings.to_int, page_format.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionBeginPageNoDialog, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, PMRect] }
      def _pmsession_begin_page_no_dialog(print_session, page_format, page_frame)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionBeginPageNoDialog, JNI.env, self.jni_id, print_session.to_int, page_format.to_int, page_frame.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionCopyDestinationLocation, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _pmsession_copy_destination_location(print_session, print_settings, dest_location_p)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionCopyDestinationLocation, JNI.env, self.jni_id, print_session.to_int, print_settings.to_int, dest_location_p.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionCreatePrinterList, [:pointer, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _pmsession_create_printer_list(print_session, printer_list, current_index, current_printer)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionCreatePrinterList, JNI.env, self.jni_id, print_session.to_int, printer_list.jni_id, current_index.jni_id, current_printer.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionDefaultPageFormat, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _pmsession_default_page_format(print_session, page_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionDefaultPageFormat, JNI.env, self.jni_id, print_session.to_int, page_format.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionDefaultPrintSettings, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _pmsession_default_print_settings(print_session, print_settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionDefaultPrintSettings, JNI.env, self.jni_id, print_session.to_int, print_settings.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionEndDocumentNoDialog, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _pmsession_end_document_no_dialog(print_session)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionEndDocumentNoDialog, JNI.env, self.jni_id, print_session.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionEndPageNoDialog, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _pmsession_end_page_no_dialog(print_session)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionEndPageNoDialog, JNI.env, self.jni_id, print_session.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionError, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _pmsession_error(print_session)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionError, JNI.env, self.jni_id, print_session.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionGetCurrentPrinter, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _pmsession_get_current_printer(print_session, printer)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionGetCurrentPrinter, JNI.env, self.jni_id, print_session.to_int, printer.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionGetDestinationType, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      def _pmsession_get_destination_type(print_session, print_settings, dest_type_p)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionGetDestinationType, JNI.env, self.jni_id, print_session.to_int, print_settings.to_int, dest_type_p.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionGetGraphicsContext, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _pmsession_get_graphics_context(print_session, graphics_type, graphics_context)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionGetGraphicsContext, JNI.env, self.jni_id, print_session.to_int, graphics_type.to_int, graphics_context.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionPageSetupDialog, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Boolean)] }
      def _pmsession_page_setup_dialog(print_session, page_format, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionPageSetupDialog, JNI.env, self.jni_id, print_session.to_int, page_format.to_int, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionPrintDialog, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Boolean)] }
      def _pmsession_print_dialog(print_session, settings, page_format, accepted)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionPrintDialog, JNI.env, self.jni_id, print_session.to_int, settings.to_int, page_format.to_int, accepted.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionSetCurrentPrinter, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _pmsession_set_current_printer(session, printer_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionSetCurrentPrinter, JNI.env, self.jni_id, session.to_int, printer_name.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionSetDestination, [:pointer, :long, :int32, :int32, :int16, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int] }
      def _pmsession_set_destination(print_session, print_settings, dest_type, dest_format, dest_location)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionSetDestination, JNI.env, self.jni_id, print_session.to_int, print_settings.to_int, dest_type.to_int, dest_format.to_int, dest_location.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionSetError, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _pmsession_set_error(print_session, print_error)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionSetError, JNI.env, self.jni_id, print_session.to_int, print_error.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionSetDocumentFormatGeneration, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _pmsession_set_document_format_generation(print_session, doc_format, graphics_contexts, options)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionSetDocumentFormatGeneration, JNI.env, self.jni_id, print_session.to_int, doc_format.to_int, graphics_contexts.to_int, options.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionUseSheets, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _pmsession_use_sheets(print_session, document_window, sheet_done_proc)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionUseSheets, JNI.env, self.jni_id, print_session.to_int, document_window.to_int, sheet_done_proc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionValidatePageFormat, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Boolean)] }
      def _pmsession_validate_page_format(print_session, page_format, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionValidatePageFormat, JNI.env, self.jni_id, print_session.to_int, page_format.to_int, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSessionValidatePrintSettings, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Boolean)] }
      def _pmsession_validate_print_settings(print_session, print_settings, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSessionValidatePrintSettings, JNI.env, self.jni_id, print_session.to_int, print_settings.to_int, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSetCollate, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _pmset_collate(print_settings, collate)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSetCollate, JNI.env, self.jni_id, print_settings.to_int, collate ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSetFirstPage, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _pmset_first_page(print_settings, first, lock)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSetFirstPage, JNI.env, self.jni_id, print_settings.to_int, first.to_int, lock ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSetJobNameCFString, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _pmset_job_name_cfstring(print_settings, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSetJobNameCFString, JNI.env, self.jni_id, print_settings.to_int, name.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSetLastPage, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _pmset_last_page(print_settings, last, lock)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSetLastPage, JNI.env, self.jni_id, print_settings.to_int, last.to_int, lock ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMSetPageRange, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _pmset_page_range(print_settings, min_page, max_page)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMSetPageRange, JNI.env, self.jni_id, print_settings.to_int, min_page.to_int, max_page.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMUnflattenPageFormat, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _pmunflatten_page_format(flat_format, page_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMUnflattenPageFormat, JNI.env, self.jni_id, flat_format.to_int, page_format.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PMUnflattenPrintSettings, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _pmunflatten_print_settings(flat_settings, print_settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PMUnflattenPrintSettings, JNI.env, self.jni_id, flat_settings.to_int, print_settings.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PtInRect, [:pointer, :long, :long, :long], :int8
      typesig { [Point, Rect] }
      def _pt_in_rect(pt, r)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PtInRect, JNI.env, self.jni_id, pt.jni_id, r.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PtInRgn, [:pointer, :long, :long, :int32], :int8
      typesig { [Point, ::Java::Int] }
      def _pt_in_rgn(pt, rgn_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PtInRgn, JNI.env, self.jni_id, pt.jni_id, rgn_handle.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PutScrapFlavor__IIII_3B, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      def _put_scrap_flavor(scrap, flavor_type, flavor_flags, flavor_size, flavor_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PutScrapFlavor__IIII_3B, JNI.env, self.jni_id, scrap.to_int, flavor_type.to_int, flavor_flags.to_int, flavor_size.to_int, flavor_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_PutScrapFlavor__IIII_3C, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      def _put_scrap_flavor(scrap, flavor_type, flavor_flags, flavor_size, flavor_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_PutScrapFlavor__IIII_3C, JNI.env, self.jni_id, scrap.to_int, flavor_type.to_int, flavor_flags.to_int, flavor_size.to_int, flavor_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_QDBeginCGContext, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _qdbegin_cgcontext(in_port, out_context)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_QDBeginCGContext, JNI.env, self.jni_id, in_port.to_int, out_context.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_QDEndCGContext, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _qdend_cgcontext(in_port, inout_context)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_QDEndCGContext, JNI.env, self.jni_id, in_port.to_int, inout_context.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_QDFlushPortBuffer, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _qdflush_port_buffer(port, rgn_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_QDFlushPortBuffer, JNI.env, self.jni_id, port.to_int, rgn_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_QDPictCreateWithProvider, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _qdpict_create_with_provider(provider)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_QDPictCreateWithProvider, JNI.env, self.jni_id, provider.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_QDPictDrawToCGContext, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, CGRect, ::Java::Int] }
      def _qdpict_draw_to_cgcontext(ctx, rect, pic_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_QDPictDrawToCGContext, JNI.env, self.jni_id, ctx.to_int, rect.jni_id, pic_ref.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_QDPictRelease, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _qdpict_release(pict_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_QDPictRelease, JNI.env, self.jni_id, pict_ref.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_QDPictGetBounds, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, CGRect] }
      def _qdpict_get_bounds(picture, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_QDPictGetBounds, JNI.env, self.jni_id, picture.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_QDRegionToRects, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _qdregion_to_rects(rgn, dir, proc, user_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_QDRegionToRects, JNI.env, self.jni_id, rgn.to_int, dir.to_int, proc.to_int, user_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RGBBackColor, [:pointer, :long, :long], :void
      typesig { [RGBColor] }
      def _rgbback_color(color)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RGBBackColor, JNI.env, self.jni_id, color.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RGBForeColor, [:pointer, :long, :long], :void
      typesig { [RGBColor] }
      def _rgbfore_color(color)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RGBForeColor, JNI.env, self.jni_id, color.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ReadIconFile, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      def _read_icon_file(icon_file, icon_family)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ReadIconFile, JNI.env, self.jni_id, icon_file.jni_id, icon_family.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ReceiveNextEvent, [:pointer, :long, :int32, :long, :double, :int8, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Double, ::Java::Boolean, Array.typed(::Java::Int)] }
      def _receive_next_event(in_num_types, in_list, in_timeout, in_pull_event, out_event)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ReceiveNextEvent, JNI.env, self.jni_id, in_num_types.to_int, in_list.jni_id, in_timeout, in_pull_event ? 1 : 0, out_event.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RectInRgn, [:pointer, :long, :long, :int32], :int8
      typesig { [Rect, ::Java::Int] }
      def _rect_in_rgn(rect, rgn_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RectInRgn, JNI.env, self.jni_id, rect.jni_id, rgn_handle.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RectRgn, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Rect] }
      def _rect_rgn(rgn_handle, left)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RectRgn, JNI.env, self.jni_id, rgn_handle.to_int, left.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RegisterAppearanceClient, [:pointer, :long], :int32
      typesig { [] }
      def _register_appearance_client
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RegisterAppearanceClient, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ReleaseEvent, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _release_event(the_event)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ReleaseEvent, JNI.env, self.jni_id, the_event.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ReleaseIconRef, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _release_icon_ref(the_icon_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ReleaseIconRef, JNI.env, self.jni_id, the_icon_ref.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ReleaseMenu, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _release_menu(m_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ReleaseMenu, JNI.env, self.jni_id, m_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ReleaseWindowGroup, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _release_window_group(in_group)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ReleaseWindowGroup, JNI.env, self.jni_id, in_group.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ReleaseWindow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _release_window(in_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ReleaseWindow, JNI.env, self.jni_id, in_window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RemoveControlProperty, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _remove_control_property(control, property_creator, property_tag)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RemoveControlProperty, JNI.env, self.jni_id, control.to_int, property_creator.to_int, property_tag.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RemoveDataBrowserItems, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def _remove_data_browser_items(c_handle, container_id, num_items, item_ids, pre_sort_property)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RemoveDataBrowserItems, JNI.env, self.jni_id, c_handle.to_int, container_id.to_int, num_items.to_int, item_ids.jni_id, pre_sort_property.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RemoveDataBrowserTableViewColumn, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _remove_data_browser_table_view_column(browser, column)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RemoveDataBrowserTableViewColumn, JNI.env, self.jni_id, browser.to_int, column.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RemoveEventFromQueue, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _remove_event_from_queue(in_queue, in_event)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RemoveEventFromQueue, JNI.env, self.jni_id, in_queue.to_int, in_event.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RemoveEventHandler, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _remove_event_handler(in_handler_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RemoveEventHandler, JNI.env, self.jni_id, in_handler_ref.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RemoveEventLoopTimer, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _remove_event_loop_timer(in_timer)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RemoveEventLoopTimer, JNI.env, self.jni_id, in_timer.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RemoveReceiveHandler, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _remove_receive_handler(receive_handler, the_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RemoveReceiveHandler, JNI.env, self.jni_id, receive_handler.to_int, the_window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RemoveTrackingHandler, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _remove_tracking_handler(tracking_handler, the_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RemoveTrackingHandler, JNI.env, self.jni_id, tracking_handler.to_int, the_window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RepositionWindow, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _reposition_window(window, parent_window, method)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RepositionWindow, JNI.env, self.jni_id, window.to_int, parent_window.to_int, method.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ReshapeCustomWindow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _reshape_custom_window(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ReshapeCustomWindow, JNI.env, self.jni_id, window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RestoreApplicationDockTileImage, [:pointer, :long], :int32
      typesig { [] }
      def _restore_application_dock_tile_image
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RestoreApplicationDockTileImage, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RetainEvent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _retain_event(in_event)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RetainEvent, JNI.env, self.jni_id, in_event.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RetainMenu, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _retain_menu(m_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RetainMenu, JNI.env, self.jni_id, m_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RetainWindow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _retain_window(in_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RetainWindow, JNI.env, self.jni_id, in_window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RevealDataBrowserItem, [:pointer, :long, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Byte] }
      def _reveal_data_browser_item(browser, item, property, options)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RevealDataBrowserItem, JNI.env, self.jni_id, browser.to_int, item.to_int, property.to_int, options.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_RunStandardAlert, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      def _run_standard_alert(dialog_handle, modal_filter_upp, item_hit)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_RunStandardAlert, JNI.env, self.jni_id, dialog_handle.to_int, modal_filter_upp.to_int, item_hit.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SameProcess, [:pointer, :long, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Boolean)] }
      def _same_process(psn1, psn2, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SameProcess, JNI.env, self.jni_id, psn1.jni_id, psn2.jni_id, result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ScrollRect, [:pointer, :long, :long, :int16, :int16, :int32], :void
      typesig { [Rect, ::Java::Short, ::Java::Short, ::Java::Int] }
      def _scroll_rect(rect, dh, dv, update_rgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ScrollRect, JNI.env, self.jni_id, rect.jni_id, dh.to_int, dv.to_int, update_rgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SectRect, [:pointer, :long, :long, :long, :long], :int8
      typesig { [Rect, Rect, Rect] }
      def _sect_rect(src1, src2, dst_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SectRect, JNI.env, self.jni_id, src1.jni_id, src2.jni_id, dst_rect.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SectRgn, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _sect_rgn(src_rgn_a, src_rgn_b, dst_rgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SectRgn, JNI.env, self.jni_id, src_rgn_a.to_int, src_rgn_b.to_int, dst_rgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SelectWindow, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _select_window(w_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SelectWindow, JNI.env, self.jni_id, w_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SendBehind, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _send_behind(window, behind_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SendBehind, JNI.env, self.jni_id, window.to_int, behind_window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SendEventToEventTarget, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _send_event_to_event_target(the_event, the_target)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SendEventToEventTarget, JNI.env, self.jni_id, the_event.to_int, the_target.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SendEventToEventTargetWithOptions, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _send_event_to_event_target_with_options(the_event, the_target, options)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SendEventToEventTargetWithOptions, JNI.env, self.jni_id, the_event.to_int, the_target.to_int, options.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetApplicationDockTileImage, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _set_application_dock_tile_image(in_image)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetApplicationDockTileImage, JNI.env, self.jni_id, in_image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetAutomaticControlDragTrackingEnabledForWindow, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _set_automatic_control_drag_tracking_enabled_for_window(in_window, in_tracks)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetAutomaticControlDragTrackingEnabledForWindow, JNI.env, self.jni_id, in_window.to_int, in_tracks ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetBevelButtonContentInfo, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, ControlButtonContentInfo] }
      def _set_bevel_button_content_info(in_button, in_content)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetBevelButtonContentInfo, JNI.env, self.jni_id, in_button.to_int, in_content.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetClip, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _set_clip(rgn_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetClip, JNI.env, self.jni_id, rgn_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControl32BitMaximum, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _set_control32bit_maximum(c_handle, maximum)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControl32BitMaximum, JNI.env, self.jni_id, c_handle.to_int, maximum.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControl32BitMinimum, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _set_control32bit_minimum(c_handle, minimum)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControl32BitMinimum, JNI.env, self.jni_id, c_handle.to_int, minimum.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControl32BitValue, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _set_control32bit_value(c_handle, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControl32BitValue, JNI.env, self.jni_id, c_handle.to_int, value.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlAction, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _set_control_action(c_handle, action_proc)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlAction, JNI.env, self.jni_id, c_handle.to_int, action_proc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlBounds, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Rect] }
      def _set_control_bounds(c_handle, bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlBounds, JNI.env, self.jni_id, c_handle.to_int, bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlColorProc, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_control_color_proc(in_control, in_proc)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlColorProc, JNI.env, self.jni_id, in_control.to_int, in_proc.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIIL#{ControlButtonContentInfo.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ControlButtonContentInfo] }
      def _set_control_data(in_control, in_part, in_tag_name, in_size, in_data)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIIL#{ControlButtonContentInfo.jni_name}_2".to_sym, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_size.to_int, in_data.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIIL#{LongDateRec.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, LongDateRec] }
      def _set_control_data(in_control, in_part, in_tag_name, in_size, in_data)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIIL#{LongDateRec.jni_name}_2".to_sym, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_size.to_int, in_data.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIIL#{ControlTabInfoRecV1.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ControlTabInfoRecV1] }
      def _set_control_data(in_control, in_part, in_tag_name, in_size, in_data)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIIL#{ControlTabInfoRecV1.jni_name}_2".to_sym, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_size.to_int, in_data.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIIL#{Rect.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Rect] }
      def _set_control_data(in_control, in_part, in_tag_name, in_size, in_data)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIIL#{Rect.jni_name}_2".to_sym, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_size.to_int, in_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIII_3S, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      def _set_control_data(in_control, in_part, in_tag_name, in_size, in_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIII_3S, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_size.to_int, in_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIII_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _set_control_data(in_control, in_part, in_tag_name, in_size, in_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIII_3I, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_size.to_int, in_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _set_control_data(in_control, in_part, in_tag_name, in_size, in_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIII, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_size.to_int, in_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIII_3B, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      def _set_control_data(in_control, in_part, in_tag_name, in_size, in_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIII_3B, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_size.to_int, in_data.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIIL#{ControlEditTextSelectionRec.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ControlEditTextSelectionRec] }
      def _set_control_data(in_control, in_part, in_tag_name, in_size, in_data)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_SetControlData__IIIIL#{ControlEditTextSelectionRec.jni_name}_2".to_sym, JNI.env, self.jni_id, in_control.to_int, in_part.to_int, in_tag_name.to_int, in_size.to_int, in_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlFontStyle, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, ControlFontStyleRec] }
      def _set_control_font_style(in_control, in_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlFontStyle, JNI.env, self.jni_id, in_control.to_int, in_style.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlPopupMenuHandle, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _set_control_popup_menu_handle(c_handle, popup_menu_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlPopupMenuHandle, JNI.env, self.jni_id, c_handle.to_int, popup_menu_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlProperty, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _set_control_property(control, property_creator, property_tag, property_size, property_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlProperty, JNI.env, self.jni_id, control.to_int, property_creator.to_int, property_tag.to_int, property_size.to_int, property_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlReference, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _set_control_reference(c_handle, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlReference, JNI.env, self.jni_id, c_handle.to_int, data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlTitleWithCFString, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_control_title_with_cfstring(c_handle, s_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlTitleWithCFString, JNI.env, self.jni_id, c_handle.to_int, s_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlViewSize, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _set_control_view_size(c_handle, view_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlViewSize, JNI.env, self.jni_id, c_handle.to_int, view_size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetControlVisibility, [:pointer, :long, :int32, :int8, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean] }
      def _set_control_visibility(in_control, in_is_visible, in_do_draw)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetControlVisibility, JNI.env, self.jni_id, in_control.to_int, in_is_visible ? 1 : 0, in_do_draw ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetCursor, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _set_cursor(cursor)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetCursor, JNI.env, self.jni_id, cursor.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserCallbacks, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, DataBrowserCallbacks] }
      def _set_data_browser_callbacks(browser, callbacks)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserCallbacks, JNI.env, self.jni_id, browser.to_int, callbacks.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserCustomCallbacks, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, DataBrowserCustomCallbacks] }
      def _set_data_browser_custom_callbacks(browser, callbacks)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserCustomCallbacks, JNI.env, self.jni_id, browser.to_int, callbacks.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserHasScrollBars, [:pointer, :long, :int32, :int8, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean] }
      def _set_data_browser_has_scroll_bars(c_handle, h_scroll, v_scroll)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserHasScrollBars, JNI.env, self.jni_id, c_handle.to_int, h_scroll ? 1 : 0, v_scroll ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserItemDataBooleanValue, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _set_data_browser_item_data_boolean_value(item_ref, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserItemDataBooleanValue, JNI.env, self.jni_id, item_ref.to_int, data ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserItemDataButtonValue, [:pointer, :long, :int32, :int16], :int32
      typesig { [::Java::Int, ::Java::Short] }
      def _set_data_browser_item_data_button_value(item_ref, theme_button_value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserItemDataButtonValue, JNI.env, self.jni_id, item_ref.to_int, theme_button_value.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserItemDataIcon, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_data_browser_item_data_icon(item_ref, icon_ref)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserItemDataIcon, JNI.env, self.jni_id, item_ref.to_int, icon_ref.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserItemDataItemID, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_data_browser_item_data_item_id(item_ref, item_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserItemDataItemID, JNI.env, self.jni_id, item_ref.to_int, item_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserItemDataText, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_data_browser_item_data_text(item_ref, s_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserItemDataText, JNI.env, self.jni_id, item_ref.to_int, s_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserListViewDisclosureColumn, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _set_data_browser_list_view_disclosure_column(c_handle, col_id, b)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserListViewDisclosureColumn, JNI.env, self.jni_id, c_handle.to_int, col_id.to_int, b ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserListViewHeaderBtnHeight, [:pointer, :long, :int32, :int16], :int32
      typesig { [::Java::Int, ::Java::Short] }
      def _set_data_browser_list_view_header_btn_height(c_handle, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserListViewHeaderBtnHeight, JNI.env, self.jni_id, c_handle.to_int, height.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserListViewHeaderDesc, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, DataBrowserListViewHeaderDesc] }
      def _set_data_browser_list_view_header_desc(browser, column, desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserListViewHeaderDesc, JNI.env, self.jni_id, browser.to_int, column.to_int, desc.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserPropertyFlags, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _set_data_browser_property_flags(browser, property, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserPropertyFlags, JNI.env, self.jni_id, browser.to_int, property.to_int, flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserScrollPosition, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _set_data_browser_scroll_position(c_handle, top, left)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserScrollPosition, JNI.env, self.jni_id, c_handle.to_int, top.to_int, left.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserSelectedItems, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def _set_data_browser_selected_items(c_handle, num_items, items, operation)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserSelectedItems, JNI.env, self.jni_id, c_handle.to_int, num_items.to_int, items.jni_id, operation.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserSelectionFlags, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_data_browser_selection_flags(c_handle, selection_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserSelectionFlags, JNI.env, self.jni_id, c_handle.to_int, selection_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserSortOrder, [:pointer, :long, :int32, :int16], :int32
      typesig { [::Java::Int, ::Java::Short] }
      def _set_data_browser_sort_order(browser, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserSortOrder, JNI.env, self.jni_id, browser.to_int, order.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserSortProperty, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_data_browser_sort_property(browser, property)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserSortProperty, JNI.env, self.jni_id, browser.to_int, property.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTableViewColumnPosition, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _set_data_browser_table_view_column_position(browser, column, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTableViewColumnPosition, JNI.env, self.jni_id, browser.to_int, column.to_int, position.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTableViewHiliteStyle, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_data_browser_table_view_hilite_style(browser, hilite_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTableViewHiliteStyle, JNI.env, self.jni_id, browser.to_int, hilite_style.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTableViewItemRow, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _set_data_browser_table_view_item_row(browser, item, row)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTableViewItemRow, JNI.env, self.jni_id, browser.to_int, item.to_int, row.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTableViewNamedColumnWidth, [:pointer, :long, :int32, :int32, :int16], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Short] }
      def _set_data_browser_table_view_named_column_width(browser, column, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTableViewNamedColumnWidth, JNI.env, self.jni_id, browser.to_int, column.to_int, width.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTableViewRowHeight, [:pointer, :long, :int32, :int16], :int32
      typesig { [::Java::Int, ::Java::Short] }
      def _set_data_browser_table_view_row_height(browser, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTableViewRowHeight, JNI.env, self.jni_id, browser.to_int, height.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTarget, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_data_browser_target(c_handle, root_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDataBrowserTarget, JNI.env, self.jni_id, c_handle.to_int, root_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDragAllowableActions, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def _set_drag_allowable_actions(the_drag, in_actions, is_local)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDragAllowableActions, JNI.env, self.jni_id, the_drag.to_int, in_actions.to_int, is_local ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDragDropAction, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_drag_drop_action(the_drag, in_action)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDragDropAction, JNI.env, self.jni_id, the_drag.to_int, in_action.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDragImageWithCGImage, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, CGPoint, ::Java::Int] }
      def _set_drag_image_with_cgimage(in_drag, in_cgimage, in_image_offset_pt, in_image_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDragImageWithCGImage, JNI.env, self.jni_id, in_drag.to_int, in_cgimage.to_int, in_image_offset_pt.jni_id, in_image_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDragInputProc, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _set_drag_input_proc(the_drag, input_proc, drag_input_ref_con)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDragInputProc, JNI.env, self.jni_id, the_drag.to_int, input_proc.to_int, drag_input_ref_con.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDragItemFlavorData, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def _set_drag_item_flavor_data(the_drag, the_item_ref, the_type, data_ptr, data_size, data_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDragItemFlavorData, JNI.env, self.jni_id, the_drag.to_int, the_item_ref.to_int, the_type.to_int, data_ptr.jni_id, data_size.to_int, data_offset.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetDragSendProc, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _set_drag_send_proc(the_drag, send_proc, drag_send_ref_con)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetDragSendProc, JNI.env, self.jni_id, the_drag.to_int, send_proc.to_int, drag_send_ref_con.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetEventLoopTimerNextFireTime, [:pointer, :long, :int32, :double], :int32
      typesig { [::Java::Int, ::Java::Double] }
      def _set_event_loop_timer_next_fire_time(in_timer, in_next_fire)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetEventLoopTimerNextFireTime, JNI.env, self.jni_id, in_timer.to_int, in_next_fire)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIIIL#{Point.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Point] }
      def _set_event_parameter(in_event, in_name, in_type, in_size, in_data_ptr)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIIIL#{Point.jni_name}_2".to_sym, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_type.to_int, in_size.to_int, in_data_ptr.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIIIL#{HICommand.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, HICommand] }
      def _set_event_parameter(in_event, in_name, in_type, in_size, in_data_ptr)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIIIL#{HICommand.jni_name}_2".to_sym, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_type.to_int, in_size.to_int, in_data_ptr.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIII_3C, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      def _set_event_parameter(in_event, in_name, in_type, in_size, in_data_ptr)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIII_3C, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_type.to_int, in_size.to_int, in_data_ptr.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIII_3S, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      def _set_event_parameter(in_event, in_name, in_type, in_size, in_data_ptr)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIII_3S, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_type.to_int, in_size.to_int, in_data_ptr.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIII_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _set_event_parameter(in_event, in_name, in_type, in_size, in_data_ptr)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIII_3I, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_type.to_int, in_size.to_int, in_data_ptr.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIII_3Z, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Boolean)] }
      def _set_event_parameter(in_event, in_name, in_type, in_size, in_data_ptr)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIII_3Z, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_type.to_int, in_size.to_int, in_data_ptr.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIIIL#{CGPoint.jni_name}_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, CGPoint] }
      def _set_event_parameter(in_event, in_name, in_type, in_size, in_data_ptr)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_SetEventParameter__IIIIL#{CGPoint.jni_name}_2".to_sym, JNI.env, self.jni_id, in_event.to_int, in_name.to_int, in_type.to_int, in_size.to_int, in_data_ptr.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetFontInfoForSelection, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _set_font_info_for_selection(i_style_type, i_num_styles, i_styles, i_fpevent_target)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetFontInfoForSelection, JNI.env, self.jni_id, i_style_type.to_int, i_num_styles.to_int, i_styles.to_int, i_fpevent_target.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetFrontProcess, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      def _set_front_process(psn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetFrontProcess, JNI.env, self.jni_id, psn.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetFrontProcessWithOptions, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Int), ::Java::Int] }
      def _set_front_process_with_options(psn, in_options)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetFrontProcessWithOptions, JNI.env, self.jni_id, psn.jni_id, in_options.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetHandleSize, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _set_handle_size(handle, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetHandleSize, JNI.env, self.jni_id, handle.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetGWorld, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _set_gworld(port_handle, gd_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetGWorld, JNI.env, self.jni_id, port_handle.to_int, gd_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetIconFamilyData, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _set_icon_family_data(icon_family, icon_type, h)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetIconFamilyData, JNI.env, self.jni_id, icon_family.to_int, icon_type.to_int, h.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetItemMark, [:pointer, :long, :int32, :int16, :int16], :void
      typesig { [::Java::Int, ::Java::Short, ::Java::Short] }
      def _set_item_mark(the_menu, item, mark_char)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetItemMark, JNI.env, self.jni_id, the_menu.to_int, item.to_int, mark_char.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetKeyboardFocus, [:pointer, :long, :int32, :int32, :int16], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Short] }
      def _set_keyboard_focus(w_handle, c_handle, in_part)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetKeyboardFocus, JNI.env, self.jni_id, w_handle.to_int, c_handle.to_int, in_part.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetMenuCommandMark, [:pointer, :long, :int32, :int32, :unknown], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Char] }
      def _set_menu_command_mark(m_handle, command_id, mark)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetMenuCommandMark, JNI.env, self.jni_id, m_handle.to_int, command_id.to_int, mark.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetMenuFont, [:pointer, :long, :int32, :int16, :int16], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Short] }
      def _set_menu_font(m_handle, font_id, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetMenuFont, JNI.env, self.jni_id, m_handle.to_int, font_id.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemCommandKey, [:pointer, :long, :int32, :int16, :int8, :unknown], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Boolean, ::Java::Char] }
      def _set_menu_item_command_key(m_handle, index, virtual_key, key)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemCommandKey, JNI.env, self.jni_id, m_handle.to_int, index.to_int, virtual_key ? 1 : 0, key.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemHierarchicalMenu, [:pointer, :long, :int32, :int16, :int32], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int] }
      def _set_menu_item_hierarchical_menu(m_handle, index, hier_menu_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemHierarchicalMenu, JNI.env, self.jni_id, m_handle.to_int, index.to_int, hier_menu_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemIconHandle, [:pointer, :long, :int32, :int16, :int8, :int32], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Byte, ::Java::Int] }
      def _set_menu_item_icon_handle(m_handle, item, icon_type, icon_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemIconHandle, JNI.env, self.jni_id, m_handle.to_int, item.to_int, icon_type.to_int, icon_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemKeyGlyph, [:pointer, :long, :int32, :int16, :int16], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Short] }
      def _set_menu_item_key_glyph(m_handle, index, glyph)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemKeyGlyph, JNI.env, self.jni_id, m_handle.to_int, index.to_int, glyph.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemModifiers, [:pointer, :long, :int32, :int16, :int8], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Byte] }
      def _set_menu_item_modifiers(m_handle, index, modifiers)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemModifiers, JNI.env, self.jni_id, m_handle.to_int, index.to_int, modifiers.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemRefCon, [:pointer, :long, :int32, :int16, :int32], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int] }
      def _set_menu_item_ref_con(m_handle, index, ref_con)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemRefCon, JNI.env, self.jni_id, m_handle.to_int, index.to_int, ref_con.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemTextWithCFString, [:pointer, :long, :int32, :int16, :int32], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Int] }
      def _set_menu_item_text_with_cfstring(m_handle, index, s_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetMenuItemTextWithCFString, JNI.env, self.jni_id, m_handle.to_int, index.to_int, s_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetMenuTitleWithCFString, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_menu_title_with_cfstring(m_handle, s_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetMenuTitleWithCFString, JNI.env, self.jni_id, m_handle.to_int, s_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetPort, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _set_port(p_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetPort, JNI.env, self.jni_id, p_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetPt, [:pointer, :long, :long, :int16, :int16], :void
      typesig { [Point, ::Java::Short, ::Java::Short] }
      def _set_pt(p, h, v)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetPt, JNI.env, self.jni_id, p.jni_id, h.to_int, v.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetRect, [:pointer, :long, :long, :int16, :int16, :int16, :int16], :void
      typesig { [Rect, ::Java::Short, ::Java::Short, ::Java::Short, ::Java::Short] }
      def _set_rect(r, left, top, right, bottom)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetRect, JNI.env, self.jni_id, r.jni_id, left.to_int, top.to_int, right.to_int, bottom.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetRectRgn, [:pointer, :long, :int32, :int16, :int16, :int16, :int16], :void
      typesig { [::Java::Int, ::Java::Short, ::Java::Short, ::Java::Short, ::Java::Short] }
      def _set_rect_rgn(rgn_handle, left, top, right, bottom)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetRectRgn, JNI.env, self.jni_id, rgn_handle.to_int, left.to_int, top.to_int, right.to_int, bottom.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetRootMenu, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _set_root_menu(m_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetRootMenu, JNI.env, self.jni_id, m_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetSystemUIMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_system_uimode(in_mode, in_options)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetSystemUIMode, JNI.env, self.jni_id, in_mode.to_int, in_options.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetThemeBackground, [:pointer, :long, :int16, :int16, :int8], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Boolean] }
      def _set_theme_background(in_brush, depth, is_color_device)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetThemeBackground, JNI.env, self.jni_id, in_brush.to_int, depth.to_int, is_color_device ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetThemeCursor, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _set_theme_cursor(theme_cursor)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetThemeCursor, JNI.env, self.jni_id, theme_cursor.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetThemeDrawingState, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _set_theme_drawing_state(state, dispose_now)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetThemeDrawingState, JNI.env, self.jni_id, state.to_int, dispose_now ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetThemeTextColor, [:pointer, :long, :int16, :int16, :int8], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Boolean] }
      def _set_theme_text_color(in_brush, depth, is_color_device)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetThemeTextColor, JNI.env, self.jni_id, in_brush.to_int, depth.to_int, is_color_device ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetThemeWindowBackground, [:pointer, :long, :int32, :int16, :int8], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Boolean] }
      def _set_theme_window_background(w_handle, brush, update)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetThemeWindowBackground, JNI.env, self.jni_id, w_handle.to_int, brush.to_int, update ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetUpControlBackground, [:pointer, :long, :int32, :int16, :int8], :int32
      typesig { [::Java::Int, ::Java::Short, ::Java::Boolean] }
      def _set_up_control_background(c_handle, depth, is_color_device)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetUpControlBackground, JNI.env, self.jni_id, c_handle.to_int, depth.to_int, is_color_device ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetWindowActivationScope, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_window_activation_scope(w_handle, scope)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetWindowActivationScope, JNI.env, self.jni_id, w_handle.to_int, scope.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetWindowAlpha, [:pointer, :long, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Float] }
      def _set_window_alpha(in_window, in_alpha)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetWindowAlpha, JNI.env, self.jni_id, in_window.to_int, in_alpha)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetWindowBounds, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Rect] }
      def _set_window_bounds(window, region_code, global_bounds)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetWindowBounds, JNI.env, self.jni_id, window.to_int, region_code.to_int, global_bounds.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetWindowDefaultButton, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_window_default_button(w_handle, c_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetWindowDefaultButton, JNI.env, self.jni_id, w_handle.to_int, c_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetWindowGroup, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_window_group(in_window, in_new_group)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetWindowGroup, JNI.env, self.jni_id, in_window.to_int, in_new_group.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetWindowGroupOwner, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_window_group_owner(in_group, in_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetWindowGroupOwner, JNI.env, self.jni_id, in_group.to_int, in_window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetWindowGroupParent, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_window_group_parent(in_group, in_new_group)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetWindowGroupParent, JNI.env, self.jni_id, in_group.to_int, in_new_group.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetWindowModality, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _set_window_modality(in_window, in_modal_kind, in_unavailable_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetWindowModality, JNI.env, self.jni_id, in_window.to_int, in_modal_kind.to_int, in_unavailable_window.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetWindowResizeLimits, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, CGPoint, CGPoint] }
      def _set_window_resize_limits(in_window, in_min_limits, in_max_limits)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetWindowResizeLimits, JNI.env, self.jni_id, in_window.to_int, in_min_limits.jni_id, in_max_limits.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SetWindowTitleWithCFString, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def _set_window_title_with_cfstring(w_handle, s_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SetWindowTitleWithCFString, JNI.env, self.jni_id, w_handle.to_int, s_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ShowWindow, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _show_window(w_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ShowWindow, JNI.env, self.jni_id, w_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SizeControl, [:pointer, :long, :int32, :int16, :int16], :void
      typesig { [::Java::Int, ::Java::Short, ::Java::Short] }
      def _size_control(c_handle, w, h)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SizeControl, JNI.env, self.jni_id, c_handle.to_int, w.to_int, h.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SizeWindow, [:pointer, :long, :int32, :int16, :int16, :int8], :void
      typesig { [::Java::Int, ::Java::Short, ::Java::Short, ::Java::Boolean] }
      def _size_window(w_handle, w, h, update)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SizeWindow, JNI.env, self.jni_id, w_handle.to_int, w.to_int, h.to_int, update ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_StillDown, [:pointer, :long], :int8
      typesig { [] }
      def _still_down
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_StillDown, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_SysBeep, [:pointer, :long, :int16], :void
      typesig { [::Java::Short] }
      def _sys_beep(duration)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_SysBeep, JNI.env, self.jni_id, duration.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNCopy, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _txncopy(tx_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNCopy, JNI.env, self.jni_id, tx_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNCut, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _txncut(tx_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNCut, JNI.env, self.jni_id, tx_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNDataSize, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _txndata_size(tx_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNDataSize, JNI.env, self.jni_id, tx_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNDeleteObject, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _txndelete_object(tx_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNDeleteObject, JNI.env, self.jni_id, tx_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNEchoMode, [:pointer, :long, :int32, :unknown, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Char, ::Java::Int, ::Java::Boolean] }
      def _txnecho_mode(tx_handle, echo_character, encoding, on)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNEchoMode, JNI.env, self.jni_id, tx_handle.to_int, echo_character.to_int, encoding.to_int, on ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNGetData, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _txnget_data(tx_handle, start_offset, end_offset, data_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNGetData, JNI.env, self.jni_id, tx_handle.to_int, start_offset.to_int, end_offset.to_int, data_handle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNGetLineCount, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def _txnget_line_count(tx_handle, line_total)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNGetLineCount, JNI.env, self.jni_id, tx_handle.to_int, line_total.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNGetLineMetrics, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _txnget_line_metrics(i_txnobject, i_line_number, o_line_width, o_line_height)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNGetLineMetrics, JNI.env, self.jni_id, i_txnobject.to_int, i_line_number.to_int, o_line_width.jni_id, o_line_height.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNGetTXNObjectControls, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _txnget_txnobject_controls(i_txnobject, i_control_count, i_control_tags, o_control_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNGetTXNObjectControls, JNI.env, self.jni_id, i_txnobject.to_int, i_control_count.to_int, i_control_tags.jni_id, o_control_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNGetHIRect, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, CGRect] }
      def _txnget_hirect(i_txnobject, i_txnrect_key, o_rectangle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNGetHIRect, JNI.env, self.jni_id, i_txnobject.to_int, i_txnrect_key.to_int, o_rectangle.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNGetSelection, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _txnget_selection(tx_handle, start_offset, end_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNGetSelection, JNI.env, self.jni_id, tx_handle.to_int, start_offset.jni_id, end_offset.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNGetViewRect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Rect] }
      def _txnget_view_rect(i_txnobject, o_view_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNGetViewRect, JNI.env, self.jni_id, i_txnobject.to_int, o_view_rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNInitTextension, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _txninit_textension(i_default_fonts, i_count_default_fonts, i_usage_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNInitTextension, JNI.env, self.jni_id, i_default_fonts.to_int, i_count_default_fonts.to_int, i_usage_flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNOffsetToHIPoint, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, CGPoint] }
      def _txnoffset_to_hipoint(tx_handle, offset, point)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNOffsetToHIPoint, JNI.env, self.jni_id, tx_handle.to_int, offset.to_int, point.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNPaste, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _txnpaste(tx_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNPaste, JNI.env, self.jni_id, tx_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNHIPointToOffset, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, CGPoint, Array.typed(::Java::Int)] }
      def _txnhipoint_to_offset(i_txnobject, i_point, o_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNHIPointToOffset, JNI.env, self.jni_id, i_txnobject.to_int, i_point.jni_id, o_offset.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNSelectAll, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def _txnselect_all(tx_handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNSelectAll, JNI.env, self.jni_id, tx_handle.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNSetBackground, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, TXNBackground] }
      def _txnset_background(i_txnobject, i_background_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNSetBackground, JNI.env, self.jni_id, i_txnobject.to_int, i_background_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNSetData, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int] }
      def _txnset_data(i_txnobject, i_data_type, i_data_ptr, i_data_size, i_start_offset, i_end_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNSetData, JNI.env, self.jni_id, i_txnobject.to_int, i_data_type.to_int, i_data_ptr.jni_id, i_data_size.to_int, i_start_offset.to_int, i_end_offset.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNSetFrameBounds, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _txnset_frame_bounds(tx_handle, top, left, bottom, right, frame_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNSetFrameBounds, JNI.env, self.jni_id, tx_handle.to_int, top.to_int, left.to_int, bottom.to_int, right.to_int, frame_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNSetSelection, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _txnset_selection(tx_handle, start_offset, end_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNSetSelection, JNI.env, self.jni_id, tx_handle.to_int, start_offset.to_int, end_offset.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNSetTypeAttributes, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _txnset_type_attributes(i_txnobject, i_attr_count, i_attributes, i_start_offset, i_end_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNSetTypeAttributes, JNI.env, self.jni_id, i_txnobject.to_int, i_attr_count.to_int, i_attributes.to_int, i_start_offset.to_int, i_end_offset.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNSetTXNObjectControls, [:pointer, :long, :int32, :int8, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _txnset_txnobject_controls(i_txnobject, i_clear_all, i_control_count, i_control_tags, i_control_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNSetTXNObjectControls, JNI.env, self.jni_id, i_txnobject.to_int, i_clear_all ? 1 : 0, i_control_count.to_int, i_control_tags.jni_id, i_control_data.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TXNShowSelection, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def _txnshow_selection(tx_handle, show_end)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TXNShowSelection, JNI.env, self.jni_id, tx_handle.to_int, show_end ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TextFace, [:pointer, :long, :int16], :void
      typesig { [::Java::Short] }
      def _text_face(face)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TextFace, JNI.env, self.jni_id, face.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TextFont, [:pointer, :long, :int16], :void
      typesig { [::Java::Short] }
      def _text_font(font_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TextFont, JNI.env, self.jni_id, font_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TextSize, [:pointer, :long, :int16], :void
      typesig { [::Java::Short] }
      def _text_size(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TextSize, JNI.env, self.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TrackDrag, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, EventRecord, ::Java::Int] }
      def _track_drag(the_drag, the_event, the_region)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TrackDrag, JNI.env, self.jni_id, the_drag.to_int, the_event.jni_id, the_region.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_TrackMouseLocationWithOptions, [:pointer, :long, :int32, :int32, :double, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Double, Point, Array.typed(::Java::Int), Array.typed(::Java::Short)] }
      def _track_mouse_location_with_options(in_port, in_options, in_time, out_pt, out_modifiers, out_result)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_TrackMouseLocationWithOptions, JNI.env, self.jni_id, in_port.to_int, in_options.to_int, in_time, out_pt.jni_id, out_modifiers.jni_id, out_result.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_UTTypeCreatePreferredIdentifierForTag, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _uttype_create_preferred_identifier_for_tag(in_tag_class, in_tag, in_conforming_to_uti)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_UTTypeCreatePreferredIdentifierForTag, JNI.env, self.jni_id, in_tag_class.to_int, in_tag.to_int, in_conforming_to_uti.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_UTTypeCreateAllIdentifiersForTag, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _uttype_create_all_identifiers_for_tag(in_tag_class, in_tag, in_conforming_to_uti)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_UTTypeCreateAllIdentifiersForTag, JNI.env, self.jni_id, in_tag_class.to_int, in_tag.to_int, in_conforming_to_uti.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_UnionRect, [:pointer, :long, :long, :long, :long], :void
      typesig { [Rect, Rect, Rect] }
      def _union_rect(src_a, src_b, dst)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_UnionRect, JNI.env, self.jni_id, src_a.jni_id, src_b.jni_id, dst.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_UnionRgn, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _union_rgn(src_rgn_a, src_rgn_b, dst_rgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_UnionRgn, JNI.env, self.jni_id, src_rgn_a.to_int, src_rgn_b.to_int, dst_rgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_UpdateDataBrowserItems, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      def _update_data_browser_items(c_handle, container, num_items, items, pre_sort_property, property_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_UpdateDataBrowserItems, JNI.env, self.jni_id, c_handle.to_int, container.to_int, num_items.to_int, items.jni_id, pre_sort_property.to_int, property_id.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_UpgradeScriptInfoToTextEncoding, [:pointer, :long, :int16, :int16, :int16, :long, :long], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Short, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      def _upgrade_script_info_to_text_encoding(i_text_script_id, i_text_language_id, i_region_id, i_text_fontname, o_encoding)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_UpgradeScriptInfoToTextEncoding, JNI.env, self.jni_id, i_text_script_id.to_int, i_text_language_id.to_int, i_region_id.to_int, i_text_fontname.jni_id, o_encoding.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_UseInputWindow, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _use_input_window(idoc_id, use_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_UseInputWindow, JNI.env, self.jni_id, idoc_id.to_int, use_window ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_WaitMouseMoved, [:pointer, :long, :long], :int8
      typesig { [Point] }
      def _wait_mouse_moved(initial_global_mouse)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_WaitMouseMoved, JNI.env, self.jni_id, initial_global_mouse.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_X2Fix, [:pointer, :long, :double], :int32
      typesig { [::Java::Double] }
      def _x2fix(x)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_X2Fix, JNI.env, self.jni_id, x)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_ZoomWindowIdeal, [:pointer, :long, :int32, :int16, :long], :int32
      typesig { [::Java::Int, ::Java::Short, Point] }
      def _zoom_window_ideal(in_window, in_part_code, io_ideal_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_ZoomWindowIdeal, JNI.env, self.jni_id, in_window.to_int, in_part_code.to_int, io_ideal_size.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_kCFNumberFormatterDecimalSeparator, [:pointer, :long], :int32
      typesig { [] }
      def k_cfnumber_formatter_decimal_separator
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_kCFNumberFormatterDecimalSeparator, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_getpid, [:pointer, :long], :int32
      typesig { [] }
      def getpid
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_getpid, JNI.env, self.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{NavCBRec.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NavCBRec, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{NavCBRec.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{NavFileOrFolderInfo.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NavFileOrFolderInfo, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{NavFileOrFolderInfo.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{NavMenuItemSpec.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NavMenuItemSpec, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{NavMenuItemSpec.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{ATSTrapezoid.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [ATSTrapezoid, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{ATSTrapezoid.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{RGBColor.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [RGBColor, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{RGBColor.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{CGPathElement.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [CGPathElement, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{CGPathElement.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{TextRange.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [TextRange, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{TextRange.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{PixMap.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, PixMap, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{PixMap.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{Cursor.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Cursor, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{Cursor.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{GDevice.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GDevice, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{GDevice.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{PixMap.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PixMap, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{PixMap.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{HMHelpContentRec.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [HMHelpContentRec, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{HMHelpContentRec.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{ATSLayoutRecord.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [ATSLayoutRecord, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{ATSLayoutRecord.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{Org::Eclipse::Swt::Internal::Carbon::Point.jni_name}_2_3II".to_sym, [:pointer, :long, :long, :long, :int32], :void
      typesig { [Org::Eclipse::Swt::Internal::Carbon::Point, Array.typed(::Java::Int), ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{Org::Eclipse::Swt::Internal::Carbon::Point.jni_name}_2_3II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.jni_id, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{HMHelpContentRec.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, HMHelpContentRec, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{HMHelpContentRec.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{BitMap.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, BitMap, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{BitMap.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{RGBColor.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, RGBColor, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{RGBColor.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{Rect.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Rect, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__L#{Rect.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, n.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{Rect.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Rect, ::Java::Int] }
      def memmove(dest, src, n)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{Rect.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, n.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_memmove___3C_3BI, [:pointer, :long, :long, :long, :int32], :void
      typesig { [Array.typed(::Java::Char), Array.typed(::Java::Byte), ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_memmove___3C_3BI, JNI.env, self.jni_id, dest.jni_id, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{ATSUTab.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, ATSUTab, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove__IL#{ATSUTab.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_carbon_OS_memmove___3IL#{TXNTab.jni_name}_2I".to_sym, [:pointer, :long, :long, :long, :int32], :void
      typesig { [Array.typed(::Java::Int), TXNTab, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_carbon_OS_memmove___3IL#{TXNTab.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AXUIElementCreateWithHIObjectAndIdentifier, [:pointer, :long, :int32, :int64], :int32
      typesig { [::Java::Int, ::Java::Long] }
      def _axuielement_create_with_hiobject_and_identifier(in_hiobject, in_identifier)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AXUIElementCreateWithHIObjectAndIdentifier, JNI.env, self.jni_id, in_hiobject.to_int, in_identifier.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AXUIElementCreateWithDataBrowserAndItemInfo, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, DataBrowserAccessibilityItemInfo] }
      def _axuielement_create_with_data_browser_and_item_info(in_data_browser, in_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AXUIElementCreateWithDataBrowserAndItemInfo, JNI.env, self.jni_id, in_data_browser.to_int, in_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AXNotificationHIObjectNotify, [:pointer, :long, :int32, :int32, :int64], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Long] }
      def _axnotification_hiobject_notify(in_notification, in_hiobject, in_identifier)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AXNotificationHIObjectNotify, JNI.env, self.jni_id, in_notification.to_int, in_hiobject.to_int, in_identifier.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AXUIElementGetIdentifier, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Long)] }
      def _axuielement_get_identifier(in_uielement, out_identifier)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AXUIElementGetIdentifier, JNI.env, self.jni_id, in_uielement.to_int, out_identifier.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AXUIElementGetHIObject, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _axuielement_get_hiobject(in_uielement)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AXUIElementGetHIObject, JNI.env, self.jni_id, in_uielement.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AXUIElementGetDataBrowserItemInfo, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, DataBrowserAccessibilityItemInfo] }
      def _axuielement_get_data_browser_item_info(in_element, in_data_browser, in_desired_info_version, out_info)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AXUIElementGetDataBrowserItemInfo, JNI.env, self.jni_id, in_element.to_int, in_data_browser.to_int, in_desired_info_version.to_int, out_info.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AXValueCreate, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, CFRange] }
      def _axvalue_create(the_type, range)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AXValueCreate, JNI.env, self.jni_id, the_type.to_int, range.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AXValueGetValue, [:pointer, :long, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, CFRange] }
      def _axvalue_get_value(value, the_type, range)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AXValueGetValue, JNI.env, self.jni_id, value.to_int, the_type.to_int, range.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIObjectSetAccessibilityIgnored, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def _hiobject_set_accessibility_ignored(in_object, in_ignored)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIObjectSetAccessibilityIgnored, JNI.env, self.jni_id, in_object.to_int, in_ignored ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_HIObjectSetAuxiliaryAccessibilityAttribute, [:pointer, :long, :int32, :int64, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int] }
      def _hiobject_set_auxiliary_accessibility_attribute(in_hiobject, in_identifier, in_attribute_name, in_attribute_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_HIObjectSetAuxiliaryAccessibilityAttribute, JNI.env, self.jni_id, in_hiobject.to_int, in_identifier.to_int, in_attribute_name.to_int, in_attribute_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_carbon_OS_AXUIElementCopyAttributeValue, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _axuielement_copy_attribute_value(element, attribute, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_carbon_OS_AXUIElementCopyAttributeValue, JNI.env, self.jni_id, element.to_int, attribute.to_int, value.jni_id)
      end
      
      const_set_lazy(:K_EventClassAccessibility) { (Character.new(?a.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?c.ord) << 8) + Character.new(?e.ord) }
      const_attr_reader  :K_EventClassAccessibility
      
      const_set_lazy(:K_EventAccessibleGetChildAtPoint) { 1 }
      const_attr_reader  :K_EventAccessibleGetChildAtPoint
      
      const_set_lazy(:K_EventAccessibleGetFocusedChild) { 2 }
      const_attr_reader  :K_EventAccessibleGetFocusedChild
      
      const_set_lazy(:K_EventAccessibleGetAllAttributeNames) { 21 }
      const_attr_reader  :K_EventAccessibleGetAllAttributeNames
      
      const_set_lazy(:K_EventAccessibleGetAllParameterizedAttributeNames) { 25 }
      const_attr_reader  :K_EventAccessibleGetAllParameterizedAttributeNames
      
      const_set_lazy(:K_EventAccessibleGetNamedAttribute) { 22 }
      const_attr_reader  :K_EventAccessibleGetNamedAttribute
      
      const_set_lazy(:K_EventAccessibleSetNamedAttribute) { 23 }
      const_attr_reader  :K_EventAccessibleSetNamedAttribute
      
      const_set_lazy(:K_EventAccessibleIsNamedAttributeSettable) { 24 }
      const_attr_reader  :K_EventAccessibleIsNamedAttributeSettable
      
      const_set_lazy(:K_EventAccessibleGetAllActionNames) { 41 }
      const_attr_reader  :K_EventAccessibleGetAllActionNames
      
      const_set_lazy(:K_EventAccessiblePerformNamedAction) { 42 }
      const_attr_reader  :K_EventAccessiblePerformNamedAction
      
      const_set_lazy(:K_EventAccessibleGetNamedActionDescription) { 44 }
      const_attr_reader  :K_EventAccessibleGetNamedActionDescription
      
      const_set_lazy(:K_EventParamAccessibleObject) { (Character.new(?a.ord) << 24) + (Character.new(?o.ord) << 16) + (Character.new(?b.ord) << 8) + Character.new(?j.ord) }
      const_attr_reader  :K_EventParamAccessibleObject
      
      const_set_lazy(:K_EventParamAccessibleChild) { (Character.new(?a.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?h.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :K_EventParamAccessibleChild
      
      const_set_lazy(:K_EventParamAccessibleAttributeName) { (Character.new(?a.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?m.ord) }
      const_attr_reader  :K_EventParamAccessibleAttributeName
      
      const_set_lazy(:K_EventParamAccessibleAttributeNames) { (Character.new(?a.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?s.ord) }
      const_attr_reader  :K_EventParamAccessibleAttributeNames
      
      const_set_lazy(:K_EventParamAccessibleAttributeValue) { (Character.new(?a.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?v.ord) << 8) + Character.new(?l.ord) }
      const_attr_reader  :K_EventParamAccessibleAttributeValue
      
      const_set_lazy(:K_EventParamAccessibleAttributeSettable) { (Character.new(?a.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?s.ord) << 8) + Character.new(?t.ord) }
      const_attr_reader  :K_EventParamAccessibleAttributeSettable
      
      const_set_lazy(:K_EventParamAccessibleAttributeParameter) { (Character.new(?a.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?p.ord) << 8) + Character.new(?a.ord) }
      const_attr_reader  :K_EventParamAccessibleAttributeParameter
      
      const_set_lazy(:K_EventParamAccessibleActionName) { (Character.new(?a.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?m.ord) }
      const_attr_reader  :K_EventParamAccessibleActionName
      
      const_set_lazy(:K_EventParamAccessibleActionNames) { (Character.new(?a.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?n.ord) << 8) + Character.new(?s.ord) }
      const_attr_reader  :K_EventParamAccessibleActionNames
      
      const_set_lazy(:K_EventParamAccessibleActionDescription) { (Character.new(?a.ord) << 24) + (Character.new(?c.ord) << 16) + (Character.new(?d.ord) << 8) + Character.new(?s.ord) }
      const_attr_reader  :K_EventParamAccessibleActionDescription
      
      const_set_lazy(:K_EventParamAccessibleEventQueued) { (Character.new(?a.ord) << 24) + (Character.new(?e.ord) << 16) + (Character.new(?q.ord) << 8) + Character.new(?u.ord) }
      const_attr_reader  :K_EventParamAccessibleEventQueued
      
      const_set_lazy(:K_AXApplicationRole) { "AXApplication" }
      const_attr_reader  :K_AXApplicationRole
      
      const_set_lazy(:K_AXSystemWideRole) { "AXSystemWide" }
      const_attr_reader  :K_AXSystemWideRole
      
      const_set_lazy(:K_AXWindowRole) { "AXWindow" }
      const_attr_reader  :K_AXWindowRole
      
      const_set_lazy(:K_AXSheetRole) { "AXSheet" }
      const_attr_reader  :K_AXSheetRole
      
      const_set_lazy(:K_AXDrawerRole) { "AXDrawer" }
      const_attr_reader  :K_AXDrawerRole
      
      const_set_lazy(:K_AXGrowAreaRole) { "AXGrowArea" }
      const_attr_reader  :K_AXGrowAreaRole
      
      const_set_lazy(:K_AXImageRole) { "AXImage" }
      const_attr_reader  :K_AXImageRole
      
      const_set_lazy(:K_AXUnknownRole) { "AXUnknown" }
      const_attr_reader  :K_AXUnknownRole
      
      const_set_lazy(:K_AXButtonRole) { "AXButton" }
      const_attr_reader  :K_AXButtonRole
      
      const_set_lazy(:K_AXRadioButtonRole) { "AXRadioButton" }
      const_attr_reader  :K_AXRadioButtonRole
      
      const_set_lazy(:K_AXCheckBoxRole) { "AXCheckBox" }
      const_attr_reader  :K_AXCheckBoxRole
      
      const_set_lazy(:K_AXPopUpButtonRole) { "AXPopUpButton" }
      const_attr_reader  :K_AXPopUpButtonRole
      
      const_set_lazy(:K_AXMenuButtonRole) { "AXMenuButton" }
      const_attr_reader  :K_AXMenuButtonRole
      
      const_set_lazy(:K_AXTabGroupRole) { "AXTabGroup" }
      const_attr_reader  :K_AXTabGroupRole
      
      const_set_lazy(:K_AXTableRole) { "AXTable" }
      const_attr_reader  :K_AXTableRole
      
      const_set_lazy(:K_AXColumnRole) { "AXColumn" }
      const_attr_reader  :K_AXColumnRole
      
      const_set_lazy(:K_AXRowRole) { "AXRow" }
      const_attr_reader  :K_AXRowRole
      
      const_set_lazy(:K_AXOutlineRole) { "AXOutline" }
      const_attr_reader  :K_AXOutlineRole
      
      const_set_lazy(:K_AXBrowserRole) { "AXBrowser" }
      const_attr_reader  :K_AXBrowserRole
      
      const_set_lazy(:K_AXScrollAreaRole) { "AXScrollArea" }
      const_attr_reader  :K_AXScrollAreaRole
      
      const_set_lazy(:K_AXScrollBarRole) { "AXScrollBar" }
      const_attr_reader  :K_AXScrollBarRole
      
      const_set_lazy(:K_AXRadioGroupRole) { "AXRadioGroup" }
      const_attr_reader  :K_AXRadioGroupRole
      
      const_set_lazy(:K_AXListRole) { "AXList" }
      const_attr_reader  :K_AXListRole
      
      const_set_lazy(:K_AXGroupRole) { "AXGroup" }
      const_attr_reader  :K_AXGroupRole
      
      const_set_lazy(:K_AXValueIndicatorRole) { "AXValueIndicator" }
      const_attr_reader  :K_AXValueIndicatorRole
      
      const_set_lazy(:K_AXComboBoxRole) { "AXComboBox" }
      const_attr_reader  :K_AXComboBoxRole
      
      const_set_lazy(:K_AXSliderRole) { "AXSlider" }
      const_attr_reader  :K_AXSliderRole
      
      const_set_lazy(:K_AXIncrementorRole) { "AXIncrementor" }
      const_attr_reader  :K_AXIncrementorRole
      
      const_set_lazy(:K_AXBusyIndicatorRole) { "AXBusyIndicator" }
      const_attr_reader  :K_AXBusyIndicatorRole
      
      const_set_lazy(:K_AXProgressIndicatorRole) { "AXProgressIndicator" }
      const_attr_reader  :K_AXProgressIndicatorRole
      
      const_set_lazy(:K_AXRelevanceIndicatorRole) { "AXRelevanceIndicator" }
      const_attr_reader  :K_AXRelevanceIndicatorRole
      
      const_set_lazy(:K_AXToolbarRole) { "AXToolbar" }
      const_attr_reader  :K_AXToolbarRole
      
      const_set_lazy(:K_AXDisclosureTriangleRole) { "AXDisclosureTriangle" }
      const_attr_reader  :K_AXDisclosureTriangleRole
      
      const_set_lazy(:K_AXTextFieldRole) { "AXTextField" }
      const_attr_reader  :K_AXTextFieldRole
      
      const_set_lazy(:K_AXTextAreaRole) { "AXTextArea" }
      const_attr_reader  :K_AXTextAreaRole
      
      const_set_lazy(:K_AXStaticTextRole) { "AXStaticText" }
      const_attr_reader  :K_AXStaticTextRole
      
      const_set_lazy(:K_AXMenuBarRole) { "AXMenuBar" }
      const_attr_reader  :K_AXMenuBarRole
      
      const_set_lazy(:K_AXMenuBarItemRole) { "AXMenuBarItem" }
      const_attr_reader  :K_AXMenuBarItemRole
      
      const_set_lazy(:K_AXMenuRole) { "AXMenu" }
      const_attr_reader  :K_AXMenuRole
      
      const_set_lazy(:K_AXMenuItemRole) { "AXMenuItem" }
      const_attr_reader  :K_AXMenuItemRole
      
      const_set_lazy(:K_AXSplitGroupRole) { "AXSplitGroup" }
      const_attr_reader  :K_AXSplitGroupRole
      
      const_set_lazy(:K_AXSplitterRole) { "AXSplitter" }
      const_attr_reader  :K_AXSplitterRole
      
      const_set_lazy(:K_AXColorWellRole) { "AXColorWell" }
      const_attr_reader  :K_AXColorWellRole
      
      const_set_lazy(:K_AXTimeFieldRole) { "AXTimeField" }
      const_attr_reader  :K_AXTimeFieldRole
      
      const_set_lazy(:K_AXDateFieldRole) { "AXDateField" }
      const_attr_reader  :K_AXDateFieldRole
      
      const_set_lazy(:K_AXHelpTagRole) { "AXHelpTag" }
      const_attr_reader  :K_AXHelpTagRole
      
      const_set_lazy(:K_AXMatteRole) { "AXMatteRole" }
      const_attr_reader  :K_AXMatteRole
      
      const_set_lazy(:K_AXDockItemRole) { "AXDockItem" }
      const_attr_reader  :K_AXDockItemRole
      
      const_set_lazy(:K_AXLinkRole) { "AXLink" }
      const_attr_reader  :K_AXLinkRole
      
      # as seen in Safari
      const_set_lazy(:K_AXCloseButtonSubrole) { "AXCloseButton" }
      const_attr_reader  :K_AXCloseButtonSubrole
      
      const_set_lazy(:K_AXMinimizeButtonSubrole) { "AXMinimizeButton" }
      const_attr_reader  :K_AXMinimizeButtonSubrole
      
      const_set_lazy(:K_AXZoomButtonSubrole) { "AXZoomButton" }
      const_attr_reader  :K_AXZoomButtonSubrole
      
      const_set_lazy(:K_AXToolbarButtonSubrole) { "AXToolbarButton" }
      const_attr_reader  :K_AXToolbarButtonSubrole
      
      const_set_lazy(:K_AXSecureTextFieldSubrole) { "AXSecureTextField" }
      const_attr_reader  :K_AXSecureTextFieldSubrole
      
      const_set_lazy(:K_AXTableRowSubrole) { "AXTableRow" }
      const_attr_reader  :K_AXTableRowSubrole
      
      const_set_lazy(:K_AXOutlineRowSubrole) { "AXOutlineRow" }
      const_attr_reader  :K_AXOutlineRowSubrole
      
      const_set_lazy(:K_AXUnknownSubrole) { "AXUnknown" }
      const_attr_reader  :K_AXUnknownSubrole
      
      const_set_lazy(:K_AXStandardWindowSubrole) { "AXStandardWindow" }
      const_attr_reader  :K_AXStandardWindowSubrole
      
      const_set_lazy(:K_AXDialogSubrole) { "AXDialog" }
      const_attr_reader  :K_AXDialogSubrole
      
      const_set_lazy(:K_AXSystemDialogSubrole) { "AXSystemDialog" }
      const_attr_reader  :K_AXSystemDialogSubrole
      
      const_set_lazy(:K_AXFloatingWindowSubrole) { "AXFloatingWindow" }
      const_attr_reader  :K_AXFloatingWindowSubrole
      
      const_set_lazy(:K_AXSystemFloatingWindowSubrole) { "AXSystemFloatingWindow" }
      const_attr_reader  :K_AXSystemFloatingWindowSubrole
      
      const_set_lazy(:K_AXIncrementArrowSubrole) { "AXIncrementArrow" }
      const_attr_reader  :K_AXIncrementArrowSubrole
      
      const_set_lazy(:K_AXDecrementArrowSubrole) { "AXDecrementArrow" }
      const_attr_reader  :K_AXDecrementArrowSubrole
      
      const_set_lazy(:K_AXIncrementPageSubrole) { "AXIncrementPage" }
      const_attr_reader  :K_AXIncrementPageSubrole
      
      const_set_lazy(:K_AXDecrementPageSubrole) { "AXDecrementPage" }
      const_attr_reader  :K_AXDecrementPageSubrole
      
      const_set_lazy(:K_AXSortButtonSubrole) { "AXSortButton" }
      const_attr_reader  :K_AXSortButtonSubrole
      
      const_set_lazy(:K_AXSearchFieldSubrole) { "AXSearchField" }
      const_attr_reader  :K_AXSearchFieldSubrole
      
      const_set_lazy(:K_AXApplicationDockItemSubrole) { "AXApplicationDockItem" }
      const_attr_reader  :K_AXApplicationDockItemSubrole
      
      const_set_lazy(:K_AXDocumentDockItemSubrole) { "AXDocumentDockItem" }
      const_attr_reader  :K_AXDocumentDockItemSubrole
      
      const_set_lazy(:K_AXFolderDockItemSubrole) { "AXFolderDockItem" }
      const_attr_reader  :K_AXFolderDockItemSubrole
      
      const_set_lazy(:K_AXMinimizedWindowDockItemSubrole) { "AXMinimizedWindowDockItem" }
      const_attr_reader  :K_AXMinimizedWindowDockItemSubrole
      
      const_set_lazy(:K_AXURLDockItemSubrole) { "AXURLDockItem" }
      const_attr_reader  :K_AXURLDockItemSubrole
      
      const_set_lazy(:K_AXDockExtraDockItemSubrole) { "AXDockExtraDockItem" }
      const_attr_reader  :K_AXDockExtraDockItemSubrole
      
      const_set_lazy(:K_AXTrashDockItemSubrole) { "AXTrashDockItem" }
      const_attr_reader  :K_AXTrashDockItemSubrole
      
      const_set_lazy(:K_AXProcessSwitcherListSubrole) { "AXProcessSwitcherList" }
      const_attr_reader  :K_AXProcessSwitcherListSubrole
      
      # General attributes
      const_set_lazy(:K_AXRoleAttribute) { "AXRole" }
      const_attr_reader  :K_AXRoleAttribute
      
      const_set_lazy(:K_AXSubroleAttribute) { "AXSubrole" }
      const_attr_reader  :K_AXSubroleAttribute
      
      const_set_lazy(:K_AXRoleDescriptionAttribute) { "AXRoleDescription" }
      const_attr_reader  :K_AXRoleDescriptionAttribute
      
      const_set_lazy(:K_AXHelpAttribute) { "AXHelp" }
      const_attr_reader  :K_AXHelpAttribute
      
      const_set_lazy(:K_AXTitleAttribute) { "AXTitle" }
      const_attr_reader  :K_AXTitleAttribute
      
      const_set_lazy(:K_AXValueAttribute) { "AXValue" }
      const_attr_reader  :K_AXValueAttribute
      
      const_set_lazy(:K_AXMinValueAttribute) { "AXMinValue" }
      const_attr_reader  :K_AXMinValueAttribute
      
      const_set_lazy(:K_AXMaxValueAttribute) { "AXMaxValue" }
      const_attr_reader  :K_AXMaxValueAttribute
      
      const_set_lazy(:K_AXValueIncrementAttribute) { "AXValueIncrement" }
      const_attr_reader  :K_AXValueIncrementAttribute
      
      const_set_lazy(:K_AXAllowedValuesAttribute) { "AXAllowedValues" }
      const_attr_reader  :K_AXAllowedValuesAttribute
      
      const_set_lazy(:K_AXEnabledAttribute) { "AXEnabled" }
      const_attr_reader  :K_AXEnabledAttribute
      
      const_set_lazy(:K_AXFocusedAttribute) { "AXFocused" }
      const_attr_reader  :K_AXFocusedAttribute
      
      const_set_lazy(:K_AXParentAttribute) { "AXParent" }
      const_attr_reader  :K_AXParentAttribute
      
      const_set_lazy(:K_AXChildrenAttribute) { "AXChildren" }
      const_attr_reader  :K_AXChildrenAttribute
      
      const_set_lazy(:K_AXSelectedChildrenAttribute) { "AXSelectedChildren" }
      const_attr_reader  :K_AXSelectedChildrenAttribute
      
      const_set_lazy(:K_AXVisibleChildrenAttribute) { "AXVisibleChildren" }
      const_attr_reader  :K_AXVisibleChildrenAttribute
      
      const_set_lazy(:K_AXWindowAttribute) { "AXWindow" }
      const_attr_reader  :K_AXWindowAttribute
      
      const_set_lazy(:K_AXTopLevelUIElementAttribute) { "AXTopLevelUIElement" }
      const_attr_reader  :K_AXTopLevelUIElementAttribute
      
      const_set_lazy(:K_AXPositionAttribute) { "AXPosition" }
      const_attr_reader  :K_AXPositionAttribute
      
      const_set_lazy(:K_AXSizeAttribute) { "AXSize" }
      const_attr_reader  :K_AXSizeAttribute
      
      const_set_lazy(:K_AXOrientationAttribute) { "AXOrientation" }
      const_attr_reader  :K_AXOrientationAttribute
      
      const_set_lazy(:K_AXDescriptionAttribute) { "AXDescription" }
      const_attr_reader  :K_AXDescriptionAttribute
      
      # Text-specific attributes
      const_set_lazy(:K_AXSelectedTextAttribute) { "AXSelectedText" }
      const_attr_reader  :K_AXSelectedTextAttribute
      
      const_set_lazy(:K_AXVisibleCharacterRangeAttribute) { "AXVisibleCharacterRange" }
      const_attr_reader  :K_AXVisibleCharacterRangeAttribute
      
      const_set_lazy(:K_AXSelectedTextRangeAttribute) { "AXSelectedTextRange" }
      const_attr_reader  :K_AXSelectedTextRangeAttribute
      
      const_set_lazy(:K_AXNumberOfCharactersAttribute) { "AXNumberOfCharacters" }
      const_attr_reader  :K_AXNumberOfCharactersAttribute
      
      const_set_lazy(:K_AXSharedTextUIElementsAttribute) { "AXSharedTextUIElements" }
      const_attr_reader  :K_AXSharedTextUIElementsAttribute
      
      const_set_lazy(:K_AXSharedCharacterRangeAttribute) { "AXSharedCharacterRange" }
      const_attr_reader  :K_AXSharedCharacterRangeAttribute
      
      # Window-specific attributes
      const_set_lazy(:K_AXMainAttribute) { "AXMain" }
      const_attr_reader  :K_AXMainAttribute
      
      const_set_lazy(:K_AXMinimizedAttribute) { "AXMinimized" }
      const_attr_reader  :K_AXMinimizedAttribute
      
      const_set_lazy(:K_AXCloseButtonAttribute) { "AXCloseButton" }
      const_attr_reader  :K_AXCloseButtonAttribute
      
      const_set_lazy(:K_AXZoomButtonAttribute) { "AXZoomButton" }
      const_attr_reader  :K_AXZoomButtonAttribute
      
      const_set_lazy(:K_AXMinimizeButtonAttribute) { "AXMinimizeButton" }
      const_attr_reader  :K_AXMinimizeButtonAttribute
      
      const_set_lazy(:K_AXToolbarButtonAttribute) { "AXToolbarButton" }
      const_attr_reader  :K_AXToolbarButtonAttribute
      
      const_set_lazy(:K_AXGrowAreaAttribute) { "AXGrowArea" }
      const_attr_reader  :K_AXGrowAreaAttribute
      
      const_set_lazy(:K_AXProxyAttribute) { "AXProxy" }
      const_attr_reader  :K_AXProxyAttribute
      
      const_set_lazy(:K_AXModalAttribute) { "AXModal" }
      const_attr_reader  :K_AXModalAttribute
      
      const_set_lazy(:K_AXDefaultButtonAttribute) { "AXDefaultButton" }
      const_attr_reader  :K_AXDefaultButtonAttribute
      
      const_set_lazy(:K_AXCancelButtonAttribute) { "AXCancelButton" }
      const_attr_reader  :K_AXCancelButtonAttribute
      
      # Menu-specific attributes
      const_set_lazy(:K_AXMenuItemCmdCharAttribute) { "AXMenuItemCmdChar" }
      const_attr_reader  :K_AXMenuItemCmdCharAttribute
      
      const_set_lazy(:K_AXMenuItemCmdVirtualKeyAttribute) { "AXMenuItemCmdVirtualKey" }
      const_attr_reader  :K_AXMenuItemCmdVirtualKeyAttribute
      
      const_set_lazy(:K_AXMenuItemCmdGlyphAttribute) { "AXMenuItemCmdGlyph" }
      const_attr_reader  :K_AXMenuItemCmdGlyphAttribute
      
      const_set_lazy(:K_AXMenuItemCmdModifiersAttribute) { "AXMenuItemCmdModifiers" }
      const_attr_reader  :K_AXMenuItemCmdModifiersAttribute
      
      const_set_lazy(:K_AXMenuItemMarkCharAttribute) { "AXMenuItemMarkChar" }
      const_attr_reader  :K_AXMenuItemMarkCharAttribute
      
      const_set_lazy(:K_AXMenuItemPrimaryUIElementAttribute) { "AXMenuItemPrimaryUIElement" }
      const_attr_reader  :K_AXMenuItemPrimaryUIElementAttribute
      
      # Application-specific attributes
      const_set_lazy(:K_AXMenuBarAttribute) { "AXMenuBar" }
      const_attr_reader  :K_AXMenuBarAttribute
      
      const_set_lazy(:K_AXWindowsAttribute) { "AXWindows" }
      const_attr_reader  :K_AXWindowsAttribute
      
      const_set_lazy(:K_AXFrontmostAttribute) { "AXFrontmost" }
      const_attr_reader  :K_AXFrontmostAttribute
      
      const_set_lazy(:K_AXHiddenAttribute) { "AXHidden" }
      const_attr_reader  :K_AXHiddenAttribute
      
      const_set_lazy(:K_AXMainWindowAttribute) { "AXMainWindow" }
      const_attr_reader  :K_AXMainWindowAttribute
      
      const_set_lazy(:K_AXFocusedWindowAttribute) { "AXFocusedWindow" }
      const_attr_reader  :K_AXFocusedWindowAttribute
      
      const_set_lazy(:K_AXFocusedUIElementAttribute) { "AXFocusedUIElement" }
      const_attr_reader  :K_AXFocusedUIElementAttribute
      
      # Miscellaneous attributes
      const_set_lazy(:K_AXHeaderAttribute) { "AXHeader" }
      const_attr_reader  :K_AXHeaderAttribute
      
      const_set_lazy(:K_AXEditedAttribute) { "AXEdited" }
      const_attr_reader  :K_AXEditedAttribute
      
      const_set_lazy(:K_AXValueWrapsAttribute) { "AXValueWraps" }
      const_attr_reader  :K_AXValueWrapsAttribute
      
      const_set_lazy(:K_AXTabsAttribute) { "AXTabs" }
      const_attr_reader  :K_AXTabsAttribute
      
      const_set_lazy(:K_AXTitleUIElementAttribute) { "AXTitleUIElement" }
      const_attr_reader  :K_AXTitleUIElementAttribute
      
      const_set_lazy(:K_AXHorizontalScrollBarAttribute) { "AXHorizontalScrollBar" }
      const_attr_reader  :K_AXHorizontalScrollBarAttribute
      
      const_set_lazy(:K_AXVerticalScrollBarAttribute) { "AXVerticalScrollBar" }
      const_attr_reader  :K_AXVerticalScrollBarAttribute
      
      const_set_lazy(:K_AXOverflowButtonAttribute) { "AXOverflowButton" }
      const_attr_reader  :K_AXOverflowButtonAttribute
      
      const_set_lazy(:K_AXFilenameAttribute) { "AXFilename" }
      const_attr_reader  :K_AXFilenameAttribute
      
      const_set_lazy(:K_AXExpandedAttribute) { "AXExpanded" }
      const_attr_reader  :K_AXExpandedAttribute
      
      const_set_lazy(:K_AXSelectedAttribute) { "AXSelected" }
      const_attr_reader  :K_AXSelectedAttribute
      
      const_set_lazy(:K_AXSplittersAttribute) { "AXSplitters" }
      const_attr_reader  :K_AXSplittersAttribute
      
      const_set_lazy(:K_AXNextContentsAttribute) { "AXNextContents" }
      const_attr_reader  :K_AXNextContentsAttribute
      
      const_set_lazy(:K_AXDocumentAttribute) { "AXDocument" }
      const_attr_reader  :K_AXDocumentAttribute
      
      const_set_lazy(:K_AXDecrementButtonAttribute) { "AXDecrementButton" }
      const_attr_reader  :K_AXDecrementButtonAttribute
      
      const_set_lazy(:K_AXIncrementButtonAttribute) { "AXIncrementButton" }
      const_attr_reader  :K_AXIncrementButtonAttribute
      
      const_set_lazy(:K_AXPreviousContentsAttribute) { "AXPreviousContents" }
      const_attr_reader  :K_AXPreviousContentsAttribute
      
      const_set_lazy(:K_AXContentsAttribute) { "AXContents" }
      const_attr_reader  :K_AXContentsAttribute
      
      const_set_lazy(:K_AXIncrementorAttribute) { "AXIncrementor" }
      const_attr_reader  :K_AXIncrementorAttribute
      
      const_set_lazy(:K_AXHourFieldAttribute) { "AXHourField" }
      const_attr_reader  :K_AXHourFieldAttribute
      
      const_set_lazy(:K_AXMinuteFieldAttribute) { "AXMinuteField" }
      const_attr_reader  :K_AXMinuteFieldAttribute
      
      const_set_lazy(:K_AXSecondFieldAttribute) { "AXSecondField" }
      const_attr_reader  :K_AXSecondFieldAttribute
      
      const_set_lazy(:K_AXAMPMFieldAttribute) { "AXAMPMField" }
      const_attr_reader  :K_AXAMPMFieldAttribute
      
      const_set_lazy(:K_AXDayFieldAttribute) { "AXDayField" }
      const_attr_reader  :K_AXDayFieldAttribute
      
      const_set_lazy(:K_AXMonthFieldAttribute) { "AXMonthField" }
      const_attr_reader  :K_AXMonthFieldAttribute
      
      const_set_lazy(:K_AXYearFieldAttribute) { "AXYearField" }
      const_attr_reader  :K_AXYearFieldAttribute
      
      const_set_lazy(:K_AXColumnTitleAttribute) { "AXColumnTitles" }
      const_attr_reader  :K_AXColumnTitleAttribute
      
      const_set_lazy(:K_AXURLAttribute) { "AXURL" }
      const_attr_reader  :K_AXURLAttribute
      
      const_set_lazy(:K_AXLabelUIElementsAttribute) { "AXLabelUIElements" }
      const_attr_reader  :K_AXLabelUIElementsAttribute
      
      const_set_lazy(:K_AXLabelValueAttribute) { "AXLabelValue" }
      const_attr_reader  :K_AXLabelValueAttribute
      
      const_set_lazy(:K_AXShownMenuUIElementAttribute) { "AXShownMenuUIElement" }
      const_attr_reader  :K_AXShownMenuUIElementAttribute
      
      const_set_lazy(:K_AXServesAsTitleForUIElementsAttribute) { "AXServesAsTitleForUIElements" }
      const_attr_reader  :K_AXServesAsTitleForUIElementsAttribute
      
      const_set_lazy(:K_AXLinkedUIElementsAttribute) { "AXLinkedUIElements" }
      const_attr_reader  :K_AXLinkedUIElementsAttribute
      
      # Table and outline view attributes
      const_set_lazy(:K_AXRowsAttribute) { "AXRows" }
      const_attr_reader  :K_AXRowsAttribute
      
      const_set_lazy(:K_AXVisibleRowsAttribute) { "AXVisibleRows" }
      const_attr_reader  :K_AXVisibleRowsAttribute
      
      const_set_lazy(:K_AXSelectedRowsAttribute) { "AXSelectedRows" }
      const_attr_reader  :K_AXSelectedRowsAttribute
      
      const_set_lazy(:K_AXColumnsAttribute) { "AXColumns" }
      const_attr_reader  :K_AXColumnsAttribute
      
      const_set_lazy(:K_AXVisibleColumnsAttribute) { "AXVisibleColumns" }
      const_attr_reader  :K_AXVisibleColumnsAttribute
      
      const_set_lazy(:K_AXSelectedColumnsAttribute) { "AXSelectedColumns" }
      const_attr_reader  :K_AXSelectedColumnsAttribute
      
      const_set_lazy(:K_AXSortDirectionAttribute) { "AXSortDirection" }
      const_attr_reader  :K_AXSortDirectionAttribute
      
      const_set_lazy(:K_AXColumnHeaderUIElementsAttribute) { "AXColumnHeaderUIElements" }
      const_attr_reader  :K_AXColumnHeaderUIElementsAttribute
      
      const_set_lazy(:K_AXIndexAttribute) { "AXIndex" }
      const_attr_reader  :K_AXIndexAttribute
      
      const_set_lazy(:K_AXDisclosingAttribute) { "AXDisclosing" }
      const_attr_reader  :K_AXDisclosingAttribute
      
      const_set_lazy(:K_AXDisclosedRowsAttribute) { "AXDisclosedRows" }
      const_attr_reader  :K_AXDisclosedRowsAttribute
      
      const_set_lazy(:K_AXDisclosedByRowAttribute) { "AXDisclosedByRow" }
      const_attr_reader  :K_AXDisclosedByRowAttribute
      
      # Matte attributes
      const_set_lazy(:K_AXMatteHoleAttribute) { "AXMatteHole" }
      const_attr_reader  :K_AXMatteHoleAttribute
      
      const_set_lazy(:K_AXMatteContentUIElementAttribute) { "AXMatteContentUIElement" }
      const_attr_reader  :K_AXMatteContentUIElementAttribute
      
      # Dock attributes
      const_set_lazy(:K_AXIsApplicationRunningAttribute) { "AXIsApplicationRunning" }
      const_attr_reader  :K_AXIsApplicationRunningAttribute
      
      # System-wide attributes
      const_set_lazy(:K_AXFocusedApplicationAttribute) { "AXFocusedApplication" }
      const_attr_reader  :K_AXFocusedApplicationAttribute
      
      # Text-suite parameterized attributes
      const_set_lazy(:K_AXLineForIndexParameterizedAttribute) { "AXLineForIndex" }
      const_attr_reader  :K_AXLineForIndexParameterizedAttribute
      
      const_set_lazy(:K_AXRangeForLineParameterizedAttribute) { "AXRangeForLine" }
      const_attr_reader  :K_AXRangeForLineParameterizedAttribute
      
      const_set_lazy(:K_AXStringForRangeParameterizedAttribute) { "AXStringForRange" }
      const_attr_reader  :K_AXStringForRangeParameterizedAttribute
      
      const_set_lazy(:K_AXRangeForPositionParameterizedAttribute) { "AXRangeForPosition" }
      const_attr_reader  :K_AXRangeForPositionParameterizedAttribute
      
      const_set_lazy(:K_AXRangeForIndexParameterizedAttribute) { "AXRangeForIndex" }
      const_attr_reader  :K_AXRangeForIndexParameterizedAttribute
      
      const_set_lazy(:K_AXBoundsForRangeParameterizedAttribute) { "AXBoundsForRange" }
      const_attr_reader  :K_AXBoundsForRangeParameterizedAttribute
      
      const_set_lazy(:K_AXRTFForRangeParameterizedAttribute) { "AXRTFForRange" }
      const_attr_reader  :K_AXRTFForRangeParameterizedAttribute
      
      const_set_lazy(:K_AXAttributedStringForRangeParameterizedAttribute) { "AXAttributedStringForRange" }
      const_attr_reader  :K_AXAttributedStringForRangeParameterizedAttribute
      
      const_set_lazy(:K_AXStyleRangeForIndexParameterizedAttribute) { "AXStyleRangeForIndex" }
      const_attr_reader  :K_AXStyleRangeForIndexParameterizedAttribute
      
      const_set_lazy(:K_AXInsertionPointLineNumberAttribute) { "AXInsertionPointLineNumber" }
      const_attr_reader  :K_AXInsertionPointLineNumberAttribute
      
      # Accessibility actions.
      const_set_lazy(:K_AXPressAction) { "AXPress" }
      const_attr_reader  :K_AXPressAction
      
      const_set_lazy(:K_AXIncrementAction) { "AXIncrement" }
      const_attr_reader  :K_AXIncrementAction
      
      const_set_lazy(:K_AXDecrementAction) { "AXDecrement" }
      const_attr_reader  :K_AXDecrementAction
      
      const_set_lazy(:K_AXConfirmAction) { "AXConfirm" }
      const_attr_reader  :K_AXConfirmAction
      
      const_set_lazy(:K_AXCancelAction) { "AXCancel" }
      const_attr_reader  :K_AXCancelAction
      
      const_set_lazy(:K_AXRaiseAction) { "AXRaise" }
      const_attr_reader  :K_AXRaiseAction
      
      const_set_lazy(:K_AXShowMenuAction) { "AXShowMenu" }
      const_attr_reader  :K_AXShowMenuAction
      
      # Focus notifications
      const_set_lazy(:K_AXMainWindowChangedNotification) { "AXMainWindowChanged" }
      const_attr_reader  :K_AXMainWindowChangedNotification
      
      const_set_lazy(:K_AXFocusedWindowChangedNotification) { "AXFocusedWindowChanged" }
      const_attr_reader  :K_AXFocusedWindowChangedNotification
      
      const_set_lazy(:K_AXFocusedUIElementChangedNotification) { "AXFocusedUIElementChanged" }
      const_attr_reader  :K_AXFocusedUIElementChangedNotification
      
      # Application notifications
      const_set_lazy(:K_AXApplicationActivatedNotification) { "AXApplicationActivated" }
      const_attr_reader  :K_AXApplicationActivatedNotification
      
      const_set_lazy(:K_AXApplicationDeactivatedNotification) { "AXApplicationDeactivated" }
      const_attr_reader  :K_AXApplicationDeactivatedNotification
      
      const_set_lazy(:K_AXApplicationHiddenNotification) { "AXApplicationHidden" }
      const_attr_reader  :K_AXApplicationHiddenNotification
      
      const_set_lazy(:K_AXApplicationShownNotification) { "AXApplicationShown" }
      const_attr_reader  :K_AXApplicationShownNotification
      
      # Window notifications
      const_set_lazy(:K_AXWindowCreatedNotification) { "AXWindowCreated" }
      const_attr_reader  :K_AXWindowCreatedNotification
      
      const_set_lazy(:K_AXWindowMovedNotification) { "AXWindowMoved" }
      const_attr_reader  :K_AXWindowMovedNotification
      
      const_set_lazy(:K_AXWindowResizedNotification) { "AXWindowResized" }
      const_attr_reader  :K_AXWindowResizedNotification
      
      const_set_lazy(:K_AXWindowMiniaturizedNotification) { "AXWindowMiniaturized" }
      const_attr_reader  :K_AXWindowMiniaturizedNotification
      
      const_set_lazy(:K_AXWindowDeminiaturizedNotification) { "AXWindowDeminiaturized" }
      const_attr_reader  :K_AXWindowDeminiaturizedNotification
      
      # New drawer, sheet, and help tag notifications
      const_set_lazy(:K_AXDrawerCreatedNotification) { "AXDrawerCreated" }
      const_attr_reader  :K_AXDrawerCreatedNotification
      
      const_set_lazy(:K_AXSheetCreatedNotification) { "AXSheetCreated" }
      const_attr_reader  :K_AXSheetCreatedNotification
      
      const_set_lazy(:K_AXHelpTagCreatedNotification) { "AXHelpTagCreated" }
      const_attr_reader  :K_AXHelpTagCreatedNotification
      
      # Element notifications
      const_set_lazy(:K_AXValueChangedNotification) { "AXValueChanged" }
      const_attr_reader  :K_AXValueChangedNotification
      
      const_set_lazy(:K_AXUIElementDestroyedNotification) { "AXUIElementDestroyed" }
      const_attr_reader  :K_AXUIElementDestroyedNotification
      
      # Menu notifications
      const_set_lazy(:K_AXMenuOpenedNotification) { "AXMenuOpened" }
      const_attr_reader  :K_AXMenuOpenedNotification
      
      const_set_lazy(:K_AXMenuClosedNotification) { "AXMenuClosed" }
      const_attr_reader  :K_AXMenuClosedNotification
      
      const_set_lazy(:K_AXMenuItemSelectedNotification) { "AXMenuItemSelected" }
      const_attr_reader  :K_AXMenuItemSelectedNotification
      
      # Table and outline view notifications
      const_set_lazy(:K_AXRowCountChangedNotification) { "AXRowCountChanged" }
      const_attr_reader  :K_AXRowCountChangedNotification
      
      # Miscellaneous notifications
      const_set_lazy(:K_AXSelectedChildrenChangedNotification) { "AXSelectedChildrenChanged" }
      const_attr_reader  :K_AXSelectedChildrenChangedNotification
      
      const_set_lazy(:K_AXSelectedTextChangedNotification) { "AXSelectedTextChanged" }
      const_attr_reader  :K_AXSelectedTextChangedNotification
      
      const_set_lazy(:K_AXResizedNotification) { "AXResized" }
      const_attr_reader  :K_AXResizedNotification
      
      const_set_lazy(:K_AXMovedNotification) { "AXMoved" }
      const_attr_reader  :K_AXMovedNotification
      
      const_set_lazy(:K_AXCreatedNotification) { "AXCreated" }
      const_attr_reader  :K_AXCreatedNotification
      
      # AXValue types
      const_set_lazy(:K_AXValueCFRangeType) { 4 }
      const_attr_reader  :K_AXValueCFRangeType
      
      # AXValue Constants
      const_set_lazy(:K_AXAscendingSortDirectionValue) { "AXAscendingSortDirection" }
      const_attr_reader  :K_AXAscendingSortDirectionValue
      
      const_set_lazy(:K_AXDescendingSortDirectionValue) { "AXDescendingSortDirection" }
      const_attr_reader  :K_AXDescendingSortDirectionValue
      
      const_set_lazy(:K_AXHorizontalOrientationValue) { "AXHorizontalOrientation" }
      const_attr_reader  :K_AXHorizontalOrientationValue
      
      const_set_lazy(:K_AXUnknownOrientationValue) { "AXUnknownOrientation" }
      const_attr_reader  :K_AXUnknownOrientationValue
      
      const_set_lazy(:K_AXUnknownSortDirectionValue) { "AXUnknownSortDirection" }
      const_attr_reader  :K_AXUnknownSortDirectionValue
      
      const_set_lazy(:K_AXVerticalOrientationValue) { "AXVerticalOrientation" }
      const_attr_reader  :K_AXVerticalOrientationValue
      
      # Error codes
      const_set_lazy(:K_AXErrorIllegalArgument) { -25201 }
      const_attr_reader  :K_AXErrorIllegalArgument
      
      const_set_lazy(:K_AXErrorInvalidUIElement) { -25202 }
      const_attr_reader  :K_AXErrorInvalidUIElement
      
      const_set_lazy(:K_AXErrorInvalidUIElementObserver) { -25203 }
      const_attr_reader  :K_AXErrorInvalidUIElementObserver
      
      const_set_lazy(:K_AXErrorCannotComplete) { -25204 }
      const_attr_reader  :K_AXErrorCannotComplete
      
      const_set_lazy(:K_AXErrorAttributeUnsupported) { -25205 }
      const_attr_reader  :K_AXErrorAttributeUnsupported
      
      const_set_lazy(:K_AXErrorActionUnsupported) { -25206 }
      const_attr_reader  :K_AXErrorActionUnsupported
      
      const_set_lazy(:K_AXErrorAPIDisabled) { -25211 }
      const_attr_reader  :K_AXErrorAPIDisabled
      
      const_set_lazy(:K_AXErrorParameterizedAttributeUnsupported) { -25213 }
      const_attr_reader  :K_AXErrorParameterizedAttributeUnsupported
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__os, :initialize
  end
  
end
