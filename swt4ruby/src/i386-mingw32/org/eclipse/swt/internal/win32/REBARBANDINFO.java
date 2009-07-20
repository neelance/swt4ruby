/*******************************************************************************
 * Copyright (c) 2000, 2006 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package org.eclipse.swt.internal.win32;

public class REBARBANDINFO {
	public int cbSize;
	public int fMask;
	public int fStyle;
	public int clrFore;
	public int clrBack;
	public int /*long*/ lpText;
	public int cch;
	public int iImage;
	public int /*long*/ hwndChild;
	public int cxMinChild;
	public int cyMinChild;
	public int cx;
	public int /*long*/ hbmBack;
	public int wID;
	public int cyChild;  
	public int cyMaxChild;
	public int cyIntegral;
	public int cxIdeal;
	public int /*long*/ lParam;
	public int cxHeader;
	/* Note in WinCE.  The field cxHeader is not defined. */ 
	public static final int sizeof = OS.REBARBANDINFO_sizeof ();
}
