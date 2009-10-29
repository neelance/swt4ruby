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

public class MOUSEINPUT {
	public int dx;
	public int dy;
	public int mouseData;
	public int dwFlags;
	public int time;
	public int /*long*/ dwExtraInfo;
	public static final int sizeof = OS.MOUSEINPUT_sizeof ();
}
