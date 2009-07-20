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


public class AtkSelectionIface {
	public long /*int*/ add_selection;
	public long /*int*/ clear_selection;
	public long /*int*/ ref_selection;
	public long /*int*/ get_selection_count;
	public long /*int*/ is_child_selected;
	public long /*int*/ remove_selection;
	public long /*int*/ select_all_selection;
	public long /*int*/ selection_changed;
}
