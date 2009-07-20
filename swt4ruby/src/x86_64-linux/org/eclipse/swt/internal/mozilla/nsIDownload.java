/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is Mozilla Communicator client code, released March 31, 1998.
 *
 * The Initial Developer of the Original Code is
 * Netscape Communications Corporation.
 * Portions created by Netscape are Copyright (C) 1998-1999
 * Netscape Communications Corporation.  All Rights Reserved.
 *
 * Contributor(s):
 *
 * IBM
 * -  Binding to permit interfacing between Mozilla and SWT
 * -  Copyright (C) 2004, 2005 IBM Corp.  All Rights Reserved.
 *
 * ***** END LICENSE BLOCK ***** */
package org.eclipse.swt.internal.mozilla;

public class nsIDownload extends nsISupports {

	static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 13;

	public static final String NS_IDOWNLOAD_IID_STR =
		"06cb92f2-1dd2-11b2-95f2-96dfdfb804a1";

	public static final nsID NS_IDOWNLOAD_IID =
		new nsID(NS_IDOWNLOAD_IID_STR);

	public nsIDownload(long /*int*/ address) {
		super(address);
	}

	public int Init(long /*int*/ aSource, long /*int*/ aTarget, char[] aDisplayName, long /*int*/ aMIMEInfo, long startTime, long /*int*/ aPersist) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, getAddress(), aSource, aTarget, aDisplayName, aMIMEInfo, startTime, aPersist);
	}

	public int GetSource(long /*int*/[] aSource) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, getAddress(), aSource);
	}

	public int GetTarget(long /*int*/[] aTarget) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, getAddress(), aTarget);
	}

	public int GetPersist(long /*int*/[] aPersist) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, getAddress(), aPersist);
	}

	public int GetPercentComplete(int[] aPercentComplete) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, getAddress(), aPercentComplete);
	}

	public int GetDisplayName(long /*int*/[] aDisplayName) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, getAddress(), aDisplayName);
	}

	public int SetDisplayName(char[] aDisplayName) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, getAddress(), aDisplayName);
	}

	public int GetStartTime(long[] aStartTime) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, getAddress(), aStartTime);
	}

	public int GetMIMEInfo(long /*int*/[] aMIMEInfo) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, getAddress(), aMIMEInfo);
	}

	public int GetListener(long /*int*/[] aListener) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, getAddress(), aListener);
	}

	public int SetListener(long /*int*/ aListener) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, getAddress(), aListener);
	}

	public int GetObserver(long /*int*/[] aObserver) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, getAddress(), aObserver);
	}

	public int SetObserver(long /*int*/ aObserver) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, getAddress(), aObserver);
	}
}