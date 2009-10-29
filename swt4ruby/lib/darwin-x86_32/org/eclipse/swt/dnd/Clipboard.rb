require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module ClipboardImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # The <code>Clipboard</code> provides a mechanism for transferring data from one
  # application to another or within an application.
  # 
  # <p>IMPORTANT: This class is <em>not</em> intended to be subclassed.</p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#clipboard">Clipboard snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ClipboardExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Clipboard 
    include_class_members ClipboardImports
    
    attr_accessor :display
    alias_method :attr_display, :display
    undef_method :display
    alias_method :attr_display=, :display=
    undef_method :display=
    
    typesig { [Display] }
    # Constructs a new instance of this class.  Creating an instance of a Clipboard
    # may cause system resources to be allocated depending on the platform.  It is therefore
    # mandatory that the Clipboard instance be disposed when no longer required.
    # 
    # @param display the display on which to allocate the clipboard
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see Clipboard#dispose
    # @see Clipboard#checkSubclass
    def initialize(display)
      @display = nil
      check_subclass
      if ((display).nil?)
        display = Display.get_current
        if ((display).nil?)
          display = Display.get_default
        end
      end
      if (!(display.get_thread).equal?(JavaThread.current_thread))
        DND.error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      @display = display
    end
    
    typesig { [] }
    # Checks that this class can be subclassed.
    # <p>
    # The SWT class library is intended to be subclassed
    # only at specific, controlled points. This method enforces this
    # rule unless it is overridden.
    # </p><p>
    # <em>IMPORTANT:</em> By providing an implementation of this
    # method that allows a subclass of a class which does not
    # normally allow subclassing to be created, the implementer
    # agrees to be fully responsible for the fact that any such
    # subclass will likely fail between SWT releases and will be
    # strongly platform specific. No support is provided for
    # user-written classes which are implemented in this fashion.
    # </p><p>
    # The ability to subclass outside of the allowed SWT classes
    # is intended purely to enable those not on the SWT development
    # team to implement patches in order to get around specific
    # limitations in advance of when those limitations can be
    # addressed by the team. Subclassing should not be attempted
    # without an intimate and detailed understanding of the hierarchy.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    def check_subclass
      name = get_class.get_name
      valid_name = Clipboard.get_name
      if (!(valid_name == name))
        DND.error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    # Throws an <code>SWTException</code> if the receiver can not
    # be accessed by the caller. This may include both checks on
    # the state of the receiver and more generally on the entire
    # execution context. This method <em>should</em> be called by
    # widget implementors to enforce the standard SWT invariants.
    # <p>
    # Currently, it is an error to invoke any method (other than
    # <code>isDisposed()</code>) on a widget that has had its
    # <code>dispose()</code> method called. It is also an error
    # to call widget methods from any thread that is different
    # from the thread that created the widget.
    # </p><p>
    # In future releases of SWT, there may be more or fewer error
    # checks and exceptions may be thrown for different reasons.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def check_widget
      display = @display
      if ((display).nil?)
        DND.error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (!(display.get_thread).equal?(JavaThread.current_thread))
        DND.error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      if (display.is_disposed)
        DND.error(SWT::ERROR_WIDGET_DISPOSED)
      end
    end
    
    typesig { [] }
    # If this clipboard is currently the owner of the data on the system clipboard,
    # clear the contents.  If this clipboard is not the owner, then nothing is done.
    # Note that there are clipboard assistant applications that take ownership of
    # data or make copies of data when it is placed on the clipboard.  In these
    # cases, it may not be possible to clear the clipboard.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def clear_contents
      clear_contents(DND::CLIPBOARD)
    end
    
    typesig { [::Java::Int] }
    # If this clipboard is currently the owner of the data on the specified
    # clipboard, clear the contents.  If this clipboard is not the owner, then
    # nothing is done.
    # 
    # <p>Note that there are clipboard assistant applications that take ownership
    # of data or make copies of data when it is placed on the clipboard.  In these
    # cases, it may not be possible to clear the clipboard.</p>
    # 
    # <p>The clipboards value is either one of the clipboard constants defined in
    # class <code>DND</code>, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>DND</code> clipboard constants.</p>
    # 
    # @param clipboards to be cleared
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see DND#CLIPBOARD
    # @see DND#SELECTION_CLIPBOARD
    # 
    # @since 3.1
    def clear_contents(clipboards)
      check_widget
      if (((clipboards & DND::CLIPBOARD)).equal?(0))
        return
      end
      pasteboard = NSPasteboard.general_pasteboard
      pasteboard.declare_types(NSMutableArray.array_with_capacity(0), nil)
    end
    
    typesig { [] }
    # Disposes of the operating system resources associated with the clipboard.
    # The data will still be available on the system clipboard after the dispose
    # method is called.
    # 
    # <p>NOTE: On some platforms the data will not be available once the application
    # has exited or the display has been disposed.</p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    def dispose
      if (is_disposed)
        return
      end
      if (!(@display.get_thread).equal?(JavaThread.current_thread))
        DND.error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      @display = nil
    end
    
    typesig { [Transfer] }
    # Retrieve the data of the specified type currently available on the system
    # clipboard.  Refer to the specific subclass of <code>Transfer</code> to
    # determine the type of object returned.
    # 
    # <p>The following snippet shows text and RTF text being retrieved from the
    # clipboard:</p>
    # 
    # <code><pre>
    # Clipboard clipboard = new Clipboard(display);
    # TextTransfer textTransfer = TextTransfer.getInstance();
    # String textData = (String)clipboard.getContents(textTransfer);
    # if (textData != null) System.out.println("Text is "+textData);
    # RTFTransfer rtfTransfer = RTFTransfer.getInstance();
    # String rtfData = (String)clipboard.getContents(rtfTransfer);
    # if (rtfData != null) System.out.println("RTF Text is "+rtfData);
    # clipboard.dispose();
    # </code></pre>
    # 
    # @param transfer the transfer agent for the type of data being requested
    # @return the data obtained from the clipboard or null if no data of this type is available
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if transfer is null</li>
    # </ul>
    # 
    # @see Transfer
    def get_contents(transfer)
      return get_contents(transfer, DND::CLIPBOARD)
    end
    
    typesig { [Transfer, ::Java::Int] }
    # Retrieve the data of the specified type currently available on the specified
    # clipboard.  Refer to the specific subclass of <code>Transfer</code> to
    # determine the type of object returned.
    # 
    # <p>The following snippet shows text and RTF text being retrieved from the
    # clipboard:</p>
    # 
    # <code><pre>
    # Clipboard clipboard = new Clipboard(display);
    # TextTransfer textTransfer = TextTransfer.getInstance();
    # String textData = (String)clipboard.getContents(textTransfer);
    # if (textData != null) System.out.println("Text is "+textData);
    # RTFTransfer rtfTransfer = RTFTransfer.getInstance();
    # String rtfData = (String)clipboard.getContents(rtfTransfer, DND.CLIPBOARD);
    # if (rtfData != null) System.out.println("RTF Text is "+rtfData);
    # clipboard.dispose();
    # </code></pre>
    # 
    # <p>The clipboards value is either one of the clipboard constants defined in
    # class <code>DND</code>, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>DND</code> clipboard constants.</p>
    # 
    # @param transfer the transfer agent for the type of data being requested
    # @param clipboards on which to look for data
    # 
    # @return the data obtained from the clipboard or null if no data of this type is available
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if transfer is null</li>
    # </ul>
    # 
    # @see Transfer
    # @see DND#CLIPBOARD
    # @see DND#SELECTION_CLIPBOARD
    # 
    # @since 3.1
    def get_contents(transfer, clipboards)
      check_widget
      if ((transfer).nil?)
        DND.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (((clipboards & DND::CLIPBOARD)).equal?(0))
        return nil
      end
      pasteboard = NSPasteboard.general_pasteboard
      if ((pasteboard).nil?)
        return nil
      end
      type_names = transfer.get_type_names
      types = NSMutableArray.array_with_capacity(type_names.attr_length)
      i = 0
      while i < type_names.attr_length
        types.add_object(NSString.string_with(type_names[i]))
        i += 1
      end
      type = pasteboard.available_type_from_array(types)
      if (!(type).nil?)
        tdata = TransferData.new
        tdata.attr_type = Transfer.register_type(type.get_string)
        if (type.is_equal(OS::NSStringPboardType) || type.is_equal(OS::NSRTFPboardType) || type.is_equal(OS::NSHTMLPboardType))
          tdata.attr_data = pasteboard.string_for_type(type)
        else
          if (type.is_equal(OS::NSFilenamesPboardType))
            tdata.attr_data = NSArray.new(pasteboard.property_list_for_type(type).attr_id)
          else
            if (type.is_equal(OS::NSURLPboardType))
              tdata.attr_data = NSURL._urlfrom_pasteboard(pasteboard)
            else
              tdata.attr_data = pasteboard.data_for_type(type)
            end
          end
        end
        if (!(tdata.attr_data).nil?)
          return transfer.native_to_java(tdata)
        end
      end
      return nil
    end
    
    typesig { [] }
    # Returns <code>true</code> if the clipboard has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the clipboard.
    # When a clipboard has been disposed, it is an error to
    # invoke any other method using the clipboard.
    # </p>
    # 
    # @return <code>true</code> when the widget is disposed and <code>false</code> otherwise
    # 
    # @since 3.0
    def is_disposed
      return ((@display).nil?)
    end
    
    typesig { [Array.typed(Object), Array.typed(Transfer)] }
    # Place data of the specified type on the system clipboard.  More than one type
    # of data can be placed on the system clipboard at the same time.  Setting the
    # data clears any previous data from the system clipboard, regardless of type.
    # 
    # <p>NOTE: On some platforms, the data is immediately copied to the system
    # clipboard but on other platforms it is provided upon request.  As a result,
    # if the application modifies the data object it has set on the clipboard, that
    # modification may or may not be available when the data is subsequently
    # requested.</p>
    # 
    # <p>The following snippet shows text and RTF text being set on the copy/paste
    # clipboard:
    # </p>
    # 
    # <code><pre>
    # Clipboard clipboard = new Clipboard(display);
    # String textData = "Hello World";
    # String rtfData = "{\\rtf1\\b\\i Hello World}";
    # TextTransfer textTransfer = TextTransfer.getInstance();
    # RTFTransfer rtfTransfer = RTFTransfer.getInstance();
    # Transfer[] transfers = new Transfer[]{textTransfer, rtfTransfer};
    # Object[] data = new Object[]{textData, rtfData};
    # clipboard.setContents(data, transfers);
    # clipboard.dispose();
    # </code></pre>
    # 
    # @param data the data to be set in the clipboard
    # @param dataTypes the transfer agents that will convert the data to its
    # platform specific format; each entry in the data array must have a
    # corresponding dataType
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if data is null or datatypes is null
    # or the length of data is not the same as the length of dataTypes</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_CANNOT_SET_CLIPBOARD - if the clipboard is locked or otherwise unavailable</li>
    # </ul>
    # 
    # <p>NOTE: ERROR_CANNOT_SET_CLIPBOARD should be an SWTException, since it is a
    # recoverable error, but can not be changed due to backward compatibility.</p>
    def set_contents(data, data_types)
      set_contents(data, data_types, DND::CLIPBOARD)
    end
    
    typesig { [Array.typed(Object), Array.typed(Transfer), ::Java::Int] }
    # Place data of the specified type on the specified clipboard.  More than one
    # type of data can be placed on the specified clipboard at the same time.
    # Setting the data clears any previous data from the specified
    # clipboard, regardless of type.
    # 
    # <p>NOTE: On some platforms, the data is immediately copied to the specified
    # clipboard but on other platforms it is provided upon request.  As a result,
    # if the application modifies the data object it has set on the clipboard, that
    # modification may or may not be available when the data is subsequently
    # requested.</p>
    # 
    # <p>The clipboards value is either one of the clipboard constants defined in
    # class <code>DND</code>, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>DND</code> clipboard constants.</p>
    # 
    # <p>The following snippet shows text and RTF text being set on the copy/paste
    # clipboard:
    # </p>
    # 
    # <code><pre>
    # Clipboard clipboard = new Clipboard(display);
    # String textData = "Hello World";
    # String rtfData = "{\\rtf1\\b\\i Hello World}";
    # TextTransfer textTransfer = TextTransfer.getInstance();
    # RTFTransfer rtfTransfer = RTFTransfer.getInstance();
    # Transfer[] transfers = new Transfer[]{textTransfer, rtfTransfer};
    # Object[] data = new Object[]{textData, rtfData};
    # clipboard.setContents(data, transfers, DND.CLIPBOARD);
    # clipboard.dispose();
    # </code></pre>
    # 
    # @param data the data to be set in the clipboard
    # @param dataTypes the transfer agents that will convert the data to its
    # platform specific format; each entry in the data array must have a
    # corresponding dataType
    # @param clipboards on which to set the data
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if data is null or datatypes is null
    # or the length of data is not the same as the length of dataTypes</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_CANNOT_SET_CLIPBOARD - if the clipboard is locked or otherwise unavailable</li>
    # </ul>
    # 
    # <p>NOTE: ERROR_CANNOT_SET_CLIPBOARD should be an SWTException, since it is a
    # recoverable error, but can not be changed due to backward compatibility.</p>
    # 
    # @see DND#CLIPBOARD
    # @see DND#SELECTION_CLIPBOARD
    # 
    # @since 3.1
    def set_contents(data, data_types, clipboards)
      check_widget
      if ((data).nil? || (data_types).nil? || !(data.attr_length).equal?(data_types.attr_length) || (data.attr_length).equal?(0))
        DND.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      i = 0
      while i < data.attr_length
        if ((data[i]).nil? || (data_types[i]).nil? || !data_types[i].validate(data[i]))
          DND.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i += 1
      end
      if (((clipboards & DND::CLIPBOARD)).equal?(0))
        return
      end
      pasteboard = NSPasteboard.general_pasteboard
      if ((pasteboard).nil?)
        DND.error(DND::ERROR_CANNOT_SET_CLIPBOARD)
      end
      pasteboard.declare_types(NSMutableArray.array_with_capacity(0), nil)
      i_ = 0
      while i_ < data_types.attr_length
        type_names = data_types[i_].get_type_names
        j = 0
        while j < type_names.attr_length
          transfer_data = TransferData.new
          transfer_data.attr_type = Transfer.register_type(type_names[j])
          data_types[i_].java_to_native(data[i_], transfer_data)
          tdata = transfer_data.attr_data
          data_type = NSString.string_with(type_names[j])
          pasteboard.add_types(NSArray.array_with_object(data_type), nil)
          if (data_type.is_equal(OS::NSStringPboardType) || data_type.is_equal(OS::NSRTFPboardType) || data_type.is_equal(OS::NSHTMLPboardType))
            pasteboard.set_string(tdata, data_type)
          else
            if (data_type.is_equal(OS::NSURLPboardType))
              url = tdata
              url.write_to_pasteboard(pasteboard)
            else
              if (data_type.is_equal(OS::NSFilenamesPboardType))
                pasteboard.set_property_list(tdata, data_type)
              else
                pasteboard.set_data(tdata, data_type)
              end
            end
          end
          j += 1
        end
        i_ += 1
      end
    end
    
    typesig { [] }
    # Returns an array of the data types currently available on the system
    # clipboard. Use with Transfer.isSupportedType.
    # 
    # @return array of data types currently available on the system clipboard
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Transfer#isSupportedType
    # 
    # @since 3.0
    def get_available_types
      return get_available_types(DND::CLIPBOARD)
    end
    
    typesig { [::Java::Int] }
    # Returns an array of the data types currently available on the specified
    # clipboard. Use with Transfer.isSupportedType.
    # 
    # <p>The clipboards value is either one of the clipboard constants defined in
    # class <code>DND</code>, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>DND</code> clipboard constants.</p>
    # 
    # @param clipboards from which to get the data types
    # @return array of data types currently available on the specified clipboard
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Transfer#isSupportedType
    # @see DND#CLIPBOARD
    # @see DND#SELECTION_CLIPBOARD
    # 
    # @since 3.1
    def get_available_types(clipboards)
      check_widget
      if (((clipboards & DND::CLIPBOARD)).equal?(0))
        return Array.typed(TransferData).new(0) { nil }
      end
      pasteboard = NSPasteboard.general_pasteboard
      types_ = pasteboard.types
      # 64
      count_ = RJava.cast_to_int(types_.count)
      result = Array.typed(TransferData).new(count_) { nil }
      i = 0
      while i < count_
        result[i] = TransferData.new
        result[i].attr_type = Transfer.register_type(NSString.new(types_.object_at_index(i)).get_string)
        i += 1
      end
      return result
    end
    
    typesig { [] }
    # Returns a platform specific list of the data types currently available on the
    # system clipboard.
    # 
    # <p>Note: <code>getAvailableTypeNames</code> is a utility for writing a Transfer
    # sub-class.  It should NOT be used within an application because it provides
    # platform specific information.</p>
    # 
    # @return a platform specific list of the data types currently available on the
    # system clipboard
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_available_type_names
      check_widget
      pasteboard = NSPasteboard.general_pasteboard
      types_ = pasteboard.types
      # 64
      count_ = RJava.cast_to_int(types_.count)
      result = Array.typed(String).new(count_) { nil }
      i = 0
      while i < count_
        result[i] = NSString.new(types_.object_at_index(i)).get_string
        i += 1
      end
      return result
    end
    
    private
    alias_method :initialize__clipboard, :initialize
  end
  
end
