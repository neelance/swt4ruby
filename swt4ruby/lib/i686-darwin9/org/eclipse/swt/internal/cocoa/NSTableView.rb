require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module NSTableViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTableView < NSTableViewImports.const_get :NSControl
    include_class_members NSTableViewImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    typesig { [::Java::Int] }
    # long
    def initialize(id)
      super(id)
    end
    
    typesig { [Id] }
    def initialize(id)
      super(id)
    end
    
    typesig { [NSTableColumn] }
    def add_table_column(column)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_table_column_, !(column).nil? ? column.attr_id : 0)
    end
    
    typesig { [] }
    def allows_column_reordering
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_allows_column_reordering)
    end
    
    typesig { [NSIndexSet, NSPoint] }
    def can_drag_rows_with_indexes(row_indexes, mouse_down_point)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_can_drag_rows_with_indexes_at_point_, !(row_indexes).nil? ? row_indexes.attr_id : 0, mouse_down_point)
    end
    
    typesig { [] }
    # long
    def clicked_column
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_clicked_column)
    end
    
    typesig { [] }
    # long
    def clicked_row
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_clicked_row)
    end
    
    typesig { [NSPoint] }
    # long
    def column_at_point(point)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_column_at_point_, point)
    end
    
    typesig { [NSRect] }
    def column_indexes_in_rect(rect)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_column_indexes_in_rect_, rect)
      return !(result).equal?(0) ? NSIndexSet.new(result) : nil
    end
    
    typesig { [Id] }
    # long
    def column_with_identifier(identifier)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_column_with_identifier_, !(identifier).nil? ? identifier.attr_id : 0)
    end
    
    typesig { [Id] }
    def deselect_all(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_deselect_all_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def deselect_row(row)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_deselect_row_, row)
    end
    
    typesig { [NSIndexSet, NSArray, NSEvent, ::Java::Int] }
    # long
    def drag_image_for_rows_with_indexes(drag_rows, table_columns, drag_event, drag_image_offset)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_drag_image_for_rows_with_indexes_table_columns_event_offset_, !(drag_rows).nil? ? drag_rows.attr_id : 0, !(table_columns).nil? ? table_columns.attr_id : 0, !(drag_event).nil? ? drag_event.attr_id : 0, drag_image_offset)
      return !(result).equal?(0) ? NSImage.new(result) : nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def frame_of_cell_at_column(column, row)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_frame_of_cell_at_column_row_, column, row)
      return result
    end
    
    typesig { [] }
    def header_view
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_header_view)
      return !(result).equal?(0) ? NSTableHeaderView.new(result) : nil
    end
    
    typesig { [NSRect] }
    def highlight_selection_in_clip_rect(clip_rect)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_highlight_selection_in_clip_rect_, clip_rect)
    end
    
    typesig { [] }
    def intercell_spacing
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_intercell_spacing)
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    def is_row_selected(row)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_row_selected_, row)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def move_column(column, new_index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_move_column_to_column_, column, new_index)
    end
    
    typesig { [] }
    def note_number_of_rows_changed
      OS.objc_msg_send(self.attr_id, OS.attr_sel_note_number_of_rows_changed)
    end
    
    typesig { [] }
    # long
    def number_of_columns
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_number_of_columns)
    end
    
    typesig { [] }
    # long
    def number_of_rows
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_number_of_rows)
    end
    
    typesig { [] }
    # long
    def number_of_selected_rows
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_number_of_selected_rows)
    end
    
    typesig { [::Java::Int] }
    # long
    def rect_of_column(column)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_rect_of_column_, column)
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    def rect_of_row(row)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_rect_of_row_, row)
      return result
    end
    
    typesig { [] }
    def reload_data
      OS.objc_msg_send(self.attr_id, OS.attr_sel_reload_data)
    end
    
    typesig { [NSTableColumn] }
    def remove_table_column(column)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_table_column_, !(column).nil? ? column.attr_id : 0)
    end
    
    typesig { [NSPoint] }
    # long
    def row_at_point(point)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_row_at_point_, point)
    end
    
    typesig { [] }
    # double
    def row_height
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_row_height)).to_f
    end
    
    typesig { [NSRect] }
    def rows_in_rect(rect)
      result = NSRange.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_rows_in_rect_, rect)
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    def scroll_column_to_visible(column)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_scroll_column_to_visible_, column)
    end
    
    typesig { [::Java::Int] }
    # long
    def scroll_row_to_visible(row)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_scroll_row_to_visible_, row)
    end
    
    typesig { [Id] }
    def select_all(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_select_all_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [NSIndexSet, ::Java::Boolean] }
    def select_row_indexes(indexes, extend)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_select_row_indexes_by_extending_selection_, !(indexes).nil? ? indexes.attr_id : 0, extend)
    end
    
    typesig { [] }
    # long
    def selected_row
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_selected_row)
    end
    
    typesig { [] }
    def selected_row_indexes
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_selected_row_indexes)
      return !(result).equal?(0) ? NSIndexSet.new(result) : nil
    end
    
    typesig { [::Java::Boolean] }
    def set_allows_column_reordering(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_allows_column_reordering_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_allows_multiple_selection(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_allows_multiple_selection_, flag)
    end
    
    typesig { [NSColor] }
    def set_background_color(color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_background_color_, !(color).nil? ? color.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_column_autoresizing_style(style)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_column_autoresizing_style_, style)
    end
    
    typesig { [Id] }
    def set_data_source(a_source)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_data_source_, !(a_source).nil? ? a_source.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_delegate(delegate)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_delegate_, !(delegate).nil? ? delegate.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_double_action(a_selector)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_double_action_, a_selector)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def set_drop_row(row, op)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_drop_row_drop_operation_, row, op)
    end
    
    typesig { [NSTableHeaderView] }
    def set_header_view(header_view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_header_view_, !(header_view).nil? ? header_view.attr_id : 0)
    end
    
    typesig { [NSTableColumn] }
    def set_highlighted_table_column(tc)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_highlighted_table_column_, !(tc).nil? ? tc.attr_id : 0)
    end
    
    typesig { [NSImage, NSTableColumn] }
    def set_indicator_image(an_image, tc)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_indicator_image_in_table_column_, !(an_image).nil? ? an_image.attr_id : 0, !(tc).nil? ? tc.attr_id : 0)
    end
    
    typesig { [NSSize] }
    def set_intercell_spacing(a_size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_intercell_spacing_, a_size)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_row_height(row_height)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_row_height_, row_height)
    end
    
    typesig { [::Java::Boolean] }
    def set_uses_alternating_row_background_colors(use_alternating_row_colors)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_uses_alternating_row_background_colors_, use_alternating_row_colors)
    end
    
    typesig { [] }
    def table_columns
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_table_columns)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [] }
    def tile
      OS.objc_msg_send(self.attr_id, OS.attr_sel_tile)
    end
    
    typesig { [] }
    def uses_alternating_row_background_colors
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_uses_alternating_row_background_colors)
    end
    
    class_module.module_eval {
      typesig { [] }
      # long
      def cell_class
        return OS.objc_msg_send(OS.attr_class_nstable_view, OS.attr_sel_cell_class)
      end
      
      typesig { [::Java::Int] }
      # long
      def set_cell_class(factory_id)
        OS.objc_msg_send(OS.attr_class_nstable_view, OS.attr_sel_set_cell_class_, factory_id)
      end
    }
    
    private
    alias_method :initialize__nstable_view, :initialize
  end
  
end
