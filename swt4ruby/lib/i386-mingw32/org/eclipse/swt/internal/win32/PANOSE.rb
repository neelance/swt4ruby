require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module PANOSEImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class PANOSE 
    include_class_members PANOSEImports
    
    attr_accessor :b_family_type
    alias_method :attr_b_family_type, :b_family_type
    undef_method :b_family_type
    alias_method :attr_b_family_type=, :b_family_type=
    undef_method :b_family_type=
    
    attr_accessor :b_serif_style
    alias_method :attr_b_serif_style, :b_serif_style
    undef_method :b_serif_style
    alias_method :attr_b_serif_style=, :b_serif_style=
    undef_method :b_serif_style=
    
    attr_accessor :b_weight
    alias_method :attr_b_weight, :b_weight
    undef_method :b_weight
    alias_method :attr_b_weight=, :b_weight=
    undef_method :b_weight=
    
    attr_accessor :b_proportion
    alias_method :attr_b_proportion, :b_proportion
    undef_method :b_proportion
    alias_method :attr_b_proportion=, :b_proportion=
    undef_method :b_proportion=
    
    attr_accessor :b_contrast
    alias_method :attr_b_contrast, :b_contrast
    undef_method :b_contrast
    alias_method :attr_b_contrast=, :b_contrast=
    undef_method :b_contrast=
    
    attr_accessor :b_stroke_variation
    alias_method :attr_b_stroke_variation, :b_stroke_variation
    undef_method :b_stroke_variation
    alias_method :attr_b_stroke_variation=, :b_stroke_variation=
    undef_method :b_stroke_variation=
    
    attr_accessor :b_arm_style
    alias_method :attr_b_arm_style, :b_arm_style
    undef_method :b_arm_style
    alias_method :attr_b_arm_style=, :b_arm_style=
    undef_method :b_arm_style=
    
    attr_accessor :b_letterform
    alias_method :attr_b_letterform, :b_letterform
    undef_method :b_letterform
    alias_method :attr_b_letterform=, :b_letterform=
    undef_method :b_letterform=
    
    attr_accessor :b_midline
    alias_method :attr_b_midline, :b_midline
    undef_method :b_midline
    alias_method :attr_b_midline=, :b_midline=
    undef_method :b_midline=
    
    attr_accessor :b_xheight
    alias_method :attr_b_xheight, :b_xheight
    undef_method :b_xheight
    alias_method :attr_b_xheight=, :b_xheight=
    undef_method :b_xheight=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._panose_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @b_family_type = 0
      @b_serif_style = 0
      @b_weight = 0
      @b_proportion = 0
      @b_contrast = 0
      @b_stroke_variation = 0
      @b_arm_style = 0
      @b_letterform = 0
      @b_midline = 0
      @b_xheight = 0
    end
    
    private
    alias_method :initialize__panose, :initialize
  end
  
end
