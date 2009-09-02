/*******************************************************************************
 * Copyright (c) 2000, 2008 IBM Corporation and others. All rights reserved.
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
	/** @field cast=(GtkWidget *) */
	public long /*int*/ dir_list;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ file_list;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ selection_entry;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ selection_text;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ main_vbox;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ ok_button;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ cancel_button;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ help_button;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ history_pulldown;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ history_menu;
	/** @field cast=(GList *) */
	public long /*int*/ history_list;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ fileop_dialog;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ fileop_entry;
	/** @field cast=(gchar *) */
	public long /*int*/ fileop_file;
	/** @field cast=(gpointer) */
	public long /*int*/ cmpl_state;			// gpointer
	/** @field cast=(GtkWidget *) */
	public long /*int*/ fileop_c_dir;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ fileop_del_file;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ fileop_ren_file;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ button_area;
	/** @field cast=(GtkWidget *) */
	public long /*int*/ action_area;
}
