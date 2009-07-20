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
  module BusyIndicatorImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Support for showing a Busy Cursor during a long running process.
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#busyindicator">BusyIndicator snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class BusyIndicator 
    include_class_members BusyIndicatorImports
    
    class_module.module_eval {
      
      def next_busy_id
        defined?(@@next_busy_id) ? @@next_busy_id : @@next_busy_id= 1
      end
      alias_method :attr_next_busy_id, :next_busy_id
      
      def next_busy_id=(value)
        @@next_busy_id = value
      end
      alias_method :attr_next_busy_id=, :next_busy_id=
      
      const_set_lazy(:BUSYID_NAME) { "SWT BusyIndicator" }
      const_attr_reader  :BUSYID_NAME
      
      # $NON-NLS-1$
      const_set_lazy(:BUSY_CURSOR) { "SWT BusyIndicator Cursor" }
      const_attr_reader  :BUSY_CURSOR
      
      typesig { [Display, Runnable] }
      # $NON-NLS-1$
      # 
      # Runs the given <code>Runnable</code> while providing
      # busy feedback using this busy indicator.
      # 
      # @param display the display on which the busy feedback should be
      # displayed.  If the display is null, the Display for the current
      # thread will be used.  If there is no Display for the current thread,
      # the runnable code will be executed and no busy feedback will be displayed.
      # @param runnable the runnable for which busy feedback is to be shown.
      # Must not be null.
      # 
      # @exception IllegalArgumentException <ul>
      # <li>ERROR_NULL_ARGUMENT - if the runnable is null</li>
      # </ul>
      def show_while(display, runnable)
        if ((runnable).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if ((display).nil?)
          display = Display.get_current
          if ((display).nil?)
            runnable.run
            return
          end
        end
        busy_id = self.attr_next_busy_id
        ((self.attr_next_busy_id += 1) - 1)
        cursor = display.get_system_cursor(SWT::CURSOR_WAIT)
        shells = display.get_shells
        i = 0
        while i < shells.attr_length
          id = shells[i].get_data(BUSYID_NAME)
          if ((id).nil?)
            shells[i].set_cursor(cursor)
            shells[i].set_data(BUSYID_NAME, busy_id)
          end
          ((i += 1) - 1)
        end
        begin
          runnable.run
        ensure
          shells = display.get_shells
          i_ = 0
          while i_ < shells.attr_length
            id = shells[i_].get_data(BUSYID_NAME)
            if ((id).equal?(busy_id))
              shells[i_].set_cursor(nil)
              shells[i_].set_data(BUSYID_NAME, nil)
            end
            ((i_ += 1) - 1)
          end
        end
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__busy_indicator, :initialize
  end
  
end
