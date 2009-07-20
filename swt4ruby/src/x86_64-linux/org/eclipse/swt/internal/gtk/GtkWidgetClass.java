/*******************************************************************************
 * Copyright (c) 2000, 2006 IBM Corporation and others. All rights reserved.
 * The contents of this file are made available under the terms
 * of the GNU Lesser General Public License (LGPL) Version 2.1 that
 * accompanies this distribution (lgpl-v21.txt).  The LGPL is also
 * available at http://www.gnu.org/licenses/lgpl.html.  If the version
 * of the LGPL at http://www.gnu.org is different to the version of
 * the LGPL accompanying this distribution and there is any conflict
 * between the two license versions, the terms of the LGPL accompanying
 * this distribution shall govern.
 * 
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package org.eclipse.swt.internal.gtk;


public class GtkWidgetClass extends GObjectClass {
	public int activate_signal;
	public int set_scroll_adjustments_signal;	
	public long /*int*/ dispatch_child_properties_changed;
	public long /*int*/ show;
	public long /*int*/ show_all;
	public long /*int*/ hide;
	public long /*int*/ hide_all;
	public long /*int*/ map;
	public long /*int*/ unmap;
	public long /*int*/ realize;
	public long /*int*/ unrealize;
	public long /*int*/ size_request;
	public long /*int*/ size_allocate;
	public long /*int*/ state_changed; 
	public long /*int*/ parent_set;
	public long /*int*/ hierarchy_changed;
	public long /*int*/ style_set;
	public long /*int*/ direction_changed;
	public long /*int*/ grab_notify;
	public long /*int*/ child_notify;	
	public long /*int*/ mnemonic_activate;
	public long /*int*/ grab_focus;
	public long /*int*/ focus;
	public long /*int*/ event;
	public long /*int*/ button_press_event;
	public long /*int*/ button_release_event;
	public long /*int*/ scroll_event;
	public long /*int*/ motion_notify_event;
	public long /*int*/ delete_event;
	public long /*int*/ destroy_event;
	public long /*int*/ expose_event;
	public long /*int*/ key_press_event;
	public long /*int*/ key_release_event;
	public long /*int*/ enter_notify_event;
	public long /*int*/ leave_notify_event;
	public long /*int*/ configure_event;
	public long /*int*/ focus_in_event;
	public long /*int*/ focus_out_event;
	public long /*int*/ map_event;
	public long /*int*/ unmap_event;
	public long /*int*/ property_notify_event;
	public long /*int*/ selection_clear_event;
	public long /*int*/ selection_request_event;
	public long /*int*/ selection_notify_event;
	public long /*int*/ proximity_in_event;
	public long /*int*/ proximity_out_event;
	public long /*int*/ visibility_notify_event;
	public long /*int*/ client_event;
	public long /*int*/ no_expose_event;
	public long /*int*/ window_state_event;
	public long /*int*/ selection_get;
	public long /*int*/ selection_received;
	public long /*int*/ drag_begin;
	public long /*int*/ drag_end;
	public long /*int*/ drag_data_get;
	public long /*int*/ drag_data_delete;
	public long /*int*/ drag_leave;
	public long /*int*/ drag_motion;
	public long /*int*/ drag_drop;
	public long /*int*/ drag_data_received;
	public long /*int*/ popup_menu;
	public long /*int*/ show_help;
	public long /*int*/ get_accessible;
	public long /*int*/ screen_changed;
}
