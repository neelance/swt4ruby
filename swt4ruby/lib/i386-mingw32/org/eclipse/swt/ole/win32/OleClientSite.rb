require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Ole::Win32
  module OleClientSiteImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
      include_const ::Java::Io, :JavaFile
      include_const ::Java::Io, :FileOutputStream
      include_const ::Java::Io, :FileInputStream
      include_const ::Java::Io, :IOException
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Internal, :C
      include_const ::Org::Eclipse::Swt::Internal, :Compatibility
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  # OleClientSite provides a site to manage an embedded OLE Document within a container.
  # 
  # <p>The OleClientSite provides the following capabilities:
  # <ul>
  # <li>creates the in-place editor for a blank document or opening an existing OLE Document
  # <li>lays the editor out
  # <li>provides a mechanism for activating and deactivating the Document
  # <li>provides a mechanism for saving changes made to the document
  # </ul>
  # 
  # <p>This object implements the OLE Interfaces IUnknown, IOleClientSite, IAdviseSink,
  # IOleInPlaceSite
  # 
  # <p>Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add <code>Control</code> children to it,
  # or set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles</b> <dd>BORDER
  # <dt><b>Events</b> <dd>Dispose, Move, Resize
  # </dl>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#ole">OLE and ActiveX snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Examples: OLEExample, OleWebBrowser</a>
  class OleClientSite < OleClientSiteImports.const_get :Composite
    include_class_members OleClientSiteImports
    
    # Interfaces for this Ole Client Container
    attr_accessor :i_unknown
    alias_method :attr_i_unknown, :i_unknown
    undef_method :i_unknown
    alias_method :attr_i_unknown=, :i_unknown=
    undef_method :i_unknown=
    
    attr_accessor :i_ole_client_site
    alias_method :attr_i_ole_client_site, :i_ole_client_site
    undef_method :i_ole_client_site
    alias_method :attr_i_ole_client_site=, :i_ole_client_site=
    undef_method :i_ole_client_site=
    
    attr_accessor :i_advise_sink
    alias_method :attr_i_advise_sink, :i_advise_sink
    undef_method :i_advise_sink
    alias_method :attr_i_advise_sink=, :i_advise_sink=
    undef_method :i_advise_sink=
    
    attr_accessor :i_ole_in_place_site
    alias_method :attr_i_ole_in_place_site, :i_ole_in_place_site
    undef_method :i_ole_in_place_site
    alias_method :attr_i_ole_in_place_site=, :i_ole_in_place_site=
    undef_method :i_ole_in_place_site=
    
    attr_accessor :i_ole_document_site
    alias_method :attr_i_ole_document_site, :i_ole_document_site
    undef_method :i_ole_document_site
    alias_method :attr_i_ole_document_site=, :i_ole_document_site=
    undef_method :i_ole_document_site=
    
    attr_accessor :app_clsid
    alias_method :attr_app_clsid, :app_clsid
    undef_method :app_clsid
    alias_method :attr_app_clsid=, :app_clsid=
    undef_method :app_clsid=
    
    attr_accessor :obj_clsid
    alias_method :attr_obj_clsid, :obj_clsid
    undef_method :obj_clsid
    alias_method :attr_obj_clsid=, :obj_clsid=
    undef_method :obj_clsid=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    # References to the associated Frame.
    attr_accessor :frame
    alias_method :attr_frame, :frame
    undef_method :frame
    alias_method :attr_frame=, :frame=
    undef_method :frame=
    
    # Access to the embedded/linked Ole Object
    attr_accessor :obj_iunknown
    alias_method :attr_obj_iunknown, :obj_iunknown
    undef_method :obj_iunknown
    alias_method :attr_obj_iunknown=, :obj_iunknown=
    undef_method :obj_iunknown=
    
    attr_accessor :obj_iole_object
    alias_method :attr_obj_iole_object, :obj_iole_object
    undef_method :obj_iole_object
    alias_method :attr_obj_iole_object=, :obj_iole_object=
    undef_method :obj_iole_object=
    
    attr_accessor :obj_iview_object2
    alias_method :attr_obj_iview_object2, :obj_iview_object2
    undef_method :obj_iview_object2
    alias_method :attr_obj_iview_object2=, :obj_iview_object2=
    undef_method :obj_iview_object2=
    
    attr_accessor :obj_iole_in_place_object
    alias_method :attr_obj_iole_in_place_object, :obj_iole_in_place_object
    undef_method :obj_iole_in_place_object
    alias_method :attr_obj_iole_in_place_object=, :obj_iole_in_place_object=
    undef_method :obj_iole_in_place_object=
    
    attr_accessor :obj_iole_command_target
    alias_method :attr_obj_iole_command_target, :obj_iole_command_target
    undef_method :obj_iole_command_target
    alias_method :attr_obj_iole_command_target=, :obj_iole_command_target=
    undef_method :obj_iole_command_target=
    
    attr_accessor :obj_document_view
    alias_method :attr_obj_document_view, :obj_document_view
    undef_method :obj_document_view
    alias_method :attr_obj_document_view=, :obj_document_view=
    undef_method :obj_document_view=
    
    # Related storage information
    attr_accessor :temp_storage
    alias_method :attr_temp_storage, :temp_storage
    undef_method :temp_storage
    alias_method :attr_temp_storage=, :temp_storage=
    undef_method :temp_storage=
    
    # IStorage interface of the receiver
    # Internal state and style information
    attr_accessor :aspect
    alias_method :attr_aspect, :aspect
    undef_method :aspect
    alias_method :attr_aspect=, :aspect=
    undef_method :aspect=
    
    # the display aspect of the embedded object, e.g., DvaspectContent or DvaspectIcon
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # Indicates the type of client that can be supported inside this container
    attr_accessor :is_static
    alias_method :attr_is_static, :is_static
    undef_method :is_static
    alias_method :attr_is_static=, :is_static=
    undef_method :is_static=
    
    # Indicates item's display is static, i.e., a bitmap, metafile, etc.
    attr_accessor :border_widths
    alias_method :attr_border_widths, :border_widths
    undef_method :border_widths
    alias_method :attr_border_widths=, :border_widths=
    undef_method :border_widths=
    
    attr_accessor :indent
    alias_method :attr_indent, :indent
    undef_method :indent
    alias_method :attr_indent=, :indent=
    undef_method :indent=
    
    attr_accessor :in_update
    alias_method :attr_in_update, :in_update
    undef_method :in_update
    alias_method :attr_in_update=, :in_update=
    undef_method :in_update=
    
    attr_accessor :in_init
    alias_method :attr_in_init, :in_init
    undef_method :in_init
    alias_method :attr_in_init=, :in_init=
    undef_method :in_init=
    
    attr_accessor :in_dispose
    alias_method :attr_in_dispose, :in_dispose
    undef_method :in_dispose
    alias_method :attr_in_dispose=, :in_dispose=
    undef_method :in_dispose=
    
    class_module.module_eval {
      const_set_lazy(:WORDPROGID) { "Word.Document" }
      const_attr_reader  :WORDPROGID
    }
    
    # $NON-NLS-1$
    attr_accessor :listener
    alias_method :attr_listener, :listener
    undef_method :listener
    alias_method :attr_listener=, :listener=
    undef_method :listener=
    
    class_module.module_eval {
      const_set_lazy(:STATE_NONE) { 0 }
      const_attr_reader  :STATE_NONE
      
      const_set_lazy(:STATE_RUNNING) { 1 }
      const_attr_reader  :STATE_RUNNING
      
      const_set_lazy(:STATE_INPLACEACTIVE) { 2 }
      const_attr_reader  :STATE_INPLACEACTIVE
      
      const_set_lazy(:STATE_UIACTIVE) { 3 }
      const_attr_reader  :STATE_UIACTIVE
      
      const_set_lazy(:STATE_ACTIVE) { 4 }
      const_attr_reader  :STATE_ACTIVE
    }
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    typesig { [Composite, ::Java::Int] }
    def initialize(parent, style)
      # NOTE: this constructor should never be used by itself because it does
      # not create an Ole Object
      @i_unknown = nil
      @i_ole_client_site = nil
      @i_advise_sink = nil
      @i_ole_in_place_site = nil
      @i_ole_document_site = nil
      @app_clsid = nil
      @obj_clsid = nil
      @ref_count = 0
      @frame = nil
      @obj_iunknown = nil
      @obj_iole_object = nil
      @obj_iview_object2 = nil
      @obj_iole_in_place_object = nil
      @obj_iole_command_target = nil
      @obj_document_view = nil
      @temp_storage = nil
      @aspect = 0
      @type = 0
      @is_static = false
      @border_widths = nil
      @indent = nil
      @in_update = false
      @in_init = false
      @in_dispose = false
      @listener = nil
      @state = 0
      super(parent, style)
      @border_widths = RECT.new
      @indent = RECT.new
      @in_update = false
      @in_init = true
      @in_dispose = false
      @state = STATE_NONE
      create_cominterfaces
      # install the Ole Frame for this Client Site
      while (!(parent).nil?)
        if (parent.is_a?(OleFrame))
          @frame = parent
          break
        end
        parent = parent.get_parent
      end
      if ((@frame).nil?)
        OLE.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @frame._add_ref
      @aspect = COM::DVASPECT_CONTENT
      @type = COM::OLEEMBEDDED
      @is_static = false
      @listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members OleClientSite
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          case (e.attr_type)
          when SWT::Resize, SWT::Move
            on_resize(e)
          when SWT::Dispose
            on_dispose(e)
          when SWT::FocusIn
            on_focus_in(e)
          when SWT::FocusOut
            on_focus_out(e)
          when SWT::Paint
            on_paint(e)
          when SWT::Traverse
            on_traverse(e)
          when SWT::KeyDown
            # required for traversal
          else
            OLE.error(SWT::ERROR_NOT_IMPLEMENTED)
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @frame.add_listener(SWT::Resize, @listener)
      @frame.add_listener(SWT::Move, @listener)
      add_listener(SWT::Dispose, @listener)
      add_listener(SWT::FocusIn, @listener)
      add_listener(SWT::FocusOut, @listener)
      add_listener(SWT::Paint, @listener)
      add_listener(SWT::Traverse, @listener)
      add_listener(SWT::KeyDown, @listener)
    end
    
    typesig { [Composite, ::Java::Int, JavaFile] }
    # Create an OleClientSite child widget using the OLE Document type associated with the
    # specified file.  The OLE Document type is determined either through header information in the file
    # or through a Registry entry for the file extension. Use style bits to select a particular look
    # or set of properties.
    # 
    # @param parent a composite widget; must be an OleFrame
    # @param style the bitwise OR'ing of widget styles
    # @param file the file that is to be opened in this OLE Document
    # 
    # @exception IllegalArgumentException
    # <ul><li>ERROR_NULL_ARGUMENT when the parent is null
    # <li>ERROR_INVALID_ARGUMENT when the parent is not an OleFrame</ul>
    # @exception SWTException
    # <ul><li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread
    # <li>ERROR_CANNOT_CREATE_OBJECT when failed to create OLE Object
    # <li>ERROR_CANNOT_OPEN_FILE when failed to open file
    # <li>ERROR_INTERFACE_NOT_FOUND when unable to create callbacks for OLE Interfaces
    # <li>ERROR_INVALID_CLASSID
    # </ul>
    def initialize(parent, style, file)
      initialize__ole_client_site(parent, style)
      begin
        if ((file).nil? || file.is_directory || !file.exists)
          OLE.error(OLE::ERROR_INVALID_ARGUMENT)
        end
        # Is there an associated CLSID?
        @app_clsid = GUID.new
        file_name = ((file.get_absolute_path).to_s + "\0").to_char_array
        result = COM._get_class_file(file_name, @app_clsid)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_INVALID_CLASSID, result)
        end
        # associated CLSID may not be installed on this machine
        if ((get_program_id).nil?)
          OLE.error(OLE::ERROR_INVALID_CLASSID, result)
        end
        # Open a temporary storage object
        @temp_storage = create_temp_storage
        # Create ole object with storage object
        # long
        # long
        address = Array.typed(::Java::Int).new(1) { 0 }
        result = COM._ole_create_from_file(@app_clsid, file_name, COM::IIDIUnknown, COM::OLERENDER_DRAW, nil, @i_ole_client_site.get_address, @temp_storage.get_address, address)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CREATE_OBJECT, result)
        end
        @obj_iunknown = IUnknown.new(address[0])
        # Init sinks
        add_object_references
        if ((COM._ole_run(@obj_iunknown.get_address)).equal?(OLE::S_OK))
          @state = STATE_RUNNING
        end
      rescue SWTException => e
        dispose
        dispose_cominterfaces
        raise e
      end
    end
    
    typesig { [Composite, ::Java::Int, String] }
    # Create an OleClientSite child widget to edit a blank document using the specified OLE Document
    # application.  Use style bits to select a particular look or set of properties.
    # 
    # @param parent a composite widget; must be an OleFrame
    # @param style the bitwise OR'ing of widget styles
    # @param progId the unique program identifier of am OLE Document application;
    # the value of the ProgID key or the value of the VersionIndependentProgID key specified
    # in the registry for the desired OLE Document (for example, the VersionIndependentProgID
    # for Word is Word.Document)
    # 
    # @exception IllegalArgumentException
    # <ul>
    # <li>ERROR_NULL_ARGUMENT when the parent is null
    # <li>ERROR_INVALID_ARGUMENT when the parent is not an OleFrame
    # </ul>
    # @exception SWTException
    # <ul><li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread
    # <li>ERROR_INVALID_CLASSID when the progId does not map to a registered CLSID
    # <li>ERROR_CANNOT_CREATE_OBJECT when failed to create OLE Object
    # </ul>
    def initialize(parent, style, prog_id)
      initialize__ole_client_site(parent, style)
      begin
        @app_clsid = get_class_id(prog_id)
        if ((@app_clsid).nil?)
          OLE.error(OLE::ERROR_INVALID_CLASSID)
        end
        # Open a temporary storage object
        @temp_storage = create_temp_storage
        # Create ole object with storage object
        # long
        # long
        address = Array.typed(::Java::Int).new(1) { 0 }
        result = COM._ole_create(@app_clsid, COM::IIDIUnknown, COM::OLERENDER_DRAW, nil, @i_ole_client_site.get_address, @temp_storage.get_address, address)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CREATE_OBJECT, result)
        end
        @obj_iunknown = IUnknown.new(address[0])
        # Init sinks
        add_object_references
        if ((COM._ole_run(@obj_iunknown.get_address)).equal?(OLE::S_OK))
          @state = STATE_RUNNING
        end
      rescue SWTException => e
        dispose
        dispose_cominterfaces
        raise e
      end
    end
    
    typesig { [Composite, ::Java::Int, String, JavaFile] }
    # Create an OleClientSite child widget to edit the specified file using the specified OLE Document
    # application.  Use style bits to select a particular look or set of properties.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>OleClientSite</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # @param parent a composite widget; must be an OleFrame
    # @param style the bitwise OR'ing of widget styles
    # @param progId the unique program identifier of am OLE Document application;
    # the value of the ProgID key or the value of the VersionIndependentProgID key specified
    # in the registry for the desired OLE Document (for example, the VersionIndependentProgID
    # for Word is Word.Document)
    # @param file the file that is to be opened in this OLE Document
    # 
    # @exception IllegalArgumentException
    # <ul><li>ERROR_NULL_ARGUMENT when the parent is null
    # <li>ERROR_INVALID_ARGUMENT when the parent is not an OleFrame</ul>
    # @exception SWTException
    # <ul><li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread
    # <li>ERROR_INVALID_CLASSID when the progId does not map to a registered CLSID
    # <li>ERROR_CANNOT_CREATE_OBJECT when failed to create OLE Object
    # <li>ERROR_CANNOT_OPEN_FILE when failed to open file
    # </ul>
    def initialize(parent, style, prog_id, file)
      initialize__ole_client_site(parent, style)
      begin
        if ((file).nil? || file.is_directory || !file.exists)
          OLE.error(OLE::ERROR_INVALID_ARGUMENT)
        end
        @app_clsid = get_class_id(prog_id)
        if ((@app_clsid).nil?)
          OLE.error(OLE::ERROR_INVALID_CLASSID)
        end
        # Are we opening this file with the preferred OLE object?
        file_name = ((file.get_absolute_path).to_s + "\0").to_char_array
        file_clsid = GUID.new
        COM._get_class_file(file_name, file_clsid)
        if (COM._is_equal_guid(@app_clsid, file_clsid))
          # Using the same application that created file, therefore, use default mechanism.
          @temp_storage = create_temp_storage
          # Create ole object with storage object
          # long
          # long
          address = Array.typed(::Java::Int).new(1) { 0 }
          result = COM._ole_create_from_file(@app_clsid, file_name, COM::IIDIUnknown, COM::OLERENDER_DRAW, nil, @i_ole_client_site.get_address, @temp_storage.get_address, address)
          if (!(result).equal?(COM::S_OK))
            OLE.error(OLE::ERROR_CANNOT_CREATE_OBJECT, result)
          end
          @obj_iunknown = IUnknown.new(address[0])
        else
          # Not using the same application that created file, therefore, copy from original file to a new storage file
          storage = nil
          if ((COM._stg_is_storage_file(file_name)).equal?(COM::S_OK))
            # long
            # long
            address = Array.typed(::Java::Int).new(1) { 0 }
            mode = COM::STGM_READ | COM::STGM_TRANSACTED | COM::STGM_SHARE_EXCLUSIVE
            result = COM._stg_open_storage(file_name, 0, mode, 0, 0, address) # Does an AddRef if successful
            if (!(result).equal?(COM::S_OK))
              OLE.error(OLE::ERROR_CANNOT_OPEN_FILE, result)
            end
            storage = IStorage.new(address[0])
          else
            # Original file is not a Storage file so copy contents to a stream in a new storage file
            # long
            # long
            address = Array.typed(::Java::Int).new(1) { 0 }
            mode = COM::STGM_READWRITE | COM::STGM_DIRECT | COM::STGM_SHARE_EXCLUSIVE | COM::STGM_CREATE
            result = COM._stg_create_docfile(nil, mode | COM::STGM_DELETEONRELEASE, 0, address) # Increments ref count if successful
            if (!(result).equal?(COM::S_OK))
              OLE.error(OLE::ERROR_CANNOT_OPEN_FILE, result)
            end
            storage = IStorage.new(address[0])
            # Create a stream on the storage object.
            # Word does not follow the standard and does not use "CONTENTS" as the name of
            # its primary stream
            stream_name = "CONTENTS" # $NON-NLS-1$
            word_guid = get_class_id(WORDPROGID)
            if (!(word_guid).nil? && COM._is_equal_guid(@app_clsid, word_guid))
              stream_name = "WordDocument"
            end # $NON-NLS-1$
            # long
            address = Array.typed(::Java::Int).new(1) { 0 }
            result = storage._create_stream(stream_name, mode, 0, 0, address) # Increments ref count if successful
            if (!(result).equal?(COM::S_OK))
              storage._release
              OLE.error(OLE::ERROR_CANNOT_OPEN_FILE, result)
            end
            stream = IStream.new(address[0])
            begin
              # Copy over data in file to named stream
              file_input = FileInputStream.new(file)
              increment = 1024 * 4
              buffer = Array.typed(::Java::Byte).new(increment) { 0 }
              count = 0
              while ((count = file_input.read(buffer)) > 0)
                # long
                pv = COM._co_task_mem_alloc(count)
                OS._move_memory(pv, buffer, count)
                result = stream._write(pv, count, nil)
                COM._co_task_mem_free(pv)
                if (!(result).equal?(COM::S_OK))
                  file_input.close
                  stream._release
                  storage._release
                  OLE.error(OLE::ERROR_CANNOT_OPEN_FILE, result)
                end
              end
              file_input.close
              stream._commit(COM::STGC_DEFAULT)
              stream._release
            rescue IOException => err
              stream._release
              storage._release
              OLE.error(OLE::ERROR_CANNOT_OPEN_FILE)
            end
          end
          # Open a temporary storage object
          @temp_storage = create_temp_storage
          # Copy over contents of file
          result = storage._copy_to(0, nil, nil, @temp_storage.get_address)
          storage._release
          if (!(result).equal?(COM::S_OK))
            OLE.error(OLE::ERROR_CANNOT_OPEN_FILE, result)
          end
          # create ole client
          # long
          # long
          ppv = Array.typed(::Java::Int).new(1) { 0 }
          result = COM._co_create_instance(@app_clsid, 0, COM::CLSCTX_INPROC_HANDLER | COM::CLSCTX_INPROC_SERVER, COM::IIDIUnknown, ppv)
          if (!(result).equal?(COM::S_OK))
            OLE.error(OLE::ERROR_CANNOT_CREATE_OBJECT, result)
          end
          @obj_iunknown = IUnknown.new(ppv[0])
          # get the persistent storage of the ole client
          # long
          ppv = Array.typed(::Java::Int).new(1) { 0 }
          result = @obj_iunknown._query_interface(COM::IIDIPersistStorage, ppv)
          if (!(result).equal?(COM::S_OK))
            OLE.error(OLE::ERROR_CANNOT_CREATE_OBJECT, result)
          end
          i_persist_storage = IPersistStorage.new(ppv[0])
          # load the contents of the file into the ole client site
          result = i_persist_storage._load(@temp_storage.get_address)
          i_persist_storage._release
          if (!(result).equal?(COM::S_OK))
            OLE.error(OLE::ERROR_CANNOT_CREATE_OBJECT, result)
          end
        end
        # Init sinks
        add_object_references
        if ((COM._ole_run(@obj_iunknown.get_address)).equal?(OLE::S_OK))
          @state = STATE_RUNNING
        end
      rescue SWTException => e
        dispose
        dispose_cominterfaces
        raise e
      end
    end
    
    typesig { [] }
    def add_object_references
      # long
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      if ((@obj_iunknown._query_interface(COM::IIDIPersist, ppv_object)).equal?(COM::S_OK))
        obj_ipersist = IPersist.new(ppv_object[0])
        tempid = GUID.new
        if ((obj_ipersist._get_class_id(tempid)).equal?(COM::S_OK))
          @obj_clsid = tempid
        end
        obj_ipersist._release
      end
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      result = @obj_iunknown._query_interface(COM::IIDIViewObject2, ppv_object)
      if (!(result).equal?(COM::S_OK))
        OLE.error(OLE::ERROR_INTERFACE_NOT_FOUND, result)
      end
      @obj_iview_object2 = IViewObject2.new(ppv_object[0])
      @obj_iview_object2._set_advise(@aspect, 0, @i_advise_sink.get_address)
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      result = @obj_iunknown._query_interface(COM::IIDIOleObject, ppv_object)
      if (!(result).equal?(COM::S_OK))
        OLE.error(OLE::ERROR_INTERFACE_NOT_FOUND, result)
      end
      @obj_iole_object = IOleObject.new(ppv_object[0])
      @obj_iole_object._set_client_site(@i_ole_client_site.get_address)
      pdw_connection = Array.typed(::Java::Int).new(1) { 0 }
      @obj_iole_object._advise(@i_advise_sink.get_address, pdw_connection)
      @obj_iole_object._set_host_names("main", "main") # $NON-NLS-1$ //$NON-NLS-2$
      # Notify the control object that it is embedded in an OLE container
      COM._ole_set_contained_object(@obj_iunknown.get_address, true)
      # Is OLE object linked or embedded?
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      if ((@obj_iunknown._query_interface(COM::IIDIOleLink, ppv_object)).equal?(COM::S_OK))
        obj_iole_link = IOleLink.new(ppv_object[0])
        # long
        # long
        ppmk = Array.typed(::Java::Int).new(1) { 0 }
        if ((obj_iole_link._get_source_moniker(ppmk)).equal?(COM::S_OK))
          obj_imoniker = IMoniker.new(ppmk[0])
          obj_imoniker._release
          @type = COM::OLELINKED
          obj_iole_link._bind_if_running
        else
          @is_static = true
        end
        obj_iole_link._release
      end
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def _can_in_place_activate
      if ((@aspect).equal?(COM::DVASPECT_CONTENT) && (@type).equal?(COM::OLEEMBEDDED))
        return COM::S_OK
      end
      return COM::S_FALSE
    end
    
    typesig { [::Java::Int] }
    def _context_sensitive_help(f_enter_mode)
      return COM::S_OK
    end
    
    typesig { [] }
    def create_cominterfaces
      @i_unknown = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleClientSite
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
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      # method8 RequestNewObjectLayout - not implemented
      @i_ole_client_site = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleClientSite
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
          return _save_object
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # method4 GetMoniker - not implemented
        # long
        # long
        define_method :method5 do |args|
          return _get_container(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          return _show_object
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          # 64
          return _on_show_window(RJava.cast_to_int(args[0]))
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 0, 3, 1, 0, 1, 0]))
      @i_advise_sink = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleClientSite
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
          return _on_data_change(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          # 64
          return _on_view_change(RJava.cast_to_int(args[0]), RJava.cast_to_int(args[1]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # method5 OnRename - not implemented
        # long
        # long
        define_method :method6 do |args|
          _on_save
          return 0
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          return _on_close
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 2, 2, 1, 0, 0]))
      @i_ole_in_place_site = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleClientSite
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
          return _get_window(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          return _context_sensitive_help(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _can_in_place_activate
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          return _on_in_place_activate
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          return _on_uiactivate
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          return _get_window_context(args[0], args[1], args[2], args[3], args[4])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          if ((args.attr_length).equal?(2))
            # 64
            # 64
            return _scroll(RJava.cast_to_int(args[0]), RJava.cast_to_int(args[1]))
          else
            return _scroll_64(args[0])
          end
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          # 64
          return _on_uideactivate(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method11 do |args|
          return _on_in_place_deactivate
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # method12 DiscardUndoState - not implemented
        # method13 DeactivateAndUndoChange - not implemented
        # long
        # long
        define_method :method14 do |args|
          return _on_pos_rect_change(args[0])
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1, 1, 0, 0, 0, 5, (C::PTR_SIZEOF).equal?(4) ? 2 : 1, 1, 0, 0, 0, 1]))
      @i_ole_document_site = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleClientSite
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
          return _activate_me(args[0])
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1]))
    end
    
    typesig { [] }
    def create_temp_storage
      # long
      # long
      temp_storage = Array.typed(::Java::Int).new(1) { 0 }
      grf_mode = COM::STGM_READWRITE | COM::STGM_SHARE_EXCLUSIVE | COM::STGM_DELETEONRELEASE
      result = COM._stg_create_docfile(nil, grf_mode, 0, temp_storage)
      if (!(result).equal?(COM::S_OK))
        OLE.error(OLE::ERROR_CANNOT_CREATE_FILE, result)
      end
      return IStorage.new(temp_storage[0])
    end
    
    typesig { [] }
    # Deactivates an active in-place object and discards the object's undo state.
    def deactivate_in_place_client
      if (!(@obj_iole_in_place_object).nil?)
        @obj_iole_in_place_object._in_place_deactivate
      end
    end
    
    typesig { [] }
    def delete_temp_storage
      # Destroy this item's contents in the temp root IStorage.
      if (!(@temp_storage).nil?)
        @temp_storage._release
      end
      @temp_storage = nil
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@i_unknown).nil?)
        @i_unknown.dispose
      end
      @i_unknown = nil
      if (!(@i_ole_client_site).nil?)
        @i_ole_client_site.dispose
      end
      @i_ole_client_site = nil
      if (!(@i_advise_sink).nil?)
        @i_advise_sink.dispose
      end
      @i_advise_sink = nil
      if (!(@i_ole_in_place_site).nil?)
        @i_ole_in_place_site.dispose
      end
      @i_ole_in_place_site = nil
      if (!(@i_ole_document_site).nil?)
        @i_ole_document_site.dispose
      end
      @i_ole_document_site = nil
    end
    
    typesig { [::Java::Int] }
    # Requests that the OLE Document or ActiveX Control perform an action; actions are almost always
    # changes to the activation state.
    # 
    # @param verb the operation that is requested.  This is one of the OLE.OLEIVERB_ values
    # 
    # @return an HRESULT value indicating the success of the operation request; OLE.S_OK indicates
    # success
    def do_verb(verb)
      # Not all OLE clients (for example PowerPoint) can be set into the running state in the constructor.
      # The fix is to ensure that the client is in the running state before invoking any verb on it.
      if ((@state).equal?(STATE_NONE))
        if ((COM._ole_run(@obj_iunknown.get_address)).equal?(OLE::S_OK))
          @state = STATE_RUNNING
        end
      end
      if ((@state).equal?(STATE_NONE) || @is_static)
        return COM::E_FAIL
      end
      # See PR: 1FV9RZW
      rect = RECT.new
      OS._get_client_rect(self.attr_handle, rect)
      result = @obj_iole_object._do_verb(verb, nil, @i_ole_client_site.get_address, 0, self.attr_handle, rect)
      if (!(@state).equal?(STATE_RUNNING) && @in_init)
        update_storage
        @in_init = false
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, Variant, Variant] }
    # Asks the OLE Document or ActiveX Control to execute a command from a standard
    # list of commands. The OLE Document or ActiveX Control must support the IOleCommandTarget
    # interface.  The OLE Document or ActiveX Control does not have to support all the commands
    # in the standard list.  To check if a command is supported, you can call queryStatus with
    # the cmdID.
    # 
    # @param cmdID the ID of a command; these are the OLE.OLECMDID_ values - a small set of common
    # commands
    # @param options the optional flags; these are the OLE.OLECMDEXECOPT_ values
    # @param in the argument for the command
    # @param out the return value of the command
    # 
    # @return an HRESULT value; OLE.S_OK is returned if successful
    def exec(cmd_id, options, in_, out)
      if ((@obj_iole_command_target).nil?)
        # long
        # long
        address = Array.typed(::Java::Int).new(1) { 0 }
        if (!(@obj_iunknown._query_interface(COM::IIDIOleCommandTarget, address)).equal?(COM::S_OK))
          return OLE::ERROR_INTERFACE_NOT_FOUND
        end
        @obj_iole_command_target = IOleCommandTarget.new(address[0])
      end
      # long
      in_address = 0
      if (!(in_).nil?)
        in_address = OS._global_alloc(OS::GMEM_FIXED | OS::GMEM_ZEROINIT, VARIANT.attr_sizeof)
        in_.get_data(in_address)
      end
      # long
      out_address = 0
      if (!(out).nil?)
        out_address = OS._global_alloc(OS::GMEM_FIXED | OS::GMEM_ZEROINIT, VARIANT.attr_sizeof)
        out.get_data(out_address)
      end
      result = @obj_iole_command_target._exec(nil, cmd_id, options, in_address, out_address)
      if (!(in_address).equal?(0))
        COM._variant_clear(in_address)
        OS._global_free(in_address)
      end
      if (!(out_address).equal?(0))
        out.set_data(out_address)
        COM._variant_clear(out_address)
        OS._global_free(out_address)
      end
      return result
    end
    
    typesig { [] }
    def get_automation_object
      # long
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      if (!(@obj_iunknown._query_interface(COM::IIDIDispatch, ppv_object)).equal?(COM::S_OK))
        return nil
      end
      return IDispatch.new(ppv_object[0])
    end
    
    typesig { [String] }
    def get_class_id(client_name)
      # create a GUID struct to hold the result
      guid = GUID.new
      # create a null terminated array of char
      buffer = nil
      if (!(client_name).nil?)
        count = client_name.length
        buffer = CharArray.new(count + 1)
        client_name.get_chars(0, count, buffer, 0)
      end
      if (!(COM._clsidfrom_prog_id(buffer, guid)).equal?(COM::S_OK))
        result = COM._clsidfrom_string(buffer, guid)
        if (!(result).equal?(COM::S_OK))
          return nil
        end
      end
      return guid
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_container(pp_container)
      # Simple containers that do not support links to their embedded
      # objects probably do not need to implement this method. Instead,
      # they can return E_NOINTERFACE and set ppContainer to NULL.
      if (!(pp_container).equal?(0))
        # long
        COM._move_memory(pp_container, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
      end
      return COM::E_NOINTERFACE
    end
    
    typesig { [] }
    def get_extent
      sizel = SIZE.new
      # get the current size of the embedded OLENatives object
      if (!(@obj_iole_object).nil?)
        if (!(@obj_iview_object2).nil? && !COM._ole_is_running(@obj_iole_object.get_address))
          @obj_iview_object2._get_extent(@aspect, -1, nil, sizel)
        else
          @obj_iole_object._get_extent(@aspect, sizel)
        end
      end
      return x_form_himetric_to_pixels(sizel)
    end
    
    typesig { [] }
    # Returns the indent value that would be used to compute the clipping area
    # of the active X object.
    # 
    # NOTE: The indent value is no longer being used by the client site.
    # 
    # @return the rectangle representing the indent
    def get_indent
      return Rectangle.new(@indent.attr_left, @indent.attr_right, @indent.attr_top, @indent.attr_bottom)
    end
    
    typesig { [] }
    # Returns the program ID of the OLE Document or ActiveX Control.
    # 
    # @return the program ID of the OLE Document or ActiveX Control
    def get_program_id
      if (!(@app_clsid).nil?)
        # long
        # long
        lplpsz_prog_id = Array.typed(::Java::Int).new(1) { 0 }
        if ((COM._prog_idfrom_clsid(@app_clsid, lplpsz_prog_id)).equal?(COM::S_OK))
          # long
          h_mem = lplpsz_prog_id[0]
          length_ = OS._global_size(h_mem)
          # long
          ptr = OS._global_lock(h_mem)
          buffer = CharArray.new(length_)
          COM._move_memory(buffer, ptr, length_)
          OS._global_unlock(h_mem)
          OS._global_free(h_mem)
          result = String.new(buffer)
          # remove null terminator
          index = result.index_of("\0")
          return result.substring(0, index)
        end
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    # long
    def _activate_me(p_view_to_activate)
      if ((p_view_to_activate).equal?(0))
        # long
        # long
        ppv_object = Array.typed(::Java::Int).new(1) { 0 }
        if (!(@obj_iunknown._query_interface(COM::IIDIOleDocument, ppv_object)).equal?(COM::S_OK))
          return COM::E_FAIL
        end
        obj_ole_document = IOleDocument.new(ppv_object[0])
        if (!(obj_ole_document._create_view(@i_ole_in_place_site.get_address, 0, 0, ppv_object)).equal?(COM::S_OK))
          return COM::E_FAIL
        end
        obj_ole_document._release
        @obj_document_view = IOleDocumentView.new(ppv_object[0])
      else
        @obj_document_view = IOleDocumentView.new(p_view_to_activate)
        @obj_document_view._add_ref
        @obj_document_view._set_in_place_site(@i_ole_in_place_site.get_address)
      end
      @obj_document_view._uiactivate(1) # TRUE
      rect = get_rect
      @obj_document_view._set_rect(rect)
      @obj_document_view._show(1) # TRUE
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_window(phwnd)
      if ((phwnd).equal?(0))
        return COM::E_INVALIDARG
      end
      if ((@frame).nil?)
        # long
        COM._move_memory(phwnd, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
        return COM::E_NOTIMPL
      end
      # Copy the Window's handle into the memory passed in
      # long
      COM._move_memory(phwnd, Array.typed(::Java::Int).new([self.attr_handle]), OS::PTR_SIZEOF)
      return COM::S_OK
    end
    
    typesig { [] }
    def get_rect
      area = get_client_area
      rect = RECT.new
      rect.attr_left = area.attr_x
      rect.attr_top = area.attr_y
      rect.attr_right = area.attr_x + area.attr_width
      rect.attr_bottom = area.attr_y + area.attr_height
      return rect
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def _get_window_context(pp_frame, pp_doc, lprc_pos_rect, lprc_clip_rect, lp_frame_info)
      if ((@frame).nil? || (pp_frame).equal?(0))
        return COM::E_NOTIMPL
      end
      # fill in frame handle
      # long
      i_ole_in_place_frame = @frame.get_iole_in_place_frame
      # long
      COM._move_memory(pp_frame, Array.typed(::Java::Int).new([i_ole_in_place_frame]), OS::PTR_SIZEOF)
      @frame._add_ref
      # null out document handle
      if (!(pp_doc).equal?(0))
        # long
        COM._move_memory(pp_doc, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
      end
      # fill in position and clipping info
      rect = get_rect
      if (!(lprc_pos_rect).equal?(0))
        OS._move_memory(lprc_pos_rect, rect, RECT.attr_sizeof)
      end
      if (!(lprc_clip_rect).equal?(0))
        OS._move_memory(lprc_clip_rect, rect, RECT.attr_sizeof)
      end
      # get frame info
      frame_info = OLEINPLACEFRAMEINFO.new
      frame_info.attr_cb = OLEINPLACEFRAMEINFO.attr_sizeof
      frame_info.attr_f_mdiapp = 0
      frame_info.attr_hwnd_frame = @frame.attr_handle
      shell = get_shell
      menubar = shell.get_menu_bar
      if (!(menubar).nil? && !menubar.is_disposed)
        # long
        hwnd = shell.attr_handle
        # 64
        c_accel = RJava.cast_to_int(OS._send_message(hwnd, OS::WM_APP, 0, 0))
        if (!(c_accel).equal?(0))
          # long
          h_accel = OS._send_message(hwnd, OS::WM_APP + 1, 0, 0)
          if (!(h_accel).equal?(0))
            frame_info.attr_c_accel_entries = c_accel
            frame_info.attr_haccel = h_accel
          end
        end
      end
      COM._move_memory(lp_frame_info, frame_info, OLEINPLACEFRAMEINFO.attr_sizeof)
      return COM::S_OK
    end
    
    typesig { [] }
    # Returns whether ole document is dirty by checking whether the content
    # of the file representing the document is dirty.
    # 
    # @return <code>true</code> if the document has been modified,
    # <code>false</code> otherwise.
    # @since 3.1
    def is_dirty
      # Note: this method must return true unless it is absolutely clear that the
      # contents of the Ole Document do not differ from the contents in the file
      # on the file system.
      # 
      # Get access to the persistent storage mechanism
      # long
      # long
      address = Array.typed(::Java::Int).new(1) { 0 }
      if (!(@obj_iole_object._query_interface(COM::IIDIPersistFile, address)).equal?(COM::S_OK))
        return true
      end
      perm_storage = IPersistStorage.new(address[0])
      # Are the contents of the permanent storage different from the file?
      result = perm_storage._is_dirty
      perm_storage._release
      if ((result).equal?(COM::S_FALSE))
        return false
      end
      return true
    end
    
    typesig { [] }
    def is_focus_control
      check_widget
      # long
      focus_hwnd = OS._get_focus
      if ((@obj_iole_in_place_object).nil?)
        return ((self.attr_handle).equal?(focus_hwnd))
      end
      # long
      # long
      phwnd = Array.typed(::Java::Int).new(1) { 0 }
      @obj_iole_in_place_object._get_window(phwnd)
      while (!(focus_hwnd).equal?(0))
        if ((phwnd[0]).equal?(focus_hwnd))
          return true
        end
        focus_hwnd = OS._get_parent(focus_hwnd)
      end
      return false
    end
    
    typesig { [] }
    def _on_close
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _on_data_change(p_formatetc, p_stgmed)
      return COM::S_OK
    end
    
    typesig { [Event] }
    def on_dispose(e)
      @in_dispose = true
      if (!(@state).equal?(STATE_NONE))
        do_verb(OLE::OLEIVERB_DISCARDUNDOSTATE)
      end
      deactivate_in_place_client
      release_object_interfaces # Note, must release object interfaces before releasing frame
      delete_temp_storage
      # remove listeners
      remove_listener(SWT::Dispose, @listener)
      remove_listener(SWT::FocusIn, @listener)
      remove_listener(SWT::Paint, @listener)
      remove_listener(SWT::Traverse, @listener)
      remove_listener(SWT::KeyDown, @listener)
      @frame.remove_listener(SWT::Resize, @listener)
      @frame.remove_listener(SWT::Move, @listener)
      @frame._release
      @frame = nil
    end
    
    typesig { [Event] }
    def on_focus_in(e)
      if (@in_dispose)
        return
      end
      if (!(@state).equal?(STATE_UIACTIVE))
        do_verb(OLE::OLEIVERB_SHOW)
      end
      if ((@obj_iole_in_place_object).nil?)
        return
      end
      if (is_focus_control)
        return
      end
      # long
      # long
      phwnd = Array.typed(::Java::Int).new(1) { 0 }
      @obj_iole_in_place_object._get_window(phwnd)
      if ((phwnd[0]).equal?(0))
        return
      end
      OS._set_focus(phwnd[0])
    end
    
    typesig { [Event] }
    def on_focus_out(e)
    end
    
    typesig { [] }
    def _on_in_place_activate
      @state = STATE_INPLACEACTIVE
      @frame.set_current_document(self)
      if ((@obj_iole_object).nil?)
        return COM::S_OK
      end
      # long
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      if ((@obj_iole_object._query_interface(COM::IIDIOleInPlaceObject, ppv_object)).equal?(COM::S_OK))
        @obj_iole_in_place_object = IOleInPlaceObject.new(ppv_object[0])
      end
      return COM::S_OK
    end
    
    typesig { [] }
    def _on_in_place_deactivate
      if (!(@obj_iole_in_place_object).nil?)
        @obj_iole_in_place_object._release
      end
      @obj_iole_in_place_object = nil
      @state = STATE_RUNNING
      redraw
      shell = get_shell
      if (is_focus_control || @frame.is_focus_control)
        shell.traverse(SWT::TRAVERSE_TAB_NEXT)
      end
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _on_pos_rect_change(lprc_pos_rect)
      size = get_size
      set_extent(size.attr_x, size.attr_y)
      return COM::S_OK
    end
    
    typesig { [Event] }
    def on_paint(e)
      if ((@state).equal?(STATE_RUNNING) || (@state).equal?(STATE_INPLACEACTIVE))
        size = get_extent
        area = get_client_area
        rect = RECT.new
        if (get_program_id.starts_with("Excel.Sheet"))
          # $NON-NLS-1$
          rect.attr_left = area.attr_x
          rect.attr_right = area.attr_x + (area.attr_height * size.attr_cx / size.attr_cy)
          rect.attr_top = area.attr_y
          rect.attr_bottom = area.attr_y + area.attr_height
        else
          rect.attr_left = area.attr_x
          rect.attr_right = area.attr_x + size.attr_cx
          rect.attr_top = area.attr_y
          rect.attr_bottom = area.attr_y + size.attr_cy
        end
        # long
        p_area = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, RECT.attr_sizeof)
        OS._move_memory(p_area, rect, RECT.attr_sizeof)
        COM._ole_draw(@obj_iunknown.get_address, @aspect, e.attr_gc.attr_handle, p_area)
        OS._global_free(p_area)
      end
    end
    
    typesig { [Event] }
    def on_resize(e)
      set_bounds
    end
    
    typesig { [] }
    def _on_save
    end
    
    typesig { [::Java::Int] }
    def _on_show_window(f_show)
      return COM::S_OK
    end
    
    typesig { [] }
    def _on_uiactivate
      if ((@obj_iole_in_place_object).nil?)
        return COM::E_FAIL
      end
      @state = STATE_UIACTIVE
      # long
      # long
      phwnd = Array.typed(::Java::Int).new(1) { 0 }
      if ((@obj_iole_in_place_object._get_window(phwnd)).equal?(COM::S_OK))
        OS._set_window_pos(phwnd[0], OS::HWND_TOP, 0, 0, 0, 0, OS::SWP_NOSIZE | OS::SWP_NOMOVE)
      end
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    def _on_uideactivate(f_undoable)
      # currently, we are ignoring the fUndoable flag
      if ((@frame).nil? || @frame.is_disposed)
        return COM::S_OK
      end
      @state = STATE_INPLACEACTIVE
      @frame._set_active_object(0, 0)
      redraw
      shell = get_shell
      if (is_focus_control || @frame.is_focus_control)
        shell.traverse(SWT::TRAVERSE_TAB_NEXT)
      end
      menubar = shell.get_menu_bar
      if ((menubar).nil? || menubar.is_disposed)
        return COM::S_OK
      end
      # long
      shell_handle = shell.attr_handle
      OS._set_menu(shell_handle, menubar.attr_handle)
      return COM._ole_set_menu_descriptor(0, shell_handle, 0, 0, 0)
    end
    
    typesig { [Event] }
    def on_traverse(event)
      case (event.attr_detail)
      when SWT::TRAVERSE_ESCAPE, SWT::TRAVERSE_RETURN, SWT::TRAVERSE_TAB_NEXT, SWT::TRAVERSE_TAB_PREVIOUS, SWT::TRAVERSE_PAGE_NEXT, SWT::TRAVERSE_PAGE_PREVIOUS, SWT::TRAVERSE_MNEMONIC
        event.attr_doit = true
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def _on_view_change(dw_aspect, lindex)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return COM::E_NOINTERFACE
      end
      guid = GUID.new
      COM._move_memory(guid, riid, GUID.attr_sizeof)
      if (COM._is_equal_guid(guid, COM::IIDIUnknown))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_unknown.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIAdviseSink))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_advise_sink.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIOleClientSite))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_ole_client_site.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIOleInPlaceSite))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_ole_in_place_site.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIOleDocumentSite))
        prog_id = get_program_id
        if (!prog_id.starts_with("PowerPoint"))
          # $NON-NLS-1$
          # long
          COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_ole_document_site.get_address]), OS::PTR_SIZEOF)
          _add_ref
          return COM::S_OK
        end
      end
      # long
      COM._move_memory(ppv_object, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
      return COM::E_NOINTERFACE
    end
    
    typesig { [::Java::Int] }
    # Returns the status of the specified command.  The status is any bitwise OR'd combination of
    # SWTOLE.OLECMDF_SUPPORTED, SWTOLE.OLECMDF_ENABLED, SWTOLE.OLECMDF_LATCHED, SWTOLE.OLECMDF_NINCHED.
    # You can query the status of a command before invoking it with OleClientSite.exec.  The
    # OLE Document or ActiveX Control must support the IOleCommandTarget to make use of this method.
    # 
    # @param cmd the ID of a command; these are the OLE.OLECMDID_ values - a small set of common
    # commands
    # 
    # @return the status of the specified command or 0 if unable to query the OLE Object; these are the
    # OLE.OLECMDF_ values
    def query_status(cmd)
      if ((@obj_iole_command_target).nil?)
        # long
        # long
        address = Array.typed(::Java::Int).new(1) { 0 }
        if (!(@obj_iunknown._query_interface(COM::IIDIOleCommandTarget, address)).equal?(COM::S_OK))
          return 0
        end
        @obj_iole_command_target = IOleCommandTarget.new(address[0])
      end
      olecmd = OLECMD.new
      olecmd.attr_cmd_id = cmd
      result = @obj_iole_command_target._query_status(nil, 1, olecmd, nil)
      if (!(result).equal?(COM::S_OK))
        return 0
      end
      return olecmd.attr_cmdf
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
      end
      return @ref_count
    end
    
    typesig { [] }
    def release_object_interfaces
      if (!(@obj_iole_in_place_object).nil?)
        @obj_iole_in_place_object._release
      end
      @obj_iole_in_place_object = nil
      if (!(@obj_iole_object).nil?)
        @obj_iole_object._close(COM::OLECLOSE_NOSAVE)
        @obj_iole_object._release
      end
      @obj_iole_object = nil
      if (!(@obj_document_view).nil?)
        @obj_document_view._release
      end
      @obj_document_view = nil
      if (!(@obj_iview_object2).nil?)
        @obj_iview_object2._set_advise(@aspect, 0, 0)
        @obj_iview_object2._release
      end
      @obj_iview_object2 = nil
      if (!(@obj_iole_command_target).nil?)
        @obj_iole_command_target._release
      end
      @obj_iole_command_target = nil
      if (!(@obj_iunknown).nil?)
        @obj_iunknown._release
      end
      @obj_iunknown = nil
      COM._co_free_unused_libraries
    end
    
    typesig { [JavaFile, ::Java::Boolean] }
    # Saves the document to the specified file and includes OLE specific information if specified.
    # This method must <b>only</b> be used for files that have an OLE Storage format.  For example,
    # a word file edited with Word.Document should be saved using this method because there is
    # formating information that should be stored in the OLE specific Storage format.
    # 
    # @param file the file to which the changes are to be saved
    # @param includeOleInfo the flag to indicate whether OLE specific information should be saved.
    # 
    # @return true if the save was successful
    def save(file, include_ole_info)
      if (include_ole_info)
        return save_to_storage_file(file)
      end
      return save_to_traditional_file(file)
    end
    
    typesig { [::Java::Int, JavaFile] }
    # long
    def save_from_contents(address, file)
      success = false
      temp_contents = IStream.new(address)
      temp_contents._add_ref
      begin
        writer = FileOutputStream.new(file)
        increment = 1024 * 4
        # long
        pv = COM._co_task_mem_alloc(increment)
        pcb_written = Array.typed(::Java::Int).new(1) { 0 }
        while ((temp_contents._read(pv, increment, pcb_written)).equal?(COM::S_OK) && pcb_written[0] > 0)
          buffer = Array.typed(::Java::Byte).new(pcb_written[0]) { 0 }
          OS._move_memory(buffer, pv, pcb_written[0])
          writer.write(buffer) # Note: if file does not exist, this will create the file the
          # first time it is called
          success = true
        end
        COM._co_task_mem_free(pv)
        writer.close
      rescue IOException => err
      end
      temp_contents._release
      return success
    end
    
    typesig { [::Java::Int, JavaFile] }
    # long
    def save_from_ole10native(address, file)
      success = false
      temp_contents = IStream.new(address)
      temp_contents._add_ref
      # The "\1Ole10Native" stream contains a DWORD header whose value is the length
      # of the native data that follows.
      # long
      pv = COM._co_task_mem_alloc(4)
      size = Array.typed(::Java::Int).new(1) { 0 }
      rc = temp_contents._read(pv, 4, nil)
      OS._move_memory(size, pv, 4)
      COM._co_task_mem_free(pv)
      if ((rc).equal?(COM::S_OK) && size[0] > 0)
        # Read the data
        buffer = Array.typed(::Java::Byte).new(size[0]) { 0 }
        pv = COM._co_task_mem_alloc(size[0])
        rc = temp_contents._read(pv, size[0], nil)
        OS._move_memory(buffer, pv, size[0])
        COM._co_task_mem_free(pv)
        # open the file and write data into it
        begin
          writer = FileOutputStream.new(file)
          writer.write(buffer) # Note: if file does not exist, this will create the file
          writer.close
          success = true
        rescue IOException => err
        end
      end
      temp_contents._release
      return success
    end
    
    typesig { [] }
    def _save_object
      update_storage
      return COM::S_OK
    end
    
    typesig { [JavaFile] }
    # Saves the document to the specified file and includes OLE specific information.  This method
    # must <b>only</b> be used for files that have an OLE Storage format.  For example, a word file
    # edited with Word.Document should be saved using this method because there is formating information
    # that should be stored in the OLE specific Storage format.
    # 
    # @param file the file to which the changes are to be saved
    # 
    # @return true if the save was successful
    def save_to_storage_file(file)
      # The file will be saved using the formating of the current application - this
      # may not be the format of the application that was originally used to create the file
      # e.g. if an Excel file is opened in Word, the Word application will save the file in the
      # Word format
      # Note: if the file already exists, some applications will not overwrite the file
      # In these cases, you should delete the file first (probably save the contents of the file in case the
      # save fails)
      if ((file).nil? || file.is_directory)
        return false
      end
      if (!update_storage)
        return false
      end
      # get access to the persistent storage mechanism
      # long
      # long
      address = Array.typed(::Java::Int).new(1) { 0 }
      if (!(@obj_iole_object._query_interface(COM::IIDIPersistStorage, address)).equal?(COM::S_OK))
        return false
      end
      perm_storage = IPersistStorage.new(address[0])
      begin
        # long
        address = Array.typed(::Java::Int).new(1) { 0 }
        path = ((file.get_absolute_path).to_s + "\0").to_char_array
        mode = COM::STGM_TRANSACTED | COM::STGM_READWRITE | COM::STGM_SHARE_EXCLUSIVE | COM::STGM_CREATE
        result = COM._stg_create_docfile(path, mode, 0, address) # Does an AddRef if successful
        if (!(result).equal?(COM::S_OK))
          return false
        end
        storage = IStorage.new(address[0])
        begin
          if ((COM._ole_save(perm_storage.get_address, storage.get_address, false)).equal?(COM::S_OK))
            if ((storage._commit(COM::STGC_DEFAULT)).equal?(COM::S_OK))
              return true
            end
          end
        ensure
          storage._release
        end
      ensure
        perm_storage._release
      end
      return false
    end
    
    typesig { [JavaFile] }
    # Saves the document to the specified file.  This method must be used for
    # files that do not have an OLE Storage format.  For example, a bitmap file edited with MSPaint
    # should be saved using this method because bitmap is a standard format that does not include any
    # OLE specific data.
    # 
    # @param file the file to which the changes are to be saved
    # 
    # @return true if the save was successful
    def save_to_traditional_file(file)
      # Note: if the file already exists, some applications will not overwrite the file
      # In these cases, you should delete the file first (probably save the contents of the file in case the
      # save fails)
      if ((file).nil? || file.is_directory)
        return false
      end
      if (!update_storage)
        return false
      end
      # long
      # long
      address = Array.typed(::Java::Int).new(1) { 0 }
      # Look for a CONTENTS stream
      if ((@temp_storage._open_stream("CONTENTS", 0, COM::STGM_DIRECT | COM::STGM_READ | COM::STGM_SHARE_EXCLUSIVE, 0, address)).equal?(COM::S_OK))
        # $NON-NLS-1$
        return save_from_contents(address[0], file)
      end
      # Look for Ole 1.0 object stream
      if ((@temp_storage._open_stream("\1Ole10Native", 0, COM::STGM_DIRECT | COM::STGM_READ | COM::STGM_SHARE_EXCLUSIVE, 0, address)).equal?(COM::S_OK))
        # $NON-NLS-1$
        return save_from_ole10native(address[0], file)
      end
      return false
    end
    
    typesig { [::Java::Int] }
    # long
    def _scroll_64(scroll_extent)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def _scroll(scroll_extent_cx, scroll_extent_cy)
      return COM::S_OK
    end
    
    typesig { [RECT] }
    def set_border_space(new_borderwidth)
      @border_widths = new_borderwidth
      # readjust size and location of client site
      set_bounds
    end
    
    typesig { [] }
    def set_bounds
      area = @frame.get_client_area
      set_bounds(@border_widths.attr_left, @border_widths.attr_top, area.attr_width - @border_widths.attr_left - @border_widths.attr_right, area.attr_height - @border_widths.attr_top - @border_widths.attr_bottom)
      set_object_rects
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def set_extent(width, height)
      # Resize the width and height of the embedded/linked OLENatives object
      # to the specified values.
      if ((@obj_iole_object).nil? || @is_static || @in_update)
        return
      end
      current_extent = get_extent
      if ((width).equal?(current_extent.attr_cx) && (height).equal?(current_extent.attr_cy))
        return
      end
      new_extent = SIZE.new
      new_extent.attr_cx = width
      new_extent.attr_cy = height
      new_extent = x_form_pixels_to_himetric(new_extent)
      # Get the server running first, then do a SetExtent, then show it
      already_running = COM._ole_is_running(@obj_iole_object.get_address)
      if (!already_running)
        COM._ole_run(@obj_iole_object.get_address)
      end
      if ((@obj_iole_object._set_extent(@aspect, new_extent)).equal?(COM::S_OK))
        @in_update = true
        @obj_iole_object._update
        @in_update = false
        if (!already_running)
          # Close server if it wasn't already running upon entering this method.
          @obj_iole_object._close(COM::OLECLOSE_SAVEIFDIRTY)
        end
      end
    end
    
    typesig { [Rectangle] }
    # The indent value is no longer being used by the client site.
    # 
    # @param newIndent the rectangle representing the indent amount
    def set_indent(new_indent)
      @indent = RECT.new
      @indent.attr_left = new_indent.attr_x
      @indent.attr_right = new_indent.attr_width
      @indent.attr_top = new_indent.attr_y
      @indent.attr_bottom = new_indent.attr_height
    end
    
    typesig { [] }
    def set_object_rects
      if ((@obj_iole_in_place_object).nil?)
        return
      end
      # size the object to fill the available space
      # leave a border
      rect = get_rect
      @obj_iole_in_place_object._set_object_rects(rect, rect)
    end
    
    typesig { [] }
    def _show_object
      # Tells the container to position the object so it is visible to
      # the user. This method ensures that the container itself is
      # visible and not minimized.
      set_bounds
      return COM::S_OK
    end
    
    typesig { [String] }
    # Displays a dialog with the property information for this OLE Object.  The OLE Document or
    # ActiveX Control must support the ISpecifyPropertyPages interface.
    # 
    # @param title the name that will appear in the titlebar of the dialog
    def show_properties(title)
      # Get the Property Page information from the OLE Object
      # long
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      if (!(@obj_iunknown._query_interface(COM::IIDISpecifyPropertyPages, ppv_object)).equal?(COM::S_OK))
        return
      end
      obj_ispp = ISpecifyPropertyPages.new(ppv_object[0])
      ca_guid = CAUUID.new
      result = obj_ispp._get_pages(ca_guid)
      obj_ispp._release
      if (!(result).equal?(COM::S_OK))
        return
      end
      # create a frame in which to display the pages
      ch_title = nil
      if (!(title).nil?)
        ch_title = CharArray.new(title.length)
        title.get_chars(0, title.length, ch_title, 0)
      end
      # long
      result = COM._ole_create_property_frame(@frame.attr_handle, 10, 10, ch_title, 1, Array.typed(::Java::Int).new([@obj_iunknown.get_address]), ca_guid.attr_c_elems, ca_guid.attr_p_elems, COM::LOCALE_USER_DEFAULT, 0, 0)
      # free the property page information
      COM._co_task_mem_free(ca_guid.attr_p_elems)
    end
    
    typesig { [] }
    def update_storage
      if ((@temp_storage).nil?)
        return false
      end
      # long
      # long
      ppv = Array.typed(::Java::Int).new(1) { 0 }
      if (!(@obj_iunknown._query_interface(COM::IIDIPersistStorage, ppv)).equal?(COM::S_OK))
        return false
      end
      i_persist_storage = IPersistStorage.new(ppv[0])
      result = COM._ole_save(i_persist_storage.get_address, @temp_storage.get_address, true)
      if (!(result).equal?(COM::S_OK))
        # OleSave will fail for static objects, so do what OleSave does.
        COM._write_class_stg(@temp_storage.get_address, @obj_clsid)
        result = i_persist_storage._save(@temp_storage.get_address, true)
      end
      @temp_storage._commit(COM::STGC_DEFAULT)
      result = i_persist_storage._save_completed(0)
      i_persist_storage._release
      return true
    end
    
    typesig { [SIZE] }
    def x_form_himetric_to_pixels(a_size)
      # Return a new Size which is the pixel transformation of a
      # size in HIMETRIC units.
      # long
      h_dc = OS._get_dc(0)
      xppi = OS._get_device_caps(h_dc, 88) # logical pixels/inch in x
      yppi = OS._get_device_caps(h_dc, 90) # logical pixels/inch in y
      OS._release_dc(0, h_dc)
      cx = Compatibility.round(a_size.attr_cx * xppi, 2540) # 2540 HIMETRIC units per inch
      cy = Compatibility.round(a_size.attr_cy * yppi, 2540)
      size = SIZE.new
      size.attr_cx = cx
      size.attr_cy = cy
      return size
    end
    
    typesig { [SIZE] }
    def x_form_pixels_to_himetric(a_size)
      # Return a new size which is the HIMETRIC transformation of a
      # size in pixel units.
      # long
      h_dc = OS._get_dc(0)
      xppi = OS._get_device_caps(h_dc, 88) # logical pixels/inch in x
      yppi = OS._get_device_caps(h_dc, 90) # logical pixels/inch in y
      OS._release_dc(0, h_dc)
      cx = Compatibility.round(a_size.attr_cx * 2540, xppi) # 2540 HIMETRIC units per inch
      cy = Compatibility.round(a_size.attr_cy * 2540, yppi)
      size = SIZE.new
      size.attr_cx = cx
      size.attr_cy = cy
      return size
    end
    
    private
    alias_method :initialize__ole_client_site, :initialize
  end
  
end
