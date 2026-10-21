package androidx.emoji2.text;

import android.os.Build;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.TextWatcher;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class D implements TextWatcher, SpanWatcher {

    /* renamed from: b, reason: collision with root package name */
    public final Object f5976b;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicInteger f5977e = new AtomicInteger(0);

    public D(Object obj) {
        this.f5976b = obj;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        ((TextWatcher) this.f5976b).afterTextChanged(editable);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
        ((TextWatcher) this.f5976b).beforeTextChanged(charSequence, i2, i7, i8);
    }

    @Override // android.text.SpanWatcher
    public void onSpanAdded(Spannable spannable, Object obj, int i2, int i7) {
        if (this.f5977e.get() <= 0 || !(obj instanceof w)) {
            ((SpanWatcher) this.f5976b).onSpanAdded(spannable, obj, i2, i7);
        }
    }

    @Override // android.text.SpanWatcher
    public void onSpanChanged(Spannable spannable, Object obj, int i2, int i7, int i8, int i9) {
        int i10;
        int i11;
        if (this.f5977e.get() <= 0 || !(obj instanceof w)) {
            if (Build.VERSION.SDK_INT < 28) {
                if (i2 > i7) {
                    i2 = 0;
                }
                if (i8 > i9) {
                    i10 = i2;
                    i11 = 0;
                    ((SpanWatcher) this.f5976b).onSpanChanged(spannable, obj, i10, i7, i11, i9);
                }
            }
            i10 = i2;
            i11 = i8;
            ((SpanWatcher) this.f5976b).onSpanChanged(spannable, obj, i10, i7, i11, i9);
        }
    }

    @Override // android.text.SpanWatcher
    public void onSpanRemoved(Spannable spannable, Object obj, int i2, int i7) {
        if (this.f5977e.get() <= 0 || !(obj instanceof w)) {
            ((SpanWatcher) this.f5976b).onSpanRemoved(spannable, obj, i2, i7);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
        ((TextWatcher) this.f5976b).onTextChanged(charSequence, i2, i7, i8);
    }
}
