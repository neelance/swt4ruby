require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others. All rights reserved.
# The contents of this file are made available under the terms
# of the GNU Lesser General Public License (LGPL) Version 2.1 that
# accompanies this distribution (lgpl-v21.txt).  The LGPL is also
# available at http://www.gnu.org/licenses/lgpl.html.  If the version
# of the LGPL at http://www.gnu.org is different to the version of
# the LGPL accompanying this distribution and there is any conflict
# between the two license versions, the terms of the LGPL accompanying
# this distribution shall govern.
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gnome
  module GnomeVFSMimeApplicationImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gnome
    }
  end
  
  class GnomeVFSMimeApplication 
    include_class_members GnomeVFSMimeApplicationImports
    
    # int
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
    # int
    attr_accessor :name
    alias_method :attr_name, :name
    undef_method :name
    alias_method :attr_name=, :name=
    undef_method :name=
    
    # int
    attr_accessor :command
    alias_method :attr_command, :command
    undef_method :command
    alias_method :attr_command=, :command=
    undef_method :command=
    
    attr_accessor :can_open_multiple_files
    alias_method :attr_can_open_multiple_files, :can_open_multiple_files
    undef_method :can_open_multiple_files
    alias_method :attr_can_open_multiple_files=, :can_open_multiple_files=
    undef_method :can_open_multiple_files=
    
    attr_accessor :expects_uris
    alias_method :attr_expects_uris, :expects_uris
    undef_method :expects_uris
    alias_method :attr_expects_uris=, :expects_uris=
    undef_method :expects_uris=
    
    # int
    attr_accessor :supported_uri_schemes
    alias_method :attr_supported_uri_schemes, :supported_uri_schemes
    undef_method :supported_uri_schemes
    alias_method :attr_supported_uri_schemes=, :supported_uri_schemes=
    undef_method :supported_uri_schemes=
    
    attr_accessor :requires_terminal
    alias_method :attr_requires_terminal, :requires_terminal
    undef_method :requires_terminal
    alias_method :attr_requires_terminal=, :requires_terminal=
    undef_method :requires_terminal=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { GNOME._gnome_vfsmime_application_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @id = 0
      @name = 0
      @command = 0
      @can_open_multiple_files = false
      @expects_uris = 0
      @supported_uri_schemes = 0
      @requires_terminal = false
    end
    
    private
    alias_method :initialize__gnome_vfsmime_application, :initialize
  end
  
end
