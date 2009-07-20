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


public class AtkTextIface {
	public long /*int*/ get_text;
	public long /*int*/ get_text_after_offset;
	public long /*int*/ get_text_at_offset;
	public long /*int*/ get_character_at_offset;
	public long /*int*/ get_text_before_offset;
	public long /*int*/ get_caret_offset;
	public long /*int*/ get_run_attributes;
	public long /*int*/ get_default_attributes;
	public long /*int*/ get_character_extents;
	public long /*int*/ get_character_count;
	public long /*int*/ get_offset_at_point;
	public long /*int*/ get_n_selections;
	public long /*int*/ get_selection;
	public long /*int*/ add_selection;
	public long /*int*/ remove_selection;
	public long /*int*/ set_selection;
	public long /*int*/ set_caret_offset;
	public long /*int*/ text_changed;
	public long /*int*/ text_caret_moved;
	public long /*int*/ text_selection_changed;
}
