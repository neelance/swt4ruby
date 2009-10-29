/*******************************************************************************
 * Copyright (c) 2000, 2008 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package org.eclipse.swt.internal.win32;

public class MSG {
	/** @field cast=(HWND) */
	public int /*long*/ hwnd;
	public int message; 
	public int /*long*/ wParam; 
	public int /*long*/ lParam; 
	public int time; 
//	POINT pt;
	/** @field accessor=pt.x */
	public int x; 
	/** @field accessor=pt.y */
	public int y;
	public static final int sizeof = OS.MSG_sizeof ();
}
