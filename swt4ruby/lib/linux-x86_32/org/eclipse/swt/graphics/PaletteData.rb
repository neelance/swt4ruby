require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module PaletteDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class describe the color data used by an image.
  # <p>
  # Depending on the depth of the image, the PaletteData can take one
  # of two forms, indicated by the isDirect field:
  # </p>
  # <dl>
  # <dt>
  # <em>isDirect is false</em>
  # </dt>
  # <dd>
  # If isDirect is <code>false</code>, this palette is an indexed
  # palette which maps pixel values to RGBs. The actual RGB values
  # may be retrieved by using the getRGBs() method.
  # </dd>
  # <dt>
  # <em>isDirect is true</em>
  # </dt>
  # <dd>
  # If isDirect is <code>true</code>, this palette is a direct color
  # palette. Instead of containing RGB values, it contains red,
  # green and blue mask and shift information which indicates how
  # the color components may be extracted from a given pixel.
  # This means that the RGB value is actually encoded in the pixel value.
  # <p>
  # In this case, the shift data is the number of bits required to shift
  # the RGB value to the left in order to align the high bit of the
  # corresponding mask with the high bit of the first byte. This number
  # may be negative, so care must be taken when shifting. For example,
  # with a red mask of 0xFF0000, the red shift would be -16. With a red
  # mask of 0x1F, the red shift would be 3.
  # </p>
  # </dd>
  # </dl>
  # 
  # @see Image
  # @see RGB
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class PaletteData 
    include_class_members PaletteDataImports
    
    # true if the receiver is a direct palette,
    # and false otherwise
    attr_accessor :is_direct
    alias_method :attr_is_direct, :is_direct
    undef_method :is_direct
    alias_method :attr_is_direct=, :is_direct=
    undef_method :is_direct=
    
    # the RGB values for an indexed palette, where the
    # indices of the array correspond to pixel values
    attr_accessor :colors
    alias_method :attr_colors, :colors
    undef_method :colors
    alias_method :attr_colors=, :colors=
    undef_method :colors=
    
    # the red mask for a direct palette
    attr_accessor :red_mask
    alias_method :attr_red_mask, :red_mask
    undef_method :red_mask
    alias_method :attr_red_mask=, :red_mask=
    undef_method :red_mask=
    
    # the green mask for a direct palette
    attr_accessor :green_mask
    alias_method :attr_green_mask, :green_mask
    undef_method :green_mask
    alias_method :attr_green_mask=, :green_mask=
    undef_method :green_mask=
    
    # the blue mask for a direct palette
    attr_accessor :blue_mask
    alias_method :attr_blue_mask, :blue_mask
    undef_method :blue_mask
    alias_method :attr_blue_mask=, :blue_mask=
    undef_method :blue_mask=
    
    # the red shift for a direct palette
    attr_accessor :red_shift
    alias_method :attr_red_shift, :red_shift
    undef_method :red_shift
    alias_method :attr_red_shift=, :red_shift=
    undef_method :red_shift=
    
    # the green shift for a direct palette
    attr_accessor :green_shift
    alias_method :attr_green_shift, :green_shift
    undef_method :green_shift
    alias_method :attr_green_shift=, :green_shift=
    undef_method :green_shift=
    
    # the blue shift for a direct palette
    attr_accessor :blue_shift
    alias_method :attr_blue_shift, :blue_shift
    undef_method :blue_shift
    alias_method :attr_blue_shift=, :blue_shift=
    undef_method :blue_shift=
    
    typesig { [Array.typed(RGB)] }
    # Constructs a new indexed palette given an array of RGB values.
    # 
    # @param colors the array of <code>RGB</code>s for the palette
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    def initialize(colors)
      @is_direct = false
      @colors = nil
      @red_mask = 0
      @green_mask = 0
      @blue_mask = 0
      @red_shift = 0
      @green_shift = 0
      @blue_shift = 0
      if ((colors).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @colors = colors
      @is_direct = false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Constructs a new direct palette given the red, green and blue masks.
    # 
    # @param redMask the red mask
    # @param greenMask the green mask
    # @param blueMask the blue mask
    def initialize(red_mask, green_mask, blue_mask)
      @is_direct = false
      @colors = nil
      @red_mask = 0
      @green_mask = 0
      @blue_mask = 0
      @red_shift = 0
      @green_shift = 0
      @blue_shift = 0
      @red_mask = red_mask
      @green_mask = green_mask
      @blue_mask = blue_mask
      @is_direct = true
      @red_shift = shift_for_mask(red_mask)
      @green_shift = shift_for_mask(green_mask)
      @blue_shift = shift_for_mask(blue_mask)
    end
    
    typesig { [RGB] }
    # Returns the pixel value corresponding to the given <code>RGB</code>.
    # 
    # @param rgb the RGB to get the pixel value for
    # @return the pixel value for the given RGB
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the RGB is not found in the palette</li>
    # </ul>
    def get_pixel(rgb)
      if ((rgb).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (@is_direct)
        pixel = 0
        pixel |= (@red_shift < 0 ? rgb.attr_red << -@red_shift : rgb.attr_red >> @red_shift) & @red_mask
        pixel |= (@green_shift < 0 ? rgb.attr_green << -@green_shift : rgb.attr_green >> @green_shift) & @green_mask
        pixel |= (@blue_shift < 0 ? rgb.attr_blue << -@blue_shift : rgb.attr_blue >> @blue_shift) & @blue_mask
        return pixel
      else
        i = 0
        while i < @colors.attr_length
          if ((@colors[i] == rgb))
            return i
          end
          i += 1
        end
        # The RGB did not exist in the palette
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        return 0
      end
    end
    
    typesig { [::Java::Int] }
    # Returns an <code>RGB</code> corresponding to the given pixel value.
    # 
    # @param pixel the pixel to get the RGB value for
    # @return the RGB value for the given pixel
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the pixel does not exist in the palette</li>
    # </ul>
    def get_rgb(pixel)
      if (@is_direct)
        r = pixel & @red_mask
        r = (@red_shift < 0) ? r >> -@red_shift : r << @red_shift
        g = pixel & @green_mask
        g = (@green_shift < 0) ? g >> -@green_shift : g << @green_shift
        b = pixel & @blue_mask
        b = (@blue_shift < 0) ? b >> -@blue_shift : b << @blue_shift
        return RGB.new(r, g, b)
      else
        if (pixel < 0 || pixel >= @colors.attr_length)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        return @colors[pixel]
      end
    end
    
    typesig { [] }
    # Returns all the RGB values in the receiver if it is an
    # indexed palette, or null if it is a direct palette.
    # 
    # @return the <code>RGB</code>s for the receiver or null
    def get_rgbs
      return @colors
    end
    
    typesig { [::Java::Int] }
    # Computes the shift value for a given mask.
    # 
    # @param mask the mask to compute the shift for
    # @return the shift amount
    # 
    # @see PaletteData
    def shift_for_mask(mask)
      i = 31
      while i >= 0
        if (!(((mask >> i) & 0x1)).equal?(0))
          return 7 - i
        end
        i -= 1
      end
      return 32
    end
    
    private
    alias_method :initialize__palette_data, :initialize
  end
  
end
