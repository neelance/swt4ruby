require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module ImageListImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class ImageList 
    include_class_members ImageListImports
    
    # int
    attr_accessor :pixbufs
    alias_method :attr_pixbufs, :pixbufs
    undef_method :pixbufs
    alias_method :attr_pixbufs=, :pixbufs=
    undef_method :pixbufs=
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :images
    alias_method :attr_images, :images
    undef_method :images
    alias_method :attr_images=, :images=
    undef_method :images=
    
    typesig { [] }
    def initialize
      @pixbufs = nil
      @width = -1
      @height = -1
      @images = nil
      @images = Array.typed(Image).new(4) { nil }
      # int
      @pixbufs = Array.typed(::Java::Long).new(4) { 0 }
    end
    
    typesig { [Image] }
    def add(image)
      index = 0
      while (index < @images.attr_length)
        if (!(@images[index]).nil?)
          if (@images[index].is_disposed)
            OS.g_object_unref(@pixbufs[index])
            @images[index] = nil
            @pixbufs[index] = 0
          end
        end
        if ((@images[index]).nil?)
          break
        end
        ((index += 1) - 1)
      end
      if ((index).equal?(@images.attr_length))
        new_images = Array.typed(Image).new(@images.attr_length + 4) { nil }
        System.arraycopy(@images, 0, new_images, 0, @images.attr_length)
        @images = new_images
        # int
        # int
        new_pixbufs = Array.typed(::Java::Long).new(@pixbufs.attr_length + 4) { 0 }
        System.arraycopy(@pixbufs, 0, new_pixbufs, 0, @pixbufs.attr_length)
        @pixbufs = new_pixbufs
      end
      set(index, image)
      return index
    end
    
    typesig { [] }
    def dispose
      if ((@pixbufs).nil?)
        return
      end
      index = 0
      while index < @pixbufs.attr_length
        if (!(@pixbufs[index]).equal?(0))
          OS.g_object_unref(@pixbufs[index])
        end
        ((index += 1) - 1)
      end
      @images = nil
      @pixbufs = nil
    end
    
    typesig { [::Java::Int] }
    def get(index)
      return @images[index]
    end
    
    typesig { [::Java::Int] }
    # int
    def get_pixbuf(index)
      return @pixbufs[index]
    end
    
    typesig { [Image] }
    def index_of(image)
      if ((image).nil?)
        return -1
      end
      index = 0
      while index < @images.attr_length
        if ((image).equal?(@images[index]))
          return index
        end
        ((index += 1) - 1)
      end
      return -1
    end
    
    typesig { [::Java::Long] }
    # int
    def index_of(pixbuf)
      if ((pixbuf).equal?(0))
        return -1
      end
      index = 0
      while index < @images.attr_length
        if ((pixbuf).equal?(@pixbufs[index]))
          return index
        end
        ((index += 1) - 1)
      end
      return -1
    end
    
    typesig { [] }
    def is_disposed
      return (@images).nil?
    end
    
    typesig { [::Java::Int, Image] }
    def put(index, image)
      count = @images.attr_length
      if (!(0 <= index && index < count))
        return
      end
      if (!(image).nil?)
        set(index, image)
      else
        @images[index] = nil
        if (!(@pixbufs[index]).equal?(0))
          OS.g_object_unref(@pixbufs[index])
        end
        @pixbufs[index] = 0
      end
    end
    
    typesig { [Image] }
    def remove(image)
      if ((image).nil?)
        return
      end
      index = 0
      while index < @images.attr_length
        if ((image).equal?(@images[index]))
          OS.g_object_unref(@pixbufs[index])
          @images[index] = nil
          @pixbufs[index] = 0
        end
        ((index += 1) - 1)
      end
    end
    
    typesig { [::Java::Int, Image] }
    def set(index, image)
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_drawable_get_size(image.attr_pixmap, w, h)
      # int
      pixbuf = Display.create_pixbuf(image)
      if ((@width).equal?(-1) || (@height).equal?(-1))
        @width = w[0]
        @height = h[0]
      end
      if (!(w[0]).equal?(@width) || !(h[0]).equal?(@height))
        # int
        scaled_pixbuf = OS.gdk_pixbuf_scale_simple(pixbuf, @width, @height, OS::GDK_INTERP_BILINEAR)
        OS.g_object_unref(pixbuf)
        pixbuf = scaled_pixbuf
      end
      # int
      old_pixbuf = @pixbufs[index]
      if (!(old_pixbuf).equal?(0))
        if ((@images[index]).equal?(image))
          OS.gdk_pixbuf_copy_area(pixbuf, 0, 0, @width, @height, old_pixbuf, 0, 0)
          OS.g_object_unref(pixbuf)
          pixbuf = old_pixbuf
        else
          OS.g_object_unref(old_pixbuf)
        end
      end
      @pixbufs[index] = pixbuf
      @images[index] = image
    end
    
    typesig { [] }
    def size
      result = 0
      index = 0
      while index < @images.attr_length
        if (!(@images[index]).nil?)
          if (@images[index].is_disposed)
            OS.g_object_unref(@pixbufs[index])
            @images[index] = nil
            @pixbufs[index] = 0
          end
          if (!(@images[index]).nil?)
            ((result += 1) - 1)
          end
        end
        ((index += 1) - 1)
      end
      return result
    end
    
    private
    alias_method :initialize__image_list, :initialize
  end
  
end
