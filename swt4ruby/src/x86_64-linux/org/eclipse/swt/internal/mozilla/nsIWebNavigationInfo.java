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
 * -  Copyright (C) 2003, 2005 IBM Corp.  All Rights Reserved.
 *
 * ***** END LICENSE BLOCK ***** */
package org.eclipse.swt.internal.mozilla;

public class nsIWebNavigationInfo extends nsISupports {

	static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 1;

	public static final String NS_IWEBNAVIGATIONINFO_IID_STR =
		"62a93afb-93a1-465c-84c8-0432264229de";

	public static final nsID NS_IWEBNAVIGATIONINFO_IID =
		new nsID(NS_IWEBNAVIGATIONINFO_IID_STR);

	public nsIWebNavigationInfo(long /*int*/ address) {
		super(address);
	}

	public static final int UNSUPPORTED = 0;

	public static final int IMAGE = 1;

	public static final int PLUGIN = 2;

	public static final int OTHER = 32768;

	public int IsTypeSupported(long /*int*/ aType, long /*int*/ aWebNav, int[] _retval) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, getAddress(), aType, aWebNav, _retval);
	}
}