/*******************************************************************************
 * Copyright (c) 2000, 2009 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    IBM Corporation - initial API and implementation
 *******************************************************************************/
package org.eclipse.swt.internal.cocoa;

public class NSTextView extends NSText {

public NSTextView() {
	super();
}

public NSTextView(int /*long*/ id) {
	super(id);
}

public NSTextView(id id) {
	super(id);
}

public int /*long*/ characterIndexForInsertionAtPoint(NSPoint point) {
	return OS.objc_msgSend(this.id, OS.sel_characterIndexForInsertionAtPoint_, point);
}

public NSParagraphStyle defaultParagraphStyle() {
	int /*long*/ result = OS.objc_msgSend(this.id, OS.sel_defaultParagraphStyle);
	return result != 0 ? new NSParagraphStyle(result) : null;
}

public boolean dragSelectionWithEvent(NSEvent event, NSSize mouseOffset, boolean slideBack) {
	return OS.objc_msgSend_bool(this.id, OS.sel_dragSelectionWithEvent_offset_slideBack_, event != null ? event.id : 0, mouseOffset, slideBack);
}

public NSLayoutManager layoutManager() {
	int /*long*/ result = OS.objc_msgSend(this.id, OS.sel_layoutManager);
	return result != 0 ? new NSLayoutManager(result) : null;
}

public NSDictionary linkTextAttributes() {
	int /*long*/ result = OS.objc_msgSend(this.id, OS.sel_linkTextAttributes);
	return result != 0 ? new NSDictionary(result) : null;
}

public NSDictionary markedTextAttributes() {
	int /*long*/ result = OS.objc_msgSend(this.id, OS.sel_markedTextAttributes);
	return result != 0 ? new NSDictionary(result) : null;
}

public void setDefaultParagraphStyle(NSParagraphStyle paragraphStyle) {
	OS.objc_msgSend(this.id, OS.sel_setDefaultParagraphStyle_, paragraphStyle != null ? paragraphStyle.id : 0);
}

public void setLinkTextAttributes(NSDictionary attributeDictionary) {
	OS.objc_msgSend(this.id, OS.sel_setLinkTextAttributes_, attributeDictionary != null ? attributeDictionary.id : 0);
}

public void setRichText(boolean flag) {
	OS.objc_msgSend(this.id, OS.sel_setRichText_, flag);
}

public boolean shouldChangeTextInRange(NSRange affectedCharRange, NSString replacementString) {
	return OS.objc_msgSend_bool(this.id, OS.sel_shouldChangeTextInRange_replacementString_, affectedCharRange, replacementString != null ? replacementString.id : 0);
}

public NSTextContainer textContainer() {
	int /*long*/ result = OS.objc_msgSend(this.id, OS.sel_textContainer);
	return result != 0 ? new NSTextContainer(result) : null;
}

public NSTextStorage textStorage() {
	int /*long*/ result = OS.objc_msgSend(this.id, OS.sel_textStorage);
	return result != 0 ? new NSTextStorage(result) : null;
}

}
