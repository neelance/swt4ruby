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
  module STImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
    }
  end
  
  # This class provides access to the public constants provided by <code>StyledText</code>.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ST 
    include_class_members STImports
    
    class_module.module_eval {
      # Navigation Key Actions. Key bindings for the actions are set
      # by the StyledText widget.
      const_set_lazy(:LINE_UP) { 16777217 }
      const_attr_reader  :LINE_UP
      
      # binding = SWT.ARROW_UP
      const_set_lazy(:LINE_DOWN) { 16777218 }
      const_attr_reader  :LINE_DOWN
      
      # binding = SWT.ARROW_DOWN
      const_set_lazy(:LINE_START) { 16777223 }
      const_attr_reader  :LINE_START
      
      # binding = SWT.HOME
      const_set_lazy(:LINE_END) { 16777224 }
      const_attr_reader  :LINE_END
      
      # binding = SWT.END
      const_set_lazy(:COLUMN_PREVIOUS) { 16777219 }
      const_attr_reader  :COLUMN_PREVIOUS
      
      # binding = SWT.ARROW_LEFT
      const_set_lazy(:COLUMN_NEXT) { 16777220 }
      const_attr_reader  :COLUMN_NEXT
      
      # binding = SWT.ARROW_RIGHT
      const_set_lazy(:PAGE_UP) { 16777221 }
      const_attr_reader  :PAGE_UP
      
      # binding = SWT.PAGE_UP
      const_set_lazy(:PAGE_DOWN) { 16777222 }
      const_attr_reader  :PAGE_DOWN
      
      # binding = SWT.PAGE_DOWN
      const_set_lazy(:WORD_PREVIOUS) { 17039363 }
      const_attr_reader  :WORD_PREVIOUS
      
      # binding = SWT.MOD1 + SWT.ARROW_LEFT
      const_set_lazy(:WORD_NEXT) { 17039364 }
      const_attr_reader  :WORD_NEXT
      
      # binding = SWT.MOD1 + SWT.ARROW_RIGHT
      const_set_lazy(:TEXT_START) { 17039367 }
      const_attr_reader  :TEXT_START
      
      # binding = SWT.MOD1 + SWT.HOME
      const_set_lazy(:TEXT_END) { 17039368 }
      const_attr_reader  :TEXT_END
      
      # binding = SWT.MOD1 + SWT.END
      const_set_lazy(:WINDOW_START) { 17039365 }
      const_attr_reader  :WINDOW_START
      
      # binding = SWT.MOD1 + SWT.PAGE_UP
      const_set_lazy(:WINDOW_END) { 17039366 }
      const_attr_reader  :WINDOW_END
      
      # binding = SWT.MOD1 + SWT.PAGE_DOWN
      # 
      # Selection Key Actions
      const_set_lazy(:SELECT_ALL) { 262209 }
      const_attr_reader  :SELECT_ALL
      
      # binding = SWT.MOD1 + 'A'
      const_set_lazy(:SELECT_LINE_UP) { 16908289 }
      const_attr_reader  :SELECT_LINE_UP
      
      # binding = SWT.MOD2 + SWT.ARROW_UP
      const_set_lazy(:SELECT_LINE_DOWN) { 16908290 }
      const_attr_reader  :SELECT_LINE_DOWN
      
      # binding = SWT.MOD2 + SWT.ARROW_DOWN
      const_set_lazy(:SELECT_LINE_START) { 16908295 }
      const_attr_reader  :SELECT_LINE_START
      
      # binding = SWT.MOD2 + SWT.HOME
      const_set_lazy(:SELECT_LINE_END) { 16908296 }
      const_attr_reader  :SELECT_LINE_END
      
      # binding = SWT.MOD2 + SWT.END
      const_set_lazy(:SELECT_COLUMN_PREVIOUS) { 16908291 }
      const_attr_reader  :SELECT_COLUMN_PREVIOUS
      
      # binding = SWT.MOD2 + SWT.ARROW_LEFT
      const_set_lazy(:SELECT_COLUMN_NEXT) { 16908292 }
      const_attr_reader  :SELECT_COLUMN_NEXT
      
      # binding = SWT.MOD2 + SWT.ARROW_RIGHT
      const_set_lazy(:SELECT_PAGE_UP) { 16908293 }
      const_attr_reader  :SELECT_PAGE_UP
      
      # binding = SWT.MOD2 + SWT.PAGE_UP
      const_set_lazy(:SELECT_PAGE_DOWN) { 16908294 }
      const_attr_reader  :SELECT_PAGE_DOWN
      
      # binding = SWT.MOD2 + SWT.PAGE_DOWN
      const_set_lazy(:SELECT_WORD_PREVIOUS) { 17170435 }
      const_attr_reader  :SELECT_WORD_PREVIOUS
      
      # binding = SWT.MOD1 + SWT.MOD2 + SWT.ARROW_LEFT
      const_set_lazy(:SELECT_WORD_NEXT) { 17170436 }
      const_attr_reader  :SELECT_WORD_NEXT
      
      # binding = SWT.MOD1 + SWT.MOD2 + SWT.ARROW_RIGHT
      const_set_lazy(:SELECT_TEXT_START) { 17170439 }
      const_attr_reader  :SELECT_TEXT_START
      
      # binding = SWT.MOD1 + SWT.MOD2 + SWT.HOME
      const_set_lazy(:SELECT_TEXT_END) { 17170440 }
      const_attr_reader  :SELECT_TEXT_END
      
      # binding = SWT.MOD1 + SWT.MOD2 + SWT.END
      const_set_lazy(:SELECT_WINDOW_START) { 17170437 }
      const_attr_reader  :SELECT_WINDOW_START
      
      # binding = SWT.MOD1 + SWT.MOD2 + SWT.PAGE_UP
      const_set_lazy(:SELECT_WINDOW_END) { 17170438 }
      const_attr_reader  :SELECT_WINDOW_END
      
      # binding = SWT.MOD1 + SWT.MOD2 + SWT.PAGE_DOWN
      # 
      # Modification Key Actions
      const_set_lazy(:CUT) { 131199 }
      const_attr_reader  :CUT
      
      # binding = SWT.MOD2 + SWT.DEL
      const_set_lazy(:COPY) { 17039369 }
      const_attr_reader  :COPY
      
      # binding = SWT.MOD1 + SWT.INSERT;
      const_set_lazy(:PASTE) { 16908297 }
      const_attr_reader  :PASTE
      
      # binding = SWT.MOD2 + SWT.INSERT ;
      const_set_lazy(:DELETE_PREVIOUS) { Character.new(?\b.ord) }
      const_attr_reader  :DELETE_PREVIOUS
      
      # binding = SWT.BS;
      const_set_lazy(:DELETE_NEXT) { 0x7f }
      const_attr_reader  :DELETE_NEXT
      
      # binding = SWT.DEL;
      const_set_lazy(:DELETE_WORD_PREVIOUS) { 262152 }
      const_attr_reader  :DELETE_WORD_PREVIOUS
      
      # binding = SWT.BS | SWT.MOD1;
      const_set_lazy(:DELETE_WORD_NEXT) { 262271 }
      const_attr_reader  :DELETE_WORD_NEXT
      
      # binding = SWT.DEL | SWT.MOD1;
      # 
      # Miscellaneous Key Actions
      const_set_lazy(:TOGGLE_OVERWRITE) { 16777225 }
      const_attr_reader  :TOGGLE_OVERWRITE
      
      # binding = SWT.INSERT;
      # 
      # TEMPORARY CODE - API SUBJECT TO CHANGE
      # 
      # Toggle block selection mode
      # 
      # @since 3.5
      const_set_lazy(:TOGGLE_BLOCKSELECTION) { 16777226 }
      const_attr_reader  :TOGGLE_BLOCKSELECTION
      
      # Bullet style dot.
      # 
      # @see Bullet
      # 
      # @since 3.2
      const_set_lazy(:BULLET_DOT) { 1 << 0 }
      const_attr_reader  :BULLET_DOT
      
      # Bullet style number.
      # 
      # @see Bullet
      # 
      # @since 3.2
      const_set_lazy(:BULLET_NUMBER) { 1 << 1 }
      const_attr_reader  :BULLET_NUMBER
      
      # Bullet style lower case letter.
      # 
      # @see Bullet
      # 
      # @since 3.2
      const_set_lazy(:BULLET_LETTER_LOWER) { 1 << 2 }
      const_attr_reader  :BULLET_LETTER_LOWER
      
      # Bullet style upper case letter.
      # 
      # @see Bullet
      # 
      # @since 3.2
      const_set_lazy(:BULLET_LETTER_UPPER) { 1 << 3 }
      const_attr_reader  :BULLET_LETTER_UPPER
      
      # Bullet style text.
      # 
      # @see Bullet
      # 
      # @since 3.2
      const_set_lazy(:BULLET_TEXT) { 1 << 4 }
      const_attr_reader  :BULLET_TEXT
      
      # Bullet style custom draw.
      # 
      # @see StyledText#addPaintObjectListener(PaintObjectListener)
      # @see StyledText#removePaintObjectListener(PaintObjectListener)
      # @see Bullet
      # 
      # @since 3.2
      const_set_lazy(:BULLET_CUSTOM) { 1 << 5 }
      const_attr_reader  :BULLET_CUSTOM
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__st, :initialize
  end
  
end
