require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Accessibility
  module AccessibleControlListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Accessibility
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes that implement this interface provide methods
  # that deal with the events that are generated when an
  # accessibility client sends a message to a control.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a control using the
  # <code>addAccessibleControlListener</code> method and removed
  # using the <code>removeAccessibleControlListener</code> method.
  # When a client requests information the appropriate method
  # will be invoked.
  # </p><p>
  # Note: Accessibility clients use child identifiers to specify
  # whether they want information about a control or one of its children.
  # Child identifiers are increasing integers beginning with 0.
  # The identifier CHILDID_SELF represents the control itself.
  # </p><p>
  # Note: This interface is typically used by implementors of
  # a custom control to provide very detailed information about
  # the control instance to accessibility clients.
  # </p>
  # 
  # @see AccessibleControlAdapter
  # @see AccessibleControlEvent
  # 
  # @since 2.0
  module AccessibleControlListener
    include_class_members AccessibleControlListenerImports
    include SWTEventListener
    
    typesig { [AccessibleControlEvent] }
    # Sent when an accessibility client requests the identifier
    # of the control child at the specified display coordinates.
    # <p>
    # Return the identifier of the child at display point (x, y)
    # in the <code>childID</code> field of the event object.
    # Return CHILDID_SELF if point (x, y) is in the control itself
    # and not in any child. Return CHILDID_NONE if point (x, y)
    # is not contained in either the control or any of its children.
    # </p>
    # 
    # @param e an event object containing the following fields:<ul>
    # <li>x, y [IN] - the specified point in display coordinates</li>
    # <li>childID [Typical OUT] - the ID of the child at point, or CHILDID_SELF, or CHILDID_NONE</li>
    # <li>accessible [Optional OUT] - the accessible object for the control or child may be returned instead of the childID</li>
    # </ul>
    def get_child_at_point(e)
      raise NotImplementedError
    end
    
    typesig { [AccessibleControlEvent] }
    # Sent when an accessibility client requests the location
    # of the control, or the location of a child of the control.
    # <p>
    # Return a rectangle describing the location of the specified
    # control or child in the <code>x, y, width, and height</code>
    # fields of the event object.
    # </p>
    # 
    # @param e an event object containing the following fields:<ul>
    # <li>childID [IN] - an identifier specifying the control or one of its children</li>
    # <li>x, y, width, height [OUT] - the control or child location in display coordinates</li>
    # </ul>
    def get_location(e)
      raise NotImplementedError
    end
    
    typesig { [AccessibleControlEvent] }
    # Sent when an accessibility client requests the accessible object
    # for a child of the control.
    # <p>
    # Return an <code>Accessible</code> for the specified control or
    # child in the <code>accessible</code> field of the event object.
    # Return null if the specified child does not have its own
    # <code>Accessible</code>.
    # </p>
    # 
    # @param e an event object containing the following fields:<ul>
    # <li>childID [IN] - an identifier specifying a child of the control</li>
    # <li>accessible [OUT] - an Accessible for the specified childID, or null if one does not exist</li>
    # </ul>
    def get_child(e)
      raise NotImplementedError
    end
    
    typesig { [AccessibleControlEvent] }
    # Sent when an accessibility client requests the number of
    # children in the control.
    # <p>
    # Return the number of child items in the <code>detail</code>
    # field of the event object.
    # </p>
    # 
    # @param e an event object containing the following fields:<ul>
    # <li>detail [OUT] - the number of child items in this control</li>
    # </ul>
    def get_child_count(e)
      raise NotImplementedError
    end
    
    typesig { [AccessibleControlEvent] }
    # Sent when an accessibility client requests the default action
    # of the control, or the default action of a child of the control.
    # <p>
    # This string is typically a verb describing what the user does to it.
    # For example, a Push Button's default action is "Press", a Check Button's
    # is "Check" or "UnCheck", and List items have the default action "Double Click".
    # </p><p>
    # Return a string describing the default action of the specified
    # control or child in the <code>result</code> field of the event object.
    # Returning null tells the client to use the platform default action string.
    # </p>
    # 
    # @param e an event object containing the following fields:<ul>
    # <li>childID [IN] - an identifier specifying the control or one of its children</li>
    # <li>result [OUT] - the requested default action string, or null</li>
    # </ul>
    def get_default_action(e)
      raise NotImplementedError
    end
    
    typesig { [AccessibleControlEvent] }
    # Sent when an accessibility client requests the identity of
    # the child or control that has keyboard focus.
    # <p>
    # Return the identifier of the child that has focus in the
    # <code>childID</code> field of the event object.
    # Return CHILDID_SELF if the control itself has keyboard focus.
    # Return CHILDID_NONE if neither the control nor any of its children has focus.
    # </p>
    # 
    # @param e an event object containing the following fields:<ul>
    # <li>childID [Typical OUT] - the ID of the child with focus, or CHILDID_SELF, or CHILDID_NONE</li>
    # <li>accessible [Optional OUT] - the accessible object for a child may be returned instead of its childID</li>
    # </ul>
    def get_focus(e)
      raise NotImplementedError
    end
    
    typesig { [AccessibleControlEvent] }
    # Sent when an accessibility client requests the role
    # of the control, or the role of a child of the control.
    # <p>
    # Return a role constant (constant defined in ACC beginning with ROLE_)
    # that describes the role of the specified control or child in the
    # <code>detail</code> field of the event object.
    # </p>
    # 
    # @param e an event object containing the following fields:<ul>
    # <li>childID [IN] - an identifier specifying the control or one of its children</li>
    # <li>detail [OUT] - a role constant describing the role of the control or child</li>
    # </ul>
    def get_role(e)
      raise NotImplementedError
    end
    
    typesig { [AccessibleControlEvent] }
    # Sent when an accessibility client requests the identity of
    # the child or control that is currently selected.
    # <p>
    # Return the identifier of the selected child in the
    # <code>childID</code> field of the event object.
    # Return CHILDID_SELF if the control itself is selected.
    # Return CHILDID_MULTIPLE if multiple children are selected, and return an array of childIDs in the <code>children</code> field.
    # Return CHILDID_NONE if neither the control nor any of its children are selected.
    # </p>
    # 
    # @param e an event object containing the following fields:<ul>
    # <li>childID [Typical OUT] - the ID of the selected child, or CHILDID_SELF, or CHILDID_MULTIPLE, or CHILDID_NONE</li>
    # <li>accessible [Optional OUT] - the accessible object for the control or child may be returned instead of the childID</li>
    # </ul>
    def get_selection(e)
      raise NotImplementedError
    end
    
    typesig { [AccessibleControlEvent] }
    # Sent when an accessibility client requests the state
    # of the control, or the state of a child of the control.
    # <p>
    # Return a state mask (mask bit constants defined in ACC beginning with STATE_)
    # that describes the current state of the specified control or child in the
    # <code>detail</code> field of the event object.
    # </p>
    # 
    # @param e an event object containing the following fields:<ul>
    # <li>childID [IN] - an identifier specifying the control or one of its children</li>
    # <li>detail [OUT] - a state mask describing the current state of the control or child</li>
    # </ul>
    def get_state(e)
      raise NotImplementedError
    end
    
    typesig { [AccessibleControlEvent] }
    # Sent when an accessibility client requests the value
    # of the control, or the value of a child of the control.
    # <p>
    # Many controls do not return a value. Examples of controls
    # that do are: Combo returns the text string, Text returns
    # its contents, ProgressBar returns a string representing a
    # percentage, and Tree items return a string representing
    # their level in the tree.
    # </p><p>
    # Return a string describing the value of the specified control
    # or child in the <code>result</code> field of the event object.
    # Returning null tells the client to use the platform value string.
    # </p>
    # 
    # @param e an event object containing the following fields:<ul>
    # <li>childID [IN] - an identifier specifying the control or one of its children</li>
    # <li>result [OUT] - the requested value string, or null</li>
    # </ul>
    def get_value(e)
      raise NotImplementedError
    end
    
    typesig { [AccessibleControlEvent] }
    # Sent when an accessibility client requests the children of the control.
    # <p>
    # Return the children as an array of childIDs in the <code>children</code>
    # field of the event object.
    # </p>
    # 
    # @param e an event object containing the following fields:<ul>
    # <li>children [Typical OUT] - an array of childIDs</li>
    # <li>children [Optional OUT] - an array of accessible objects for the children may be returned instead of the childIDs</li>
    # </ul>
    def get_children(e)
      raise NotImplementedError
    end
  end
  
end
