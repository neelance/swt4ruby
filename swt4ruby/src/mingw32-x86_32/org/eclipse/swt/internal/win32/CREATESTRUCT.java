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

public class CREATESTRUCT {
	/** @field cast=(LPVOID) */
	public int /*long*/ lpCreateParams; 
	/** @field cast=(HINSTANCE) */
	public int /*long*/ hInstance; 
	/** @field cast=(HMENU) */
	public int /*long*/ hMenu; 
	/** @field cast=(HWND) */
	public int /*long*/ hwndParent; 
	public int cy; 
	public int cx; 
	public int y; 
	public int x; 
	public int style; 
	/** @field cast=(LPCTSTR) */
	public int /*long*/ lpszName; 
	/** @field cast=(LPCTSTR) */
	public int /*long*/ lpszClass; 
	public int dwExStyle;
	public static final int sizeof = OS.CREATESTRUCT_sizeof ();
}
