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
  module TableDragSourceEffectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides default implementations to display a source image
  # when a drag is initiated from a <code>Table</code>.
  # 
  # <p>Classes that wish to provide their own source image for a <code>Table</code> can
  # extend the <code>TableDragSourceEffect</code> class, override the
  # <code>TableDragSourceEffect.dragStart</code> method and set the field
  # <code>DragSourceEvent.image</code> with their own image.</p>
  # 
  # Subclasses that override any methods of this class must call the corresponding
  # <code>super</code> method to get the default drag source effect implementation.
  # 
  # @see DragSourceEffect
  # @see DragSourceEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class TableDragSourceEffect < TableDragSourceEffectImports.const_get :DragSourceEffect
    include_class_members TableDragSourceEffectImports
    
    typesig { [Table] }
    # Creates a new <code>TableDragSourceEffect</code> to handle drag effect
    # from the specified <code>Table</code>.
    # 
    # @param table the <code>Table</code> that the user clicks on to initiate the drag
    def initialize(table)
      super(table)
    end
    
    private
    alias_method :initialize__table_drag_source_effect, :initialize
  end
  
end
