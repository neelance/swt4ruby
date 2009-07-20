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

public class BITMAP {
	public int bmType;
	public int bmWidth;
	public int bmHeight;
	public int bmWidthBytes;
	public short bmPlanes;
	public short bmBitsPixel;
	public int /*long*/ bmBits;
	public static final int sizeof = OS.BITMAP_sizeof ();
}
