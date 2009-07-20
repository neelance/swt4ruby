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


public class AtkComponentIface {
	public long /*int*/ add_focus_handler;
	public long /*int*/ contains;
	public long /*int*/ ref_accessible_at_point;
	public long /*int*/ get_extents;
	public long /*int*/ get_position;
	public long /*int*/ get_size;
	public long /*int*/ grab_focus;
	public long /*int*/ remove_focus_handler;
	public long /*int*/ set_extents;
	public long /*int*/ set_position;
	public long /*int*/ set_size;
	public long /*int*/ get_layer;
	public long /*int*/ get_mdi_zorder;
}
