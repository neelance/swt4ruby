require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt
  module SWTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  # This class provides access to a small number of SWT system-wide
  # methods, and in addition defines the public constants provided
  # by SWT.
  # <p>
  # By defining constants like UP and DOWN in a single class, SWT
  # can share common names and concepts at the same time minimizing
  # the number of classes, names and constants for the application
  # programmer.
  # </p><p>
  # Note that some of the constants provided by this class represent
  # optional, appearance related aspects of widgets which are available
  # either only on some window systems, or for a differing set of
  # widgets on each window system. These constants are marked
  # as <em>HINT</em>s. The set of widgets which support a particular
  # <em>HINT</em> may change from release to release, although we typically
  # will not withdraw support for a <em>HINT</em> once it is made available.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # NOTE:
  # Good javadoc coding style is to put the values of static final
  # constants in the comments. This reinforces the fact that
  # consumers are allowed to rely on the value (and they must
  # since the values are compiled inline in their code). We
  # can <em>not</em> change the values of these constants between
  # releases.
  class SWT 
    include_class_members SWTImports
    
    class_module.module_eval {
      # Widget Event Constants
      # 
      # The null event type (value is 0).
      # 
      # @since 3.0
      const_set_lazy(:None) { 0 }
      const_attr_reader  :None
      
      # The key down event type (value is 1).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addKeyListener
      # @see org.eclipse.swt.widgets.Tracker#addKeyListener
      # @see org.eclipse.swt.events.KeyListener#keyPressed
      # @see org.eclipse.swt.events.KeyEvent
      const_set_lazy(:KeyDown) { 1 }
      const_attr_reader  :KeyDown
      
      # The key up event type (value is 2).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addKeyListener
      # @see org.eclipse.swt.widgets.Tracker#addKeyListener
      # @see org.eclipse.swt.events.KeyListener#keyReleased
      # @see org.eclipse.swt.events.KeyEvent
      const_set_lazy(:KeyUp) { 2 }
      const_attr_reader  :KeyUp
      
      # The mouse down event type (value is 3).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addMouseListener
      # @see org.eclipse.swt.events.MouseListener#mouseDown
      # @see org.eclipse.swt.events.MouseEvent
      const_set_lazy(:MouseDown) { 3 }
      const_attr_reader  :MouseDown
      
      # The mouse up event type (value is 4).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addMouseListener
      # @see org.eclipse.swt.events.MouseListener#mouseUp
      # @see org.eclipse.swt.events.MouseEvent
      const_set_lazy(:MouseUp) { 4 }
      const_attr_reader  :MouseUp
      
      # The mouse move event type (value is 5).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addMouseMoveListener
      # @see org.eclipse.swt.events.MouseMoveListener#mouseMove
      # @see org.eclipse.swt.events.MouseEvent
      const_set_lazy(:MouseMove) { 5 }
      const_attr_reader  :MouseMove
      
      # The mouse enter event type (value is 6).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addMouseTrackListener
      # @see org.eclipse.swt.events.MouseTrackListener#mouseEnter
      # @see org.eclipse.swt.events.MouseEvent
      const_set_lazy(:MouseEnter) { 6 }
      const_attr_reader  :MouseEnter
      
      # The mouse exit event type (value is 7).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addMouseTrackListener
      # @see org.eclipse.swt.events.MouseTrackListener#mouseExit
      # @see org.eclipse.swt.events.MouseEvent
      const_set_lazy(:MouseExit) { 7 }
      const_attr_reader  :MouseExit
      
      # The mouse double click event type (value is 8).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addMouseListener
      # @see org.eclipse.swt.events.MouseListener#mouseDoubleClick
      # @see org.eclipse.swt.events.MouseEvent
      const_set_lazy(:MouseDoubleClick) { 8 }
      const_attr_reader  :MouseDoubleClick
      
      # The paint event type (value is 9).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addPaintListener
      # @see org.eclipse.swt.events.PaintListener#paintControl
      # @see org.eclipse.swt.events.PaintEvent
      const_set_lazy(:Paint) { 9 }
      const_attr_reader  :Paint
      
      # The move event type (value is 10).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addControlListener
      # @see org.eclipse.swt.widgets.TableColumn#addControlListener
      # @see org.eclipse.swt.widgets.Tracker#addControlListener
      # @see org.eclipse.swt.widgets.TreeColumn#addControlListener
      # @see org.eclipse.swt.events.ControlListener#controlMoved
      # @see org.eclipse.swt.events.ControlEvent
      const_set_lazy(:Move) { 10 }
      const_attr_reader  :Move
      
      # The resize event type (value is 11).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addControlListener
      # @see org.eclipse.swt.widgets.TableColumn#addControlListener
      # @see org.eclipse.swt.widgets.Tracker#addControlListener
      # @see org.eclipse.swt.widgets.TreeColumn#addControlListener
      # @see org.eclipse.swt.events.ControlListener#controlResized
      # @see org.eclipse.swt.events.ControlEvent
      const_set_lazy(:Resize) { 11 }
      const_attr_reader  :Resize
      
      # The dispose event type (value is 12).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Widget#addDisposeListener
      # @see org.eclipse.swt.events.DisposeListener#widgetDisposed
      # @see org.eclipse.swt.events.DisposeEvent
      const_set_lazy(:Dispose) { 12 }
      const_attr_reader  :Dispose
      
      # The selection event type (value is 13).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Button#addSelectionListener
      # @see org.eclipse.swt.widgets.Combo#addSelectionListener
      # @see org.eclipse.swt.widgets.CoolItem#addSelectionListener
      # @see org.eclipse.swt.widgets.Link#addSelectionListener
      # @see org.eclipse.swt.widgets.List#addSelectionListener
      # @see org.eclipse.swt.widgets.MenuItem#addSelectionListener
      # @see org.eclipse.swt.widgets.Sash#addSelectionListener
      # @see org.eclipse.swt.widgets.Scale#addSelectionListener
      # @see org.eclipse.swt.widgets.ScrollBar#addSelectionListener
      # @see org.eclipse.swt.widgets.Slider#addSelectionListener
      # @see org.eclipse.swt.widgets.TabFolder#addSelectionListener
      # @see org.eclipse.swt.widgets.Table#addSelectionListener
      # @see org.eclipse.swt.widgets.TableColumn#addSelectionListener
      # @see org.eclipse.swt.widgets.ToolItem#addSelectionListener
      # @see org.eclipse.swt.widgets.TrayItem#addSelectionListener
      # @see org.eclipse.swt.widgets.Tree#addSelectionListener
      # @see org.eclipse.swt.widgets.TreeColumn#addSelectionListener
      # @see org.eclipse.swt.events.SelectionListener#widgetSelected
      # @see org.eclipse.swt.events.SelectionEvent
      const_set_lazy(:Selection) { 13 }
      const_attr_reader  :Selection
      
      # The default selection event type (value is 14).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Combo#addSelectionListener
      # @see org.eclipse.swt.widgets.List#addSelectionListener
      # @see org.eclipse.swt.widgets.Spinner#addSelectionListener
      # @see org.eclipse.swt.widgets.Table#addSelectionListener
      # @see org.eclipse.swt.widgets.Text#addSelectionListener
      # @see org.eclipse.swt.widgets.TrayItem#addSelectionListener
      # @see org.eclipse.swt.widgets.Tree#addSelectionListener
      # @see org.eclipse.swt.events.SelectionListener#widgetDefaultSelected
      # @see org.eclipse.swt.events.SelectionEvent
      const_set_lazy(:DefaultSelection) { 14 }
      const_attr_reader  :DefaultSelection
      
      # The focus in event type (value is 15).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addFocusListener
      # @see org.eclipse.swt.events.FocusListener#focusGained
      # @see org.eclipse.swt.events.FocusEvent
      const_set_lazy(:FocusIn) { 15 }
      const_attr_reader  :FocusIn
      
      # The focus out event type (value is 16).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addFocusListener
      # @see org.eclipse.swt.events.FocusListener#focusLost
      # @see org.eclipse.swt.events.FocusEvent
      const_set_lazy(:FocusOut) { 16 }
      const_attr_reader  :FocusOut
      
      # The expand event type (value is 17).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Tree#addTreeListener
      # @see org.eclipse.swt.events.TreeListener#treeExpanded
      # @see org.eclipse.swt.events.TreeEvent
      const_set_lazy(:Expand) { 17 }
      const_attr_reader  :Expand
      
      # The collapse event type (value is 18).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Tree#addTreeListener
      # @see org.eclipse.swt.events.TreeListener#treeCollapsed
      # @see org.eclipse.swt.events.TreeEvent
      const_set_lazy(:Collapse) { 18 }
      const_attr_reader  :Collapse
      
      # The iconify event type (value is 19).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Shell#addShellListener
      # @see org.eclipse.swt.events.ShellListener#shellIconified
      # @see org.eclipse.swt.events.ShellEvent
      const_set_lazy(:Iconify) { 19 }
      const_attr_reader  :Iconify
      
      # The de-iconify event type (value is 20).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Shell#addShellListener
      # @see org.eclipse.swt.events.ShellListener#shellDeiconified
      # @see org.eclipse.swt.events.ShellEvent
      const_set_lazy(:Deiconify) { 20 }
      const_attr_reader  :Deiconify
      
      # The close event type (value is 21).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Shell#addShellListener
      # @see org.eclipse.swt.events.ShellListener#shellClosed
      # @see org.eclipse.swt.events.ShellEvent
      const_set_lazy(:Close) { 21 }
      const_attr_reader  :Close
      
      # The show event type (value is 22).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Menu#addMenuListener
      # @see org.eclipse.swt.events.MenuListener#menuShown
      # @see org.eclipse.swt.events.MenuEvent
      const_set_lazy(:Show) { 22 }
      const_attr_reader  :Show
      
      # The hide event type (value is 23).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Menu#addMenuListener
      # @see org.eclipse.swt.events.MenuListener#menuHidden
      # @see org.eclipse.swt.events.MenuEvent
      const_set_lazy(:Hide) { 23 }
      const_attr_reader  :Hide
      
      # The modify event type (value is 24).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Combo#addModifyListener
      # @see org.eclipse.swt.widgets.Spinner#addModifyListener
      # @see org.eclipse.swt.widgets.Text#addModifyListener
      # @see org.eclipse.swt.events.ModifyListener#modifyText
      # @see org.eclipse.swt.events.ModifyEvent
      const_set_lazy(:Modify) { 24 }
      const_attr_reader  :Modify
      
      # The verify event type (value is 25).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.custom.CCombo#addVerifyListener
      # @see org.eclipse.swt.widgets.Combo#addVerifyListener
      # @see org.eclipse.swt.custom.StyledText#addVerifyListener
      # @see org.eclipse.swt.widgets.Text#addVerifyListener
      # @see org.eclipse.swt.events.VerifyListener#verifyText
      # @see org.eclipse.swt.events.VerifyEvent
      const_set_lazy(:Verify) { 25 }
      const_attr_reader  :Verify
      
      # The activate event type (value is 26).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Shell#addShellListener
      # @see org.eclipse.swt.events.ShellListener#shellActivated
      # @see org.eclipse.swt.events.ShellEvent
      const_set_lazy(:Activate) { 26 }
      const_attr_reader  :Activate
      
      # The deactivate event type (value is 27).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Shell#addShellListener
      # @see org.eclipse.swt.events.ShellListener#shellDeactivated
      # @see org.eclipse.swt.events.ShellEvent
      const_set_lazy(:Deactivate) { 27 }
      const_attr_reader  :Deactivate
      
      # The help event type (value is 28).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addHelpListener
      # @see org.eclipse.swt.widgets.Menu#addHelpListener
      # @see org.eclipse.swt.widgets.MenuItem#addHelpListener
      # @see org.eclipse.swt.events.HelpListener#helpRequested
      # @see org.eclipse.swt.events.HelpEvent
      const_set_lazy(:Help) { 28 }
      const_attr_reader  :Help
      
      # The drag detect event type (value is 29).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.dnd.DragSource
      const_set_lazy(:DragDetect) { 29 }
      const_attr_reader  :DragDetect
      
      # The arm event type (value is 30).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.MenuItem#addArmListener
      # @see org.eclipse.swt.events.ArmListener#widgetArmed
      # @see org.eclipse.swt.events.ArmEvent
      const_set_lazy(:Arm) { 30 }
      const_attr_reader  :Arm
      
      # The traverse event type (value is 31).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addTraverseListener
      # @see org.eclipse.swt.events.TraverseListener#keyTraversed
      # @see org.eclipse.swt.events.TraverseEvent
      const_set_lazy(:Traverse) { 31 }
      const_attr_reader  :Traverse
      
      # The mouse hover event type (value is 32).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Control#addMouseTrackListener
      # @see org.eclipse.swt.events.MouseTrackListener#mouseHover
      # @see org.eclipse.swt.events.MouseEvent
      const_set_lazy(:MouseHover) { 32 }
      const_attr_reader  :MouseHover
      
      # The hardware key down event type (value is 33).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      const_set_lazy(:HardKeyDown) { 33 }
      const_attr_reader  :HardKeyDown
      
      # The hardware key up event type (value is 34).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      const_set_lazy(:HardKeyUp) { 34 }
      const_attr_reader  :HardKeyUp
      
      # The menu detect event type (value is 35).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @since 3.0
      const_set_lazy(:MenuDetect) { 35 }
      const_attr_reader  :MenuDetect
      
      # The set data event type (value is 36).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @see org.eclipse.swt.widgets.Table
      # @see org.eclipse.swt.widgets.Tree
      # 
      # @since 3.0
      const_set_lazy(:SetData) { 36 }
      const_attr_reader  :SetData
      
      # The mouse wheel event type (value is 37).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @since 3.1
      const_set_lazy(:MouseWheel) { 37 }
      const_attr_reader  :MouseWheel
      
      # The settings changed event type (value is 39).
      # <p>
      # The settings changed event is sent when an operating system
      # property, such as a system font or color, has been changed.
      # The event occurs after the property has been changed, but
      # before any widget is redrawn.  Applications that cache operating
      # system properties can use this event to update their caches.
      # A specific property change can be detected by querying the
      # new value of a property and comparing it with the equivalent
      # cached value.  The operating system automatically redraws and
      # lays out all widgets after this event is sent.
      # </p>
      # 
      # @see org.eclipse.swt.widgets.Display#addListener
      # @see org.eclipse.swt.widgets.Event
      # 
      # @since 3.2
      const_set_lazy(:Settings) { 39 }
      const_attr_reader  :Settings
      
      # The erase item event type (value is 40).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @since 3.2
      const_set_lazy(:EraseItem) { 40 }
      const_attr_reader  :EraseItem
      
      # The measure item event type (value is 41).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @since 3.2
      const_set_lazy(:MeasureItem) { 41 }
      const_attr_reader  :MeasureItem
      
      # The paint item event type (value is 42).
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @since 3.2
      const_set_lazy(:PaintItem) { 42 }
      const_attr_reader  :PaintItem
      
      # The IME composition event type (value is 43).
      # <p>
      # The IME composition event is sent to allow
      # custom text editors to implement in-line
      # editing of international text.
      # </p>
      # 
      # The detail field indicates the action to be taken:
      # <p><ul>
      # <li>{@link SWT#COMPOSITION_CHANGED}</li>
      # <li>{@link SWT#COMPOSITION_OFFSET}</li>
      # <li>{@link SWT#COMPOSITION_SELECTION}</li>
      # </ul></p>
      # 
      # @see org.eclipse.swt.widgets.Widget#addListener
      # @see org.eclipse.swt.widgets.Display#addFilter
      # @see org.eclipse.swt.widgets.Event
      # 
      # @since 3.4
      const_set_lazy(:ImeComposition) { 43 }
      const_attr_reader  :ImeComposition
      
      # Event Details
      # 
      # The IME composition event detail that indicates
      # a change in the IME composition. The text field
      # of the event is the new composition text.
      # The start and end indicate the offsets where the
      # composition text should be inserted.
      # The styles and ranges are stored in the IME
      # object (value is 1).
      # 
      # @see SWT#ImeComposition
      # 
      # @since 3.4
      const_set_lazy(:COMPOSITION_CHANGED) { 1 }
      const_attr_reader  :COMPOSITION_CHANGED
      
      # The IME composition event detail that indicates
      # that the IME needs the offset for a given location.
      # The x and y fields of the event are used by the
      # application to determine the offset.
      # 
      # The index field of the event should be set to the
      # text offset at that location. The count field should
      # be set to indicate whether the location is closer to
      # the leading edge (0) or the trailing edge (1) (value is 2).
      # 
      # @see SWT#ImeComposition
      # @see org.eclipse.swt.graphics.TextLayout#getOffset(int, int, int[])
      # 
      # @since 3.4
      const_set_lazy(:COMPOSITION_OFFSET) { 2 }
      const_attr_reader  :COMPOSITION_OFFSET
      
      # The IME composition event detail that indicates
      # that IME needs the selected text and its start
      # and end offsets (value is 3).
      # 
      # @see SWT#ImeComposition
      # 
      # @since 3.4
      const_set_lazy(:COMPOSITION_SELECTION) { 3 }
      const_attr_reader  :COMPOSITION_SELECTION
      
      # Indicates that a user-interface component is being dragged,
      # for example dragging the thumb of a scroll bar (value is 1).
      const_set_lazy(:DRAG) { 1 }
      const_attr_reader  :DRAG
      
      # Event detail field that indicates a user-interface component
      # state is selected (value is 1&lt;&lt;1).
      # 
      # @since 3.2
      const_set_lazy(:SELECTED) { 1 << 1 }
      const_attr_reader  :SELECTED
      
      # Event detail field that indicates a user-interface component
      # state is focused (value is 1&lt;&lt;2).
      # 
      # @since 3.2
      const_set_lazy(:FOCUSED) { 1 << 2 }
      const_attr_reader  :FOCUSED
      
      # Event detail field that indicates a user-interface component
      # draws the background (value is 1&lt;&lt;3).
      # 
      # @since 3.2
      const_set_lazy(:BACKGROUND) { 1 << 3 }
      const_attr_reader  :BACKGROUND
      
      # Event detail field that indicates a user-interface component
      # draws the foreground (value is 1&lt;&lt;4).
      # 
      # @since 3.2
      const_set_lazy(:FOREGROUND) { 1 << 4 }
      const_attr_reader  :FOREGROUND
      
      # Event detail field that indicates a user-interface component
      # state is hot (value is 1&lt;&lt;5).
      # 
      # @since 3.3
      const_set_lazy(:HOT) { 1 << 5 }
      const_attr_reader  :HOT
      
      # This code is intentionally commented
      # public static final int PRESSED = 1 << 3;
      # public static final int ACTIVE = 1 << 4;
      # public static final int DISABLED = 1 << 5;
      # public static final int HOT = 1 << 6;
      # public static final int DEFAULTED = 1 << 7;
      # 
      # Traversal event detail field value indicating that no
      # traversal action should be taken
      # (value is 0).
      const_set_lazy(:TRAVERSE_NONE) { 0 }
      const_attr_reader  :TRAVERSE_NONE
      
      # Traversal event detail field value indicating that the
      # key which designates that a dialog should be cancelled was
      # pressed; typically, this is the ESC key
      # (value is 1&lt;&lt;1).
      const_set_lazy(:TRAVERSE_ESCAPE) { 1 << 1 }
      const_attr_reader  :TRAVERSE_ESCAPE
      
      # Traversal event detail field value indicating that the
      # key which activates the default button in a dialog was
      # pressed; typically, this is the ENTER key
      # (value is 1&lt;&lt;2).
      const_set_lazy(:TRAVERSE_RETURN) { 1 << 2 }
      const_attr_reader  :TRAVERSE_RETURN
      
      # Traversal event detail field value indicating that the
      # key which designates that focus should be given to the
      # previous tab group was pressed; typically, this is the
      # SHIFT-TAB key sequence
      # (value is 1&lt;&lt;3).
      const_set_lazy(:TRAVERSE_TAB_PREVIOUS) { 1 << 3 }
      const_attr_reader  :TRAVERSE_TAB_PREVIOUS
      
      # Traversal event detail field value indicating that the
      # key which designates that focus should be given to the
      # next tab group was pressed; typically, this is the
      # TAB key
      # (value is 1&lt;&lt;4).
      const_set_lazy(:TRAVERSE_TAB_NEXT) { 1 << 4 }
      const_attr_reader  :TRAVERSE_TAB_NEXT
      
      # Traversal event detail field value indicating that the
      # key which designates that focus should be given to the
      # previous tab item was pressed; typically, this is either
      # the LEFT-ARROW or UP-ARROW keys
      # (value is 1&lt;&lt;5).
      const_set_lazy(:TRAVERSE_ARROW_PREVIOUS) { 1 << 5 }
      const_attr_reader  :TRAVERSE_ARROW_PREVIOUS
      
      # Traversal event detail field value indicating that the
      # key which designates that focus should be given to the
      # previous tab item was pressed; typically, this is either
      # the RIGHT-ARROW or DOWN-ARROW keys
      # (value is 1&lt;&lt;6).
      const_set_lazy(:TRAVERSE_ARROW_NEXT) { 1 << 6 }
      const_attr_reader  :TRAVERSE_ARROW_NEXT
      
      # Traversal event detail field value indicating that a
      # mnemonic key sequence was pressed
      # (value is 1&lt;&lt;7).
      const_set_lazy(:TRAVERSE_MNEMONIC) { 1 << 7 }
      const_attr_reader  :TRAVERSE_MNEMONIC
      
      # Traversal event detail field value indicating that the
      # key which designates that the previous page of a multi-page
      # window should be shown was pressed; typically, this
      # is the CTRL-PAGEUP key sequence
      # (value is 1&lt;&lt;8).
      const_set_lazy(:TRAVERSE_PAGE_PREVIOUS) { 1 << 8 }
      const_attr_reader  :TRAVERSE_PAGE_PREVIOUS
      
      # Traversal event detail field value indicating that the
      # key which designates that the next page of a multi-page
      # window should be shown was pressed; typically, this
      # is the CTRL-PAGEDOWN key sequence
      # (value is 1&lt;&lt;9).
      const_set_lazy(:TRAVERSE_PAGE_NEXT) { 1 << 9 }
      const_attr_reader  :TRAVERSE_PAGE_NEXT
      
      # A constant known to be zero (0), typically used in operations
      # which take bit flags to indicate that "no bits are set".
      const_set_lazy(:NONE) { 0 }
      const_attr_reader  :NONE
      
      # A constant known to be zero (0), used in operations which
      # take pointers to indicate a null argument.
      const_set_lazy(:NULL) { 0 }
      const_attr_reader  :NULL
      
      # Indicates that a default should be used (value is -1).
      const_set_lazy(:DEFAULT) { -1 }
      const_attr_reader  :DEFAULT
      
      # Indicates that a property is off (value is 0).
      # 
      # @since 3.1
      const_set_lazy(:OFF) { 0 }
      const_attr_reader  :OFF
      
      # Indicates that a property is on (value is 1).
      # 
      # @since 3.1
      const_set_lazy(:ON) { 1 }
      const_attr_reader  :ON
      
      # Indicates low quality (value is 1).
      # 
      # @since 3.1
      const_set_lazy(:LOW) { 1 }
      const_attr_reader  :LOW
      
      # Indicates high quality (value is 2).
      # 
      # @since 3.1
      const_set_lazy(:HIGH) { 2 }
      const_attr_reader  :HIGH
      
      # Style constant for menu bar behavior (value is 1&lt;&lt;1).
      # <p><b>Used By:</b><ul>
      # <li><code>Menu</code></li>
      # </ul></p>
      const_set_lazy(:BAR) { 1 << 1 }
      const_attr_reader  :BAR
      
      # Style constant for drop down menu/list behavior (value is 1&lt;&lt;2).
      # <p><b>Used By:</b><ul>
      # <li><code>Menu</code></li>
      # <li><code>ToolItem</code></li>
      # <li><code>CoolItem</code></li>
      # <li><code>Combo</code></li>
      # </ul></p>
      const_set_lazy(:DROP_DOWN) { 1 << 2 }
      const_attr_reader  :DROP_DOWN
      
      # Style constant for pop up menu behavior (value is 1&lt;&lt;3).
      # <p><b>Used By:</b><ul>
      # <li><code>Menu</code></li>
      # </ul></p>
      const_set_lazy(:POP_UP) { 1 << 3 }
      const_attr_reader  :POP_UP
      
      # Style constant for line separator behavior (value is 1&lt;&lt;1).
      # <p><b>Used By:</b><ul>
      # <li><code>Label</code></li>
      # <li><code>MenuItem</code></li>
      # <li><code>ToolItem</code></li>
      # </ul></p>
      const_set_lazy(:SEPARATOR) { 1 << 1 }
      const_attr_reader  :SEPARATOR
      
      # Style constant for toggle button behavior (value is 1&lt;&lt;1).
      # <p><b>Used By:</b><ul>
      # <li><code>Button</code></li>
      # </ul></p>
      const_set_lazy(:TOGGLE) { 1 << 1 }
      const_attr_reader  :TOGGLE
      
      # Style constant for arrow button behavior (value is 1&lt;&lt;2).
      # <p><b>Used By:</b><ul>
      # <li><code>Button</code></li>
      # </ul></p>
      const_set_lazy(:ARROW) { 1 << 2 }
      const_attr_reader  :ARROW
      
      # Style constant for push button behavior (value is 1&lt;&lt;3).
      # <p><b>Used By:</b><ul>
      # <li><code>Button</code></li>
      # <li><code>MenuItem</code></li>
      # <li><code>ToolItem</code></li>
      # </ul></p>
      const_set_lazy(:PUSH) { 1 << 3 }
      const_attr_reader  :PUSH
      
      # Style constant for radio button behavior (value is 1&lt;&lt;4).
      # <p><b>Used By:</b><ul>
      # <li><code>Button</code></li>
      # <li><code>MenuItem</code></li>
      # <li><code>ToolItem</code></li>
      # </ul></p>
      const_set_lazy(:RADIO) { 1 << 4 }
      const_attr_reader  :RADIO
      
      # Style constant for check box behavior (value is 1&lt;&lt;5).
      # <p><b>Used By:</b><ul>
      # <li><code>Button</code></li>
      # <li><code>MenuItem</code></li>
      # <li><code>ToolItem</code></li>
      # <li><code>Table</code></li>
      # <li><code>Tree</code></li>
      # </ul></p>
      const_set_lazy(:CHECK) { 1 << 5 }
      const_attr_reader  :CHECK
      
      # Style constant for cascade behavior (value is 1&lt;&lt;6).
      # <p><b>Used By:</b><ul>
      # <li><code>MenuItem</code></li>
      # </ul></p>
      const_set_lazy(:CASCADE) { 1 << 6 }
      const_attr_reader  :CASCADE
      
      # Style constant for multi-selection behavior in lists
      # and multiple line support on text fields (value is 1&lt;&lt;1).
      # <p><b>Used By:</b><ul>
      # <li><code>Text</code></li>
      # <li><code>List</code></li>
      # <li><code>FileDialog</code></li>
      # </ul></p>
      const_set_lazy(:MULTI) { 1 << 1 }
      const_attr_reader  :MULTI
      
      # Style constant for single selection behavior in lists
      # and single line support on text fields (value is 1&lt;&lt;2).
      # <p><b>Used By:</b><ul>
      # <li><code>Text</code></li>
      # <li><code>List</code></li>
      # <li><code>Table</code></li>
      # <li><code>Tree</code></li>
      # </ul></p>
      const_set_lazy(:SINGLE) { 1 << 2 }
      const_attr_reader  :SINGLE
      
      # Style constant for read-only behavior (value is 1&lt;&lt;3).
      # <p><b>Used By:</b><ul>
      # <li><code>Combo</code></li>
      # <li><code>Text</code></li>
      # </ul></p>
      const_set_lazy(:READ_ONLY) { 1 << 3 }
      const_attr_reader  :READ_ONLY
      
      # Style constant for automatic line wrap behavior (value is 1&lt;&lt;6).
      # <p><b>Used By:</b><ul>
      # <li><code>Label</code></li>
      # <li><code>Text</code></li>
      # <li><code>ToolBar</code></li>
      # <li><code>Spinner</code></li>
      # </ul></p>
      const_set_lazy(:WRAP) { 1 << 6 }
      const_attr_reader  :WRAP
      
      # Style constant for search behavior (value is 1&lt;&lt;7).
      # <p><b>Used By:</b><ul>
      # <li><code>Text</code></li>
      # </ul></p>
      # 
      # @since 3.3
      const_set_lazy(:SEARCH) { 1 << 7 }
      const_attr_reader  :SEARCH
      
      # Style constant for simple (not drop down) behavior (value is 1&lt;&lt;6).
      # <p><b>Used By:</b><ul>
      # <li><code>Combo</code></li>
      # </ul></p>
      const_set_lazy(:SIMPLE) { 1 << 6 }
      const_attr_reader  :SIMPLE
      
      # Style constant for password behavior (value is 1&lt;&lt;22).
      # <p><b>Used By:</b><ul>
      # <li><code>Text</code></li>
      # </ul></p>
      # 
      # @since 3.0
      const_set_lazy(:PASSWORD) { 1 << 22 }
      const_attr_reader  :PASSWORD
      
      # Style constant for shadow in behavior (value is 1&lt;&lt;2).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Label</code></li>
      # <li><code>Group</code></li>
      # </ul></p>
      const_set_lazy(:SHADOW_IN) { 1 << 2 }
      const_attr_reader  :SHADOW_IN
      
      # Style constant for shadow out behavior (value is 1&lt;&lt;3).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Label</code></li>
      # <li><code>Group</code></li>
      # <li><code>ToolBar</code></li>
      # </ul></p>
      const_set_lazy(:SHADOW_OUT) { 1 << 3 }
      const_attr_reader  :SHADOW_OUT
      
      # Style constant for shadow etched in behavior (value is 1&lt;&lt;4).
      # <br>Note that this is a <em>HINT</em>. It is ignored on all platforms except Motif.
      # <p><b>Used By:</b><ul>
      # <li><code>Group</code></li>
      # </ul></p>
      const_set_lazy(:SHADOW_ETCHED_IN) { 1 << 4 }
      const_attr_reader  :SHADOW_ETCHED_IN
      
      # Style constant for shadow etched out behavior (value is 1&lt;&lt;6).
      # <br>Note that this is a <em>HINT</em>. It is ignored on all platforms except Motif.
      # <p><b>Used By:</b><ul>
      # <li><code>Group</code></li>
      # </ul></p>
      const_set_lazy(:SHADOW_ETCHED_OUT) { 1 << 6 }
      const_attr_reader  :SHADOW_ETCHED_OUT
      
      # Style constant for no shadow behavior (value is 1&lt;&lt;5).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Label</code></li>
      # <li><code>Group</code></li>
      # </ul></p>
      const_set_lazy(:SHADOW_NONE) { 1 << 5 }
      const_attr_reader  :SHADOW_NONE
      
      # Style constant for progress bar behavior (value is 1&lt;&lt;1).
      # <p><b>Used By:</b><ul>
      # <li><code>ProgressBar</code></li>
      # </ul></p>
      const_set_lazy(:INDETERMINATE) { 1 << 1 }
      const_attr_reader  :INDETERMINATE
      
      # Style constant for tool window behavior (value is 1&lt;&lt;2).
      # <p>
      # A tool window is a window intended to be used as a floating toolbar.
      # It typically has a title bar that is shorter than a normal title bar,
      # and the window title is typically drawn using a smaller font.
      # <br>Note that this is a <em>HINT</em>.
      # </p><p><b>Used By:</b><ul>
      # <li><code>Decorations</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:TOOL) { 1 << 2 }
      const_attr_reader  :TOOL
      
      # Style constant to ensure no trimmings are used (value is 1&lt;&lt;3).
      # <br>Note that this overrides all other trim styles.
      # <p><b>Used By:</b><ul>
      # <li><code>Decorations</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:NO_TRIM) { 1 << 3 }
      const_attr_reader  :NO_TRIM
      
      # Style constant for resize box trim (value is 1&lt;&lt;4).
      # <p><b>Used By:</b><ul>
      # <li><code>Decorations</code> and subclasses</li>
      # <li><code>Tracker</code></li>
      # </ul></p>
      const_set_lazy(:RESIZE) { 1 << 4 }
      const_attr_reader  :RESIZE
      
      # Style constant for title area trim (value is 1&lt;&lt;5).
      # <p><b>Used By:</b><ul>
      # <li><code>Decorations</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:TITLE) { 1 << 5 }
      const_attr_reader  :TITLE
      
      # Style constant for close box trim (value is 1&lt;&lt;6,
      # since we do not distinguish between CLOSE style and MENU style).
      # <p><b>Used By:</b><ul>
      # <li><code>Decorations</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:CLOSE) { 1 << 6 }
      const_attr_reader  :CLOSE
      
      # Style constant for shell menu trim (value is 1&lt;&lt;6,
      # since we do not distinguish between CLOSE style and MENU style).
      # <p><b>Used By:</b><ul>
      # <li><code>Decorations</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:MENU) { CLOSE }
      const_attr_reader  :MENU
      
      # Style constant for minimize box trim (value is 1&lt;&lt;7).
      # <p><b>Used By:</b><ul>
      # <li><code>Decorations</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:MIN) { 1 << 7 }
      const_attr_reader  :MIN
      
      # Style constant for maximize box trim (value is 1&lt;&lt;10).
      # <p><b>Used By:</b><ul>
      # <li><code>Decorations</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:MAX) { 1 << 10 }
      const_attr_reader  :MAX
      
      # Style constant for horizontal scrollbar behavior (value is 1&lt;&lt;8).
      # <p><b>Used By:</b><ul>
      # <li><code>Scrollable</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:H_SCROLL) { 1 << 8 }
      const_attr_reader  :H_SCROLL
      
      # Style constant for vertical scrollbar behavior (value is 1&lt;&lt;9).
      # <p><b>Used By:</b><ul>
      # <li><code>Scrollable</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:V_SCROLL) { 1 << 9 }
      const_attr_reader  :V_SCROLL
      
      # Style constant for no scrollbar behavior (value is 1&lt;&lt;4).
      # <p>
      # When neither H_SCROLL or V_SCROLL are specified, controls
      # are free to create the default scroll bars for the control.
      # Using NO_SCROLL overrides the default and forces the control
      # to have no scroll bars.
      # 
      # <b>Used By:</b><ul>
      # <li><code>Tree</code></li>
      # <li><code>Table</code></li>
      # </ul></p>
      # 
      # @since 3.4
      const_set_lazy(:NO_SCROLL) { 1 << 4 }
      const_attr_reader  :NO_SCROLL
      
      # Style constant for bordered behavior (value is 1&lt;&lt;11).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Control</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:BORDER) { 1 << 11 }
      const_attr_reader  :BORDER
      
      # Style constant indicating that the window manager should clip
      # a widget's children with respect to its viewable area. (value is 1&lt;&lt;12).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Control</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:CLIP_CHILDREN) { 1 << 12 }
      const_attr_reader  :CLIP_CHILDREN
      
      # Style constant indicating that the window manager should clip
      # a widget's siblings with respect to its viewable area. (value is 1&lt;&lt;13).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Control</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:CLIP_SIBLINGS) { 1 << 13 }
      const_attr_reader  :CLIP_SIBLINGS
      
      # Style constant for always on top behavior (value is 1&lt;&lt;14).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Shell</code> and subclasses</li>
      # </ul></p>
      const_set_lazy(:ON_TOP) { 1 << 14 }
      const_attr_reader  :ON_TOP
      
      # Trim style convenience constant for the most common top level shell appearance
      # (value is CLOSE|TITLE|MIN|MAX|RESIZE).
      # <p><b>Used By:</b><ul>
      # <li><code>Shell</code></li>
      # </ul></p>
      const_set_lazy(:SHELL_TRIM) { CLOSE | TITLE | MIN | MAX | RESIZE }
      const_attr_reader  :SHELL_TRIM
      
      # Trim style convenience constant for the most common dialog shell appearance
      # (value is CLOSE|TITLE|BORDER).
      # <p><b>Used By:</b><ul>
      # <li><code>Shell</code></li>
      # </ul></p>
      const_set_lazy(:DIALOG_TRIM) { TITLE | CLOSE | BORDER }
      const_attr_reader  :DIALOG_TRIM
      
      # Style constant for modeless behavior (value is 0).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Dialog</code></li>
      # <li><code>Shell</code></li>
      # </ul></p>
      const_set_lazy(:MODELESS) { 0 }
      const_attr_reader  :MODELESS
      
      # Style constant for primary modal behavior (value is 1&lt;&lt;15).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Dialog</code></li>
      # <li><code>Shell</code></li>
      # </ul></p>
      const_set_lazy(:PRIMARY_MODAL) { 1 << 15 }
      const_attr_reader  :PRIMARY_MODAL
      
      # Style constant for application modal behavior (value is 1&lt;&lt;16).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Dialog</code></li>
      # <li><code>Shell</code></li>
      # </ul></p>
      const_set_lazy(:APPLICATION_MODAL) { 1 << 16 }
      const_attr_reader  :APPLICATION_MODAL
      
      # Style constant for system modal behavior (value is 1&lt;&lt;17).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Dialog</code></li>
      # <li><code>Shell</code></li>
      # </ul></p>
      const_set_lazy(:SYSTEM_MODAL) { 1 << 17 }
      const_attr_reader  :SYSTEM_MODAL
      
      # Style constant for selection hiding behavior when the widget loses focus (value is 1&lt;&lt;15).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Table</code></li>
      # </ul></p>
      const_set_lazy(:HIDE_SELECTION) { 1 << 15 }
      const_attr_reader  :HIDE_SELECTION
      
      # Style constant for full row selection behavior and
      # selection constant indicating that a full line should be
      # drawn. (value is 1&lt;&lt;16).
      # <br>Note that for some widgets this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Table</code></li>
      # <li><code>Tree</code></li>
      # <li><code>StyledText</code></li>
      # <li><code>TextLayout</code></li>
      # </ul></p>
      const_set_lazy(:FULL_SELECTION) { 1 << 16 }
      const_attr_reader  :FULL_SELECTION
      
      # Style constant for flat appearance. (value is 1&lt;&lt;23).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Button</code></li>
      # <li><code>ToolBar</code></li>
      # </ul></p>
      const_set_lazy(:FLAT) { 1 << 23 }
      const_attr_reader  :FLAT
      
      # Style constant for smooth appearance. (value is 1&lt;&lt;16).
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>ProgressBar</code></li>
      # <li><code>Sash</code></li>
      # </ul></p>
      const_set_lazy(:SMOOTH) { 1 << 16 }
      const_attr_reader  :SMOOTH
      
      # Style constant for no background behavior (value is 1&lt;&lt;18).
      # <p>
      # By default, before a widget paints, the client area is filled with the current background.
      # When this style is specified, the background is not filled, and the application is responsible
      # for filling every pixel of the client area.
      # This style might be used as an alternative to "double-buffering" in order to reduce flicker.
      # This style does not mean "transparent" - widgets that are obscured will not draw through.
      # </p><p><b>Used By:</b><ul>
      # <li><code>Composite</code></li>
      # </ul></p>
      const_set_lazy(:NO_BACKGROUND) { 1 << 18 }
      const_attr_reader  :NO_BACKGROUND
      
      # Style constant for no focus from the mouse behavior (value is 1&lt;&lt;19).
      # <p>
      # Normally, when the user clicks on a control, focus is assigned to that
      # control, providing the control has no children.  Some controls, such as
      # tool bars and sashes, don't normally take focus when the mouse is clicked
      # or accept focus when assigned from within the program.  This style allows
      # Composites to implement "no focus" mouse behavior.
      # 
      # <br>Note that this is a <em>HINT</em>.
      # </p>
      # <p><b>Used By:</b><ul>
      # <li><code>Composite</code></li>
      # </ul></p>
      const_set_lazy(:NO_FOCUS) { 1 << 19 }
      const_attr_reader  :NO_FOCUS
      
      # Style constant for no redraw on resize behavior (value is 1&lt;&lt;20).
      # <p>
      # This style stops the entire client area from being invalidated when the size
      # of the Canvas changes. Specifically, when the size of the Canvas gets smaller,
      # the SWT.Paint event is not sent. When it gets bigger, an SWT.Paint event is
      # sent with a GC clipped to only the new areas to be painted. Without this
      # style, the entire client area will be repainted.
      # 
      # <br>Note that this is a <em>HINT</em>.
      # </p><p><b>Used By:</b><ul>
      # <li><code>Composite</code></li>
      # </ul></p>
      const_set_lazy(:NO_REDRAW_RESIZE) { 1 << 20 }
      const_attr_reader  :NO_REDRAW_RESIZE
      
      # Style constant for no paint event merging behavior (value is 1&lt;&lt;21).
      # 
      # <br>Note that this is a <em>HINT</em>.
      # <p><b>Used By:</b><ul>
      # <li><code>Composite</code></li>
      # </ul></p>
      const_set_lazy(:NO_MERGE_PAINTS) { 1 << 21 }
      const_attr_reader  :NO_MERGE_PAINTS
      
      # Style constant for preventing child radio group behavior (value is 1&lt;&lt;22).
      # <p><b>Used By:</b><ul>
      # <li><code>Composite</code></li>
      # </ul></p>
      const_set_lazy(:NO_RADIO_GROUP) { 1 << 22 }
      const_attr_reader  :NO_RADIO_GROUP
      
      # Style constant for left to right orientation (value is 1&lt;&lt;25).
      # <p>
      # When orientation is not explicitly specified, orientation is
      # inherited.  This means that children will be assigned the
      # orientation of their parent.  To override this behavior and
      # force an orientation for a child, explicitly set the orientation
      # of the child when that child is created.
      # <br>Note that this is a <em>HINT</em>.
      # </p>
      # <p><b>Used By:</b><ul>
      # <li><code>Control</code></li>
      # <li><code>Menu</code></li>
      # <li><code>GC</code></li>
      # </ul></p>
      # 
      # @since 2.1.2
      const_set_lazy(:LEFT_TO_RIGHT) { 1 << 25 }
      const_attr_reader  :LEFT_TO_RIGHT
      
      # Style constant for right to left orientation (value is 1&lt;&lt;26).
      # <p>
      # When orientation is not explicitly specified, orientation is
      # inherited.  This means that children will be assigned the
      # orientation of their parent.  To override this behavior and
      # force an orientation for a child, explicitly set the orientation
      # of the child when that child is created.
      # <br>Note that this is a <em>HINT</em>.
      # </p>
      # <p><b>Used By:</b><ul>
      # <li><code>Control</code></li>
      # <li><code>Menu</code></li>
      # <li><code>GC</code></li>
      # </ul></p>
      # 
      # @since 2.1.2
      const_set_lazy(:RIGHT_TO_LEFT) { 1 << 26 }
      const_attr_reader  :RIGHT_TO_LEFT
      
      # Style constant to indicate coordinate mirroring (value is 1&lt;&lt;27).
      # <p><b>Used By:</b><ul>
      # <li><code>Control</code></li>
      # <li><code>Menu</code></li>
      # </ul></p>
      # 
      # @since 2.1.2
      const_set_lazy(:MIRRORED) { 1 << 27 }
      const_attr_reader  :MIRRORED
      
      # Style constant to allow embedding (value is 1&lt;&lt;24).
      # <p><b>Used By:</b><ul>
      # <li><code>Composite</code></li>
      # </ul></p>
      # 
      # @since 3.0
      const_set_lazy(:EMBEDDED) { 1 << 24 }
      const_attr_reader  :EMBEDDED
      
      # Style constant to allow virtual data (value is 1&lt;&lt;28).
      # <p><b>Used By:</b><ul>
      # <li><code>Table</code></li>
      # <li><code>Tree</code></li>
      # </ul></p>
      # 
      # @since 3.0
      const_set_lazy(:VIRTUAL) { 1 << 28 }
      const_attr_reader  :VIRTUAL
      
      # Style constant to indicate double buffering (value is 1&lt;&lt;29).
      # <p><b>Used By:</b><ul>
      # <li><code>Control</code></li>
      # </ul></p>
      # 
      # @since 3.1
      const_set_lazy(:DOUBLE_BUFFERED) { 1 << 29 }
      const_attr_reader  :DOUBLE_BUFFERED
      
      # Style constant for transparent behavior (value is 1&lt;&lt;30).
      # <p>
      # By default, before a widget paints, the client area is filled with the current background.
      # When this style is specified, the background is not filled and widgets that are obscured
      # will draw through.
      # </p><p><b>Used By:</b><ul>
      # <li><code>Composite</code></li>
      # </ul></p>
      # 
      # @since 3.4
      # 
      # WARNING: THIS API IS UNDER CONSTRUCTION AND SHOULD NOT BE USED
      const_set_lazy(:TRANSPARENT) { 1 << 30 }
      const_attr_reader  :TRANSPARENT
      
      # Style constant for align up behavior (value is 1&lt;&lt;7,
      # since align UP and align TOP are considered the same).
      # <p><b>Used By:</b><ul>
      # <li><code>Button</code> with <code>ARROW</code> style</li>
      # <li><code>Tracker</code></li>
      # <li><code>Table</code></li>
      # <li><code>Tree</code></li>
      # </ul></p>
      const_set_lazy(:UP) { 1 << 7 }
      const_attr_reader  :UP
      
      # Style constant to indicate single underline (value is 0).
      # <p><b>Used By:</b><ul>
      # <li><code>TextStyle</code></li>
      # </ul></p>
      # 
      # @since 3.4
      const_set_lazy(:UNDERLINE_SINGLE) { 0 }
      const_attr_reader  :UNDERLINE_SINGLE
      
      # Style constant to indicate double underline (value is 1).
      # <p><b>Used By:</b><ul>
      # <li><code>TextStyle</code></li>
      # </ul></p>
      # 
      # @since 3.4
      const_set_lazy(:UNDERLINE_DOUBLE) { 1 }
      const_attr_reader  :UNDERLINE_DOUBLE
      
      # Style constant to indicate error underline (value is 2).
      # <p><b>Used By:</b><ul>
      # <li><code>TextStyle</code></li>
      # </ul></p>
      # 
      # @since 3.4
      const_set_lazy(:UNDERLINE_ERROR) { 2 }
      const_attr_reader  :UNDERLINE_ERROR
      
      # Style constant to indicate squiggle underline (value is 3).
      # <p><b>Used By:</b><ul>
      # <li><code>TextStyle</code></li>
      # </ul></p>
      # 
      # @since 3.4
      const_set_lazy(:UNDERLINE_SQUIGGLE) { 3 }
      const_attr_reader  :UNDERLINE_SQUIGGLE
      
      # Style constant to indicate solid border (value is 1).
      # <p><b>Used By:</b><ul>
      # <li><code>TextStyle</code></li>
      # </ul></p>
      # 
      # @since 3.4
      const_set_lazy(:BORDER_SOLID) { 1 }
      const_attr_reader  :BORDER_SOLID
      
      # Style constant to indicate dashed border (value is 2).
      # <p><b>Used By:</b><ul>
      # <li><code>TextStyle</code></li>
      # </ul></p>
      # 
      # @since 3.4
      const_set_lazy(:BORDER_DASH) { 2 }
      const_attr_reader  :BORDER_DASH
      
      # Style constant to indicate dotted border (value is 4).
      # <p><b>Used By:</b><ul>
      # <li><code>TextStyle</code></li>
      # </ul></p>
      # 
      # @since 3.4
      const_set_lazy(:BORDER_DOT) { 4 }
      const_attr_reader  :BORDER_DOT
      
      # Style constant for align top behavior (value is 1&lt;&lt;7,
      # since align UP and align TOP are considered the same).
      # <p><b>Used By:</b><ul>
      # <li><code>FormAttachment</code> in a <code>FormLayout</code></li>
      # </ul></p>
      const_set_lazy(:TOP) { UP }
      const_attr_reader  :TOP
      
      # Style constant for align down behavior (value is 1&lt;&lt;10,
      # since align DOWN and align BOTTOM are considered the same).
      # <p><b>Used By:</b><ul>
      # <li><code>Button</code> with <code>ARROW</code> style</li>
      # <li><code>Tracker</code></li>
      # <li><code>Table</code></li>
      # <li><code>Tree</code></li>
      # </ul></p>
      const_set_lazy(:DOWN) { 1 << 10 }
      const_attr_reader  :DOWN
      
      # Style constant for align bottom behavior (value is 1&lt;&lt;10,
      # since align DOWN and align BOTTOM are considered the same).
      # <p><b>Used By:</b><ul>
      # <li><code>FormAttachment</code> in a <code>FormLayout</code></li>
      # </ul></p>
      const_set_lazy(:BOTTOM) { DOWN }
      const_attr_reader  :BOTTOM
      
      # Style constant for leading alignment (value is 1&lt;&lt;14).
      # <p><b>Used By:</b><ul>
      # <li><code>Button</code></li>
      # <li><code>Label</code></li>
      # <li><code>TableColumn</code></li>
      # <li><code>Tracker</code></li>
      # <li><code>FormAttachment</code> in a <code>FormLayout</code></li>
      # </ul></p>
      # 
      # @since 2.1.2
      const_set_lazy(:LEAD) { 1 << 14 }
      const_attr_reader  :LEAD
      
      # Style constant for align left behavior (value is 1&lt;&lt;14).
      # This is a synonym for LEAD (value is 1&lt;&lt;14).  Newer
      # applications should use LEAD instead of LEFT to make code more
      # understandable on right-to-left platforms.
      const_set_lazy(:LEFT) { LEAD }
      const_attr_reader  :LEFT
      
      # Style constant for trailing alignment (value is 1&lt;&lt;17).
      # <p><b>Used By:</b><ul>
      # <li><code>Button</code></li>
      # <li><code>Label</code></li>
      # <li><code>TableColumn</code></li>
      # <li><code>Tracker</code></li>
      # <li><code>FormAttachment</code> in a <code>FormLayout</code></li>
      # </ul></p>
      # 
      # @since 2.1.2
      const_set_lazy(:TRAIL) { 1 << 17 }
      const_attr_reader  :TRAIL
      
      # Style constant for align right behavior (value is 1&lt;&lt;17).
      # This is a synonym for TRAIL (value is 1&lt;&lt;17).  Newer
      # applications should use TRAIL instead of RIGHT to make code more
      # understandable on right-to-left platforms.
      const_set_lazy(:RIGHT) { TRAIL }
      const_attr_reader  :RIGHT
      
      # Style constant for align center behavior (value is 1&lt;&lt;24).
      # <p><b>Used By:</b><ul>
      # <li><code>Button</code></li>
      # <li><code>Label</code></li>
      # <li><code>TableColumn</code></li>
      # <li><code>FormAttachment</code> in a <code>FormLayout</code></li>
      # </ul></p>
      const_set_lazy(:CENTER) { 1 << 24 }
      const_attr_reader  :CENTER
      
      # Style constant for horizontal alignment or orientation behavior (value is 1&lt;&lt;8).
      # <p><b>Used By:</b><ul>
      # <li><code>Label</code></li>
      # <li><code>ProgressBar</code></li>
      # <li><code>Sash</code></li>
      # <li><code>Scale</code></li>
      # <li><code>ScrollBar</code></li>
      # <li><code>Slider</code></li>
      # <li><code>ToolBar</code></li>
      # <li><code>FillLayout</code> type</li>
      # <li><code>RowLayout</code> type</li>
      # </ul></p>
      const_set_lazy(:HORIZONTAL) { 1 << 8 }
      const_attr_reader  :HORIZONTAL
      
      # Style constant for vertical alignment or orientation behavior (value is 1&lt;&lt;9).
      # <p><b>Used By:</b><ul>
      # <li><code>Label</code></li>
      # <li><code>ProgressBar</code></li>
      # <li><code>Sash</code></li>
      # <li><code>Scale</code></li>
      # <li><code>ScrollBar</code></li>
      # <li><code>Slider</code></li>
      # <li><code>ToolBar</code></li>
      # <li><code>CoolBar</code></li>
      # <li><code>FillLayout</code> type</li>
      # <li><code>RowLayout</code> type</li>
      # </ul></p>
      const_set_lazy(:VERTICAL) { 1 << 9 }
      const_attr_reader  :VERTICAL
      
      # Style constant for date display (value is 1&lt;&lt;5).
      # <p><b>Used By:</b><ul>
      # <li><code>DateTime</code></li>
      # </ul></p>
      # 
      # @since 3.3
      const_set_lazy(:DATE) { 1 << 5 }
      const_attr_reader  :DATE
      
      # Style constant for time display (value is 1&lt;&lt;7).
      # <p><b>Used By:</b><ul>
      # <li><code>DateTime</code></li>
      # </ul></p>
      # 
      # @since 3.3
      const_set_lazy(:TIME) { 1 << 7 }
      const_attr_reader  :TIME
      
      # Style constant for calendar display (value is 1&lt;&lt;10).
      # <p><b>Used By:</b><ul>
      # <li><code>DateTime</code></li>
      # </ul></p>
      # 
      # @since 3.3
      const_set_lazy(:CALENDAR) { 1 << 10 }
      const_attr_reader  :CALENDAR
      
      # Style constant for short date/time format (value is 1&lt;&lt;15).
      # <p>
      # A short date displays the month and year.
      # A short time displays hours and minutes.
      # <br>Note that this is a <em>HINT</em>.
      # </p>
      # <p><b>Used By:</b><ul>
      # <li><code>DateTime</code></li>
      # </ul></p>
      # 
      # @since 3.3
      const_set_lazy(:SHORT) { 1 << 15 }
      const_attr_reader  :SHORT
      
      # Style constant for medium date/time format (value is 1&lt;&lt;16).
      # <p>
      # A medium date displays the day, month and year.
      # A medium time displays hours, minutes, and seconds.
      # <br>Note that this is a <em>HINT</em>.
      # </p>
      # <p><b>Used By:</b><ul>
      # <li><code>DateTime</code></li>
      # </ul></p>
      # 
      # @since 3.3
      const_set_lazy(:MEDIUM) { 1 << 16 }
      const_attr_reader  :MEDIUM
      
      # Style constant for long date/time format (value is 1&lt;&lt;28).
      # <p>
      # A long date displays the day, month and year.
      # A long time displays hours, minutes, and seconds.
      # The day and month names may be displayed.
      # <br>Note that this is a <em>HINT</em>.
      # </p>
      # <p><b>Used By:</b><ul>
      # <li><code>DateTime</code></li>
      # </ul></p>
      # 
      # @since 3.3
      const_set_lazy(:LONG) { 1 << 28 }
      const_attr_reader  :LONG
      
      # Style constant specifying that a Browser should use a Mozilla GRE
      # for rendering its content (value is 1&lt;&lt;15).
      # <p>
      # <p><b>Used By:</b><ul>
      # <li><code>Browser</code></li>
      # </ul></p>
      # 
      # @since 3.3
      const_set_lazy(:MOZILLA) { 1 << 15 }
      const_attr_reader  :MOZILLA
      
      # Style constant for balloon behavior (value is 1&lt;&lt;12).
      # <p><b>Used By:</b><ul>
      # <li><code>ToolTip</code></li>
      # </ul></p>
      # 
      # @since 3.2
      const_set_lazy(:BALLOON) { 1 << 12 }
      const_attr_reader  :BALLOON
      
      # Style constant for vertical alignment or orientation behavior (value is 1).
      # <p><b>Used By:</b><ul>
      # <li><code>GridLayout</code> type</li>
      # </ul></p>
      const_set_lazy(:BEGINNING) { 1 }
      const_attr_reader  :BEGINNING
      
      # Style constant for vertical alignment or orientation behavior (value is 4).
      # <p><b>Used By:</b><ul>
      # <li><code>GridLayout</code> type</li>
      # </ul></p>
      const_set_lazy(:FILL) { 4 }
      const_attr_reader  :FILL
      
      # Input Method Editor style constant for double byte
      # input behavior (value is 1&lt;&lt;1).
      const_set_lazy(:DBCS) { 1 << 1 }
      const_attr_reader  :DBCS
      
      # Input Method Editor style constant for alpha
      # input behavior (value is 1&lt;&lt;2).
      const_set_lazy(:ALPHA) { 1 << 2 }
      const_attr_reader  :ALPHA
      
      # Input Method Editor style constant for native
      # input behavior (value is 1&lt;&lt;3).
      const_set_lazy(:NATIVE) { 1 << 3 }
      const_attr_reader  :NATIVE
      
      # Input Method Editor style constant for phonetic
      # input behavior (value is 1&lt;&lt;4).
      const_set_lazy(:PHONETIC) { 1 << 4 }
      const_attr_reader  :PHONETIC
      
      # Input Method Editor style constant for romanicized
      # input behavior (value is 1&lt;&lt;5).
      const_set_lazy(:ROMAN) { 1 << 5 }
      const_attr_reader  :ROMAN
      
      # ASCII character convenience constant for the backspace character
      # (value is the <code>char</code> '\b').
      const_set_lazy(:BS) { Character.new(?\b.ord) }
      const_attr_reader  :BS
      
      # ASCII character convenience constant for the carriage return character
      # (value is the <code>char</code> '\r').
      const_set_lazy(:CR) { Character.new(?\r.ord) }
      const_attr_reader  :CR
      
      # ASCII character convenience constant for the delete character
      # (value is the <code>char</code> with value 127).
      const_set_lazy(:DEL) { 0x7f }
      const_attr_reader  :DEL
      
      # ASCII character convenience constant for the escape character
      # (value is the <code>char</code> with value 27).
      const_set_lazy(:ESC) { 0x1b }
      const_attr_reader  :ESC
      
      # ASCII character convenience constant for the line feed character
      # (value is the <code>char</code> '\n').
      const_set_lazy(:LF) { Character.new(?\n.ord) }
      const_attr_reader  :LF
      
      # ASCII character convenience constant for the tab character
      # (value is the <code>char</code> '\t').
      # 
      # @since 2.1
      const_set_lazy(:TAB) { Character.new(?\t.ord) }
      const_attr_reader  :TAB
      
      # keyboard and/or mouse event mask indicating that the ALT key
      # was pushed on the keyboard when the event was generated
      # (value is 1&lt;&lt;16).
      const_set_lazy(:ALT) { 1 << 16 }
      const_attr_reader  :ALT
      
      # Keyboard and/or mouse event mask indicating that the SHIFT key
      # was pushed on the keyboard when the event was generated
      # (value is 1&lt;&lt;17).
      const_set_lazy(:SHIFT) { 1 << 17 }
      const_attr_reader  :SHIFT
      
      # Keyboard and/or mouse event mask indicating that the CTRL key
      # was pushed on the keyboard when the event was generated
      # (value is 1&lt;&lt;18).
      const_set_lazy(:CTRL) { 1 << 18 }
      const_attr_reader  :CTRL
      
      # Keyboard and/or mouse event mask indicating that the CTRL key
      # was pushed on the keyboard when the event was generated. This
      # is a synonym for CTRL (value is 1&lt;&lt;18).
      const_set_lazy(:CONTROL) { CTRL }
      const_attr_reader  :CONTROL
      
      # Keyboard and/or mouse event mask indicating that the COMMAND key
      # was pushed on the keyboard when the event was generated
      # (value is 1&lt;&lt;22).
      # 
      # @since 2.1
      const_set_lazy(:COMMAND) { 1 << 22 }
      const_attr_reader  :COMMAND
      
      # Keyboard and/or mouse event mask indicating that mouse button one
      # was pushed when the event was generated. (value is 1&lt;&lt;19).
      const_set_lazy(:BUTTON1) { 1 << 19 }
      const_attr_reader  :BUTTON1
      
      # Keyboard and/or mouse event mask indicating that mouse button two
      # was pushed when the event was generated. (value is 1&lt;&lt;20).
      const_set_lazy(:BUTTON2) { 1 << 20 }
      const_attr_reader  :BUTTON2
      
      # Keyboard and/or mouse event mask indicating that mouse button three
      # was pushed when the event was generated. (value is 1&lt;&lt;21).
      const_set_lazy(:BUTTON3) { 1 << 21 }
      const_attr_reader  :BUTTON3
      
      # Keyboard and/or mouse event mask indicating that mouse button four
      # was pushed when the event was generated. (value is 1&lt;&lt;23).
      # 
      # @since 3.1
      const_set_lazy(:BUTTON4) { 1 << 23 }
      const_attr_reader  :BUTTON4
      
      # Keyboard and/or mouse event mask indicating that mouse button five
      # was pushed when the event was generated. (value is 1&lt;&lt;25).
      # 
      # @since 3.1
      const_set_lazy(:BUTTON5) { 1 << 25 }
      const_attr_reader  :BUTTON5
      
      # Constants to indicate line scrolling (value is 1).
      # <p><b>Used By:</b><ul>
      # <li><code>Control</code></li>
      # </ul></p>
      # 
      # @since 3.1
      const_set_lazy(:SCROLL_LINE) { 1 }
      const_attr_reader  :SCROLL_LINE
      
      # Constants to indicate page scrolling (value is 2).
      # <p><b>Used By:</b><ul>
      # <li><code>Control</code></li>
      # </ul></p>
      # 
      # @since 3.1
      const_set_lazy(:SCROLL_PAGE) { 2 }
      const_attr_reader  :SCROLL_PAGE
      
      # Accelerator constant used to differentiate a key code from a
      # unicode character.
      # 
      # If this bit is set, then the key stroke
      # portion of an accelerator represents a key code.  If this bit
      # is not set, then the key stroke portion of an accelerator is
      # a unicode character.
      # 
      # The following expression is false:
      # 
      # <code>((SWT.MOD1 | SWT.MOD2 | 'T') & SWT.KEYCODE_BIT) != 0</code>.
      # 
      # The following expression is true:
      # 
      # <code>((SWT.MOD3 | SWT.F2) & SWT.KEYCODE_BIT) != 0</code>.
      # 
      # (value is (1&lt;&lt;24))
      # 
      # @since 2.1
      const_set_lazy(:KEYCODE_BIT) { (1 << 24) }
      const_attr_reader  :KEYCODE_BIT
      
      # Accelerator constant used to extract the key stroke portion of
      # an accelerator.
      # 
      # The key stroke may be a key code or a unicode
      # value.  If the key stroke is a key code <code>KEYCODE_BIT</code>
      # will be set.
      # 
      # @since 2.1
      const_set_lazy(:KEY_MASK) { KEYCODE_BIT + 0xffff }
      const_attr_reader  :KEY_MASK
      
      # Keyboard event constant representing the UP ARROW key
      # (value is (1&lt;&lt;24)+1).
      const_set_lazy(:ARROW_UP) { KEYCODE_BIT + 1 }
      const_attr_reader  :ARROW_UP
      
      # Keyboard event constant representing the DOWN ARROW key
      # (value is (1&lt;&lt;24)+2).
      const_set_lazy(:ARROW_DOWN) { KEYCODE_BIT + 2 }
      const_attr_reader  :ARROW_DOWN
      
      # Keyboard event constant representing the LEFT ARROW key
      # (value is (1&lt;&lt;24)+3).
      const_set_lazy(:ARROW_LEFT) { KEYCODE_BIT + 3 }
      const_attr_reader  :ARROW_LEFT
      
      # Keyboard event constant representing the RIGHT ARROW key
      # (value is (1&lt;&lt;24)+4).
      const_set_lazy(:ARROW_RIGHT) { KEYCODE_BIT + 4 }
      const_attr_reader  :ARROW_RIGHT
      
      # Keyboard event constant representing the PAGE UP key
      # (value is (1&lt;&lt;24)+5).
      const_set_lazy(:PAGE_UP) { KEYCODE_BIT + 5 }
      const_attr_reader  :PAGE_UP
      
      # Keyboard event constant representing the PAGE DOWN key
      # (value is (1&lt;&lt;24)+6).
      const_set_lazy(:PAGE_DOWN) { KEYCODE_BIT + 6 }
      const_attr_reader  :PAGE_DOWN
      
      # Keyboard event constant representing the HOME key
      # (value is (1&lt;&lt;24)+7).
      const_set_lazy(:HOME) { KEYCODE_BIT + 7 }
      const_attr_reader  :HOME
      
      # Keyboard event constant representing the END key
      # (value is (1&lt;&lt;24)+8).
      const_set_lazy(:END_) { KEYCODE_BIT + 8 }
      const_attr_reader  :END_
      
      # Keyboard event constant representing the INSERT key
      # (value is (1&lt;&lt;24)+9).
      const_set_lazy(:INSERT) { KEYCODE_BIT + 9 }
      const_attr_reader  :INSERT
      
      # Keyboard event constant representing the F1 key
      # (value is (1&lt;&lt;24)+10).
      const_set_lazy(:F1) { KEYCODE_BIT + 10 }
      const_attr_reader  :F1
      
      # Keyboard event constant representing the F2 key
      # (value is (1&lt;&lt;24)+11).
      const_set_lazy(:F2) { KEYCODE_BIT + 11 }
      const_attr_reader  :F2
      
      # Keyboard event constant representing the F3 key
      # (value is (1&lt;&lt;24)+12).
      const_set_lazy(:F3) { KEYCODE_BIT + 12 }
      const_attr_reader  :F3
      
      # Keyboard event constant representing the F4 key
      # (value is (1&lt;&lt;24)+13).
      const_set_lazy(:F4) { KEYCODE_BIT + 13 }
      const_attr_reader  :F4
      
      # Keyboard event constant representing the F5 key
      # (value is (1&lt;&lt;24)+14).
      const_set_lazy(:F5) { KEYCODE_BIT + 14 }
      const_attr_reader  :F5
      
      # Keyboard event constant representing the F6 key
      # (value is (1&lt;&lt;24)+15).
      const_set_lazy(:F6) { KEYCODE_BIT + 15 }
      const_attr_reader  :F6
      
      # Keyboard event constant representing the F7 key
      # (value is (1&lt;&lt;24)+16).
      const_set_lazy(:F7) { KEYCODE_BIT + 16 }
      const_attr_reader  :F7
      
      # Keyboard event constant representing the F8 key
      # (value is (1&lt;&lt;24)+17).
      const_set_lazy(:F8) { KEYCODE_BIT + 17 }
      const_attr_reader  :F8
      
      # Keyboard event constant representing the F9 key
      # (value is (1&lt;&lt;24)+18).
      const_set_lazy(:F9) { KEYCODE_BIT + 18 }
      const_attr_reader  :F9
      
      # Keyboard event constant representing the F10 key
      # (value is (1&lt;&lt;24)+19).
      const_set_lazy(:F10) { KEYCODE_BIT + 19 }
      const_attr_reader  :F10
      
      # Keyboard event constant representing the F11 key
      # (value is (1&lt;&lt;24)+20).
      const_set_lazy(:F11) { KEYCODE_BIT + 20 }
      const_attr_reader  :F11
      
      # Keyboard event constant representing the F12 key
      # (value is (1&lt;&lt;24)+21).
      const_set_lazy(:F12) { KEYCODE_BIT + 21 }
      const_attr_reader  :F12
      
      # Keyboard event constant representing the F13 key
      # (value is (1&lt;&lt;24)+22).
      # 
      # @since 3.0
      const_set_lazy(:F13) { KEYCODE_BIT + 22 }
      const_attr_reader  :F13
      
      # Keyboard event constant representing the F14 key
      # (value is (1&lt;&lt;24)+23).
      # 
      # @since 3.0
      const_set_lazy(:F14) { KEYCODE_BIT + 23 }
      const_attr_reader  :F14
      
      # Keyboard event constant representing the F15 key
      # (value is (1&lt;&lt;24)+24).
      # 
      # @since 3.0
      const_set_lazy(:F15) { KEYCODE_BIT + 24 }
      const_attr_reader  :F15
      
      # Keyboard event constant representing the numeric key
      # pad multiply key (value is (1&lt;&lt;24)+42).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_MULTIPLY) { KEYCODE_BIT + 42 }
      const_attr_reader  :KEYPAD_MULTIPLY
      
      # Keyboard event constant representing the numeric key
      # pad add key (value is (1&lt;&lt;24)+43).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_ADD) { KEYCODE_BIT + 43 }
      const_attr_reader  :KEYPAD_ADD
      
      # Keyboard event constant representing the numeric key
      # pad subtract key (value is (1&lt;&lt;24)+45).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_SUBTRACT) { KEYCODE_BIT + 45 }
      const_attr_reader  :KEYPAD_SUBTRACT
      
      # Keyboard event constant representing the numeric key
      # pad decimal key (value is (1&lt;&lt;24)+46).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_DECIMAL) { KEYCODE_BIT + 46 }
      const_attr_reader  :KEYPAD_DECIMAL
      
      # Keyboard event constant representing the numeric key
      # pad divide key (value is (1&lt;&lt;24)+47).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_DIVIDE) { KEYCODE_BIT + 47 }
      const_attr_reader  :KEYPAD_DIVIDE
      
      # Keyboard event constant representing the numeric key
      # pad zero key (value is (1&lt;&lt;24)+48).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_0) { KEYCODE_BIT + 48 }
      const_attr_reader  :KEYPAD_0
      
      # Keyboard event constant representing the numeric key
      # pad one key (value is (1&lt;&lt;24)+49).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_1) { KEYCODE_BIT + 49 }
      const_attr_reader  :KEYPAD_1
      
      # Keyboard event constant representing the numeric key
      # pad two key (value is (1&lt;&lt;24)+50).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_2) { KEYCODE_BIT + 50 }
      const_attr_reader  :KEYPAD_2
      
      # Keyboard event constant representing the numeric key
      # pad three key (value is (1&lt;&lt;24)+51).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_3) { KEYCODE_BIT + 51 }
      const_attr_reader  :KEYPAD_3
      
      # Keyboard event constant representing the numeric key
      # pad four key (value is (1&lt;&lt;24)+52).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_4) { KEYCODE_BIT + 52 }
      const_attr_reader  :KEYPAD_4
      
      # Keyboard event constant representing the numeric key
      # pad five key (value is (1&lt;&lt;24)+53).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_5) { KEYCODE_BIT + 53 }
      const_attr_reader  :KEYPAD_5
      
      # Keyboard event constant representing the numeric key
      # pad six key (value is (1&lt;&lt;24)+54).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_6) { KEYCODE_BIT + 54 }
      const_attr_reader  :KEYPAD_6
      
      # Keyboard event constant representing the numeric key
      # pad seven key (value is (1&lt;&lt;24)+55).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_7) { KEYCODE_BIT + 55 }
      const_attr_reader  :KEYPAD_7
      
      # Keyboard event constant representing the numeric key
      # pad eight key (value is (1&lt;&lt;24)+56).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_8) { KEYCODE_BIT + 56 }
      const_attr_reader  :KEYPAD_8
      
      # Keyboard event constant representing the numeric key
      # pad nine key (value is (1&lt;&lt;24)+57).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_9) { KEYCODE_BIT + 57 }
      const_attr_reader  :KEYPAD_9
      
      # Keyboard event constant representing the numeric key
      # pad equal key (value is (1&lt;&lt;24)+61).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_EQUAL) { KEYCODE_BIT + 61 }
      const_attr_reader  :KEYPAD_EQUAL
      
      # Keyboard event constant representing the numeric key
      # pad enter key (value is (1&lt;&lt;24)+80).
      # 
      # @since 3.0
      const_set_lazy(:KEYPAD_CR) { KEYCODE_BIT + 80 }
      const_attr_reader  :KEYPAD_CR
      
      # Keyboard event constant representing the help
      # key (value is (1&lt;&lt;24)+81).
      # 
      # NOTE: The HELP key maps to the key labeled "help",
      # not "F1". If your keyboard does not have a HELP key,
      # you will never see this key press.  To listen for
      # help on a control, use SWT.Help.
      # 
      # @since 3.0
      # 
      # @see SWT#Help
      const_set_lazy(:HELP) { KEYCODE_BIT + 81 }
      const_attr_reader  :HELP
      
      # Keyboard event constant representing the caps
      # lock key (value is (1&lt;&lt;24)+82).
      # 
      # @since 3.0
      const_set_lazy(:CAPS_LOCK) { KEYCODE_BIT + 82 }
      const_attr_reader  :CAPS_LOCK
      
      # Keyboard event constant representing the num
      # lock key (value is (1&lt;&lt;24)+83).
      # 
      # @since 3.0
      const_set_lazy(:NUM_LOCK) { KEYCODE_BIT + 83 }
      const_attr_reader  :NUM_LOCK
      
      # Keyboard event constant representing the scroll
      # lock key (value is (1&lt;&lt;24)+84).
      # 
      # @since 3.0
      const_set_lazy(:SCROLL_LOCK) { KEYCODE_BIT + 84 }
      const_attr_reader  :SCROLL_LOCK
      
      # Keyboard event constant representing the pause
      # key (value is (1&lt;&lt;24)+85).
      # 
      # @since 3.0
      const_set_lazy(:PAUSE) { KEYCODE_BIT + 85 }
      const_attr_reader  :PAUSE
      
      # Keyboard event constant representing the break
      # key (value is (1&lt;&lt;24)+86).
      # 
      # @since 3.0
      const_set_lazy(:BREAK) { KEYCODE_BIT + 86 }
      const_attr_reader  :BREAK
      
      # Keyboard event constant representing the print screen
      # key (value is (1&lt;&lt;24)+87).
      # 
      # @since 3.0
      const_set_lazy(:PRINT_SCREEN) { KEYCODE_BIT + 87 }
      const_attr_reader  :PRINT_SCREEN
      
      # The <code>MessageBox</code> style constant for error icon
      # behavior (value is 1).
      const_set_lazy(:ICON_ERROR) { 1 }
      const_attr_reader  :ICON_ERROR
      
      # The <code>MessageBox</code> style constant for information icon
      # behavior (value is 1&lt;&lt;1).
      const_set_lazy(:ICON_INFORMATION) { 1 << 1 }
      const_attr_reader  :ICON_INFORMATION
      
      # The <code>MessageBox</code> style constant for question icon
      # behavior (value is 1&lt;&lt;2).
      const_set_lazy(:ICON_QUESTION) { 1 << 2 }
      const_attr_reader  :ICON_QUESTION
      
      # The <code>MessageBox</code> style constant for warning icon
      # behavior (value is 1&lt;&lt;3).
      const_set_lazy(:ICON_WARNING) { 1 << 3 }
      const_attr_reader  :ICON_WARNING
      
      # The <code>MessageBox</code> style constant for "working" icon
      # behavior (value is 1&lt;&lt;4).
      const_set_lazy(:ICON_WORKING) { 1 << 4 }
      const_attr_reader  :ICON_WORKING
      
      # The <code>MessageBox</code> style constant for an OK button;
      # valid combinations are OK, OK|CANCEL
      # (value is 1&lt;&lt;5).
      const_set_lazy(:OK) { 1 << 5 }
      const_attr_reader  :OK
      
      # The <code>MessageBox</code> style constant for YES button;
      # valid combinations are YES|NO, YES|NO|CANCEL
      # (value is 1&lt;&lt;6).
      const_set_lazy(:YES) { 1 << 6 }
      const_attr_reader  :YES
      
      # The <code>MessageBox</code> style constant for NO button;
      # valid combinations are YES|NO, YES|NO|CANCEL
      # (value is 1&lt;&lt;7).
      const_set_lazy(:NO) { 1 << 7 }
      const_attr_reader  :NO
      
      # The <code>MessageBox</code> style constant for a CANCEL button;
      # valid combinations are OK|CANCEL, YES|NO|CANCEL, RETRY|CANCEL
      # (value is 1&lt;&lt;8).  This style constant is also used with
      # <code>Text</code> in combination with SEARCH.
      # 
      # <p><b>Used By:</b><ul>
      # <li><code>MessageBox</code></li>
      # <li><code>Text</code></li>
      # </ul></p>
      const_set_lazy(:CANCEL) { 1 << 8 }
      const_attr_reader  :CANCEL
      
      # The <code>MessageBox</code> style constant for an ABORT button;
      # the only valid combination is ABORT|RETRY|IGNORE
      # (value is 1&lt;&lt;9).
      const_set_lazy(:ABORT) { 1 << 9 }
      const_attr_reader  :ABORT
      
      # The <code>MessageBox</code> style constant for a RETRY button;
      # valid combinations are ABORT|RETRY|IGNORE, RETRY|CANCEL
      # (value is 1&lt;&lt;10).
      const_set_lazy(:RETRY) { 1 << 10 }
      const_attr_reader  :RETRY
      
      # The <code>MessageBox</code> style constant for an IGNORE button;
      # the only valid combination is ABORT|RETRY|IGNORE
      # (value is 1&lt;&lt;11).
      const_set_lazy(:IGNORE) { 1 << 11 }
      const_attr_reader  :IGNORE
      
      # The <code>FileDialog</code> style constant for open file dialog behavior
      # (value is 1&lt;&lt;12).
      const_set_lazy(:OPEN) { 1 << 12 }
      const_attr_reader  :OPEN
      
      # The <code>FileDialog</code> style constant for save file dialog behavior
      # (value is 1&lt;&lt;13).
      const_set_lazy(:SAVE) { 1 << 13 }
      const_attr_reader  :SAVE
      
      # The <code>Composite</code> constant to indicate that
      # an attribute (such as background) is not inherited
      # by the children (value is 0).
      # 
      # @since 3.2
      const_set_lazy(:INHERIT_NONE) { 0 }
      const_attr_reader  :INHERIT_NONE
      
      # The <code>Composite</code> constant to indicate that
      # an attribute (such as background) is inherited by
      # children who choose this value as their "default"
      # (value is 1).  For example, a label child will
      # typically choose to inherit the background color
      # of a composite while a list or table will not.
      # 
      # @since 3.2
      const_set_lazy(:INHERIT_DEFAULT) { 1 }
      const_attr_reader  :INHERIT_DEFAULT
      
      # The <code>Composite</code> constant to indicate that
      # an attribute (such as background) is inherited by
      # all children.
      # 
      # @since 3.2
      const_set_lazy(:INHERIT_FORCE) { 2 }
      const_attr_reader  :INHERIT_FORCE
      
      # Default color white (value is 1).
      const_set_lazy(:COLOR_WHITE) { 1 }
      const_attr_reader  :COLOR_WHITE
      
      # Default color black (value is 2).
      const_set_lazy(:COLOR_BLACK) { 2 }
      const_attr_reader  :COLOR_BLACK
      
      # Default color red (value is 3).
      const_set_lazy(:COLOR_RED) { 3 }
      const_attr_reader  :COLOR_RED
      
      # Default color dark red (value is 4).
      const_set_lazy(:COLOR_DARK_RED) { 4 }
      const_attr_reader  :COLOR_DARK_RED
      
      # Default color green (value is 5).
      const_set_lazy(:COLOR_GREEN) { 5 }
      const_attr_reader  :COLOR_GREEN
      
      # Default color dark green (value is 6).
      const_set_lazy(:COLOR_DARK_GREEN) { 6 }
      const_attr_reader  :COLOR_DARK_GREEN
      
      # Default color yellow (value is 7).
      const_set_lazy(:COLOR_YELLOW) { 7 }
      const_attr_reader  :COLOR_YELLOW
      
      # Default color dark yellow (value is 8).
      const_set_lazy(:COLOR_DARK_YELLOW) { 8 }
      const_attr_reader  :COLOR_DARK_YELLOW
      
      # Default color blue (value is 9).
      const_set_lazy(:COLOR_BLUE) { 9 }
      const_attr_reader  :COLOR_BLUE
      
      # Default color dark blue (value is 10).
      const_set_lazy(:COLOR_DARK_BLUE) { 10 }
      const_attr_reader  :COLOR_DARK_BLUE
      
      # Default color magenta (value is 11).
      const_set_lazy(:COLOR_MAGENTA) { 11 }
      const_attr_reader  :COLOR_MAGENTA
      
      # Default color dark magenta (value is 12).
      const_set_lazy(:COLOR_DARK_MAGENTA) { 12 }
      const_attr_reader  :COLOR_DARK_MAGENTA
      
      # Default color cyan (value is 13).
      const_set_lazy(:COLOR_CYAN) { 13 }
      const_attr_reader  :COLOR_CYAN
      
      # Default color dark cyan (value is 14).
      const_set_lazy(:COLOR_DARK_CYAN) { 14 }
      const_attr_reader  :COLOR_DARK_CYAN
      
      # Default color gray (value is 15).
      const_set_lazy(:COLOR_GRAY) { 15 }
      const_attr_reader  :COLOR_GRAY
      
      # Default color dark gray (value is 16).
      const_set_lazy(:COLOR_DARK_GRAY) { 16 }
      const_attr_reader  :COLOR_DARK_GRAY
      
      # System Colors
      # 
      # Dealing with system colors is an area where there are
      # many platform differences.  On some platforms, system
      # colors can change dynamically while the program is
      # running.  On other platforms, system colors can be
      # changed for all instances of a particular widget.
      # Therefore, the only truly portable method to obtain
      # a widget color query is to query the color from an
      # instance of the widget.
      # 
      # It is expected that the list of supported colors
      # will grow over time.
      # 
      # 
      # System color used to paint dark shadow areas (value is 17).
      const_set_lazy(:COLOR_WIDGET_DARK_SHADOW) { 17 }
      const_attr_reader  :COLOR_WIDGET_DARK_SHADOW
      
      # System color used to paint normal shadow areas (value is 18).
      const_set_lazy(:COLOR_WIDGET_NORMAL_SHADOW) { 18 }
      const_attr_reader  :COLOR_WIDGET_NORMAL_SHADOW
      
      # System color used to paint light shadow areas (value is 19).
      const_set_lazy(:COLOR_WIDGET_LIGHT_SHADOW) { 19 }
      const_attr_reader  :COLOR_WIDGET_LIGHT_SHADOW
      
      # System color used to paint highlight shadow areas (value is 20).
      const_set_lazy(:COLOR_WIDGET_HIGHLIGHT_SHADOW) { 20 }
      const_attr_reader  :COLOR_WIDGET_HIGHLIGHT_SHADOW
      
      # System color used to paint foreground areas (value is 21).
      const_set_lazy(:COLOR_WIDGET_FOREGROUND) { 21 }
      const_attr_reader  :COLOR_WIDGET_FOREGROUND
      
      # System color used to paint background areas (value is 22).
      const_set_lazy(:COLOR_WIDGET_BACKGROUND) { 22 }
      const_attr_reader  :COLOR_WIDGET_BACKGROUND
      
      # System color used to paint border areas (value is 23).
      const_set_lazy(:COLOR_WIDGET_BORDER) { 23 }
      const_attr_reader  :COLOR_WIDGET_BORDER
      
      # System color used to paint list foreground areas (value is 24).
      const_set_lazy(:COLOR_LIST_FOREGROUND) { 24 }
      const_attr_reader  :COLOR_LIST_FOREGROUND
      
      # System color used to paint list background areas (value is 25).
      const_set_lazy(:COLOR_LIST_BACKGROUND) { 25 }
      const_attr_reader  :COLOR_LIST_BACKGROUND
      
      # System color used to paint list selection background areas (value is 26).
      const_set_lazy(:COLOR_LIST_SELECTION) { 26 }
      const_attr_reader  :COLOR_LIST_SELECTION
      
      # System color used to paint list selected text (value is 27).
      const_set_lazy(:COLOR_LIST_SELECTION_TEXT) { 27 }
      const_attr_reader  :COLOR_LIST_SELECTION_TEXT
      
      # System color used to paint tooltip text (value is 28).
      const_set_lazy(:COLOR_INFO_FOREGROUND) { 28 }
      const_attr_reader  :COLOR_INFO_FOREGROUND
      
      # System color used to paint tooltip background areas (value is 29).
      const_set_lazy(:COLOR_INFO_BACKGROUND) { 29 }
      const_attr_reader  :COLOR_INFO_BACKGROUND
      
      # System color used to paint title text (value is 30).
      const_set_lazy(:COLOR_TITLE_FOREGROUND) { 30 }
      const_attr_reader  :COLOR_TITLE_FOREGROUND
      
      # System color used to paint title background areas (value is 31).
      const_set_lazy(:COLOR_TITLE_BACKGROUND) { 31 }
      const_attr_reader  :COLOR_TITLE_BACKGROUND
      
      # System color used to paint title background gradient (value is 32).
      const_set_lazy(:COLOR_TITLE_BACKGROUND_GRADIENT) { 32 }
      const_attr_reader  :COLOR_TITLE_BACKGROUND_GRADIENT
      
      # System color used to paint inactive title text (value is 33).
      const_set_lazy(:COLOR_TITLE_INACTIVE_FOREGROUND) { 33 }
      const_attr_reader  :COLOR_TITLE_INACTIVE_FOREGROUND
      
      # System color used to paint inactive title background areas (value is 34).
      const_set_lazy(:COLOR_TITLE_INACTIVE_BACKGROUND) { 34 }
      const_attr_reader  :COLOR_TITLE_INACTIVE_BACKGROUND
      
      # System color used to paint inactive title background gradient (value is 35).
      const_set_lazy(:COLOR_TITLE_INACTIVE_BACKGROUND_GRADIENT) { 35 }
      const_attr_reader  :COLOR_TITLE_INACTIVE_BACKGROUND_GRADIENT
      
      # Draw constant indicating whether the drawing operation
      # should fill the background (value is 1&lt;&lt;0).
      const_set_lazy(:DRAW_TRANSPARENT) { 1 << 0 }
      const_attr_reader  :DRAW_TRANSPARENT
      
      # Draw constant indicating whether the string drawing operation
      # should handle line-delimiters (value is 1&lt;&lt;1).
      const_set_lazy(:DRAW_DELIMITER) { 1 << 1 }
      const_attr_reader  :DRAW_DELIMITER
      
      # Draw constant indicating whether the string drawing operation
      # should expand TAB characters (value is 1&lt;&lt;2).
      const_set_lazy(:DRAW_TAB) { 1 << 2 }
      const_attr_reader  :DRAW_TAB
      
      # Draw constant indicating whether the string drawing operation
      # should handle mnemonics (value is 1&lt;&lt;3).
      const_set_lazy(:DRAW_MNEMONIC) { 1 << 3 }
      const_attr_reader  :DRAW_MNEMONIC
      
      # Selection constant indicating that a line delimiter should be
      # drawn (value is 1&lt;&lt;17).
      # 
      # <p><b>Used By:</b><ul>
      # <li><code>TextLayout</code></li>
      # </ul></p>
      # 
      # @see #FULL_SELECTION
      # @see #LAST_LINE_SELECTION
      # 
      # @since 3.3
      const_set_lazy(:DELIMITER_SELECTION) { 1 << 17 }
      const_attr_reader  :DELIMITER_SELECTION
      
      # Selection constant indicating that the last line is selected
      # to the end and should be drawn using either a line delimiter
      # or full line selection (value is 1&lt;&lt;20).
      # 
      # <p><b>Used By:</b><ul>
      # <li><code>TextLayout</code></li>
      # </ul></p>
      # 
      # @see #DELIMITER_SELECTION
      # @see #FULL_SELECTION
      # 
      # @since 3.3
      const_set_lazy(:LAST_LINE_SELECTION) { 1 << 20 }
      const_attr_reader  :LAST_LINE_SELECTION
      
      # SWT error constant indicating that no error number was specified
      # (value is 1).
      const_set_lazy(:ERROR_UNSPECIFIED) { 1 }
      const_attr_reader  :ERROR_UNSPECIFIED
      
      # SWT error constant indicating that no more handles for an
      # operating system resource are available
      # (value is 2).
      const_set_lazy(:ERROR_NO_HANDLES) { 2 }
      const_attr_reader  :ERROR_NO_HANDLES
      
      # SWT error constant indicating that no more callback resources are available
      # (value is 3).
      const_set_lazy(:ERROR_NO_MORE_CALLBACKS) { 3 }
      const_attr_reader  :ERROR_NO_MORE_CALLBACKS
      
      # SWT error constant indicating that a null argument was passed in
      # (value is 4).
      const_set_lazy(:ERROR_NULL_ARGUMENT) { 4 }
      const_attr_reader  :ERROR_NULL_ARGUMENT
      
      # SWT error constant indicating that an invalid argument was passed in
      # (value is 5).
      const_set_lazy(:ERROR_INVALID_ARGUMENT) { 5 }
      const_attr_reader  :ERROR_INVALID_ARGUMENT
      
      # SWT error constant indicating that a value was found to be
      # outside the allowable range
      # (value is 6).
      const_set_lazy(:ERROR_INVALID_RANGE) { 6 }
      const_attr_reader  :ERROR_INVALID_RANGE
      
      # SWT error constant indicating that a value which can not be
      # zero was found to be
      # (value is 7).
      const_set_lazy(:ERROR_CANNOT_BE_ZERO) { 7 }
      const_attr_reader  :ERROR_CANNOT_BE_ZERO
      
      # SWT error constant indicating that the underlying operating
      # system was unable to provide the value of an item
      # (value is 8).
      const_set_lazy(:ERROR_CANNOT_GET_ITEM) { 8 }
      const_attr_reader  :ERROR_CANNOT_GET_ITEM
      
      # SWT error constant indicating that the underlying operating
      # system was unable to provide the selection
      # (value is 9).
      const_set_lazy(:ERROR_CANNOT_GET_SELECTION) { 9 }
      const_attr_reader  :ERROR_CANNOT_GET_SELECTION
      
      # SWT error constant indicating that the matrix is not invertible
      # (value is 10).
      # 
      # @since 3.1
      const_set_lazy(:ERROR_CANNOT_INVERT_MATRIX) { 10 }
      const_attr_reader  :ERROR_CANNOT_INVERT_MATRIX
      
      # SWT error constant indicating that the underlying operating
      # system was unable to provide the height of an item
      # (value is 11).
      const_set_lazy(:ERROR_CANNOT_GET_ITEM_HEIGHT) { 11 }
      const_attr_reader  :ERROR_CANNOT_GET_ITEM_HEIGHT
      
      # SWT error constant indicating that the underlying operating
      # system was unable to provide the text of a widget
      # (value is 12).
      const_set_lazy(:ERROR_CANNOT_GET_TEXT) { 12 }
      const_attr_reader  :ERROR_CANNOT_GET_TEXT
      
      # SWT error constant indicating that the underlying operating
      # system was unable to set the text of a widget
      # (value is 13).
      const_set_lazy(:ERROR_CANNOT_SET_TEXT) { 13 }
      const_attr_reader  :ERROR_CANNOT_SET_TEXT
      
      # SWT error constant indicating that the underlying operating
      # system was unable to add an item
      # (value is 14).
      const_set_lazy(:ERROR_ITEM_NOT_ADDED) { 14 }
      const_attr_reader  :ERROR_ITEM_NOT_ADDED
      
      # SWT error constant indicating that the underlying operating
      # system was unable to remove an item
      # (value is 15).
      const_set_lazy(:ERROR_ITEM_NOT_REMOVED) { 15 }
      const_attr_reader  :ERROR_ITEM_NOT_REMOVED
      
      # SWT error constant indicating that the graphics library
      # is not available
      # (value is 16).
      const_set_lazy(:ERROR_NO_GRAPHICS_LIBRARY) { 16 }
      const_attr_reader  :ERROR_NO_GRAPHICS_LIBRARY
      
      # SWT error constant indicating that a particular feature has
      # not been implemented on this platform
      # (value is 20).
      const_set_lazy(:ERROR_NOT_IMPLEMENTED) { 20 }
      const_attr_reader  :ERROR_NOT_IMPLEMENTED
      
      # SWT error constant indicating that a menu which needed
      # to have the drop down style had some other style instead
      # (value is 21).
      const_set_lazy(:ERROR_MENU_NOT_DROP_DOWN) { 21 }
      const_attr_reader  :ERROR_MENU_NOT_DROP_DOWN
      
      # SWT error constant indicating that an attempt was made to
      # invoke an SWT operation which can only be executed by the
      # user-interface thread from some other thread
      # (value is 22).
      const_set_lazy(:ERROR_THREAD_INVALID_ACCESS) { 22 }
      const_attr_reader  :ERROR_THREAD_INVALID_ACCESS
      
      # SWT error constant indicating that an attempt was made to
      # invoke an SWT operation using a widget which had already
      # been disposed
      # (value is 24).
      const_set_lazy(:ERROR_WIDGET_DISPOSED) { 24 }
      const_attr_reader  :ERROR_WIDGET_DISPOSED
      
      # SWT error constant indicating that a menu item which needed
      # to have the cascade style had some other style instead
      # (value is 27).
      const_set_lazy(:ERROR_MENUITEM_NOT_CASCADE) { 27 }
      const_attr_reader  :ERROR_MENUITEM_NOT_CASCADE
      
      # SWT error constant indicating that the underlying operating
      # system was unable to set the selection of a widget
      # (value is 28).
      const_set_lazy(:ERROR_CANNOT_SET_SELECTION) { 28 }
      const_attr_reader  :ERROR_CANNOT_SET_SELECTION
      
      # SWT error constant indicating that the underlying operating
      # system was unable to set the menu
      # (value is 29).
      const_set_lazy(:ERROR_CANNOT_SET_MENU) { 29 }
      const_attr_reader  :ERROR_CANNOT_SET_MENU
      
      # SWT error constant indicating that the underlying operating
      # system was unable to set the enabled state
      # (value is 30).
      const_set_lazy(:ERROR_CANNOT_SET_ENABLED) { 30 }
      const_attr_reader  :ERROR_CANNOT_SET_ENABLED
      
      # SWT error constant indicating that the underlying operating
      # system was unable to provide enabled/disabled state information
      # (value is 31).
      const_set_lazy(:ERROR_CANNOT_GET_ENABLED) { 31 }
      const_attr_reader  :ERROR_CANNOT_GET_ENABLED
      
      # SWT error constant indicating that a provided widget can
      # not be used as a parent in the current operation
      # (value is 32).
      const_set_lazy(:ERROR_INVALID_PARENT) { 32 }
      const_attr_reader  :ERROR_INVALID_PARENT
      
      # SWT error constant indicating that a menu which needed
      # to have the menu bar style had some other style instead
      # (value is 33).
      const_set_lazy(:ERROR_MENU_NOT_BAR) { 33 }
      const_attr_reader  :ERROR_MENU_NOT_BAR
      
      # SWT error constant indicating that the underlying operating
      # system was unable to provide count information
      # (value is 36).
      const_set_lazy(:ERROR_CANNOT_GET_COUNT) { 36 }
      const_attr_reader  :ERROR_CANNOT_GET_COUNT
      
      # SWT error constant indicating that a menu which needed
      # to have the pop up menu style had some other style instead
      # (value is 37).
      const_set_lazy(:ERROR_MENU_NOT_POP_UP) { 37 }
      const_attr_reader  :ERROR_MENU_NOT_POP_UP
      
      # SWT error constant indicating that a graphics operation
      # was attempted with an image of an unsupported depth
      # (value is 38).
      const_set_lazy(:ERROR_UNSUPPORTED_DEPTH) { 38 }
      const_attr_reader  :ERROR_UNSUPPORTED_DEPTH
      
      # SWT error constant indicating that an input/output operation
      # failed during the execution of an SWT operation
      # (value is 39).
      const_set_lazy(:ERROR_IO) { 39 }
      const_attr_reader  :ERROR_IO
      
      # SWT error constant indicating that a graphics operation
      # was attempted with an image having an invalid format
      # (value is 40).
      const_set_lazy(:ERROR_INVALID_IMAGE) { 40 }
      const_attr_reader  :ERROR_INVALID_IMAGE
      
      # SWT error constant indicating that a graphics operation
      # was attempted with an image having a valid but unsupported
      # format
      # (value is 42).
      const_set_lazy(:ERROR_UNSUPPORTED_FORMAT) { 42 }
      const_attr_reader  :ERROR_UNSUPPORTED_FORMAT
      
      # SWT error constant indicating that an attempt was made
      # to subclass an SWT widget class without implementing the
      # <code>checkSubclass()</code> method
      # (value is 43).
      # 
      # For additional information see the comment in
      # <code>Widget.checkSubclass()</code>.
      # 
      # @see org.eclipse.swt.widgets.Widget#checkSubclass
      const_set_lazy(:ERROR_INVALID_SUBCLASS) { 43 }
      const_attr_reader  :ERROR_INVALID_SUBCLASS
      
      # SWT error constant indicating that an attempt was made to
      # invoke an SWT operation using a graphics object which had
      # already been disposed
      # (value is 44).
      const_set_lazy(:ERROR_GRAPHIC_DISPOSED) { 44 }
      const_attr_reader  :ERROR_GRAPHIC_DISPOSED
      
      # SWT error constant indicating that an attempt was made to
      # invoke an SWT operation using a device which had already
      # been disposed
      # (value is 45).
      const_set_lazy(:ERROR_DEVICE_DISPOSED) { 45 }
      const_attr_reader  :ERROR_DEVICE_DISPOSED
      
      # SWT error constant indicating that an exception happened
      # when executing a runnable
      # (value is 46).
      const_set_lazy(:ERROR_FAILED_EXEC) { 46 }
      const_attr_reader  :ERROR_FAILED_EXEC
      
      # SWT error constant indicating that an unsatisfied link
      # error occurred while attempting to load a library
      # (value is 47).
      # 
      # @since 3.1
      const_set_lazy(:ERROR_FAILED_LOAD_LIBRARY) { 47 }
      const_attr_reader  :ERROR_FAILED_LOAD_LIBRARY
      
      # SWT error constant indicating that a font is not valid
      # (value is 48).
      # 
      # @since 3.1
      const_set_lazy(:ERROR_INVALID_FONT) { 48 }
      const_attr_reader  :ERROR_INVALID_FONT
      
      # Constant indicating that an image or operation is of type bitmap  (value is 0).
      const_set_lazy(:BITMAP) { 0 }
      const_attr_reader  :BITMAP
      
      # Constant indicating that an image or operation is of type icon  (value is 1).
      const_set_lazy(:ICON) { 1 }
      const_attr_reader  :ICON
      
      # The <code>Image</code> constructor argument indicating that
      # the new image should be a copy of the image provided as
      # an argument  (value is 0).
      const_set_lazy(:IMAGE_COPY) { 0 }
      const_attr_reader  :IMAGE_COPY
      
      # The <code>Image</code> constructor argument indicating that
      # the new image should have the appearance of a "disabled"
      # (using the platform's rules for how this should look)
      # copy of the image provided as an argument  (value is 1).
      const_set_lazy(:IMAGE_DISABLE) { 1 }
      const_attr_reader  :IMAGE_DISABLE
      
      # The <code>Image</code> constructor argument indicating that
      # the new image should have the appearance of a "gray scaled"
      # copy of the image provided as an argument  (value is 2).
      const_set_lazy(:IMAGE_GRAY) { 2 }
      const_attr_reader  :IMAGE_GRAY
      
      # Constant to indicate an error state (value is 1).
      # <p><b>Used By:</b><ul>
      # <li><code>ProgressBar</code></li>
      # </ul></p>
      # 
      # @since 3.4
      const_set_lazy(:ERROR) { 1 }
      const_attr_reader  :ERROR
      
      # Constant to a indicate a paused state (value is 4).
      # <p><b>Used By:</b><ul>
      # <li><code>ProgressBar</code></li>
      # </ul></p>
      # 
      # @since 3.4
      const_set_lazy(:PAUSED) { 1 << 2 }
      const_attr_reader  :PAUSED
      
      # The font style constant indicating a normal weight, non-italic font
      # (value is 0). This constant is also used with <code>ProgressBar</code>
      # to indicate a normal state.
      # <p><b>Used By:</b><ul>
      # <li><code>ProgressBar</code></li>
      # </ul></p>
      const_set_lazy(:NORMAL) { 0 }
      const_attr_reader  :NORMAL
      
      # The font style constant indicating a bold weight font
      # (value is 1&lt;&lt;0).
      const_set_lazy(:BOLD) { 1 << 0 }
      const_attr_reader  :BOLD
      
      # The font style constant indicating an italic font
      # (value is 1&lt;&lt;1).
      const_set_lazy(:ITALIC) { 1 << 1 }
      const_attr_reader  :ITALIC
      
      # System arrow cursor  (value is 0).
      const_set_lazy(:CURSOR_ARROW) { 0 }
      const_attr_reader  :CURSOR_ARROW
      
      # System wait cursor  (value is 1).
      const_set_lazy(:CURSOR_WAIT) { 1 }
      const_attr_reader  :CURSOR_WAIT
      
      # System cross hair cursor  (value is 2).
      const_set_lazy(:CURSOR_CROSS) { 2 }
      const_attr_reader  :CURSOR_CROSS
      
      # System app startup cursor  (value is 3).
      const_set_lazy(:CURSOR_APPSTARTING) { 3 }
      const_attr_reader  :CURSOR_APPSTARTING
      
      # System help cursor  (value is 4).
      const_set_lazy(:CURSOR_HELP) { 4 }
      const_attr_reader  :CURSOR_HELP
      
      # System resize all directions cursor (value is 5).
      const_set_lazy(:CURSOR_SIZEALL) { 5 }
      const_attr_reader  :CURSOR_SIZEALL
      
      # System resize north-east-south-west cursor  (value is 6).
      const_set_lazy(:CURSOR_SIZENESW) { 6 }
      const_attr_reader  :CURSOR_SIZENESW
      
      # System resize north-south cursor  (value is 7).
      const_set_lazy(:CURSOR_SIZENS) { 7 }
      const_attr_reader  :CURSOR_SIZENS
      
      # System resize north-west-south-east cursor  (value is 8).
      const_set_lazy(:CURSOR_SIZENWSE) { 8 }
      const_attr_reader  :CURSOR_SIZENWSE
      
      # System resize west-east cursor  (value is 9).
      const_set_lazy(:CURSOR_SIZEWE) { 9 }
      const_attr_reader  :CURSOR_SIZEWE
      
      # System resize north cursor  (value is 10).
      const_set_lazy(:CURSOR_SIZEN) { 10 }
      const_attr_reader  :CURSOR_SIZEN
      
      # System resize south cursor  (value is 11).
      const_set_lazy(:CURSOR_SIZES) { 11 }
      const_attr_reader  :CURSOR_SIZES
      
      # System resize east cursor  (value is 12).
      const_set_lazy(:CURSOR_SIZEE) { 12 }
      const_attr_reader  :CURSOR_SIZEE
      
      # System resize west cursor  (value is 13).
      const_set_lazy(:CURSOR_SIZEW) { 13 }
      const_attr_reader  :CURSOR_SIZEW
      
      # System resize north-east cursor (value is 14).
      const_set_lazy(:CURSOR_SIZENE) { 14 }
      const_attr_reader  :CURSOR_SIZENE
      
      # System resize south-east cursor (value is 15).
      const_set_lazy(:CURSOR_SIZESE) { 15 }
      const_attr_reader  :CURSOR_SIZESE
      
      # System resize south-west cursor (value is 16).
      const_set_lazy(:CURSOR_SIZESW) { 16 }
      const_attr_reader  :CURSOR_SIZESW
      
      # System resize north-west cursor (value is 17).
      const_set_lazy(:CURSOR_SIZENW) { 17 }
      const_attr_reader  :CURSOR_SIZENW
      
      # System up arrow cursor  (value is 18).
      const_set_lazy(:CURSOR_UPARROW) { 18 }
      const_attr_reader  :CURSOR_UPARROW
      
      # System i-beam cursor (value is 19).
      const_set_lazy(:CURSOR_IBEAM) { 19 }
      const_attr_reader  :CURSOR_IBEAM
      
      # System "not allowed" cursor (value is 20).
      const_set_lazy(:CURSOR_NO) { 20 }
      const_attr_reader  :CURSOR_NO
      
      # System hand cursor (value is 21).
      const_set_lazy(:CURSOR_HAND) { 21 }
      const_attr_reader  :CURSOR_HAND
      
      # Line drawing style for flat end caps (value is 1).
      # 
      # @see org.eclipse.swt.graphics.GC#setLineCap(int)
      # @see org.eclipse.swt.graphics.GC#getLineCap()
      # 
      # @since 3.1
      const_set_lazy(:CAP_FLAT) { 1 }
      const_attr_reader  :CAP_FLAT
      
      # Line drawing style for rounded end caps (value is 2).
      # 
      # @see org.eclipse.swt.graphics.GC#setLineCap(int)
      # @see org.eclipse.swt.graphics.GC#getLineCap()
      # 
      # @since 3.1
      const_set_lazy(:CAP_ROUND) { 2 }
      const_attr_reader  :CAP_ROUND
      
      # Line drawing style for square end caps (value is 3).
      # 
      # @see org.eclipse.swt.graphics.GC#setLineCap(int)
      # @see org.eclipse.swt.graphics.GC#getLineCap()
      # 
      # @since 3.1
      const_set_lazy(:CAP_SQUARE) { 3 }
      const_attr_reader  :CAP_SQUARE
      
      # Line drawing style for miter joins (value is 1).
      # 
      # @see org.eclipse.swt.graphics.GC#setLineJoin(int)
      # @see org.eclipse.swt.graphics.GC#getLineJoin()
      # 
      # @since 3.1
      const_set_lazy(:JOIN_MITER) { 1 }
      const_attr_reader  :JOIN_MITER
      
      # Line drawing  style for rounded joins (value is 2).
      # 
      # @see org.eclipse.swt.graphics.GC#setLineJoin(int)
      # @see org.eclipse.swt.graphics.GC#getLineJoin()
      # 
      # @since 3.1
      const_set_lazy(:JOIN_ROUND) { 2 }
      const_attr_reader  :JOIN_ROUND
      
      # Line drawing style for bevel joins (value is 3).
      # 
      # @see org.eclipse.swt.graphics.GC#setLineJoin(int)
      # @see org.eclipse.swt.graphics.GC#getLineJoin()
      # 
      # @since 3.1
      const_set_lazy(:JOIN_BEVEL) { 3 }
      const_attr_reader  :JOIN_BEVEL
      
      # Line drawing style for solid lines  (value is 1).
      const_set_lazy(:LINE_SOLID) { 1 }
      const_attr_reader  :LINE_SOLID
      
      # Line drawing style for dashed lines (value is 2).
      const_set_lazy(:LINE_DASH) { 2 }
      const_attr_reader  :LINE_DASH
      
      # Line drawing style for dotted lines (value is 3).
      const_set_lazy(:LINE_DOT) { 3 }
      const_attr_reader  :LINE_DOT
      
      # Line drawing style for alternating dash-dot lines (value is 4).
      const_set_lazy(:LINE_DASHDOT) { 4 }
      const_attr_reader  :LINE_DASHDOT
      
      # Line drawing style for dash-dot-dot lines (value is 5).
      const_set_lazy(:LINE_DASHDOTDOT) { 5 }
      const_attr_reader  :LINE_DASHDOTDOT
      
      # Line drawing style for custom dashed lines (value is 6).
      # 
      # @see org.eclipse.swt.graphics.GC#setLineDash(int[])
      # @see org.eclipse.swt.graphics.GC#getLineDash()
      # 
      # @since 3.1
      const_set_lazy(:LINE_CUSTOM) { 6 }
      const_attr_reader  :LINE_CUSTOM
      
      # Path constant that represents a "move to" operation (value is 1).
      # 
      # @since 3.1
      const_set_lazy(:PATH_MOVE_TO) { 1 }
      const_attr_reader  :PATH_MOVE_TO
      
      # Path constant that represents a "line to" operation (value is 2).
      # 
      # @since 3.1
      const_set_lazy(:PATH_LINE_TO) { 2 }
      const_attr_reader  :PATH_LINE_TO
      
      # Path constant that represents a "quadratic curve to" operation (value is 3).
      # 
      # @since 3.1
      const_set_lazy(:PATH_QUAD_TO) { 3 }
      const_attr_reader  :PATH_QUAD_TO
      
      # Path constant that represents a "cubic curve to" operation (value is 4).
      # 
      # @since 3.1
      const_set_lazy(:PATH_CUBIC_TO) { 4 }
      const_attr_reader  :PATH_CUBIC_TO
      
      # Path constant that represents a "close" operation (value is 5).
      # 
      # @since 3.1
      const_set_lazy(:PATH_CLOSE) { 5 }
      const_attr_reader  :PATH_CLOSE
      
      # Even odd rule for filling operations (value is 1).
      # 
      # @since 3.1
      const_set_lazy(:FILL_EVEN_ODD) { 1 }
      const_attr_reader  :FILL_EVEN_ODD
      
      # Winding rule for filling operations (value is 2).
      # 
      # @since 3.1
      const_set_lazy(:FILL_WINDING) { 2 }
      const_attr_reader  :FILL_WINDING
      
      # Image format constant indicating an unknown image type (value is -1).
      const_set_lazy(:IMAGE_UNDEFINED) { -1 }
      const_attr_reader  :IMAGE_UNDEFINED
      
      # Image format constant indicating a Windows BMP format image (value is 0).
      const_set_lazy(:IMAGE_BMP) { 0 }
      const_attr_reader  :IMAGE_BMP
      
      # Image format constant indicating a run-length encoded
      # Windows BMP format image (value is 1).
      const_set_lazy(:IMAGE_BMP_RLE) { 1 }
      const_attr_reader  :IMAGE_BMP_RLE
      
      # Image format constant indicating a GIF format image (value is 2).
      const_set_lazy(:IMAGE_GIF) { 2 }
      const_attr_reader  :IMAGE_GIF
      
      # Image format constant indicating a ICO format image (value is 3).
      const_set_lazy(:IMAGE_ICO) { 3 }
      const_attr_reader  :IMAGE_ICO
      
      # Image format constant indicating a JPEG format image (value is 4).
      const_set_lazy(:IMAGE_JPEG) { 4 }
      const_attr_reader  :IMAGE_JPEG
      
      # Image format constant indicating a PNG format image (value is 5).
      const_set_lazy(:IMAGE_PNG) { 5 }
      const_attr_reader  :IMAGE_PNG
      
      # Image format constant indicating a TIFF format image (value is 6).
      const_set_lazy(:IMAGE_TIFF) { 6 }
      const_attr_reader  :IMAGE_TIFF
      
      # Image format constant indicating an OS/2 BMP format image (value is 7).
      const_set_lazy(:IMAGE_OS2_BMP) { 7 }
      const_attr_reader  :IMAGE_OS2_BMP
      
      # GIF image disposal method constants indicating that the
      # disposal method is unspecified (value is 0).
      const_set_lazy(:DM_UNSPECIFIED) { 0x0 }
      const_attr_reader  :DM_UNSPECIFIED
      
      # GIF image disposal method constants indicating that the
      # disposal method is to do nothing; that is, to leave the
      # previous image in place (value is 1).
      const_set_lazy(:DM_FILL_NONE) { 0x1 }
      const_attr_reader  :DM_FILL_NONE
      
      # GIF image disposal method constants indicating that the
      # the previous images should be covered with the background
      # color before displaying the next image (value is 2).
      const_set_lazy(:DM_FILL_BACKGROUND) { 0x2 }
      const_attr_reader  :DM_FILL_BACKGROUND
      
      # GIF image disposal method constants indicating that the
      # disposal method is to restore the previous picture
      # (value is 3).
      const_set_lazy(:DM_FILL_PREVIOUS) { 0x3 }
      const_attr_reader  :DM_FILL_PREVIOUS
      
      # Image transparency constant indicating that the image
      # contains no transparency information (value is 0).
      const_set_lazy(:TRANSPARENCY_NONE) { 0x0 }
      const_attr_reader  :TRANSPARENCY_NONE
      
      # Image transparency constant indicating that the image
      # contains alpha transparency information (value is 1&lt;&lt;0).
      const_set_lazy(:TRANSPARENCY_ALPHA) { 1 << 0 }
      const_attr_reader  :TRANSPARENCY_ALPHA
      
      # Image transparency constant indicating that the image
      # contains a transparency mask (value is 1&lt;&lt;1).
      const_set_lazy(:TRANSPARENCY_MASK) { 1 << 1 }
      const_attr_reader  :TRANSPARENCY_MASK
      
      # Image transparency constant indicating that the image
      # contains a transparent pixel (value is 1&lt;&lt;2).
      const_set_lazy(:TRANSPARENCY_PIXEL) { 1 << 2 }
      const_attr_reader  :TRANSPARENCY_PIXEL
      
      # The character movement type (value is 1&lt;&lt;0).
      # This constant is used to move a text offset over a character.
      # 
      # @see org.eclipse.swt.graphics.TextLayout#getNextOffset(int, int)
      # @see org.eclipse.swt.graphics.TextLayout#getPreviousOffset(int, int)
      # 
      # @since 3.0
      const_set_lazy(:MOVEMENT_CHAR) { 1 << 0 }
      const_attr_reader  :MOVEMENT_CHAR
      
      # The cluster movement type (value is 1&lt;&lt;1).
      # This constant is used to move a text offset over a cluster.
      # A cluster groups one or more characters. A cluster is
      # undivisible, this means that a caret offset can not be placed in the
      # middle of a cluster.
      # 
      # @see org.eclipse.swt.graphics.TextLayout#getNextOffset(int, int)
      # @see org.eclipse.swt.graphics.TextLayout#getPreviousOffset(int, int)
      # 
      # @since 3.0
      const_set_lazy(:MOVEMENT_CLUSTER) { 1 << 1 }
      const_attr_reader  :MOVEMENT_CLUSTER
      
      # The word movement type (value is 1&lt;&lt;2).
      # This constant is used to move a text offset over a word.
      # The behavior of this constant depends on the platform and on the
      # direction of the movement. For example, on Windows the stop is
      # always at the start of the word. On GTK and Mac the stop is at the end
      # of the word if the direction is next and at the start of the word if the
      # direction is previous.
      # 
      # @see org.eclipse.swt.graphics.TextLayout#getNextOffset(int, int)
      # @see org.eclipse.swt.graphics.TextLayout#getPreviousOffset(int, int)
      # 
      # @since 3.0
      const_set_lazy(:MOVEMENT_WORD) { 1 << 2 }
      const_attr_reader  :MOVEMENT_WORD
      
      # The word end movement type (value is 1&lt;&lt;3).
      # This constant is used to move a text offset to the next or previous
      # word end. The behavior of this constant does not depend on the platform.
      # 
      # 
      # @see org.eclipse.swt.graphics.TextLayout#getNextOffset(int, int)
      # @see org.eclipse.swt.graphics.TextLayout#getPreviousOffset(int, int)
      # 
      # @since 3.3
      const_set_lazy(:MOVEMENT_WORD_END) { 1 << 3 }
      const_attr_reader  :MOVEMENT_WORD_END
      
      # The word start movement type (value is 1&lt;&lt;4).
      # This constant is used to move a text offset to the next or previous
      # word start. The behavior of this constant does not depend on the platform.
      # 
      # @see org.eclipse.swt.graphics.TextLayout#getNextOffset(int, int)
      # @see org.eclipse.swt.graphics.TextLayout#getPreviousOffset(int, int)
      # 
      # @since 3.3
      const_set_lazy(:MOVEMENT_WORD_START) { 1 << 4 }
      const_attr_reader  :MOVEMENT_WORD_START
      
      typesig { [::Java::Int] }
      # Answers a concise, human readable description of the error code.
      # 
      # @param code the SWT error code.
      # @return a description of the error code.
      # 
      # @see SWT
      def find_error_text(code)
        case (code)
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        when ERROR_UNSPECIFIED
          return "Unspecified error"
        when ERROR_NO_HANDLES
          return "No more handles"
        when ERROR_NO_MORE_CALLBACKS
          return "No more callbacks"
        when ERROR_NULL_ARGUMENT
          return "Argument cannot be null"
        when ERROR_INVALID_ARGUMENT
          return "Argument not valid"
        when ERROR_INVALID_RANGE
          return "Index out of bounds"
        when ERROR_CANNOT_BE_ZERO
          return "Argument cannot be zero"
        when ERROR_CANNOT_GET_ITEM
          return "Cannot get item"
        when ERROR_CANNOT_GET_SELECTION
          return "Cannot get selection"
        when ERROR_CANNOT_GET_ITEM_HEIGHT
          return "Cannot get item height"
        when ERROR_CANNOT_GET_TEXT
          return "Cannot get text"
        when ERROR_CANNOT_SET_TEXT
          return "Cannot set text"
        when ERROR_ITEM_NOT_ADDED
          return "Item not added"
        when ERROR_ITEM_NOT_REMOVED
          return "Item not removed"
        when ERROR_NOT_IMPLEMENTED
          return "Not implemented"
        when ERROR_MENU_NOT_DROP_DOWN
          return "Menu must be a drop down"
        when ERROR_THREAD_INVALID_ACCESS
          return "Invalid thread access"
        when ERROR_WIDGET_DISPOSED
          return "Widget is disposed"
        when ERROR_MENUITEM_NOT_CASCADE
          return "Menu item is not a CASCADE"
        when ERROR_CANNOT_SET_SELECTION
          return "Cannot set selection"
        when ERROR_CANNOT_SET_MENU
          return "Cannot set menu"
        when ERROR_CANNOT_SET_ENABLED
          return "Cannot set the enabled state"
        when ERROR_CANNOT_GET_ENABLED
          return "Cannot get the enabled state"
        when ERROR_INVALID_PARENT
          return "Widget has the wrong parent"
        when ERROR_MENU_NOT_BAR
          return "Menu is not a BAR"
        when ERROR_CANNOT_GET_COUNT
          return "Cannot get count"
        when ERROR_MENU_NOT_POP_UP
          return "Menu is not a POP_UP"
        when ERROR_UNSUPPORTED_DEPTH
          return "Unsupported color depth"
        when ERROR_IO
          return "i/o error"
        when ERROR_INVALID_IMAGE
          return "Invalid image"
        when ERROR_UNSUPPORTED_FORMAT
          return "Unsupported or unrecognized format"
        when ERROR_INVALID_SUBCLASS
          return "Subclassing not allowed"
        when ERROR_GRAPHIC_DISPOSED
          return "Graphic is disposed"
        when ERROR_DEVICE_DISPOSED
          return "Device is disposed"
        when ERROR_FAILED_EXEC
          return "Failed to execute runnable"
        when ERROR_FAILED_LOAD_LIBRARY
          return "Unable to load library"
        when ERROR_CANNOT_INVERT_MATRIX
          return "Cannot invert matrix"
        when ERROR_NO_GRAPHICS_LIBRARY
          return "Unable to load graphics library"
        when ERROR_INVALID_FONT
          return "Font not valid"
        end # $NON-NLS-1$
        return "Unknown error" # $NON-NLS-1$
      end
      
      typesig { [String] }
      # Returns the NLS'ed message for the given argument.
      # 
      # @param key the key to look up
      # @return the message for the given key
      # 
      # @exception IllegalArgumentException <ul>
      # <li>ERROR_NULL_ARGUMENT - if the key is null</li>
      # </ul>
      def get_message(key)
        return Compatibility.get_message(key)
      end
      
      typesig { [] }
      # Returns the SWT platform name.
      # Examples: "win32", "motif", "gtk", "photon", "carbon"
      # 
      # @return the SWT platform name
      def get_platform
        return Platform::SWT_PLATFORM
      end
      
      typesig { [] }
      # Returns the SWT version number as an integer.
      # Example: "SWT051" == 51
      # 
      # @return the SWT version number
      def get_version
        return Library::SWT_VERSION
      end
      
      typesig { [::Java::Int] }
      # Throws an appropriate exception based on the passed in error code.
      # 
      # @param code the SWT error code
      def error(code)
        error(code, nil)
      end
      
      typesig { [::Java::Int, JavaThrowable] }
      # Throws an appropriate exception based on the passed in error code.
      # The <code>throwable</code> argument should be either null, or the
      # throwable which caused SWT to throw an exception.
      # <p>
      # In SWT, errors are reported by throwing one of three exceptions:
      # <dl>
      # <dd>java.lang.IllegalArgumentException</dd>
      # <dt>thrown whenever one of the API methods is invoked with an illegal argument</dt>
      # <dd>org.eclipse.swt.SWTException (extends java.lang.RuntimeException)</dd>
      # <dt>thrown whenever a recoverable error happens internally in SWT</dt>
      # <dd>org.eclipse.swt.SWTError (extends java.lang.Error)</dd>
      # <dt>thrown whenever a <b>non-recoverable</b> error happens internally in SWT</dt>
      # </dl>
      # This method provides the logic which maps between error codes
      # and one of the above exceptions.
      # </p>
      # 
      # @param code the SWT error code.
      # @param throwable the exception which caused the error to occur.
      # 
      # @see SWTError
      # @see SWTException
      # @see IllegalArgumentException
      def error(code, throwable)
        error(code, throwable, nil)
      end
      
      typesig { [::Java::Int, JavaThrowable, String] }
      # Throws an appropriate exception based on the passed in error code.
      # The <code>throwable</code> argument should be either null, or the
      # throwable which caused SWT to throw an exception.
      # <p>
      # In SWT, errors are reported by throwing one of three exceptions:
      # <dl>
      # <dd>java.lang.IllegalArgumentException</dd>
      # <dt>thrown whenever one of the API methods is invoked with an illegal argument</dt>
      # <dd>org.eclipse.swt.SWTException (extends java.lang.RuntimeException)</dd>
      # <dt>thrown whenever a recoverable error happens internally in SWT</dt>
      # <dd>org.eclipse.swt.SWTError (extends java.lang.Error)</dd>
      # <dt>thrown whenever a <b>non-recoverable</b> error happens internally in SWT</dt>
      # </dl>
      # This method provides the logic which maps between error codes
      # and one of the above exceptions.
      # </p>
      # 
      # @param code the SWT error code.
      # @param throwable the exception which caused the error to occur.
      # @param detail more information about error.
      # 
      # @see SWTError
      # @see SWTException
      # @see IllegalArgumentException
      # 
      # @since 3.0
      def error(code, throwable, detail)
        # This code prevents the creation of "chains" of SWTErrors and
        # SWTExceptions which in turn contain other SWTErrors and
        # SWTExceptions as their throwable. This can occur when low level
        # code throws an exception past a point where a higher layer is
        # being "safe" and catching all exceptions. (Note that, this is
        # _a_bad_thing_ which we always try to avoid.)
        # 
        # On the theory that the low level code is closest to the
        # original problem, we simply re-throw the original exception here.
        # 
        # NOTE: Exceptions thrown in syncExec and asyncExec must be
        # wrapped.
        if (!(code).equal?(SWT::ERROR_FAILED_EXEC))
          if (throwable.is_a?(SWTError))
            raise throwable
          end
          if (throwable.is_a?(SWTException))
            raise throwable
          end
        end
        message = find_error_text(code)
        if (!(detail).nil?)
          message += detail
        end
        case (code)
        # Illegal Arguments (non-fatal)
        # SWT Exceptions (non-fatal)
        # Operation System Errors (fatal, may occur only on some platforms)
        # FALL THROUGH
        # SWT Errors (fatal, may occur only on some platforms)
        when ERROR_NULL_ARGUMENT, ERROR_CANNOT_BE_ZERO, ERROR_INVALID_ARGUMENT, ERROR_MENU_NOT_BAR, ERROR_MENU_NOT_DROP_DOWN, ERROR_MENU_NOT_POP_UP, ERROR_MENUITEM_NOT_CASCADE, ERROR_INVALID_PARENT, ERROR_INVALID_RANGE
          raise IllegalArgumentException.new(message)
        when ERROR_INVALID_SUBCLASS, ERROR_THREAD_INVALID_ACCESS, ERROR_WIDGET_DISPOSED, ERROR_GRAPHIC_DISPOSED, ERROR_DEVICE_DISPOSED, ERROR_INVALID_IMAGE, ERROR_UNSUPPORTED_DEPTH, ERROR_UNSUPPORTED_FORMAT, ERROR_FAILED_EXEC, ERROR_CANNOT_INVERT_MATRIX, ERROR_NO_GRAPHICS_LIBRARY, ERROR_IO
          exception = SWTException.new(code, message)
          exception.attr_throwable = throwable
          raise exception
        when ERROR_CANNOT_GET_COUNT, ERROR_CANNOT_GET_ENABLED, ERROR_CANNOT_GET_ITEM, ERROR_CANNOT_GET_ITEM_HEIGHT, ERROR_CANNOT_GET_SELECTION, ERROR_CANNOT_GET_TEXT, ERROR_CANNOT_SET_ENABLED, ERROR_CANNOT_SET_MENU, ERROR_CANNOT_SET_SELECTION, ERROR_CANNOT_SET_TEXT, ERROR_ITEM_NOT_ADDED, ERROR_ITEM_NOT_REMOVED, ERROR_NO_HANDLES, ERROR_FAILED_LOAD_LIBRARY, ERROR_NO_MORE_CALLBACKS, ERROR_NOT_IMPLEMENTED, ERROR_UNSPECIFIED
          error_ = SWTError.new(code, message)
          error_.attr_throwable = throwable
          raise error_
        end
        # Unknown/Undefined Error
        error_ = SWTError.new(code, message)
        error_.attr_throwable = throwable
        raise error_
      end
      
      when_class_loaded do
        # These values represent bit masks that may need to
        # expand in the future.  Therefore they are not initialized
        # in the declaration to stop the compiler from inlining.
        const_set :BUTTON_MASK, BUTTON1 | BUTTON2 | BUTTON3 | BUTTON4 | BUTTON5
        const_set :MODIFIER_MASK, ALT | SHIFT | CTRL | COMMAND
        # These values can be different on different platforms.
        # Therefore they are not initialized in the declaration
        # to stop the compiler from inlining.
        platform = get_platform
        if (("carbon" == platform))
          # $NON-NLS-1$
          const_set :MOD1, COMMAND
          const_set :MOD2, SHIFT
          const_set :MOD3, ALT
          const_set :MOD4, CONTROL
        else
          const_set :MOD1, CONTROL
          const_set :MOD2, SHIFT
          const_set :MOD3, ALT
          const_set :MOD4, 0
        end
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__swt, :initialize
  end
  
end
