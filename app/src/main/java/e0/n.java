package e0;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.p;
import androidx.media3.common.util.Log;

/* loaded from: classes.dex */
public final class n implements TextWatcher {

    /* renamed from: b, reason: collision with root package name */
    public final EditText f13926b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f13927e;

    /* renamed from: f, reason: collision with root package name */
    public m f13928f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f13929j = true;

    public n(EditText editText, boolean z6) {
        this.f13926b = editText;
        this.f13927e = z6;
    }

    public static void a(EditText editText, int i2) {
        if (i2 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            p.get().process(editableText);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
        EditText editText = this.f13926b;
        if (editText.isInEditMode() || !this.f13929j) {
            return;
        }
        if ((this.f13927e || p.isConfigured()) && i7 <= i8 && (charSequence instanceof Spannable)) {
            int loadState = p.get().getLoadState();
            if (loadState != 0) {
                if (loadState == 1) {
                    p.get().process((Spannable) charSequence, i2, i2 + i8, Log.LOG_LEVEL_OFF, 0);
                    return;
                } else if (loadState != 3) {
                    return;
                }
            }
            p pVar = p.get();
            if (this.f13928f == null) {
                this.f13928f = new m(editText);
            }
            pVar.registerInitCallback(this.f13928f);
        }
    }

    public void setEnabled(boolean z6) {
        if (this.f13929j != z6) {
            if (this.f13928f != null) {
                p.get().unregisterInitCallback(this.f13928f);
            }
            this.f13929j = z6;
            if (z6) {
                a(this.f13926b, p.get().getLoadState());
            }
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
    }
}
