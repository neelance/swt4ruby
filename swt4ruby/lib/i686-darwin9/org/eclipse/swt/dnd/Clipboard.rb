require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
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
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
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
  class Clipboard 
    include_class_members ClipboardImports
    
    attr_accessor :display
    alias_method :attr_display, :display
    undef_method :display
    alias_method :attr_display=, :display=
    undef_method :display=
    
    attr_accessor :scrap
    alias_method :attr_scrap, :scrap
    undef_method :scrap
    alias_method :attr_scrap=, :scrap=
    undef_method :scrap=
    
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
      @scrap = 0
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
      if (((clipboards & DND::CLIPBOARD)).equal?(0) || (@scrap).equal?(0))
        return
      end
      old_scrap = @scrap
      @scrap = 0
      current_scrap = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_current_scrap(current_scrap)).equal?(OS.attr_no_err))
        return
      end
      if ((current_scrap[0]).equal?(old_scrap))
        OS._clear_current_scrap
      end
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
      scrap = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_current_scrap(scrap)).equal?(OS.attr_no_err))
        return nil
      end
      type_ids = transfer.get_type_ids
      size = Array.typed(::Java::Int).new(1) { 0 }
      # get data from system clipboard
      i = 0
      while i < type_ids.attr_length
        type = type_ids[i]
        size[0] = 0
        if ((OS._get_scrap_flavor_size(scrap[0], type, size)).equal?(OS.attr_no_err) && size[0] > 0)
          buffer = Array.typed(::Java::Byte).new(size[0]) { 0 }
          if ((OS._get_scrap_flavor_data(scrap[0], type, size, buffer)).equal?(OS.attr_no_err))
            tdata = TransferData.new
            tdata.attr_type = type
            tdata.attr_data = Array.typed(Array.typed(::Java::Byte)).new(1) { nil }
            tdata.attr_data[0] = buffer
            return transfer.native_to_java(tdata)
          end
        end
        i += 1
      end
      return nil # No data available for this transfer
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
      if (!(OS._clear_current_scrap).equal?(OS.attr_no_err))
        DND.error(DND::ERROR_CANNOT_SET_CLIPBOARD)
      end
      @scrap = 0
      current_scrap = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_current_scrap(current_scrap)).equal?(OS.attr_no_err))
        DND.error(DND::ERROR_CANNOT_SET_CLIPBOARD)
      end
      @scrap = current_scrap[0]
      # copy data directly over to System clipboard (not deferred)
      i_ = 0
      while i_ < data_types.attr_length
        type_ids = data_types[i_].get_type_ids
        j = 0
        while j < type_ids.attr_length
          transfer_data = TransferData.new
          transfer_data.attr_type = type_ids[j]
          data_types[i_].java_to_native(data[i_], transfer_data)
          if (!(transfer_data.attr_result).equal?(OS.attr_no_err))
            DND.error(DND::ERROR_CANNOT_SET_CLIPBOARD)
          end
          # Drag and Drop can handle multiple items in one transfer but the
          # Clipboard can not.
          datum = transfer_data.attr_data[0]
          if (!(OS._put_scrap_flavor(@scrap, transfer_data.attr_type, 0, datum.attr_length, datum)).equal?(OS.attr_no_err))
            DND.error(DND::ERROR_CANNOT_SET_CLIPBOARD)
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
      types = __get_available_types
      result = Array.typed(TransferData).new(types.attr_length) { nil }
      i = 0
      while i < types.attr_length
        result[i] = TransferData.new
        result[i].attr_type = types[i]
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
      types = __get_available_types
      names = Array.typed(String).new(types.attr_length) { nil }
      i = 0
      while i < types.attr_length
        type = types[i]
        sb = StringBuffer.new
        sb.append(RJava.cast_to_char(((type & -0x1000000) >> 24)))
        sb.append(RJava.cast_to_char(((type & 0xff0000) >> 16)))
        sb.append(RJava.cast_to_char(((type & 0xff00) >> 8)))
        sb.append(RJava.cast_to_char(((type & 0xff) >> 0)))
        names[i] = sb.to_s
        i += 1
      end
      return names
    end
    
    typesig { [] }
    def __get_available_types
      types = Array.typed(::Java::Int).new(0) { 0 }
      scrap = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_current_scrap(scrap)).equal?(OS.attr_no_err))
        return types
      end
      count = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_scrap_flavor_count(scrap[0], count)).equal?(OS.attr_no_err) || (count[0]).equal?(0))
        return types
      end
      info = Array.typed(::Java::Int).new(count[0] * 2) { 0 }
      if (!(OS._get_scrap_flavor_info_list(scrap[0], count, info)).equal?(OS.attr_no_err))
        return types
      end
      types = Array.typed(::Java::Int).new(count[0]) { 0 }
      i = 0
      while i < count[0]
        types[i] = info[i * 2]
        i += 1
      end
      return types
    end
    
    private
    alias_method :initialize__clipboard, :initialize
  end
  
end
