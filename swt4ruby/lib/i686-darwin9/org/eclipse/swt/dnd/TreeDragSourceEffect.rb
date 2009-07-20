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
  module TreeDragSourceEffectImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides default implementations to display a source image
  # when a drag is initiated from a <code>Tree</code>.
  # 
  # <p>Classes that wish to provide their own source image for a <code>Tree</code> can
  # extend <code>TreeDragSourceEffect</code> class and override the <code>TreeDragSourceEffect.dragStart</code>
  # method and set the field <code>DragSourceEvent.image</code> with their own image.</p>
  # 
  # Subclasses that override any methods of this class must call the corresponding
  # <code>super</code> method to get the default drag under effect implementation.
  # 
  # @see DragSourceEffect
  # @see DragSourceEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class TreeDragSourceEffect < TreeDragSourceEffectImports.const_get :DragSourceEffect
    include_class_members TreeDragSourceEffectImports
    
    typesig { [Tree] }
    # Creates a new <code>TreeDragSourceEffect</code> to handle drag effect
    # from the specified <code>Tree</code>.
    # 
    # @param tree the <code>Tree</code> that the user clicks on to initiate the drag
    def initialize(tree)
      super(tree)
    end
    
    private
    alias_method :initialize__tree_drag_source_effect, :initialize
  end
  
end
