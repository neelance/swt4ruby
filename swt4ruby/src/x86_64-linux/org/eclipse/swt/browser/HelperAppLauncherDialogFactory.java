/*******************************************************************************
 * Copyright (c) 2003, 2009 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package org.eclipse.swt.browser;

import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.mozilla.*;

class HelperAppLauncherDialogFactory {
	XPCOMObject supports;
	XPCOMObject factory;
	int refCount = 0;

HelperAppLauncherDialogFactory () {
	createCOMInterfaces ();
}

int AddRef () {
	refCount++;
	return refCount;
}

void createCOMInterfaces () {
	/* Create each of the interfaces that this object implements */
	supports = new XPCOMObject (new int[] {2, 0, 0}) {
		public long /*int*/ method0 (long /*int*/[] args) {return QueryInterface (args[0], args[1]);}
		public long /*int*/ method1 (long /*int*/[] args) {return AddRef ();}
		public long /*int*/ method2 (long /*int*/[] args) {return Release ();}
	};
	
	factory = new XPCOMObject (new int[] {2, 0, 0, 3, 1}) {
		public long /*int*/ method0 (long /*int*/[] args) {return QueryInterface (args[0], args[1]);}
		public long /*int*/ method1 (long /*int*/[] args) {return AddRef ();}
		public long /*int*/ method2 (long /*int*/[] args) {return Release ();}
		public long /*int*/ method3 (long /*int*/[] args) {return CreateInstance (args[0], args[1], args[2]);}
		public long /*int*/ method4 (long /*int*/[] args) {return LockFactory ((int)/*64*/args[0]);}
	};
}

void disposeCOMInterfaces () {
	if (supports != null) {
		supports.dispose ();
		supports = null;
	}	
	if (factory != null) {
		factory.dispose ();
		factory = null;	
	}
}

long /*int*/ getAddress () {
	return factory.getAddress ();
}

int QueryInterface (long /*int*/ riid, long /*int*/ ppvObject) {
	if (riid == 0 || ppvObject == 0) return XPCOM.NS_ERROR_NO_INTERFACE;
	nsID guid = new nsID ();
	XPCOM.memmove (guid, riid, nsID.sizeof);
	
	if (guid.Equals (nsISupports.NS_ISUPPORTS_IID)) {
		XPCOM.memmove (ppvObject, new long /*int*/[] {supports.getAddress ()}, C.PTR_SIZEOF);
		AddRef ();
		return XPCOM.NS_OK;
	}
	if (guid.Equals (nsIFactory.NS_IFACTORY_IID)) {
		XPCOM.memmove (ppvObject, new long /*int*/[] {factory.getAddress ()}, C.PTR_SIZEOF);
		AddRef ();
		return XPCOM.NS_OK;
	}
	
	XPCOM.memmove (ppvObject, new long /*int*/[] {0}, C.PTR_SIZEOF);
	return XPCOM.NS_ERROR_NO_INTERFACE;
}
        	
int Release () {
	refCount--;
	if (refCount == 0) disposeCOMInterfaces ();
	return refCount;
}
	
/* nsIFactory */

int CreateInstance (long /*int*/ aOuter, long /*int*/ iid, long /*int*/ result) {
	if (Mozilla.IsPre_1_9) {
		HelperAppLauncherDialog helperAppLauncherDialog = new HelperAppLauncherDialog ();
		helperAppLauncherDialog.AddRef ();
		XPCOM.memmove (result, new long /*int*/[] {helperAppLauncherDialog.getAddress ()}, C.PTR_SIZEOF);
	} else {
		HelperAppLauncherDialog_1_9 helperAppLauncherDialog = new HelperAppLauncherDialog_1_9 ();
		helperAppLauncherDialog.AddRef ();
		XPCOM.memmove (result, new long /*int*/[] {helperAppLauncherDialog.getAddress ()}, C.PTR_SIZEOF);
	}
	return XPCOM.NS_OK;
}

int LockFactory (int lock) {
	return XPCOM.NS_OK;
}
}
