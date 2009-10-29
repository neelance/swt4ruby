/*******************************************************************************
 * Copyright (c) 2003, 2007 IBM Corporation and others.
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

class FilePickerFactory_1_8 extends FilePickerFactory {

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

/* nsIFactory */

int CreateInstance (long /*int*/ aOuter, long /*int*/ iid, long /*int*/ result) {
	FilePicker_1_8 picker = new FilePicker_1_8 ();
	picker.AddRef ();
	XPCOM.memmove (result, new long /*int*/[] {picker.getAddress ()}, C.PTR_SIZEOF);
	return XPCOM.NS_OK;
}

}
