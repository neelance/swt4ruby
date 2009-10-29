package org.eclipse.swt.internal.mozilla;


public class nsISecurityCheckedComponent extends nsISupports {

	static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 4;

	public static final String NS_ISECURITYCHECKEDCOMPONENT_IID_STR =
		"0dad9e8c-a12d-4dcb-9a6f-7d09839356e1";

	public static final nsID NS_ISECURITYCHECKEDCOMPONENT_IID =
		new nsID(NS_ISECURITYCHECKEDCOMPONENT_IID_STR);

	public nsISecurityCheckedComponent(long /*int*/ address) {
		super(address);
	}

	public int CanCreateWrapper(long /*int*/ iid, long /*int*/[] _retval) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, getAddress(), iid, _retval);
	}

	public int CanCallMethod(long /*int*/ iid, char[] methodName, long /*int*/[] _retval) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, getAddress(), iid, methodName, _retval);
	}

	public int CanGetProperty(long /*int*/ iid, char[] propertyName, long /*int*/[] _retval) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, getAddress(), iid, propertyName, _retval);
	}

	public int CanSetProperty(long /*int*/ iid, char[] propertyName, long /*int*/[] _retval) {
		return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, getAddress(), iid, propertyName, _retval);
	}
}
