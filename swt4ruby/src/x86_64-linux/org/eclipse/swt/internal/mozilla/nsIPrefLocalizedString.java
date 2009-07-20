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
 * -  Copyright (C) 2006 IBM Corp.  All Rights Reserved.
 *
 * ***** END LICENSE BLOCK ***** */
package org.eclipse.swt.internal.mozilla;

public class nsIPrefLocalizedString extends nsISupports {

	static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 4;

	public static final String NS_IPREFLOCALIZEDSTRING_IID_STR =
		"ae419e24-1dd1-11b2-b39a-d3e5e7073802";

	public static final nsID NS_IPREFLOCALIZEDSTRING_IID =
		new nsID(NS_IPREFLOCALIZEDSTRING_IID_STR);

	public nsIPrefLocalizedString(long /*int*/ address) {
		super(address);
	}

	public int GetData(long /*int*/[] aData) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, getAddress(), aData);
	}

	public int SetData(char[] aData) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, getAddress(), aData);
	}

	public int ToString(long /*int*/[] _retval) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, getAddress(), _retval);
	}

	public int SetDataWithLength(int length, char[] data) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, getAddress(), length, data);
	}
}
