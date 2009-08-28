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
  module OleControlSiteImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  # OleControlSite provides a site to manage an embedded ActiveX Control within a container.
  # 
  # <p>In addition to the behaviour provided by OleClientSite, this object provides the following:
  # <ul>
  # <li>events from the ActiveX control
  # <li>notification of property changes from the ActiveX control
  # <li>simplified access to well known properties of the ActiveX Control (e.g. font, background color)
  # <li>expose ambient properties of the container to the ActiveX Control
  # </ul>
  # 
  # <p>This object implements the OLE Interfaces IOleControlSite, IDispatch, and IPropertyNotifySink.
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
  class OleControlSite < OleControlSiteImports.const_get :OleClientSite
    include_class_members OleControlSiteImports
    
    # interfaces for this container
    attr_accessor :i_ole_control_site
    alias_method :attr_i_ole_control_site, :i_ole_control_site
    undef_method :i_ole_control_site
    alias_method :attr_i_ole_control_site=, :i_ole_control_site=
    undef_method :i_ole_control_site=
    
    attr_accessor :i_dispatch
    alias_method :attr_i_dispatch, :i_dispatch
    undef_method :i_dispatch
    alias_method :attr_i_dispatch=, :i_dispatch=
    undef_method :i_dispatch=
    
    # supporting Property Change attributes
    attr_accessor :ole_property_change_sink
    alias_method :attr_ole_property_change_sink, :ole_property_change_sink
    undef_method :ole_property_change_sink
    alias_method :attr_ole_property_change_sink=, :ole_property_change_sink=
    undef_method :ole_property_change_sink=
    
    # supporting Event Sink attributes
    attr_accessor :ole_event_sink
    alias_method :attr_ole_event_sink, :ole_event_sink
    undef_method :ole_event_sink
    alias_method :attr_ole_event_sink=, :ole_event_sink=
    undef_method :ole_event_sink=
    
    attr_accessor :ole_event_sink_guid
    alias_method :attr_ole_event_sink_guid, :ole_event_sink_guid
    undef_method :ole_event_sink_guid
    alias_method :attr_ole_event_sink_guid=, :ole_event_sink_guid=
    undef_method :ole_event_sink_guid=
    
    # long
    attr_accessor :ole_event_sink_iunknown
    alias_method :attr_ole_event_sink_iunknown, :ole_event_sink_iunknown
    undef_method :ole_event_sink_iunknown
    alias_method :attr_ole_event_sink_iunknown=, :ole_event_sink_iunknown=
    undef_method :ole_event_sink_iunknown=
    
    # supporting information for the Control COM object
    attr_accessor :current_control_info
    alias_method :attr_current_control_info, :current_control_info
    undef_method :current_control_info
    alias_method :attr_current_control_info=, :current_control_info=
    undef_method :current_control_info=
    
    attr_accessor :site_property_ids
    alias_method :attr_site_property_ids, :site_property_ids
    undef_method :site_property_ids
    alias_method :attr_site_property_ids=, :site_property_ids=
    undef_method :site_property_ids=
    
    attr_accessor :site_property_values
    alias_method :attr_site_property_values, :site_property_values
    undef_method :site_property_values
    alias_method :attr_site_property_values=, :site_property_values=
    undef_method :site_property_values=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    class_module.module_eval {
      # work around for IE destroying the caret
      
      def swt_restorecaret
        defined?(@@swt_restorecaret) ? @@swt_restorecaret : @@swt_restorecaret= 0
      end
      alias_method :attr_swt_restorecaret, :swt_restorecaret
      
      def swt_restorecaret=(value)
        @@swt_restorecaret = value
      end
      alias_method :attr_swt_restorecaret=, :swt_restorecaret=
    }
    
    typesig { [Composite, ::Java::Int, String] }
    # Create an OleControlSite child widget using style bits
    # to select a particular look or set of properties.
    # 
    # @param parent a composite widget; must be an OleFrame
    # @param style the bitwise OR'ing of widget styles
    # @param progId the unique program identifier which has been registered for this ActiveX Control;
    # the value of the ProgID key or the value of the VersionIndependentProgID key specified
    # in the registry for this Control (for example, the VersionIndependentProgID for
    # Internet Explorer is Shell.Explorer)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when the parent is null
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread
    # <li>ERROR_INVALID_CLASSID when the progId does not map to a registered CLSID
    # <li>ERROR_CANNOT_CREATE_OBJECT when failed to create OLE Object
    # <li>ERROR_CANNOT_ACCESS_CLASSFACTORY when Class Factory could not be found
    # <li>ERROR_CANNOT_CREATE_LICENSED_OBJECT when failed to create a licensed OLE Object
    # </ul>
    def initialize(parent, style, prog_id)
      @i_ole_control_site = nil
      @i_dispatch = nil
      @ole_property_change_sink = nil
      @ole_event_sink = nil
      @ole_event_sink_guid = nil
      @ole_event_sink_iunknown = nil
      @current_control_info = nil
      @site_property_ids = nil
      @site_property_values = nil
      @font = nil
      super(parent, style)
      @ole_event_sink = Array.typed(OleEventSink).new(0) { nil }
      @ole_event_sink_guid = Array.typed(GUID).new(0) { nil }
      # long
      @ole_event_sink_iunknown = Array.typed(::Java::Int).new(0) { 0 }
      @site_property_ids = Array.typed(::Java::Int).new(0) { 0 }
      @site_property_values = Array.typed(Variant).new(0) { nil }
      begin
        # check for licensing
        self.attr_app_clsid = get_class_id(prog_id)
        if ((self.attr_app_clsid).nil?)
          OLE.error(OLE::ERROR_INVALID_CLASSID)
        end
        # long
        licinfo = get_license_info(self.attr_app_clsid)
        if ((licinfo).equal?(0))
          # Open a storage object
          self.attr_temp_storage = create_temp_storage
          # Create ole object with storage object
          # long
          # long
          address = Array.typed(::Java::Int).new(1) { 0 }
          result = COM._ole_create(self.attr_app_clsid, COM::IIDIUnknown, COM::OLERENDER_DRAW, nil, self.attr_i_ole_client_site.get_address, self.attr_temp_storage.get_address, address)
          if (!(result).equal?(COM::S_OK))
            OLE.error(OLE::ERROR_CANNOT_CREATE_OBJECT, result)
          end
          self.attr_obj_iunknown = IUnknown.new(address[0])
        else
          # Prepare the ClassFactory
          # long
          # long
          ppv_object = Array.typed(::Java::Int).new(1) { 0 }
          begin
            result = COM._co_get_class_object(self.attr_app_clsid, COM::CLSCTX_INPROC_HANDLER | COM::CLSCTX_INPROC_SERVER, 0, COM::IIDIClassFactory2, ppv_object)
            if (!(result).equal?(COM::S_OK))
              OLE.error(OLE::ERROR_CANNOT_ACCESS_CLASSFACTORY, result)
            end
            class_factory = IClassFactory2.new(ppv_object[0])
            # Create Com Object
            # long
            ppv_object = Array.typed(::Java::Int).new(1) { 0 }
            result = class_factory._create_instance_lic(0, 0, COM::IIDIUnknown, licinfo, ppv_object)
            class_factory._release
            if (!(result).equal?(COM::S_OK))
              OLE.error(OLE::ERROR_CANNOT_CREATE_LICENSED_OBJECT, result)
            end
          ensure
            COM._sys_free_string(licinfo)
          end
          self.attr_obj_iunknown = IUnknown.new(ppv_object[0])
          # Prepare a storage medium
          # long
          ppv_object = Array.typed(::Java::Int).new(1) { 0 }
          if ((self.attr_obj_iunknown._query_interface(COM::IIDIPersistStorage, ppv_object)).equal?(COM::S_OK))
            persist = IPersistStorage.new(ppv_object[0])
            self.attr_temp_storage = create_temp_storage
            persist._init_new(self.attr_temp_storage.get_address)
            persist._release
          end
        end
        # Init sinks
        add_object_references
        # Init site properties
        set_site_property(COM::DISPID_AMBIENT_USERMODE, Variant.new(true))
        set_site_property(COM::DISPID_AMBIENT_UIDEAD, Variant.new(false))
        if ((COM._ole_run(self.attr_obj_iunknown.get_address)).equal?(OLE::S_OK))
          self.attr_state = STATE_RUNNING
        end
      rescue SWTError => e
        dispose
        dispose_cominterfaces
        raise e
      end
    end
    
    typesig { [::Java::Int, OleListener] }
    # Adds the listener to receive events.
    # 
    # @param eventID the id of the event
    # 
    # @param listener the listener
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def add_event_listener(event_id, listener)
      if ((listener).nil?)
        OLE.error(SWT::ERROR_NULL_ARGUMENT)
      end
      riid = get_default_event_sink_guid(self.attr_obj_iunknown)
      if (!(riid).nil?)
        add_event_listener(self.attr_obj_iunknown.get_address, riid, event_id, listener)
      end
    end
    
    class_module.module_eval {
      typesig { [IUnknown] }
      def get_default_event_sink_guid(unknown)
        # get Event Sink I/F from IProvideClassInfo2
        # long
        # long
        ppv_object = Array.typed(::Java::Int).new(1) { 0 }
        if ((unknown._query_interface(COM::IIDIProvideClassInfo2, ppv_object)).equal?(COM::S_OK))
          pci2 = IProvideClassInfo2.new(ppv_object[0])
          riid = GUID.new
          result = pci2._get_guid(COM::GUIDKIND_DEFAULT_SOURCE_DISP_IID, riid)
          pci2._release
          if ((result).equal?(COM::S_OK))
            return riid
          end
        end
        # get Event Sink I/F from IProvideClassInfo
        if ((unknown._query_interface(COM::IIDIProvideClassInfo, ppv_object)).equal?(COM::S_OK))
          pci = IProvideClassInfo.new(ppv_object[0])
          # long
          # long
          pp_ti = Array.typed(::Java::Int).new(1) { 0 }
          # long
          # long
          pp_ei = Array.typed(::Java::Int).new(1) { 0 }
          result = pci._get_class_info(pp_ti)
          pci._release
          if ((result).equal?(COM::S_OK) && !(pp_ti[0]).equal?(0))
            class_info = ITypeInfo.new(pp_ti[0])
            # long
            # long
            pp_type_attr = Array.typed(::Java::Int).new(1) { 0 }
            result = class_info._get_type_attr(pp_type_attr)
            if ((result).equal?(COM::S_OK) && !(pp_type_attr[0]).equal?(0))
              type_attribute = TYPEATTR.new
              COM._move_memory(type_attribute, pp_type_attr[0], TYPEATTR.attr_sizeof)
              class_info._release_type_attr(pp_type_attr[0])
              impl_mask = COM::IMPLTYPEFLAG_FDEFAULT | COM::IMPLTYPEFLAG_FSOURCE | COM::IMPLTYPEFLAG_FRESTRICTED
              impl_bits = COM::IMPLTYPEFLAG_FDEFAULT | COM::IMPLTYPEFLAG_FSOURCE
              i = 0
              while i < type_attribute.attr_c_impl_types
                p_impl_type_flags = Array.typed(::Java::Int).new(1) { 0 }
                if ((class_info._get_impl_type_flags(i, p_impl_type_flags)).equal?(COM::S_OK))
                  if (((p_impl_type_flags[0] & impl_mask)).equal?(impl_bits))
                    p_ref_type = Array.typed(::Java::Int).new(1) { 0 }
                    if ((class_info._get_ref_type_of_impl_type(i, p_ref_type)).equal?(COM::S_OK))
                      class_info._get_ref_type_info(p_ref_type[0], pp_ei)
                    end
                  end
                end
                i += 1
              end
            end
            class_info._release
            if (!(pp_ei[0]).equal?(0))
              event_info = ITypeInfo.new(pp_ei[0])
              # long
              pp_type_attr = Array.typed(::Java::Int).new(1) { 0 }
              result = event_info._get_type_attr(pp_type_attr)
              riid = nil
              if ((result).equal?(COM::S_OK) && !(pp_type_attr[0]).equal?(0))
                riid = GUID.new
                COM._move_memory(riid, pp_type_attr[0], GUID.attr_sizeof)
                event_info._release_type_attr(pp_type_attr[0])
              end
              event_info._release
              return riid
            end
          end
        end
        return nil
      end
    }
    
    typesig { [OleAutomation, ::Java::Int, OleListener] }
    # Adds the listener to receive events.
    # 
    # @since 2.0
    # 
    # @param automation the automation object that provides the event notification
    # @param eventID the id of the event
    # @param listener the listener
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def add_event_listener(automation, event_id, listener)
      if ((listener).nil? || (automation).nil?)
        OLE.error(SWT::ERROR_NULL_ARGUMENT)
      end
      # long
      address = automation.get_address
      unknown = IUnknown.new(address)
      riid = get_default_event_sink_guid(unknown)
      if (!(riid).nil?)
        add_event_listener(address, riid, event_id, listener)
      end
    end
    
    typesig { [OleAutomation, String, ::Java::Int, OleListener] }
    # Adds the listener to receive events.
    # 
    # @since 3.2
    # 
    # @param automation the automation object that provides the event notification
    # @param eventSinkId the GUID of the event sink
    # @param eventID the id of the event
    # @param listener the listener
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def add_event_listener(automation, event_sink_id, event_id, listener)
      if ((listener).nil? || (automation).nil? || (event_sink_id).nil?)
        OLE.error(SWT::ERROR_NULL_ARGUMENT)
      end
      # long
      address = automation.get_address
      if ((address).equal?(0))
        return
      end
      buffer = (event_sink_id + "\0").to_char_array
      guid = GUID.new
      if (!(COM._iidfrom_string(buffer, guid)).equal?(COM::S_OK))
        return
      end
      add_event_listener(address, guid, event_id, listener)
    end
    
    typesig { [::Java::Int, GUID, ::Java::Int, OleListener] }
    # long
    def add_event_listener(iunknown, guid, event_id, listener)
      if ((listener).nil? || (iunknown).equal?(0) || (guid).nil?)
        OLE.error(SWT::ERROR_NULL_ARGUMENT)
      end
      # have we connected to this kind of event sink before?
      index = -1
      i = 0
      while i < @ole_event_sink_guid.attr_length
        if (COM._is_equal_guid(@ole_event_sink_guid[i], guid))
          if ((iunknown).equal?(@ole_event_sink_iunknown[i]))
            index = i
            break
          end
        end
        i += 1
      end
      if (!(index).equal?(-1))
        @ole_event_sink[index].add_listener(event_id, listener)
      else
        old_length = @ole_event_sink.attr_length
        new_ole_event_sink = Array.typed(OleEventSink).new(old_length + 1) { nil }
        new_ole_event_sink_guid = Array.typed(GUID).new(old_length + 1) { nil }
        # long
        # long
        new_ole_event_sink_iunknown = Array.typed(::Java::Int).new(old_length + 1) { 0 }
        System.arraycopy(@ole_event_sink, 0, new_ole_event_sink, 0, old_length)
        System.arraycopy(@ole_event_sink_guid, 0, new_ole_event_sink_guid, 0, old_length)
        System.arraycopy(@ole_event_sink_iunknown, 0, new_ole_event_sink_iunknown, 0, old_length)
        @ole_event_sink = new_ole_event_sink
        @ole_event_sink_guid = new_ole_event_sink_guid
        @ole_event_sink_iunknown = new_ole_event_sink_iunknown
        @ole_event_sink[old_length] = OleEventSink.new(self, iunknown, guid)
        @ole_event_sink_guid[old_length] = guid
        @ole_event_sink_iunknown[old_length] = iunknown
        @ole_event_sink[old_length]._add_ref
        @ole_event_sink[old_length].connect
        @ole_event_sink[old_length].add_listener(event_id, listener)
      end
    end
    
    typesig { [] }
    def add_object_references
      super
      # Get property change notification from control
      connect_property_change_sink
      # Get access to the Control object
      # long
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      if ((self.attr_obj_iunknown._query_interface(COM::IIDIOleControl, ppv_object)).equal?(COM::S_OK))
        obj_iole_control = IOleControl.new(ppv_object[0])
        # ask the control for its info in case users
        # need to act on it
        @current_control_info = CONTROLINFO.new
        obj_iole_control._get_control_info(@current_control_info)
        obj_iole_control._release
      end
    end
    
    typesig { [::Java::Int, OleListener] }
    # Adds the listener to receive events.
    # 
    # @param propertyID the identifier of the property
    # @param listener the listener
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def add_property_listener(property_id, listener)
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @ole_property_change_sink.add_listener(property_id, listener)
    end
    
    typesig { [] }
    def connect_property_change_sink
      @ole_property_change_sink = OlePropertyChangeSink.new(self)
      @ole_property_change_sink._add_ref
      @ole_property_change_sink.connect(self.attr_obj_iunknown)
    end
    
    typesig { [] }
    def create_cominterfaces
      super
      # method9 ShowPropertyFrame - not implemented
      @i_ole_control_site = # register each of the interfaces that this object implements
      Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleControlSite
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
          return _on_control_info_changed
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # method4 LockInPlaceActive - not implemented
        # method5 GetExtendedControl - not implemented
        # method6 TransformCoords - not implemented
        # method7 Translate Accelerator - not implemented
        # long
        # long
        define_method :method8 do |args|
          # 64
          return _on_focus(RJava.cast_to_int(args[0]))
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 0, 1, 1, 3, 2, 1, 0]))
      @i_dispatch = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleControlSite
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
        # method3 GetTypeInfoCount - not implemented
        # method4 GetTypeInfo - not implemented
        # method5 GetIDsOfNames - not implemented
        # long
        # long
        define_method :method6 do |args|
          # 64
          # 64
          # 64
          return _invoke(RJava.cast_to_int(args[0]), args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), args[4], args[5], args[6], args[7])
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1, 3, 5, 8]))
    end
    
    typesig { [] }
    def disconnect_event_sinks
      i = 0
      while i < @ole_event_sink.attr_length
        sink = @ole_event_sink[i]
        sink.disconnect
        sink._release
        i += 1
      end
      @ole_event_sink = Array.typed(OleEventSink).new(0) { nil }
      @ole_event_sink_guid = Array.typed(GUID).new(0) { nil }
      # long
      @ole_event_sink_iunknown = Array.typed(::Java::Int).new(0) { 0 }
    end
    
    typesig { [] }
    def disconnect_property_change_sink
      if (!(@ole_property_change_sink).nil?)
        @ole_property_change_sink.disconnect(self.attr_obj_iunknown)
        @ole_property_change_sink._release
      end
      @ole_property_change_sink = nil
    end
    
    typesig { [] }
    def dispose_cominterfaces
      super
      if (!(@i_ole_control_site).nil?)
        @i_ole_control_site.dispose
      end
      @i_ole_control_site = nil
      if (!(@i_dispatch).nil?)
        @i_dispatch.dispose
      end
      @i_dispatch = nil
    end
    
    typesig { [] }
    def get_background
      if (!(self.attr_obj_iunknown).nil?)
        # !! We are getting the OLE_COLOR - should we change this to the COLORREF value?
        ole_object = OleAutomation.new(self)
        var_back_color = ole_object.get_property(COM::DISPID_BACKCOLOR)
        ole_object.dispose
        if (!(var_back_color).nil?)
          color_ref = Array.typed(::Java::Int).new(1) { 0 }
          if ((COM._ole_translate_color(var_back_color.get_int, get_display.attr_h_palette, color_ref)).equal?(COM::S_OK))
            return Color.win32_new(get_display, color_ref[0])
          end
        end
      end
      return super
    end
    
    typesig { [] }
    def get_font
      if (!(@font).nil? && !@font.is_disposed)
        return @font
      end
      if (!(self.attr_obj_iunknown).nil?)
        ole_object = OleAutomation.new(self)
        var_disp_font = ole_object.get_property(COM::DISPID_FONT)
        ole_object.dispose
        if (!(var_disp_font).nil?)
          i_disp_font = var_disp_font.get_automation
          lf_face_name = i_disp_font.get_property(COM::DISPID_FONT_NAME)
          lf_height = i_disp_font.get_property(COM::DISPID_FONT_SIZE)
          lf_italic = i_disp_font.get_property(COM::DISPID_FONT_ITALIC)
          # Variant lfCharSet  = iDispFont.getProperty(COM.DISPID_FONT_CHARSET);
          lf_bold = i_disp_font.get_property(COM::DISPID_FONT_BOLD)
          i_disp_font.dispose
          if (!(lf_face_name).nil? && !(lf_height).nil? && !(lf_italic).nil? && !(lf_bold).nil?)
            style = 3 * lf_bold.get_int + 2 * lf_italic.get_int
            @font = Font.new(get_shell.get_display, lf_face_name.get_string, lf_height.get_int, style)
            return @font
          end
        end
      end
      return super
    end
    
    typesig { [] }
    def get_foreground
      if (!(self.attr_obj_iunknown).nil?)
        # !! We are getting the OLE_COLOR - should we change this to the COLORREF value?
        ole_object = OleAutomation.new(self)
        var_fore_color = ole_object.get_property(COM::DISPID_FORECOLOR)
        ole_object.dispose
        if (!(var_fore_color).nil?)
          color_ref = Array.typed(::Java::Int).new(1) { 0 }
          if ((COM._ole_translate_color(var_fore_color.get_int, get_display.attr_h_palette, color_ref)).equal?(COM::S_OK))
            return Color.win32_new(get_display, color_ref[0])
          end
        end
      end
      return super
    end
    
    typesig { [GUID] }
    # long
    def get_license_info(clsid)
      # long
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      if (!(COM._co_get_class_object(clsid, COM::CLSCTX_INPROC_HANDLER | COM::CLSCTX_INPROC_SERVER, 0, COM::IIDIClassFactory, ppv_object)).equal?(COM::S_OK))
        return 0
      end
      # long
      result = 0
      unknown = IUnknown.new(ppv_object[0])
      if ((unknown._query_interface(COM::IIDIClassFactory2, ppv_object)).equal?(COM::S_OK))
        class_factory = IClassFactory2.new(ppv_object[0])
        licinfo = LICINFO.new
        if ((class_factory._get_lic_info(licinfo)).equal?(COM::S_OK))
          # long
          # long
          p_bstr_key = Array.typed(::Java::Int).new(1) { 0 }
          if (!(licinfo).nil? && licinfo.attr_f_runtime_key_avail)
            if ((class_factory._request_lic_key(0, p_bstr_key)).equal?(COM::S_OK))
              result = p_bstr_key[0]
            end
          end
        end
        class_factory._release
      end
      unknown._release
      return result
    end
    
    typesig { [::Java::Int] }
    # Get the control site property specified by the dispIdMember, or
    # <code>null</code> if the dispId is not recognised.
    # 
    # @param dispId the dispId
    # 
    # @return the property value or <code>null</code>
    # 
    # @since 2.1
    def get_site_property(disp_id)
      i = 0
      while i < @site_property_ids.attr_length
        if ((@site_property_ids[i]).equal?(disp_id))
          return @site_property_values[i]
        end
        i += 1
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_window(phwnd)
      if ((phwnd).equal?(0))
        return COM::E_INVALIDARG
      end
      if ((self.attr_frame).nil?)
        # long
        COM._move_memory(phwnd, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
        return COM::E_NOTIMPL
      end
      # Copy the Window's handle into the memory passed in
      # long
      COM._move_memory(phwnd, Array.typed(::Java::Int).new([self.attr_handle]), OS::PTR_SIZEOF)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def _invoke(disp_id_member, riid, lcid, dw_flags, p_disp_params, p_var_result, p_excep_info, p_arg_err)
      if ((p_var_result).equal?(0) || !(dw_flags).equal?(COM::DISPATCH_PROPERTYGET))
        if (!(p_excep_info).equal?(0))
          # long
          COM._move_memory(p_excep_info, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
        end
        if (!(p_arg_err).equal?(0))
          COM._move_memory(p_arg_err, Array.typed(::Java::Int).new([0]), 4)
        end
        return COM::DISP_E_MEMBERNOTFOUND
      end
      result = get_site_property(disp_id_member)
      if (!(result).nil?)
        if (!(p_var_result).equal?(0))
          result.get_data(p_var_result)
        end
        return COM::S_OK
      end
      case (disp_id_member)
      # indicate a false result
      # not implemented
      when COM::DISPID_AMBIENT_SUPPORTSMNEMONICS, COM::DISPID_AMBIENT_SHOWGRABHANDLES, COM::DISPID_AMBIENT_SHOWHATCHING
        if (!(p_var_result).equal?(0))
          # long
          COM._move_memory(p_var_result, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
        end
        if (!(p_excep_info).equal?(0))
          # long
          COM._move_memory(p_excep_info, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
        end
        if (!(p_arg_err).equal?(0))
          COM._move_memory(p_arg_err, Array.typed(::Java::Int).new([0]), 4)
        end
        return COM::S_FALSE
      when COM::DISPID_AMBIENT_OFFLINEIFNOTCONNECTED, COM::DISPID_AMBIENT_BACKCOLOR, COM::DISPID_AMBIENT_FORECOLOR, COM::DISPID_AMBIENT_FONT, COM::DISPID_AMBIENT_LOCALEID, COM::DISPID_AMBIENT_SILENT, COM::DISPID_AMBIENT_MESSAGEREFLECT
        if (!(p_var_result).equal?(0))
          # long
          COM._move_memory(p_var_result, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
        end
        if (!(p_excep_info).equal?(0))
          # long
          COM._move_memory(p_excep_info, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
        end
        if (!(p_arg_err).equal?(0))
          COM._move_memory(p_arg_err, Array.typed(::Java::Int).new([0]), 4)
        end
        return COM::E_NOTIMPL
      else
        if (!(p_var_result).equal?(0))
          # long
          COM._move_memory(p_var_result, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
        end
        if (!(p_excep_info).equal?(0))
          # long
          COM._move_memory(p_excep_info, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
        end
        if (!(p_arg_err).equal?(0))
          COM._move_memory(p_arg_err, Array.typed(::Java::Int).new([0]), 4)
        end
        return COM::DISP_E_MEMBERNOTFOUND
      end
    end
    
    typesig { [] }
    def _on_control_info_changed
      # long
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      if ((self.attr_obj_iunknown._query_interface(COM::IIDIOleControl, ppv_object)).equal?(COM::S_OK))
        obj_iole_control = IOleControl.new(ppv_object[0])
        # ask the control for its info in case users
        # need to act on it
        @current_control_info = CONTROLINFO.new
        obj_iole_control._get_control_info(@current_control_info)
        obj_iole_control._release
      end
      return COM::S_OK
    end
    
    typesig { [Event] }
    def on_focus_in(e)
      if ((self.attr_obj_iole_in_place_object).nil?)
        return
      end
      do_verb(OLE::OLEIVERB_UIACTIVATE)
      if (is_focus_control)
        return
      end
      # long
      # long
      phwnd = Array.typed(::Java::Int).new(1) { 0 }
      self.attr_obj_iole_in_place_object._get_window(phwnd)
      if ((phwnd[0]).equal?(0))
        return
      end
      OS._set_focus(phwnd[0])
    end
    
    typesig { [Event] }
    def on_focus_out(e)
      if (!(self.attr_obj_iole_in_place_object).nil?)
        # Bug in Windows.  When IE7 loses focus and UIDeactivate()
        # is called, IE destroys the caret even though it is
        # no longer owned by IE.  If focus has moved to a control
        # that shows a caret then the caret disappears.  The fix
        # is to detect this case and restore the caret.
        thread_id = OS._get_current_thread_id
        lpgui1 = GUITHREADINFO.new
        lpgui1.attr_cb_size = GUITHREADINFO.attr_sizeof
        OS._get_guithread_info(thread_id, lpgui1)
        self.attr_obj_iole_in_place_object._uideactivate
        if (!(lpgui1.attr_hwnd_caret).equal?(0))
          lpgui2 = GUITHREADINFO.new
          lpgui2.attr_cb_size = GUITHREADINFO.attr_sizeof
          OS._get_guithread_info(thread_id, lpgui2)
          if ((lpgui2.attr_hwnd_caret).equal?(0) && (lpgui1.attr_hwnd_caret).equal?(OS._get_focus))
            if ((self.attr_swt_restorecaret).equal?(0))
              self.attr_swt_restorecaret = OS._register_window_message(TCHAR.new(0, "SWT_RESTORECARET", true))
            end
            # If the caret was not restored by SWT, put it back using
            # the information from GUITHREADINFO.  Note that this will
            # not be correct when the caret has a bitmap.  There is no
            # API to query the bitmap that the caret is using.
            if ((OS._send_message(lpgui1.attr_hwnd_caret, self.attr_swt_restorecaret, 0, 0)).equal?(0))
              width = lpgui1.attr_right - lpgui1.attr_left
              height = lpgui1.attr_bottom - lpgui1.attr_top
              OS._create_caret(lpgui1.attr_hwnd_caret, 0, width, height)
              OS._set_caret_pos(lpgui1.attr_left, lpgui1.attr_top)
              OS._show_caret(lpgui1.attr_hwnd_caret)
            end
          end
        end
      end
    end
    
    typesig { [::Java::Int] }
    def _on_focus(f_got_focus)
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    def _on_uideactivate(f_undoable)
      # controls don't need to do anything for
      # border space or menubars
      self.attr_state = STATE_INPLACEACTIVE
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _query_interface(riid, ppv_object)
      result = super(riid, ppv_object)
      if ((result).equal?(COM::S_OK))
        return result
      end
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return COM::E_INVALIDARG
      end
      guid = GUID.new
      COM._move_memory(guid, riid, GUID.attr_sizeof)
      if (COM._is_equal_guid(guid, COM::IIDIOleControlSite))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_ole_control_site.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIDispatch))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_dispatch.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      # long
      COM._move_memory(ppv_object, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
      return COM::E_NOINTERFACE
    end
    
    typesig { [] }
    def _release
      result = super
      if ((result).equal?(0))
        i = 0
        while i < @site_property_ids.attr_length
          @site_property_values[i].dispose
          i += 1
        end
        @site_property_ids = Array.typed(::Java::Int).new(0) { 0 }
        @site_property_values = Array.typed(Variant).new(0) { nil }
      end
      return result
    end
    
    typesig { [] }
    def release_object_interfaces
      disconnect_event_sinks
      disconnect_property_change_sink
      super
    end
    
    typesig { [::Java::Int, OleListener] }
    # Removes the listener.
    # 
    # @param eventID the event identifier
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def remove_event_listener(event_id, listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      riid = get_default_event_sink_guid(self.attr_obj_iunknown)
      if (!(riid).nil?)
        remove_event_listener(self.attr_obj_iunknown.get_address, riid, event_id, listener)
      end
    end
    
    typesig { [OleAutomation, GUID, ::Java::Int, OleListener] }
    # Removes the listener.
    # 
    # @since 2.0
    # @deprecated - use OleControlSite.removeEventListener(OleAutomation, int, OleListener)
    # 
    # @param automation the automation object that provides the event notification
    # 
    # @param guid the identifier of the events COM interface
    # 
    # @param eventID the event identifier
    # 
    # @param listener the listener
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def remove_event_listener(automation, guid, event_id, listener)
      check_widget
      if ((automation).nil? || (listener).nil? || (guid).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_event_listener(automation.get_address, guid, event_id, listener)
    end
    
    typesig { [OleAutomation, ::Java::Int, OleListener] }
    # Removes the listener.
    # 
    # @param automation the automation object that provides the event notification
    # @param eventID the event identifier
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    # 
    # @since 2.0
    def remove_event_listener(automation, event_id, listener)
      check_widget
      if ((automation).nil? || (listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      # long
      address = automation.get_address
      unknown = IUnknown.new(address)
      riid = get_default_event_sink_guid(unknown)
      if (!(riid).nil?)
        remove_event_listener(address, riid, event_id, listener)
      end
    end
    
    typesig { [::Java::Int, GUID, ::Java::Int, OleListener] }
    # long
    def remove_event_listener(iunknown, guid, event_id, listener)
      if ((listener).nil? || (guid).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < @ole_event_sink.attr_length
        if (COM._is_equal_guid(@ole_event_sink_guid[i], guid))
          if ((iunknown).equal?(@ole_event_sink_iunknown[i]))
            @ole_event_sink[i].remove_listener(event_id, listener)
            if (!@ole_event_sink[i].has_listeners)
              # free resources associated with event sink
              @ole_event_sink[i].disconnect
              @ole_event_sink[i]._release
              old_length = @ole_event_sink.attr_length
              if ((old_length).equal?(1))
                @ole_event_sink = Array.typed(OleEventSink).new(0) { nil }
                @ole_event_sink_guid = Array.typed(GUID).new(0) { nil }
                # long
                @ole_event_sink_iunknown = Array.typed(::Java::Int).new(0) { 0 }
              else
                new_ole_event_sink = Array.typed(OleEventSink).new(old_length - 1) { nil }
                System.arraycopy(@ole_event_sink, 0, new_ole_event_sink, 0, i)
                System.arraycopy(@ole_event_sink, i + 1, new_ole_event_sink, i, old_length - i - 1)
                @ole_event_sink = new_ole_event_sink
                new_ole_event_sink_guid = Array.typed(GUID).new(old_length - 1) { nil }
                System.arraycopy(@ole_event_sink_guid, 0, new_ole_event_sink_guid, 0, i)
                System.arraycopy(@ole_event_sink_guid, i + 1, new_ole_event_sink_guid, i, old_length - i - 1)
                @ole_event_sink_guid = new_ole_event_sink_guid
                # long
                # long
                new_ole_event_sink_iunknown = Array.typed(::Java::Int).new(old_length - 1) { 0 }
                System.arraycopy(@ole_event_sink_iunknown, 0, new_ole_event_sink_iunknown, 0, i)
                System.arraycopy(@ole_event_sink_iunknown, i + 1, new_ole_event_sink_iunknown, i, old_length - i - 1)
                @ole_event_sink_iunknown = new_ole_event_sink_iunknown
              end
            end
            return
          end
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, OleListener] }
    # Removes the listener.
    # 
    # @param propertyID the identifier of the property
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def remove_property_listener(property_id, listener)
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @ole_property_change_sink.remove_listener(property_id, listener)
    end
    
    typesig { [Color] }
    def set_background(color)
      super(color)
      # set the background of the ActiveX Control
      if (!(self.attr_obj_iunknown).nil?)
        ole_object = OleAutomation.new(self)
        ole_object.set_property(COM::DISPID_BACKCOLOR, Variant.new(color.attr_handle))
        ole_object.dispose
      end
    end
    
    typesig { [Font] }
    def set_font(font)
      super(font)
      # set the font of the ActiveX Control
      if (!(self.attr_obj_iunknown).nil?)
        ole_object = OleAutomation.new(self)
        var_disp_font = ole_object.get_property(COM::DISPID_FONT)
        ole_object.dispose
        if (!(var_disp_font).nil?)
          i_disp_font = var_disp_font.get_automation
          fdata = font.get_font_data
          i_disp_font.set_property(COM::DISPID_FONT_NAME, Variant.new(fdata[0].get_name))
          i_disp_font.set_property(COM::DISPID_FONT_SIZE, Variant.new(fdata[0].get_height))
          i_disp_font.set_property(COM::DISPID_FONT_ITALIC, Variant.new(fdata[0].get_style & SWT::ITALIC))
          # iDispFont.setProperty(COM.DISPID_FONT_CHARSET, new Variant(fdata[0].getCharset));
          i_disp_font.set_property(COM::DISPID_FONT_BOLD, Variant.new((fdata[0].get_style & SWT::BOLD)))
          i_disp_font.dispose
        end
      end
      @font = font
      return
    end
    
    typesig { [Color] }
    def set_foreground(color)
      super(color)
      # set the foreground of the ActiveX Control
      if (!(self.attr_obj_iunknown).nil?)
        ole_object = OleAutomation.new(self)
        ole_object.set_property(COM::DISPID_FORECOLOR, Variant.new(color.attr_handle))
        ole_object.dispose
      end
    end
    
    typesig { [::Java::Int, Variant] }
    # Sets the control site property specified by the dispIdMember to a new value.
    # The value will be disposed by the control site when it is no longer required
    # using Variant.dispose.  Passing a value of null will clear the dispId value.
    # 
    # @param dispId the ID of the property as specified by the IDL of the ActiveX Control
    # @param value The new value for the property as expressed in a Variant.
    # 
    # @since 2.1
    def set_site_property(disp_id, value)
      i = 0
      while i < @site_property_ids.attr_length
        if ((@site_property_ids[i]).equal?(disp_id))
          if (!(@site_property_values[i]).nil?)
            @site_property_values[i].dispose
          end
          if (!(value).nil?)
            @site_property_values[i] = value
          else
            old_length = @site_property_ids.attr_length
            new_site_property_ids = Array.typed(::Java::Int).new(old_length - 1) { 0 }
            new_site_property_values = Array.typed(Variant).new(old_length - 1) { nil }
            System.arraycopy(@site_property_ids, 0, new_site_property_ids, 0, i)
            System.arraycopy(@site_property_ids, i + 1, new_site_property_ids, i, old_length - i - 1)
            System.arraycopy(@site_property_values, 0, new_site_property_values, 0, i)
            System.arraycopy(@site_property_values, i + 1, new_site_property_values, i, old_length - i - 1)
            @site_property_ids = new_site_property_ids
            @site_property_values = new_site_property_values
          end
          return
        end
        i += 1
      end
      old_length = @site_property_ids.attr_length
      new_site_property_ids = Array.typed(::Java::Int).new(old_length + 1) { 0 }
      new_site_property_values = Array.typed(Variant).new(old_length + 1) { nil }
      System.arraycopy(@site_property_ids, 0, new_site_property_ids, 0, old_length)
      System.arraycopy(@site_property_values, 0, new_site_property_values, 0, old_length)
      new_site_property_ids[old_length] = disp_id
      new_site_property_values[old_length] = value
      @site_property_ids = new_site_property_ids
      @site_property_values = new_site_property_values
    end
    
    private
    alias_method :initialize__ole_control_site, :initialize
  end
  
end
