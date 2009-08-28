require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module HMHelpContentRecImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HMHelpContentRec 
    include_class_members HMHelpContentRecImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    # Rect absHotRect;
    attr_accessor :abs_hot_rect_top
    alias_method :attr_abs_hot_rect_top, :abs_hot_rect_top
    undef_method :abs_hot_rect_top
    alias_method :attr_abs_hot_rect_top=, :abs_hot_rect_top=
    undef_method :abs_hot_rect_top=
    
    attr_accessor :abs_hot_rect_left
    alias_method :attr_abs_hot_rect_left, :abs_hot_rect_left
    undef_method :abs_hot_rect_left
    alias_method :attr_abs_hot_rect_left=, :abs_hot_rect_left=
    undef_method :abs_hot_rect_left=
    
    attr_accessor :abs_hot_rect_bottom
    alias_method :attr_abs_hot_rect_bottom, :abs_hot_rect_bottom
    undef_method :abs_hot_rect_bottom
    alias_method :attr_abs_hot_rect_bottom=, :abs_hot_rect_bottom=
    undef_method :abs_hot_rect_bottom=
    
    attr_accessor :abs_hot_rect_right
    alias_method :attr_abs_hot_rect_right, :abs_hot_rect_right
    undef_method :abs_hot_rect_right
    alias_method :attr_abs_hot_rect_right=, :abs_hot_rect_right=
    undef_method :abs_hot_rect_right=
    
    attr_accessor :tag_side
    alias_method :attr_tag_side, :tag_side
    undef_method :tag_side
    alias_method :attr_tag_side=, :tag_side=
    undef_method :tag_side=
    
    # HMHelpContent       content[2];
    attr_accessor :content0_content_type
    alias_method :attr_content0_content_type, :content0_content_type
    undef_method :content0_content_type
    alias_method :attr_content0_content_type=, :content0_content_type=
    undef_method :content0_content_type=
    
    attr_accessor :content0_tag_cfstring
    alias_method :attr_content0_tag_cfstring, :content0_tag_cfstring
    undef_method :content0_tag_cfstring
    alias_method :attr_content0_tag_cfstring=, :content0_tag_cfstring=
    undef_method :content0_tag_cfstring=
    
    attr_accessor :content1_content_type
    alias_method :attr_content1_content_type, :content1_content_type
    undef_method :content1_content_type
    alias_method :attr_content1_content_type=, :content1_content_type=
    undef_method :content1_content_type=
    
    attr_accessor :content1_tag_cfstring
    alias_method :attr_content1_tag_cfstring, :content1_tag_cfstring
    undef_method :content1_tag_cfstring
    alias_method :attr_content1_tag_cfstring=, :content1_tag_cfstring=
    undef_method :content1_tag_cfstring=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 534 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @abs_hot_rect_top = 0
      @abs_hot_rect_left = 0
      @abs_hot_rect_bottom = 0
      @abs_hot_rect_right = 0
      @tag_side = 0
      @content0_content_type = 0
      @content0_tag_cfstring = 0
      @content1_content_type = 0
      @content1_tag_cfstring = 0
    end
    
    private
    alias_method :initialize__hmhelp_content_rec, :initialize
  end
  
end
