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

public class nsIScriptSecurityManager_1_9_1 extends nsIXPCSecurityManager {

	static final int LAST_METHOD_ID = nsIXPCSecurityManager.LAST_METHOD_ID + 26;

	public static final String NS_ISCRIPTSECURITYMANAGER_IID_STR =
		"f8e350b9-9f31-451a-8c8f-d10fea26b780";

	public static final nsID NS_ISCRIPTSECURITYMANAGER_IID =
		new nsID(NS_ISCRIPTSECURITYMANAGER_IID_STR);

	public  nsIScriptSecurityManager_1_9_1(long /*int*/ address) {
		super(address);
	}

//	public int CheckPropertyAccess(long /*int*/ aJSContext, long /*int*/ aJSObject, byte[] aClassName, !ERROR UNKNOWN C TYPE <jsval >! aProperty, int aAction) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 1, getAddress(), aJSContext, aJSObject, aClassName, aProperty, aAction);
//	}

	public int CheckConnect(long /*int*/ aJSContext, long /*int*/ aTargetURI, byte[] aClassName, byte[] aProperty) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 2, getAddress(), aJSContext, aTargetURI, aClassName, aProperty);
	}

	public int CheckLoadURIFromScript(long /*int*/ cx, long /*int*/ uri) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 3, getAddress(), cx, uri);
	}

	public static final int STANDARD = 0;

	public static final int LOAD_IS_AUTOMATIC_DOCUMENT_REPLACEMENT = 1;

	public static final int ALLOW_CHROME = 2;

	public static final int DISALLOW_INHERIT_PRINCIPAL = 4;

	public static final int DISALLOW_SCRIPT_OR_DATA = 4;

	public static final int DISALLOW_SCRIPT = 8;

	public int CheckLoadURIWithPrincipal(long /*int*/ aPrincipal, long /*int*/ uri, int flags) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 4, getAddress(), aPrincipal, uri, flags);
	}

	public int CheckLoadURI(long /*int*/ from, long /*int*/ uri, int flags) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 5, getAddress(), from, uri, flags);
	}

	public int CheckLoadURIStrWithPrincipal(long /*int*/ aPrincipal, long /*int*/ uri, int flags) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 6, getAddress(), aPrincipal, uri, flags);
	}

	public int CheckLoadURIStr(long /*int*/ from, long /*int*/ uri, int flags) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 7, getAddress(), from, uri, flags);
	}

	public int CheckFunctionAccess(long /*int*/ cx, long /*int*/ funObj, long /*int*/ targetObj) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 8, getAddress(), cx, funObj, targetObj);
	}

//	public int CanExecuteScripts(long /*int*/ cx, long /*int*/ principal, int[] _retval NS_OUTPARAM) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 9, getAddress(), cx, principal, _retval NS_OUTPARAM);
//	}

//	public int GetSubjectPrincipal(long /*int*/[] _retval NS_OUTPARAM) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 10, getAddress(), _retval NS_OUTPARAM);
//	}

	public int GetSystemPrincipal(long /*int*/[] _retval) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 11, getAddress(), _retval);
	}

//	public int GetCertificatePrincipal(long /*int*/ aCertFingerprint, long /*int*/ aSubjectName, long /*int*/ aPrettyName, long /*int*/ aCert, long /*int*/ aURI, long /*int*/[] _retval NS_OUTPARAM) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 12, getAddress(), aCertFingerprint, aSubjectName, aPrettyName, aCert, aURI, _retval NS_OUTPARAM);
//	}

//	public int GetCodebasePrincipal(long /*int*/ aURI, long /*int*/[] _retval NS_OUTPARAM) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 13, getAddress(), aURI, _retval NS_OUTPARAM);
//	}

//	public int RequestCapability(long /*int*/ principal, byte[] capability, long /*int*/ _retval NS_OUTPARAM) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 14, getAddress(), principal, capability, _retval NS_OUTPARAM);
//	}

//	public int IsCapabilityEnabled(byte[] capability, int[] _retval NS_OUTPARAM) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 15, getAddress(), capability, _retval NS_OUTPARAM);
//	}

	public int EnableCapability(byte[] capability) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 16, getAddress(), capability);
	}

	public int RevertCapability(byte[] capability) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 17, getAddress(), capability);
	}

	public int DisableCapability(byte[] capability) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 18, getAddress(), capability);
	}

//	public int SetCanEnableCapability(long /*int*/ certificateFingerprint, byte[] capability, !ERROR UNKNOWN C TYPE <PRInt16 >! canEnable) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 19, getAddress(), certificateFingerprint, capability, canEnable);
//	}

//	public int GetObjectPrincipal(long /*int*/ cx, long /*int*/ obj, long /*int*/[] _retval NS_OUTPARAM) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 20, getAddress(), cx, obj, _retval NS_OUTPARAM);
//	}

//	public int SubjectPrincipalIsSystem(int[] _retval NS_OUTPARAM) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 21, getAddress(), _retval NS_OUTPARAM);
//	}

	public int CheckSameOrigin(long /*int*/ aJSContext, long /*int*/ aTargetURI) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 22, getAddress(), aJSContext, aTargetURI);
	}

	public int CheckSameOriginURI(long /*int*/ aSourceURI, long /*int*/ aTargetURI, int reportError) {
		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 23, getAddress(), aSourceURI, aTargetURI, reportError);
	}

//	public int GetPrincipalFromContext(long /*int*/ cx, long /*int*/[] _retval NS_OUTPARAM) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 24, getAddress(), cx, _retval NS_OUTPARAM);
//	}

//	public int GetChannelPrincipal(long /*int*/ aChannel, long /*int*/[] _retval NS_OUTPARAM) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 25, getAddress(), aChannel, _retval NS_OUTPARAM);
//	}

//	public int IsSystemPrincipal(long /*int*/ aPrincipal, int[] _retval NS_OUTPARAM) {
//		return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 26, getAddress(), aPrincipal, _retval NS_OUTPARAM);
//	}
}