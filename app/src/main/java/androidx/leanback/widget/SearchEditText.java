package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityNodeInfo;

/* loaded from: classes.dex */
public class SearchEditText extends w1 {

    /* renamed from: q, reason: collision with root package name */
    public InterfaceC0496c1 f6695q;

    public SearchEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.leanback.R.style.TextAppearance_Leanback_SearchTextEdit);
    }

    @Override // androidx.leanback.widget.w1, android.view.View
    public /* bridge */ /* synthetic */ void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && this.f6695q != null) {
            post(new RunnableC0493b1(this));
        }
        return super.onKeyPreIme(i2, keyEvent);
    }

    @Override // androidx.leanback.widget.w1
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    @Override // androidx.leanback.widget.w1, android.widget.TextView
    public /* bridge */ /* synthetic */ void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // androidx.leanback.widget.w1
    public /* bridge */ /* synthetic */ void setFinalRecognizedText(CharSequence charSequence) {
        super.setFinalRecognizedText(charSequence);
    }

    public void setOnKeyboardDismissListener(InterfaceC0496c1 interfaceC0496c1) {
        this.f6695q = interfaceC0496c1;
    }

    @Override // androidx.leanback.widget.w1
    public /* bridge */ /* synthetic */ void updateRecognizedText(String str, String str2) {
        super.updateRecognizedText(str, str2);
    }

    public SearchEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
