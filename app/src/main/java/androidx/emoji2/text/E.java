package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.text.SpannableStringBuilder;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class E extends SpannableStringBuilder {

    /* renamed from: b, reason: collision with root package name */
    public final Class f5978b;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f5979e;

    public E(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f5979e = new ArrayList();
        L.h.checkNotNull(cls, "watcherClass cannot be null");
        this.f5978b = cls;
    }

    public static E create(Class<?> cls, CharSequence charSequence) {
        return new E(cls, charSequence);
    }

    public final void a() {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f5979e;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((D) arrayList.get(i2)).f5977e.incrementAndGet();
            i2++;
        }
    }

    public final D b(Object obj) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f5979e;
            if (i2 >= arrayList.size()) {
                return null;
            }
            D d7 = (D) arrayList.get(i2);
            if (d7.f5976b == obj) {
                return d7;
            }
            i2++;
        }
    }

    public void beginBatchEdit() {
        a();
    }

    public final boolean c(Object obj) {
        if (obj != null) {
            return this.f5978b == obj.getClass();
        }
        return false;
    }

    public final void d() {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f5979e;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((D) arrayList.get(i2)).f5977e.decrementAndGet();
            i2++;
        }
    }

    public void endBatchEdit() {
        d();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f5979e;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((D) arrayList.get(i2)).onTextChanged(this, 0, length(), length());
            i2++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanEnd(Object obj) {
        D b7;
        if (c(obj) && (b7 = b(obj)) != null) {
            obj = b7;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanFlags(Object obj) {
        D b7;
        if (c(obj) && (b7 = b(obj)) != null) {
            obj = b7;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanStart(Object obj) {
        D b7;
        if (c(obj) && (b7 = b(obj)) != null) {
            obj = b7;
        }
        return super.getSpanStart(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    @SuppressLint({"UnknownNullness"})
    public <T> T[] getSpans(int i2, int i7, Class<T> cls) {
        if (this.f5978b != cls) {
            return (T[]) super.getSpans(i2, i7, cls);
        }
        D[] dArr = (D[]) super.getSpans(i2, i7, D.class);
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, dArr.length));
        for (int i8 = 0; i8 < dArr.length; i8++) {
            tArr[i8] = dArr[i8].f5976b;
        }
        return tArr;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int nextSpanTransition(int i2, int i7, Class cls) {
        if (cls == null || this.f5978b == cls) {
            cls = D.class;
        }
        return super.nextSpanTransition(i2, i7, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void removeSpan(Object obj) {
        D d7;
        if (c(obj)) {
            d7 = b(obj);
            if (d7 != null) {
                obj = d7;
            }
        } else {
            d7 = null;
        }
        super.removeSpan(obj);
        if (d7 != null) {
            this.f5979e.remove(d7);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void setSpan(Object obj, int i2, int i7, int i8) {
        if (c(obj)) {
            D d7 = new D(obj);
            this.f5979e.add(d7);
            obj = d7;
        }
        super.setSpan(obj, i2, i7, i8);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    @SuppressLint({"UnknownNullness"})
    public CharSequence subSequence(int i2, int i7) {
        return new E(this.f5978b, this, i2, i7);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder delete(int i2, int i7) {
        super.delete(i2, i7);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i2, CharSequence charSequence) {
        super.insert(i2, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i2, int i7, CharSequence charSequence) {
        a();
        super.replace(i2, i7, charSequence);
        d();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i2, CharSequence charSequence, int i7, int i8) {
        super.insert(i2, charSequence, i7, i8);
        return this;
    }

    public E(Class cls, E e3, int i2, int i7) {
        super(e3, i2, i7);
        this.f5979e = new ArrayList();
        L.h.checkNotNull(cls, "watcherClass cannot be null");
        this.f5978b = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i2, int i7, CharSequence charSequence, int i8, int i9) {
        a();
        super.replace(i2, i7, charSequence, i8, i9);
        d();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(char c7) {
        super.append(c7);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i2, int i7) {
        super.append(charSequence, i2, i7);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i2) {
        super.append(charSequence, obj, i2);
        return this;
    }
}
