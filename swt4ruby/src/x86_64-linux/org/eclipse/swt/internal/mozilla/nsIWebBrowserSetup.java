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

public class nsIWebBrowserSetup extends nsISupports {

	static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 1;

	public static final String NS_IWEBBROWSERSETUP_IID_STR =
		"f15398a0-8018-11d3-af70-00a024ffc08c";

	public static final nsID NS_IWEBBROWSERSETUP_IID =
		new nsID(NS_IWEBBROWSERSETUP_IID_STR);

	public nsIWebBrowserSetup(long /*int*/ address) {
		super(address);
	}

	public static final int SETUP_ALLOW_PLUGINS = 1;

	public static final int SETUP_ALLOW_JAVASCRIPT = 2;

	public static final int SETUP_ALLOW_META_REDIRECTS = 3;

	public static final int SETUP_ALLOW_SUBFRAMES = 4;

	public static final int SETUP_ALLOW_IMAGES = 5;

	public static final int SETUP_FOCUS_DOC_BEFORE_CONTENT = 6;

	public static final int SETUP_USE_GLOBAL_HISTORY = 256;

	public static final int SETUP_IS_CHROME_WRAPPER = 7;

	public int SetProperty(int aId, int aValue) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, getAddress(), aId, aValue);
	}
}
