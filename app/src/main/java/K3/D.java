package K3;

import M.C0152b;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes2.dex */
public final class D extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final TextInputLayout f1657d;

    public D(TextInputLayout textInputLayout) {
        this.f1657d = textInputLayout;
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        TextInputLayout textInputLayout = this.f1657d;
        EditText editText = textInputLayout.getEditText();
        CharSequence text = editText != null ? editText.getText() : null;
        CharSequence hint = textInputLayout.getHint();
        CharSequence error = textInputLayout.getError();
        CharSequence placeholderText = textInputLayout.getPlaceholderText();
        int counterMaxLength = textInputLayout.getCounterMaxLength();
        CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
        boolean isEmpty = TextUtils.isEmpty(text);
        boolean isEmpty2 = TextUtils.isEmpty(hint);
        boolean z6 = textInputLayout.f12868D0;
        boolean isEmpty3 = TextUtils.isEmpty(error);
        boolean z7 = (isEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
        String charSequence = !isEmpty2 ? hint.toString() : "";
        z zVar = textInputLayout.f12900e;
        View view2 = zVar.f1778e;
        if (view2.getVisibility() == 0) {
            nVar.setLabelFor(view2);
            nVar.setTraversalAfter(view2);
        } else {
            nVar.setTraversalAfter(zVar.f1780j);
        }
        if (!isEmpty) {
            nVar.setText(text);
        } else if (!TextUtils.isEmpty(charSequence)) {
            nVar.setText(charSequence);
            if (!z6 && placeholderText != null) {
                nVar.setText(charSequence + ", " + ((Object) placeholderText));
            }
        } else if (placeholderText != null) {
            nVar.setText(placeholderText);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            if (Build.VERSION.SDK_INT >= 26) {
                nVar.setHintText(charSequence);
            } else {
                if (!isEmpty) {
                    charSequence = ((Object) text) + ", " + charSequence;
                }
                nVar.setText(charSequence);
            }
            nVar.setShowingHintText(isEmpty);
        }
        if (text == null || text.length() != counterMaxLength) {
            counterMaxLength = -1;
        }
        nVar.setMaxTextLength(counterMaxLength);
        if (z7) {
            if (isEmpty3) {
                error = counterOverflowDescription;
            }
            nVar.setError(error);
        }
        View view3 = textInputLayout.f12922s.f1760y;
        if (view3 != null) {
            nVar.setLabelFor(view3);
        }
        textInputLayout.f12902f.b().onInitializeAccessibilityNodeInfo(view, nVar);
    }

    @Override // M.C0152b
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(view, accessibilityEvent);
        this.f1657d.f12902f.b().onPopulateAccessibilityEvent(view, accessibilityEvent);
    }
}
