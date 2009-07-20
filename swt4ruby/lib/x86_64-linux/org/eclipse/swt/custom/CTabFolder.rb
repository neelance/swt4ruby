require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module CTabFolderImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Accessibility
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Instances of this class implement the notebook user interface
  # metaphor.  It allows the user to select a notebook page from
  # set of pages.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>CTabItem</code>.
  # <code>Control</code> children are created and then set into a
  # tab item using <code>CTabItem#setControl</code>.
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>CLOSE, TOP, BOTTOM, FLAT, BORDER, SINGLE, MULTI</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # <dd>"CTabFolder2"</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles TOP and BOTTOM
  # may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#ctabfolder">CTabFolder, CTabItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: CustomControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class CTabFolder < CTabFolderImports.const_get :Composite
    include_class_members CTabFolderImports
    
    # marginWidth specifies the number of pixels of horizontal margin
    # that will be placed along the left and right edges of the form.
    # 
    # The default value is 0.
    attr_accessor :margin_width
    alias_method :attr_margin_width, :margin_width
    undef_method :margin_width
    alias_method :attr_margin_width=, :margin_width=
    undef_method :margin_width=
    
    # marginHeight specifies the number of pixels of vertical margin
    # that will be placed along the top and bottom edges of the form.
    # 
    # The default value is 0.
    attr_accessor :margin_height
    alias_method :attr_margin_height, :margin_height
    undef_method :margin_height
    alias_method :attr_margin_height=, :margin_height=
    undef_method :margin_height=
    
    # A multiple of the tab height that specifies the minimum width to which a tab
    # will be compressed before scrolling arrows are used to navigate the tabs.
    # 
    # NOTE This field is badly named and can not be fixed for backwards compatibility.
    # It should not be capitalized.
    # 
    # @deprecated This field is no longer used.  See setMinimumCharacters(int)
    attr_accessor :min_tab_width
    alias_method :attr_min_tab_width, :min_tab_width
    undef_method :min_tab_width
    alias_method :attr_min_tab_width=, :min_tab_width=
    undef_method :min_tab_width=
    
    class_module.module_eval {
      # Color of innermost line of drop shadow border.
      # 
      # NOTE This field is badly named and can not be fixed for backwards compatibility.
      # It should be capitalized.
      # 
      # @deprecated drop shadow border is no longer drawn in 3.0
      
      def border_inside_rgb
        defined?(@@border_inside_rgb) ? @@border_inside_rgb : @@border_inside_rgb= RGB.new(132, 130, 132)
      end
      alias_method :attr_border_inside_rgb, :border_inside_rgb
      
      def border_inside_rgb=(value)
        @@border_inside_rgb = value
      end
      alias_method :attr_border_inside_rgb=, :border_inside_rgb=
      
      # Color of middle line of drop shadow border.
      # 
      # NOTE This field is badly named and can not be fixed for backwards compatibility.
      # It should be capitalized.
      # 
      # @deprecated drop shadow border is no longer drawn in 3.0
      
      def border_middle_rgb
        defined?(@@border_middle_rgb) ? @@border_middle_rgb : @@border_middle_rgb= RGB.new(143, 141, 138)
      end
      alias_method :attr_border_middle_rgb, :border_middle_rgb
      
      def border_middle_rgb=(value)
        @@border_middle_rgb = value
      end
      alias_method :attr_border_middle_rgb=, :border_middle_rgb=
      
      # Color of outermost line of drop shadow border.
      # 
      # NOTE This field is badly named and can not be fixed for backwards compatibility.
      # It should be capitalized.
      # 
      # @deprecated drop shadow border is no longer drawn in 3.0
      
      def border_outside_rgb
        defined?(@@border_outside_rgb) ? @@border_outside_rgb : @@border_outside_rgb= RGB.new(171, 168, 165)
      end
      alias_method :attr_border_outside_rgb, :border_outside_rgb
      
      def border_outside_rgb=(value)
        @@border_outside_rgb = value
      end
      alias_method :attr_border_outside_rgb=, :border_outside_rgb=
    }
    
    # sizing, positioning
    attr_accessor :x_client
    alias_method :attr_x_client, :x_client
    undef_method :x_client
    alias_method :attr_x_client=, :x_client=
    undef_method :x_client=
    
    attr_accessor :y_client
    alias_method :attr_y_client, :y_client
    undef_method :y_client
    alias_method :attr_y_client=, :y_client=
    undef_method :y_client=
    
    attr_accessor :on_bottom
    alias_method :attr_on_bottom, :on_bottom
    undef_method :on_bottom
    alias_method :attr_on_bottom=, :on_bottom=
    undef_method :on_bottom=
    
    attr_accessor :single
    alias_method :attr_single, :single
    undef_method :single
    alias_method :attr_single=, :single=
    undef_method :single=
    
    attr_accessor :simple
    alias_method :attr_simple, :simple
    undef_method :simple
    alias_method :attr_simple=, :simple=
    undef_method :simple=
    
    attr_accessor :fixed_tab_height
    alias_method :attr_fixed_tab_height, :fixed_tab_height
    undef_method :fixed_tab_height
    alias_method :attr_fixed_tab_height=, :fixed_tab_height=
    undef_method :fixed_tab_height=
    
    attr_accessor :tab_height
    alias_method :attr_tab_height, :tab_height
    undef_method :tab_height
    alias_method :attr_tab_height=, :tab_height=
    undef_method :tab_height=
    
    attr_accessor :min_chars
    alias_method :attr_min_chars, :min_chars
    undef_method :min_chars
    alias_method :attr_min_chars=, :min_chars=
    undef_method :min_chars=
    
    # item management
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :first_index
    alias_method :attr_first_index, :first_index
    undef_method :first_index
    alias_method :attr_first_index=, :first_index=
    undef_method :first_index=
    
    # index of the left most visible tab.
    attr_accessor :selected_index
    alias_method :attr_selected_index, :selected_index
    undef_method :selected_index
    alias_method :attr_selected_index=, :selected_index=
    undef_method :selected_index=
    
    attr_accessor :priority
    alias_method :attr_priority, :priority
    undef_method :priority
    alias_method :attr_priority=, :priority=
    undef_method :priority=
    
    attr_accessor :mru
    alias_method :attr_mru, :mru
    undef_method :mru
    alias_method :attr_mru=, :mru=
    undef_method :mru=
    
    attr_accessor :listener
    alias_method :attr_listener, :listener
    undef_method :listener
    alias_method :attr_listener=, :listener=
    undef_method :listener=
    
    # External Listener management
    attr_accessor :folder_listeners
    alias_method :attr_folder_listeners, :folder_listeners
    undef_method :folder_listeners
    alias_method :attr_folder_listeners=, :folder_listeners=
    undef_method :folder_listeners=
    
    # support for deprecated listener mechanism
    attr_accessor :tab_listeners
    alias_method :attr_tab_listeners, :tab_listeners
    undef_method :tab_listeners
    alias_method :attr_tab_listeners=, :tab_listeners=
    undef_method :tab_listeners=
    
    # Selected item appearance
    attr_accessor :selection_bg_image
    alias_method :attr_selection_bg_image, :selection_bg_image
    undef_method :selection_bg_image
    alias_method :attr_selection_bg_image=, :selection_bg_image=
    undef_method :selection_bg_image=
    
    attr_accessor :selection_gradient_colors
    alias_method :attr_selection_gradient_colors, :selection_gradient_colors
    undef_method :selection_gradient_colors
    alias_method :attr_selection_gradient_colors=, :selection_gradient_colors=
    undef_method :selection_gradient_colors=
    
    attr_accessor :selection_gradient_percents
    alias_method :attr_selection_gradient_percents, :selection_gradient_percents
    undef_method :selection_gradient_percents
    alias_method :attr_selection_gradient_percents=, :selection_gradient_percents=
    undef_method :selection_gradient_percents=
    
    attr_accessor :selection_gradient_vertical
    alias_method :attr_selection_gradient_vertical, :selection_gradient_vertical
    undef_method :selection_gradient_vertical
    alias_method :attr_selection_gradient_vertical=, :selection_gradient_vertical=
    undef_method :selection_gradient_vertical=
    
    attr_accessor :selection_foreground
    alias_method :attr_selection_foreground, :selection_foreground
    undef_method :selection_foreground
    alias_method :attr_selection_foreground=, :selection_foreground=
    undef_method :selection_foreground=
    
    attr_accessor :selection_background
    alias_method :attr_selection_background, :selection_background
    undef_method :selection_background
    alias_method :attr_selection_background=, :selection_background=
    undef_method :selection_background=
    
    # selection fade end
    attr_accessor :selection_fade_start
    alias_method :attr_selection_fade_start, :selection_fade_start
    undef_method :selection_fade_start
    alias_method :attr_selection_fade_start=, :selection_fade_start=
    undef_method :selection_fade_start=
    
    attr_accessor :selection_highlight_gradient_begin
    alias_method :attr_selection_highlight_gradient_begin, :selection_highlight_gradient_begin
    undef_method :selection_highlight_gradient_begin
    alias_method :attr_selection_highlight_gradient_begin=, :selection_highlight_gradient_begin=
    undef_method :selection_highlight_gradient_begin=
    
    # null == no highlight
    # Although we are given new colours all the time to show different states (active, etc),
    # some of which may have a highlight and some not, we'd like to retain the highlight colours
    # as a cache so that we can reuse them if we're again told to show the highlight.
    # We are relying on the fact that only one tab state usually gets a highlight, so only
    # a single cache is required. If that happens to not be true, cache simply becomes less effective,
    # but we don't leak colours.
    attr_accessor :selection_highlight_gradient_colors_cache
    alias_method :attr_selection_highlight_gradient_colors_cache, :selection_highlight_gradient_colors_cache
    undef_method :selection_highlight_gradient_colors_cache
    alias_method :attr_selection_highlight_gradient_colors_cache=, :selection_highlight_gradient_colors_cache=
    undef_method :selection_highlight_gradient_colors_cache=
    
    # null is a legal value, check on access
    # Unselected item appearance
    attr_accessor :bg_image
    alias_method :attr_bg_image, :bg_image
    undef_method :bg_image
    alias_method :attr_bg_image=, :bg_image=
    undef_method :bg_image=
    
    attr_accessor :gradient_colors
    alias_method :attr_gradient_colors, :gradient_colors
    undef_method :gradient_colors
    alias_method :attr_gradient_colors=, :gradient_colors=
    undef_method :gradient_colors=
    
    attr_accessor :gradient_percents
    alias_method :attr_gradient_percents, :gradient_percents
    undef_method :gradient_percents
    alias_method :attr_gradient_percents=, :gradient_percents=
    undef_method :gradient_percents=
    
    attr_accessor :gradient_vertical
    alias_method :attr_gradient_vertical, :gradient_vertical
    undef_method :gradient_vertical
    alias_method :attr_gradient_vertical=, :gradient_vertical=
    undef_method :gradient_vertical=
    
    attr_accessor :show_unselected_image
    alias_method :attr_show_unselected_image, :show_unselected_image
    undef_method :show_unselected_image
    alias_method :attr_show_unselected_image=, :show_unselected_image=
    undef_method :show_unselected_image=
    
    class_module.module_eval {
      
      def border_color
        defined?(@@border_color) ? @@border_color : @@border_color= nil
      end
      alias_method :attr_border_color, :border_color
      
      def border_color=(value)
        @@border_color = value
      end
      alias_method :attr_border_color=, :border_color=
    }
    
    # close, min/max and chevron buttons
    attr_accessor :show_close
    alias_method :attr_show_close, :show_close
    undef_method :show_close
    alias_method :attr_show_close=, :show_close=
    undef_method :show_close=
    
    attr_accessor :show_unselected_close
    alias_method :attr_show_unselected_close, :show_unselected_close
    undef_method :show_unselected_close
    alias_method :attr_show_unselected_close=, :show_unselected_close=
    undef_method :show_unselected_close=
    
    attr_accessor :chevron_rect
    alias_method :attr_chevron_rect, :chevron_rect
    undef_method :chevron_rect
    alias_method :attr_chevron_rect=, :chevron_rect=
    undef_method :chevron_rect=
    
    attr_accessor :chevron_image_state
    alias_method :attr_chevron_image_state, :chevron_image_state
    undef_method :chevron_image_state
    alias_method :attr_chevron_image_state=, :chevron_image_state=
    undef_method :chevron_image_state=
    
    attr_accessor :show_chevron
    alias_method :attr_show_chevron, :show_chevron
    undef_method :show_chevron
    alias_method :attr_show_chevron=, :show_chevron=
    undef_method :show_chevron=
    
    attr_accessor :show_menu
    alias_method :attr_show_menu, :show_menu
    undef_method :show_menu
    alias_method :attr_show_menu=, :show_menu=
    undef_method :show_menu=
    
    attr_accessor :show_min
    alias_method :attr_show_min, :show_min
    undef_method :show_min
    alias_method :attr_show_min=, :show_min=
    undef_method :show_min=
    
    attr_accessor :min_rect
    alias_method :attr_min_rect, :min_rect
    undef_method :min_rect
    alias_method :attr_min_rect=, :min_rect=
    undef_method :min_rect=
    
    attr_accessor :minimized
    alias_method :attr_minimized, :minimized
    undef_method :minimized
    alias_method :attr_minimized=, :minimized=
    undef_method :minimized=
    
    attr_accessor :min_image_state
    alias_method :attr_min_image_state, :min_image_state
    undef_method :min_image_state
    alias_method :attr_min_image_state=, :min_image_state=
    undef_method :min_image_state=
    
    attr_accessor :show_max
    alias_method :attr_show_max, :show_max
    undef_method :show_max
    alias_method :attr_show_max=, :show_max=
    undef_method :show_max=
    
    attr_accessor :max_rect
    alias_method :attr_max_rect, :max_rect
    undef_method :max_rect
    alias_method :attr_max_rect=, :max_rect=
    undef_method :max_rect=
    
    attr_accessor :maximized
    alias_method :attr_maximized, :maximized
    undef_method :maximized
    alias_method :attr_maximized=, :maximized=
    undef_method :maximized=
    
    attr_accessor :max_image_state
    alias_method :attr_max_image_state, :max_image_state
    undef_method :max_image_state
    alias_method :attr_max_image_state=, :max_image_state=
    undef_method :max_image_state=
    
    attr_accessor :top_right
    alias_method :attr_top_right, :top_right
    undef_method :top_right
    alias_method :attr_top_right=, :top_right=
    undef_method :top_right=
    
    attr_accessor :top_right_rect
    alias_method :attr_top_right_rect, :top_right_rect
    undef_method :top_right_rect
    alias_method :attr_top_right_rect=, :top_right_rect=
    undef_method :top_right_rect=
    
    attr_accessor :top_right_alignment
    alias_method :attr_top_right_alignment, :top_right_alignment
    undef_method :top_right_alignment
    alias_method :attr_top_right_alignment=, :top_right_alignment=
    undef_method :top_right_alignment=
    
    # borders and shapes
    attr_accessor :border_left
    alias_method :attr_border_left, :border_left
    undef_method :border_left
    alias_method :attr_border_left=, :border_left=
    undef_method :border_left=
    
    attr_accessor :border_right
    alias_method :attr_border_right, :border_right
    undef_method :border_right
    alias_method :attr_border_right=, :border_right=
    undef_method :border_right=
    
    attr_accessor :border_top
    alias_method :attr_border_top, :border_top
    undef_method :border_top
    alias_method :attr_border_top=, :border_top=
    undef_method :border_top=
    
    attr_accessor :border_bottom
    alias_method :attr_border_bottom, :border_bottom
    undef_method :border_bottom
    alias_method :attr_border_bottom=, :border_bottom=
    undef_method :border_bottom=
    
    attr_accessor :highlight_margin
    alias_method :attr_highlight_margin, :highlight_margin
    undef_method :highlight_margin
    alias_method :attr_highlight_margin=, :highlight_margin=
    undef_method :highlight_margin=
    
    attr_accessor :highlight_header
    alias_method :attr_highlight_header, :highlight_header
    undef_method :highlight_header
    alias_method :attr_highlight_header=, :highlight_header=
    undef_method :highlight_header=
    
    attr_accessor :curve
    alias_method :attr_curve, :curve
    undef_method :curve
    alias_method :attr_curve=, :curve=
    undef_method :curve=
    
    attr_accessor :top_curve_highlight_start
    alias_method :attr_top_curve_highlight_start, :top_curve_highlight_start
    undef_method :top_curve_highlight_start
    alias_method :attr_top_curve_highlight_start=, :top_curve_highlight_start=
    undef_method :top_curve_highlight_start=
    
    attr_accessor :top_curve_highlight_end
    alias_method :attr_top_curve_highlight_end, :top_curve_highlight_end
    undef_method :top_curve_highlight_end
    alias_method :attr_top_curve_highlight_end=, :top_curve_highlight_end=
    undef_method :top_curve_highlight_end=
    
    attr_accessor :curve_width
    alias_method :attr_curve_width, :curve_width
    undef_method :curve_width
    alias_method :attr_curve_width=, :curve_width=
    undef_method :curve_width=
    
    attr_accessor :curve_indent
    alias_method :attr_curve_indent, :curve_indent
    undef_method :curve_indent
    alias_method :attr_curve_indent=, :curve_indent=
    undef_method :curve_indent=
    
    # when disposing CTabFolder, don't try to layout the items or
    # change the selection as each child is destroyed.
    attr_accessor :in_dispose
    alias_method :attr_in_dispose, :in_dispose
    undef_method :in_dispose
    alias_method :attr_in_dispose=, :in_dispose=
    undef_method :in_dispose=
    
    # keep track of size changes in order to redraw only affected area
    # on Resize
    attr_accessor :old_size
    alias_method :attr_old_size, :old_size
    undef_method :old_size
    alias_method :attr_old_size=, :old_size=
    undef_method :old_size=
    
    attr_accessor :old_font
    alias_method :attr_old_font, :old_font
    undef_method :old_font
    alias_method :attr_old_font=, :old_font=
    undef_method :old_font=
    
    class_module.module_eval {
      # internal constants
      const_set_lazy(:DEFAULT_WIDTH) { 64 }
      const_attr_reader  :DEFAULT_WIDTH
      
      const_set_lazy(:DEFAULT_HEIGHT) { 64 }
      const_attr_reader  :DEFAULT_HEIGHT
      
      const_set_lazy(:BUTTON_SIZE) { 18 }
      const_attr_reader  :BUTTON_SIZE
      
      const_set_lazy(:TOP_LEFT_CORNER) { Array.typed(::Java::Int).new([0, 6, 1, 5, 1, 4, 4, 1, 5, 1, 6, 0]) }
      const_attr_reader  :TOP_LEFT_CORNER
      
      # TOP_LEFT_CORNER_HILITE is laid out in reverse (ie. top to bottom)
      # so can fade in same direction as right swoop curve
      const_set_lazy(:TOP_LEFT_CORNER_HILITE) { Array.typed(::Java::Int).new([5, 2, 4, 2, 3, 3, 2, 4, 2, 5, 1, 6]) }
      const_attr_reader  :TOP_LEFT_CORNER_HILITE
      
      const_set_lazy(:TOP_RIGHT_CORNER) { Array.typed(::Java::Int).new([-6, 0, -5, 1, -4, 1, -1, 4, -1, 5, 0, 6]) }
      const_attr_reader  :TOP_RIGHT_CORNER
      
      const_set_lazy(:BOTTOM_LEFT_CORNER) { Array.typed(::Java::Int).new([0, -6, 1, -5, 1, -4, 4, -1, 5, -1, 6, 0]) }
      const_attr_reader  :BOTTOM_LEFT_CORNER
      
      const_set_lazy(:BOTTOM_RIGHT_CORNER) { Array.typed(::Java::Int).new([-6, 0, -5, -1, -4, -1, -1, -4, -1, -5, 0, -6]) }
      const_attr_reader  :BOTTOM_RIGHT_CORNER
      
      const_set_lazy(:SIMPLE_TOP_LEFT_CORNER) { Array.typed(::Java::Int).new([0, 2, 1, 1, 2, 0]) }
      const_attr_reader  :SIMPLE_TOP_LEFT_CORNER
      
      const_set_lazy(:SIMPLE_TOP_RIGHT_CORNER) { Array.typed(::Java::Int).new([-2, 0, -1, 1, 0, 2]) }
      const_attr_reader  :SIMPLE_TOP_RIGHT_CORNER
      
      const_set_lazy(:SIMPLE_BOTTOM_LEFT_CORNER) { Array.typed(::Java::Int).new([0, -2, 1, -1, 2, 0]) }
      const_attr_reader  :SIMPLE_BOTTOM_LEFT_CORNER
      
      const_set_lazy(:SIMPLE_BOTTOM_RIGHT_CORNER) { Array.typed(::Java::Int).new([-2, 0, -1, -1, 0, -2]) }
      const_attr_reader  :SIMPLE_BOTTOM_RIGHT_CORNER
      
      const_set_lazy(:SIMPLE_UNSELECTED_INNER_CORNER) { Array.typed(::Java::Int).new([0, 0]) }
      const_attr_reader  :SIMPLE_UNSELECTED_INNER_CORNER
      
      const_set_lazy(:TOP_LEFT_CORNER_BORDERLESS) { Array.typed(::Java::Int).new([0, 6, 1, 5, 1, 4, 4, 1, 5, 1, 6, 0]) }
      const_attr_reader  :TOP_LEFT_CORNER_BORDERLESS
      
      const_set_lazy(:TOP_RIGHT_CORNER_BORDERLESS) { Array.typed(::Java::Int).new([-7, 0, -6, 1, -5, 1, -2, 4, -2, 5, -1, 6]) }
      const_attr_reader  :TOP_RIGHT_CORNER_BORDERLESS
      
      const_set_lazy(:BOTTOM_LEFT_CORNER_BORDERLESS) { Array.typed(::Java::Int).new([0, -6, 1, -6, 1, -5, 2, -4, 4, -2, 5, -1, 6, -1, 6, 0]) }
      const_attr_reader  :BOTTOM_LEFT_CORNER_BORDERLESS
      
      const_set_lazy(:BOTTOM_RIGHT_CORNER_BORDERLESS) { Array.typed(::Java::Int).new([-7, 0, -7, -1, -6, -1, -5, -2, -3, -4, -2, -5, -2, -6, -1, -6]) }
      const_attr_reader  :BOTTOM_RIGHT_CORNER_BORDERLESS
      
      const_set_lazy(:SIMPLE_TOP_LEFT_CORNER_BORDERLESS) { Array.typed(::Java::Int).new([0, 2, 1, 1, 2, 0]) }
      const_attr_reader  :SIMPLE_TOP_LEFT_CORNER_BORDERLESS
      
      const_set_lazy(:SIMPLE_TOP_RIGHT_CORNER_BORDERLESS) { Array.typed(::Java::Int).new([-3, 0, -2, 1, -1, 2]) }
      const_attr_reader  :SIMPLE_TOP_RIGHT_CORNER_BORDERLESS
      
      const_set_lazy(:SIMPLE_BOTTOM_LEFT_CORNER_BORDERLESS) { Array.typed(::Java::Int).new([0, -3, 1, -2, 2, -1, 3, 0]) }
      const_attr_reader  :SIMPLE_BOTTOM_LEFT_CORNER_BORDERLESS
      
      const_set_lazy(:SIMPLE_BOTTOM_RIGHT_CORNER_BORDERLESS) { Array.typed(::Java::Int).new([-4, 0, -3, -1, -2, -2, -1, -3]) }
      const_attr_reader  :SIMPLE_BOTTOM_RIGHT_CORNER_BORDERLESS
      
      const_set_lazy(:SELECTION_FOREGROUND) { SWT::COLOR_LIST_FOREGROUND }
      const_attr_reader  :SELECTION_FOREGROUND
      
      const_set_lazy(:SELECTION_BACKGROUND) { SWT::COLOR_LIST_BACKGROUND }
      const_attr_reader  :SELECTION_BACKGROUND
      
      const_set_lazy(:BORDER1_COLOR) { SWT::COLOR_WIDGET_NORMAL_SHADOW }
      const_attr_reader  :BORDER1_COLOR
      
      const_set_lazy(:FOREGROUND) { SWT::COLOR_WIDGET_FOREGROUND }
      const_attr_reader  :FOREGROUND
      
      const_set_lazy(:BACKGROUND) { SWT::COLOR_WIDGET_BACKGROUND }
      const_attr_reader  :BACKGROUND
      
      const_set_lazy(:BUTTON_BORDER) { SWT::COLOR_WIDGET_DARK_SHADOW }
      const_attr_reader  :BUTTON_BORDER
      
      const_set_lazy(:BUTTON_FILL) { SWT::COLOR_LIST_BACKGROUND }
      const_attr_reader  :BUTTON_FILL
      
      const_set_lazy(:NONE) { 0 }
      const_attr_reader  :NONE
      
      const_set_lazy(:NORMAL) { 1 }
      const_attr_reader  :NORMAL
      
      const_set_lazy(:HOT) { 2 }
      const_attr_reader  :HOT
      
      const_set_lazy(:SELECTED) { 3 }
      const_attr_reader  :SELECTED
      
      const_set_lazy(:CLOSE_FILL) { RGB.new(252, 160, 160) }
      const_attr_reader  :CLOSE_FILL
      
      const_set_lazy(:CHEVRON_CHILD_ID) { 0 }
      const_attr_reader  :CHEVRON_CHILD_ID
      
      const_set_lazy(:MINIMIZE_CHILD_ID) { 1 }
      const_attr_reader  :MINIMIZE_CHILD_ID
      
      const_set_lazy(:MAXIMIZE_CHILD_ID) { 2 }
      const_attr_reader  :MAXIMIZE_CHILD_ID
      
      const_set_lazy(:EXTRA_CHILD_ID_COUNT) { 3 }
      const_attr_reader  :EXTRA_CHILD_ID_COUNT
    }
    
    typesig { [Composite, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # and a style value describing its behavior and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p>
    # 
    # @param parent a widget which will be the parent of the new instance (cannot be null)
    # @param style the style of widget to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    # 
    # @see SWT#TOP
    # @see SWT#BOTTOM
    # @see SWT#FLAT
    # @see SWT#BORDER
    # @see SWT#SINGLE
    # @see SWT#MULTI
    # @see #getStyle()
    def initialize(parent, style)
      @margin_width = 0
      @margin_height = 0
      @min_tab_width = 0
      @x_client = 0
      @y_client = 0
      @on_bottom = false
      @single = false
      @simple = false
      @fixed_tab_height = 0
      @tab_height = 0
      @min_chars = 0
      @items = nil
      @first_index = 0
      @selected_index = 0
      @priority = nil
      @mru = false
      @listener = nil
      @folder_listeners = nil
      @tab_listeners = nil
      @selection_bg_image = nil
      @selection_gradient_colors = nil
      @selection_gradient_percents = nil
      @selection_gradient_vertical = false
      @selection_foreground = nil
      @selection_background = nil
      @selection_fade_start = nil
      @selection_highlight_gradient_begin = nil
      @selection_highlight_gradient_colors_cache = nil
      @bg_image = nil
      @gradient_colors = nil
      @gradient_percents = nil
      @gradient_vertical = false
      @show_unselected_image = false
      @show_close = false
      @show_unselected_close = false
      @chevron_rect = nil
      @chevron_image_state = 0
      @show_chevron = false
      @show_menu = nil
      @show_min = false
      @min_rect = nil
      @minimized = false
      @min_image_state = 0
      @show_max = false
      @max_rect = nil
      @maximized = false
      @max_image_state = 0
      @top_right = nil
      @top_right_rect = nil
      @top_right_alignment = 0
      @border_left = 0
      @border_right = 0
      @border_top = 0
      @border_bottom = 0
      @highlight_margin = 0
      @highlight_header = 0
      @curve = nil
      @top_curve_highlight_start = nil
      @top_curve_highlight_end = nil
      @curve_width = 0
      @curve_indent = 0
      @in_dispose = false
      @old_size = nil
      @old_font = nil
      super(parent, check_style(parent, style))
      @margin_width = 0
      @margin_height = 0
      @min_tab_width = 4
      @on_bottom = false
      @single = false
      @simple = true
      @fixed_tab_height = SWT::DEFAULT
      @min_chars = 20
      @items = Array.typed(CTabItem).new(0) { nil }
      @first_index = -1
      @selected_index = -1
      @priority = Array.typed(::Java::Int).new(0) { 0 }
      @mru = false
      @folder_listeners = Array.typed(CTabFolder2Listener).new(0) { nil }
      @tab_listeners = Array.typed(CTabFolderListener).new(0) { nil }
      @selection_highlight_gradient_begin = nil
      @selection_highlight_gradient_colors_cache = nil
      @show_unselected_image = true
      @show_close = false
      @show_unselected_close = true
      @chevron_rect = Rectangle.new(0, 0, 0, 0)
      @chevron_image_state = NORMAL
      @show_chevron = false
      @show_min = false
      @min_rect = Rectangle.new(0, 0, 0, 0)
      @minimized = false
      @min_image_state = NORMAL
      @show_max = false
      @max_rect = Rectangle.new(0, 0, 0, 0)
      @maximized = false
      @max_image_state = NORMAL
      @top_right_rect = Rectangle.new(0, 0, 0, 0)
      @top_right_alignment = SWT::RIGHT
      @border_left = 0
      @border_right = 0
      @border_top = 0
      @border_bottom = 0
      @highlight_margin = 0
      @highlight_header = 0
      @curve_width = 0
      @curve_indent = 0
      @in_dispose = false
      Composite.instance_method(:set_layout).bind(self).call(CTabFolderLayout.new)
      style2 = Composite.instance_method(:get_style).bind(self).call
      @old_font = get_font
      @on_bottom = !((style2 & SWT::BOTTOM)).equal?(0)
      @show_close = !((style2 & SWT::CLOSE)).equal?(0)
      # showMin = (style2 & SWT.MIN) != 0; - conflicts with SWT.TOP
      # showMax = (style2 & SWT.MAX) != 0; - conflicts with SWT.BOTTOM
      @single = !((style2 & SWT::SINGLE)).equal?(0)
      @border_left = @border_right = !((style & SWT::BORDER)).equal?(0) ? 1 : 0
      @border_top = @on_bottom ? @border_left : 0
      @border_bottom = @on_bottom ? 0 : @border_left
      @highlight_header = !((style & SWT::FLAT)).equal?(0) ? 1 : 3
      @highlight_margin = !((style & SWT::FLAT)).equal?(0) ? 0 : 2
      # set up default colors
      display = get_display
      @selection_foreground = display.get_system_color(SELECTION_FOREGROUND)
      @selection_background = display.get_system_color(SELECTION_BACKGROUND)
      self.attr_border_color = display.get_system_color(BORDER1_COLOR)
      update_tab_height(false)
      init_accessible
      @listener = # Add all listeners
      Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members CTabFolder
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_type)
          when SWT::Dispose
            on_dispose(event)
          when SWT::DragDetect
            on_drag_detect(event)
          when SWT::FocusIn
            on_focus(event)
          when SWT::FocusOut
            on_focus(event)
          when SWT::KeyDown
            on_key_down(event)
          when SWT::MouseDoubleClick
            on_mouse_double_click(event)
          when SWT::MouseDown
            on_mouse(event)
          when SWT::MouseEnter
            on_mouse(event)
          when SWT::MouseExit
            on_mouse(event)
          when SWT::MouseMove
            on_mouse(event)
          when SWT::MouseUp
            on_mouse(event)
          when SWT::Paint
            on_paint(event)
          when SWT::Resize
            on_resize
          when SWT::Traverse
            on_traverse(event)
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      folder_events = Array.typed(::Java::Int).new([SWT::Dispose, SWT::DragDetect, SWT::FocusIn, SWT::FocusOut, SWT::KeyDown, SWT::MouseDoubleClick, SWT::MouseDown, SWT::MouseEnter, SWT::MouseExit, SWT::MouseMove, SWT::MouseUp, SWT::Paint, SWT::Resize, SWT::Traverse, ])
      i = 0
      while i < folder_events.attr_length
        add_listener(folder_events[i], @listener)
        ((i += 1) - 1)
      end
    end
    
    class_module.module_eval {
      typesig { [Composite, ::Java::Int] }
      def check_style(parent, style)
        mask = SWT::CLOSE | SWT::TOP | SWT::BOTTOM | SWT::FLAT | SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT | SWT::SINGLE | SWT::MULTI
        style = style & mask
        # TOP and BOTTOM are mutually exclusive.
        # TOP is the default
        if (!((style & SWT::TOP)).equal?(0))
          style = style & ~SWT::BOTTOM
        end
        # SINGLE and MULTI are mutually exclusive.
        # MULTI is the default
        if (!((style & SWT::MULTI)).equal?(0))
          style = style & ~SWT::SINGLE
        end
        # reduce the flash by not redrawing the entire area on a Resize event
        style |= SWT::NO_REDRAW_RESIZE
        # TEMPORARY CODE
        # 
        # The default background on carbon and some GTK themes is not a solid color
        # but a texture.  To show the correct default background, we must allow
        # the operating system to draw it and therefore, we can not use the
        # NO_BACKGROUND style.  The NO_BACKGROUND style is not required on platforms
        # that use double buffering which is true in both of these cases.
        platform = SWT.get_platform
        if (("carbon" == platform) || ("gtk" == platform))
          return style
        end # $NON-NLS-1$ //$NON-NLS-2$
        # TEMPORARY CODE
        # 
        # In Right To Left orientation on Windows, all GC calls that use a brush are drawing
        # offset by one pixel.  This results in some parts of the CTabFolder not drawing correctly.
        # To alleviate some of the appearance problems, allow the OS to draw the background.
        # This does not draw correctly but the result is less obviously wrong.
        if (!((style & SWT::RIGHT_TO_LEFT)).equal?(0))
          return style
        end
        if (!((parent.get_style & SWT::MIRRORED)).equal?(0) && ((style & SWT::LEFT_TO_RIGHT)).equal?(0))
          return style
        end
        return style | SWT::NO_BACKGROUND
      end
      
      typesig { [SwtGC, Region] }
      def fill_region(gc, region)
        # NOTE: region passed in to this function will be modified
        clipping = Region.new
        gc.get_clipping(clipping)
        region.intersect(clipping)
        gc.set_clipping(region)
        gc.fill_rectangle(region.get_bounds)
        gc.set_clipping(clipping)
        clipping.dispose
      end
    }
    
    typesig { [CTabFolder2Listener] }
    # Adds the listener to the collection of listeners who will
    # be notified when a tab item is closed, minimized, maximized,
    # restored, or to show the list of items that are not
    # currently visible.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @see CTabFolder2Listener
    # @see #removeCTabFolder2Listener(CTabFolder2Listener)
    # 
    # @since 3.0
    def add_ctab_folder2listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      # add to array
      new_listeners = Array.typed(CTabFolder2Listener).new(@folder_listeners.attr_length + 1) { nil }
      System.arraycopy(@folder_listeners, 0, new_listeners, 0, @folder_listeners.attr_length)
      @folder_listeners = new_listeners
      @folder_listeners[@folder_listeners.attr_length - 1] = listener
    end
    
    typesig { [CTabFolderListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when a tab item is closed.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @see CTabFolderListener
    # @see #removeCTabFolderListener(CTabFolderListener)
    # 
    # @deprecated use addCTabFolder2Listener(CTabFolder2Listener)
    def add_ctab_folder_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      # add to array
      new_tab_listeners = Array.typed(CTabFolderListener).new(@tab_listeners.attr_length + 1) { nil }
      System.arraycopy(@tab_listeners, 0, new_tab_listeners, 0, @tab_listeners.attr_length)
      @tab_listeners = new_tab_listeners
      @tab_listeners[@tab_listeners.attr_length - 1] = listener
      # display close button to be backwards compatible
      if (!@show_close)
        @show_close = true
        update_items
        redraw
      end
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the user changes the selected tab.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the user changes the receiver's selection
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #removeSelectionListener
    # @see SelectionEvent
    def add_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Selection, typed_listener)
      add_listener(SWT::DefaultSelection, typed_listener)
    end
    
    typesig { [Array.typed(::Java::Int), RGB, RGB, RGB, SwtGC] }
    def antialias(shape, line_rgb, inner_rgb, outer_rgb, gc)
      # Don't perform anti-aliasing on Mac and WPF because the platform
      # already does it.  The simple style also does not require anti-aliasing.
      if (@simple || ("carbon" == SWT.get_platform) || ("wpf" == SWT.get_platform))
        return
      end # $NON-NLS-1$
      # Don't perform anti-aliasing on low resolution displays
      if (get_display.get_depth < 15)
        return
      end
      if (!(outer_rgb).nil?)
        index = 0
        left = true
        old_y = @on_bottom ? 0 : get_size.attr_y
        outer = Array.typed(::Java::Int).new(shape.attr_length) { 0 }
        i = 0
        while i < shape.attr_length / 2
          if (left && (index + 3 < shape.attr_length))
            left = @on_bottom ? old_y <= shape[index + 3] : old_y >= shape[index + 3]
            old_y = shape[index + 1]
          end
          outer[index] = shape[((index += 1) - 1)] + (left ? -1 : +1)
          outer[index] = shape[((index += 1) - 1)]
          ((i += 1) - 1)
        end
        from = line_rgb
        to = outer_rgb
        red = from.attr_red + 2 * (to.attr_red - from.attr_red) / 3
        green = from.attr_green + 2 * (to.attr_green - from.attr_green) / 3
        blue = from.attr_blue + 2 * (to.attr_blue - from.attr_blue) / 3
        color = Color.new(get_display, red, green, blue)
        gc.set_foreground(color)
        gc.draw_polyline(outer)
        color.dispose
      end
      if (!(inner_rgb).nil?)
        inner = Array.typed(::Java::Int).new(shape.attr_length) { 0 }
        index = 0
        left = true
        old_y = @on_bottom ? 0 : get_size.attr_y
        i = 0
        while i < shape.attr_length / 2
          if (left && (index + 3 < shape.attr_length))
            left = @on_bottom ? old_y <= shape[index + 3] : old_y >= shape[index + 3]
            old_y = shape[index + 1]
          end
          inner[index] = shape[((index += 1) - 1)] + (left ? +1 : -1)
          inner[index] = shape[((index += 1) - 1)]
          ((i += 1) - 1)
        end
        from = line_rgb
        to = inner_rgb
        red = from.attr_red + 2 * (to.attr_red - from.attr_red) / 3
        green = from.attr_green + 2 * (to.attr_green - from.attr_green) / 3
        blue = from.attr_blue + 2 * (to.attr_blue - from.attr_blue) / 3
        color = Color.new(get_display, red, green, blue)
        gc.set_foreground(color)
        gc.draw_polyline(inner)
        color.dispose
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      trim_x = x - @margin_width - @highlight_margin - @border_left
      trim_width = width + @border_left + @border_right + 2 * @margin_width + 2 * @highlight_margin
      if (@minimized)
        trim_y = @on_bottom ? y - @border_top : y - @highlight_header - @tab_height - @border_top
        trim_height = @border_top + @border_bottom + @tab_height + @highlight_header
        return Rectangle.new(trim_x, trim_y, trim_width, trim_height)
      else
        trim_y = @on_bottom ? y - @margin_height - @highlight_margin - @border_top : y - @margin_height - @highlight_header - @tab_height - @border_top
        trim_height = height + @border_top + @border_bottom + 2 * @margin_height + @tab_height + @highlight_header + @highlight_margin
        return Rectangle.new(trim_x, trim_y, trim_width, trim_height)
      end
    end
    
    typesig { [CTabItem, ::Java::Int] }
    def create_item(item, index)
      if (0 > index || index > get_item_count)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      item.attr_parent = self
      new_items = Array.typed(CTabItem).new(@items.attr_length + 1) { nil }
      System.arraycopy(@items, 0, new_items, 0, index)
      new_items[index] = item
      System.arraycopy(@items, index, new_items, index + 1, @items.attr_length - index)
      @items = new_items
      if (@selected_index >= index)
        ((@selected_index += 1) - 1)
      end
      new_priority = Array.typed(::Java::Int).new(@priority.attr_length + 1) { 0 }
      next_ = 0
      priority_index = @priority.attr_length
      i = 0
      while i < @priority.attr_length
        if (!@mru && (@priority[i]).equal?(index))
          priority_index = ((next_ += 1) - 1)
        end
        new_priority[((next_ += 1) - 1)] = @priority[i] >= index ? @priority[i] + 1 : @priority[i]
        ((i += 1) - 1)
      end
      new_priority[priority_index] = index
      @priority = new_priority
      if ((@items.attr_length).equal?(1))
        if (!update_tab_height(false))
          update_items
        end
        redraw
      else
        update_items
        redraw_tabs
      end
    end
    
    typesig { [CTabItem] }
    def destroy_item(item)
      if (@in_dispose)
        return
      end
      index = index_of(item)
      if ((index).equal?(-1))
        return
      end
      if ((@items.attr_length).equal?(1))
        @items = Array.typed(CTabItem).new(0) { nil }
        @priority = Array.typed(::Java::Int).new(0) { 0 }
        @first_index = -1
        @selected_index = -1
        control = item.get_control
        if (!(control).nil? && !control.is_disposed)
          control.set_visible(false)
        end
        set_tool_tip_text(nil)
        set_button_bounds
        redraw
        return
      end
      new_items = Array.typed(CTabItem).new(@items.attr_length - 1) { nil }
      System.arraycopy(@items, 0, new_items, 0, index)
      System.arraycopy(@items, index + 1, new_items, index, @items.attr_length - index - 1)
      @items = new_items
      new_priority = Array.typed(::Java::Int).new(@priority.attr_length - 1) { 0 }
      next_ = 0
      i = 0
      while i < @priority.attr_length
        if ((@priority[i]).equal?(index))
          ((i += 1) - 1)
          next
        end
        new_priority[((next_ += 1) - 1)] = @priority[i] > index ? @priority[i] - 1 : @priority[i]
        ((i += 1) - 1)
      end
      @priority = new_priority
      # move the selection if this item is selected
      if ((@selected_index).equal?(index))
        control = item.get_control
        @selected_index = -1
        next_selection = @mru ? @priority[0] : Math.max(0, index - 1)
        set_selection(next_selection, true)
        if (!(control).nil? && !control.is_disposed)
          control.set_visible(false)
        end
      else
        if (@selected_index > index)
          ((@selected_index -= 1) + 1)
        end
      end
      update_items
      redraw_tabs
    end
    
    typesig { [SwtGC, Array.typed(::Java::Int), ::Java::Boolean] }
    def draw_background(gc, shape, selected)
      default_background = selected ? @selection_background : get_background
      image = selected ? @selection_bg_image : @bg_image
      colors = selected ? @selection_gradient_colors : @gradient_colors
      percents = selected ? @selection_gradient_percents : @gradient_percents
      vertical = selected ? @selection_gradient_vertical : @gradient_vertical
      size = get_size
      width = size.attr_x
      height = @tab_height + @highlight_header
      x = 0
      if (@border_left > 0)
        x += 1
        width -= 2
      end
      y = @on_bottom ? size.attr_y - @border_bottom - height : @border_top
      draw_background(gc, shape, x, y, width, height, default_background, image, colors, percents, vertical)
    end
    
    typesig { [SwtGC, Array.typed(::Java::Int), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Color, Image, Array.typed(Color), Array.typed(::Java::Int), ::Java::Boolean] }
    def draw_background(gc, shape, x, y, width, height, default_background, image, colors, percents, vertical)
      clipping = Region.new
      gc.get_clipping(clipping)
      region = Region.new
      region.add(shape)
      region.intersect(clipping)
      gc.set_clipping(region)
      if (!(image).nil?)
        # draw the background image in shape
        gc.set_background(default_background)
        gc.fill_rectangle(x, y, width, height)
        image_rect = image.get_bounds
        gc.draw_image(image, image_rect.attr_x, image_rect.attr_y, image_rect.attr_width, image_rect.attr_height, x, y, width, height)
      else
        if (!(colors).nil?)
          # draw gradient
          if ((colors.attr_length).equal?(1))
            background = !(colors[0]).nil? ? colors[0] : default_background
            gc.set_background(background)
            gc.fill_rectangle(x, y, width, height)
          else
            if (vertical)
              if (@on_bottom)
                pos = 0
                if (percents[percents.attr_length - 1] < 100)
                  pos = percents[percents.attr_length - 1] * height / 100
                  gc.set_background(default_background)
                  gc.fill_rectangle(x, y, width, pos)
                end
                last_color = colors[colors.attr_length - 1]
                if ((last_color).nil?)
                  last_color = default_background
                end
                i = percents.attr_length - 1
                while i >= 0
                  gc.set_foreground(last_color)
                  last_color = colors[i]
                  if ((last_color).nil?)
                    last_color = default_background
                  end
                  gc.set_background(last_color)
                  gradient_height = percents[i] * height / 100
                  gc.fill_gradient_rectangle(x, y + pos, width, gradient_height, true)
                  pos += gradient_height
                  ((i -= 1) + 1)
                end
              else
                last_color = colors[0]
                if ((last_color).nil?)
                  last_color = default_background
                end
                pos = 0
                i = 0
                while i < percents.attr_length
                  gc.set_foreground(last_color)
                  last_color = colors[i + 1]
                  if ((last_color).nil?)
                    last_color = default_background
                  end
                  gc.set_background(last_color)
                  gradient_height = percents[i] * height / 100
                  gc.fill_gradient_rectangle(x, y + pos, width, gradient_height, true)
                  pos += gradient_height
                  ((i += 1) - 1)
                end
                if (pos < height)
                  gc.set_background(default_background)
                  gc.fill_rectangle(x, pos, width, height - pos + 1)
                end
              end
            else
              # horizontal gradient
              y = 0
              height = get_size.attr_y
              last_color = colors[0]
              if ((last_color).nil?)
                last_color = default_background
              end
              pos = 0
              i = 0
              while i < percents.attr_length
                gc.set_foreground(last_color)
                last_color = colors[i + 1]
                if ((last_color).nil?)
                  last_color = default_background
                end
                gc.set_background(last_color)
                gradient_width = (percents[i] * width / 100) - pos
                gc.fill_gradient_rectangle(x + pos, y, gradient_width, height, false)
                pos += gradient_width
                (i += 1)
              end
              if (pos < width)
                gc.set_background(default_background)
                gc.fill_rectangle(x + pos, y, width - pos, height)
              end
            end
          end
        else
          # draw a solid background using default background in shape
          if (!((get_style & SWT::NO_BACKGROUND)).equal?(0) || !(default_background == get_background))
            gc.set_background(default_background)
            gc.fill_rectangle(x, y, width, height)
          end
        end
      end
      gc.set_clipping(clipping)
      clipping.dispose
      region.dispose
    end
    
    typesig { [Event] }
    def draw_body(event)
      gc = event.attr_gc
      size = get_size
      # fill in body
      if (!@minimized)
        width = size.attr_x - @border_left - @border_right - 2 * @highlight_margin
        height = size.attr_y - @border_top - @border_bottom - @tab_height - @highlight_header - @highlight_margin
        # Draw highlight margin
        if (@highlight_margin > 0)
          shape = nil
          if (@on_bottom)
            x1 = @border_left
            y1 = @border_top
            x2 = size.attr_x - @border_right
            y2 = size.attr_y - @border_bottom - @tab_height - @highlight_header
            shape = Array.typed(::Java::Int).new([x1, y1, x2, y1, x2, y2, x2 - @highlight_margin, y2, x2 - @highlight_margin, y1 + @highlight_margin, x1 + @highlight_margin, y1 + @highlight_margin, x1 + @highlight_margin, y2, x1, y2])
          else
            x1 = @border_left
            y1 = @border_top + @tab_height + @highlight_header
            x2 = size.attr_x - @border_right
            y2 = size.attr_y - @border_bottom
            shape = Array.typed(::Java::Int).new([x1, y1, x1 + @highlight_margin, y1, x1 + @highlight_margin, y2 - @highlight_margin, x2 - @highlight_margin, y2 - @highlight_margin, x2 - @highlight_margin, y1, x2, y1, x2, y2, x1, y2])
          end
          # If horizontal gradient, show gradient across the whole area
          if (!(@selected_index).equal?(-1) && !(@selection_gradient_colors).nil? && @selection_gradient_colors.attr_length > 1 && !@selection_gradient_vertical)
            draw_background(gc, shape, true)
          else
            if ((@selected_index).equal?(-1) && !(@gradient_colors).nil? && @gradient_colors.attr_length > 1 && !@gradient_vertical)
              draw_background(gc, shape, false)
            else
              gc.set_background((@selected_index).equal?(-1) ? get_background : @selection_background)
              gc.fill_polygon(shape)
            end
          end
        end
        # Draw client area
        if (!((get_style & SWT::NO_BACKGROUND)).equal?(0))
          gc.set_background(get_background)
          gc.fill_rectangle(@x_client - @margin_width, @y_client - @margin_height, width, height)
        end
      else
        if (!((get_style & SWT::NO_BACKGROUND)).equal?(0))
          height = @border_top + @tab_height + @highlight_header + @border_bottom
          if (size.attr_y > height)
            gc.set_background(get_parent.get_background)
            gc.fill_rectangle(0, height, size.attr_x, size.attr_y - height)
          end
        end
      end
      # draw 1 pixel border around outside
      if (@border_left > 0)
        gc.set_foreground(self.attr_border_color)
        x1 = @border_left - 1
        x2 = size.attr_x - @border_right
        y1 = @on_bottom ? @border_top - 1 : @border_top + @tab_height
        y2 = @on_bottom ? size.attr_y - @tab_height - @border_bottom - 1 : size.attr_y - @border_bottom
        gc.draw_line(x1, y1, x1, y2) # left
        gc.draw_line(x2, y1, x2, y2) # right
        if (@on_bottom)
          gc.draw_line(x1, y1, x2, y1) # top
        else
          gc.draw_line(x1, y2, x2, y2) # bottom
        end
      end
    end
    
    typesig { [SwtGC] }
    def draw_chevron(gc)
      if ((@chevron_rect.attr_width).equal?(0) || (@chevron_rect.attr_height).equal?(0))
        return
      end
      # draw chevron (10x7)
      display = get_display
      dpi = display.get_dpi
      font_height = 72 * 10 / dpi.attr_y
      fd = get_font.get_font_data[0]
      fd.set_height(font_height)
      f = Font.new(display, fd)
      f_height = f.get_font_data[0].get_height * dpi.attr_y / 72
      indent = Math.max(2, (@chevron_rect.attr_height - f_height - 4) / 2)
      x = @chevron_rect.attr_x + 2
      y = @chevron_rect.attr_y + indent
      count = 0
      if (@single)
        count = (@selected_index).equal?(-1) ? @items.attr_length : @items.attr_length - 1
      else
        show_count = 0
        while (show_count < @priority.attr_length && @items[@priority[show_count]].attr_showing)
          ((show_count += 1) - 1)
        end
        count = @items.attr_length - show_count
      end
      chevron_string = count > 99 ? "99+" : String.value_of(count) # $NON-NLS-1$
      case (@chevron_image_state)
      when NORMAL
        chevron_border = @single ? get_selection_foreground : get_foreground
        gc.set_foreground(chevron_border)
        gc.set_font(f)
        gc.draw_line(x, y, x + 2, y + 2)
        gc.draw_line(x + 2, y + 2, x, y + 4)
        gc.draw_line(x + 1, y, x + 3, y + 2)
        gc.draw_line(x + 3, y + 2, x + 1, y + 4)
        gc.draw_line(x + 4, y, x + 6, y + 2)
        gc.draw_line(x + 6, y + 2, x + 5, y + 4)
        gc.draw_line(x + 5, y, x + 7, y + 2)
        gc.draw_line(x + 7, y + 2, x + 4, y + 4)
        gc.draw_string(chevron_string, x + 7, y + 3, true)
      when HOT
        gc.set_foreground(display.get_system_color(BUTTON_BORDER))
        gc.set_background(display.get_system_color(BUTTON_FILL))
        gc.set_font(f)
        gc.fill_round_rectangle(@chevron_rect.attr_x, @chevron_rect.attr_y, @chevron_rect.attr_width, @chevron_rect.attr_height, 6, 6)
        gc.draw_round_rectangle(@chevron_rect.attr_x, @chevron_rect.attr_y, @chevron_rect.attr_width - 1, @chevron_rect.attr_height - 1, 6, 6)
        gc.draw_line(x, y, x + 2, y + 2)
        gc.draw_line(x + 2, y + 2, x, y + 4)
        gc.draw_line(x + 1, y, x + 3, y + 2)
        gc.draw_line(x + 3, y + 2, x + 1, y + 4)
        gc.draw_line(x + 4, y, x + 6, y + 2)
        gc.draw_line(x + 6, y + 2, x + 5, y + 4)
        gc.draw_line(x + 5, y, x + 7, y + 2)
        gc.draw_line(x + 7, y + 2, x + 4, y + 4)
        gc.draw_string(chevron_string, x + 7, y + 3, true)
      when SELECTED
        gc.set_foreground(display.get_system_color(BUTTON_BORDER))
        gc.set_background(display.get_system_color(BUTTON_FILL))
        gc.set_font(f)
        gc.fill_round_rectangle(@chevron_rect.attr_x, @chevron_rect.attr_y, @chevron_rect.attr_width, @chevron_rect.attr_height, 6, 6)
        gc.draw_round_rectangle(@chevron_rect.attr_x, @chevron_rect.attr_y, @chevron_rect.attr_width - 1, @chevron_rect.attr_height - 1, 6, 6)
        gc.draw_line(x + 1, y + 1, x + 3, y + 3)
        gc.draw_line(x + 3, y + 3, x + 1, y + 5)
        gc.draw_line(x + 2, y + 1, x + 4, y + 3)
        gc.draw_line(x + 4, y + 3, x + 2, y + 5)
        gc.draw_line(x + 5, y + 1, x + 7, y + 3)
        gc.draw_line(x + 7, y + 3, x + 6, y + 5)
        gc.draw_line(x + 6, y + 1, x + 8, y + 3)
        gc.draw_line(x + 8, y + 3, x + 5, y + 5)
        gc.draw_string(chevron_string, x + 8, y + 4, true)
      end
      f.dispose
    end
    
    typesig { [SwtGC] }
    def draw_maximize(gc)
      if ((@max_rect.attr_width).equal?(0) || (@max_rect.attr_height).equal?(0))
        return
      end
      display = get_display
      # 5x4 or 7x9
      x = @max_rect.attr_x + (CTabFolder::BUTTON_SIZE - 10) / 2
      y = @max_rect.attr_y + 3
      gc.set_foreground(display.get_system_color(BUTTON_BORDER))
      gc.set_background(display.get_system_color(BUTTON_FILL))
      case (@max_image_state)
      when NORMAL
        if (!@maximized)
          gc.fill_rectangle(x, y, 9, 9)
          gc.draw_rectangle(x, y, 9, 9)
          gc.draw_line(x + 1, y + 2, x + 8, y + 2)
        else
          gc.fill_rectangle(x, y + 3, 5, 4)
          gc.fill_rectangle(x + 2, y, 5, 4)
          gc.draw_rectangle(x, y + 3, 5, 4)
          gc.draw_rectangle(x + 2, y, 5, 4)
          gc.draw_line(x + 3, y + 1, x + 6, y + 1)
          gc.draw_line(x + 1, y + 4, x + 4, y + 4)
        end
      when HOT
        gc.fill_round_rectangle(@max_rect.attr_x, @max_rect.attr_y, @max_rect.attr_width, @max_rect.attr_height, 6, 6)
        gc.draw_round_rectangle(@max_rect.attr_x, @max_rect.attr_y, @max_rect.attr_width - 1, @max_rect.attr_height - 1, 6, 6)
        if (!@maximized)
          gc.fill_rectangle(x, y, 9, 9)
          gc.draw_rectangle(x, y, 9, 9)
          gc.draw_line(x + 1, y + 2, x + 8, y + 2)
        else
          gc.fill_rectangle(x, y + 3, 5, 4)
          gc.fill_rectangle(x + 2, y, 5, 4)
          gc.draw_rectangle(x, y + 3, 5, 4)
          gc.draw_rectangle(x + 2, y, 5, 4)
          gc.draw_line(x + 3, y + 1, x + 6, y + 1)
          gc.draw_line(x + 1, y + 4, x + 4, y + 4)
        end
      when SELECTED
        gc.fill_round_rectangle(@max_rect.attr_x, @max_rect.attr_y, @max_rect.attr_width, @max_rect.attr_height, 6, 6)
        gc.draw_round_rectangle(@max_rect.attr_x, @max_rect.attr_y, @max_rect.attr_width - 1, @max_rect.attr_height - 1, 6, 6)
        if (!@maximized)
          gc.fill_rectangle(x + 1, y + 1, 9, 9)
          gc.draw_rectangle(x + 1, y + 1, 9, 9)
          gc.draw_line(x + 2, y + 3, x + 9, y + 3)
        else
          gc.fill_rectangle(x + 1, y + 4, 5, 4)
          gc.fill_rectangle(x + 3, y + 1, 5, 4)
          gc.draw_rectangle(x + 1, y + 4, 5, 4)
          gc.draw_rectangle(x + 3, y + 1, 5, 4)
          gc.draw_line(x + 4, y + 2, x + 7, y + 2)
          gc.draw_line(x + 2, y + 5, x + 5, y + 5)
        end
      end
    end
    
    typesig { [SwtGC] }
    def draw_minimize(gc)
      if ((@min_rect.attr_width).equal?(0) || (@min_rect.attr_height).equal?(0))
        return
      end
      display = get_display
      # 5x4 or 9x3
      x = @min_rect.attr_x + (BUTTON_SIZE - 10) / 2
      y = @min_rect.attr_y + 3
      gc.set_foreground(display.get_system_color(BUTTON_BORDER))
      gc.set_background(display.get_system_color(BUTTON_FILL))
      case (@min_image_state)
      when NORMAL
        if (!@minimized)
          gc.fill_rectangle(x, y, 9, 3)
          gc.draw_rectangle(x, y, 9, 3)
        else
          gc.fill_rectangle(x, y + 3, 5, 4)
          gc.fill_rectangle(x + 2, y, 5, 4)
          gc.draw_rectangle(x, y + 3, 5, 4)
          gc.draw_rectangle(x + 2, y, 5, 4)
          gc.draw_line(x + 3, y + 1, x + 6, y + 1)
          gc.draw_line(x + 1, y + 4, x + 4, y + 4)
        end
      when HOT
        gc.fill_round_rectangle(@min_rect.attr_x, @min_rect.attr_y, @min_rect.attr_width, @min_rect.attr_height, 6, 6)
        gc.draw_round_rectangle(@min_rect.attr_x, @min_rect.attr_y, @min_rect.attr_width - 1, @min_rect.attr_height - 1, 6, 6)
        if (!@minimized)
          gc.fill_rectangle(x, y, 9, 3)
          gc.draw_rectangle(x, y, 9, 3)
        else
          gc.fill_rectangle(x, y + 3, 5, 4)
          gc.fill_rectangle(x + 2, y, 5, 4)
          gc.draw_rectangle(x, y + 3, 5, 4)
          gc.draw_rectangle(x + 2, y, 5, 4)
          gc.draw_line(x + 3, y + 1, x + 6, y + 1)
          gc.draw_line(x + 1, y + 4, x + 4, y + 4)
        end
      when SELECTED
        gc.fill_round_rectangle(@min_rect.attr_x, @min_rect.attr_y, @min_rect.attr_width, @min_rect.attr_height, 6, 6)
        gc.draw_round_rectangle(@min_rect.attr_x, @min_rect.attr_y, @min_rect.attr_width - 1, @min_rect.attr_height - 1, 6, 6)
        if (!@minimized)
          gc.fill_rectangle(x + 1, y + 1, 9, 3)
          gc.draw_rectangle(x + 1, y + 1, 9, 3)
        else
          gc.fill_rectangle(x + 1, y + 4, 5, 4)
          gc.fill_rectangle(x + 3, y + 1, 5, 4)
          gc.draw_rectangle(x + 1, y + 4, 5, 4)
          gc.draw_rectangle(x + 3, y + 1, 5, 4)
          gc.draw_line(x + 4, y + 2, x + 7, y + 2)
          gc.draw_line(x + 2, y + 5, x + 5, y + 5)
        end
      end
    end
    
    typesig { [Event] }
    def draw_tab_area(event)
      gc = event.attr_gc
      size = get_size
      shape = nil
      if ((@tab_height).equal?(0))
        style = get_style
        if (!((style & SWT::FLAT)).equal?(0) && ((style & SWT::BORDER)).equal?(0))
          return
        end
        x1 = @border_left - 1
        x2 = size.attr_x - @border_right
        y1 = @on_bottom ? size.attr_y - @border_bottom - @highlight_header - 1 : @border_top + @highlight_header
        y2 = @on_bottom ? size.attr_y - @border_bottom : @border_top
        if (@border_left > 0 && @on_bottom)
          y2 -= 1
        end
        shape = Array.typed(::Java::Int).new([x1, y1, x1, y2, x2, y2, x2, y1])
        # If horizontal gradient, show gradient across the whole area
        if (!(@selected_index).equal?(-1) && !(@selection_gradient_colors).nil? && @selection_gradient_colors.attr_length > 1 && !@selection_gradient_vertical)
          draw_background(gc, shape, true)
        else
          if ((@selected_index).equal?(-1) && !(@gradient_colors).nil? && @gradient_colors.attr_length > 1 && !@gradient_vertical)
            draw_background(gc, shape, false)
          else
            gc.set_background((@selected_index).equal?(-1) ? get_background : @selection_background)
            gc.fill_polygon(shape)
          end
        end
        # draw 1 pixel border
        if (@border_left > 0)
          gc.set_foreground(self.attr_border_color)
          gc.draw_polyline(shape)
        end
        return
      end
      x = Math.max(0, @border_left - 1)
      y = @on_bottom ? size.attr_y - @border_bottom - @tab_height : @border_top
      width = size.attr_x - @border_left - @border_right + 1
      height = @tab_height - 1
      # Draw Tab Header
      if (@on_bottom)
        left = nil
        right = nil
        if (!((get_style & SWT::BORDER)).equal?(0))
          left = @simple ? SIMPLE_BOTTOM_LEFT_CORNER : BOTTOM_LEFT_CORNER
          right = @simple ? SIMPLE_BOTTOM_RIGHT_CORNER : BOTTOM_RIGHT_CORNER
        else
          left = @simple ? SIMPLE_BOTTOM_LEFT_CORNER_BORDERLESS : BOTTOM_LEFT_CORNER_BORDERLESS
          right = @simple ? SIMPLE_BOTTOM_RIGHT_CORNER_BORDERLESS : BOTTOM_RIGHT_CORNER_BORDERLESS
        end
        shape = Array.typed(::Java::Int).new(left.attr_length + right.attr_length + 4) { 0 }
        index = 0
        shape[((index += 1) - 1)] = x
        shape[((index += 1) - 1)] = y - @highlight_header
        i = 0
        while i < left.attr_length / 2
          shape[((index += 1) - 1)] = x + left[2 * i]
          shape[((index += 1) - 1)] = y + height + left[2 * i + 1]
          if ((@border_left).equal?(0))
            shape[index - 1] += 1
          end
          ((i += 1) - 1)
        end
        i_ = 0
        while i_ < right.attr_length / 2
          shape[((index += 1) - 1)] = x + width + right[2 * i_]
          shape[((index += 1) - 1)] = y + height + right[2 * i_ + 1]
          if ((@border_left).equal?(0))
            shape[index - 1] += 1
          end
          ((i_ += 1) - 1)
        end
        shape[((index += 1) - 1)] = x + width
        shape[((index += 1) - 1)] = y - @highlight_header
      else
        left = nil
        right = nil
        if (!((get_style & SWT::BORDER)).equal?(0))
          left = @simple ? SIMPLE_TOP_LEFT_CORNER : TOP_LEFT_CORNER
          right = @simple ? SIMPLE_TOP_RIGHT_CORNER : TOP_RIGHT_CORNER
        else
          left = @simple ? SIMPLE_TOP_LEFT_CORNER_BORDERLESS : TOP_LEFT_CORNER_BORDERLESS
          right = @simple ? SIMPLE_TOP_RIGHT_CORNER_BORDERLESS : TOP_RIGHT_CORNER_BORDERLESS
        end
        shape = Array.typed(::Java::Int).new(left.attr_length + right.attr_length + 4) { 0 }
        index = 0
        shape[((index += 1) - 1)] = x
        shape[((index += 1) - 1)] = y + height + @highlight_header + 1
        i = 0
        while i < left.attr_length / 2
          shape[((index += 1) - 1)] = x + left[2 * i]
          shape[((index += 1) - 1)] = y + left[2 * i + 1]
          ((i += 1) - 1)
        end
        i_ = 0
        while i_ < right.attr_length / 2
          shape[((index += 1) - 1)] = x + width + right[2 * i_]
          shape[((index += 1) - 1)] = y + right[2 * i_ + 1]
          ((i_ += 1) - 1)
        end
        shape[((index += 1) - 1)] = x + width
        shape[((index += 1) - 1)] = y + height + @highlight_header + 1
      end
      # Fill in background
      bk_selected = @single && !(@selected_index).equal?(-1)
      draw_background(gc, shape, bk_selected)
      # Fill in parent background for non-rectangular shape
      r = Region.new
      r.add(Rectangle.new(x, y, width + 1, height + 1))
      r.subtract(shape)
      gc.set_background(get_parent.get_background)
      fill_region(gc, r)
      r.dispose
      # Draw the unselected tabs.
      if (!@single)
        i = 0
        while i < @items.attr_length
          if (!(i).equal?(@selected_index) && event.get_bounds.intersects(@items[i].get_bounds))
            @items[i].on_paint(gc, false)
          end
          ((i += 1) - 1)
        end
      end
      # Draw selected tab
      if (!(@selected_index).equal?(-1))
        item = @items[@selected_index]
        item.on_paint(gc, true)
      else
        # if no selected tab - draw line across bottom of all tabs
        x1 = @border_left
        y1 = (@on_bottom) ? size.attr_y - @border_bottom - @tab_height - 1 : @border_top + @tab_height
        x2 = size.attr_x - @border_right
        gc.set_foreground(self.attr_border_color)
        gc.draw_line(x1, y1, x2, y1)
      end
      # Draw Buttons
      draw_chevron(gc)
      draw_minimize(gc)
      draw_maximize(gc)
      # Draw border line
      if (@border_left > 0)
        outside = get_parent.get_background.get_rgb
        antialias(shape, self.attr_border_color.get_rgb, nil, outside, gc)
        gc.set_foreground(self.attr_border_color)
        gc.draw_polyline(shape)
      end
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver's border is visible.
    # 
    # @return the receiver's border visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_border_visible
      check_widget
      return (@border_left).equal?(1)
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      if (@minimized)
        return Rectangle.new(@x_client, @y_client, 0, 0)
      end
      size = get_size
      width = size.attr_x - @border_left - @border_right - 2 * @margin_width - 2 * @highlight_margin
      height = size.attr_y - @border_top - @border_bottom - 2 * @margin_height - @highlight_margin - @highlight_header
      height -= @tab_height
      return Rectangle.new(@x_client, @y_client, width, height)
    end
    
    typesig { [::Java::Int] }
    # Return the tab that is located at the specified index.
    # 
    # @param index the index of the tab item
    # @return the item at the specified index
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is out of range</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def get_item(index)
      # checkWidget();
      if (index < 0 || index >= @items.attr_length)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      return @items[index]
    end
    
    typesig { [Point] }
    # Gets the item at a point in the widget.
    # 
    # @param pt the point in coordinates relative to the CTabFolder
    # @return the item at a point or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def get_item(pt)
      # checkWidget();
      if ((@items.attr_length).equal?(0))
        return nil
      end
      size = get_size
      if (size.attr_x <= @border_left + @border_right)
        return nil
      end
      if (@show_chevron && @chevron_rect.contains(pt))
        return nil
      end
      i = 0
      while i < @priority.attr_length
        item = @items[@priority[i]]
        rect = item.get_bounds
        if (rect.contains(pt))
          return item
        end
        ((i += 1) - 1)
      end
      return nil
    end
    
    typesig { [] }
    # Return the number of tabs in the folder.
    # 
    # @return the number of tabs in the folder
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def get_item_count
      # checkWidget();
      return @items.attr_length
    end
    
    typesig { [] }
    # Return the tab items.
    # 
    # @return the tab items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def get_items
      # checkWidget();
      tab_items = Array.typed(CTabItem).new(@items.attr_length) { nil }
      System.arraycopy(@items, 0, tab_items, 0, @items.attr_length)
      return tab_items
    end
    
    typesig { [String] }
    # Return the lowercase of the first non-'&' character following
    # an '&' character in the given string. If there are no '&'
    # characters in the given string, return '\0'.
    def __find_mnemonic(string)
      if ((string).nil?)
        return Character.new(?\0.ord)
      end
      index = 0
      length_ = string.length
      begin
        while (index < length_ && !(string.char_at(index)).equal?(Character.new(?&.ord)))
          ((index += 1) - 1)
        end
        if ((index += 1) >= length_)
          return Character.new(?\0.ord)
        end
        if (!(string.char_at(index)).equal?(Character.new(?&.ord)))
          return Character.to_lower_case(string.char_at(index))
        end
        ((index += 1) - 1)
      end while (index < length_)
      return Character.new(?\0.ord)
    end
    
    typesig { [String] }
    def strip_mnemonic(string)
      index = 0
      length_ = string.length
      begin
        while ((index < length_) && (!(string.char_at(index)).equal?(Character.new(?&.ord))))
          ((index += 1) - 1)
        end
        if ((index += 1) >= length_)
          return string
        end
        if (!(string.char_at(index)).equal?(Character.new(?&.ord)))
          return string.substring(0, index - 1) + string.substring(index, length_)
        end
        ((index += 1) - 1)
      end while (index < length_)
      return string
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is minimized.
    # 
    # @return the receiver's minimized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_minimized
      check_widget
      return @minimized
    end
    
    typesig { [] }
    # Returns <code>true</code> if the minimize button
    # is visible.
    # 
    # @return the visibility of the minimized button
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_minimize_visible
      check_widget
      return @show_min
    end
    
    typesig { [] }
    # Returns the number of characters that will
    # appear in a fully compressed tab.
    # 
    # @return number of characters that will appear in a fully compressed tab
    # 
    # @since 3.0
    def get_minimum_characters
      check_widget
      return @min_chars
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is maximized.
    # <p>
    # 
    # @return the receiver's maximized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_maximized
      check_widget
      return @maximized
    end
    
    typesig { [] }
    # Returns <code>true</code> if the maximize button
    # is visible.
    # 
    # @return the visibility of the maximized button
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_maximize_visible
      check_widget
      return @show_max
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver displays most
    # recently used tabs and <code>false</code> otherwise.
    # <p>
    # When there is not enough horizontal space to show all the tabs,
    # by default, tabs are shown sequentially from left to right in
    # order of their index.  When the MRU visibility is turned on,
    # the tabs that are visible will be the tabs most recently selected.
    # Tabs will still maintain their left to right order based on index
    # but only the most recently selected tabs are visible.
    # <p>
    # For example, consider a CTabFolder that contains "Tab 1", "Tab 2",
    # "Tab 3" and "Tab 4" (in order by index).  The user selects
    # "Tab 1" and then "Tab 3".  If the CTabFolder is now
    # compressed so that only two tabs are visible, by default,
    # "Tab 2" and "Tab 3" will be shown ("Tab 3" since it is currently
    # selected and "Tab 2" because it is the previous item in index order).
    # If MRU visibility is enabled, the two visible tabs will be "Tab 1"
    # and "Tab 3" (in that order from left to right).</p>
    # 
    # @return the receiver's header's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def get_mruvisible
      check_widget
      return @mru
    end
    
    typesig { [] }
    def get_right_item_edge
      x = get_size.attr_x - @border_right - 3
      if (@show_min)
        x -= BUTTON_SIZE
      end
      if (@show_max)
        x -= BUTTON_SIZE
      end
      if (@show_chevron)
        x -= 3 * BUTTON_SIZE / 2
      end
      if (!(@top_right).nil? && !(@top_right_alignment).equal?(SWT::FILL))
        right_size = @top_right.compute_size(SWT::DEFAULT, SWT::DEFAULT)
        x -= right_size.attr_x + 3
      end
      return Math.max(0, x)
    end
    
    typesig { [] }
    # Return the selected tab item, or null if there is no selection.
    # 
    # @return the selected tab item, or null if none has been selected
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def get_selection
      # checkWidget();
      if ((@selected_index).equal?(-1))
        return nil
      end
      return @items[@selected_index]
    end
    
    typesig { [] }
    # Returns the receiver's selection background color.
    # 
    # @return the selection background color of the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_selection_background
      check_widget
      return @selection_background
    end
    
    typesig { [] }
    # Returns the receiver's selection foreground color.
    # 
    # @return the selection foreground color of the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_selection_foreground
      check_widget
      return @selection_foreground
    end
    
    typesig { [] }
    # Return the index of the selected tab item, or -1 if there
    # is no selection.
    # 
    # @return the index of the selected tab item or -1
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def get_selection_index
      # checkWidget();
      return @selected_index
    end
    
    typesig { [] }
    # Returns <code>true</code> if the CTabFolder is rendered
    # with a simple, traditional shape.
    # 
    # @return <code>true</code> if the CTabFolder is rendered with a simple shape
    # 
    # @since 3.0
    def get_simple
      check_widget
      return @simple
    end
    
    typesig { [] }
    # Returns <code>true</code> if the CTabFolder only displays the selected tab
    # and <code>false</code> if the CTabFolder displays multiple tabs.
    # 
    # @return <code>true</code> if the CTabFolder only displays the selected tab and <code>false</code> if the CTabFolder displays multiple tabs
    # 
    # @since 3.0
    def get_single
      check_widget
      return @single
    end
    
    typesig { [] }
    def get_style
      style = super
      style &= ~(SWT::TOP | SWT::BOTTOM)
      style |= @on_bottom ? SWT::BOTTOM : SWT::TOP
      style &= ~(SWT::SINGLE | SWT::MULTI)
      style |= @single ? SWT::SINGLE : SWT::MULTI
      if (!(@border_left).equal?(0))
        style |= SWT::BORDER
      end
      style &= ~SWT::CLOSE
      if (@show_close)
        style |= SWT::CLOSE
      end
      return style
    end
    
    typesig { [] }
    # Returns the height of the tab
    # 
    # @return the height of the tab
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def get_tab_height
      check_widget
      if (!(@fixed_tab_height).equal?(SWT::DEFAULT))
        return @fixed_tab_height
      end
      return @tab_height - 1 # -1 for line drawn across top of tab
    end
    
    typesig { [] }
    # Returns the position of the tab.  Possible values are SWT.TOP or SWT.BOTTOM.
    # 
    # @return the position of the tab
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def get_tab_position
      check_widget
      return @on_bottom ? SWT::BOTTOM : SWT::TOP
    end
    
    typesig { [] }
    # Returns the control in the top right corner of the tab folder.
    # Typically this is a close button or a composite with a menu and close button.
    # 
    # @return the control in the top right corner of the tab folder or null
    # 
    # @exception  SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 2.1
    def get_top_right
      check_widget
      return @top_right
    end
    
    typesig { [] }
    # Returns <code>true</code> if the close button appears
    # when the user hovers over an unselected tabs.
    # 
    # @return <code>true</code> if the close button appears on unselected tabs
    # 
    # @since 3.0
    def get_unselected_close_visible
      check_widget
      return @show_unselected_close
    end
    
    typesig { [] }
    # Returns <code>true</code> if an image appears
    # in unselected tabs.
    # 
    # @return <code>true</code> if an image appears in unselected tabs
    # 
    # @since 3.0
    def get_unselected_image_visible
      check_widget
      return @show_unselected_image
    end
    
    typesig { [CTabItem] }
    # Return the index of the specified tab or -1 if the tab is not
    # in the receiver.
    # 
    # @param item the tab item for which the index is required
    # 
    # @return the index of the specified tab item or -1
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def index_of(item)
      check_widget
      if ((item).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < @items.attr_length
        if ((@items[i]).equal?(item))
          return i
        end
        ((i += 1) - 1)
      end
      return -1
    end
    
    typesig { [] }
    def init_accessible
      accessible = get_accessible
      accessible.add_accessible_listener(Class.new(AccessibleAdapter.class == Class ? AccessibleAdapter : Object) do
        extend LocalClass
        include_class_members CTabFolder
        include AccessibleAdapter if AccessibleAdapter.class == Module
        
        typesig { [AccessibleEvent] }
        define_method :get_name do |e|
          name = nil
          child_id = e.attr_child_id
          if (child_id >= 0 && child_id < self.attr_items.attr_length)
            name = (strip_mnemonic(self.attr_items[child_id].get_text)).to_s
          else
            if ((child_id).equal?(self.attr_items.attr_length + CHEVRON_CHILD_ID))
              name = (SWT.get_message("SWT_ShowList")).to_s # $NON-NLS-1$
            else
              if ((child_id).equal?(self.attr_items.attr_length + MINIMIZE_CHILD_ID))
                name = (self.attr_minimized ? SWT.get_message("SWT_Restore") : SWT.get_message("SWT_Minimize")).to_s # $NON-NLS-1$ //$NON-NLS-2$
              else
                if ((child_id).equal?(self.attr_items.attr_length + MAXIMIZE_CHILD_ID))
                  name = (self.attr_maximized ? SWT.get_message("SWT_Restore") : SWT.get_message("SWT_Maximize")).to_s # $NON-NLS-1$ //$NON-NLS-2$
                end
              end
            end
          end
          e.attr_result = name
        end
        
        typesig { [AccessibleEvent] }
        define_method :get_help do |e|
          help = nil
          child_id = e.attr_child_id
          if ((child_id).equal?(ACC::CHILDID_SELF))
            help = (get_tool_tip_text).to_s
          else
            if (child_id >= 0 && child_id < self.attr_items.attr_length)
              help = (self.attr_items[child_id].get_tool_tip_text).to_s
            end
          end
          e.attr_result = help
        end
        
        typesig { [AccessibleEvent] }
        define_method :get_keyboard_shortcut do |e|
          shortcut = nil
          child_id = e.attr_child_id
          if (child_id >= 0 && child_id < self.attr_items.attr_length)
            text = self.attr_items[child_id].get_text
            if (!(text).nil?)
              mnemonic = __find_mnemonic(text)
              if (!(mnemonic).equal?(Character.new(?\0.ord)))
                shortcut = "Alt+" + (mnemonic).to_s # $NON-NLS-1$
              end
            end
          end
          e.attr_result = shortcut
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      accessible.add_accessible_control_listener(Class.new(AccessibleControlAdapter.class == Class ? AccessibleControlAdapter : Object) do
        extend LocalClass
        include_class_members CTabFolder
        include AccessibleControlAdapter if AccessibleControlAdapter.class == Module
        
        typesig { [AccessibleControlEvent] }
        define_method :get_child_at_point do |e|
          test_point = to_control(e.attr_x, e.attr_y)
          child_id = ACC::CHILDID_NONE
          i = 0
          while i < self.attr_items.attr_length
            if (self.attr_items[i].get_bounds.contains(test_point))
              child_id = i
              break
            end
            ((i += 1) - 1)
          end
          if ((child_id).equal?(ACC::CHILDID_NONE))
            if (self.attr_show_chevron && self.attr_chevron_rect.contains(test_point))
              child_id = self.attr_items.attr_length + CHEVRON_CHILD_ID
            else
              if (self.attr_show_min && self.attr_min_rect.contains(test_point))
                child_id = self.attr_items.attr_length + MINIMIZE_CHILD_ID
              else
                if (self.attr_show_max && self.attr_max_rect.contains(test_point))
                  child_id = self.attr_items.attr_length + MAXIMIZE_CHILD_ID
                else
                  location = get_bounds
                  location.attr_height = location.attr_height - get_client_area.attr_height
                  if (location.contains(test_point))
                    child_id = ACC::CHILDID_SELF
                  end
                end
              end
            end
          end
          e.attr_child_id = child_id
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_location do |e|
          location = nil
          pt = nil
          child_id = e.attr_child_id
          if ((child_id).equal?(ACC::CHILDID_SELF))
            location = get_bounds
            pt = get_parent.to_display(location.attr_x, location.attr_y)
          else
            if (child_id >= 0 && child_id < self.attr_items.attr_length && self.attr_items[child_id].is_showing)
              location = self.attr_items[child_id].get_bounds
            else
              if (self.attr_show_chevron && (child_id).equal?(self.attr_items.attr_length + CHEVRON_CHILD_ID))
                location = self.attr_chevron_rect
              else
                if (self.attr_show_min && (child_id).equal?(self.attr_items.attr_length + MINIMIZE_CHILD_ID))
                  location = self.attr_min_rect
                else
                  if (self.attr_show_max && (child_id).equal?(self.attr_items.attr_length + MAXIMIZE_CHILD_ID))
                    location = self.attr_max_rect
                  end
                end
              end
            end
            if (!(location).nil?)
              pt = to_display(location.attr_x, location.attr_y)
            end
          end
          if (!(location).nil? && !(pt).nil?)
            e.attr_x = pt.attr_x
            e.attr_y = pt.attr_y
            e.attr_width = location.attr_width
            e.attr_height = location.attr_height
          end
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_child_count do |e|
          e.attr_detail = self.attr_items.attr_length + EXTRA_CHILD_ID_COUNT
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_default_action do |e|
          action = nil
          child_id = e.attr_child_id
          if (child_id >= 0 && child_id < self.attr_items.attr_length)
            action = (SWT.get_message("SWT_Switch")).to_s # $NON-NLS-1$
          end
          if (child_id >= self.attr_items.attr_length && child_id < self.attr_items.attr_length + EXTRA_CHILD_ID_COUNT)
            action = (SWT.get_message("SWT_Press")).to_s # $NON-NLS-1$
          end
          e.attr_result = action
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_focus do |e|
          child_id = ACC::CHILDID_NONE
          if (is_focus_control)
            if ((self.attr_selected_index).equal?(-1))
              child_id = ACC::CHILDID_SELF
            else
              child_id = self.attr_selected_index
            end
          end
          e.attr_child_id = child_id
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_role do |e|
          role = 0
          child_id = e.attr_child_id
          if ((child_id).equal?(ACC::CHILDID_SELF))
            role = ACC::ROLE_TABFOLDER
          else
            if (child_id >= 0 && child_id < self.attr_items.attr_length)
              role = ACC::ROLE_TABITEM
            else
              if (child_id >= self.attr_items.attr_length && child_id < self.attr_items.attr_length + EXTRA_CHILD_ID_COUNT)
                role = ACC::ROLE_PUSHBUTTON
              end
            end
          end
          e.attr_detail = role
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_selection do |e|
          e.attr_child_id = ((self.attr_selected_index).equal?(-1)) ? ACC::CHILDID_NONE : self.attr_selected_index
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_state do |e|
          state = 0
          child_id = e.attr_child_id
          if ((child_id).equal?(ACC::CHILDID_SELF))
            state = ACC::STATE_NORMAL
          else
            if (child_id >= 0 && child_id < self.attr_items.attr_length)
              state = ACC::STATE_SELECTABLE
              if (is_focus_control)
                state |= ACC::STATE_FOCUSABLE
              end
              if ((self.attr_selected_index).equal?(child_id))
                state |= ACC::STATE_SELECTED
                if (is_focus_control)
                  state |= ACC::STATE_FOCUSED
                end
              end
            else
              if ((child_id).equal?(self.attr_items.attr_length + CHEVRON_CHILD_ID))
                state = self.attr_show_chevron ? ACC::STATE_NORMAL : ACC::STATE_INVISIBLE
              else
                if ((child_id).equal?(self.attr_items.attr_length + MINIMIZE_CHILD_ID))
                  state = self.attr_show_min ? ACC::STATE_NORMAL : ACC::STATE_INVISIBLE
                else
                  if ((child_id).equal?(self.attr_items.attr_length + MAXIMIZE_CHILD_ID))
                    state = self.attr_show_max ? ACC::STATE_NORMAL : ACC::STATE_INVISIBLE
                  end
                end
              end
            end
          end
          e.attr_detail = state
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_children do |e|
          child_id_count = self.attr_items.attr_length + EXTRA_CHILD_ID_COUNT
          children = Array.typed(Object).new(child_id_count) { nil }
          i = 0
          while i < child_id_count
            children[i] = i
            ((i += 1) - 1)
          end
          e.attr_children = children
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      add_listener(SWT::Selection, Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members CTabFolder
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if (is_focus_control)
            if ((self.attr_selected_index).equal?(-1))
              accessible.set_focus(ACC::CHILDID_SELF)
            else
              accessible.set_focus(self.attr_selected_index)
            end
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      add_listener(SWT::FocusIn, Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members CTabFolder
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if ((self.attr_selected_index).equal?(-1))
            accessible.set_focus(ACC::CHILDID_SELF)
          else
            accessible.set_focus(self.attr_selected_index)
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
    end
    
    typesig { [Event] }
    def on_key_down(event)
      case (event.attr_key_code)
      when SWT::ARROW_LEFT, SWT::ARROW_RIGHT
        count = @items.attr_length
        if ((count).equal?(0))
          return
        end
        if ((@selected_index).equal?(-1))
          return
        end
        lead_key = !((get_style & SWT::RIGHT_TO_LEFT)).equal?(0) ? SWT::ARROW_RIGHT : SWT::ARROW_LEFT
        offset = (event.attr_key_code).equal?(lead_key) ? -1 : 1
        index = 0
        if (!@mru)
          index = @selected_index + offset
        else
          visible = Array.typed(::Java::Int).new(@items.attr_length) { 0 }
          idx = 0
          current = -1
          i = 0
          while i < @items.attr_length
            if (@items[i].attr_showing)
              if ((i).equal?(@selected_index))
                current = idx
              end
              visible[((idx += 1) - 1)] = i
            end
            ((i += 1) - 1)
          end
          if (current + offset >= 0 && current + offset < idx)
            index = visible[current + offset]
          else
            if (@show_chevron)
              e = CTabFolderEvent.new(self)
              e.attr_widget = self
              e.attr_time = event.attr_time
              e.attr_x = @chevron_rect.attr_x
              e.attr_y = @chevron_rect.attr_y
              e.attr_width = @chevron_rect.attr_width
              e.attr_height = @chevron_rect.attr_height
              e.attr_doit = true
              i_ = 0
              while i_ < @folder_listeners.attr_length
                @folder_listeners[i_].show_list(e)
                ((i_ += 1) - 1)
              end
              if (e.attr_doit && !is_disposed)
                show_list(@chevron_rect)
              end
            end
            return
          end
        end
        if (index < 0 || index >= count)
          return
        end
        set_selection(index, true)
        force_focus
      end
    end
    
    typesig { [Event] }
    def on_dispose(event)
      remove_listener(SWT::Dispose, @listener)
      notify_listeners(SWT::Dispose, event)
      event.attr_type = SWT::None
      # Usually when an item is disposed, destroyItem will change the size of the items array,
      # reset the bounds of all the tabs and manage the widget associated with the tab.
      # Since the whole folder is being disposed, this is not necessary.  For speed
      # the inDispose flag is used to skip over this part of the item dispose.
      @in_dispose = true
      if (!(@show_menu).nil? && !@show_menu.is_disposed)
        @show_menu.dispose
        @show_menu = nil
      end
      length_ = @items.attr_length
      i = 0
      while i < length_
        if (!(@items[i]).nil?)
          @items[i].dispose
        end
        ((i += 1) - 1)
      end
      @selection_gradient_colors = nil
      @selection_gradient_percents = nil
      @selection_bg_image = nil
      @selection_background = nil
      @selection_foreground = nil
      dispose_selection_highlight_gradient_colors
    end
    
    typesig { [Event] }
    def on_drag_detect(event)
      consume = false
      if (@chevron_rect.contains(event.attr_x, event.attr_y) || @min_rect.contains(event.attr_x, event.attr_y) || @max_rect.contains(event.attr_x, event.attr_y))
        consume = true
      else
        i = 0
        while i < @items.attr_length
          if (@items[i].attr_close_rect.contains(event.attr_x, event.attr_y))
            consume = true
            break
          end
          ((i += 1) - 1)
        end
      end
      if (consume)
        event.attr_type = SWT::None
      end
    end
    
    typesig { [Event] }
    def on_focus(event)
      check_widget
      if (@selected_index >= 0)
        redraw
      else
        set_selection(0, true)
      end
    end
    
    typesig { [Event] }
    def on_mnemonic(event)
      key = event.attr_character
      i = 0
      while i < @items.attr_length
        if (!(@items[i]).nil?)
          mnemonic = __find_mnemonic(@items[i].get_text)
          if (!(mnemonic).equal?(Character.new(?\0.ord)))
            if ((Character.to_lower_case(key)).equal?(mnemonic))
              set_selection(i, true)
              return true
            end
          end
        end
        ((i += 1) - 1)
      end
      return false
    end
    
    typesig { [Event] }
    def on_mouse_double_click(event)
      if (!(event.attr_button).equal?(1) || !((event.attr_state_mask & SWT::BUTTON2)).equal?(0) || !((event.attr_state_mask & SWT::BUTTON3)).equal?(0))
        return
      end
      e = Event.new
      e.attr_item = get_item(Point.new(event.attr_x, event.attr_y))
      if (!(e.attr_item).nil?)
        notify_listeners(SWT::DefaultSelection, e)
      end
    end
    
    typesig { [Event] }
    def on_mouse(event)
      x = event.attr_x
      y = event.attr_y
      case (event.attr_type)
      when SWT::MouseEnter
        set_tool_tip_text(nil)
      when SWT::MouseExit
        if (!(@min_image_state).equal?(NORMAL))
          @min_image_state = NORMAL
          redraw(@min_rect.attr_x, @min_rect.attr_y, @min_rect.attr_width, @min_rect.attr_height, false)
        end
        if (!(@max_image_state).equal?(NORMAL))
          @max_image_state = NORMAL
          redraw(@max_rect.attr_x, @max_rect.attr_y, @max_rect.attr_width, @max_rect.attr_height, false)
        end
        if (!(@chevron_image_state).equal?(NORMAL))
          @chevron_image_state = NORMAL
          redraw(@chevron_rect.attr_x, @chevron_rect.attr_y, @chevron_rect.attr_width, @chevron_rect.attr_height, false)
        end
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(i).equal?(@selected_index) && !(item.attr_close_image_state).equal?(NONE))
            item.attr_close_image_state = NONE
            redraw(item.attr_close_rect.attr_x, item.attr_close_rect.attr_y, item.attr_close_rect.attr_width, item.attr_close_rect.attr_height, false)
          end
          if ((i).equal?(@selected_index) && !(item.attr_close_image_state).equal?(NORMAL))
            item.attr_close_image_state = NORMAL
            redraw(item.attr_close_rect.attr_x, item.attr_close_rect.attr_y, item.attr_close_rect.attr_width, item.attr_close_rect.attr_height, false)
          end
          ((i += 1) - 1)
        end
      when SWT::MouseDown
        if (@min_rect.contains(x, y))
          if (!(event.attr_button).equal?(1))
            return
          end
          @min_image_state = SELECTED
          redraw(@min_rect.attr_x, @min_rect.attr_y, @min_rect.attr_width, @min_rect.attr_height, false)
          update
          return
        end
        if (@max_rect.contains(x, y))
          if (!(event.attr_button).equal?(1))
            return
          end
          @max_image_state = SELECTED
          redraw(@max_rect.attr_x, @max_rect.attr_y, @max_rect.attr_width, @max_rect.attr_height, false)
          update
          return
        end
        if (@chevron_rect.contains(x, y))
          if (!(event.attr_button).equal?(1))
            return
          end
          if (!(@chevron_image_state).equal?(HOT))
            @chevron_image_state = HOT
          else
            @chevron_image_state = SELECTED
          end
          redraw(@chevron_rect.attr_x, @chevron_rect.attr_y, @chevron_rect.attr_width, @chevron_rect.attr_height, false)
          update
          return
        end
        item = nil
        if (@single)
          if (!(@selected_index).equal?(-1))
            bounds = @items[@selected_index].get_bounds
            if (bounds.contains(x, y))
              item = @items[@selected_index]
            end
          end
        else
          i = 0
          while i < @items.attr_length
            bounds = @items[i].get_bounds
            if (bounds.contains(x, y))
              item = @items[i]
            end
            ((i += 1) - 1)
          end
        end
        if (!(item).nil?)
          if (item.attr_close_rect.contains(x, y))
            if (!(event.attr_button).equal?(1))
              return
            end
            item.attr_close_image_state = SELECTED
            redraw(item.attr_close_rect.attr_x, item.attr_close_rect.attr_y, item.attr_close_rect.attr_width, item.attr_close_rect.attr_height, false)
            update
            return
          end
          index = index_of(item)
          if (item.attr_showing)
            set_selection(index, true)
          end
          return
        end
      when SWT::MouseMove
        __set_tool_tip_text(event.attr_x, event.attr_y)
        close = false
        minimize = false
        maximize = false
        chevron = false
        if (@min_rect.contains(x, y))
          minimize = true
          if (!(@min_image_state).equal?(SELECTED) && !(@min_image_state).equal?(HOT))
            @min_image_state = HOT
            redraw(@min_rect.attr_x, @min_rect.attr_y, @min_rect.attr_width, @min_rect.attr_height, false)
          end
        end
        if (@max_rect.contains(x, y))
          maximize = true
          if (!(@max_image_state).equal?(SELECTED) && !(@max_image_state).equal?(HOT))
            @max_image_state = HOT
            redraw(@max_rect.attr_x, @max_rect.attr_y, @max_rect.attr_width, @max_rect.attr_height, false)
          end
        end
        if (@chevron_rect.contains(x, y))
          chevron = true
          if (!(@chevron_image_state).equal?(SELECTED) && !(@chevron_image_state).equal?(HOT))
            @chevron_image_state = HOT
            redraw(@chevron_rect.attr_x, @chevron_rect.attr_y, @chevron_rect.attr_width, @chevron_rect.attr_height, false)
          end
        end
        if (!(@min_image_state).equal?(NORMAL) && !minimize)
          @min_image_state = NORMAL
          redraw(@min_rect.attr_x, @min_rect.attr_y, @min_rect.attr_width, @min_rect.attr_height, false)
        end
        if (!(@max_image_state).equal?(NORMAL) && !maximize)
          @max_image_state = NORMAL
          redraw(@max_rect.attr_x, @max_rect.attr_y, @max_rect.attr_width, @max_rect.attr_height, false)
        end
        if (!(@chevron_image_state).equal?(NORMAL) && !chevron)
          @chevron_image_state = NORMAL
          redraw(@chevron_rect.attr_x, @chevron_rect.attr_y, @chevron_rect.attr_width, @chevron_rect.attr_height, false)
        end
        i = 0
        while i < @items.attr_length
          item = @items[i]
          close = false
          if (item.get_bounds.contains(x, y))
            close = true
            if (item.attr_close_rect.contains(x, y))
              if (!(item.attr_close_image_state).equal?(SELECTED) && !(item.attr_close_image_state).equal?(HOT))
                item.attr_close_image_state = HOT
                redraw(item.attr_close_rect.attr_x, item.attr_close_rect.attr_y, item.attr_close_rect.attr_width, item.attr_close_rect.attr_height, false)
              end
            else
              if (!(item.attr_close_image_state).equal?(NORMAL))
                item.attr_close_image_state = NORMAL
                redraw(item.attr_close_rect.attr_x, item.attr_close_rect.attr_y, item.attr_close_rect.attr_width, item.attr_close_rect.attr_height, false)
              end
            end
          end
          if (!(i).equal?(@selected_index) && !(item.attr_close_image_state).equal?(NONE) && !close)
            item.attr_close_image_state = NONE
            redraw(item.attr_close_rect.attr_x, item.attr_close_rect.attr_y, item.attr_close_rect.attr_width, item.attr_close_rect.attr_height, false)
          end
          if ((i).equal?(@selected_index) && !(item.attr_close_image_state).equal?(NORMAL) && !close)
            item.attr_close_image_state = NORMAL
            redraw(item.attr_close_rect.attr_x, item.attr_close_rect.attr_y, item.attr_close_rect.attr_width, item.attr_close_rect.attr_height, false)
          end
          ((i += 1) - 1)
        end
      when SWT::MouseUp
        if (!(event.attr_button).equal?(1))
          return
        end
        if (@chevron_rect.contains(x, y))
          selected = (@chevron_image_state).equal?(SELECTED)
          if (!selected)
            return
          end
          e = CTabFolderEvent.new(self)
          e.attr_widget = self
          e.attr_time = event.attr_time
          e.attr_x = @chevron_rect.attr_x
          e.attr_y = @chevron_rect.attr_y
          e.attr_width = @chevron_rect.attr_width
          e.attr_height = @chevron_rect.attr_height
          e.attr_doit = true
          i = 0
          while i < @folder_listeners.attr_length
            @folder_listeners[i].show_list(e)
            ((i += 1) - 1)
          end
          if (e.attr_doit && !is_disposed)
            show_list(@chevron_rect)
          end
          return
        end
        if (@min_rect.contains(x, y))
          selected = (@min_image_state).equal?(SELECTED)
          @min_image_state = HOT
          redraw(@min_rect.attr_x, @min_rect.attr_y, @min_rect.attr_width, @min_rect.attr_height, false)
          if (!selected)
            return
          end
          e = CTabFolderEvent.new(self)
          e.attr_widget = self
          e.attr_time = event.attr_time
          i = 0
          while i < @folder_listeners.attr_length
            if (@minimized)
              @folder_listeners[i].restore(e)
            else
              @folder_listeners[i].minimize(e)
            end
            ((i += 1) - 1)
          end
          return
        end
        if (@max_rect.contains(x, y))
          selected = (@max_image_state).equal?(SELECTED)
          @max_image_state = HOT
          redraw(@max_rect.attr_x, @max_rect.attr_y, @max_rect.attr_width, @max_rect.attr_height, false)
          if (!selected)
            return
          end
          e = CTabFolderEvent.new(self)
          e.attr_widget = self
          e.attr_time = event.attr_time
          i = 0
          while i < @folder_listeners.attr_length
            if (@maximized)
              @folder_listeners[i].restore(e)
            else
              @folder_listeners[i].maximize(e)
            end
            ((i += 1) - 1)
          end
          return
        end
        item = nil
        if (@single)
          if (!(@selected_index).equal?(-1))
            bounds = @items[@selected_index].get_bounds
            if (bounds.contains(x, y))
              item = @items[@selected_index]
            end
          end
        else
          i = 0
          while i < @items.attr_length
            bounds = @items[i].get_bounds
            if (bounds.contains(x, y))
              item = @items[i]
            end
            ((i += 1) - 1)
          end
        end
        if (!(item).nil?)
          if (item.attr_close_rect.contains(x, y))
            selected = (item.attr_close_image_state).equal?(SELECTED)
            item.attr_close_image_state = HOT
            redraw(item.attr_close_rect.attr_x, item.attr_close_rect.attr_y, item.attr_close_rect.attr_width, item.attr_close_rect.attr_height, false)
            if (!selected)
              return
            end
            e = CTabFolderEvent.new(self)
            e.attr_widget = self
            e.attr_time = event.attr_time
            e.attr_item = item
            e.attr_doit = true
            j = 0
            while j < @folder_listeners.attr_length
              listener = @folder_listeners[j]
              listener.close(e)
              ((j += 1) - 1)
            end
            j_ = 0
            while j_ < @tab_listeners.attr_length
              listener = @tab_listeners[j_]
              listener.item_closed(e)
              ((j_ += 1) - 1)
            end
            if (e.attr_doit)
              item.dispose
            end
            if (!is_disposed && item.is_disposed)
              display = get_display
              pt = display.get_cursor_location
              pt = display.map(nil, self, pt.attr_x, pt.attr_y)
              next_item = get_item(pt)
              if (!(next_item).nil?)
                if (next_item.attr_close_rect.contains(pt))
                  if (!(next_item.attr_close_image_state).equal?(SELECTED) && !(next_item.attr_close_image_state).equal?(HOT))
                    next_item.attr_close_image_state = HOT
                    redraw(next_item.attr_close_rect.attr_x, next_item.attr_close_rect.attr_y, next_item.attr_close_rect.attr_width, next_item.attr_close_rect.attr_height, false)
                  end
                else
                  if (!(next_item.attr_close_image_state).equal?(NORMAL))
                    next_item.attr_close_image_state = NORMAL
                    redraw(next_item.attr_close_rect.attr_x, next_item.attr_close_rect.attr_y, next_item.attr_close_rect.attr_width, next_item.attr_close_rect.attr_height, false)
                  end
                end
              end
            end
            return
          end
        end
      end
    end
    
    typesig { [Event] }
    def on_page_traversal(event)
      count = @items.attr_length
      if ((count).equal?(0))
        return false
      end
      index = @selected_index
      if ((index).equal?(-1))
        index = 0
      else
        offset = ((event.attr_detail).equal?(SWT::TRAVERSE_PAGE_NEXT)) ? 1 : -1
        if (!@mru)
          index = (@selected_index + offset + count) % count
        else
          visible = Array.typed(::Java::Int).new(@items.attr_length) { 0 }
          idx = 0
          current = -1
          i = 0
          while i < @items.attr_length
            if (@items[i].attr_showing)
              if ((i).equal?(@selected_index))
                current = idx
              end
              visible[((idx += 1) - 1)] = i
            end
            ((i += 1) - 1)
          end
          if (current + offset >= 0 && current + offset < idx)
            index = visible[current + offset]
          else
            if (@show_chevron)
              e = CTabFolderEvent.new(self)
              e.attr_widget = self
              e.attr_time = event.attr_time
              e.attr_x = @chevron_rect.attr_x
              e.attr_y = @chevron_rect.attr_y
              e.attr_width = @chevron_rect.attr_width
              e.attr_height = @chevron_rect.attr_height
              e.attr_doit = true
              i_ = 0
              while i_ < @folder_listeners.attr_length
                @folder_listeners[i_].show_list(e)
                ((i_ += 1) - 1)
              end
              if (e.attr_doit && !is_disposed)
                show_list(@chevron_rect)
              end
            end
            return true
          end
        end
      end
      set_selection(index, true)
      return true
    end
    
    typesig { [Event] }
    def on_paint(event)
      if (@in_dispose)
        return
      end
      font = get_font
      if ((@old_font).nil? || !(@old_font == font))
        # handle case where  default font changes
        @old_font = font
        if (!update_tab_height(false))
          update_items
          redraw
          return
        end
      end
      gc = event.attr_gc
      gc_font = gc.get_font
      gc_background = gc.get_background
      gc_foreground = gc.get_foreground
      # Useful for debugging paint problems
      # {
      # Point size = getSize();
      # gc.setBackground(getDisplay().getSystemColor(SWT.COLOR_GREEN));
      # gc.fillRectangle(-10, -10, size.x + 20, size.y+20);
      # }
      draw_body(event)
      gc.set_font(gc_font)
      gc.set_foreground(gc_foreground)
      gc.set_background(gc_background)
      draw_tab_area(event)
      gc.set_font(gc_font)
      gc.set_foreground(gc_foreground)
      gc.set_background(gc_background)
    end
    
    typesig { [] }
    def on_resize
      if (update_items)
        redraw_tabs
      end
      size = get_size
      if ((@old_size).nil?)
        redraw
      else
        if (@on_bottom && !(size.attr_y).equal?(@old_size.attr_y))
          redraw
        else
          x1 = Math.min(size.attr_x, @old_size.attr_x)
          if (!(size.attr_x).equal?(@old_size.attr_x))
            x1 -= @border_right + @highlight_margin + 2
          end
          if (!@simple)
            x1 -= 5
          end # rounded top right corner
          y1 = Math.min(size.attr_y, @old_size.attr_y)
          if (!(size.attr_y).equal?(@old_size.attr_y))
            y1 -= @border_bottom + @highlight_margin
          end
          x2 = Math.max(size.attr_x, @old_size.attr_x)
          y2 = Math.max(size.attr_y, @old_size.attr_y)
          redraw(0, y1, x2, y2 - y1, false)
          redraw(x1, 0, x2 - x1, y2, false)
        end
      end
      @old_size = size
    end
    
    typesig { [Event] }
    def on_traverse(event)
      case (event.attr_detail)
      when SWT::TRAVERSE_ESCAPE, SWT::TRAVERSE_RETURN, SWT::TRAVERSE_TAB_NEXT, SWT::TRAVERSE_TAB_PREVIOUS
        focus_control = get_display.get_focus_control
        if ((focus_control).equal?(self))
          event.attr_doit = true
        end
      when SWT::TRAVERSE_MNEMONIC
        event.attr_doit = on_mnemonic(event)
        if (event.attr_doit)
          event.attr_detail = SWT::TRAVERSE_NONE
        end
      when SWT::TRAVERSE_PAGE_NEXT, SWT::TRAVERSE_PAGE_PREVIOUS
        event.attr_doit = on_page_traversal(event)
        event.attr_detail = SWT::TRAVERSE_NONE
      end
    end
    
    typesig { [] }
    def redraw_tabs
      size = get_size
      if (@on_bottom)
        redraw(0, size.attr_y - @border_bottom - @tab_height - @highlight_header - 1, size.attr_x, @border_bottom + @tab_height + @highlight_header + 1, false)
      else
        redraw(0, 0, size.attr_x, @border_top + @tab_height + @highlight_header + 1, false)
      end
    end
    
    typesig { [CTabFolder2Listener] }
    # Removes the listener.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @see #addCTabFolder2Listener(CTabFolder2Listener)
    # 
    # @since 3.0
    def remove_ctab_folder2listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@folder_listeners.attr_length).equal?(0))
        return
      end
      index = -1
      i = 0
      while i < @folder_listeners.attr_length
        if ((listener).equal?(@folder_listeners[i]))
          index = i
          break
        end
        ((i += 1) - 1)
      end
      if ((index).equal?(-1))
        return
      end
      if ((@folder_listeners.attr_length).equal?(1))
        @folder_listeners = Array.typed(CTabFolder2Listener).new(0) { nil }
        return
      end
      new_tab_listeners = Array.typed(CTabFolder2Listener).new(@folder_listeners.attr_length - 1) { nil }
      System.arraycopy(@folder_listeners, 0, new_tab_listeners, 0, index)
      System.arraycopy(@folder_listeners, index + 1, new_tab_listeners, index, @folder_listeners.attr_length - index - 1)
      @folder_listeners = new_tab_listeners
    end
    
    typesig { [CTabFolderListener] }
    # Removes the listener.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @deprecated see removeCTabFolderCloseListener(CTabFolderListener)
    def remove_ctab_folder_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@tab_listeners.attr_length).equal?(0))
        return
      end
      index = -1
      i = 0
      while i < @tab_listeners.attr_length
        if ((listener).equal?(@tab_listeners[i]))
          index = i
          break
        end
        ((i += 1) - 1)
      end
      if ((index).equal?(-1))
        return
      end
      if ((@tab_listeners.attr_length).equal?(1))
        @tab_listeners = Array.typed(CTabFolderListener).new(0) { nil }
        return
      end
      new_tab_listeners = Array.typed(CTabFolderListener).new(@tab_listeners.attr_length - 1) { nil }
      System.arraycopy(@tab_listeners, 0, new_tab_listeners, 0, index)
      System.arraycopy(@tab_listeners, index + 1, new_tab_listeners, index, @tab_listeners.attr_length - index - 1)
      @tab_listeners = new_tab_listeners
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the user changes the receiver's selection.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #addSelectionListener
    def remove_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(SWT::Selection, listener)
      remove_listener(SWT::DefaultSelection, listener)
    end
    
    typesig { [Color] }
    def set_background(color)
      super(color)
      redraw
    end
    
    typesig { [Array.typed(Color), Array.typed(::Java::Int)] }
    # Specify a gradient of colours to be drawn in the background of the unselected tabs.
    # For example to draw a gradient that varies from dark blue to blue and then to
    # white, use the following call to setBackground:
    # <pre>
    # cfolder.setBackground(new Color[]{display.getSystemColor(SWT.COLOR_DARK_BLUE),
    # display.getSystemColor(SWT.COLOR_BLUE),
    # display.getSystemColor(SWT.COLOR_WHITE),
    # display.getSystemColor(SWT.COLOR_WHITE)},
    # new int[] {25, 50, 100});
    # </pre>
    # 
    # @param colors an array of Color that specifies the colors to appear in the gradient
    # in order of appearance left to right.  The value <code>null</code> clears the
    # background gradient. The value <code>null</code> can be used inside the array of
    # Color to specify the background color.
    # @param percents an array of integers between 0 and 100 specifying the percent of the width
    # of the widget at which the color should change.  The size of the percents array must be one
    # less than the size of the colors array.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def set_background(colors, percents)
      set_background(colors, percents, false)
    end
    
    typesig { [Array.typed(Color), Array.typed(::Java::Int), ::Java::Boolean] }
    # Specify a gradient of colours to be drawn in the background of the unselected tab.
    # For example to draw a vertical gradient that varies from dark blue to blue and then to
    # white, use the following call to setBackground:
    # <pre>
    # cfolder.setBackground(new Color[]{display.getSystemColor(SWT.COLOR_DARK_BLUE),
    # display.getSystemColor(SWT.COLOR_BLUE),
    # display.getSystemColor(SWT.COLOR_WHITE),
    # display.getSystemColor(SWT.COLOR_WHITE)},
    # new int[] {25, 50, 100}, true);
    # </pre>
    # 
    # @param colors an array of Color that specifies the colors to appear in the gradient
    # in order of appearance left to right.  The value <code>null</code> clears the
    # background gradient. The value <code>null</code> can be used inside the array of
    # Color to specify the background color.
    # @param percents an array of integers between 0 and 100 specifying the percent of the width
    # of the widget at which the color should change.  The size of the percents array must be one
    # less than the size of the colors array.
    # 
    # @param vertical indicate the direction of the gradient.  True is vertical and false is horizontal.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def set_background(colors, percents, vertical)
      check_widget
      if (!(colors).nil?)
        if ((percents).nil? || !(percents.attr_length).equal?(colors.attr_length - 1))
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i = 0
        while i < percents.attr_length
          if (percents[i] < 0 || percents[i] > 100)
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          if (i > 0 && percents[i] < percents[i - 1])
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          ((i += 1) - 1)
        end
        if (get_display.get_depth < 15)
          # Don't use gradients on low color displays
          colors = Array.typed(Color).new([colors[colors.attr_length - 1]])
          percents = Array.typed(::Java::Int).new([])
        end
      end
      # Are these settings the same as before?
      if ((@bg_image).nil?)
        if ((!(@gradient_colors).nil?) && (!(colors).nil?) && ((@gradient_colors.attr_length).equal?(colors.attr_length)))
          same = false
          i = 0
          while i < @gradient_colors.attr_length
            if ((@gradient_colors[i]).nil?)
              same = (colors[i]).nil?
            else
              same = (@gradient_colors[i] == colors[i])
            end
            if (!same)
              break
            end
            ((i += 1) - 1)
          end
          if (same)
            i_ = 0
            while i_ < @gradient_percents.attr_length
              same = (@gradient_percents[i_]).equal?(percents[i_])
              if (!same)
                break
              end
              ((i_ += 1) - 1)
            end
          end
          if (same && (@gradient_vertical).equal?(vertical))
            return
          end
        end
      else
        @bg_image = nil
      end
      # Store the new settings
      if ((colors).nil?)
        @gradient_colors = nil
        @gradient_percents = nil
        @gradient_vertical = false
        set_background(nil)
      else
        @gradient_colors = Array.typed(Color).new(colors.attr_length) { nil }
        i = 0
        while i < colors.attr_length
          @gradient_colors[i] = colors[i]
          (i += 1)
        end
        @gradient_percents = Array.typed(::Java::Int).new(percents.attr_length) { 0 }
        i_ = 0
        while i_ < percents.attr_length
          @gradient_percents[i_] = percents[i_]
          (i_ += 1)
        end
        @gradient_vertical = vertical
        set_background(@gradient_colors[@gradient_colors.attr_length - 1])
      end
      # Refresh with the new settings
      redraw
    end
    
    typesig { [Image] }
    # Set the image to be drawn in the background of the unselected tab.  Image
    # is stretched or compressed to cover entire unselected tab area.
    # 
    # @param image the image to be drawn in the background
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_background(image)
      check_widget
      if ((image).equal?(@bg_image))
        return
      end
      if (!(image).nil?)
        @gradient_colors = nil
        @gradient_percents = nil
      end
      @bg_image = image
      redraw
    end
    
    typesig { [::Java::Boolean] }
    # Toggle the visibility of the border
    # 
    # @param show true if the border should be displayed
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_border_visible(show)
      check_widget
      if ((((@border_left).equal?(1))).equal?(show))
        return
      end
      @border_left = @border_right = show ? 1 : 0
      @border_top = @on_bottom ? @border_left : 0
      @border_bottom = @on_bottom ? 0 : @border_left
      rect_before = get_client_area
      update_items
      rect_after = get_client_area
      if (!(rect_before == rect_after))
        notify_listeners(SWT::Resize, Event.new)
      end
      redraw
    end
    
    typesig { [] }
    def set_button_bounds
      size = get_size
      old_x = 0
      old_y = 0
      old_width = 0
      old_height = 0
      # max button
      old_x = @max_rect.attr_x
      old_y = @max_rect.attr_y
      old_width = @max_rect.attr_width
      old_height = @max_rect.attr_height
      @max_rect.attr_x = @max_rect.attr_y = @max_rect.attr_width = @max_rect.attr_height = 0
      if (@show_max)
        @max_rect.attr_x = size.attr_x - @border_right - BUTTON_SIZE - 3
        if (@border_right > 0)
          @max_rect.attr_x += 1
        end
        @max_rect.attr_y = @on_bottom ? size.attr_y - @border_bottom - @tab_height + (@tab_height - BUTTON_SIZE) / 2 : @border_top + (@tab_height - BUTTON_SIZE) / 2
        @max_rect.attr_width = BUTTON_SIZE
        @max_rect.attr_height = BUTTON_SIZE
      end
      if (!(old_x).equal?(@max_rect.attr_x) || !(old_width).equal?(@max_rect.attr_width) || !(old_y).equal?(@max_rect.attr_y) || !(old_height).equal?(@max_rect.attr_height))
        left = Math.min(old_x, @max_rect.attr_x)
        right = Math.max(old_x + old_width, @max_rect.attr_x + @max_rect.attr_width)
        top = @on_bottom ? size.attr_y - @border_bottom - @tab_height : @border_top + 1
        redraw(left, top, right - left, @tab_height, false)
      end
      # min button
      old_x = @min_rect.attr_x
      old_y = @min_rect.attr_y
      old_width = @min_rect.attr_width
      old_height = @min_rect.attr_height
      @min_rect.attr_x = @min_rect.attr_y = @min_rect.attr_width = @min_rect.attr_height = 0
      if (@show_min)
        @min_rect.attr_x = size.attr_x - @border_right - @max_rect.attr_width - BUTTON_SIZE - 3
        if (@border_right > 0)
          @min_rect.attr_x += 1
        end
        @min_rect.attr_y = @on_bottom ? size.attr_y - @border_bottom - @tab_height + (@tab_height - BUTTON_SIZE) / 2 : @border_top + (@tab_height - BUTTON_SIZE) / 2
        @min_rect.attr_width = BUTTON_SIZE
        @min_rect.attr_height = BUTTON_SIZE
      end
      if (!(old_x).equal?(@min_rect.attr_x) || !(old_width).equal?(@min_rect.attr_width) || !(old_y).equal?(@min_rect.attr_y) || !(old_height).equal?(@min_rect.attr_height))
        left = Math.min(old_x, @min_rect.attr_x)
        right = Math.max(old_x + old_width, @min_rect.attr_x + @min_rect.attr_width)
        top = @on_bottom ? size.attr_y - @border_bottom - @tab_height : @border_top + 1
        redraw(left, top, right - left, @tab_height, false)
      end
      # top right control
      old_x = @top_right_rect.attr_x
      old_y = @top_right_rect.attr_y
      old_width = @top_right_rect.attr_width
      old_height = @top_right_rect.attr_height
      @top_right_rect.attr_x = @top_right_rect.attr_y = @top_right_rect.attr_width = @top_right_rect.attr_height = 0
      if (!(@top_right).nil?)
        catch(:break_case) do
          case (@top_right_alignment)
          when SWT::FILL
            right_edge = size.attr_x - @border_right - 3 - @max_rect.attr_width - @min_rect.attr_width
            if (!@simple && @border_right > 0 && !@show_max && !@show_min)
              right_edge -= 2
            end
            if (@single)
              if ((@items.attr_length).equal?(0) || (@selected_index).equal?(-1))
                @top_right_rect.attr_x = @border_left + 3
                @top_right_rect.attr_width = right_edge - @top_right_rect.attr_x
              else
                # fill size is 0 if item compressed
                item = @items[@selected_index]
                if (item.attr_x + item.attr_width + 7 + 3 * BUTTON_SIZE / 2 >= right_edge)
                  throw :break_case, :thrown
                end
                @top_right_rect.attr_x = item.attr_x + item.attr_width + 7 + 3 * BUTTON_SIZE / 2
                @top_right_rect.attr_width = right_edge - @top_right_rect.attr_x
              end
            else
              # fill size is 0 if chevron showing
              if (@show_chevron)
                throw :break_case, :thrown
              end
              if ((@items.attr_length).equal?(0))
                @top_right_rect.attr_x = @border_left + 3
              else
                item = @items[@items.attr_length - 1]
                @top_right_rect.attr_x = item.attr_x + item.attr_width
                if (!@simple && (@items.attr_length - 1).equal?(@selected_index))
                  @top_right_rect.attr_x += @curve_width - @curve_indent
                end
              end
              @top_right_rect.attr_width = Math.max(0, right_edge - @top_right_rect.attr_x)
            end
            @top_right_rect.attr_y = @on_bottom ? size.attr_y - @border_bottom - @tab_height : @border_top + 1
            @top_right_rect.attr_height = @tab_height - 1
          when SWT::RIGHT
            top_right_size = @top_right.compute_size(SWT::DEFAULT, @tab_height, false)
            right_edge = size.attr_x - @border_right - 3 - @max_rect.attr_width - @min_rect.attr_width
            if (!@simple && @border_right > 0 && !@show_max && !@show_min)
              right_edge -= 2
            end
            @top_right_rect.attr_x = right_edge - top_right_size.attr_x
            @top_right_rect.attr_width = top_right_size.attr_x
            @top_right_rect.attr_y = @on_bottom ? size.attr_y - @border_bottom - @tab_height : @border_top + 1
            @top_right_rect.attr_height = @tab_height - 1
          end
        end
        @top_right.set_bounds(@top_right_rect)
      end
      if (!(old_x).equal?(@top_right_rect.attr_x) || !(old_width).equal?(@top_right_rect.attr_width) || !(old_y).equal?(@top_right_rect.attr_y) || !(old_height).equal?(@top_right_rect.attr_height))
        left = Math.min(old_x, @top_right_rect.attr_x)
        right = Math.max(old_x + old_width, @top_right_rect.attr_x + @top_right_rect.attr_width)
        top = @on_bottom ? size.attr_y - @border_bottom - @tab_height : @border_top + 1
        redraw(left, top, right - left, @tab_height, false)
      end
      # chevron button
      old_x = @chevron_rect.attr_x
      old_y = @chevron_rect.attr_y
      old_width = @chevron_rect.attr_width
      old_height = @chevron_rect.attr_height
      @chevron_rect.attr_x = @chevron_rect.attr_y = @chevron_rect.attr_height = @chevron_rect.attr_width = 0
      if (@single)
        if ((@selected_index).equal?(-1) || @items.attr_length > 1)
          @chevron_rect.attr_width = 3 * BUTTON_SIZE / 2
          @chevron_rect.attr_height = BUTTON_SIZE
          @chevron_rect.attr_y = @on_bottom ? size.attr_y - @border_bottom - @tab_height + (@tab_height - @chevron_rect.attr_height) / 2 : @border_top + (@tab_height - @chevron_rect.attr_height) / 2
          if ((@selected_index).equal?(-1))
            @chevron_rect.attr_x = size.attr_x - @border_right - 3 - @min_rect.attr_width - @max_rect.attr_width - @top_right_rect.attr_width - @chevron_rect.attr_width
          else
            item = @items[@selected_index]
            w = size.attr_x - @border_right - 3 - @min_rect.attr_width - @max_rect.attr_width - @chevron_rect.attr_width
            if (@top_right_rect.attr_width > 0)
              w -= @top_right_rect.attr_width + 3
            end
            @chevron_rect.attr_x = Math.min(item.attr_x + item.attr_width + 3, w)
          end
          if (@border_right > 0)
            @chevron_rect.attr_x += 1
          end
        end
      else
        if (@show_chevron)
          @chevron_rect.attr_width = 3 * BUTTON_SIZE / 2
          @chevron_rect.attr_height = BUTTON_SIZE
          i = 0
          last_index = -1
          while (i < @priority.attr_length && @items[@priority[i]].attr_showing)
            last_index = Math.max(last_index, @priority[((i += 1) - 1)])
          end
          if ((last_index).equal?(-1))
            last_index = @first_index
          end
          last_item = @items[last_index]
          w = last_item.attr_x + last_item.attr_width + 3
          if (!@simple && (last_index).equal?(@selected_index))
            w += @curve_width - 2 * @curve_indent
          end
          @chevron_rect.attr_x = Math.min(w, get_right_item_edge)
          @chevron_rect.attr_y = @on_bottom ? size.attr_y - @border_bottom - @tab_height + (@tab_height - @chevron_rect.attr_height) / 2 : @border_top + (@tab_height - @chevron_rect.attr_height) / 2
        end
      end
      if (!(old_x).equal?(@chevron_rect.attr_x) || !(old_width).equal?(@chevron_rect.attr_width) || !(old_y).equal?(@chevron_rect.attr_y) || !(old_height).equal?(@chevron_rect.attr_height))
        left = Math.min(old_x, @chevron_rect.attr_x)
        right = Math.max(old_x + old_width, @chevron_rect.attr_x + @chevron_rect.attr_width)
        top = @on_bottom ? size.attr_y - @border_bottom - @tab_height : @border_top + 1
        redraw(left, top, right - left, @tab_height, false)
      end
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      if (!(font).nil? && (font == get_font))
        return
      end
      super(font)
      @old_font = get_font
      if (!update_tab_height(false))
        update_items
        redraw
      end
    end
    
    typesig { [Color] }
    def set_foreground(color)
      super(color)
      redraw
    end
    
    typesig { [CTabItem, ::Java::Boolean] }
    # Display an insert marker before or after the specified tab item.
    # 
    # A value of null will clear the mark.
    # 
    # @param item the item with which the mark is associated or null
    # 
    # @param after true if the mark should be displayed after the specified item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_insert_mark(item, after)
      check_widget
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # Display an insert marker before or after the specified tab item.
    # 
    # A value of -1 will clear the mark.
    # 
    # @param index the index of the item with which the mark is associated or null
    # 
    # @param after true if the mark should be displayed after the specified item
    # 
    # @exception IllegalArgumentException<ul>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_insert_mark(index, after)
      check_widget
      if (index < -1 || index >= get_item_count)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
    end
    
    typesig { [] }
    def set_item_location
      changed = false
      if ((@items.attr_length).equal?(0))
        return false
      end
      size = get_size
      y = @on_bottom ? Math.max(@border_bottom, size.attr_y - @border_bottom - @tab_height) : @border_top
      if (@single)
        default_x = get_display.get_bounds.attr_width + 10 # off screen
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if ((i).equal?(@selected_index))
            @first_index = @selected_index
            old_x = item.attr_x
            old_y = item.attr_y
            item.attr_x = @border_left
            item.attr_y = y
            item.attr_showing = true
            if (@show_close || item.attr_show_close)
              item.attr_close_rect.attr_x = @border_left + CTabItem::LEFT_MARGIN
              item.attr_close_rect.attr_y = @on_bottom ? size.attr_y - @border_bottom - @tab_height + (@tab_height - BUTTON_SIZE) / 2 : @border_top + (@tab_height - BUTTON_SIZE) / 2
            end
            if (!(item.attr_x).equal?(old_x) || !(item.attr_y).equal?(old_y))
              changed = true
            end
          else
            item.attr_x = default_x
            item.attr_showing = false
          end
          ((i += 1) - 1)
        end
      else
        right_item_edge = get_right_item_edge
        max_width = right_item_edge - @border_left
        width = 0
        i = 0
        while i < @priority.attr_length
          item = @items[@priority[i]]
          width += item.attr_width
          item.attr_showing = (i).equal?(0) ? true : item.attr_width > 0 && width <= max_width
          if (!@simple && (@priority[i]).equal?(@selected_index))
            width += @curve_width - 2 * @curve_indent
          end
          ((i += 1) - 1)
        end
        x = 0
        default_x = get_display.get_bounds.attr_width + 10 # off screen
        @first_index = @items.attr_length - 1
        i_ = 0
        while i_ < @items.attr_length
          item = @items[i_]
          if (!item.attr_showing)
            if (!(item.attr_x).equal?(default_x))
              changed = true
            end
            item.attr_x = default_x
          else
            @first_index = Math.min(@first_index, i_)
            if (!(item.attr_x).equal?(x) || !(item.attr_y).equal?(y))
              changed = true
            end
            item.attr_x = x
            item.attr_y = y
            if ((i_).equal?(@selected_index))
              edge = Math.min(item.attr_x + item.attr_width, right_item_edge)
              item.attr_close_rect.attr_x = edge - CTabItem::RIGHT_MARGIN - BUTTON_SIZE
            else
              item.attr_close_rect.attr_x = item.attr_x + item.attr_width - CTabItem::RIGHT_MARGIN - BUTTON_SIZE
            end
            item.attr_close_rect.attr_y = @on_bottom ? size.attr_y - @border_bottom - @tab_height + (@tab_height - BUTTON_SIZE) / 2 : @border_top + (@tab_height - BUTTON_SIZE) / 2
            x = x + item.attr_width
            if (!@simple && (i_).equal?(@selected_index))
              x += @curve_width - 2 * @curve_indent
            end
          end
          ((i_ += 1) - 1)
        end
      end
      return changed
    end
    
    typesig { [] }
    def set_item_size
      changed = false
      if (is_disposed)
        return changed
      end
      size = get_size
      if (size.attr_x <= 0 || size.attr_y <= 0)
        return changed
      end
      @x_client = @border_left + @margin_width + @highlight_margin
      if (@on_bottom)
        @y_client = @border_top + @highlight_margin + @margin_height
      else
        @y_client = @border_top + @tab_height + @highlight_header + @margin_height
      end
      @show_chevron = false
      if (@single)
        @show_chevron = true
        if (!(@selected_index).equal?(-1))
          tab = @items[@selected_index]
          gc = SwtGC.new(self)
          width = tab.preferred_width(gc, true, false)
          gc.dispose
          width = Math.min(width, get_right_item_edge - @border_left)
          if (!(tab.attr_height).equal?(@tab_height) || !(tab.attr_width).equal?(width))
            changed = true
            tab.attr_shortened_text = nil
            tab.attr_shortened_text_width = 0
            tab.attr_height = @tab_height
            tab.attr_width = width
            tab.attr_close_rect.attr_width = tab.attr_close_rect.attr_height = 0
            if (@show_close || tab.attr_show_close)
              tab.attr_close_rect.attr_width = BUTTON_SIZE
              tab.attr_close_rect.attr_height = BUTTON_SIZE
            end
          end
        end
        return changed
      end
      if ((@items.attr_length).equal?(0))
        return changed
      end
      widths = nil
      gc = SwtGC.new(self)
      tab_area_width = size.attr_x - @border_left - @border_right - 3
      if (@show_min)
        tab_area_width -= BUTTON_SIZE
      end
      if (@show_max)
        tab_area_width -= BUTTON_SIZE
      end
      if ((@top_right_alignment).equal?(SWT::RIGHT) && !(@top_right).nil?)
        right_size = @top_right.compute_size(SWT::DEFAULT, SWT::DEFAULT, false)
        tab_area_width -= right_size.attr_x + 3
      end
      if (!@simple)
        tab_area_width -= @curve_width - 2 * @curve_indent
      end
      tab_area_width = Math.max(0, tab_area_width)
      # First, try the minimum tab size at full compression.
      min_width = 0
      min_widths = Array.typed(::Java::Int).new(@items.attr_length) { 0 }
      i = 0
      while i < @priority.attr_length
        index = @priority[i]
        min_widths[index] = @items[index].preferred_width(gc, (index).equal?(@selected_index), true)
        min_width += min_widths[index]
        if (min_width > tab_area_width)
          break
        end
        ((i += 1) - 1)
      end
      if (min_width > tab_area_width)
        # full compression required and a chevron
        @show_chevron = @items.attr_length > 1
        if (@show_chevron)
          tab_area_width -= 3 * BUTTON_SIZE / 2
        end
        widths = min_widths
        index = !(@selected_index).equal?(-1) ? @selected_index : 0
        if (tab_area_width < widths[index])
          widths[index] = Math.max(0, tab_area_width)
        end
      else
        max_width = 0
        max_widths = Array.typed(::Java::Int).new(@items.attr_length) { 0 }
        i_ = 0
        while i_ < @items.attr_length
          max_widths[i_] = @items[i_].preferred_width(gc, (i_).equal?(@selected_index), false)
          max_width += max_widths[i_]
          ((i_ += 1) - 1)
        end
        if (max_width <= tab_area_width)
          # no compression required
          widths = max_widths
        else
          # determine compression for each item
          extra = (tab_area_width - min_width) / @items.attr_length
          while (true)
            large = 0
            total_width = 0
            i__ = 0
            while i__ < @items.attr_length
              if (max_widths[i__] > min_widths[i__] + extra)
                total_width += min_widths[i__] + extra
                ((large += 1) - 1)
              else
                total_width += max_widths[i__]
              end
              ((i__ += 1) - 1)
            end
            if (total_width >= tab_area_width)
              ((extra -= 1) + 1)
              break
            end
            if ((large).equal?(0) || tab_area_width - total_width < large)
              break
            end
            ((extra += 1) - 1)
          end
          widths = Array.typed(::Java::Int).new(@items.attr_length) { 0 }
          i__ = 0
          while i__ < @items.attr_length
            widths[i__] = Math.min(max_widths[i__], min_widths[i__] + extra)
            ((i__ += 1) - 1)
          end
        end
      end
      gc.dispose
      i_ = 0
      while i_ < @items.attr_length
        tab = @items[i_]
        width = widths[i_]
        if (!(tab.attr_height).equal?(@tab_height) || !(tab.attr_width).equal?(width))
          changed = true
          tab.attr_shortened_text = nil
          tab.attr_shortened_text_width = 0
          tab.attr_height = @tab_height
          tab.attr_width = width
          tab.attr_close_rect.attr_width = tab.attr_close_rect.attr_height = 0
          if (@show_close || tab.attr_show_close)
            if ((i_).equal?(@selected_index) || @show_unselected_close)
              tab.attr_close_rect.attr_width = BUTTON_SIZE
              tab.attr_close_rect.attr_height = BUTTON_SIZE
            end
          end
        end
        ((i_ += 1) - 1)
      end
      return changed
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver's maximize button as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise.
    # 
    # @param visible the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_maximize_visible(visible)
      check_widget
      if ((@show_max).equal?(visible))
        return
      end
      # display maximize button
      @show_max = visible
      update_items
      redraw
    end
    
    typesig { [SwtLayout] }
    # Sets the layout which is associated with the receiver to be
    # the argument which may be null.
    # <p>
    # Note: No Layout can be set on this Control because it already
    # manages the size and position of its children.
    # </p>
    # 
    # @param layout the receiver's new layout or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_layout(layout)
      check_widget
      return
    end
    
    typesig { [::Java::Boolean] }
    # Sets the maximized state of the receiver.
    # 
    # @param maximize the new maximized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_maximized(maximize)
      check_widget
      if ((@maximized).equal?(maximize))
        return
      end
      if (maximize && @minimized)
        set_minimized(false)
      end
      @maximized = maximize
      redraw(@max_rect.attr_x, @max_rect.attr_y, @max_rect.attr_width, @max_rect.attr_height, false)
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver's minimize button as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise.
    # 
    # @param visible the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_minimize_visible(visible)
      check_widget
      if ((@show_min).equal?(visible))
        return
      end
      # display minimize button
      @show_min = visible
      update_items
      redraw
    end
    
    typesig { [::Java::Boolean] }
    # Sets the minimized state of the receiver.
    # 
    # @param minimize the new minimized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_minimized(minimize)
      check_widget
      if ((@minimized).equal?(minimize))
        return
      end
      if (minimize && @maximized)
        set_maximized(false)
      end
      @minimized = minimize
      redraw(@min_rect.attr_x, @min_rect.attr_y, @min_rect.attr_width, @min_rect.attr_height, false)
    end
    
    typesig { [::Java::Int] }
    # Sets the minimum number of characters that will
    # be displayed in a fully compressed tab.
    # 
    # @param count the minimum number of characters that will be displayed in a fully compressed tab
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_RANGE - if the count is less than zero</li>
    # </ul>
    # 
    # @since 3.0
    def set_minimum_characters(count)
      check_widget
      if (count < 0)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      if ((@min_chars).equal?(count))
        return
      end
      @min_chars = count
      if (update_items)
        redraw_tabs
      end
    end
    
    typesig { [::Java::Boolean] }
    # When there is not enough horizontal space to show all the tabs,
    # by default, tabs are shown sequentially from left to right in
    # order of their index.  When the MRU visibility is turned on,
    # the tabs that are visible will be the tabs most recently selected.
    # Tabs will still maintain their left to right order based on index
    # but only the most recently selected tabs are visible.
    # <p>
    # For example, consider a CTabFolder that contains "Tab 1", "Tab 2",
    # "Tab 3" and "Tab 4" (in order by index).  The user selects
    # "Tab 1" and then "Tab 3".  If the CTabFolder is now
    # compressed so that only two tabs are visible, by default,
    # "Tab 2" and "Tab 3" will be shown ("Tab 3" since it is currently
    # selected and "Tab 2" because it is the previous item in index order).
    # If MRU visibility is enabled, the two visible tabs will be "Tab 1"
    # and "Tab 3" (in that order from left to right).</p>
    # 
    # @param show the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def set_mruvisible(show)
      check_widget
      if ((@mru).equal?(show))
        return
      end
      @mru = show
      if (!@mru)
        idx = @first_index
        next_ = 0
        i = @first_index
        while i < @items.attr_length
          @priority[((next_ += 1) - 1)] = i
          ((i += 1) - 1)
        end
        i_ = 0
        while i_ < idx
          @priority[((next_ += 1) - 1)] = i_
          ((i_ += 1) - 1)
        end
        if (update_items)
          redraw_tabs
        end
      end
    end
    
    typesig { [CTabItem] }
    # Set the selection to the tab at the specified item.
    # 
    # @param item the tab item to be selected
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
    # </ul>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def set_selection(item)
      check_widget
      if ((item).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      index = index_of(item)
      set_selection(index)
    end
    
    typesig { [::Java::Int] }
    # Set the selection to the tab at the specified index.
    # 
    # @param index the index of the tab item to be selected
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(index)
      check_widget
      if (index < 0 || index >= @items.attr_length)
        return
      end
      selection = @items[index]
      if ((@selected_index).equal?(index))
        show_item(selection)
        return
      end
      old_index = @selected_index
      @selected_index = index
      if (!(old_index).equal?(-1))
        @items[old_index].attr_close_image_state = NONE
      end
      selection.attr_close_image_state = NORMAL
      selection.attr_showing = false
      new_control = selection.attr_control
      old_control = nil
      if (!(old_index).equal?(-1))
        old_control = @items[old_index].attr_control
      end
      if (!(new_control).equal?(old_control))
        if (!(new_control).nil? && !new_control.is_disposed)
          new_control.set_bounds(get_client_area)
          new_control.set_visible(true)
        end
        if (!(old_control).nil? && !old_control.is_disposed)
          old_control.set_visible(false)
        end
      end
      show_item(selection)
      redraw
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def set_selection(index, notify)
      old_selected_index = @selected_index
      set_selection(index)
      if (notify && !(@selected_index).equal?(old_selected_index) && !(@selected_index).equal?(-1))
        event = Event.new
        event.attr_item = get_item(@selected_index)
        notify_listeners(SWT::Selection, event)
      end
    end
    
    typesig { [Color] }
    # Sets the receiver's selection background color to the color specified
    # by the argument, or to the default system color for the control
    # if the argument is null.
    # 
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_selection_background(color)
      check_widget
      set_selection_highlight_gradient_color(nil)
      if ((@selection_background).equal?(color))
        return
      end
      if ((color).nil?)
        color = get_display.get_system_color(SELECTION_BACKGROUND)
      end
      @selection_background = color
      if (@selected_index > -1)
        redraw
      end
    end
    
    typesig { [Array.typed(Color), Array.typed(::Java::Int)] }
    # Specify a gradient of colours to be draw in the background of the selected tab.
    # For example to draw a gradient that varies from dark blue to blue and then to
    # white, use the following call to setBackground:
    # <pre>
    # cfolder.setBackground(new Color[]{display.getSystemColor(SWT.COLOR_DARK_BLUE),
    # display.getSystemColor(SWT.COLOR_BLUE),
    # display.getSystemColor(SWT.COLOR_WHITE),
    # display.getSystemColor(SWT.COLOR_WHITE)},
    # new int[] {25, 50, 100});
    # </pre>
    # 
    # @param colors an array of Color that specifies the colors to appear in the gradient
    # in order of appearance left to right.  The value <code>null</code> clears the
    # background gradient. The value <code>null</code> can be used inside the array of
    # Color to specify the background color.
    # @param percents an array of integers between 0 and 100 specifying the percent of the width
    # of the widget at which the color should change.  The size of the percents array must be one
    # less than the size of the colors array.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def set_selection_background(colors, percents)
      set_selection_background(colors, percents, false)
    end
    
    typesig { [Array.typed(Color), Array.typed(::Java::Int), ::Java::Boolean] }
    # Specify a gradient of colours to be draw in the background of the selected tab.
    # For example to draw a vertical gradient that varies from dark blue to blue and then to
    # white, use the following call to setBackground:
    # <pre>
    # cfolder.setBackground(new Color[]{display.getSystemColor(SWT.COLOR_DARK_BLUE),
    # display.getSystemColor(SWT.COLOR_BLUE),
    # display.getSystemColor(SWT.COLOR_WHITE),
    # display.getSystemColor(SWT.COLOR_WHITE)},
    # new int[] {25, 50, 100}, true);
    # </pre>
    # 
    # @param colors an array of Color that specifies the colors to appear in the gradient
    # in order of appearance left to right.  The value <code>null</code> clears the
    # background gradient. The value <code>null</code> can be used inside the array of
    # Color to specify the background color.
    # @param percents an array of integers between 0 and 100 specifying the percent of the width
    # of the widget at which the color should change.  The size of the percents array must be one
    # less than the size of the colors array.
    # 
    # @param vertical indicate the direction of the gradient.  True is vertical and false is horizontal.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def set_selection_background(colors, percents, vertical)
      check_widget
      colors_length = 0
      highlight_begin_color = nil # null == no highlight
      if (!(colors).nil?)
        # The colors array can optionally have an extra entry which describes the highlight top color
        # Thus its either one or two larger than the percents array
        if ((percents).nil? || !(((percents.attr_length).equal?(colors.attr_length - 1)) || ((percents.attr_length).equal?(colors.attr_length - 2))))
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i = 0
        while i < percents.attr_length
          if (percents[i] < 0 || percents[i] > 100)
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          if (i > 0 && percents[i] < percents[i - 1])
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          ((i += 1) - 1)
        end
        # If the colors is exactly two more than percents then last is highlight
        # Keep track of *real* colorsLength (minus the highlight)
        if ((percents.attr_length).equal?(colors.attr_length - 2))
          highlight_begin_color = colors[colors.attr_length - 1]
          colors_length = colors.attr_length - 1
        else
          colors_length = colors.attr_length
        end
        if (get_display.get_depth < 15)
          # Don't use gradients on low color displays
          colors = Array.typed(Color).new([colors[colors_length - 1]])
          colors_length = colors.attr_length
          percents = Array.typed(::Java::Int).new([])
        end
      else
        colors_length = 0
      end
      # Are these settings the same as before?
      if ((@selection_bg_image).nil?)
        if ((!(@selection_gradient_colors).nil?) && (!(colors).nil?) && ((@selection_gradient_colors.attr_length).equal?(colors_length)))
          same = false
          i = 0
          while i < @selection_gradient_colors.attr_length
            if ((@selection_gradient_colors[i]).nil?)
              same = (colors[i]).nil?
            else
              same = (@selection_gradient_colors[i] == colors[i])
            end
            if (!same)
              break
            end
            ((i += 1) - 1)
          end
          if (same)
            i_ = 0
            while i_ < @selection_gradient_percents.attr_length
              same = (@selection_gradient_percents[i_]).equal?(percents[i_])
              if (!same)
                break
              end
              ((i_ += 1) - 1)
            end
          end
          if (same && (@selection_gradient_vertical).equal?(vertical))
            return
          end
        end
      else
        @selection_bg_image = nil
      end
      # Store the new settings
      if ((colors).nil?)
        @selection_gradient_colors = nil
        @selection_gradient_percents = nil
        @selection_gradient_vertical = false
        set_selection_background(nil)
        set_selection_highlight_gradient_color(nil)
      else
        @selection_gradient_colors = Array.typed(Color).new(colors_length) { nil }
        i = 0
        while i < colors_length
          @selection_gradient_colors[i] = colors[i]
          (i += 1)
        end
        @selection_gradient_percents = Array.typed(::Java::Int).new(percents.attr_length) { 0 }
        i_ = 0
        while i_ < percents.attr_length
          @selection_gradient_percents[i_] = percents[i_]
          (i_ += 1)
        end
        @selection_gradient_vertical = vertical
        set_selection_background(@selection_gradient_colors[@selection_gradient_colors.attr_length - 1])
        set_selection_highlight_gradient_color(highlight_begin_color)
      end
      # Refresh with the new settings
      if (@selected_index > -1)
        redraw
      end
    end
    
    typesig { [Color] }
    # Set the color for the highlight start for selected tabs.
    # Update the cache of highlight gradient colors if required.
    def set_selection_highlight_gradient_color(start)
      # Set to null to match all the early return cases.
      # For early returns, don't realloc the cache, we may get a cache hit next time we're given the highlight
      @selection_highlight_gradient_begin = nil
      if ((start).nil?)
        return
      end
      # don't bother on low colour
      if (get_display.get_depth < 15)
        return
      end
      # don't bother if we don't have a background gradient
      if (@selection_gradient_colors.attr_length < 2)
        return
      end
      # OK we know its a valid gradient now
      @selection_highlight_gradient_begin = start
      if (!is_selection_highlight_colors_cache_hit(start))
        create_selection_highlight_gradient_colors(start)
      end # if no cache hit then compute new ones
    end
    
    typesig { [Color] }
    # Return true if given start color, the cache of highlight colors we have
    # would match the highlight colors we'd compute.
    def is_selection_highlight_colors_cache_hit(start)
      if ((@selection_highlight_gradient_colors_cache).nil?)
        return false
      end
      # this case should never happen but check to be safe before accessing array indexes
      if (@selection_highlight_gradient_colors_cache.attr_length < 2)
        return false
      end
      highlight_begin = @selection_highlight_gradient_colors_cache[0]
      highlight_end = @selection_highlight_gradient_colors_cache[@selection_highlight_gradient_colors_cache.attr_length - 1]
      if (!(highlight_begin == start))
        return false
      end
      # Compare number of colours we have vs. we'd compute
      if (!(@selection_highlight_gradient_colors_cache.attr_length).equal?(@tab_height))
        return false
      end
      # Compare existing highlight end to what it would be (selectionBackground)
      if (!(highlight_end == @selection_background))
        return false
      end
      return true
    end
    
    typesig { [Image] }
    # Set the image to be drawn in the background of the selected tab.  Image
    # is stretched or compressed to cover entire selection tab area.
    # 
    # @param image the image to be drawn in the background
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection_background(image)
      check_widget
      set_selection_highlight_gradient_color(nil)
      if ((image).equal?(@selection_bg_image))
        return
      end
      if (!(image).nil?)
        @selection_gradient_colors = nil
        @selection_gradient_percents = nil
        dispose_selection_highlight_gradient_colors
      end
      @selection_bg_image = image
      if (@selected_index > -1)
        redraw
      end
    end
    
    typesig { [Color] }
    # Set the foreground color of the selected tab.
    # 
    # @param color the color of the text displayed in the selected tab
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection_foreground(color)
      check_widget
      if ((@selection_foreground).equal?(color))
        return
      end
      if ((color).nil?)
        color = get_display.get_system_color(SELECTION_FOREGROUND)
      end
      @selection_foreground = color
      if (@selected_index > -1)
        redraw
      end
    end
    
    typesig { [Color] }
    # Allocate colors for the highlight line.
    # Colours will be a gradual blend ranging from to.
    # Blend length will be tab height.
    # Recompute this if tab height changes.
    # Could remain null if there'd be no gradient (start=end or low colour display)
    def create_selection_highlight_gradient_colors(start)
      dispose_selection_highlight_gradient_colors # dispose if existing
      if ((start).nil?)
        # shouldn't happen but just to be safe
        return
      end
      # alloc colours for entire height to ensure it matches wherever we stop drawing
      fade_gradient_size = @tab_height
      from = start.get_rgb
      to = @selection_background.get_rgb
      @selection_highlight_gradient_colors_cache = Array.typed(Color).new(fade_gradient_size) { nil }
      denom = fade_gradient_size - 1
      i = 0
      while i < fade_gradient_size
        prop_from = denom - i
        prop_to = i
        red = (to.attr_red * prop_to + from.attr_red * prop_from) / denom
        green = (to.attr_green * prop_to + from.attr_green * prop_from) / denom
        blue = (to.attr_blue * prop_to + from.attr_blue * prop_from) / denom
        @selection_highlight_gradient_colors_cache[i] = Color.new(get_display, red, green, blue)
        ((i += 1) - 1)
      end
    end
    
    typesig { [] }
    def dispose_selection_highlight_gradient_colors
      if ((@selection_highlight_gradient_colors_cache).nil?)
        return
      end
      i = 0
      while i < @selection_highlight_gradient_colors_cache.attr_length
        @selection_highlight_gradient_colors_cache[i].dispose
        ((i += 1) - 1)
      end
      @selection_highlight_gradient_colors_cache = nil
    end
    
    typesig { [] }
    # Return the gradient start color for selected tabs, which is the start of the tab fade
    # (end is selectionBackground).
    def get_selection_background_gradient_begin
      if ((@selection_gradient_colors).nil?)
        return get_selection_background
      end
      if ((@selection_gradient_colors.attr_length).equal?(0))
        return get_selection_background
      end
      return @selection_gradient_colors[0]
    end
    
    typesig { [::Java::Boolean] }
    # Sets the shape that the CTabFolder will use to render itself.
    # 
    # @param simple <code>true</code> if the CTabFolder should render itself in a simple, traditional style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_simple(simple)
      check_widget
      if (!(@simple).equal?(simple))
        @simple = simple
        rect_before = get_client_area
        update_items
        rect_after = get_client_area
        if (!(rect_before == rect_after))
          notify_listeners(SWT::Resize, Event.new)
        end
        redraw
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the number of tabs that the CTabFolder should display
    # 
    # @param single <code>true</code> if only the selected tab should be displayed otherwise, multiple tabs will be shown.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_single(single)
      check_widget
      if (!(@single).equal?(single))
        @single = single
        if (!single)
          i = 0
          while i < @items.attr_length
            if (!(i).equal?(@selected_index) && (@items[i].attr_close_image_state).equal?(NORMAL))
              @items[i].attr_close_image_state = NONE
            end
            ((i += 1) - 1)
          end
        end
        rect_before = get_client_area
        update_items
        rect_after = get_client_area
        if (!(rect_before == rect_after))
          notify_listeners(SWT::Resize, Event.new)
        end
        redraw
      end
    end
    
    typesig { [::Java::Int] }
    # Specify a fixed height for the tab items.  If no height is specified,
    # the default height is the height of the text or the image, whichever
    # is greater. Specifying a height of -1 will revert to the default height.
    # 
    # @param height the pixel value of the height or -1
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if called with a height of less than 0</li>
    # </ul>
    def set_tab_height(height)
      check_widget
      if (height < -1)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @fixed_tab_height = height
      update_tab_height(false)
    end
    
    typesig { [::Java::Int] }
    # Specify whether the tabs should appear along the top of the folder
    # or along the bottom of the folder.
    # 
    # @param position <code>SWT.TOP</code> for tabs along the top or <code>SWT.BOTTOM</code> for tabs along the bottom
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the position value is not either SWT.TOP or SWT.BOTTOM</li>
    # </ul>
    # 
    # @since 3.0
    def set_tab_position(position)
      check_widget
      if (!(position).equal?(SWT::TOP) && !(position).equal?(SWT::BOTTOM))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@on_bottom).equal?(((position).equal?(SWT::BOTTOM))))
        @on_bottom = (position).equal?(SWT::BOTTOM)
        @border_top = @on_bottom ? @border_left : 0
        @border_bottom = @on_bottom ? 0 : @border_right
        update_tab_height(true)
        rect_before = get_client_area
        update_items
        rect_after = get_client_area
        if (!(rect_before == rect_after))
          notify_listeners(SWT::Resize, Event.new)
        end
        redraw
      end
    end
    
    typesig { [Control] }
    # Set the control that appears in the top right corner of the tab folder.
    # Typically this is a close button or a composite with a Menu and close button.
    # The topRight control is optional.  Setting the top right control to null will
    # remove it from the tab folder.
    # 
    # @param control the control to be displayed in the top right corner or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the control is not a child of this CTabFolder</li>
    # </ul>
    # 
    # @since 2.1
    def set_top_right(control)
      set_top_right(control, SWT::RIGHT)
    end
    
    typesig { [Control, ::Java::Int] }
    # Set the control that appears in the top right corner of the tab folder.
    # Typically this is a close button or a composite with a Menu and close button.
    # The topRight control is optional.  Setting the top right control to null
    # will remove it from the tab folder.
    # <p>
    # The alignment parameter sets the layout of the control in the tab area.
    # <code>SWT.RIGHT</code> will cause the control to be positioned on the far
    # right of the folder and it will have its default size.  <code>SWT.FILL</code>
    # will size the control to fill all the available space to the right of the
    # last tab.  If there is no available space, the control will not be visible.
    # </p>
    # 
    # @param control the control to be displayed in the top right corner or null
    # @param alignment <code>SWT.RIGHT</code> or <code>SWT.FILL</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the control is not a child of this CTabFolder</li>
    # </ul>
    # 
    # @since 3.0
    def set_top_right(control, alignment)
      check_widget
      if (!(alignment).equal?(SWT::RIGHT) && !(alignment).equal?(SWT::FILL))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(control).nil? && !(control.get_parent).equal?(self))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @top_right = control
      @top_right_alignment = alignment
      if (update_items)
        redraw
      end
    end
    
    typesig { [::Java::Boolean] }
    # Specify whether the close button appears
    # when the user hovers over an unselected tabs.
    # 
    # @param visible <code>true</code> makes the close button appear
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_unselected_close_visible(visible)
      check_widget
      if ((@show_unselected_close).equal?(visible))
        return
      end
      # display close button when mouse hovers
      @show_unselected_close = visible
      update_items
      redraw
    end
    
    typesig { [::Java::Boolean] }
    # Specify whether the image appears on unselected tabs.
    # 
    # @param visible <code>true</code> makes the image appear
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_unselected_image_visible(visible)
      check_widget
      if ((@show_unselected_image).equal?(visible))
        return
      end
      # display image on unselected items
      @show_unselected_image = visible
      update_items
      redraw
    end
    
    typesig { [CTabItem] }
    # Shows the item.  If the item is already showing in the receiver,
    # this method simply returns.  Otherwise, the items are scrolled until
    # the item is visible.
    # 
    # @param item the item to be shown
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see CTabFolder#showSelection()
    # 
    # @since 2.0
    def show_item(item)
      check_widget
      if ((item).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      index = index_of(item)
      if ((index).equal?(-1))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      idx = -1
      i = 0
      while i < @priority.attr_length
        if ((@priority[i]).equal?(index))
          idx = i
          break
        end
        ((i += 1) - 1)
      end
      if (@mru)
        # move to front of mru order
        new_priority = Array.typed(::Java::Int).new(@priority.attr_length) { 0 }
        System.arraycopy(@priority, 0, new_priority, 1, idx)
        System.arraycopy(@priority, idx + 1, new_priority, idx + 1, @priority.attr_length - idx - 1)
        new_priority[0] = index
        @priority = new_priority
      end
      if (item.is_showing)
        return
      end
      update_items(index)
      redraw_tabs
    end
    
    typesig { [Rectangle] }
    def show_list(rect)
      if ((@items.attr_length).equal?(0) || !@show_chevron)
        return
      end
      if ((@show_menu).nil? || @show_menu.is_disposed)
        @show_menu = Menu.new(self)
      else
        items = @show_menu.get_items
        i = 0
        while i < items.attr_length
          items[i].dispose
          ((i += 1) - 1)
        end
      end
      id = "CTabFolder_showList_Index" # $NON-NLS-1$
      i = 0
      while i < @items.attr_length
        tab = @items[i]
        if (tab.attr_showing)
          ((i += 1) - 1)
          next
        end
        item = MenuItem.new(@show_menu, SWT::NONE)
        item.set_text(tab.get_text)
        item.set_image(tab.get_image)
        item.set_data(id, tab)
        item.add_selection_listener(Class.new(SelectionAdapter.class == Class ? SelectionAdapter : Object) do
          extend LocalClass
          include_class_members CTabFolder
          include SelectionAdapter if SelectionAdapter.class == Module
          
          typesig { [SelectionEvent] }
          define_method :widget_selected do |e|
            menu_item = e.attr_widget
            index = index_of(menu_item.get_data(id))
            @local_class_parent.set_selection(index, true)
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
        ((i += 1) - 1)
      end
      x = rect.attr_x
      y = rect.attr_y + rect.attr_height
      location = get_display.map(self, nil, x, y)
      @show_menu.set_location(location.attr_x, location.attr_y)
      @show_menu.set_visible(true)
    end
    
    typesig { [] }
    # Shows the selection.  If the selection is already showing in the receiver,
    # this method simply returns.  Otherwise, the items are scrolled until
    # the selection is visible.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see CTabFolder#showItem(CTabItem)
    # 
    # @since 2.0
    def show_selection
      check_widget
      if (!(@selected_index).equal?(-1))
        show_item(get_selection)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def __set_tool_tip_text(x, y)
      old_tip = get_tool_tip_text
      new_tip = __get_tool_tip(x, y)
      if ((new_tip).nil? || !(new_tip == old_tip))
        set_tool_tip_text(new_tip)
      end
    end
    
    typesig { [] }
    def update_items
      return update_items(@selected_index)
    end
    
    typesig { [::Java::Int] }
    def update_items(show_index)
      if (!@single && !@mru && !(show_index).equal?(-1))
        # make sure selected item will be showing
        first_index = show_index
        if (@priority[0] < show_index)
          max_width = get_right_item_edge - @border_left
          if (!@simple)
            max_width -= @curve_width - 2 * @curve_indent
          end
          width = 0
          widths = Array.typed(::Java::Int).new(@items.attr_length) { 0 }
          gc = SwtGC.new(self)
          i = @priority[0]
          while i <= show_index
            widths[i] = @items[i].preferred_width(gc, (i).equal?(@selected_index), true)
            width += widths[i]
            if (width > max_width)
              break
            end
            ((i += 1) - 1)
          end
          if (width > max_width)
            width = 0
            i_ = show_index
            while i_ >= 0
              if ((widths[i_]).equal?(0))
                widths[i_] = @items[i_].preferred_width(gc, (i_).equal?(@selected_index), true)
              end
              width += widths[i_]
              if (width > max_width)
                break
              end
              first_index = i_
              ((i_ -= 1) + 1)
            end
          else
            first_index = @priority[0]
            i_ = show_index + 1
            while i_ < @items.attr_length
              widths[i_] = @items[i_].preferred_width(gc, (i_).equal?(@selected_index), true)
              width += widths[i_]
              if (width >= max_width)
                break
              end
              ((i_ += 1) - 1)
            end
            if (width < max_width)
              i__ = @priority[0] - 1
              while i__ >= 0
                if ((widths[i__]).equal?(0))
                  widths[i__] = @items[i__].preferred_width(gc, (i__).equal?(@selected_index), true)
                end
                width += widths[i__]
                if (width > max_width)
                  break
                end
                first_index = i__
                ((i__ -= 1) + 1)
              end
            end
          end
          gc.dispose
        end
        if (!(first_index).equal?(@priority[0]))
          index = 0
          i = first_index
          while i < @items.attr_length
            @priority[((index += 1) - 1)] = i
            ((i += 1) - 1)
          end
          i_ = 0
          while i_ < first_index
            @priority[((index += 1) - 1)] = i_
            ((i_ += 1) - 1)
          end
        end
      end
      old_show_chevron = @show_chevron
      changed = set_item_size
      changed |= set_item_location
      set_button_bounds
      changed |= !(@show_chevron).equal?(old_show_chevron)
      if (changed && !(get_tool_tip_text).nil?)
        pt = get_display.get_cursor_location
        pt = to_control(pt)
        __set_tool_tip_text(pt.attr_x, pt.attr_y)
      end
      return changed
    end
    
    typesig { [::Java::Boolean] }
    def update_tab_height(force)
      style = get_style
      if ((@fixed_tab_height).equal?(0) && !((style & SWT::FLAT)).equal?(0) && ((style & SWT::BORDER)).equal?(0))
        @highlight_header = 0
      end
      old_height = @tab_height
      if (!(@fixed_tab_height).equal?(SWT::DEFAULT))
        @tab_height = (@fixed_tab_height).equal?(0) ? 0 : @fixed_tab_height + 1 # +1 for line drawn across top of tab
      else
        temp_height = 0
        gc = SwtGC.new(self)
        if ((@items.attr_length).equal?(0))
          temp_height = gc.text_extent("Default", CTabItem::FLAGS).attr_y + CTabItem::TOP_MARGIN + CTabItem::BOTTOM_MARGIN # $NON-NLS-1$
        else
          i = 0
          while i < @items.attr_length
            temp_height = Math.max(temp_height, @items[i].preferred_height(gc))
            ((i += 1) - 1)
          end
        end
        gc.dispose
        @tab_height = temp_height
      end
      if (!force && (@tab_height).equal?(old_height))
        return false
      end
      @old_size = nil
      if (@on_bottom)
        d = @tab_height - 12
        @curve = Array.typed(::Java::Int).new([0, 13 + d, 0, 12 + d, 2, 12 + d, 3, 11 + d, 5, 11 + d, 6, 10 + d, 7, 10 + d, 9, 8 + d, 10, 8 + d, 11, 7 + d, 11 + d, 7, 12 + d, 6, 13 + d, 6, 15 + d, 4, 16 + d, 4, 17 + d, 3, 19 + d, 3, 20 + d, 2, 22 + d, 2, 23 + d, 1])
        @curve_width = 26 + d
        @curve_indent = @curve_width / 3
      else
        d = @tab_height - 12
        @curve = Array.typed(::Java::Int).new([0, 0, 0, 1, 2, 1, 3, 2, 5, 2, 6, 3, 7, 3, 9, 5, 10, 5, 11, 6, 11 + d, 6 + d, 12 + d, 7 + d, 13 + d, 7 + d, 15 + d, 9 + d, 16 + d, 9 + d, 17 + d, 10 + d, 19 + d, 10 + d, 20 + d, 11 + d, 22 + d, 11 + d, 23 + d, 12 + d])
        @curve_width = 26 + d
        @curve_indent = @curve_width / 3
        # this could be static but since values depend on curve, better to keep in one place
        @top_curve_highlight_start = Array.typed(::Java::Int).new([0, 2, 1, 2, 2, 2, 3, 3, 4, 3, 5, 3, 6, 4, 7, 4, 8, 5, 9, 6, 10, 6])
        # also, by adding in 'd' here we save some math cost when drawing the curve
        @top_curve_highlight_end = Array.typed(::Java::Int).new([10 + d, 6 + d, 11 + d, 7 + d, 12 + d, 8 + d, 13 + d, 8 + d, 14 + d, 9 + d, 15 + d, 10 + d, 16 + d, 10 + d, 17 + d, 11 + d, 18 + d, 11 + d, 19 + d, 11 + d, 20 + d, 12 + d, 21 + d, 12 + d, 22 + d, 12 + d])
      end
      notify_listeners(SWT::Resize, Event.new)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def __get_tool_tip(x, y)
      if (@show_min && @min_rect.contains(x, y))
        return @minimized ? SWT.get_message("SWT_Restore") : SWT.get_message("SWT_Minimize")
      end # $NON-NLS-1$ //$NON-NLS-2$
      if (@show_max && @max_rect.contains(x, y))
        return @maximized ? SWT.get_message("SWT_Restore") : SWT.get_message("SWT_Maximize")
      end # $NON-NLS-1$ //$NON-NLS-2$
      if (@show_chevron && @chevron_rect.contains(x, y))
        return SWT.get_message("SWT_ShowList")
      end # $NON-NLS-1$
      item = get_item(Point.new(x, y))
      if ((item).nil?)
        return nil
      end
      if (!item.attr_showing)
        return nil
      end
      if ((@show_close || item.attr_show_close) && item.attr_close_rect.contains(x, y))
        return SWT.get_message("SWT_Close") # $NON-NLS-1$
      end
      return item.get_tool_tip_text
    end
    
    private
    alias_method :initialize__ctab_folder, :initialize
  end
  
end
