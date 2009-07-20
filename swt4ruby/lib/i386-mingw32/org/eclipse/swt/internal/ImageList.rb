require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module ImageListImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class ImageList 
    include_class_members ImageListImports
    
    # long
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :images
    alias_method :attr_images, :images
    undef_method :images
    alias_method :attr_images=, :images=
    undef_method :images=
    
    typesig { [::Java::Int] }
    def initialize(style)
      @handle = 0
      @style = 0
      @ref_count = 0
      @images = nil
      @style = style
      flags = OS::ILC_MASK
      if (OS::IsWinCE)
        flags |= OS::ILC_COLOR
      else
        if (OS::COMCTL32_MAJOR >= 6)
          flags |= OS::ILC_COLOR32
        else
          # long
          h_dc = OS._get_dc(0)
          bits = OS._get_device_caps(h_dc, OS::BITSPIXEL)
          planes = OS._get_device_caps(h_dc, OS::PLANES)
          OS._release_dc(0, h_dc)
          depth = bits * planes
          case (depth)
          when 4
            flags |= OS::ILC_COLOR4
          when 8
            flags |= OS::ILC_COLOR8
          when 16
            flags |= OS::ILC_COLOR16
          when 24
            flags |= OS::ILC_COLOR24
          when 32
            flags |= OS::ILC_COLOR32
          else
            flags |= OS::ILC_COLOR
          end
        end
      end
      if (!((style & SWT::RIGHT_TO_LEFT)).equal?(0))
        flags |= OS::ILC_MIRROR
      end
      @handle = OS._image_list_create(32, 32, flags, 16, 16)
      @images = Array.typed(Image).new(4) { nil }
    end
    
    typesig { [Image] }
    def add(image)
      count = OS._image_list_get_image_count(@handle)
      index = 0
      while (index < count)
        if (!(@images[index]).nil?)
          if (@images[index].is_disposed)
            @images[index] = nil
          end
        end
        if ((@images[index]).nil?)
          break
        end
        ((index += 1) - 1)
      end
      if ((count).equal?(0))
        rect = image.get_bounds
        OS._image_list_set_icon_size(@handle, rect.attr_width, rect.attr_height)
      end
      set(index, image, count)
      if ((index).equal?(@images.attr_length))
        new_images = Array.typed(Image).new(@images.attr_length + 4) { nil }
        System.arraycopy(@images, 0, new_images, 0, @images.attr_length)
        @images = new_images
      end
      @images[index] = image
      return index
    end
    
    typesig { [] }
    def add_ref
      return (@ref_count += 1)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def copy_bitmap(h_image, width, height)
      bm = BITMAP.new
      OS._get_object(h_image, BITMAP.attr_sizeof, bm)
      # long
      h_dc = OS._get_dc(0)
      # long
      hdc1 = OS._create_compatible_dc(h_dc)
      OS._select_object(hdc1, h_image)
      # long
      hdc2 = OS._create_compatible_dc(h_dc)
      # Feature in Windows.  If a bitmap has a 32-bit depth and any
      # pixel has an alpha value different than zero, common controls
      # version 6.0 assumes that the bitmap should be alpha blended.
      # AlphaBlend() composes the alpha channel of a destination 32-bit
      # depth image with the alpha channel of the source image. This
      # may cause opaque images to draw transparently.  The fix is
      # remove the alpha channel of opaque images by down sampling
      # it to 24-bit depth.
      # 
      # long
      h_bitmap = 0
      if ((bm.attr_bm_bits_pixel).equal?(32) && OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        bmi_header = BITMAPINFOHEADER.new
        bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
        bmi_header.attr_bi_width = width
        bmi_header.attr_bi_height = -height
        bmi_header.attr_bi_planes = 1
        bmi_header.attr_bi_bit_count = RJava.cast_to_short(24)
        if (OS::IsWinCE)
          bmi_header.attr_bi_compression = OS::BI_BITFIELDS
        else
          bmi_header.attr_bi_compression = OS::BI_RGB
        end
        bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof + (OS::IsWinCE ? 12 : 0)) { 0 }
        OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
        # Set the rgb colors into the bitmap info
        if (OS::IsWinCE)
          red_mask = 0xff00
          green_mask = 0xff0000
          blue_mask = -0x1000000
          # big endian
          offset = BITMAPINFOHEADER.attr_sizeof
          bmi[offset] = ((red_mask & -0x1000000) >> 24)
          bmi[offset + 1] = ((red_mask & 0xff0000) >> 16)
          bmi[offset + 2] = ((red_mask & 0xff00) >> 8)
          bmi[offset + 3] = ((red_mask & 0xff) >> 0)
          bmi[offset + 4] = ((green_mask & -0x1000000) >> 24)
          bmi[offset + 5] = ((green_mask & 0xff0000) >> 16)
          bmi[offset + 6] = ((green_mask & 0xff00) >> 8)
          bmi[offset + 7] = ((green_mask & 0xff) >> 0)
          bmi[offset + 8] = ((blue_mask & -0x1000000) >> 24)
          bmi[offset + 9] = ((blue_mask & 0xff0000) >> 16)
          bmi[offset + 10] = ((blue_mask & 0xff00) >> 8)
          bmi[offset + 11] = ((blue_mask & 0xff) >> 0)
        end
        # long
        # long
        p_bits = Array.typed(::Java::Int).new(1) { 0 }
        h_bitmap = OS._create_dibsection(0, bmi, OS::DIB_RGB_COLORS, p_bits, 0, 0)
      else
        h_bitmap = OS._create_compatible_bitmap(h_dc, width, height)
      end
      OS._select_object(hdc2, h_bitmap)
      if (!(width).equal?(bm.attr_bm_width) || !(height).equal?(bm.attr_bm_height))
        if (!OS::IsWinCE)
          OS._set_stretch_blt_mode(hdc2, OS::COLORONCOLOR)
        end
        OS._stretch_blt(hdc2, 0, 0, width, height, hdc1, 0, 0, bm.attr_bm_width, bm.attr_bm_height, OS::SRCCOPY)
      else
        OS._bit_blt(hdc2, 0, 0, width, height, hdc1, 0, 0, OS::SRCCOPY)
      end
      OS._delete_dc(hdc1)
      OS._delete_dc(hdc2)
      OS._release_dc(0, h_dc)
      return h_bitmap
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def copy_icon(h_image, width, height)
      if (OS::IsWinCE)
        SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
      end
      # long
      h_icon = OS._copy_image(h_image, OS::IMAGE_ICON, width, height, 0)
      return !(h_icon).equal?(0) ? h_icon : h_image
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    # long
    # long
    def copy_with_alpha(h_bitmap, background, alpha_data, dest_width, dest_height)
      bm = BITMAP.new
      OS._get_object(h_bitmap, BITMAP.attr_sizeof, bm)
      src_width = bm.attr_bm_width
      src_height = bm.attr_bm_height
      # Create resources
      # long
      hdc = OS._get_dc(0)
      # long
      src_hdc = OS._create_compatible_dc(hdc)
      # long
      old_src_bitmap = OS._select_object(src_hdc, h_bitmap)
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
      # Merge the alpha channel in place
      if (!(alpha_data).nil?)
        spinc = dib_bm.attr_bm_width_bytes - src_width * 4
        ap = 0
        sp = 3
        y = 0
        while y < src_height
          x = 0
          while x < src_width
            src_data[sp] = alpha_data[((ap += 1) - 1)]
            sp += 4
            (x += 1)
          end
          sp += spinc
          (y += 1)
        end
      else
        trans_red = (background & 0xff)
        trans_green = ((background >> 8) & 0xff)
        trans_blue = ((background >> 16) & 0xff)
        spinc = dib_bm.attr_bm_width_bytes - src_width * 4
        sp = 3
        y = 0
        while y < src_height
          x = 0
          while x < src_width
            src_data[sp] = ((src_data[sp - 1]).equal?(trans_red) && (src_data[sp - 2]).equal?(trans_green) && (src_data[sp - 3]).equal?(trans_blue)) ? 0 : 255
            sp += 4
            (x += 1)
          end
          sp += spinc
          (y += 1)
        end
      end
      OS._move_memory(dib_bm.attr_bm_bits, src_data, size_in_bytes)
      # Stretch and free resources
      if (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height))
        bmi_header2 = BITMAPINFOHEADER.new
        bmi_header2.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
        bmi_header2.attr_bi_width = dest_width
        bmi_header2.attr_bi_height = -dest_height
        bmi_header2.attr_bi_planes = 1
        bmi_header2.attr_bi_bit_count = 32
        bmi_header2.attr_bi_compression = OS::BI_RGB
        bmi2 = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof) { 0 }
        OS._move_memory(bmi2, bmi_header2, BITMAPINFOHEADER.attr_sizeof)
        # long
        # long
        p_bits2 = Array.typed(::Java::Int).new(1) { 0 }
        # long
        mem_dib2 = OS._create_dibsection(0, bmi2, OS::DIB_RGB_COLORS, p_bits2, 0, 0)
        # long
        mem_hdc2 = OS._create_compatible_dc(hdc)
        # long
        old_mem_bitmap2 = OS._select_object(mem_hdc2, mem_dib2)
        if (!OS::IsWinCE)
          OS._set_stretch_blt_mode(mem_hdc2, OS::COLORONCOLOR)
        end
        OS._stretch_blt(mem_hdc2, 0, 0, dest_width, dest_height, mem_hdc, 0, 0, src_width, src_height, OS::SRCCOPY)
        OS._select_object(mem_hdc2, old_mem_bitmap2)
        OS._delete_dc(mem_hdc2)
        OS._select_object(mem_hdc, old_mem_bitmap)
        OS._delete_dc(mem_hdc)
        OS._delete_object(mem_dib)
        mem_dib = mem_dib2
      else
        OS._select_object(mem_hdc, old_mem_bitmap)
        OS._delete_dc(mem_hdc)
      end
      OS._select_object(src_hdc, old_src_bitmap)
      OS._delete_dc(src_hdc)
      OS._release_dc(0, hdc)
      return mem_dib
    end
    
    typesig { [ImageData, ::Java::Int, ::Java::Int] }
    # long
    def create_mask_from_alpha(data, dest_width, dest_height)
      src_width = data.attr_width
      src_height = data.attr_height
      mask = ImageData.internal_new(src_width, src_height, 1, PaletteData.new(Array.typed(RGB).new([RGB.new(0, 0, 0), RGB.new(0xff, 0xff, 0xff)])), 2, nil, 1, nil, nil, -1, -1, -1, 0, 0, 0, 0)
      ap = 0
      y = 0
      while y < mask.attr_height
        x = 0
        while x < mask.attr_width
          mask.set_pixel(x, y, (data.attr_alpha_data[((ap += 1) - 1)] & 0xff) <= 127 ? 1 : 0)
          ((x += 1) - 1)
        end
        ((y += 1) - 1)
      end
      # long
      h_mask = OS._create_bitmap(src_width, src_height, 1, 1, mask.attr_data)
      if (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height))
        # long
        hdc = OS._get_dc(0)
        # long
        hdc1 = OS._create_compatible_dc(hdc)
        OS._select_object(hdc1, h_mask)
        # long
        hdc2 = OS._create_compatible_dc(hdc)
        # long
        h_mask2 = OS._create_bitmap(dest_width, dest_height, 1, 1, nil)
        OS._select_object(hdc2, h_mask2)
        if (!OS::IsWinCE)
          OS._set_stretch_blt_mode(hdc2, OS::COLORONCOLOR)
        end
        OS._stretch_blt(hdc2, 0, 0, dest_width, dest_height, hdc1, 0, 0, src_width, src_height, OS::SRCCOPY)
        OS._delete_dc(hdc1)
        OS._delete_dc(hdc2)
        OS._release_dc(0, hdc)
        OS._delete_object(h_mask)
        h_mask = h_mask2
      end
      return h_mask
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def create_mask(h_bitmap, dest_width, dest_height, background, transparent_pixel)
      bm = BITMAP.new
      OS._get_object(h_bitmap, BITMAP.attr_sizeof, bm)
      src_width = bm.attr_bm_width
      src_height = bm.attr_bm_height
      # long
      h_mask = OS._create_bitmap(dest_width, dest_height, 1, 1, nil)
      # long
      h_dc = OS._get_dc(0)
      # long
      hdc1 = OS._create_compatible_dc(h_dc)
      if (!(background).equal?(-1))
        OS._select_object(hdc1, h_bitmap)
        # If the image has a palette with multiple entries having
        # the same color and one of those entries is the transparentPixel,
        # only the first entry becomes transparent. To avoid this
        # problem, temporarily change the image palette to a palette
        # where the transparentPixel is white and everything else is
        # black.
        is_dib = !(bm.attr_bm_bits).equal?(0)
        original_colors = nil
        if (!OS::IsWinCE && !(transparent_pixel).equal?(-1) && is_dib && bm.attr_bm_bits_pixel <= 8)
          max_colors = 1 << bm.attr_bm_bits_pixel
          old_colors = Array.typed(::Java::Byte).new(max_colors * 4) { 0 }
          OS._get_dibcolor_table(hdc1, 0, max_colors, old_colors)
          offset = transparent_pixel * 4
          new_colors = Array.typed(::Java::Byte).new(old_colors.attr_length) { 0 }
          new_colors[offset] = 0xff
          new_colors[offset + 1] = 0xff
          new_colors[offset + 2] = 0xff
          OS._set_dibcolor_table(hdc1, 0, max_colors, new_colors)
          original_colors = old_colors
          OS._set_bk_color(hdc1, 0xffffff)
        else
          OS._set_bk_color(hdc1, background)
        end
        # long
        hdc2 = OS._create_compatible_dc(h_dc)
        OS._select_object(hdc2, h_mask)
        if (!(dest_width).equal?(src_width) || !(dest_height).equal?(src_height))
          if (!OS::IsWinCE)
            OS._set_stretch_blt_mode(hdc2, OS::COLORONCOLOR)
          end
          OS._stretch_blt(hdc2, 0, 0, dest_width, dest_height, hdc1, 0, 0, src_width, src_height, OS::SRCCOPY)
        else
          OS._bit_blt(hdc2, 0, 0, dest_width, dest_height, hdc1, 0, 0, OS::SRCCOPY)
        end
        OS._delete_dc(hdc2)
        # Put back the original palette
        if (!(original_colors).nil?)
          OS._set_dibcolor_table(hdc1, 0, 1 << bm.attr_bm_bits_pixel, original_colors)
        end
      else
        # long
        h_old_bitmap = OS._select_object(hdc1, h_mask)
        OS._pat_blt(hdc1, 0, 0, dest_width, dest_height, OS::BLACKNESS)
        OS._select_object(hdc1, h_old_bitmap)
      end
      OS._release_dc(0, h_dc)
      OS._delete_dc(hdc1)
      return h_mask
    end
    
    typesig { [] }
    def dispose
      if (!(@handle).equal?(0))
        OS._image_list_destroy(@handle)
      end
      @handle = 0
      @images = nil
    end
    
    typesig { [::Java::Int] }
    def get(index)
      return @images[index]
    end
    
    typesig { [] }
    def get_style
      return @style
    end
    
    typesig { [] }
    # long
    def get_handle
      return @handle
    end
    
    typesig { [] }
    def get_image_size
      cx = Array.typed(::Java::Int).new(1) { 0 }
      cy = Array.typed(::Java::Int).new(1) { 0 }
      OS._image_list_get_icon_size(@handle, cx, cy)
      return Point.new(cx[0], cy[0])
    end
    
    typesig { [Image] }
    def index_of(image)
      count = OS._image_list_get_image_count(@handle)
      i = 0
      while i < count
        if (!(@images[i]).nil?)
          if (@images[i].is_disposed)
            @images[i] = nil
          end
          if (!(@images[i]).nil? && (@images[i] == image))
            return i
          end
        end
        ((i += 1) - 1)
      end
      return -1
    end
    
    typesig { [::Java::Int, Image] }
    def put(index, image)
      count = OS._image_list_get_image_count(@handle)
      if (!(0 <= index && index < count))
        return
      end
      if (!(image).nil?)
        set(index, image, count)
      end
      @images[index] = image
    end
    
    typesig { [::Java::Int] }
    def remove(index)
      count = OS._image_list_get_image_count(@handle)
      if (!(0 <= index && index < count))
        return
      end
      OS._image_list_remove(@handle, index)
      System.arraycopy(@images, index + 1, @images, index, (count -= 1) - index)
      @images[index] = nil
    end
    
    typesig { [] }
    def remove_ref
      return (@ref_count -= 1)
    end
    
    typesig { [::Java::Int, Image, ::Java::Int] }
    def set(index, image, count)
      # long
      h_image = image.attr_handle
      cx = Array.typed(::Java::Int).new(1) { 0 }
      cy = Array.typed(::Java::Int).new(1) { 0 }
      OS._image_list_get_icon_size(@handle, cx, cy)
      case (image.attr_type)
      when SWT::BITMAP
        # Note that the image size has to match the image list icon size.
        # 
        # long
        h_bitmap = 0
        h_mask = 0
        data = image.get_image_data
        case (data.get_transparency_type)
        when SWT::TRANSPARENCY_ALPHA
          if (OS::COMCTL32_MAJOR >= 6)
            h_bitmap = copy_with_alpha(h_image, -1, data.attr_alpha_data, cx[0], cy[0])
          else
            h_bitmap = copy_bitmap(h_image, cx[0], cy[0])
            h_mask = create_mask_from_alpha(data, cx[0], cy[0])
          end
        when SWT::TRANSPARENCY_PIXEL
          background = -1
          color = image.get_background
          if (!(color).nil?)
            background = color.attr_handle
          end
          h_bitmap = copy_bitmap(h_image, cx[0], cy[0])
          h_mask = create_mask(h_image, cx[0], cy[0], background, data.attr_transparent_pixel)
        when SWT::TRANSPARENCY_NONE
          h_bitmap = copy_bitmap(h_image, cx[0], cy[0])
          if (!(index).equal?(count))
            h_mask = create_mask(h_image, cx[0], cy[0], -1, -1)
          end
        else
          h_bitmap = copy_bitmap(h_image, cx[0], cy[0])
          if (!(index).equal?(count))
            h_mask = create_mask(h_image, cx[0], cy[0], -1, -1)
          end
        end
        if ((index).equal?(count))
          OS._image_list_add(@handle, h_bitmap, h_mask)
        else
          # Note that the mask must always be replaced even for TRANSPARENCY_NONE
          OS._image_list_replace(@handle, index, h_bitmap, h_mask)
        end
        if (!(h_mask).equal?(0))
          OS._delete_object(h_mask)
        end
        if (!(h_bitmap).equal?(h_image))
          OS._delete_object(h_bitmap)
        end
      when SWT::ICON
        if (OS::IsWinCE)
          OS._image_list_replace_icon(@handle, (index).equal?(count) ? -1 : index, h_image)
        else
          # long
          h_icon = copy_icon(h_image, cx[0], cy[0])
          OS._image_list_replace_icon(@handle, (index).equal?(count) ? -1 : index, h_icon)
          OS._destroy_icon(h_icon)
        end
      end
    end
    
    typesig { [] }
    def size
      result = 0
      count = OS._image_list_get_image_count(@handle)
      i = 0
      while i < count
        if (!(@images[i]).nil?)
          if (@images[i].is_disposed)
            @images[i] = nil
          end
          if (!(@images[i]).nil?)
            ((result += 1) - 1)
          end
        end
        ((i += 1) - 1)
      end
      return result
    end
    
    private
    alias_method :initialize__image_list, :initialize
  end
  
end
