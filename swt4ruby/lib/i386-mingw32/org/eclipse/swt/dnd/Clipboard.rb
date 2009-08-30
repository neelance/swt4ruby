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
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
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
    
    # ole interfaces
    attr_accessor :i_data_object
    alias_method :attr_i_data_object, :i_data_object
    undef_method :i_data_object
    alias_method :attr_i_data_object=, :i_data_object=
    undef_method :i_data_object=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :transfer_agents
    alias_method :attr_transfer_agents, :transfer_agents
    undef_method :transfer_agents
    alias_method :attr_transfer_agents=, :transfer_agents=
    undef_method :transfer_agents=
    
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    attr_accessor :cfstr_preferreddropeffect
    alias_method :attr_cfstr_preferreddropeffect, :cfstr_preferreddropeffect
    undef_method :cfstr_preferreddropeffect
    alias_method :attr_cfstr_preferreddropeffect=, :cfstr_preferreddropeffect=
    undef_method :cfstr_preferreddropeffect=
    
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
      @i_data_object = nil
      @ref_count = 0
      @transfer_agents = Array.typed(Transfer).new(0) { nil }
      @data = Array.typed(Object).new(0) { nil }
      @cfstr_preferreddropeffect = 0
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
      ch_format_name = TCHAR.new(0, "Preferred DropEffect", true) # $NON-NLS-1$
      @cfstr_preferreddropeffect = OS._register_clipboard_format(ch_format_name)
      create_cominterfaces
      self._add_ref
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
      if (!((clipboards & DND::CLIPBOARD)).equal?(0))
        # OleIsCurrentClipboard([in] pDataObject)
        # The argument pDataObject is owned by the caller so reference count does not
        # need to be incremented.
        if ((COM._ole_is_current_clipboard(@i_data_object.get_address)).equal?(COM::S_OK))
          # OleSetClipboard([in] pDataObject)
          # The argument pDataObject is owned by the caller so reference count does not
          # need to be incremented.
          COM._ole_set_clipboard(0)
        end
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
      # OleIsCurrentClipboard([in] pDataObject)
      # The argument pDataObject is owned by the caller so reference count does not
      # need to be incremented.
      if ((COM._ole_is_current_clipboard(@i_data_object.get_address)).equal?(COM::S_OK))
        COM._ole_flush_clipboard
      end
      self._release
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
      # Bug in Windows. When a new application takes control
      # of the clipboard, other applications may open the
      # clipboard to determine if they want to record the
      # clipboard updates.  When this happens, the clipboard
      # can not be accessed until the other application is
      # finished.  To allow the other applications to release
      # the clipboard, use PeekMessage() to enable cross thread
      # message sends.
      # 
      # long
      # long
      ppv = Array.typed(::Java::Int).new(1) { 0 }
      retry_count = 0
      # OleGetClipboard([out] ppDataObject).
      # AddRef has already been called on ppDataObject by the callee and must be released by the caller.
      result = COM._ole_get_clipboard(ppv)
      while (!(result).equal?(COM::S_OK) && ((retry_count += 1) - 1) < 10)
        begin
          JavaThread.sleep(50)
        rescue JavaThrowable => t
        end
        msg = MSG.new
        OS._peek_message(msg, 0, 0, 0, OS::PM_NOREMOVE | OS::PM_NOYIELD)
        result = COM._ole_get_clipboard(ppv)
      end
      if (!(result).equal?(COM::S_OK))
        return nil
      end
      data_object = IDataObject.new(ppv[0])
      begin
        allowed = transfer.get_supported_types
        i = 0
        while i < allowed.attr_length
          if ((data_object._query_get_data(allowed[i].attr_formatetc)).equal?(COM::S_OK))
            data = allowed[i]
            data.attr_p_idata_object = ppv[0]
            return transfer.native_to_java(data)
          end
          i += 1
        end
      ensure
        data_object._release
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
      @data = data
      @transfer_agents = data_types
      # OleSetClipboard([in] pDataObject)
      # The argument pDataObject is owned by the caller so the reference count does not
      # need to be incremented.
      result = COM._ole_set_clipboard(@i_data_object.get_address)
      # Bug in Windows. When a new application takes control
      # of the clipboard, other applications may open the
      # clipboard to determine if they want to record the
      # clipboard updates.  When this happens, the clipboard
      # can not be flushed until the other application is
      # finished.  To allow other applications to get the
      # data, use PeekMessage() to enable cross thread
      # message sends.
      retry_count = 0
      while (!(result).equal?(COM::S_OK) && ((retry_count += 1) - 1) < 10)
        begin
          JavaThread.sleep(50)
        rescue JavaThrowable => t
        end
        msg = MSG.new
        OS._peek_message(msg, 0, 0, 0, OS::PM_NOREMOVE | OS::PM_NOYIELD)
        result = COM._ole_set_clipboard(@i_data_object.get_address)
      end
      if (!(result).equal?(COM::S_OK))
        DND.error(DND::ERROR_CANNOT_SET_CLIPBOARD)
      end
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def create_cominterfaces
      # method9 DAdvise - not implemented
      # method10 DUnadvise - not implemented
      # method11 EnumDAdvise - not implemented
      @i_data_object = # register each of the interfaces that this object implements
      Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members Clipboard
        include COMObject if COMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          return _get_data(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # method4 GetDataHere - not implemented
        # long
        # long
        define_method :method5 do |args|
          return _query_get_data(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # method6 GetCanonicalFormatEtc - not implemented
        # method7 SetData - not implemented
        # long
        # long
        define_method :method8 do |args|
          # 64
          return _enum_format_etc(RJava.cast_to_int(args[0]), args[1])
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 2, 2, 1, 2, 3, 2, 4, 1, 1]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@i_data_object).nil?)
        @i_data_object.dispose
      end
      @i_data_object = nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # EnumFormatEtc([in] dwDirection, [out] ppenumFormatetc)
    # Ownership of ppenumFormatetc transfers from callee to caller so reference count on ppenumFormatetc
    # must be incremented before returning.  Caller is responsible for releasing ppenumFormatetc.
    # 
    # long
    def _enum_format_etc(dw_direction, ppenum_formatetc)
      # only allow getting of data - SetData is not currently supported
      if ((dw_direction).equal?(COM::DATADIR_SET))
        return COM::E_NOTIMPL
      end
      # what types have been registered?
      allowed_data_types = Array.typed(TransferData).new(0) { nil }
      i = 0
      while i < @transfer_agents.attr_length
        formats = @transfer_agents[i].get_supported_types
        new_allowed_data_types = Array.typed(TransferData).new(allowed_data_types.attr_length + formats.attr_length) { nil }
        System.arraycopy(allowed_data_types, 0, new_allowed_data_types, 0, allowed_data_types.attr_length)
        System.arraycopy(formats, 0, new_allowed_data_types, allowed_data_types.attr_length, formats.attr_length)
        allowed_data_types = new_allowed_data_types
        i += 1
      end
      enum_formatetc = OleEnumFORMATETC.new
      enum_formatetc._add_ref
      formats = Array.typed(FORMATETC).new(allowed_data_types.attr_length + 1) { nil }
      i_ = 0
      while i_ < allowed_data_types.attr_length
        formats[i_] = allowed_data_types[i_].attr_formatetc
        i_ += 1
      end
      # include the drop effect format to specify a copy operation
      dropeffect = FORMATETC.new
      dropeffect.attr_cf_format = @cfstr_preferreddropeffect
      dropeffect.attr_dw_aspect = COM::DVASPECT_CONTENT
      dropeffect.attr_lindex = -1
      dropeffect.attr_tymed = COM::TYMED_HGLOBAL
      formats[formats.attr_length - 1] = dropeffect
      enum_formatetc.set_formats(formats)
      # long
      OS._move_memory(ppenum_formatetc, Array.typed(::Java::Int).new([enum_formatetc.get_address]), OS::PTR_SIZEOF)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _get_data(p_formatetc, pmedium)
      # Called by a data consumer to obtain data from a source data object.
      # The GetData method renders the data described in the specified FORMATETC
      # structure and transfers it through the specified STGMEDIUM structure.
      # The caller then assumes responsibility for releasing the STGMEDIUM structure.
      if ((p_formatetc).equal?(0) || (pmedium).equal?(0))
        return COM::E_INVALIDARG
      end
      if (!(_query_get_data(p_formatetc)).equal?(COM::S_OK))
        return COM::DV_E_FORMATETC
      end
      transfer_data = TransferData.new
      transfer_data.attr_formatetc = FORMATETC.new
      COM._move_memory(transfer_data.attr_formatetc, p_formatetc, FORMATETC.attr_sizeof)
      transfer_data.attr_type = transfer_data.attr_formatetc.attr_cf_format
      transfer_data.attr_stgmedium = STGMEDIUM.new
      transfer_data.attr_result = COM::E_FAIL
      if ((transfer_data.attr_type).equal?(@cfstr_preferreddropeffect))
        # specify that a copy operation is to be performed
        stgmedium = STGMEDIUM.new
        stgmedium.attr_tymed = COM::TYMED_HGLOBAL
        stgmedium.attr_union_field = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, 4)
        # TODO - should call GlobalLock
        OS._move_memory(stgmedium.attr_union_field, Array.typed(::Java::Int).new([COM::DROPEFFECT_COPY]), 4)
        stgmedium.attr_p_unk_for_release = 0
        COM._move_memory(pmedium, stgmedium, STGMEDIUM.attr_sizeof)
        return COM::S_OK
      end
      # get matching transfer agent to perform conversion
      transfer_index = -1
      i = 0
      while i < @transfer_agents.attr_length
        if (@transfer_agents[i].is_supported_type(transfer_data))
          transfer_index = i
          break
        end
        i += 1
      end
      if ((transfer_index).equal?(-1))
        return COM::DV_E_FORMATETC
      end
      @transfer_agents[transfer_index].java_to_native(@data[transfer_index], transfer_data)
      COM._move_memory(pmedium, transfer_data.attr_stgmedium, STGMEDIUM.attr_sizeof)
      return transfer_data.attr_result
    end
    
    typesig { [::Java::Int] }
    # long
    def _query_get_data(p_formatetc)
      if ((@transfer_agents).nil?)
        return COM::E_FAIL
      end
      transfer_data = TransferData.new
      transfer_data.attr_formatetc = FORMATETC.new
      COM._move_memory(transfer_data.attr_formatetc, p_formatetc, FORMATETC.attr_sizeof)
      transfer_data.attr_type = transfer_data.attr_formatetc.attr_cf_format
      if ((transfer_data.attr_type).equal?(@cfstr_preferreddropeffect))
        return COM::S_OK
      end
      # is this type supported by the transfer agent?
      i = 0
      while i < @transfer_agents.attr_length
        if (@transfer_agents[i].is_supported_type(transfer_data))
          return COM::S_OK
        end
        i += 1
      end
      return COM::DV_E_FORMATETC
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # QueryInterface([in] iid, [out] ppvObject)
    # Ownership of ppvObject transfers from callee to caller so reference count on ppvObject
    # must be incremented before returning.  Caller is responsible for releasing ppvObject.
    # 
    # long
    # long
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return COM::E_INVALIDARG
      end
      guid = GUID.new
      COM._move_memory(guid, riid, GUID.attr_sizeof)
      if (COM._is_equal_guid(guid, COM::IIDIUnknown) || COM._is_equal_guid(guid, COM::IIDIDataObject))
        # long
        OS._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_data_object.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      # long
      OS._move_memory(ppv_object, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
      return COM::E_NOINTERFACE
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      if ((@ref_count).equal?(0))
        @data = Array.typed(Object).new(0) { nil }
        @transfer_agents = Array.typed(Transfer).new(0) { nil }
        dispose_cominterfaces
        COM._co_free_unused_libraries
      end
      return @ref_count
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
      data = Array.typed(TransferData).new(types.attr_length) { nil }
      i = 0
      while i < types.attr_length
        data[i] = TransferData.new
        data[i].attr_type = types[i].attr_cf_format
        data[i].attr_formatetc = types[i]
        i += 1
      end
      return data
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
      max_size = 128
      i = 0
      while i < types.attr_length
        buffer = TCHAR.new(0, max_size)
        size = OS._get_clipboard_format_name(types[i].attr_cf_format, buffer, max_size)
        if (!(size).equal?(0))
          names[i] = buffer.to_s(0, size)
        else
          case (types[i].attr_cf_format)
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          # $NON-NLS-1$
          when COM::CF_HDROP
            names[i] = "CF_HDROP"
          when COM::CF_TEXT
            names[i] = "CF_TEXT"
          when COM::CF_BITMAP
            names[i] = "CF_BITMAP"
          when COM::CF_METAFILEPICT
            names[i] = "CF_METAFILEPICT"
          when COM::CF_SYLK
            names[i] = "CF_SYLK"
          when COM::CF_DIF
            names[i] = "CF_DIF"
          when COM::CF_TIFF
            names[i] = "CF_TIFF"
          when COM::CF_OEMTEXT
            names[i] = "CF_OEMTEXT"
          when COM::CF_DIB
            names[i] = "CF_DIB"
          when COM::CF_PALETTE
            names[i] = "CF_PALETTE"
          when COM::CF_PENDATA
            names[i] = "CF_PENDATA"
          when COM::CF_RIFF
            names[i] = "CF_RIFF"
          when COM::CF_WAVE
            names[i] = "CF_WAVE"
          when COM::CF_UNICODETEXT
            names[i] = "CF_UNICODETEXT"
          when COM::CF_ENHMETAFILE
            names[i] = "CF_ENHMETAFILE"
          when COM::CF_LOCALE
            names[i] = "CF_LOCALE"
          when COM::CF_MAX
            names[i] = "CF_MAX"
          else
            names[i] = "UNKNOWN"
          end # $NON-NLS-1$
        end
        i += 1
      end
      return names
    end
    
    typesig { [] }
    def __get_available_types
      types = Array.typed(FORMATETC).new(0) { nil }
      # long
      # long
      ppv = Array.typed(::Java::Int).new(1) { 0 }
      # OleGetClipboard([out] ppDataObject).
      # AddRef has already been called on ppDataObject by the callee and must be released by the caller.
      if (!(COM._ole_get_clipboard(ppv)).equal?(COM::S_OK))
        return types
      end
      data_object = IDataObject.new(ppv[0])
      # long
      # long
      pp_formatetc = Array.typed(::Java::Int).new(1) { 0 }
      # EnumFormatEtc([in] dwDirection, [out] ppenumFormatetc)
      # AddRef has already been called on ppenumFormatetc by the callee and must be released by the caller.
      rc = data_object._enum_format_etc(COM::DATADIR_GET, pp_formatetc)
      data_object._release
      if (!(rc).equal?(COM::S_OK))
        return types
      end
      enum_formatetc = IEnumFORMATETC.new(pp_formatetc[0])
      # Loop over enumerator and save any types that match what we are looking for
      # long
      rgelt = OS._global_alloc(OS::GMEM_FIXED | OS::GMEM_ZEROINIT, FORMATETC.attr_sizeof)
      pcelt_fetched = Array.typed(::Java::Int).new(1) { 0 }
      enum_formatetc._reset
      while ((enum_formatetc._next(1, rgelt, pcelt_fetched)).equal?(COM::S_OK) && (pcelt_fetched[0]).equal?(1))
        formatetc = FORMATETC.new
        COM._move_memory(formatetc, rgelt, FORMATETC.attr_sizeof)
        new_types = Array.typed(FORMATETC).new(types.attr_length + 1) { nil }
        System.arraycopy(types, 0, new_types, 0, types.attr_length)
        new_types[types.attr_length] = formatetc
        types = new_types
      end
      OS._global_free(rgelt)
      enum_formatetc._release
      return types
    end
    
    private
    alias_method :initialize__clipboard, :initialize
  end
  
end
