require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Layout
  module FormDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Instances of this class are used to define the attachments
  # of a control in a <code>FormLayout</code>.
  # <p>
  # To set a <code>FormData</code> object into a control, you use the
  # <code>setLayoutData ()</code> method. To define attachments for the
  # <code>FormData</code>, set the fields directly, like this:
  # <pre>
  # FormData data = new FormData();
  # data.left = new FormAttachment(0,5);
  # data.right = new FormAttachment(100,-5);
  # button.setLayoutData(formData);
  # </pre>
  # </p>
  # <p>
  # <code>FormData</code> contains the <code>FormAttachments</code> for
  # each edge of the control that the <code>FormLayout</code> uses to
  # determine the size and position of the control. <code>FormData</code>
  # objects also allow you to set the width and height of controls within
  # a <code>FormLayout</code>.
  # </p>
  # 
  # @see FormLayout
  # @see FormAttachment
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 2.0
  class FormData 
    include_class_members FormDataImports
    
    # width specifies the preferred width in pixels. This value
    # is the wHint passed into Control.computeSize(int, int, boolean)
    # to determine the preferred size of the control.
    # 
    # The default value is SWT.DEFAULT.
    # 
    # @see Control#computeSize(int, int, boolean)
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # height specifies the preferred height in pixels. This value
    # is the hHint passed into Control.computeSize(int, int, boolean)
    # to determine the preferred size of the control.
    # 
    # The default value is SWT.DEFAULT.
    # 
    # @see Control#computeSize(int, int, boolean)
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    # left specifies the attachment of the left side of
    # the control.
    attr_accessor :left
    alias_method :attr_left, :left
    undef_method :left
    alias_method :attr_left=, :left=
    undef_method :left=
    
    # right specifies the attachment of the right side of
    # the control.
    attr_accessor :right
    alias_method :attr_right, :right
    undef_method :right
    alias_method :attr_right=, :right=
    undef_method :right=
    
    # top specifies the attachment of the top of the control.
    attr_accessor :top
    alias_method :attr_top, :top
    undef_method :top
    alias_method :attr_top=, :top=
    undef_method :top=
    
    # bottom specifies the attachment of the bottom of the
    # control.
    attr_accessor :bottom
    alias_method :attr_bottom, :bottom
    undef_method :bottom
    alias_method :attr_bottom=, :bottom=
    undef_method :bottom=
    
    attr_accessor :cache_width
    alias_method :attr_cache_width, :cache_width
    undef_method :cache_width
    alias_method :attr_cache_width=, :cache_width=
    undef_method :cache_width=
    
    attr_accessor :cache_height
    alias_method :attr_cache_height, :cache_height
    undef_method :cache_height
    alias_method :attr_cache_height=, :cache_height=
    undef_method :cache_height=
    
    attr_accessor :default_whint
    alias_method :attr_default_whint, :default_whint
    undef_method :default_whint
    alias_method :attr_default_whint=, :default_whint=
    undef_method :default_whint=
    
    attr_accessor :default_hhint
    alias_method :attr_default_hhint, :default_hhint
    undef_method :default_hhint
    alias_method :attr_default_hhint=, :default_hhint=
    undef_method :default_hhint=
    
    attr_accessor :default_width
    alias_method :attr_default_width, :default_width
    undef_method :default_width
    alias_method :attr_default_width=, :default_width=
    undef_method :default_width=
    
    attr_accessor :default_height
    alias_method :attr_default_height, :default_height
    undef_method :default_height
    alias_method :attr_default_height=, :default_height=
    undef_method :default_height=
    
    attr_accessor :current_whint
    alias_method :attr_current_whint, :current_whint
    undef_method :current_whint
    alias_method :attr_current_whint=, :current_whint=
    undef_method :current_whint=
    
    attr_accessor :current_hhint
    alias_method :attr_current_hhint, :current_hhint
    undef_method :current_hhint
    alias_method :attr_current_hhint=, :current_hhint=
    undef_method :current_hhint=
    
    attr_accessor :current_width
    alias_method :attr_current_width, :current_width
    undef_method :current_width
    alias_method :attr_current_width=, :current_width=
    undef_method :current_width=
    
    attr_accessor :current_height
    alias_method :attr_current_height, :current_height
    undef_method :current_height
    alias_method :attr_current_height=, :current_height=
    undef_method :current_height=
    
    attr_accessor :cache_left
    alias_method :attr_cache_left, :cache_left
    undef_method :cache_left
    alias_method :attr_cache_left=, :cache_left=
    undef_method :cache_left=
    
    attr_accessor :cache_right
    alias_method :attr_cache_right, :cache_right
    undef_method :cache_right
    alias_method :attr_cache_right=, :cache_right=
    undef_method :cache_right=
    
    attr_accessor :cache_top
    alias_method :attr_cache_top, :cache_top
    undef_method :cache_top
    alias_method :attr_cache_top=, :cache_top=
    undef_method :cache_top=
    
    attr_accessor :cache_bottom
    alias_method :attr_cache_bottom, :cache_bottom
    undef_method :cache_bottom
    alias_method :attr_cache_bottom=, :cache_bottom=
    undef_method :cache_bottom=
    
    attr_accessor :is_visited
    alias_method :attr_is_visited, :is_visited
    undef_method :is_visited
    alias_method :attr_is_visited=, :is_visited=
    undef_method :is_visited=
    
    attr_accessor :needed
    alias_method :attr_needed, :needed
    undef_method :needed
    alias_method :attr_needed=, :needed=
    undef_method :needed=
    
    typesig { [] }
    # Constructs a new instance of FormData using
    # default values.
    def initialize
      @width = SWT::DEFAULT
      @height = SWT::DEFAULT
      @left = nil
      @right = nil
      @top = nil
      @bottom = nil
      @cache_width = -1
      @cache_height = -1
      @default_whint = 0
      @default_hhint = 0
      @default_width = -1
      @default_height = -1
      @current_whint = 0
      @current_hhint = 0
      @current_width = -1
      @current_height = -1
      @cache_left = nil
      @cache_right = nil
      @cache_top = nil
      @cache_bottom = nil
      @is_visited = false
      @needed = false
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Constructs a new instance of FormData according to the parameters.
    # A value of SWT.DEFAULT indicates that no minimum width or
    # no minimum height is specified.
    # 
    # @param width a minimum width for the control
    # @param height a minimum height for the control
    def initialize(width, height)
      @width = SWT::DEFAULT
      @height = SWT::DEFAULT
      @left = nil
      @right = nil
      @top = nil
      @bottom = nil
      @cache_width = -1
      @cache_height = -1
      @default_whint = 0
      @default_hhint = 0
      @default_width = -1
      @default_height = -1
      @current_whint = 0
      @current_hhint = 0
      @current_width = -1
      @current_height = -1
      @cache_left = nil
      @cache_right = nil
      @cache_top = nil
      @cache_bottom = nil
      @is_visited = false
      @needed = false
      @width = width
      @height = height
    end
    
    typesig { [Control, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(control, w_hint, h_hint, flush_cache)
      if (!(@cache_width).equal?(-1) && !(@cache_height).equal?(-1))
        return
      end
      if ((w_hint).equal?(@width) && (h_hint).equal?(@height))
        if ((@default_width).equal?(-1) || (@default_height).equal?(-1) || !(w_hint).equal?(@default_whint) || !(h_hint).equal?(@default_hhint))
          size = control.compute_size(w_hint, h_hint, flush_cache)
          @default_whint = w_hint
          @default_hhint = h_hint
          @default_width = size.attr_x
          @default_height = size.attr_y
        end
        @cache_width = @default_width
        @cache_height = @default_height
        return
      end
      if ((@current_width).equal?(-1) || (@current_height).equal?(-1) || !(w_hint).equal?(@current_whint) || !(h_hint).equal?(@current_hhint))
        size = control.compute_size(w_hint, h_hint, flush_cache)
        @current_whint = w_hint
        @current_hhint = h_hint
        @current_width = size.attr_x
        @current_height = size.attr_y
      end
      @cache_width = @current_width
      @cache_height = @current_height
    end
    
    typesig { [] }
    def flush_cache
      @cache_width = @cache_height = -1
      @default_height = @default_width = -1
      @current_height = @current_width = -1
    end
    
    typesig { [Control, ::Java::Boolean] }
    def get_width(control, flush_cache)
      @needed = true
      compute_size(control, @width, @height, flush_cache)
      return @cache_width
    end
    
    typesig { [Control, ::Java::Boolean] }
    def get_height(control, flush_cache)
      compute_size(control, @width, @height, flush_cache)
      return @cache_height
    end
    
    typesig { [Control, ::Java::Int, ::Java::Boolean] }
    def get_bottom_attachment(control, spacing, flush_cache)
      if (!(@cache_bottom).nil?)
        return @cache_bottom
      end
      if (@is_visited)
        return @cache_bottom = FormAttachment.new(0, get_height(control, flush_cache))
      end
      if ((@bottom).nil?)
        if ((@top).nil?)
          return @cache_bottom = FormAttachment.new(0, get_height(control, flush_cache))
        end
        return @cache_bottom = get_top_attachment(control, spacing, flush_cache).plus(get_height(control, flush_cache))
      end
      bottom_control = @bottom.attr_control
      if (!(bottom_control).nil?)
        if (bottom_control.is_disposed)
          @bottom.attr_control = bottom_control = nil
        else
          if (!(bottom_control.get_parent).equal?(control.get_parent))
            bottom_control = nil
          end
        end
      end
      if ((bottom_control).nil?)
        return @cache_bottom = @bottom
      end
      @is_visited = true
      bottom_data = bottom_control.get_layout_data
      bottom_attachment = bottom_data.get_bottom_attachment(bottom_control, spacing, flush_cache)
      case (@bottom.attr_alignment)
      when SWT::BOTTOM
        @cache_bottom = bottom_attachment.plus(@bottom.attr_offset)
      when SWT::CENTER
        top_attachment = bottom_data.get_top_attachment(bottom_control, spacing, flush_cache)
        bottom_height = bottom_attachment.minus(top_attachment)
        @cache_bottom = bottom_attachment.minus(bottom_height.minus(get_height(control, flush_cache)).divide(2))
      else
        top_attachment = bottom_data.get_top_attachment(bottom_control, spacing, flush_cache)
        @cache_bottom = top_attachment.plus(@bottom.attr_offset - spacing)
      end
      @is_visited = false
      return @cache_bottom
    end
    
    typesig { [Control, ::Java::Int, ::Java::Boolean] }
    def get_left_attachment(control, spacing, flush_cache)
      if (!(@cache_left).nil?)
        return @cache_left
      end
      if (@is_visited)
        return @cache_left = FormAttachment.new(0, 0)
      end
      if ((@left).nil?)
        if ((@right).nil?)
          return @cache_left = FormAttachment.new(0, 0)
        end
        return @cache_left = get_right_attachment(control, spacing, flush_cache).minus(get_width(control, flush_cache))
      end
      left_control = @left.attr_control
      if (!(left_control).nil?)
        if (left_control.is_disposed)
          @left.attr_control = left_control = nil
        else
          if (!(left_control.get_parent).equal?(control.get_parent))
            left_control = nil
          end
        end
      end
      if ((left_control).nil?)
        return @cache_left = @left
      end
      @is_visited = true
      left_data = left_control.get_layout_data
      left_attachment = left_data.get_left_attachment(left_control, spacing, flush_cache)
      case (@left.attr_alignment)
      when SWT::LEFT
        @cache_left = left_attachment.plus(@left.attr_offset)
      when SWT::CENTER
        right_attachment = left_data.get_right_attachment(left_control, spacing, flush_cache)
        left_width = right_attachment.minus(left_attachment)
        @cache_left = left_attachment.plus(left_width.minus(get_width(control, flush_cache)).divide(2))
      else
        right_attachment = left_data.get_right_attachment(left_control, spacing, flush_cache)
        @cache_left = right_attachment.plus(@left.attr_offset + spacing)
      end
      @is_visited = false
      return @cache_left
    end
    
    typesig { [] }
    def get_name
      string = get_class.get_name
      index = string.last_index_of(Character.new(?..ord))
      if ((index).equal?(-1))
        return string
      end
      return string.substring(index + 1, string.length)
    end
    
    typesig { [Control, ::Java::Int, ::Java::Boolean] }
    def get_right_attachment(control, spacing, flush_cache)
      if (!(@cache_right).nil?)
        return @cache_right
      end
      if (@is_visited)
        return @cache_right = FormAttachment.new(0, get_width(control, flush_cache))
      end
      if ((@right).nil?)
        if ((@left).nil?)
          return @cache_right = FormAttachment.new(0, get_width(control, flush_cache))
        end
        return @cache_right = get_left_attachment(control, spacing, flush_cache).plus(get_width(control, flush_cache))
      end
      right_control = @right.attr_control
      if (!(right_control).nil?)
        if (right_control.is_disposed)
          @right.attr_control = right_control = nil
        else
          if (!(right_control.get_parent).equal?(control.get_parent))
            right_control = nil
          end
        end
      end
      if ((right_control).nil?)
        return @cache_right = @right
      end
      @is_visited = true
      right_data = right_control.get_layout_data
      right_attachment = right_data.get_right_attachment(right_control, spacing, flush_cache)
      case (@right.attr_alignment)
      when SWT::RIGHT
        @cache_right = right_attachment.plus(@right.attr_offset)
      when SWT::CENTER
        left_attachment = right_data.get_left_attachment(right_control, spacing, flush_cache)
        right_width = right_attachment.minus(left_attachment)
        @cache_right = right_attachment.minus(right_width.minus(get_width(control, flush_cache)).divide(2))
      else
        left_attachment = right_data.get_left_attachment(right_control, spacing, flush_cache)
        @cache_right = left_attachment.plus(@right.attr_offset - spacing)
      end
      @is_visited = false
      return @cache_right
    end
    
    typesig { [Control, ::Java::Int, ::Java::Boolean] }
    def get_top_attachment(control, spacing, flush_cache)
      if (!(@cache_top).nil?)
        return @cache_top
      end
      if (@is_visited)
        return @cache_top = FormAttachment.new(0, 0)
      end
      if ((@top).nil?)
        if ((@bottom).nil?)
          return @cache_top = FormAttachment.new(0, 0)
        end
        return @cache_top = get_bottom_attachment(control, spacing, flush_cache).minus(get_height(control, flush_cache))
      end
      top_control = @top.attr_control
      if (!(top_control).nil?)
        if (top_control.is_disposed)
          @top.attr_control = top_control = nil
        else
          if (!(top_control.get_parent).equal?(control.get_parent))
            top_control = nil
          end
        end
      end
      if ((top_control).nil?)
        return @cache_top = @top
      end
      @is_visited = true
      top_data = top_control.get_layout_data
      top_attachment = top_data.get_top_attachment(top_control, spacing, flush_cache)
      case (@top.attr_alignment)
      when SWT::TOP
        @cache_top = top_attachment.plus(@top.attr_offset)
      when SWT::CENTER
        bottom_attachment = top_data.get_bottom_attachment(top_control, spacing, flush_cache)
        top_height = bottom_attachment.minus(top_attachment)
        @cache_top = top_attachment.plus(top_height.minus(get_height(control, flush_cache)).divide(2))
      else
        bottom_attachment = top_data.get_bottom_attachment(top_control, spacing, flush_cache)
        @cache_top = bottom_attachment.plus(@top.attr_offset + spacing)
      end
      @is_visited = false
      return @cache_top
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the FormData object
    def to_s
      string = RJava.cast_to_string(get_name) + " {"
      if (!(@width).equal?(SWT::DEFAULT))
        string += "width=" + RJava.cast_to_string(@width) + " "
      end
      if (!(@height).equal?(SWT::DEFAULT))
        string += "height=" + RJava.cast_to_string(@height) + " "
      end
      if (!(@left).nil?)
        string += "left=" + RJava.cast_to_string(@left) + " "
      end
      if (!(@right).nil?)
        string += "right=" + RJava.cast_to_string(@right) + " "
      end
      if (!(@top).nil?)
        string += "top=" + RJava.cast_to_string(@top) + " "
      end
      if (!(@bottom).nil?)
        string += "bottom=" + RJava.cast_to_string(@bottom) + " "
      end
      string = RJava.cast_to_string(string.trim)
      string += "}"
      return string
    end
    
    private
    alias_method :initialize__form_data, :initialize
  end
  
end
