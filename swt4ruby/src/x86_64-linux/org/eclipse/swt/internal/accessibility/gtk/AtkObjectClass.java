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
package org.eclipse.swt.internal.accessibility.gtk;


public class AtkObjectClass {
	public long /*int*/ get_name;
	public long /*int*/ get_description;
	public long /*int*/ get_parent;
	public long /*int*/ get_n_children;
	public long /*int*/ ref_child;
	public long /*int*/ get_index_in_parent;
	public long /*int*/ ref_relation_set;
	public long /*int*/ get_role;
	public long /*int*/ get_layer;
	public long /*int*/ get_mdi_zorder;
	public long /*int*/ ref_state_set;
	public long /*int*/ set_name;
	public long /*int*/ set_description;
	public long /*int*/ set_parent;
	public long /*int*/ set_role;
	public long /*int*/ connect_property_change_handler;
	public long /*int*/ remove_property_change_handler;
	public long /*int*/ initialize;
	public long /*int*/ children_changed;
	public long /*int*/ focus_event;
	public long /*int*/ property_change;
	public long /*int*/ state_change;
	public long /*int*/ visible_data_changed;
}
