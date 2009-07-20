/*******************************************************************************
 * Copyright (c) 2000, 2007 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package org.eclipse.swt.internal.opengl.carbon;

import org.eclipse.swt.internal.*;

public class AGL extends Platform {
	static {
		Library.loadLibrary("swt-agl");
	}

	/* Attributes */
	public static final int AGL_NONE = 0;
	public static final int AGL_BUFFER_SIZE = 2;
	public static final int AGL_LEVEL = 3;
	public static final int AGL_RGBA = 4;
	public static final int AGL_DOUBLEBUFFER = 5;
	public static final int AGL_STEREO = 6;
	public static final int AGL_AUX_BUFFERS = 7;
	public static final int AGL_RED_SIZE = 8;
	public static final int AGL_GREEN_SIZE = 9;
	public static final int AGL_BLUE_SIZE = 10;
	public static final int AGL_ALPHA_SIZE = 11;
	public static final int AGL_DEPTH_SIZE = 12;
	public static final int AGL_STENCIL_SIZE = 13;
	public static final int AGL_ACCUM_RED_SIZE = 14;
	public static final int AGL_ACCUM_GREEN_SIZE = 15;
	public static final int AGL_ACCUM_BLUE_SIZE = 16;
	public static final int AGL_ACCUM_ALPHA_SIZE = 17;
	
	public static final int AGL_SAMPLE_BUFFERS_ARB = 55;
	public static final int AGL_SAMPLES_ARB = 56;
	
	/* Integer parameters */
	public static final int AGL_BUFFER_RECT = 202;
	public static final int AGL_SWAP_INTERVAL = 222;
	public static final int AGL_BUFFER_NAME = 231;
	public static final int AGL_CLIP_REGION = 254;

public static final native int aglChoosePixelFormat(int gdevs, int ndev, int[] attribs);
public static final native int aglCreateContext(int pix, int share);
public static final native boolean aglDescribePixelFormat(int pix, int attrib, int[] value);
public static final native boolean aglDestroyContext(int ctx);
public static final native void aglDestroyPixelFormat(int pix);
public static final native boolean aglEnable(int ctx, int pname);
public static final native int aglGetCurrentContext();
public static final native int aglGetDrawable(int ctx);
public static final native boolean aglSetCurrentContext(int ctx);
public static final native boolean aglSetDrawable(int ctx, int draw);
public static final native boolean aglSetInteger(int ctx, int pname, int[] params);
public static final native boolean aglSetInteger(int ctx, int pname, int param);
public static final native void aglSwapBuffers(int ctx);
public static final native boolean aglUpdateContext(int ctx);
}
