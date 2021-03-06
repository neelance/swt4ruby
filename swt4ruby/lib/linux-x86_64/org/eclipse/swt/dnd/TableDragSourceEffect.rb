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
  module TableDragSourceEffectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides default implementations to display a source image
  # when a drag is initiated from a <code>Table</code>.
  # 
  # <p>Classes that wish to provide their own source image for a <code>Table</code> can
  # extend the <code>TableDragSourceEffect</code> class, override the
  # <code>TableDragSourceEffect.dragStart</code> method and set the field
  # <code>DragSourceEvent.image</code> with their own image.</p>
  # 
  # Subclasses that override any methods of this class must call the corresponding
  # <code>super</code> method to get the default drag source effect implementation.
  # 
  # @see DragSourceEffect
  # @see DragSourceEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class TableDragSourceEffect < TableDragSourceEffectImports.const_get :DragSourceEffect
    include_class_members TableDragSourceEffectImports
    
    attr_accessor :drag_source_image
    alias_method :attr_drag_source_image, :drag_source_image
    undef_method :drag_source_image
    alias_method :attr_drag_source_image=, :drag_source_image=
    undef_method :drag_source_image=
    
    typesig { [Table] }
    # Creates a new <code>TableDragSourceEffect</code> to handle drag effect
    # from the specified <code>Table</code>.
    # 
    # @param table the <code>Table</code> that the user clicks on to initiate the drag
    def initialize(table)
      @drag_source_image = nil
      super(table)
      @drag_source_image = nil
    end
    
    typesig { [DragSourceEvent] }
    # This implementation of <code>dragFinished</code> disposes the image
    # that was created in <code>TableDragSourceEffect.dragStart</code>.
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
    # when the drag is completed in the <code>TableDragSourceEffect.dragFinished</code>
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
      table = self.attr_control
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        return nil
      end
      # TEMPORARY CODE
      if (table.is_listening(SWT::EraseItem) || table.is_listening(SWT::PaintItem))
        return nil
      end
      # Bug in GTK.  gtk_tree_selection_get_selected_rows() segmentation faults
      # in versions smaller than 2.2.4 if the model is NULL.  The fix is
      # to give a valid pointer instead.
      # 
      # int
      handle = table.attr_handle
      # int
      selection = OS.gtk_tree_view_get_selection(handle)
      # int
      # int
      model = OS::GTK_VERSION < OS._version(2, 2, 4) ? Array.typed(::Java::Long).new(1) { 0 } : nil
      # int
      list = OS.gtk_tree_selection_get_selected_rows(selection, model)
      if ((list).equal?(0))
        return nil
      end
      count = Math.min(10, OS.g_list_length(list))
      display = table.get_display
      if ((count).equal?(1))
        # int
        path = OS.g_list_nth_data(list, 0)
        # int
        pixmap = OS.gtk_tree_view_create_row_drag_icon(handle, path)
        @drag_source_image = Image.gtk_new(display, SWT::ICON, pixmap, 0)
      else
        width = 0
        height = 0
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        yy = Array.typed(::Java::Int).new(count) { 0 }
        hh = Array.typed(::Java::Int).new(count) { 0 }
        # int
        # int
        pixmaps = Array.typed(::Java::Long).new(count) { 0 }
        rect = GdkRectangle.new
        i = 0
        while i < count
          # int
          path = OS.g_list_nth_data(list, i)
          OS.gtk_tree_view_get_cell_area(handle, path, 0, rect)
          pixmaps[i] = OS.gtk_tree_view_create_row_drag_icon(handle, path)
          OS.gdk_drawable_get_size(pixmaps[i], w, h)
          width = Math.max(width, w[0])
          height = rect.attr_y + h[0] - yy[0]
          yy[i] = rect.attr_y
          hh[i] = h[0]
          i += 1
        end
        # int
        source = OS.gdk_pixmap_new(OS._gdk_root_parent, width, height, -1)
        # int
        gc_source = OS.gdk_gc_new(source)
        # int
        mask = OS.gdk_pixmap_new(OS._gdk_root_parent, width, height, 1)
        # int
        gc_mask = OS.gdk_gc_new(mask)
        color = GdkColor.new
        color.attr_pixel = 0
        OS.gdk_gc_set_foreground(gc_mask, color)
        OS.gdk_draw_rectangle(mask, gc_mask, 1, 0, 0, width, height)
        color.attr_pixel = 1
        OS.gdk_gc_set_foreground(gc_mask, color)
        i_ = 0
        while i_ < count
          OS.gdk_draw_drawable(source, gc_source, pixmaps[i_], 0, 0, 0, yy[i_] - yy[0], -1, -1)
          OS.gdk_draw_rectangle(mask, gc_mask, 1, 0, yy[i_] - yy[0], width, hh[i_])
          OS.g_object_unref(pixmaps[i_])
          i_ += 1
        end
        OS.g_object_unref(gc_source)
        OS.g_object_unref(gc_mask)
        @drag_source_image = Image.gtk_new(display, SWT::ICON, source, mask)
      end
      OS.g_list_free(list)
      return @drag_source_image
    end
    
    private
    alias_method :initialize__table_drag_source_effect, :initialize
  end
  
end
