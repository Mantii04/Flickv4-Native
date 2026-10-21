package e0;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.TextView;
import androidx.emoji2.text.p;

/* loaded from: classes.dex */
public final class f implements InputFilter {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f13916a;

    /* renamed from: b, reason: collision with root package name */
    public C0851e f13917b;

    public f(TextView textView) {
        this.f13916a = textView;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i2, int i7, Spanned spanned, int i8, int i9) {
        TextView textView = this.f13916a;
        if (textView.isInEditMode()) {
            return charSequence;
        }
        int loadState = p.get().getLoadState();
        if (loadState != 0) {
            if (loadState == 1) {
                if ((i9 == 0 && i8 == 0 && spanned.length() == 0 && charSequence == textView.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i2 != 0 || i7 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i2, i7);
                }
                return p.get().process(charSequence, 0, charSequence.length());
            }
            if (loadState != 3) {
                return charSequence;
            }
        }
        p pVar = p.get();
        if (this.f13917b == null) {
            this.f13917b = new C0851e(textView, this);
        }
        pVar.registerInitCallback(this.f13917b);
        return charSequence;
    }
}
