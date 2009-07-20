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
 * -  Copyright (C) 2003, 2008 IBM Corp.  All Rights Reserved.
 *
 * ***** END LICENSE BLOCK ***** */
package org.eclipse.swt.internal.mozilla;

public class nsIProperties extends nsISupports {

	static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 5;

	public static final String NS_IPROPERTIES_IID_STR =
		"78650582-4e93-4b60-8e85-26ebd3eb14ca";

	public static final nsID NS_IPROPERTIES_IID =
		new nsID(NS_IPROPERTIES_IID_STR);

	public nsIProperties(int /*long*/ address) {
		super(address);
	}

	public int Get(byte[] prop, nsID iid, int /*long*/[] result) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, getAddress(), prop, iid, result);
	}

	public int Set(byte[] prop, int /*long*/ value) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, getAddress(), prop, value);
	}

	public int Has(byte[] prop, int[] _retval) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, getAddress(), prop, _retval);
	}

	public int Undefine(byte[] prop) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, getAddress(), prop);
	}

	public int GetKeys(int[] count, int /*long*/[] keys) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, getAddress(), count, keys);
	}
}