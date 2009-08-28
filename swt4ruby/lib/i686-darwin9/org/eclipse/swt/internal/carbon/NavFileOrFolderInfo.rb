require "rjava"

# Copyright (c) 2003, 2008 IBM Corp.
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
  module NavFileOrFolderInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class NavFileOrFolderInfo 
    include_class_members NavFileOrFolderInfoImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :is_folder
    alias_method :attr_is_folder, :is_folder
    undef_method :is_folder
    alias_method :attr_is_folder=, :is_folder=
    undef_method :is_folder=
    
    attr_accessor :visible
    alias_method :attr_visible, :visible
    undef_method :visible
    alias_method :attr_visible=, :visible=
    undef_method :visible=
    
    attr_accessor :creation_date
    alias_method :attr_creation_date, :creation_date
    undef_method :creation_date
    alias_method :attr_creation_date=, :creation_date=
    undef_method :creation_date=
    
    attr_accessor :modification_date
    alias_method :attr_modification_date, :modification_date
    undef_method :modification_date
    alias_method :attr_modification_date=, :modification_date=
    undef_method :modification_date=
    
    class_module.module_eval {
      # TODO add union and struct
      # public struct fileInfo;
      # public struct folderInfo;
      const_set_lazy(:Sizeof) { 268 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @is_folder = false
      @visible = false
      @creation_date = 0
      @modification_date = 0
    end
    
    private
    alias_method :initialize__nav_file_or_folder_info, :initialize
  end
  
end
