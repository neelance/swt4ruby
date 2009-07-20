/*******************************************************************************
 * Copyright (c) 2000, 2004 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package org.eclipse.swt.internal.gtk;

 
public class XClientMessageEvent {
	public int type;
	public long /*int*/ serial;
	public boolean send_event;
	public long /*int*/ display;
	public long /*int*/ window;
	public long /*int*/ message_type;
	public int format;
	public long /*int*/[] data = new long /*int*/[5];
	public static final int sizeof = OS.XClientMessageEvent_sizeof();
}
