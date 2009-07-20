require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module SashFormLayoutImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides the layout for SashForm
  # 
  # @see SashForm
  class SashFormLayout < SashFormLayoutImports.const_get :SwtLayout
    include_class_members SashFormLayoutImports
    
    typesig { [Composite, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(composite, w_hint, h_hint, flush_cache)
      sash_form = composite
      c_array = sash_form.get_controls(true)
      width = 0
      height = 0
      if ((c_array.attr_length).equal?(0))
        if (!(w_hint).equal?(SWT::DEFAULT))
          width = w_hint
        end
        if (!(h_hint).equal?(SWT::DEFAULT))
          height = h_hint
        end
        return Point.new(width, height)
      end
      # determine control sizes
      vertical = (sash_form.get_orientation).equal?(SWT::VERTICAL)
      max_index = 0
      max_value = 0
      i = 0
      while i < c_array.attr_length
        if (vertical)
          size = c_array[i].compute_size(w_hint, SWT::DEFAULT, flush_cache)
          if (size.attr_y > max_value)
            max_index = i
            max_value = size.attr_y
          end
          width = Math.max(width, size.attr_x)
        else
          size = c_array[i].compute_size(SWT::DEFAULT, h_hint, flush_cache)
          if (size.attr_x > max_value)
            max_index = i
            max_value = size.attr_x
          end
          height = Math.max(height, size.attr_y)
        end
        i += 1
      end
      # get the ratios
      ratios = Array.typed(::Java::Long).new(c_array.attr_length) { 0 }
      total = 0
      i_ = 0
      while i_ < c_array.attr_length
        data = c_array[i_].get_layout_data
        if (!(data).nil? && data.is_a?(SashFormData))
          ratios[i_] = (data).attr_weight
        else
          data = SashFormData.new
          c_array[i_].set_layout_data(data)
          (data).attr_weight = ratios[i_] = ((200 << 16) + 999) / 1000
        end
        total += ratios[i_]
        i_ += 1
      end
      if (ratios[max_index] > 0)
        sashwidth = sash_form.attr_sashes.attr_length > 0 ? sash_form.attr_sash_width + sash_form.attr_sashes[0].get_border_width * 2 : sash_form.attr_sash_width
        if (vertical)
          height += RJava.cast_to_int((total * max_value / ratios[max_index])) + (c_array.attr_length - 1) * sashwidth
        else
          width += RJava.cast_to_int((total * max_value / ratios[max_index])) + (c_array.attr_length - 1) * sashwidth
        end
      end
      width += sash_form.get_border_width * 2
      height += sash_form.get_border_width * 2
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      return Point.new(width, height)
    end
    
    typesig { [Control] }
    def flush_cache(control)
      return true
    end
    
    typesig { [Composite, ::Java::Boolean] }
    def layout(composite, flush_cache)
      sash_form = composite
      area = sash_form.get_client_area
      if (area.attr_width <= 1 || area.attr_height <= 1)
        return
      end
      new_controls = sash_form.get_controls(true)
      if ((sash_form.attr_controls.attr_length).equal?(0) && (new_controls.attr_length).equal?(0))
        return
      end
      sash_form.attr_controls = new_controls
      controls = sash_form.attr_controls
      if (!(sash_form.attr_max_control).nil? && !sash_form.attr_max_control.is_disposed)
        i = 0
        while i < controls.attr_length
          if (!(controls[i]).equal?(sash_form.attr_max_control))
            controls[i].set_bounds(-200, -200, 0, 0)
          else
            controls[i].set_bounds(area)
          end
          i += 1
        end
        return
      end
      # keep just the right number of sashes
      if (sash_form.attr_sashes.attr_length < controls.attr_length - 1)
        new_sashes = Array.typed(Sash).new(controls.attr_length - 1) { nil }
        System.arraycopy(sash_form.attr_sashes, 0, new_sashes, 0, sash_form.attr_sashes.attr_length)
        i = sash_form.attr_sashes.attr_length
        while i < new_sashes.attr_length
          new_sashes[i] = Sash.new(sash_form, sash_form.attr_sash_style)
          new_sashes[i].set_background(sash_form.attr_background)
          new_sashes[i].set_foreground(sash_form.attr_foreground)
          new_sashes[i].add_listener(SWT::Selection, sash_form.attr_sash_listener)
          i += 1
        end
        sash_form.attr_sashes = new_sashes
      end
      if (sash_form.attr_sashes.attr_length > controls.attr_length - 1)
        if ((controls.attr_length).equal?(0))
          i = 0
          while i < sash_form.attr_sashes.attr_length
            sash_form.attr_sashes[i].dispose
            i += 1
          end
          sash_form.attr_sashes = Array.typed(Sash).new(0) { nil }
        else
          new_sashes = Array.typed(Sash).new(controls.attr_length - 1) { nil }
          System.arraycopy(sash_form.attr_sashes, 0, new_sashes, 0, new_sashes.attr_length)
          i = controls.attr_length - 1
          while i < sash_form.attr_sashes.attr_length
            sash_form.attr_sashes[i].dispose
            i += 1
          end
          sash_form.attr_sashes = new_sashes
        end
      end
      if ((controls.attr_length).equal?(0))
        return
      end
      sashes = sash_form.attr_sashes
      # get the ratios
      ratios = Array.typed(::Java::Long).new(controls.attr_length) { 0 }
      total = 0
      i = 0
      while i < controls.attr_length
        data = controls[i].get_layout_data
        if (!(data).nil? && data.is_a?(SashFormData))
          ratios[i] = (data).attr_weight
        else
          data = SashFormData.new
          controls[i].set_layout_data(data)
          (data).attr_weight = ratios[i] = ((200 << 16) + 999) / 1000
        end
        total += ratios[i]
        i += 1
      end
      sashwidth = sashes.attr_length > 0 ? sash_form.attr_sash_width + sashes[0].get_border_width * 2 : sash_form.attr_sash_width
      if ((sash_form.get_orientation).equal?(SWT::HORIZONTAL))
        width = RJava.cast_to_int((ratios[0] * (area.attr_width - sashes.attr_length * sashwidth) / total))
        x = area.attr_x
        controls[0].set_bounds(x, area.attr_y, width, area.attr_height)
        x += width
        i_ = 1
        while i_ < controls.attr_length - 1
          sashes[i_ - 1].set_bounds(x, area.attr_y, sashwidth, area.attr_height)
          x += sashwidth
          width = RJava.cast_to_int((ratios[i_] * (area.attr_width - sashes.attr_length * sashwidth) / total))
          controls[i_].set_bounds(x, area.attr_y, width, area.attr_height)
          x += width
          i_ += 1
        end
        if (controls.attr_length > 1)
          sashes[sashes.attr_length - 1].set_bounds(x, area.attr_y, sashwidth, area.attr_height)
          x += sashwidth
          width = area.attr_width - x
          controls[controls.attr_length - 1].set_bounds(x, area.attr_y, width, area.attr_height)
        end
      else
        height = RJava.cast_to_int((ratios[0] * (area.attr_height - sashes.attr_length * sashwidth) / total))
        y = area.attr_y
        controls[0].set_bounds(area.attr_x, y, area.attr_width, height)
        y += height
        i_ = 1
        while i_ < controls.attr_length - 1
          sashes[i_ - 1].set_bounds(area.attr_x, y, area.attr_width, sashwidth)
          y += sashwidth
          height = RJava.cast_to_int((ratios[i_] * (area.attr_height - sashes.attr_length * sashwidth) / total))
          controls[i_].set_bounds(area.attr_x, y, area.attr_width, height)
          y += height
          i_ += 1
        end
        if (controls.attr_length > 1)
          sashes[sashes.attr_length - 1].set_bounds(area.attr_x, y, area.attr_width, sashwidth)
          y += sashwidth
          height = area.attr_height - y
          controls[controls.attr_length - 1].set_bounds(area.attr_x, y, area.attr_width, height)
        end
      end
    end
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__sash_form_layout, :initialize
  end
  
end
