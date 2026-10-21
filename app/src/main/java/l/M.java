package l;

import android.content.res.TypedArray;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public final class M {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f17738a;

    /* renamed from: b, reason: collision with root package name */
    public final e0.l f17739b;

    public M(TextView textView) {
        this.f17738a = textView;
        this.f17739b = new e0.l(textView, false);
    }

    public final void a(AttributeSet attributeSet, int i2) {
        TypedArray obtainStyledAttributes = this.f17738a.getContext().obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i2, 0);
        try {
            boolean z6 = obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_emojiCompatEnabled) ? obtainStyledAttributes.getBoolean(R.styleable.AppCompatTextView_emojiCompatEnabled, true) : true;
            obtainStyledAttributes.recycle();
            c(z6);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void b(boolean z6) {
        this.f17739b.setAllCaps(z6);
    }

    public final void c(boolean z6) {
        this.f17739b.setEnabled(z6);
    }

    public boolean isEnabled() {
        return this.f17739b.isEnabled();
    }

    public TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
        return this.f17739b.wrapTransformationMethod(transformationMethod);
    }
}
