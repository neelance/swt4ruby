require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module DNDImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt
    }
  end
  
  # Class DND contains all the constants used in defining a
  # DragSource or a DropTarget.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class DND 
    include_class_members DNDImports
    
    class_module.module_eval {
      # The transfer mechanism for data that is being cut
      # and then pasted or copied and then pasted (value is 1).
      # 
      # @see Clipboard
      # 
      # @since 3.1
      const_set_lazy(:CLIPBOARD) { 1 << 0 }
      const_attr_reader  :CLIPBOARD
      
      # The transfer mechanism for clients that use the selection
      # mechanism (value is 2).
      # 
      # @see Clipboard
      # 
      # @since 3.1
      const_set_lazy(:SELECTION_CLIPBOARD) { 1 << 1 }
      const_attr_reader  :SELECTION_CLIPBOARD
      
      # Drag and Drop Operation: no drag/drop operation performed
      # (value is 0).
      const_set_lazy(:DROP_NONE) { 0 }
      const_attr_reader  :DROP_NONE
      
      # Drag and Drop Operation: a copy of the data in the drag source is
      # added to the drop target (value is 1 &lt;&lt; 0).
      const_set_lazy(:DROP_COPY) { 1 << 0 }
      const_attr_reader  :DROP_COPY
      
      # Drag and Drop Operation: a copy of the data is added to the drop target and
      # the original data is removed from the drag source (value is 1 &lt;&lt; 1).
      const_set_lazy(:DROP_MOVE) { 1 << 1 }
      const_attr_reader  :DROP_MOVE
      
      # Drag and Drop Operation: the drop target makes a link to the data in
      # the drag source (value is 1 &lt;&lt; 2).
      const_set_lazy(:DROP_LINK) { 1 << 2 }
      const_attr_reader  :DROP_LINK
      
      # Drag and Drop Operation: the drop target moves the data and the drag source removes
      # any references to the data and updates its display.  This is not available on all platforms
      # and is only used when a non-SWT application is the drop target.  In this case, the SWT
      # drag source is informed in the dragFinished event that the drop target has moved the data.
      # (value is 1 &lt;&lt; 3).
      # 
      # @see DragSourceListener#dragFinished
      const_set_lazy(:DROP_TARGET_MOVE) { 1 << 3 }
      const_attr_reader  :DROP_TARGET_MOVE
      
      # Drag and Drop Operation: During a dragEnter event or a dragOperationChanged, if no modifier keys
      # are pressed, the operation is set to DROP_DEFAULT.  The application can choose what the default
      # operation should be by setting a new value in the operation field.  If no value is choosen, the
      # default operation for the platform will be selected (value is 1 &lt;&lt; 4).
      # 
      # @see DropTargetListener#dragEnter
      # @see DropTargetListener#dragOperationChanged
      # @since 2.0
      const_set_lazy(:DROP_DEFAULT) { 1 << 4 }
      const_attr_reader  :DROP_DEFAULT
      
      # DragSource Event: the drop has successfully completed or has been terminated (such as hitting
      # the ESC key); perform cleanup such as removing data on a move operation (value is 2000).
      const_set_lazy(:DragEnd) { 2000 }
      const_attr_reader  :DragEnd
      
      # DragSource Event: the data to be dropped is required from the drag source (value is 2001).
      const_set_lazy(:DragSetData) { 2001 }
      const_attr_reader  :DragSetData
      
      # DropTarget Event: the cursor has entered the drop target boundaries (value is 2002).
      const_set_lazy(:DragEnter) { 2002 }
      const_attr_reader  :DragEnter
      
      # DropTarget Event: the cursor has left the drop target boundaries OR the drop
      # operation has been cancelled (such as by hitting ECS) OR the drop is about to
      # happen (user has released the mouse button over this target) (value is 2003).
      const_set_lazy(:DragLeave) { 2003 }
      const_attr_reader  :DragLeave
      
      # DropTarget Event: the cursor is over the drop target (value is 2004).
      const_set_lazy(:DragOver) { 2004 }
      const_attr_reader  :DragOver
      
      # DropTarget Event: the operation being performed has changed usually due to the user
      # changing the selected modifier keys while dragging (value is 2005).
      const_set_lazy(:DragOperationChanged) { 2005 }
      const_attr_reader  :DragOperationChanged
      
      # DropTarget Event: the data has been dropped (value is 2006).
      const_set_lazy(:Drop) { 2006 }
      const_attr_reader  :Drop
      
      # DropTarget Event: the drop target is given a last chance to modify the drop (value is 2007).
      const_set_lazy(:DropAccept) { 2007 }
      const_attr_reader  :DropAccept
      
      # DragSource Event: a drag is about to begin (value is 2008).
      const_set_lazy(:DragStart) { 2008 }
      const_attr_reader  :DragStart
      
      # DropTarget drag under effect: No effect is shown (value is 0).
      const_set_lazy(:FEEDBACK_NONE) { 0 }
      const_attr_reader  :FEEDBACK_NONE
      
      # DropTarget drag under effect: The item under the cursor is selected; applies to tables
      # and trees (value is 1).
      const_set_lazy(:FEEDBACK_SELECT) { 1 }
      const_attr_reader  :FEEDBACK_SELECT
      
      # DropTarget drag under effect: An insertion mark is shown before the item under the cursor; applies to
      # trees (value is 2).
      const_set_lazy(:FEEDBACK_INSERT_BEFORE) { 2 }
      const_attr_reader  :FEEDBACK_INSERT_BEFORE
      
      # DropTarget drag under effect:An insertion mark is shown after the item under the cursor; applies to
      # trees (value is 4).
      const_set_lazy(:FEEDBACK_INSERT_AFTER) { 4 }
      const_attr_reader  :FEEDBACK_INSERT_AFTER
      
      # DropTarget drag under effect: The widget is scrolled up or down to allow the user to drop on items that
      # are not currently visible;  applies to tables and trees (value is 8).
      const_set_lazy(:FEEDBACK_SCROLL) { 8 }
      const_attr_reader  :FEEDBACK_SCROLL
      
      # DropTarget drag under effect: The item currently under the cursor is expanded to allow the user to
      # select a drop target from a sub item; applies to trees (value is 16).
      const_set_lazy(:FEEDBACK_EXPAND) { 16 }
      const_attr_reader  :FEEDBACK_EXPAND
      
      # Error code: drag source can not be initialized (value is 2000).
      const_set_lazy(:ERROR_CANNOT_INIT_DRAG) { 2000 }
      const_attr_reader  :ERROR_CANNOT_INIT_DRAG
      
      # Error code: drop target cannot be initialized (value is 2001).
      const_set_lazy(:ERROR_CANNOT_INIT_DROP) { 2001 }
      const_attr_reader  :ERROR_CANNOT_INIT_DROP
      
      # Error code: Data can not be set on system clipboard (value is 2002).
      const_set_lazy(:ERROR_CANNOT_SET_CLIPBOARD) { 2002 }
      const_attr_reader  :ERROR_CANNOT_SET_CLIPBOARD
      
      # Error code: Data does not have correct format for type (value is 2003).
      # @since 3.1
      const_set_lazy(:ERROR_INVALID_DATA) { 2003 }
      const_attr_reader  :ERROR_INVALID_DATA
      
      # DropTarget Key: The string constant for looking up the drop target
      # for a control using <code>getData(String)</code>. When a drop target
      # is created for a control, it is stored as a property in the control
      # using <code>setData(String, Object)</code>.
      # 
      # @since 3.4
      const_set_lazy(:DROP_TARGET_KEY) { "DropTarget" }
      const_attr_reader  :DROP_TARGET_KEY
      
      # $NON-NLS-1$
      # 
      # DragSource Key: The string constant for looking up the drag source
      # for a control using <code>getData(String)</code>. When a drag source
      # is created for a control, it is stored as a property in the control
      # using <code>setData(String, Object)</code>.
      # 
      # @since 3.4
      const_set_lazy(:DRAG_SOURCE_KEY) { "DragSource" }
      const_attr_reader  :DRAG_SOURCE_KEY
      
      # $NON-NLS-1$
      const_set_lazy(:INIT_DRAG_MESSAGE) { "Cannot initialize Drag" }
      const_attr_reader  :INIT_DRAG_MESSAGE
      
      # $NON-NLS-1$
      const_set_lazy(:INIT_DROP_MESSAGE) { "Cannot initialize Drop" }
      const_attr_reader  :INIT_DROP_MESSAGE
      
      # $NON-NLS-1$
      const_set_lazy(:CANNOT_SET_CLIPBOARD_MESSAGE) { "Cannot set data in clipboard" }
      const_attr_reader  :CANNOT_SET_CLIPBOARD_MESSAGE
      
      # $NON-NLS-1$
      const_set_lazy(:INVALID_DATA_MESSAGE) { "Data does not have correct format for type" }
      const_attr_reader  :INVALID_DATA_MESSAGE
      
      typesig { [::Java::Int] }
      # $NON-NLS-1$
      # 
      # Throws an appropriate exception based on the passed in error code.
      # 
      # @param code the DND error code
      def error(code)
        error(code, 0)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # Throws an appropriate exception based on the passed in error code.
      # The <code>hresult</code> argument should be either 0, or the
      # platform specific error code.
      # <p>
      # In DND, errors are reported by throwing one of three exceptions:
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
      # @param code the DND error code.
      # @param hresult the platform specific error code.
      # 
      # @see SWTError
      # @see SWTException
      # @see IllegalArgumentException
      def error(code, hresult)
        case (code)
        # OS Failure/Limit (fatal, may occur only on some platforms)
        when DND::ERROR_CANNOT_INIT_DRAG
          msg = DND::INIT_DRAG_MESSAGE
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTError.new(code, msg)
        when DND::ERROR_CANNOT_INIT_DROP
          msg = DND::INIT_DROP_MESSAGE
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTError.new(code, msg)
        when DND::ERROR_CANNOT_SET_CLIPBOARD
          msg = DND::CANNOT_SET_CLIPBOARD_MESSAGE
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTError.new(code, msg)
        when DND::ERROR_INVALID_DATA
          msg = DND::INVALID_DATA_MESSAGE
          if (!(hresult).equal?(0))
            msg += " result = " + RJava.cast_to_string(hresult)
          end # $NON-NLS-1$
          raise SWTException.new(code, msg)
        end
        # Unknown/Undefined Error
        SWT.error(code)
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__dnd, :initialize
  end
  
end
