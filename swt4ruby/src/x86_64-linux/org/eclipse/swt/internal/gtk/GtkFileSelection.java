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


public class GtkFileSelection {
	public long /*int*/ dir_list;
	public long /*int*/ file_list;
	public long /*int*/ selection_entry;
	public long /*int*/ selection_text;
	public long /*int*/ main_vbox;
	public long /*int*/ ok_button;
	public long /*int*/ cancel_button;
	public long /*int*/ help_button;
	public long /*int*/ history_pulldown;
	public long /*int*/ history_menu;
	public long /*int*/ history_list;
	public long /*int*/ fileop_dialog;
	public long /*int*/ fileop_entry;
	public long /*int*/ fileop_file;
	public long /*int*/ cmpl_state;			// gpointer
	public long /*int*/ fileop_c_dir;
	public long /*int*/ fileop_del_file;
	public long /*int*/ fileop_ren_file;
	public long /*int*/ button_area;
	public long /*int*/ action_area;
}
