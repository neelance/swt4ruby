require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Theme
  module ThemeImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class Theme 
    include_class_members ThemeImports
    
    attr_accessor :device
    alias_method :attr_device, :device
    undef_method :device
    alias_method :attr_device=, :device=
    undef_method :device=
    
    typesig { [Device] }
    def initialize(device)
      @device = nil
      @device = device
    end
    
    typesig { [SwtGC, DrawData] }
    def compute_trim(gc, data)
      check_theme
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      return data.compute_trim(self, gc)
    end
    
    typesig { [] }
    def check_theme
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
    end
    
    typesig { [] }
    def dispose
      @device = nil
    end
    
    typesig { [SwtGC, Rectangle, DrawData] }
    def draw_background(gc, bounds, data)
      check_theme
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      data.draw(self, gc, bounds)
    end
    
    typesig { [SwtGC, Rectangle, DrawData] }
    def draw_focus(gc, bounds, data)
      check_theme
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      gc.draw_focus(bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height)
    end
    
    typesig { [SwtGC, Rectangle, DrawData, Image, ::Java::Int] }
    def draw_image(gc, bounds, data, image, flags)
      check_theme
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      data.draw_image(self, image, gc, bounds)
    end
    
    typesig { [SwtGC, Rectangle, DrawData, String, ::Java::Int] }
    def draw_text(gc, bounds, data, text, flags)
      check_theme
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((text).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      data.draw_text(self, text, flags, gc, bounds)
    end
    
    typesig { [::Java::Int, Rectangle, DrawData] }
    def get_bounds(part, bounds, data)
      check_theme
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return data.get_bounds(part, bounds)
    end
    
    typesig { [Point, Rectangle, RangeDrawData] }
    def get_selection(offset, bounds, data)
      check_theme
      if ((offset).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return data.get_selection(offset, bounds)
    end
    
    typesig { [Point, Rectangle, DrawData] }
    def hit_background(position, bounds, data)
      check_theme
      if ((position).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return data.hit(self, position, bounds)
    end
    
    typesig { [] }
    def is_disposed
      return (@device).nil?
    end
    
    typesig { [SwtGC, Rectangle, DrawData, String, ::Java::Int] }
    def measure_text(gc, bounds, data, text, flags)
      check_theme
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((text).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      return data.measure_text(self, text, flags, gc, bounds)
    end
    
    private
    alias_method :initialize__theme, :initialize
  end
  
end
