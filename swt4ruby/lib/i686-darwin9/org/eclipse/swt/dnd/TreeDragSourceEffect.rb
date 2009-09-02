require "rjava"

# Copyright (c) 2007, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module TreeDragSourceEffectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides default implementations to display a source image
  # when a drag is initiated from a <code>Tree</code>.
  # 
  # <p>Classes that wish to provide their own source image for a <code>Tree</code> can
  # extend <code>TreeDragSourceEffect</code> class and override the <code>TreeDragSourceEffect.dragStart</code>
  # method and set the field <code>DragSourceEvent.image</code> with their own image.</p>
  # 
  # Subclasses that override any methods of this class must call the corresponding
  # <code>super</code> method to get the default drag under effect implementation.
  # 
  # @see DragSourceEffect
  # @see DragSourceEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class TreeDragSourceEffect < TreeDragSourceEffectImports.const_get :DragSourceEffect
    include_class_members TreeDragSourceEffectImports
    
    attr_accessor :drag_source_image
    alias_method :attr_drag_source_image, :drag_source_image
    undef_method :drag_source_image
    alias_method :attr_drag_source_image=, :drag_source_image=
    undef_method :drag_source_image=
    
    typesig { [Tree] }
    # Creates a new <code>TreeDragSourceEffect</code> to handle drag effect
    # from the specified <code>Tree</code>.
    # 
    # @param tree the <code>Tree</code> that the user clicks on to initiate the drag
    def initialize(tree)
      @drag_source_image = nil
      super(tree)
      @drag_source_image = nil
    end
    
    typesig { [DragSourceEvent] }
    # This implementation of <code>dragFinished</code> disposes the image
    # that was created in <code>TreeDragSourceEffect.dragStart</code>.
    # 
    # Subclasses that override this method should call <code>super.dragFinished(event)</code>
    # to dispose the image in the default implementation.
    # 
    # @param event the information associated with the drag finished event
    def drag_finished(event)
      if (!(@drag_source_image).nil?)
        @drag_source_image.dispose
      end
      @drag_source_image = nil
    end
    
    typesig { [DragSourceEvent] }
    # This implementation of <code>dragStart</code> will create a default
    # image that will be used during the drag. The image should be disposed
    # when the drag is completed in the <code>TreeDragSourceEffect.dragFinished</code>
    # method.
    # 
    # Subclasses that override this method should call <code>super.dragStart(event)</code>
    # to use the image from the default implementation.
    # 
    # @param event the information associated with the drag start event
    def drag_start(event)
      event.attr_image = get_drag_source_image(event)
    end
    
    typesig { [DragSourceEvent] }
    def get_drag_source_image(event)
      if (!(@drag_source_image).nil?)
        @drag_source_image.dispose
      end
      @drag_source_image = nil
      point = NSPoint.new
      # long
      ptr = OS.malloc(NSPoint.attr_sizeof)
      OS.memmove(ptr, point, NSPoint.attr_sizeof)
      ns_event = NSApplication.shared_application.current_event
      widget = self.attr_control.attr_view
      ns_image = widget.drag_image_for_rows_with_indexes(widget.selected_row_indexes, widget.table_columns, ns_event, ptr)
      OS.memmove(point, ptr, NSPoint.attr_sizeof)
      OS.free(ptr)
      # TODO: Image representation wrong???
      image = Image.cocoa_new(self.attr_control.get_display, SWT::BITMAP, ns_image)
      @drag_source_image = image
      ns_image.retain
      event.attr_offset_x = RJava.cast_to_int(point.attr_x)
      event.attr_offset_y = RJava.cast_to_int(point.attr_y)
      return image
    end
    
    private
    alias_method :initialize__tree_drag_source_effect, :initialize
  end
  
end
