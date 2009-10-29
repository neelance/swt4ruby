require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module PathDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class describe device-independent paths.
  # 
  # @see Path
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.1
  class PathData 
    include_class_members PathDataImports
    
    # The type of each point.
    attr_accessor :types
    alias_method :attr_types, :types
    undef_method :types
    alias_method :attr_types=, :types=
    undef_method :types=
    
    # The points of a path.
    attr_accessor :points
    alias_method :attr_points, :points
    undef_method :points
    alias_method :attr_points=, :points=
    undef_method :points=
    
    typesig { [] }
    def initialize
      @types = nil
      @points = nil
    end
    
    private
    alias_method :initialize__path_data, :initialize
  end
  
end
