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


public class GdkEventMotion extends GdkEvent {
	public long /*int*/ window;
	public byte send_event;
	public int time;
	public double x;
	public double y;
	public long /*int*/ axes;
	public int state;
	public short is_hint;
	public long /*int*/ device;
	public double x_root;
	public double y_root;
	public static final int sizeof = OS.GdkEventMotion_sizeof();
}
