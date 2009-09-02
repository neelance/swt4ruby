require "rjava"

# Copyright (c) 2007, 2008 IBM Corporation and others.
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
      include ::Org::Eclipse::Swt::Internal::Win32
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
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1))
        shdi = SHDRAGIMAGE.new
        di_getdragimage = OS._register_window_message(TCHAR.new(0, "ShellGetDragImage", true)) # $NON-NLS-1$
        if (!(OS._send_message(self.attr_control.attr_handle, di_getdragimage, 0, shdi)).equal?(0))
          if (!((self.attr_control.get_style & SWT::MIRRORED)).equal?(0))
            event.attr_offset_x = shdi.attr_size_drag_image.attr_cx - shdi.attr_pt_offset.attr_x
          else
            event.attr_offset_x = shdi.attr_pt_offset.attr_x
          end
          event.attr_offset_y = shdi.attr_pt_offset.attr_y
          # long
          h_image = shdi.attr_hbmp_drag_image
          if (!(h_image).equal?(0))
            bm = BITMAP.new
            OS._get_object(h_image, BITMAP.attr_sizeof, bm)
            src_width = bm.attr_bm_width
            src_height = bm.attr_bm_height
            # Create resources
            # long
            hdc = OS._get_dc(0)
            # long
            src_hdc = OS._create_compatible_dc(hdc)
            # long
            old_src_bitmap = OS._select_object(src_hdc, h_image)
            # long
            mem_hdc = OS._create_compatible_dc(hdc)
            bmi_header = BITMAPINFOHEADER.new
            bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
            bmi_header.attr_bi_width = src_width
            bmi_header.attr_bi_height = -src_height
            bmi_header.attr_bi_planes = 1
            bmi_header.attr_bi_bit_count = 32
            bmi_header.attr_bi_compression = OS::BI_RGB
            bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof) { 0 }
            OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
            # long
            # long
            p_bits = Array.typed(::Java::Int).new(1) { 0 }
            # long
            mem_dib = OS._create_dibsection(0, bmi, OS::DIB_RGB_COLORS, p_bits, 0, 0)
            if ((mem_dib).equal?(0))
              SWT.error(SWT::ERROR_NO_HANDLES)
            end
            # long
            old_mem_bitmap = OS._select_object(mem_hdc, mem_dib)
            dib_bm = BITMAP.new
            OS._get_object(mem_dib, BITMAP.attr_sizeof, dib_bm)
            size_in_bytes = dib_bm.attr_bm_width_bytes * dib_bm.attr_bm_height
            # Get the foreground pixels
            OS._bit_blt(mem_hdc, 0, 0, src_width, src_height, src_hdc, 0, 0, OS::SRCCOPY)
            src_data = Array.typed(::Java::Byte).new(size_in_bytes) { 0 }
            OS._move_memory(src_data, dib_bm.attr_bm_bits, size_in_bytes)
            palette = PaletteData.new(0xff00, 0xff0000, -0x1000000)
            data = ImageData.new(src_width, src_height, bm.attr_bm_bits_pixel, palette, bm.attr_bm_width_bytes, src_data)
            if ((shdi.attr_cr_color_key).equal?(-1))
              alpha_data = Array.typed(::Java::Byte).new(src_width * src_height) { 0 }
              spinc = dib_bm.attr_bm_width_bytes - src_width * 4
              ap = 0
              sp = 3
              y = 0
              while y < src_height
                x = 0
                while x < src_width
                  alpha_data[((ap += 1) - 1)] = src_data[sp]
                  sp += 4
                  (x += 1)
                end
                sp += spinc
                (y += 1)
              end
              data.attr_alpha_data = alpha_data
            else
              data.attr_transparent_pixel = shdi.attr_cr_color_key << 8
            end
            @drag_source_image = Image.new(self.attr_control.get_display, data)
            OS._select_object(mem_hdc, old_mem_bitmap)
            OS._delete_dc(mem_hdc)
            OS._delete_object(mem_dib)
            OS._select_object(src_hdc, old_src_bitmap)
            OS._delete_dc(src_hdc)
            OS._release_dc(0, hdc)
            OS._delete_object(h_image)
            return @drag_source_image
          end
        end
        return nil
      end
      tree = self.attr_control
      # TEMPORARY CODE
      if (tree.is_listening(SWT::EraseItem) || tree.is_listening(SWT::PaintItem))
        return nil
      end
      selection = tree.get_selection
      if ((selection.attr_length).equal?(0))
        return nil
      end
      # long
      tree_image_list = OS._send_message(tree.attr_handle, OS::TVM_GETIMAGELIST, OS::TVSIL_NORMAL, 0)
      if (!(tree_image_list).equal?(0))
        count = Math.min(selection.attr_length, 10)
        bounds = selection[0].get_bounds(0)
        i = 1
        while i < count
          bounds = bounds.union(selection[i].get_bounds(0))
          i += 1
        end
        # long
        h_dc = OS._get_dc(tree.attr_handle)
        # long
        h_dc1 = OS._create_compatible_dc(h_dc)
        # long
        bitmap = OS._create_compatible_bitmap(h_dc, bounds.attr_width, bounds.attr_height)
        # long
        h_old_bitmap = OS._select_object(h_dc1, bitmap)
        rect = RECT.new
        rect.attr_right = bounds.attr_width
        rect.attr_bottom = bounds.attr_height
        # long
        h_brush = OS._get_stock_object(OS::WHITE_BRUSH)
        OS._fill_rect(h_dc1, rect, h_brush)
        i_ = 0
        while i_ < count
          selected = selection[i_]
          cell = selected.get_bounds(0)
          # long
          image_list = OS._send_message(tree.attr_handle, OS::TVM_CREATEDRAGIMAGE, 0, selected.attr_handle)
          OS._image_list_draw(image_list, 0, h_dc1, cell.attr_x - bounds.attr_x, cell.attr_y - bounds.attr_y, OS::ILD_SELECTED)
          OS._image_list_destroy(image_list)
          i_ += 1
        end
        OS._select_object(h_dc1, h_old_bitmap)
        OS._delete_dc(h_dc1)
        OS._release_dc(tree.attr_handle, h_dc)
        display = tree.get_display
        @drag_source_image = Image.win32_new(display, SWT::BITMAP, bitmap)
        return @drag_source_image
      end
      return nil
    end
    
    private
    alias_method :initialize__tree_drag_source_effect, :initialize
  end
  
end
