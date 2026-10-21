package l;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.widget.EditText;
import androidx.appcompat.R;
import e0.C0847a;

/* loaded from: classes.dex */
public final class L {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f17735a;

    /* renamed from: b, reason: collision with root package name */
    public final C0847a f17736b;

    public L(EditText editText) {
        this.f17735a = editText;
        this.f17736b = new C0847a(editText, false);
    }

    public final KeyListener a(KeyListener keyListener) {
        return !(keyListener instanceof NumberKeyListener) ? this.f17736b.getKeyListener(keyListener) : keyListener;
    }

    public final void b(AttributeSet attributeSet, int i2) {
        TypedArray obtainStyledAttributes = this.f17735a.getContext().obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i2, 0);
        try {
            boolean z6 = obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_emojiCompatEnabled) ? obtainStyledAttributes.getBoolean(R.styleable.AppCompatTextView_emojiCompatEnabled, true) : true;
            obtainStyledAttributes.recycle();
            this.f17736b.setEnabled(z6);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
