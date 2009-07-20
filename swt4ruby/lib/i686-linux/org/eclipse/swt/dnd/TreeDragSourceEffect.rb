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
  module TreeDragSourceEffectImports
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
      tree = self.attr_control
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        return nil
      end
      # TEMPORARY CODE
      if (tree.is_listening(SWT::EraseItem) || tree.is_listening(SWT::PaintItem))
        return nil
      end
      # Bug in GTK.  gtk_tree_selection_get_selected_rows() segmentation faults
      # in versions smaller than 2.2.4 if the model is NULL.  The fix is
      # to give a valid pointer instead.
      # 
      # long
      handle = tree.attr_handle
      # long
      selection = OS.gtk_tree_view_get_selection(handle)
      # long
      # long
      model = OS::GTK_VERSION < OS._version(2, 2, 4) ? Array.typed(::Java::Int).new(1) { 0 } : nil
      # long
      list = OS.gtk_tree_selection_get_selected_rows(selection, model)
      if ((list).equal?(0))
        return nil
      end
      count = Math.min(10, OS.g_list_length(list))
      display = tree.get_display
      if ((count).equal?(1))
        # long
        path = OS.g_list_nth_data(list, 0)
        # long
        pixmap = OS.gtk_tree_view_create_row_drag_icon(handle, path)
        @drag_source_image = Image.gtk_new(display, SWT::ICON, pixmap, 0)
      else
        width = 0
        height = 0
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        yy = Array.typed(::Java::Int).new(count) { 0 }
        hh = Array.typed(::Java::Int).new(count) { 0 }
        # long
        # long
        pixmaps = Array.typed(::Java::Int).new(count) { 0 }
        rect = GdkRectangle.new
        i = 0
        while i < count
          # long
          path = OS.g_list_nth_data(list, i)
          OS.gtk_tree_view_get_cell_area(handle, path, 0, rect)
          pixmaps[i] = OS.gtk_tree_view_create_row_drag_icon(handle, path)
          OS.gdk_drawable_get_size(pixmaps[i], w, h)
          width = Math.max(width, w[0])
          height = rect.attr_y + h[0] - yy[0]
          yy[i] = rect.attr_y
          hh[i] = h[0]
          ((i += 1) - 1)
        end
        # long
        source = OS.gdk_pixmap_new(OS._gdk_root_parent, width, height, -1)
        # long
        gc_source = OS.gdk_gc_new(source)
        # long
        mask = OS.gdk_pixmap_new(OS._gdk_root_parent, width, height, 1)
        # long
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
          ((i_ += 1) - 1)
        end
        OS.g_object_unref(gc_source)
        OS.g_object_unref(gc_mask)
        @drag_source_image = Image.gtk_new(display, SWT::ICON, source, mask)
      end
      OS.g_list_free(list)
      return @drag_source_image
    end
    
    private
    alias_method :initialize__tree_drag_source_effect, :initialize
  end
  
end
